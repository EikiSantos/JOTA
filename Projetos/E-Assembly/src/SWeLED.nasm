; Arquivo: SWeLED.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Faça os LEDs exibirem 
; LED = ON ON ON ON ON !SW3 !SW2 !SW1 0
; Mesma questão da prova
; 0b000000011111SSS0 => Mascara 510
; SW == 21185
; LED == 21184

; Lê SW
leaw $21185, %A
movw (%A), %D

; Aplica mascara and
leaw $510, %A
andw %A, %D, %D

; Aplica mascara or
leaw $496, %A
orw %A, %D, %D

; Coloca o resultado nos LEDs
leaw $21184, %A
movw %D, (%A)



