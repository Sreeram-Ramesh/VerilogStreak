# DAY 1

<details>
<summary>Problem 1</summary>
<br>
Create a module with one input and one output that behaves like a wire.

<br>

Unlike physical wires, wires (and other signals) in Verilog are directional. This means information flows in only one direction, from (usually one) source to the sinks (The source is also often called a driver that drives a value onto a wire). In a Verilog "continuous assignment" (assign left_side = right_side;), the value of the signal on the right side is driven onto the wire on the left side. The assignment is "continuous" because the assignment continues all the time even if the right side's value changes. A continuous assignment is not a one-time event.

The ports on a module also have a direction (usually input or output). An input port is driven by something from outside the module, while an output port drives something outside. When viewed from inside the module, an input port is a driver or source, while an output port is a sink.

Your task is to create a wire by adding an assign statement to connect in to out. The parts outside the box are not your concern, but you should know that your circuit is tested by connecting signals from our test harness to the ports on your top_module.

In addition to continuous assignments, Verilog has three other assignment types that are used in procedural blocks, two of which are synthesizable. We won't be using them until we start using procedural blocks.
<br>
</details>

<details>
<summary>Problem 2</summary>
<br>
Create a module with 3 inputs and 4 outputs that behaves like wires that makes these connections:

a -> w<br>
b -> x<br>
b -> y<br>
c -> z<br>

The diagram below illustrates how each part of the circuit corresponds to each bit of Verilog code. From outside the module, there are three input ports and four output ports.

When you have multiple assign statements, the order in which they appear in the code does not matter. Unlike a programming language, assign statements ("continuous assignments") describe connections between things, not the action of copying a value from one thing to another.

One potential source of confusion that should perhaps be clarified now: The green arrows here represent connections between wires, but are not wires in themselves. The module itself already has 7 wires declared (named a, b, c, w, x, y, and z). This is because input and output declarations actually declare a wire unless otherwise specified. Writing input wire a is the same as input a. Thus, the assign statements are not creating wires, they are creating the connections between the 7 wires that already exist.
<br>
</details>

<details>
<summary>Problem 3</summary>
<br>
Create a module that implements a NOT gate.

This circuit is similar to wire, but with a slight difference. When making the connection from the wire in to the wire out we're going to implement an inverter (or "NOT-gate") instead of a plain wire.

Use an assign statement. The assign statement will continuously drive the inverse of in onto wire out.
<br>
</details>

## Acknowledgements

 - [HDLBits - Verilog Practice](https://hdlbits.01xz.net/wiki/Main_Page)

