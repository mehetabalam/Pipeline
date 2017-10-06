***Remarks***
-	little-endian as "downto" is used instead of "to"

***Instruction format***
Fixed-width instructions are common for RISC processors because they make it
easy to fetch instructions without having to decode. These instructions must
be stored at word-aligned addresses (i.e., addresses divisible by 4).

MIPS simplifies the  processor design by eliminating hardware interlocks in
the five pipeline stages.

Followings are the instructions types that are similar to that of MIPS ISA
with a little difference in the bit positions in the instructions.

R-type	:Register type
--------------------------------------------------------------------
B31-26	|	B25-21	|	B20-16	|	B15-11	|	B10-6	|	B5-0	
--------------------------------------------------------------------
opcode	|	rs		|	rt		|	rd		|	shift	|	funct	
--------------------------------------------------------------------

I-type	:Immediate type
--------------------------------------------------------------------
B31-26	|	B25-21	|	B20-16	|	B15-0	
--------------------------------------------------------------------
opcode	|	rs		|	rt		|	imm/offset
--------------------------------------------------------------------

J-type	:Jump type
--------------------------------------------------------------------
B31-26	|	B25-0	
--------------------------------------------------------------------
opcode	|	target
--------------------------------------------------------------------

***ISA***
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Class			Type	Name	Opcode	Syntax				Semantics							Addressig Mode		Remarks
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Data transfer	I-type	ld		110000	lw rt, offset(rs) 	REG[rt] <- MEM[REG[rs] + offset]	Displacement		32-bit load from memory (16-bit signed offset)
Data transfer	I-type	sd		110001	sw rt, offset(rs)	MEM[REG[rs] + offset] <- REG[rt]	Displacement		32-bit store to memory (16-bit signed offset)

Arithmetic				nop		000000	nop																			No operation takes place
Arithmetic		R-type	add		000001	add rd, rs, rt		REG[rd] <- REG[rs] + REG[rt]		Register direct		32-bit add (no overflow detection)
Arithmetic		I-type	addi	000010	addi rt, rs, imm	REG[rt] <- REG[rs] + #imm			Register immediate	16-bit immediate add to a 32-bit register (no overflow detection)			
Arithmetic		R-type	mul		000011	mul rd, rs, rt		REG[rd] <- REG[rs] + REG[rt]		Register direct		16-bit numbers' multiplication

Control			I-type	beq		010010	beq rs, rt, offset	if condition is true, then			Register immediate	Branch if equal to zero (16-bit signed offset)
																PC <- PC + (offset<<2)
Control			R-type	slt		010100	slt rd, rs, rt		if REG[rs] < REG[rt]				Register direct		set less than
																then REG[rd] <- 1

***Memory***
No strutural hazard
Instruction Memory: 	1024 * 4 Bytes
Data Memory: 			1024 * 4 Bytes

***Registers***
-	32 32-bit GPRs r0,r1,....,r31
-	r0 always contains 0 and any write to r0 will not make any effect on r0.
 
***Branch Prediction***