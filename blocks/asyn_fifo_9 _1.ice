{
  "version": "1.2",
  "package": {
    "name": "asyn_fifo",
    "version": "",
    "description": "fifo with different read/write clock domains",
    "author": "",
    "image": ""
  },
  "design": {
    "board": "ulx3s-85f",
    "graph": {
      "blocks": [
        {
          "id": "8bb3356e-15e2-4047-9da2-c274df3d9964",
          "type": "basic.output",
          "data": {
            "name": "full",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 880,
            "y": 64
          }
        },
        {
          "id": "d5133b14-8949-42d9-abde-a580b73e0117",
          "type": "basic.input",
          "data": {
            "name": "rst_n",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": -344,
            "y": 80
          }
        },
        {
          "id": "a80c3621-d849-470e-b504-32bba73a0b27",
          "type": "basic.output",
          "data": {
            "name": "empty",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 880,
            "y": 144
          }
        },
        {
          "id": "3249211a-b2cd-4941-9d1a-546ccd37346a",
          "type": "basic.input",
          "data": {
            "name": "clk_write",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": -344,
            "y": 192
          }
        },
        {
          "id": "ef58acda-b3cb-4e8f-806b-698a1b90f115",
          "type": "basic.output",
          "data": {
            "name": "data_count_w",
            "range": "[10:0]",
            "pins": [
              {
                "index": "10",
                "name": "",
                "value": ""
              },
              {
                "index": "9",
                "name": "",
                "value": ""
              },
              {
                "index": "8",
                "name": "",
                "value": ""
              },
              {
                "index": "7",
                "name": "",
                "value": ""
              },
              {
                "index": "6",
                "name": "",
                "value": ""
              },
              {
                "index": "5",
                "name": "",
                "value": ""
              },
              {
                "index": "4",
                "name": "",
                "value": ""
              },
              {
                "index": "3",
                "name": "",
                "value": ""
              },
              {
                "index": "2",
                "name": "",
                "value": ""
              },
              {
                "index": "1",
                "name": "",
                "value": ""
              },
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 880,
            "y": 224
          }
        },
        {
          "id": "7369df1f-28d3-4c2e-bdac-d425afd5f280",
          "type": "basic.input",
          "data": {
            "name": "clk_read",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": -344,
            "y": 312
          }
        },
        {
          "id": "a4d9a19d-aba7-4a9f-afcc-0b35ad590e9a",
          "type": "basic.output",
          "data": {
            "name": "data_count_r",
            "range": "[10:0]",
            "pins": [
              {
                "index": "10",
                "name": "",
                "value": ""
              },
              {
                "index": "9",
                "name": "",
                "value": ""
              },
              {
                "index": "8",
                "name": "",
                "value": ""
              },
              {
                "index": "7",
                "name": "",
                "value": ""
              },
              {
                "index": "6",
                "name": "",
                "value": ""
              },
              {
                "index": "5",
                "name": "",
                "value": ""
              },
              {
                "index": "4",
                "name": "",
                "value": ""
              },
              {
                "index": "3",
                "name": "",
                "value": ""
              },
              {
                "index": "2",
                "name": "",
                "value": ""
              },
              {
                "index": "1",
                "name": "",
                "value": ""
              },
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 888,
            "y": 312
          }
        },
        {
          "id": "2b26ad98-ae4c-41cb-8a36-e0ec12ca5438",
          "type": "basic.input",
          "data": {
            "name": "write",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": -344,
            "y": 424
          }
        },
        {
          "id": "651bf04c-97e5-4cb6-89a0-86b39561b048",
          "type": "basic.output",
          "data": {
            "name": "data_read",
            "range": "[8:0]",
            "pins": [
              {
                "index": "8",
                "name": "",
                "value": ""
              },
              {
                "index": "7",
                "name": "",
                "value": ""
              },
              {
                "index": "6",
                "name": "",
                "value": ""
              },
              {
                "index": "5",
                "name": "",
                "value": ""
              },
              {
                "index": "4",
                "name": "",
                "value": ""
              },
              {
                "index": "3",
                "name": "",
                "value": ""
              },
              {
                "index": "2",
                "name": "",
                "value": ""
              },
              {
                "index": "1",
                "name": "",
                "value": ""
              },
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 1296,
            "y": 440
          }
        },
        {
          "id": "c299b4bf-bcfb-4497-acab-9484123dfa89",
          "type": "basic.input",
          "data": {
            "name": "read",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": -336,
            "y": 536
          }
        },
        {
          "id": "91c199c7-93e3-42bb-a906-60302b3a962d",
          "type": "basic.input",
          "data": {
            "name": "data_write",
            "range": "[8:0]",
            "pins": [
              {
                "index": "8",
                "name": "",
                "value": ""
              },
              {
                "index": "7",
                "name": "",
                "value": ""
              },
              {
                "index": "6",
                "name": "",
                "value": ""
              },
              {
                "index": "5",
                "name": "",
                "value": ""
              },
              {
                "index": "4",
                "name": "",
                "value": ""
              },
              {
                "index": "3",
                "name": "",
                "value": ""
              },
              {
                "index": "2",
                "name": "",
                "value": ""
              },
              {
                "index": "1",
                "name": "",
                "value": ""
              },
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 888,
            "y": 624
          }
        },
        {
          "id": "7fa8396c-6642-4333-b2a9-7edb1c1faa96",
          "type": "9da8cd7ad8aecbc29e37de3e00f244bfac125f6b",
          "position": {
            "x": 1112,
            "y": 376
          },
          "size": {
            "width": 96,
            "height": 192
          }
        },
        {
          "id": "970fe62e-ffcd-403a-9592-b44e4285fc31",
          "type": "basic.code",
          "data": {
            "code": " \t localparam DATA_WIDTH=9,\r\n\t            FIFO_DEPTH_WIDTH=11,\r\n\t            FIFO_DEPTH=2**FIFO_DEPTH_WIDTH;\r\n\t \r\n\t initial begin\r\n\t\tfull=0;\r\n\t\tempty=1;\r\n\t end\r\n\t \r\n\t reg full, empty;\r\n\t reg[10:0] data_count_r,data_count_w;\r\n\t \r\n\t ///////////////////WRITE CLOCK DOMAIN//////////////////////////////\r\n\t reg[FIFO_DEPTH_WIDTH:0] w_ptr_q=0; //binary counter for write pointer\r\n\t reg[FIFO_DEPTH_WIDTH:0] r_ptr_sync; //binary pointer for read pointer sync to write clk\r\n\t wire[FIFO_DEPTH_WIDTH:0] w_grey,w_grey_nxt; //grey counter for write pointer\r\n\t reg[FIFO_DEPTH_WIDTH:0] r_grey_sync; //grey counter for the read pointer synchronized to write clock\r\n\t \r\n\t reg[3:0] i; //log_2(FIFO_DEPTH_WIDTH)\r\n\t \r\n\t assign w_grey=w_ptr_q^(w_ptr_q>>1); //binary to grey code conversion for current write pointer\r\n\t assign w_grey_nxt=(w_ptr_q+1'b1)^((w_ptr_q+1'b1)>>1);  //next grey code\r\n\t assign we= write && !full; \r\n\t \r\n\t //register operation\r\n\t always @(posedge clk_write,negedge rst_n) begin\r\n\t\tif(!rst_n) begin\r\n\t\t\tw_ptr_q<=0;\r\n\t\t\tfull<=0;\r\n\t\tend\r\n\t\telse begin\r\n\t\t\tif(write && !full) begin //write condition\r\n\t\t\t\tw_ptr_q<=w_ptr_q+1'b1; \r\n\t\t\t\tfull <= w_grey_nxt == {~r_grey_sync[FIFO_DEPTH_WIDTH:FIFO_DEPTH_WIDTH-1],r_grey_sync[FIFO_DEPTH_WIDTH-2:0]}; //algorithm for full logic which can be observed on the grey code table\r\n\t\t\tend\r\n\t\t\telse full <= w_grey == {~r_grey_sync[FIFO_DEPTH_WIDTH:FIFO_DEPTH_WIDTH-1],r_grey_sync[FIFO_DEPTH_WIDTH-2:0]}; \r\n\t\t\t\r\n\t\t\tfor(i=0;i<=FIFO_DEPTH_WIDTH;i=i+1) r_ptr_sync[i]=^(r_grey_sync>>i); //grey code to binary converter \r\n\t\t\tdata_count_w <= (w_ptr_q>=r_ptr_sync)? (w_ptr_q-r_ptr_sync):(FIFO_DEPTH-r_ptr_sync+w_ptr_q); //compares write pointer and sync read pointer to generate data_count\r\n\t\tend\t\t\t\t\t\t\t\r\n\t end\r\n\r\n\t/////////////////////////////////////////////////////////////////////\r\n\t \r\n\t \r\n\t  ///////////////////READ CLOCK DOMAIN//////////////////////////////\r\n\t reg[FIFO_DEPTH_WIDTH:0] r_ptr_q=0; //binary counter for read pointer\r\n\t wire[FIFO_DEPTH_WIDTH:0] r_ptr_d;\r\n\t reg[FIFO_DEPTH_WIDTH:0] w_ptr_sync; //binary counter for write pointer sync to read clk\r\n\t reg[FIFO_DEPTH_WIDTH:0] w_grey_sync; //grey counter for the write pointer synchronized to read clock\r\n\t wire[FIFO_DEPTH_WIDTH:0] r_grey,r_grey_nxt; //grey counter for read pointer \r\n\t \r\n\t \r\n\t assign r_grey= r_ptr_q^(r_ptr_q>>1);  //binary to grey code conversion\r\n\t assign r_grey_nxt= (r_ptr_q+1'b1)^((r_ptr_q+1'b1)>>1); //next grey code\r\n\t assign r_ptr_d= (read && !empty)? r_ptr_q+1'b1:r_ptr_q;\r\n\t \r\n\t //register operation\r\n\t always @(posedge clk_read,negedge rst_n) begin\r\n\t\tif(!rst_n) begin\r\n\t\t\tr_ptr_q<=0;\r\n\t\t\tempty<=1;\r\n\t\tend\r\n\t\telse begin\r\n\t\t\tr_ptr_q<=r_ptr_d;\r\n\t\t\tif(read && !empty) empty <= r_grey_nxt==w_grey_sync;//empty condition\r\n\t\t\telse empty <= r_grey==w_grey_sync; \r\n\t\t\t\r\n\t\t\tfor(i=0;i<=FIFO_DEPTH_WIDTH;i=i+1) w_ptr_sync[i]=^(w_grey_sync>>i); //grey code to binary converter\r\n\t\t\tdata_count_r = (w_ptr_q>=r_ptr_sync)? (w_ptr_q-r_ptr_sync):(FIFO_DEPTH-r_ptr_sync+w_ptr_q); //compares read pointer to sync write pointer to generate data_count\r\n\t\tend\r\n\t end\r\n\t ////////////////////////////////////////////////////////////////////////\r\n\t \r\n\t \r\n\t /////////////////////CLOCK DOMAIN CROSSING//////////////////////////////\r\n\t reg[FIFO_DEPTH_WIDTH:0] r_grey_sync_temp;\r\n\t reg[FIFO_DEPTH_WIDTH:0] w_grey_sync_temp;\r\n\t always @(posedge clk_write) begin //2 D-Flipflops for reduced metastability in clock domain crossing from READ DOMAIN to WRITE DOMAIN\r\n\t\tr_grey_sync_temp<=r_grey; \r\n\t\tr_grey_sync<=r_grey_sync_temp;\r\n\t end\r\n\t always @(posedge clk_read) begin //2 D-Flipflops for reduced metastability in clock domain crossing from WRITE DOMAIN to READ DOMAIN\r\n\t\tw_grey_sync_temp<=w_grey;\r\n\t\tw_grey_sync<=w_grey_sync_temp;\r\n\t end\r\n\t \r\n\t//////////////////////////////////////////////////////////////////////////\r\n\t\r\n\tassign w_ptr=w_ptr_q[10:0];\r\n\tassign r_ptr=r_ptr_d[10:0];\r\n\t \r\n\t \r\n\t ",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "rst_n"
                },
                {
                  "name": "clk_write"
                },
                {
                  "name": "clk_read"
                },
                {
                  "name": "write"
                },
                {
                  "name": "read"
                }
              ],
              "out": [
                {
                  "name": "full"
                },
                {
                  "name": "empty"
                },
                {
                  "name": "data_count_w",
                  "range": "[10:0]",
                  "size": 11
                },
                {
                  "name": "data_count_r",
                  "range": "[10:0]",
                  "size": 11
                },
                {
                  "name": "we"
                },
                {
                  "name": "w_ptr",
                  "range": "[10:0]",
                  "size": 11
                },
                {
                  "name": "r_ptr",
                  "range": "[10:0]",
                  "size": 11
                }
              ]
            }
          },
          "position": {
            "x": -80,
            "y": 56
          },
          "size": {
            "width": 872,
            "height": 568
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "970fe62e-ffcd-403a-9592-b44e4285fc31",
            "port": "we"
          },
          "target": {
            "block": "7fa8396c-6642-4333-b2a9-7edb1c1faa96",
            "port": "3f2843d0-3cc6-4eaf-b1d6-626734cccc96"
          },
          "vertices": [
            {
              "x": 976,
              "y": 456
            }
          ]
        },
        {
          "source": {
            "block": "d5133b14-8949-42d9-abde-a580b73e0117",
            "port": "out"
          },
          "target": {
            "block": "970fe62e-ffcd-403a-9592-b44e4285fc31",
            "port": "rst_n"
          }
        },
        {
          "source": {
            "block": "3249211a-b2cd-4941-9d1a-546ccd37346a",
            "port": "out"
          },
          "target": {
            "block": "970fe62e-ffcd-403a-9592-b44e4285fc31",
            "port": "clk_write"
          }
        },
        {
          "source": {
            "block": "7369df1f-28d3-4c2e-bdac-d425afd5f280",
            "port": "out"
          },
          "target": {
            "block": "970fe62e-ffcd-403a-9592-b44e4285fc31",
            "port": "clk_read"
          },
          "vertices": [
            {
              "x": -152,
              "y": 344
            }
          ]
        },
        {
          "source": {
            "block": "2b26ad98-ae4c-41cb-8a36-e0ec12ca5438",
            "port": "out"
          },
          "target": {
            "block": "970fe62e-ffcd-403a-9592-b44e4285fc31",
            "port": "write"
          },
          "vertices": [
            {
              "x": -136,
              "y": 456
            }
          ]
        },
        {
          "source": {
            "block": "c299b4bf-bcfb-4497-acab-9484123dfa89",
            "port": "out"
          },
          "target": {
            "block": "970fe62e-ffcd-403a-9592-b44e4285fc31",
            "port": "read"
          }
        },
        {
          "source": {
            "block": "3249211a-b2cd-4941-9d1a-546ccd37346a",
            "port": "out"
          },
          "target": {
            "block": "7fa8396c-6642-4333-b2a9-7edb1c1faa96",
            "port": "48f81890-670a-41ba-8f90-d72d9ab64452"
          },
          "vertices": [
            {
              "x": 888,
              "y": 16
            },
            {
              "x": 1008,
              "y": 368
            }
          ]
        },
        {
          "source": {
            "block": "7369df1f-28d3-4c2e-bdac-d425afd5f280",
            "port": "out"
          },
          "target": {
            "block": "7fa8396c-6642-4333-b2a9-7edb1c1faa96",
            "port": "f9cae3c2-80d3-4173-aa41-ce7097ad51be"
          },
          "vertices": [
            {
              "x": -176,
              "y": 40
            },
            {
              "x": 1048,
              "y": 72
            }
          ]
        },
        {
          "source": {
            "block": "970fe62e-ffcd-403a-9592-b44e4285fc31",
            "port": "full"
          },
          "target": {
            "block": "8bb3356e-15e2-4047-9da2-c274df3d9964",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "970fe62e-ffcd-403a-9592-b44e4285fc31",
            "port": "empty"
          },
          "target": {
            "block": "a80c3621-d849-470e-b504-32bba73a0b27",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "970fe62e-ffcd-403a-9592-b44e4285fc31",
            "port": "data_count_w"
          },
          "target": {
            "block": "ef58acda-b3cb-4e8f-806b-698a1b90f115",
            "port": "in"
          },
          "size": 11
        },
        {
          "source": {
            "block": "970fe62e-ffcd-403a-9592-b44e4285fc31",
            "port": "data_count_r"
          },
          "target": {
            "block": "a4d9a19d-aba7-4a9f-afcc-0b35ad590e9a",
            "port": "in"
          },
          "size": 11
        },
        {
          "source": {
            "block": "91c199c7-93e3-42bb-a906-60302b3a962d",
            "port": "out"
          },
          "target": {
            "block": "7fa8396c-6642-4333-b2a9-7edb1c1faa96",
            "port": "78ac8640-7388-4893-b4a3-59892d19b0be"
          },
          "vertices": [
            {
              "x": 1008,
              "y": 600
            }
          ],
          "size": 9
        },
        {
          "source": {
            "block": "7fa8396c-6642-4333-b2a9-7edb1c1faa96",
            "port": "9057eea9-313f-43df-ac6d-cd068716d78b"
          },
          "target": {
            "block": "651bf04c-97e5-4cb6-89a0-86b39561b048",
            "port": "in"
          },
          "size": 9
        },
        {
          "source": {
            "block": "970fe62e-ffcd-403a-9592-b44e4285fc31",
            "port": "w_ptr"
          },
          "target": {
            "block": "7fa8396c-6642-4333-b2a9-7edb1c1faa96",
            "port": "47aaab97-b8a8-483c-97ca-54283b829014"
          },
          "size": 11
        },
        {
          "source": {
            "block": "970fe62e-ffcd-403a-9592-b44e4285fc31",
            "port": "r_ptr"
          },
          "target": {
            "block": "7fa8396c-6642-4333-b2a9-7edb1c1faa96",
            "port": "ed782a53-4fa4-4068-9742-2ae2bd31114e"
          },
          "vertices": [
            {
              "x": 1024,
              "y": 576
            }
          ],
          "size": 11
        }
      ]
    }
  },
  "dependencies": {
    "9da8cd7ad8aecbc29e37de3e00f244bfac125f6b": {
      "package": {
        "name": "dual_port_ram",
        "version": "",
        "description": "uses block ram with separate read/write clock",
        "author": "",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "f9cae3c2-80d3-4173-aa41-ce7097ad51be",
              "type": "basic.input",
              "data": {
                "name": "clk_r",
                "clock": false
              },
              "position": {
                "x": 224,
                "y": 360
              }
            },
            {
              "id": "48f81890-670a-41ba-8f90-d72d9ab64452",
              "type": "basic.input",
              "data": {
                "name": "clk_w",
                "clock": false
              },
              "position": {
                "x": 224,
                "y": 416
              }
            },
            {
              "id": "3f2843d0-3cc6-4eaf-b1d6-626734cccc96",
              "type": "basic.input",
              "data": {
                "name": "we",
                "clock": false
              },
              "position": {
                "x": 224,
                "y": 464
              }
            },
            {
              "id": "9057eea9-313f-43df-ac6d-cd068716d78b",
              "type": "basic.output",
              "data": {
                "name": "dout",
                "range": "[8:0]",
                "size": 9
              },
              "position": {
                "x": 1160,
                "y": 488
              }
            },
            {
              "id": "78ac8640-7388-4893-b4a3-59892d19b0be",
              "type": "basic.input",
              "data": {
                "name": "din",
                "range": "[8:0]",
                "clock": false,
                "size": 9
              },
              "position": {
                "x": 224,
                "y": 512
              }
            },
            {
              "id": "47aaab97-b8a8-483c-97ca-54283b829014",
              "type": "basic.input",
              "data": {
                "name": "addr_a",
                "range": "[10:0]",
                "clock": false,
                "size": 11
              },
              "position": {
                "x": 224,
                "y": 568
              }
            },
            {
              "id": "ed782a53-4fa4-4068-9742-2ae2bd31114e",
              "type": "basic.input",
              "data": {
                "name": "addr_b",
                "range": "[10:0]",
                "clock": false,
                "size": 11
              },
              "position": {
                "x": 224,
                "y": 616
              }
            },
            {
              "id": "f46d498c-494a-432c-8021-02c5ebce2c0f",
              "type": "basic.code",
              "data": {
                "code": "\tlocalparam ADDR_WIDTH=11,\r\n\t               DATA_WIDTH=9;\r\n\t\r\n\treg[DATA_WIDTH-1:0] ram[2**ADDR_WIDTH-1:0];\r\n\treg[ADDR_WIDTH-1:0] addr_b_q;\r\n\t\r\n\talways @(posedge clk_w) begin\r\n\t\tif(we) ram[addr_a]<=din;\r\n\tend\r\n\talways @(posedge clk_r) begin\r\n\t\taddr_b_q<=addr_b;\t\r\n\tend\r\n\tassign dout=ram[addr_b_q];",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk_r"
                    },
                    {
                      "name": "clk_w"
                    },
                    {
                      "name": "we"
                    },
                    {
                      "name": "din",
                      "range": "[8:0]",
                      "size": 9
                    },
                    {
                      "name": "addr_a",
                      "range": "[10:0]",
                      "size": 11
                    },
                    {
                      "name": "addr_b",
                      "range": "[10:0]",
                      "size": 11
                    }
                  ],
                  "out": [
                    {
                      "name": "dout",
                      "range": "[8:0]",
                      "size": 9
                    }
                  ]
                }
              },
              "position": {
                "x": 480,
                "y": 368
              },
              "size": {
                "width": 600,
                "height": 304
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "f9cae3c2-80d3-4173-aa41-ce7097ad51be",
                "port": "out"
              },
              "target": {
                "block": "f46d498c-494a-432c-8021-02c5ebce2c0f",
                "port": "clk_r"
              }
            },
            {
              "source": {
                "block": "48f81890-670a-41ba-8f90-d72d9ab64452",
                "port": "out"
              },
              "target": {
                "block": "f46d498c-494a-432c-8021-02c5ebce2c0f",
                "port": "clk_w"
              }
            },
            {
              "source": {
                "block": "3f2843d0-3cc6-4eaf-b1d6-626734cccc96",
                "port": "out"
              },
              "target": {
                "block": "f46d498c-494a-432c-8021-02c5ebce2c0f",
                "port": "we"
              }
            },
            {
              "source": {
                "block": "78ac8640-7388-4893-b4a3-59892d19b0be",
                "port": "out"
              },
              "target": {
                "block": "f46d498c-494a-432c-8021-02c5ebce2c0f",
                "port": "din"
              },
              "size": 9
            },
            {
              "source": {
                "block": "f46d498c-494a-432c-8021-02c5ebce2c0f",
                "port": "dout"
              },
              "target": {
                "block": "9057eea9-313f-43df-ac6d-cd068716d78b",
                "port": "in"
              },
              "size": 9
            },
            {
              "source": {
                "block": "47aaab97-b8a8-483c-97ca-54283b829014",
                "port": "out"
              },
              "target": {
                "block": "f46d498c-494a-432c-8021-02c5ebce2c0f",
                "port": "addr_a"
              },
              "size": 11
            },
            {
              "source": {
                "block": "ed782a53-4fa4-4068-9742-2ae2bd31114e",
                "port": "out"
              },
              "target": {
                "block": "f46d498c-494a-432c-8021-02c5ebce2c0f",
                "port": "addr_b"
              },
              "size": 11
            }
          ]
        }
      }
    }
  }
}