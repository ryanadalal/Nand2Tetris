// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

//// Replace this comment with your code.
(LOOP)
//check key pressed
@24576
D=M
@CLEAR
D;JEQ
@set
M=-1
@FILL
0;JMP
(CLEAR)
@set
M=0
(FILL)
@8192
D=A
@SCREEN
D=D+A
@memi
M=D
(FILLLOOP)
@set
D=M
@memi
A=M
M=D
@memi
M=M-1
D=M
@SCREEN
D=D-A
@LOOP
D;JLT
@FILLLOOP
0;JMP