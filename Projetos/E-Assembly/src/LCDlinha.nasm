; Arquivo: LCDQuadrado.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Desenhe uma linha no LCD


        leaw $1, %A
        movw %A, %D
        leaw $16801, %A
        movw %D, (%A)
        
        leaw $49152, %A
        movw %A, %D
        leaw $16802, %A
        movw %D, (%A)
        
        leaw $3, %A
        movw %A, %D
        leaw $16821, %A
        movw %D, (%A)
        
        leaw $57344, %A
        movw %A, %D
        leaw $16822, %A
        movw %D, (%A)
        
        leaw $15, %A
        movw %A, %D
        leaw $16841, %A
        movw %D, (%A)
        
        leaw $57344, %A
        movw %A, %D
        leaw $16842, %A
        movw %D, (%A)
        
        leaw $31, %A
        movw %A, %D
        leaw $16861, %A
        movw %D, (%A)
        
        leaw $57344, %A
        movw %A, %D
        leaw $16862, %A
        movw %D, (%A)
        
        leaw $127, %A
        movw %A, %D
        leaw $16881, %A
        movw %D, (%A)
        
        leaw $49152, %A
        movw %A, %D
        leaw $16882, %A
        movw %D, (%A)
        
        leaw $255, %A
        movw %A, %D
        leaw $16901, %A
        movw %D, (%A)
        
        leaw $32768, %A
        movw %A, %D
        leaw $16902, %A
        movw %D, (%A)
        
        leaw $1022, %A
        movw %A, %D
        leaw $16921, %A
        movw %D, (%A)
        
        leaw $4092, %A
        movw %A, %D
        leaw $16941, %A
        movw %D, (%A)
        
        leaw $8176, %A
        movw %A, %D
        leaw $16961, %A
        movw %D, (%A)
        
        leaw $32736, %A
        movw %A, %D
        leaw $16981, %A
        movw %D, (%A)
        
        leaw $65408, %A
        movw %A, %D
        leaw $17001, %A
        movw %D, (%A)
        
        leaw $3, %A
        movw %A, %D
        leaw $17020, %A
        movw %D, (%A)
        
        leaw $65280, %A
        movw %A, %D
        leaw $17021, %A
        movw %D, (%A)
        
        leaw $7, %A
        movw %A, %D
        leaw $17040, %A
        movw %D, (%A)
        
        leaw $64512, %A
        movw %A, %D
        leaw $17041, %A
        movw %D, (%A)
        
        leaw $31, %A
        movw %A, %D
        leaw $17060, %A
        movw %D, (%A)
        
        leaw $63488, %A
        movw %A, %D
        leaw $17061, %A
        movw %D, (%A)
        
        leaw $63, %A
        movw %A, %D
        leaw $17080, %A
        movw %D, (%A)
        
        leaw $57344, %A
        movw %A, %D
        leaw $17081, %A
        movw %D, (%A)
        
        leaw $255, %A
        movw %A, %D
        leaw $17100, %A
        movw %D, (%A)
        
        leaw $49152, %A
        movw %A, %D
        leaw $17101, %A
        movw %D, (%A)
        
        leaw $511, %A
        movw %A, %D
        leaw $17120, %A
        movw %D, (%A)
        
        leaw $2046, %A
        movw %A, %D
        leaw $17140, %A
        movw %D, (%A)
        
        leaw $4088, %A
        movw %A, %D
        leaw $17160, %A
        movw %D, (%A)
        
        leaw $16368, %A
        movw %A, %D
        leaw $17180, %A
        movw %D, (%A)
        
        leaw $32704, %A
        movw %A, %D
        leaw $17200, %A
        movw %D, (%A)
        
        leaw $1, %A
        movw %A, %D
        leaw $17219, %A
        movw %D, (%A)
        
        leaw $65408, %A
        movw %A, %D
        leaw $17220, %A
        movw %D, (%A)
        
        leaw $3, %A
        movw %A, %D
        leaw $17239, %A
        movw %D, (%A)
        
        leaw $65024, %A
        movw %A, %D
        leaw $17240, %A
        movw %D, (%A)
        
        leaw $15, %A
        movw %A, %D
        leaw $17259, %A
        movw %D, (%A)
        
        leaw $64512, %A
        movw %A, %D
        leaw $17260, %A
        movw %D, (%A)
        
        leaw $31, %A
        movw %A, %D
        leaw $17279, %A
        movw %D, (%A)
        
        leaw $61440, %A
        movw %A, %D
        leaw $17280, %A
        movw %D, (%A)
        
        leaw $127, %A
        movw %A, %D
        leaw $17299, %A
        movw %D, (%A)
        
        leaw $57344, %A
        movw %A, %D
        leaw $17300, %A
        movw %D, (%A)
        
        leaw $255, %A
        movw %A, %D
        leaw $17319, %A
        movw %D, (%A)
        
        leaw $32768, %A
        movw %A, %D
        leaw $17320, %A
        movw %D, (%A)
        
        leaw $1022, %A
        movw %A, %D
        leaw $17339, %A
        movw %D, (%A)
        
        leaw $2044, %A
        movw %A, %D
        leaw $17359, %A
        movw %D, (%A)
        
        leaw $8176, %A
        movw %A, %D
        leaw $17379, %A
        movw %D, (%A)
        
        leaw $16352, %A
        movw %A, %D
        leaw $17399, %A
        movw %D, (%A)
        
        leaw $65408, %A
        movw %A, %D
        leaw $17419, %A
        movw %D, (%A)
        
        leaw $1, %A
        movw %A, %D
        leaw $17438, %A
        movw %D, (%A)
        
        leaw $65280, %A
        movw %A, %D
        leaw $17439, %A
        movw %D, (%A)
        
        leaw $7, %A
        movw %A, %D
        leaw $17458, %A
        movw %D, (%A)
        
        leaw $64512, %A
        movw %A, %D
        leaw $17459, %A
        movw %D, (%A)
        
        leaw $15, %A
        movw %A, %D
        leaw $17478, %A
        movw %D, (%A)
        
        leaw $63488, %A
        movw %A, %D
        leaw $17479, %A
        movw %D, (%A)
        
        leaw $63, %A
        movw %A, %D
        leaw $17498, %A
        movw %D, (%A)
        
        leaw $57344, %A
        movw %A, %D
        leaw $17499, %A
        movw %D, (%A)
        
        leaw $127, %A
        movw %A, %D
        leaw $17518, %A
        movw %D, (%A)
        
        leaw $49152, %A
        movw %A, %D
        leaw $17519, %A
        movw %D, (%A)
        
        leaw $511, %A
        movw %A, %D
        leaw $17538, %A
        movw %D, (%A)
        
        leaw $1022, %A
        movw %A, %D
        leaw $17558, %A
        movw %D, (%A)
        
        leaw $4088, %A
        movw %A, %D
        leaw $17578, %A
        movw %D, (%A)
        
        leaw $8176, %A
        movw %A, %D
        leaw $17598, %A
        movw %D, (%A)
        
        leaw $32704, %A
        movw %A, %D
        leaw $17618, %A
        movw %D, (%A)
        
        leaw $65408, %A
        movw %A, %D
        leaw $17638, %A
        movw %D, (%A)
        
        leaw $3, %A
        movw %A, %D
        leaw $17657, %A
        movw %D, (%A)
        
        leaw $65024, %A
        movw %A, %D
        leaw $17658, %A
        movw %D, (%A)
        
        leaw $7, %A
        movw %A, %D
        leaw $17677, %A
        movw %D, (%A)
        
        leaw $64512, %A
        movw %A, %D
        leaw $17678, %A
        movw %D, (%A)
        
        leaw $31, %A
        movw %A, %D
        leaw $17697, %A
        movw %D, (%A)
        
        leaw $61440, %A
        movw %A, %D
        leaw $17698, %A
        movw %D, (%A)
        
        leaw $63, %A
        movw %A, %D
        leaw $17717, %A
        movw %D, (%A)
        
        leaw $57344, %A
        movw %A, %D
        leaw $17718, %A
        movw %D, (%A)
        
        leaw $255, %A
        movw %A, %D
        leaw $17737, %A
        movw %D, (%A)
        
        leaw $32768, %A
        movw %A, %D
        leaw $17738, %A
        movw %D, (%A)
        
        leaw $511, %A
        movw %A, %D
        leaw $17757, %A
        movw %D, (%A)
        
        leaw $2044, %A
        movw %A, %D
        leaw $17777, %A
        movw %D, (%A)
        
        leaw $4088, %A
        movw %A, %D
        leaw $17797, %A
        movw %D, (%A)
        
        leaw $16352, %A
        movw %A, %D
        leaw $17817, %A
        movw %D, (%A)
        
        leaw $32704, %A
        movw %A, %D
        leaw $17837, %A
        movw %D, (%A)
        
        leaw $1, %A
        movw %A, %D
        leaw $17856, %A
        movw %D, (%A)
        
        leaw $65280, %A
        movw %A, %D
        leaw $17857, %A
        movw %D, (%A)
        
        leaw $3, %A
        movw %A, %D
        leaw $17876, %A
        movw %D, (%A)
        
        leaw $65024, %A
        movw %A, %D
        leaw $17877, %A
        movw %D, (%A)
        
        leaw $15, %A
        movw %A, %D
        leaw $17896, %A
        movw %D, (%A)
        
        leaw $63488, %A
        movw %A, %D
        leaw $17897, %A
        movw %D, (%A)
        
        leaw $31, %A
        movw %A, %D
        leaw $17916, %A
        movw %D, (%A)
        
        leaw $61440, %A
        movw %A, %D
        leaw $17917, %A
        movw %D, (%A)
        
        leaw $127, %A
        movw %A, %D
        leaw $17936, %A
        movw %D, (%A)
        
        leaw $49152, %A
        movw %A, %D
        leaw $17937, %A
        movw %D, (%A)
        
        leaw $255, %A
        movw %A, %D
        leaw $17956, %A
        movw %D, (%A)
        
        leaw $32768, %A
        movw %A, %D
        leaw $17957, %A
        movw %D, (%A)
        
        leaw $1022, %A
        movw %A, %D
        leaw $17976, %A
        movw %D, (%A)
        
        leaw $2044, %A
        movw %A, %D
        leaw $17996, %A
        movw %D, (%A)
        
        leaw $8176, %A
        movw %A, %D
        leaw $18016, %A
        movw %D, (%A)
        
        leaw $16352, %A
        movw %A, %D
        leaw $18036, %A
        movw %D, (%A)
        
        leaw $65408, %A
        movw %A, %D
        leaw $18056, %A
        movw %D, (%A)
        
        leaw $1, %A
        movw %A, %D
        leaw $18075, %A
        movw %D, (%A)
        
        leaw $65280, %A
        movw %A, %D
        leaw $18076, %A
        movw %D, (%A)
        
        leaw $7, %A
        movw %A, %D
        leaw $18095, %A
        movw %D, (%A)
        
        leaw $64512, %A
        movw %A, %D
        leaw $18096, %A
        movw %D, (%A)
        
        leaw $15, %A
        movw %A, %D
        leaw $18115, %A
        movw %D, (%A)
        
        leaw $63488, %A
        movw %A, %D
        leaw $18116, %A
        movw %D, (%A)
        
        leaw $63, %A
        movw %A, %D
        leaw $18135, %A
        movw %D, (%A)
        
        leaw $57344, %A
        movw %A, %D
        leaw $18136, %A
        movw %D, (%A)
        
        leaw $127, %A
        movw %A, %D
        leaw $18155, %A
        movw %D, (%A)
        
        leaw $49152, %A
        movw %A, %D
        leaw $18156, %A
        movw %D, (%A)
        
        leaw $511, %A
        movw %A, %D
        leaw $18175, %A
        movw %D, (%A)
        
        leaw $1022, %A
        movw %A, %D
        leaw $18195, %A
        movw %D, (%A)
        
        leaw $4088, %A
        movw %A, %D
        leaw $18215, %A
        movw %D, (%A)
        
        leaw $8176, %A
        movw %A, %D
        leaw $18235, %A
        movw %D, (%A)
        
        leaw $32704, %A
        movw %A, %D
        leaw $18255, %A
        movw %D, (%A)
        
        leaw $65408, %A
        movw %A, %D
        leaw $18275, %A
        movw %D, (%A)
        
        leaw $3, %A
        movw %A, %D
        leaw $18294, %A
        movw %D, (%A)
        
        leaw $65024, %A
        movw %A, %D
        leaw $18295, %A
        movw %D, (%A)
        
        leaw $7, %A
        movw %A, %D
        leaw $18314, %A
        movw %D, (%A)
        
        leaw $64512, %A
        movw %A, %D
        leaw $18315, %A
        movw %D, (%A)
        
        leaw $31, %A
        movw %A, %D
        leaw $18334, %A
        movw %D, (%A)
        
        leaw $61440, %A
        movw %A, %D
        leaw $18335, %A
        movw %D, (%A)
        
        leaw $63, %A
        movw %A, %D
        leaw $18354, %A
        movw %D, (%A)
        
        leaw $57344, %A
        movw %A, %D
        leaw $18355, %A
        movw %D, (%A)
        
        leaw $255, %A
        movw %A, %D
        leaw $18374, %A
        movw %D, (%A)
        
        leaw $32768, %A
        movw %A, %D
        leaw $18375, %A
        movw %D, (%A)
        
        leaw $511, %A
        movw %A, %D
        leaw $18394, %A
        movw %D, (%A)
        
        leaw $2044, %A
        movw %A, %D
        leaw $18414, %A
        movw %D, (%A)
        
        leaw $4088, %A
        movw %A, %D
        leaw $18434, %A
        movw %D, (%A)
        
        leaw $16352, %A
        movw %A, %D
        leaw $18454, %A
        movw %D, (%A)
        
        leaw $32704, %A
        movw %A, %D
        leaw $18474, %A
        movw %D, (%A)
        
        leaw $1, %A
        movw %A, %D
        leaw $18493, %A
        movw %D, (%A)
        
        leaw $65280, %A
        movw %A, %D
        leaw $18494, %A
        movw %D, (%A)
        
        leaw $3, %A
        movw %A, %D
        leaw $18513, %A
        movw %D, (%A)
        
        leaw $65024, %A
        movw %A, %D
        leaw $18514, %A
        movw %D, (%A)
        
        leaw $15, %A
        movw %A, %D
        leaw $18533, %A
        movw %D, (%A)
        
        leaw $63488, %A
        movw %A, %D
        leaw $18534, %A
        movw %D, (%A)
        
        leaw $31, %A
        movw %A, %D
        leaw $18553, %A
        movw %D, (%A)
        
        leaw $61440, %A
        movw %A, %D
        leaw $18554, %A
        movw %D, (%A)
        
        leaw $127, %A
        movw %A, %D
        leaw $18573, %A
        movw %D, (%A)
        
        leaw $49152, %A
        movw %A, %D
        leaw $18574, %A
        movw %D, (%A)
        
        leaw $255, %A
        movw %A, %D
        leaw $18593, %A
        movw %D, (%A)
        
        leaw $32768, %A
        movw %A, %D
        leaw $18594, %A
        movw %D, (%A)
        
        leaw $1022, %A
        movw %A, %D
        leaw $18613, %A
        movw %D, (%A)
        
        leaw $4092, %A
        movw %A, %D
        leaw $18633, %A
        movw %D, (%A)
        
        leaw $8176, %A
        movw %A, %D
        leaw $18653, %A
        movw %D, (%A)
        
        leaw $32736, %A
        movw %A, %D
        leaw $18673, %A
        movw %D, (%A)
        
        leaw $65408, %A
        movw %A, %D
        leaw $18693, %A
        movw %D, (%A)
        
        leaw $3, %A
        movw %A, %D
        leaw $18712, %A
        movw %D, (%A)
        
        leaw $65280, %A
        movw %A, %D
        leaw $18713, %A
        movw %D, (%A)
        
        leaw $7, %A
        movw %A, %D
        leaw $18732, %A
        movw %D, (%A)
        
        leaw $64512, %A
        movw %A, %D
        leaw $18733, %A
        movw %D, (%A)
        
        leaw $31, %A
        movw %A, %D
        leaw $18752, %A
        movw %D, (%A)
        
        leaw $63488, %A
        movw %A, %D
        leaw $18753, %A
        movw %D, (%A)
        
        leaw $63, %A
        movw %A, %D
        leaw $18772, %A
        movw %D, (%A)
        
        leaw $57344, %A
        movw %A, %D
        leaw $18773, %A
        movw %D, (%A)
        
        leaw $255, %A
        movw %A, %D
        leaw $18792, %A
        movw %D, (%A)
        
        leaw $49152, %A
        movw %A, %D
        leaw $18793, %A
        movw %D, (%A)
        
        leaw $511, %A
        movw %A, %D
        leaw $18812, %A
        movw %D, (%A)
        
        leaw $2046, %A
        movw %A, %D
        leaw $18832, %A
        movw %D, (%A)
        
        leaw $4088, %A
        movw %A, %D
        leaw $18852, %A
        movw %D, (%A)
        
        leaw $16368, %A
        movw %A, %D
        leaw $18872, %A
        movw %D, (%A)
        
        leaw $32704, %A
        movw %A, %D
        leaw $18892, %A
        movw %D, (%A)
        
        leaw $1, %A
        movw %A, %D
        leaw $18911, %A
        movw %D, (%A)
        
        leaw $65408, %A
        movw %A, %D
        leaw $18912, %A
        movw %D, (%A)
        
        leaw $3, %A
        movw %A, %D
        leaw $18931, %A
        movw %D, (%A)
        
        leaw $65024, %A
        movw %A, %D
        leaw $18932, %A
        movw %D, (%A)
        
        leaw $15, %A
        movw %A, %D
        leaw $18951, %A
        movw %D, (%A)
        
        leaw $64512, %A
        movw %A, %D
        leaw $18952, %A
        movw %D, (%A)
        
        leaw $31, %A
        movw %A, %D
        leaw $18971, %A
        movw %D, (%A)
        
        leaw $61440, %A
        movw %A, %D
        leaw $18972, %A
        movw %D, (%A)
        
        leaw $127, %A
        movw %A, %D
        leaw $18991, %A
        movw %D, (%A)
        
        leaw $57344, %A
        movw %A, %D
        leaw $18992, %A
        movw %D, (%A)
        
        leaw $255, %A
        movw %A, %D
        leaw $19011, %A
        movw %D, (%A)
        
        leaw $32768, %A
        movw %A, %D
        leaw $19012, %A
        movw %D, (%A)
        
        leaw $1022, %A
        movw %A, %D
        leaw $19031, %A
        movw %D, (%A)
        
        leaw $2044, %A
        movw %A, %D
        leaw $19051, %A
        movw %D, (%A)
        
        leaw $8176, %A
        movw %A, %D
        leaw $19071, %A
        movw %D, (%A)
        
        leaw $16352, %A
        movw %A, %D
        leaw $19091, %A
        movw %D, (%A)
        
        leaw $65408, %A
        movw %A, %D
        leaw $19111, %A
        movw %D, (%A)
        
        leaw $1, %A
        movw %A, %D
        leaw $19130, %A
        movw %D, (%A)
        
        leaw $65280, %A
        movw %A, %D
        leaw $19131, %A
        movw %D, (%A)
        
        leaw $7, %A
        movw %A, %D
        leaw $19150, %A
        movw %D, (%A)
        
        leaw $64512, %A
        movw %A, %D
        leaw $19151, %A
        movw %D, (%A)
        
        leaw $15, %A
        movw %A, %D
        leaw $19170, %A
        movw %D, (%A)
        
        leaw $63488, %A
        movw %A, %D
        leaw $19171, %A
        movw %D, (%A)
        
        leaw $63, %A
        movw %A, %D
        leaw $19190, %A
        movw %D, (%A)
        
        leaw $57344, %A
        movw %A, %D
        leaw $19191, %A
        movw %D, (%A)
        
        leaw $127, %A
        movw %A, %D
        leaw $19210, %A
        movw %D, (%A)
        
        leaw $49152, %A
        movw %A, %D
        leaw $19211, %A
        movw %D, (%A)
        
        leaw $511, %A
        movw %A, %D
        leaw $19230, %A
        movw %D, (%A)
        
        leaw $1022, %A
        movw %A, %D
        leaw $19250, %A
        movw %D, (%A)
        
        leaw $4088, %A
        movw %A, %D
        leaw $19270, %A
        movw %D, (%A)
        
        leaw $8176, %A
        movw %A, %D
        leaw $19290, %A
        movw %D, (%A)
        
        leaw $32704, %A
        movw %A, %D
        leaw $19310, %A
        movw %D, (%A)
        
        leaw $65408, %A
        movw %A, %D
        leaw $19330, %A
        movw %D, (%A)
        
        leaw $3, %A
        movw %A, %D
        leaw $19349, %A
        movw %D, (%A)
        
        leaw $65024, %A
        movw %A, %D
        leaw $19350, %A
        movw %D, (%A)
        
        leaw $7, %A
        movw %A, %D
        leaw $19369, %A
        movw %D, (%A)
        
        leaw $64512, %A
        movw %A, %D
        leaw $19370, %A
        movw %D, (%A)
        
        leaw $31, %A
        movw %A, %D
        leaw $19389, %A
        movw %D, (%A)
        
        leaw $61440, %A
        movw %A, %D
        leaw $19390, %A
        movw %D, (%A)
        
        leaw $63, %A
        movw %A, %D
        leaw $19409, %A
        movw %D, (%A)
        
        leaw $57344, %A
        movw %A, %D
        leaw $19410, %A
        movw %D, (%A)
        
        leaw $255, %A
        movw %A, %D
        leaw $19429, %A
        movw %D, (%A)
        
        leaw $32768, %A
        movw %A, %D
        leaw $19430, %A
        movw %D, (%A)
        
        leaw $511, %A
        movw %A, %D
        leaw $19449, %A
        movw %D, (%A)
        
        leaw $2044, %A
        movw %A, %D
        leaw $19469, %A
        movw %D, (%A)
        
        leaw $4088, %A
        movw %A, %D
        leaw $19489, %A
        movw %D, (%A)
        
        leaw $16352, %A
        movw %A, %D
        leaw $19509, %A
        movw %D, (%A)
        
        leaw $32704, %A
        movw %A, %D
        leaw $19529, %A
        movw %D, (%A)
        
        leaw $1, %A
        movw %A, %D
        leaw $19548, %A
        movw %D, (%A)
        
        leaw $65280, %A
        movw %A, %D
        leaw $19549, %A
        movw %D, (%A)
        
        leaw $3, %A
        movw %A, %D
        leaw $19568, %A
        movw %D, (%A)
        
        leaw $65024, %A
        movw %A, %D
        leaw $19569, %A
        movw %D, (%A)
        
        leaw $15, %A
        movw %A, %D
        leaw $19588, %A
        movw %D, (%A)
        
        leaw $63488, %A
        movw %A, %D
        leaw $19589, %A
        movw %D, (%A)
        
        leaw $31, %A
        movw %A, %D
        leaw $19608, %A
        movw %D, (%A)
        
        leaw $61440, %A
        movw %A, %D
        leaw $19609, %A
        movw %D, (%A)
        
        leaw $127, %A
        movw %A, %D
        leaw $19628, %A
        movw %D, (%A)
        
        leaw $49152, %A
        movw %A, %D
        leaw $19629, %A
        movw %D, (%A)
        
        leaw $255, %A
        movw %A, %D
        leaw $19648, %A
        movw %D, (%A)
        
        leaw $32768, %A
        movw %A, %D
        leaw $19649, %A
        movw %D, (%A)
        
        leaw $1022, %A
        movw %A, %D
        leaw $19668, %A
        movw %D, (%A)
        
        leaw $2044, %A
        movw %A, %D
        leaw $19688, %A
        movw %D, (%A)
        
        leaw $8176, %A
        movw %A, %D
        leaw $19708, %A
        movw %D, (%A)
        
        leaw $16352, %A
        movw %A, %D
        leaw $19728, %A
        movw %D, (%A)
        
        leaw $65408, %A
        movw %A, %D
        leaw $19748, %A
        movw %D, (%A)
        
        leaw $1, %A
        movw %A, %D
        leaw $19767, %A
        movw %D, (%A)
        
        leaw $65280, %A
        movw %A, %D
        leaw $19768, %A
        movw %D, (%A)
        
        leaw $7, %A
        movw %A, %D
        leaw $19787, %A
        movw %D, (%A)
        
        leaw $64512, %A
        movw %A, %D
        leaw $19788, %A
        movw %D, (%A)
        
        leaw $15, %A
        movw %A, %D
        leaw $19807, %A
        movw %D, (%A)
        
        leaw $63488, %A
        movw %A, %D
        leaw $19808, %A
        movw %D, (%A)
        
        leaw $63, %A
        movw %A, %D
        leaw $19827, %A
        movw %D, (%A)
        
        leaw $57344, %A
        movw %A, %D
        leaw $19828, %A
        movw %D, (%A)
        
        leaw $127, %A
        movw %A, %D
        leaw $19847, %A
        movw %D, (%A)
        
        leaw $49152, %A
        movw %A, %D
        leaw $19848, %A
        movw %D, (%A)
        
        leaw $511, %A
        movw %A, %D
        leaw $19867, %A
        movw %D, (%A)
        
        leaw $1022, %A
        movw %A, %D
        leaw $19887, %A
        movw %D, (%A)
        
        leaw $4088, %A
        movw %A, %D
        leaw $19907, %A
        movw %D, (%A)
        
        leaw $8176, %A
        movw %A, %D
        leaw $19927, %A
        movw %D, (%A)
        
        leaw $32704, %A
        movw %A, %D
        leaw $19947, %A
        movw %D, (%A)
        
        leaw $65408, %A
        movw %A, %D
        leaw $19967, %A
        movw %D, (%A)
        
        leaw $3, %A
        movw %A, %D
        leaw $19986, %A
        movw %D, (%A)
        
        leaw $65024, %A
        movw %A, %D
        leaw $19987, %A
        movw %D, (%A)
        
        leaw $7, %A
        movw %A, %D
        leaw $20006, %A
        movw %D, (%A)
        
        leaw $64512, %A
        movw %A, %D
        leaw $20007, %A
        movw %D, (%A)
        
        leaw $31, %A
        movw %A, %D
        leaw $20026, %A
        movw %D, (%A)
        
        leaw $61440, %A
        movw %A, %D
        leaw $20027, %A
        movw %D, (%A)
        
        leaw $63, %A
        movw %A, %D
        leaw $20046, %A
        movw %D, (%A)
        
        leaw $57344, %A
        movw %A, %D
        leaw $20047, %A
        movw %D, (%A)
        
        leaw $255, %A
        movw %A, %D
        leaw $20066, %A
        movw %D, (%A)
        
        leaw $32768, %A
        movw %A, %D
        leaw $20067, %A
        movw %D, (%A)
        
        leaw $511, %A
        movw %A, %D
        leaw $20086, %A
        movw %D, (%A)
        
        leaw $2044, %A
        movw %A, %D
        leaw $20106, %A
        movw %D, (%A)
        
        leaw $4088, %A
        movw %A, %D
        leaw $20126, %A
        movw %D, (%A)
        
        leaw $16352, %A
        movw %A, %D
        leaw $20146, %A
        movw %D, (%A)
        
        leaw $32704, %A
        movw %A, %D
        leaw $20166, %A
        movw %D, (%A)
        
        leaw $1, %A
        movw %A, %D
        leaw $20185, %A
        movw %D, (%A)
        
        leaw $65280, %A
        movw %A, %D
        leaw $20186, %A
        movw %D, (%A)
        
        leaw $3, %A
        movw %A, %D
        leaw $20205, %A
        movw %D, (%A)
        
        leaw $65024, %A
        movw %A, %D
        leaw $20206, %A
        movw %D, (%A)
        
        leaw $3, %A
        movw %A, %D
        leaw $20225, %A
        movw %D, (%A)
        
        leaw $63488, %A
        movw %A, %D
        leaw $20226, %A
        movw %D, (%A)
        
        leaw $3, %A
        movw %A, %D
        leaw $20245, %A
        movw %D, (%A)
        
        leaw $61440, %A
        movw %A, %D
        leaw $20246, %A
        movw %D, (%A)
        
        leaw $1, %A
        movw %A, %D
        leaw $20265, %A
        movw %D, (%A)
        
        leaw $49152, %A
        movw %A, %D
        leaw $20266, %A
        movw %D, (%A)
        