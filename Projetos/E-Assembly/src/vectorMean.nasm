; ------------------------------------
; Calcule a média dos valores de um vetor
; que possui inicio em RAM[5] e tamanho
; defindo em RAM[4],
;
; 1. Salve a soma em RAM[1]
; 2. Salve a média em RAM[0]
; 
; ------------------------------------
; antes       | depois
;             |
; RAM[0]:     | RAM[0]:  2  : média 
; RAM[1]:     | RAM[1]:  8  : soma
; RAM[2]:     | RAM[2]:  
; RAM[3]:     | RAM[3]:  
; RAM[4]:  4  | RAM[4]:  4 
; RAM[5]:  1  | RAM[5]:  1 - 
; RAM[6]:  2  | RAM[6]:  2 | vetor
; RAM[7]:  1  | RAM[7]:  1 |
; RAM[8]:  4  | RAM[8]:  4 -
; ------------------------------------

leaw $5, %A
movw %A, %D
leaw $2, %A
movw %D, (%A)
while:
leaw $2, %A
movw (%A), %D
movw %D, %A
movw (%A), %D
leaw $0, %A
addw %D, (%A), %D
movw %D, (%A)
leaw $2, %A
movw (%A), %D
incw %D
movw %D, (%A)
leaw $3, %A
movw (%A), %D
incw %D
movw %D, (%A)
leaw $4, %A
subw (%A), %D, %D
leaw $while, %A
jg %D
nop
;fiz a soma na ram[0], tenho que mudar para ram[1]
leaw $0, %A
movw (%A), %D
leaw $1, %A
movw %D, (%A)
; soma no [1]
leaw $0, %A
movw %A, (%A)
leaw $1, %A
movw (%A), %D
leaw $2, %A
movw %D, (%A)
; Copiado a ram[1] para ram[2]

; metodo de div divide ram0 por ram1 e guarda em ram2
; nosso caso, divide ram1 por ram4 e guarda em ram0
loop:
leaw $1, %A
movw (%A), %D
leaw $3, %A
movw %D, (%A)
leaw $4, %A
subw %D, (%A), %A
movw %A, %D
leaw $1, %A
movw %D, (%A)
leaw $0,  %A
movw (%A), %D
incw %D
movw %D, (%A)
leaw $1, %A
movw (%A), %D
leaw $loop, %A
jg %D
nop

; mover ram[2] para ram[1]
leaw $2, %A
movw (%A), %D
leaw $1, %A
movw %D, (%A)


