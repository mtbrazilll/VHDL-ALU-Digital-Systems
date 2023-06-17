# VHDL Digital Systems Project README

This repository contains the VHDL implementation of an Arithmetic Logic Unit (ALU) for the Digital Systems course.

## ALU Description

The ALU performs various arithmetic and logical operations based on the input selection signals. The selection signals determine the operation to be performed on the inputs A and B. The following table shows the operation corresponding to each selection signal combination:

## ALU Operation Table

The following table shows the operations performed by the Arithmetic Logic Unit (ALU) based on the selection signals:

| sel2 | sel1 | sel0 |     Operation   |    [A0..A4]    |    [B0..B4]    |
|------|------|------|-----------------|----------------|----------------|
|   0  |   0  |   0  |   A + B         |   \     \/     |   \     \/     |
|   0  |   0  |   1  |   A - B         |   \    ALU     |   \    ALU     |
|   0  |   1  |   0  |   min(A, B)     |   \__________ |   \__________ |
|   0  |   1  |   1  |   max(A, B)     |                |                |
|   1  |   0  |   0  |   A > B         |    [O0..O4]    |                |
|   1  |   0  |   1  |   A <= B        |                |                |
|   1  |   1  |   0  |   mod(A)        |                |                |
|   1  |   1  |   1  |   A * a         |                |                |





## Project Details

- **Author:** Mateus da Silva Batista
- **Date:** September 2021

## Usage

The VHDL files in this repository can be used to simulate and synthesize the ALU design. The main entity of the design is `alu`, which has the following ports:

### Inputs

- `A`: 5-bit input vector representing operand A.
- `B`: 5-bit input vector representing operand B.
- `selection`: 3-bit input vector representing the selection signals.

### Outputs

- `display1`: 7-bit output vector representing the first display output.
- `display2`: 7-bit output vector representing the second display output.
- `overflow`: 1-bit output indicating overflow during arithmetic operations.
- `status`: 1-bit output indicating the status of the operation.
- `sinal`: 1-bit output indicating the sign of the result.

## Components

The ALU design consists of several components that perform specific operations:

- `adder_4_bits`: 4-bit adder component used for addition operation.
- `subtrai`: Subtraction component.
- `modulo`: Modulo operation component.
- `maiorque`: Comparison component to determine if A is greater than B.
- `mima`: Component to find the minimum and maximum between A and B.
- `produto`: Component for multiplication operation.




