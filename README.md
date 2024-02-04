# High Level Digital Design 1214-0420 Term Project

## Objective
The objective of this term project is to design a three 4-bit numbers adder.

## Details of the Design
The chosen approach for the design is to implement a Ripple Carry Adder (RCA), which performs the addition of two 𝑛-bit numbers. The adder is structured to handle the addition of three 4-bit numbers in two stages:

1. **First Stage:**
   - In this stage, the problem of adding three numbers is reduced to adding two 𝑛-bit numbers.
   - The 8 bits of sum (S) and carry (C) will be computed simultaneously.

2. **Second Stage:**
   - A Ripple Carry Adder (RCA) is employed to compute the final summation and the carry.

**Note:** The design must be constructed using the minimum number of Half Adders (HA).

## Test Bench
For simplicity, the test bench can be conducted using three different tuples. Example tuples are provided below:
- T1 = (X=1100, Y=1101, Z=1110)
- T2 = (X=1111, Y=1000, Z=1001)
- T3 = (X=1110, Y=0101, Z=0111)

Feel free to modify or extend the test bench according to your requirements.

## How to Use
1. Clone the repository to your local machine.
2. Open the project in your preferred digital design tool.
3. Review and modify the design as needed.
4. Run the test bench files to verify the correctness of the implementation.



