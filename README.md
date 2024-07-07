# Design and Implementation of Cyclic Redundancy Check for Downlink Transmission in NB-IoT
## Abstract
Message corruption is a common problem in communication systems. The received signal should always be verified to know whether the signal is corrupted, or the same signal is transmitted. In communication systems, the Cyclic Redundancy Check (CRC) is an essential block for ensuring data integrity and error detection. The authors propose a design and implementation of 16-bit CRC for downlink transmitter in NB-IoT. The series architecture involves sequential processing of data bits, while the parallel architecture utilizes parallel processing to enhance throughput and reduce latency. The design is simulated using Vivado HLS and synthesized RTL is tested on the Spartan 6 and Arty 7 target FPGA board. It is observed that parallel CRC consumes 48.33% more area and 72.42% higher power than series CRC, with the compromise in area and power, it is also observed that parallel CRC is 90% faster than series CRC. The result shows that CRC bits in parallel CRC are computed in 5 clock cycles whereas those in series CRC are computed in 50 clock cycles

## Publication
This paper was published in the proceedings of the International Conference on Emerging Trends in Microelectronics, Communication and Intelligent Systems (ETMCIS) 2024.

## Repository Structure
### Parallel 
- **Results**: Snaps of parallel architecture results.
- **Xylinx Simulation**: verilog (.v) files of parallel architecture.
- **Parallel Architecture**

### Series 
- **Results**: Snaps of series architecture results.
- **Xylinx Simulation**: verilog (.v) files of series architecture.
- **Series Architecture**

### VIO Implementation
When the hardware input and output ports of an FPGA are insufficient, we can use Virtual Input/Output (VIO) ports. VIO allows us to provide virtual inputs to the FPGA and receive virtual outputs from it. The following steps outline the implementation of VIO, as demonstrated in the video:

## Steps to Implement VIO

1. **Setup the VIO Core**
   - Integrate the VIO core into your FPGA design using the FPGA design software.
   - Select the VIO core from the IP catalog and add it to your design.

2. **Configure the VIO Core**
   - Configure the VIO core parameters according to your requirements.
   - Set the number of virtual inputs and outputs, their data widths, and any other necessary settings.

3. **Connect the VIO Core to the Design**
   - Connect the virtual inputs and outputs from the VIO core to the appropriate signals in your FPGA design.
   - This might involve linking them to internal signals, registers, or other components within the design.

4. **Generate the Bitstream**
   - After configuring and connecting the VIO core, generate the FPGA bitstream.
   - This process compiles your design and prepares it for programming onto the FPGA.

5. **Program the FPGA**
   - Load the generated bitstream onto the FPGA.
   - This step involves physically programming the FPGA with your design, including the VIO core.

6. **Interact with VIO via Software**
   - Use the FPGA design software's VIO interface to interact with the virtual inputs and outputs.
   - Manually set input values and observe output values in real-time, aiding in debugging and verification of your design.

These steps, shown in the video, provide a detailed guide on how to implement VIO in your FPGA design, enabling you to extend the input and output capabilities beyond the physical limitations of the FPGA hardware ports.

## Citation
If you find this repo useful in your project or research, please consider citing the publication.
