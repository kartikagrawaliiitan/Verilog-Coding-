# Vivado Installation Guide (Windows/Linux)

## For Windows

1. Visit [Xilinx Downloads](https://www.xilinx.com/support/download.html).
2. Download **Vivado WebPACK** (free version).
3. Install Vivado Design Suite:
   - Choose **WebPACK License**
   - Select **Artix-7** family (for Basys 3)
   - Optional: Install Vivado Lab Edition (for programming only)
4. Reboot the system.
5. Launch Vivado and test with a new RTL project.

## For Linux/Ubuntu

1. Download the `.bin` installer from the Xilinx website.
2. Run:
   ```bash
   chmod +x Xilinx_Vivado*.bin
   ./Xilinx_Vivado*.bin
