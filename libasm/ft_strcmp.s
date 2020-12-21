section .text
global _ft_strcmp
_ft_strcmp :
xor rax,rax
loop:
			mov bl, rsi[rax]
			cmp rdi[rax],bl
			jne check			;jump if not equal to check
			je  check2
			
check : 
			sub rdi,'0'
			sub rsi,'0'
			sub rdi,rsi
			mov rax,rdi
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
