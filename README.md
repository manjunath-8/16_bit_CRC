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

## Citation
If you find this repo useful in your project or research, please consider citing the publication.
