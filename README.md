# RISC-V Processor Implementation

## Overview
This project implements a single-cycle microarchitecture for a subset of the RISC-V instruction set architecture (ISA) in Digital, a circuit design and simulation software. It simulates a simplified but functional RISC-V processor capable of executing predefined tests and custom RISC-V assembly language programs.

## Features
- **Program Counter (PC):** 64-bit register with enable (EN) and clear (CLR) inputs.
- **Instruction Memory:** Stores machine code programs in ROM components, allowing selection and execution.
- **Register File:** Supports reading two registers in a single clock cycle (RD0, RD1).
- **Arithmetic Logic Unit (ALU):** Performs data processing operations (add, sub, mul, sll, slr, sra, etc.).
- **Branch Control Unit (BCU):** Manages conditional branch computation and PC updates.
- **Data Memory:** Utilizes Digital's RAM component for data storage, supporting stack memory and logic for word- and byte-size operations.
- **Control Unit:** Decodes instructions and generates control signals.
- **Data Path:** Connects data between sub-circuits.
- **Control Path:** Connects the Control Unit to sub-circuits and multiplexers.
- **Outputs for Registers:** A0, A1, A2, and A3 for observation and debugging.

## Deliverables
- `.dig` and `.hex` files for processor operation.
- PDF of the Decoder spreadsheet.
- Custom testing programs with a main assembly setup and an end marker (`unimp`).

## Getting Started
1. **Clone this repository:** Ensure Digital is installed on your system.
2. **Open the processor circuit file** in Digital.
3. **Load instruction memory** with provided or custom programs.
4. **Run the simulation** and observe outputs (A0, A1, A2, A3).

## Tests
Verified through automated unit and program tests designed for comprehensive functionality validation.

### Running Tests:
Refer to the tests directory for instructions on executing these tests.

## Development Tools
- **Digital:** Circuit design and simulation.
- **Python:** Script provided for creating a decode ROM hex file for instruction decoding.
