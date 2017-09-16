	;data section where u declare all the stuff
	;u want to use, we basically need a 
	;message string 

	SECTION .data
		message db	"Hello Low Level World!", 10 ;line feed it can bee also 0xA or 0ah
	
	;next section is section filled with our code!
	SECTION .text
	global _start		 ;we declare our start function, like in c or other programming languages 
					     ;we use entry point as main(), asm start program from start()

	_start:
		mov rax,	1	 ;syscall 1 is write, you can google linux syscall tables
		mov rdi,	1	 ;stdout file handle 
		mov rsi,	message 
		mov rdx, 	23	 ;number of bytes needed to write our message. 23 because of newline
						 ;if we will increase that, we will see junk from our memory :) 
		syscall

						;message got written! now it's time to exit or we will get Segmentation fault!

		xor rax,	rax ;we zero our rax register then we assign exit syscall, 
		mov rax,	60	;because why leave junk in here?
						;Programmers few years ago were fighting for every byte :)   
		xor	rdi,	rdi	;we xor register by register to get 0 - our exit code
		syscall			;same as int 0x80

		
	
