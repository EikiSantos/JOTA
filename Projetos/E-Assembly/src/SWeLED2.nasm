; Arquivo: SWeLED2.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
;
; Faça os LEDs exibirem 
; LED = SW[8] !SW[7] OFF ON ON RAM[5][3] ON SW[0] OFF
;
;                                ^            ^
;                                | TRUQUE!    | TRUQUE!

; Arquivo: SWeLED2.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
;
; Faça os LEDs exibirem 
; LED = SW[8] !SW[7] OFF ON ON RAM[5][3] ON SW[0] OFF
;
;                                ^            ^
;                                | TRUQUE!    | TRUQUE!

; SW011R1S0

; SSSSSSSSS
; and
; 000000001
; ---------
; 00000000S
; add
; 00000000S
; ---------
; 0000000S0 -> Guardar em $variavel

; SSSSSSSSS
; and
; 100000000
; ---------
; S00000000
; or
; 0000000S0 -> $variavel 
; ---------
; S000000S0 -> Guardar em $variavel

; SSSSSSSSS
; not
; ---------
; WWWWWWWWW
; and
; 010000000
; ---------
; 0W0000000
; or
; S000000S0 -> $variavel
; ---------
; SW00000S0 -> Guardar em $variavel

; RRRRRRRRR -> RAM[5]
; and
; 000001000
; ---------
; 00000R000
; or
; SW00000S0 -> $variavel
; ---------
; SW000R0S0 -> Guardar em $variavel

; SW000R0S0
; or
; 000110100
; SW011R0S0


leaw $21185, %A
movw (%A), %D 
leaw $1, %A
andw %A, %D, %D
movw %D, (%A)
addw %D, (%A), %D
leaw $variavel, %A
movw %D, (%A)

leaw $21185, %A
movw (%A), %D
leaw $256, %A
andw %D, %A, %D
leaw $variavel, %A
orw %D, (%A), %D
movw %D, (%A)

leaw $21185, %A
movw (%A), %D
notw %D
leaw $128, %A
andw %A, %D, %D
leaw %variavel, %A
orw (%A), %D, %D
movw %D, (%A)

leaw $5, %A
movw (%A), %D
leaw $8, %A
andw %A, %D, %D
leaw $variavel, %A
orw (%A), %D, %D
movw %D, (%A)

leaw $52, %A
orw %D, %A, %D
orw %A, %D, %D
leaw $21184, %A
movw %D, (%A)
