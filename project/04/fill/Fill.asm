// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
  @i
  M=1

(BLACK)   // if press any button on keyboard
  @i
  D=M
  
  @8196
  D=D-A
  
  @END    // if D = i - 8196 > 0 jmp END
  D;JGT
  
  @SCREEN
  M=-1
  
  @i
  D=M
  
  @SCREEN
  A=A+D
  M=-1
  
  @i
  M=M+1
  
  @BLACK
  0;JMP
  
(END)
  @END
  0;JMP
