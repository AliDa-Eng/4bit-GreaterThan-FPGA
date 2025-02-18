# 4-bit Greater-Than Comparator (FPGA Implementation)

## 🔹 Overview
This project implements a **4-bit greater-than comparator** using **Verilog** and is deployed on the **Basys 3 FPGA (Artix-7)**. The circuit compares two 4-bit inputs (`a` and `b`) and asserts an output (`agtb = 1`) when `a > b`. 

The design is constructed hierarchically:
- A **2-bit greater-than comparator** (`gt_2bit.v`) serves as the building block.
- A **4-bit greater-than comparator** (`gt_4bit.v`) is built using two `gt_2bit` modules and additional logic.

The project includes **simulation (Vivado/ModelSim)** and **hardware testing** on the Basys 3 FPGA.

---

## 🛠️ Hardware and Software Requirements
### **🔹 FPGA Board**
- **Basys 3 FPGA (Xilinx Artix-7)**

### **🔹 Development Tools**
- **Vivado 202x** (for synthesis and implementation)
- **ModelSim** or **Vivado Simulation** (for testbench verification)
- **Git/GitHub** (for version control)

---

