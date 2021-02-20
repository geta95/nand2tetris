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
(BLACK)   // if press any button on keyboard
  @i
  M=1     // i = 1
  
  @i
  D=M     // D = i
  
  @8196
  D=D-A   // D = i - 8196
  
  @END
  D;JGT   // if D = i - 8196 jmp BLACK
  
  @SCREEN
  M=-1
  
  @i
  D=M+1
  
  @SCREEN
  A=A+D
  M=-1
  
  @BLACK
  0;JMP
  
(END)
  @END
  0;JMP
