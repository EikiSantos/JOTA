leaw $0, %A
movw (%A), %D
leaw $2, %A
movw %D, (%A)
leaw $1, %A
subw (%A), %D, %D
leaw $END, %A
jl %D
nop
leaw $1, %A
movw (%A), %D
leaw $2, %A
movw %D, (%A)
leaw $END, %A
END:
