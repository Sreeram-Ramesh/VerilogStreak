## DAY 1

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

## DAY 2

<details>
<summary>Problem 3</summary>
<br>
Create a module that implements a NOT gate.

This circuit is similar to wire, but with a slight difference. When making the connection from the wire in to the wire out we're going to implement an inverter (or "NOT-gate") instead of a plain wire.

Use an assign statement. The assign statement will continuously drive the inverse of in onto wire out.
<br>
</details>

<details>
<summary>Problem 4</summary>
<br>
Create a module that implements an AND gate.

<br>

This circuit now has three wires (a, b, and out). Wires a and b already have values driven onto them by the input ports. But wire out currently is not driven by anything. Write an assign statement that drives out with the AND of signals a and b.

Note that this circuit is very similar to the NOT gate, just with one more input. If it sounds different, it's because I've started describing signals as being driven (has a known value determined by something attached to it) or not driven by something. Input wires are driven by something outside the module. assign statements will drive a logic level onto a wire. As you might expect, a wire cannot have more than one driver (what is its logic level if there is?), and a wire that has no drivers will have an undefined value (often treated as 0 when synthesizing hardware).
<br>
</details>

<details>
<summary>Problem 5</summary>
<br>
Create a module that implements a NOR gate. A NOR gate is an OR gate with its output inverted. A NOR function needs two operators when written in Verilog.

<br>

An assign statement drives a wire (or "net", as it's more formally called) with a value. This value can be as complex a function as you want, as long as it's a combinational (i.e., memory-less, with no hidden state) function. An assign statement is a continuous assignment because the output is "recomputed" whenever any of its inputs change, forever, much like a simple logic gate.
<br>
</details>

## DAY 3

<details>
<summary>Problem 6</summary>
<br>
Create a module that implements an XNOR gate.
<br>
</details>

<details>
<summary>Problem 7</summary>
<br>
Implement the following circuit. Create two intermediate wires (named anything you want) to connect the AND and OR gates together. Note that the wire that feeds the NOT gate is really wire out, so you do not necessarily need to declare a third wire here. Notice how wires are driven by exactly one source (output of a gate), but can feed multiple inputs.

<br>

If you're following the circuit structure in the diagram, you should end up with four assign statements, as there are four signals that need a value assigned.
<br>
</details>

## DAY 4

<details>
<summary>Problem 8</summary>
<br>
The 7458 is a chip with four AND gates and two OR gates. This problem is slightly more complex than 7420.

<br>

Create a module with the same functionality as the 7458 chip. It has 10 inputs and 2 outputs. You may choose to use an assign statement to drive each of the output wires, or you may choose to declare (four) wires for use as intermediate signals, where each internal wire is driven by the output of one of the AND gates. For extra practice, try it both ways.
<br>
</details>

## DAY 5

<details>
<summary>Problem 9</summary>
<br>
Vectors are used to group related signals using one name to make it more convenient to manipulate. For example, wire [7:0] w; declares an 8-bit vector named w that is functionally equivalent to having 8 separate wires.

<br>
Notice that the declaration of a vector places the dimensions before the name of the vector, which is unusual compared to C syntax. However, the part select has the dimensions after the vector name as you would expect.

<br>
wire [99:0] my_vector;      // Declare a 100-element vector
assign out = my_vector[10]; // Part-select one bit out of the vector

<br>
Build a circuit that has one 3-bit input, then outputs the same vector, and also splits it into three separate 1-bit outputs. Connect output o0 to the input vector's position 0, o1 to position 1, etc.

<br>
In a diagram, a tick mark with a number next to it indicates the width of the vector (or "bus"), rather than drawing a separate line for each bit in the vector.
<br>
</details>

## DAY 6

<details>
<summary>Problem 10</summary>
<br>
Build a combinational circuit that splits an input half-word (16 bits, [15:0] ) into lower [7:0] and upper [15:8] bytes.
<br>
</details>

## DAY 7

<details>
<summary>Problem 11</summary>
<br>
A 32-bit vector can be viewed as containing 4 bytes (bits [31:24], [23:16], etc.). Build a circuit that will reverse the byte ordering of the 4-byte word.

<br>
AaaaaaaaBbbbbbbbCcccccccDddddddd => DdddddddCcccccccBbbbbbbbAaaaaaaa

<br>
This operation is often used when the endianness of a piece of data needs to be swapped, for example between little-endian x86 systems and the big-endian formats used in many Internet protocols.
<br>
</details>

## DAY 8

<details>
<summary>Problem 12</summary>
<br>
Build a circuit that has two 3-bit inputs that computes the bitwise-OR of the two vectors, the logical-OR of the two vectors, and the inverse (NOT) of both vectors. Place the inverse of b in the upper half of out_not (i.e., bits [5:3]), and the inverse of a in the lower half.

<br>
Earlier, we mentioned that there are bitwise and logical versions of the various boolean operators (e.g., norgate). When using vectors, the distinction between the two operator types becomes important. A bitwise operation between two N-bit vectors replicates the operation for each bit of the vector and produces a N-bit output, while a logical operation treats the entire vector as a boolean value (true = non-zero, false = zero) and produces a 1-bit output.

<br>
Look at the simulation waveforms at how the bitwise-OR and logical-OR differ.

<br>
</details>

## DAY 9

<details>
<summary>Problem 13</summary>
<br>
Build a combinational circuit with four inputs, in[3:0].

<br>
There are 3 outputs:

<br>

- out_and: output of a 4-input AND gate.
- out_or: output of a 4-input OR gate.
- out_xor: output of a 4-input XOR gate.
<br>
</details>

## DAY 10

<details>
<summary>Problem 14</summary>
<br>
Given several input vectors, concatenate them together then split them up into several output vectors. There are six 5-bit input vectors: a, b, c, d, e, and f, for a total of 30 bits of input. There are four 8-bit output vectors: w, x, y, and z, for 32 bits of output. The output should be a concatenation of the input vectors followed by two 1 bits. 
<br>
</details>

## DAY 11

<details>
<summary>Problem 15</summary>
<br>
Given an 8-bit input vector [7:0], reverse its bit ordering.
<br>
</details>

## DAY 12

<details>
<summary>Problem 16</summary>
<br>
Build a combinational circuit that splits an input half-word (16 bits, [15:0] ) into lower [7:0] and upper [15:8] bytes.One common place to see a replication operator is when sign-extending a smaller number to a larger one, while preserving its signed value. This is done by replicating the sign bit (the most significant bit) of the smaller number to the left. For example, sign-extending 4'b0101 (5) to 8 bits results in 8'b00000101 (5), while sign-extending 4'b1101 (-3) to 8 bits results in 8'b11111101 (-3).

<br>

Build a circuit that sign-extends an 8-bit number to 32 bits. This requires a concatenation of 24 copies of the sign bit (i.e., replicate bit[7] 24 times) followed by the 8-bit number itself.
<br>
</details>

## Day 13

<details>
<summary>Problem 17</summary>
<br>
Given five 1-bit signals (a, b, c, d, and e), compute all 25 pairwise one-bit comparisons in the 25-bit output vector. The output should be 1 if the two bits being compared are equal.

<br>

out[24] = ~a ^ a;   // a == a, so out[24] is always 1.<br>
out[23] = ~a ^ b;<br>
out[22] = ~a ^ c;<br>
...<br>
out[ 1] = ~e ^ d;<br>
out[ 0] = ~e ^ e;

<br>

As the diagram shows, this can be done more easily using the replication and concatenation operators.

<br>

The top vector is a concatenation of 5 repeats of each input.
<br>
The bottom vector is 5 repeats of a concatenation of the 5 inputs
<br>
</details>

## DAY 14

<details>
<summary>Problem 18</summary>
<br>
Build a combinational circuit that splits an input half-word (16 bits, [15:0] ) into lower [7:0] and upper [15:8] bytes.By now, you're familiar with a module, which is a circuit that interacts with its outside through input and output ports. Larger, more complex circuits are built by composing bigger modules out of smaller modules and other pieces (such as assign statements and always blocks) connected together. This forms a hierarchy, as modules can contain instances of other modules.

<br>

The figure below shows a very simple circuit with a sub-module. In this exercise, create one instance of module mod_a, then connect the module's three pins (in1, in2, and out) to your top-level module's three ports (wires a, b, and out). The module mod_a is provided for you — you must instantiate it.

<br>

When connecting modules, only the ports on the module are important. You do not need to know the code inside the module.

<br>

The hierarchy of modules is created by instantiating one module inside another, as long as all of the modules used belong to the same project (so the compiler knows where to find the module). The code for one module is not written inside another module's body (Code for different modules are not nested).

<br>

You may connect signals to the module by port name or port position. For extra practice, try both methods.

<br>

Connecting Signals to Module Ports
<br>

There are two commonly-used methods to connect a wire to a port: by position or by name.
<br>

By position
The syntax to connect wires to ports by position should be familiar, as it uses a C-like syntax. When instantiating a module, ports are connected left to right according to the module's declaration. For example:
<br>

mod_a instance1 ( wa, wb, wc );
<br>

This instantiates a module of type mod_a and gives it an instance name of "instance1", then connects signal wa (outside the new module) to the first port (in1) of the new module, wb to the second port (in2), and wc to the third port (out). One drawback of this syntax is that if the module's port list changes, all instantiations of the module will also need to be found and changed to match the new module.
<br>

By name
Connecting signals to a module's ports by name allows wires to remain correctly connected even if the port list changes. This syntax is more verbose, however.
<br>

mod_a instance2 ( .out(wc), .in1(wa), .in2(wb) );
<br>

The above line instantiates a module of type mod_a named "instance2", then connects signal wa (outside the module) to the port named in1, wb to the port named in2, and wc to the port named out. Notice how the ordering of ports is irrelevant here because the connection will be made to the correct name, regardless of its position in the sub-module's port list. Also notice the period immediately preceding the port name in this syntax.
<br>
</details>

## DAY 15

<details>
<summary>Problem 19</summary>
<br>
This problem is similar to the previous one (module). You are given a module named mod_a that has 2 outputs and 4 inputs, in that order. You must connect the 6 ports by position to your top-level module's ports out1, out2, a, b, c, and d, in that order.

<br>

You are given the following module:
<br>

module mod_a ( output, output, input, input, input, input );
<br>
</details>

<details>
<summary>Problem 20</summary>
<br>
This problem is similar to module. You are given a module named mod_a that has 2 outputs and 4 inputs, in some order. You must connect the 6 ports by name to your top-level module's ports:

<br>
Port      |  in mod_a	|   Port in top_module<br>
output    | out1	    |   out1<br>
output    | out2	    |   out2<br>
input     | in1	        |   a<br>
input     | in2	        |   b<br>
input     | in3	        |   c<br>
input     | in4	        |   d<br>

<br>

You are given the following module:

module mod_a ( output out1, output out2, input in1, input in2, input in3, input in4);
<br>
</details>

## DAY 16

<details>
<summary>Problem 21</summary>
<br>
You are given a module my_dff with two inputs and one output (that implements a D flip-flop). Instantiate three of them, then chain them together to make a shift register of length 3. The clk port needs to be connected to all instances.

<br>

The module provided to you is: module my_dff ( input clk, input d, output q );

<br>

Note that to make the internal connections, you will need to declare some wires. Be careful about naming your wires and module instances: the names must be unique.
<br>
</details>

## DAY 17

<details>
<summary>Problem 22</summary>
<br>
This exercise is an extension of module_shift. Instead of module ports being only single pins, we now have modules with vectors as ports, to which you will attach wire vectors instead of plain wires. Like everywhere else in Verilog, the vector length of the port does not have to match the wire connecting to it, but this will cause zero-padding or trucation of the vector. This exercise does not use connections with mismatched vector lengths.

<br>

You are given a module my_dff8 with two inputs and one output (that implements a set of 8 D flip-flops). Instantiate three of them, then chain them together to make a 8-bit wide shift register of length 3. In addition, create a 4-to-1 multiplexer (not provided) that chooses what to output depending on sel[1:0]: The value at the input d, after the first, after the second, or after the third D flip-flop. (Essentially, sel selects how many cycles to delay the input, from zero to three clock cycles.)

<br>

The module provided to you is: module my_dff8 ( input clk, input [7:0] d, output [7:0] q );

<br>

The multiplexer is not provided. One possible way to write one is inside an always block with a case statement inside. (See also: mux9to1v)
<br>
</details>

## Acknowledgements

 - [HDLBits - Verilog Practice](https://hdlbits.01xz.net/wiki/Main_Page)