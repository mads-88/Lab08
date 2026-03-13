# Multiplexers and Demultiplexers

In this lab you have learned about multiplexers and demultiplexers.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Madison Hickey and Austin Maples

## Summary
We built a 4-bit mux and demux using Verilog and tested them on the FPGA board. The switches represented different inputs and the LEDs represented outputs. By pressing different buttons, we could choose which input was sent through the mux and which output the demux routed it to. This showed how multiple signals can share one communication line and still be directed to the correct destination.

## Lab Questions

### In plain English describe the function and use of a multiplexer.
A multiplexer takes several inputs and selects one of them to send to a single output. The input that gets chosen depends on the select signals. Multiplexers are useful because they let multiple signals share one line instead of needing separate wires for everything.

### In plain English describe the function and use of a demultiplexer.
A demultiplexer does the opposite of a multiplexer. It takes one input and sends it to one of several outputs depending on the select signals. This allows one signal to be routed to different places in a circuit.

### What other uses might these circuits have? (Think Shannon’s)
Multiplexers and demultiplexers are used in many digital systems like processors and memory systems to route data between components. Multiplexers can also be used to implement logic functions using Shannon’s expansion, which can simplify the design of some circuits.

