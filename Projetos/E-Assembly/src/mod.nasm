; Arquivo: Mod.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017
;
; Calcula o resto da divisão (modulus) entre RAM[0] por RAM[1]
; e armazena o resultado na RAM[2].
;
; 4  % 3 = 1
; 10 % 7 = 3


leaw $1, %A
movw (%A), %D 
; VALOR DA RAM[1] FOI PRO D 

while:

leaw $5, %A  
movw %D, (%A) 
; MOVEU VALOR DO D PARA RAM[5]

leaw $1, %A
movw (%A), %D 
; MOVEU VALOR DA RAM[1] PRO D

leaw $0, %A
subw (%A), %D, %D 	
; D = ram[0] - D

leaw $0, %A
movw %D, (%A) 
; MOVE VALOR DE D PARA RAM[0]


leaw $end, %A 
; MOVE end PARA A
jl %D 
; SE D FOR IGUAL A ZERO, A EXECUÇÃO VAI PRO END
nop

leaw $while, %A 
; MOVE while PRO A
jmp 
; SE N ATENDER AS PRIORIDADES ACIMA, VOLTA PRO WHILE
nop

end:
leaw $5, %A 
movw (%A), %D  
leaw $2, %A
movw %D, (%A) 
; MOVE RAM[5] PARA RAM[2]


