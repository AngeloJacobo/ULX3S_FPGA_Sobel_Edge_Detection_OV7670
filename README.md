Created by: Angelo Jacobo  
Date: November 2,2021   

[![image](https://user-images.githubusercontent.com/87559347/139786858-b899041c-f16d-43c3-b167-9562f0ecccd3.png)](https://youtu.be/N64m7UnyA8o)

# Materials:  
* [ULX3S FPGA Board](https://radiona.org/ulx3s/)
* [OV7670 PMOD Connector](https://github.com/goran-mahovlic/ulx3s-extensions)
* [OV7670 Camera](https://www.aliexpress.com/item/1005002511852464.html?spm=a2g0o.search0302.0.0.422625fdLm4xyc&algo_pvid=48c48240-0e9d-40a6-a399-d6021650bbd0&aem_p4p_detail=2021102802545714485140932580990012528582&algo_exp_id=48c48240-0e9d-40a6-a399-d6021650bbd0-3)
* HDMI Connector

![SOBEL_ULX3S](https://user-images.githubusercontent.com/87559347/139771799-948df8a7-e357-4350-90b1-cacf81c0e691.jpg)

Two ways to run this design on your ULX3S FPGA Board:   
* Using Icestudio GUI  
* Using the FPGA Opensource Toolchain (Yosys+Nexpnr+Fujprog)  

# 1. Using Icestudio GUI
1. Install [Icestudio](https://icestudio.io/)
2. Clone this repository on your desired directory:  
 `git clone https://github.com/AngeloJacobo/ULX3S_FPGA_Sobel_Edge_Detection_OV7670.git`
3. Run `ULX3S_SOBEL.ice`
4. Click `Tools>Build`
5. Click `Tools>Upload`
6. Done!

# 2. Using the FPGA OpenSource Toolchain (Yosys+Nextpnr+Fujprog)
1. Clone this repository on your desired directory:  
 `git clone https://github.com/AngeloJacobo/ULX3S_FPGA_Sobel_Edge_Detection_OV7670.git`
2. Run `make sram` (or `make flash` if you want to download it directly to flash)
3. Done!

### If you do not yet have the FPGA opensource tools installed:
1. Download the latest release of [`oss-cad-suite`](https://github.com/YosysHQ/oss-cad-suite-build) that matches your OS
2. Follow the installation guide.
3. Check if you can now call `yosys` , `nextpnr-ecp5` , and `fujprog` on bash. If `command not found`, just add the directories of the `oss-cad-suite/bin` , `oss-cad-suite/lib` , and `oss-cad-suite/py3bin` to PATH. 

# About:
This project is ported from my previous design [FPGA_RealTime_and_Static_Sobel_Edge_Detection](https://github.com/AngeloJacobo/FPGA_RealTime_and_Static_Sobel_Edge_Detection) that uses Spartan 6 FPGA Board. This design uses an HDMI interface instead of VGA. RGB pixels and processed Sobel Edge Detected pixels are both stored to SDRAM and retrieved by the HDMI which will then be displayed on the monitor.  
* `btn3` - switch display (RGB or edge detected image)
* `btn2` - increase threshold of Sobel Edge Detection
* `btn1` - decrease threshold of Sobel Edge Detection

# Donate   
Support these open-source projects by donating  

[![paypal](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://www.paypal.com/donate?hosted_button_id=GBJQGJNCJZVRU)


# Inquiries  
Connect with me at my linkedin: https://www.linkedin.com/in/angelo-jacobo/
