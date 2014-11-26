; Minimal program for 64-bit Linux.
; http://cs.lmu.edu/~ray/notes/nasmexamples/

        global  _start

        section .text
_start:
        ; write(stdout, message, length)
        mov     rax, 1                  ; system call 1 is write
        mov     rdi, 1                  ; file handle 1 is stdout
        mov     rsi, message            ; address of string to output
        mov     rdx, length             ; number of bytes
        syscall                         ; invoke operating system to do the write

        ; exit(return_code)
        mov     eax, 60                 ; system call 60 is exit
        xor     rdi, rdi                ; exit code 0 (success)
        syscall                         ; invoke operating system to exit
message:
        db      "This is a general-purpose data-only container for Docker.", 0x0A
	db	"Create your container with the volume location you need: ", 0x0A
	db	0x09, "'docker run -d --name mysql-data -v /var/lib/mysql data'", 0x0A
	db	"Use your data-only container with your program container: ", 0x0A
	db	0x09, "'docker run -d --volumes-from mysql-data mysql'", 0x0A
length: equ	$-message		; message length calculation
