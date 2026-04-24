#  32-bit Single Cycle MIPS Processor (Verilog)

##  Project Overview

This project presents the design and implementation of a **32-bit Single Cycle MIPS Processor** using **Verilog HDL**.
The processor executes instructions in a **single clock cycle**, integrating all major components of a basic CPU including datapath, control unit, and memory modules.

The goal of this project is to understand the internal working of a microprocessor at the hardware level by building it from scratch.

---

## Objectives

* Design a complete **MIPS-based processor architecture**
* Implement the processor using **Verilog HDL**
* Simulate instruction execution in a **single clock cycle**
* Understand datapath and control signal generation

---

##  Features

* 32-bit architecture
* Single-cycle instruction execution
* Modular design for easy understanding
* Supports basic MIPS instructions:

  * Arithmetic: `ADD`, `SUB`
  * Logical: `AND`
* Fully functional **datapath and control unit**

---

## Architecture Components

The processor consists of the following modules:

###  Program Counter (PC)

* Holds the address of the current instruction

###  Instruction Memory

* Stores instructions to be executed

###  Register File

* Contains registers (R0, R1, ACC)
* Supports read/write operations

###  ALU (Arithmetic Logic Unit)

* Performs arithmetic and logical operations

###  Control Unit

* Generates control signals based on instruction type

###  Data Memory

* Stores data for load/store operations

###  Instruction Decoder

* Decodes instruction fields and opcodes

---

##  Datapath Overview

The datapath connects all components to allow smooth execution of instructions:

1. Instruction fetched from memory
2. Instruction decoded
3. Operands read from registers
4. ALU performs operation
5. Result written back to register/memory

---

##  Technologies Used

* **Verilog HDL**
* Simulation Tools (e.g., ModelSim / Vivado)

---

##  How to Run

1. Clone the repository:

   ```bash
    https://github.com/muneebazahir/COAL-Project
   ```

2. Open in your Verilog simulator (ModelSim / Vivado)

3. Run the testbench:

   ```bash
   run -all
   ```

4. Observe waveform outputs

---

##  Learning Outcomes

* Deep understanding of CPU architecture
* Hands-on experience with Verilog design
* Knowledge of datapath and control logic integration

---

##  Acknowledgment

This project was developed as part of the **Computer Organization and Assembly Language  (COAL)** course.

---
