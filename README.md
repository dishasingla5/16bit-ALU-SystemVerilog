\# 16-bit ALU in SystemVerilog



This project is a simple 16-bit Arithmetic Logic Unit (ALU) designed using SystemVerilog and simulated in Xilinx Vivado.



The goal of this project was to strengthen my understanding of combinational logic design, arithmetic and logical operations, and verification using testbenches.



\## Operations Implemented



\- Addition

\- Subtraction

\- Bitwise AND

\- Bitwise OR

\- Bitwise XOR

\- Left Shift

\- Right Shift

\- Comparison (A > B)



The design also generates:

\- Carry Flag

\- Zero Flag



\## Design Details



The ALU accepts two 16-bit inputs (`A` and `B`) and performs the selected operation based on a 3-bit opcode.



| Opcode | Operation |

|----------|----------|

| 000 | Addition |

| 001 | Subtraction |

| 010 | AND |

| 011 | OR |

| 100 | XOR |

| 101 | Left Shift |

| 110 | Right Shift |

| 111 | Compare |



\## Project Structure



```text

16bit-ALU-SystemVerilog

│

├── rtl

│   └── alubit.sv

├── tb

│   └── tb_alubit.sv

├── docs

│   └── waveform.png

└── README.md

```



\## Verification



The ALU was verified using a SystemVerilog testbench in Vivado. Various test cases were applied to validate arithmetic, logical, shift, comparison, carry, and zero-flag functionality.



\## Simulation Waveform



!\[Waveform](docs/waveform.png)



\## Tools Used



\- SystemVerilog

\- Xilinx Vivado 2025.1



\## What I Learned



Through this project, I gained hands-on experience with:

\- Combinational circuit design

\- Case-based operation selection

\- Flag generation (Carry and Zero)

\- SystemVerilog coding practices

\- Testbench development and simulation in Vivado



\## Author



\*\*Disha Singla\*\*

