section .text
global _ft_strcmp
_ft_strcmp :
xor rax,rax
loop:
			mov bl, rsi[rax]
			mov cl, rdi[rax]
			cmp cl,bl
			jne check			;jump if not equal to check
			je  check2
			
check : 
			sub cl,0
			sub bl,0
			sub cl,bl
			movsx rax, cl
			;mov al, cl
			ret
check2 :
			cmp rdi[rax + 1],byte 0
			je second
			inc rax				;increment rax
			jmp loop
second : 
			cmp rsi[rax + 1],byte 0
			je return
			jmp loop

return :	
			mov rax,0
			ret
