RISC-V Processor Implementation
Overview
This project is an implementation of a single-cycle microarchitecture for a subset of the RISC-V instruction set architecture (ISA) using Digital, a circuit design and simulation software. The aim is to simulate a simplified yet functional RISC-V processor that can execute a series of predefined tests as well as custom programs written in RISC-V assembly language.

Features
Program Counter (PC): A 64-bit register with enable (EN) and clear (CLR) inputs.
Instruction Memory: Machine code programs are stored in ROM components. The instruction memory allows for the selection and execution of stored programs.
Register File: Supports reading from two registers in a single clock cycle (RD0, RD1).
Arithmetic Logic Unit (ALU): Performs data processing operations including addition, subtraction, multiplication, and shifting operations (sll, slr, sra) among others.
Branch Control Unit (BCU): Handles conditional branch computation and PC updates.
Data Memory: Utilizes Digital's RAM component for data storage, supporting stack memory for test programs and logic for word- and byte-size memory operations.
Control Unit: Decodes machine code instructions and generates control signals.
Data Path: Connects data between the various sub-circuits.
Control Path: Connects the Control unit to various sub-circuits and multiplexers.
Output Registers: Includes outputs for registers A0, A1, A2, and A3 for observation and debugging.
Deliverables
All .dig and .hex files required to run the processor implementation.
A PDF document of the Decoder spreadsheet.
Custom programs for testing, including a main assembly language setup with at least five parameters for functions and an end marker (unimp) for program termination.
Getting Started
To test the processor with the provided unit and program tests, follow these steps:

Clone this repository to your local machine.
Ensure you have Digital installed and operational.
Open the top-level processor circuit file in Digital.
Load the provided instruction memory or your own custom program into the instruction memory component.
Execute the simulation and observe the outputs for registers A0, A1, A2, and A3.
Tests
The processor implementation is verified using a suite of automated unit tests and program tests. These tests are designed to validate the functionality of each component of the processor as well as the processor as a whole.

For detailed instructions on how to run these tests, refer to the tests directory in this repository.

Development Tools
Digital: Main simulation software used for designing and testing the processor.
Python: A Python script is provided for creating a decode ROM hex file, which is used in the Control Unit for decoding instructions.
