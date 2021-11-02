`timescale 1ns / 1ps

module sobel_convolution(	
	input wire clk_w,clk_r,rst_n,
	input wire[16:0] din, //data from camera fifo
	input wire[9:0] data_count_r_sobel, //camera fifo data count
	input wire rd_fifo, //sdram_interface will now start retrieving data from asyn_fifo
	output reg rd_en,//read camera fifo
	output reg rd_fifo_cam,
	output wire[8:0] dout, //data to be stored in sdram
	output wire[9:0] data_count_r //sobel fifo data count
    );
	 
	 //FSM for combining the kernels which will then be stored in asyn_fifo
	 localparam init=0,
					loop=1;
					
	 reg state_q,state_d;
	 reg signed[9:0] temp1_q,temp2_q,temp3_q;
	 reg[10:0] pixel_counter_q=1920;
	 reg first_line,second_line,third_line;
	 reg we_1,we_2,we_3,we_4,we_5,we_6;
	 reg signed[7:0] din_ram_x,din_ram_y;
	 reg[9:0] addr_a_x,addr_a_y,addr_b_q,addr_b_d;
	 reg write;
	 reg signed[7:0] data_write;
	 reg signed[7:0] x,y;
	 
	 wire temp_valid;
	 wire[12:0] gray;
	 wire signed[7:0] dout_1,dout_2,dout_3,dout_4,dout_5,dout_6;
	 wire data_available= data_count_r_sobel!=10'd0 && data_count_r_sobel!=10'd1 && data_count_r_sobel!=10'd2 && data_count_r_sobel!=10'd3 && data_count_r_sobel!=10'd4 && data_count_r_sobel!=10'd5;

	 
	 //register operation
	 always @(posedge clk_w,negedge rst_n) begin
		if(!rst_n) begin
			temp1_q<=0;
			temp2_q<=0;
			temp3_q<=0;
			state_q<=0;
			pixel_counter_q<=1920;
			addr_b_q<=0;
		end
		else begin
			state_q<=state_d;
			rd_en=0;
			addr_b_q<=addr_b_d;
			rd_fifo_cam=0;
			if(data_available) begin //grouping every three pixels for the kernel convolution
				temp1_q<={3'b000,gray[7:3]};
				temp2_q<=temp1_q;
				temp3_q<=temp2_q;
				pixel_counter_q<=(pixel_counter_q==1919 || pixel_counter_q==1920)? 0:pixel_counter_q+1'b1; //3 lines of pixel(640*3=1920)
				rd_en=1;
				rd_fifo_cam=1;
			end
		end
	 end
	 
	 //assign gray=(din[15:11]+(din[10:5]>>1)+din[4:0])/3; //RGB to grayscale conversion using averaging method
	 
	 //better method
	 wire[7:0] red,green,blue;
	 assign red={din[15:11],3'b000},
				green={din[10:5],2'b00},
				blue={din[4:0],3'b000};
	 
	 assign gray=(red>>2)+(red>>5)+(red>>6) + (green>>1)+(green>>4)+(green>>5) + (blue>>3); 
	 
	 //Convolution pipeline logic
	//data will be stored in block ram(which will be retrieved later by asyn_fifo)
	 always @* begin
		we_1=0;
		we_2=0;
		we_3=0;
		we_4=0;
		we_5=0;
		we_6=0;
		
		din_ram_x=0; 
		addr_a_x=0;
		din_ram_y=0;
		addr_a_y=0;
		
		if(pixel_counter_q!=1920) begin //data is now ready for convolution
			if(first_line) begin //convolution for the first row of the 3x3 kernel
				we_1=1;
				addr_a_y= pixel_counter_q;
				we_4=1;
				addr_a_x = pixel_counter_q;
			end
			
			else if(second_line) begin //convolution for the second row of the 3x3 kernel
				we_2=1;
				addr_a_y= pixel_counter_q-640;
				we_5=1;
				addr_a_x = pixel_counter_q-640;
			end
			
			else if(third_line) begin //convolution for the third row of the 3x3 kernel
				we_3=1;
				addr_a_y= pixel_counter_q-1280;
				we_6=1;
				addr_a_x = pixel_counter_q-1280;
			end
			din_ram_y= temp1_q + temp2_q + temp3_q; //Y kernel
			din_ram_x = -temp3_q + temp1_q; //X kernel
		end
		
	 end
	 
	 //Finalize convolution by combining both kernels then store the result in asyn_fifo
	 always @* begin
		write=0;
		data_write=0;
		x=0;
		y=0;
		addr_b_d=addr_b_q;
		state_d=state_q;
		
		case(state_q)
			init: if(pixel_counter_q==0 && data_available) begin //no data yet
						addr_b_d=0;
						state_d=loop;			
					end
			loop: if(data_available) begin
						addr_b_d=pixel_counter_q;
						if(first_line) begin
							addr_b_d=addr_b_d;
							y=dout_1-dout_2; //convolution result for y kernel
						end
						else if(second_line) begin
							addr_b_d=addr_b_d-640;
							y=dout_2-dout_3; //convolution result for y kernel
						end
						else if(third_line) begin
							addr_b_d=addr_b_d-1280;
							y=dout_3-dout_1; //convolution result for y kernel
						end
						
						x= dout_4 + dout_5 + dout_6; //convolution result for x kernel
						write=1;
						if(x[7]) x=~x; //get absolute value of x since convolution result CAN BE NEGATIVE
						if(y[7]) y=~y; //get absolute value of y since convolution result CAN BE NEGATIVE 
						data_write=x+y; //just take the sum since getting the quadratic sum will make this unnecessarily complicated(BUT QUADRATIC SUM IS THE CORRECT WAY)
						
					end
		default: state_d=init;
		endcase 
	 end
	 
	 
	 
	 always @* begin //determines which pixel line the next data will be stored
		first_line=0;
		second_line=0; 
		third_line=0;
		if(pixel_counter_q<=639) first_line=1;
		else if(pixel_counter_q<=1279) second_line=1;
		else if(pixel_counter_q<=1919) third_line=1;
	 
	 end
	 
	 
	 //module instantiations
	 dual_port_sync #(.ADDR_WIDTH(10) , .DATA_WIDTH(8)) m0 //Matrix Y convolution row 1 
	(
		.clk_r(clk_w),
		.clk_w(clk_w),
		.we(we_1),
		.din(din_ram_y),
		.addr_a(addr_a_y), //write address
		.addr_b(addr_b_d), //read address 
		.dout(dout_1)
	);
	
	dual_port_sync #(.ADDR_WIDTH(10) , .DATA_WIDTH(8)) m1 //Matrix Y convolution row 2
	(
		.clk_r(clk_w),
		.clk_w(clk_w),
		.we(we_2),
		.din(din_ram_y),
		.addr_a(addr_a_y), //write address
		.addr_b(addr_b_d), //read address 
		.dout(dout_2)
	);
	
	dual_port_sync #(.ADDR_WIDTH(10) , .DATA_WIDTH(8)) m2 //Matrix Y convolution row 3
	(
		.clk_r(clk_w),
		.clk_w(clk_w),
		.we(we_3),
		.din(din_ram_y),
		.addr_a(addr_a_y), //write address
		.addr_b(addr_b_d), //read address
		.dout(dout_3)
	);
	
	dual_port_sync #(.ADDR_WIDTH(10) , .DATA_WIDTH(8)) m3 //Matrix X convolution row 1
	(
		.clk_r(clk_w),
		.clk_w(clk_w),
		.we(we_4),
		.din(din_ram_x),
		.addr_a(addr_a_x), //write address
		.addr_b(addr_b_d), //read address 
		.dout(dout_4)
	);
	
	dual_port_sync #(.ADDR_WIDTH(10) , .DATA_WIDTH(8)) m4  //Matrix X convolution row 2
	(
		.clk_r(clk_w),
		.clk_w(clk_w),
		.we(we_5),
		.din(din_ram_x),
		.addr_a(addr_a_x), //write address
		.addr_b(addr_b_d), //read address ,addr_b is already buffered inside this module so we will use the "_d" ptr to advance the data(not "_q")
		.dout(dout_5)
	);
	
	dual_port_sync #(.ADDR_WIDTH(10) , .DATA_WIDTH(8)) m5  //Matrix X convolution row 3
	(
		.clk_r(clk_w),
		.clk_w(clk_w),
		.we(we_6),
		.din(din_ram_x),
		.addr_a(addr_a_x), //write address
		.addr_b(addr_b_d), //read address ,addr_b is already buffered inside this module so we will use the "_d" ptr to advance the data(not "_q")
		.dout(dout_6)
	);
	
	asyn_fifo #(.DATA_WIDTH(9), .FIFO_DEPTH_WIDTH(10)) m6 //1024x8 FIFO mem  MUST BE 11 for FIFO_DEPTH_WIDTH or else grayscale will not be correct
	(
		.rst_n(rst_n),
		.clk_write(clk_w),
		.clk_read(clk_r),
		.write(write),
		.read(rd_fifo), 
		.data_write({din[16],data_write}), //input FROM write clock domain
		.data_read(dout), //output TO read clock domain
		.full(),
		.empty(), //full=sync to write domain clk , empty=sync to read domain clk
		.data_count_r(data_count_r) 
    );






endmodule
