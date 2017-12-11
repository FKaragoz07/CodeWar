# Program: Greeting.asm
# Author: FKaragoz07
# Description: First Program "Greeting"

.data				                    # Following data items are stored in data segment 
  
    .eqv    SYS_PRINT_TEXT   4  #Print String Service
    .eqv    SYS_EXIT        10  #terminate
    
    greeting: .asciiz "Wellcome to First Assembly Program"            
.text			                      #Instructions
		
  la $a0, greeting 	            #Load address of greeting messege into $a0
	li $v0, SYS_PRINT_TEXT	      #Service for Print String
	syscall			                  #SYSCALL instruction to retrieve return value
#  Done, terminate program.	
	li	$v0, SYS_EXIT	            #Service for terminate
	syscall 
