/**
 * Curso: Elementos de Sistemas
 * Arquivo: Code.java
 */

package assembler;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * Traduz mnemônicos da linguagem assembly para códigos binários da arquitetura Z0.
 */
public class Code {

    /**
     * Retorna o código binário do(s) registrador(es) que vão receber o valor da instrução.
     * @param  mnemnonic vetor de mnemônicos "instrução" a ser analisada.
     * @return Opcode (String de 4 bits) com código em linguagem de máquina para a instrução.
     */
    public static String dest(String[] mnemnonic) {
        if(mnemnonic[0]== "nop" || mnemnonic[0]== "jg"|| mnemnonic[0]== "je"|| mnemnonic[0]== "jge"|| mnemnonic[0]== "jl"|| mnemnonic[0]== "jne"|| mnemnonic[0]== "jle"|| mnemnonic[0]== "jmp"|| mnemnonic.length == 1){
            return "0000";
        }
        String a,d,ram;
        a = "0";
        d = "0";
        ram = "0";
        if(mnemnonic[0] == "subw" ||mnemnonic[0] == "addw"||mnemnonic[0] == "rsubw"){
            for (int i = 0; i<mnemnonic.length;i++) {
                String x = mnemnonic[i];
                if(i == 1 || i == 2){
                    continue;
                }
                if (x.equals("%A")) {
                    a = "1";
                }
                if (x.equals("%D")) {
                    d = "1";
                }
                if (x.equals("(%A)")) {
                    ram = "1";
                }

            }

        }
        else if(mnemnonic.length > 2) {
            System.out.println("LEN>2");
            for (String s : mnemnonic) {
                if (s == mnemnonic[1]) {
                    continue;
                }
                if (s == "%A") {
                    a = "1";
                }
                System.out.println(s);
                if (s.equals("%D")) {
                    System.out.println("AAAAAAAAAAAAA");
                    d = "1";
                }
                System.out.println(s);
                if (s.equals("(%A)")) {
                    ram = "1";
                }

            }
        }else{
            String s = mnemnonic[1];
            if (s == "%A") {
                a = "1";
            }
            if (s == "%D") {
                d = "1";
            }
            if (s == "(%A)") {
                ram = "1";
            }
        }
        return "0" + ram + d + a;



    }

    /**
     * Retorna o código binário do mnemônico para realizar uma operação de cálculo.
     * @param  mnemnonic vetor de mnemônicos "instrução" a ser analisada.
     * @return Opcode (String de 7 bits) com código em linguagem de máquina para a instrução.
     */
    public static String comp(String[] mnemnonic) {
        switch (mnemnonic[0]) {
            case "movw" :
                switch (mnemnonic[1]) {
                    case "$0" : return  "000101010";
                    case "$1" : return  "000111111";
                    case "%A"  : return "000110000";
                    case "%D"  : return "000001100";
                    case "(%A)": return "001110000";
                }
            case "addw" :
                switch (mnemnonic[1]) {
                    case "%A"  :
                    case "%D"  : return "000000010";
                    case "(%A)": return "001000010";
                    case "$1"  :
                        switch (mnemnonic[2]) {
                            case "%A"  : return "000110111";
                            case "%D"  : return "000011111";
                            case "(%A)": return "001110111";
                        }
                }
            case  "incw" :
                switch (mnemnonic[1]) {
                    case "%A"  : return "000110111";
                    case "%D"  : return "000011111";
                    case "(%A)": return "001110111";
                }

            case "subw" :
                switch (mnemnonic[1]) {
                    case "%D"  :
                        switch (mnemnonic[2]) {
                            case "%A"  : return "000010011";
                            case "(%A)": return "001010011";
                            case "$1"  : return "000001110";
                        }
                    case "%A"  :         return "000110010";
                    case "(%A)":         return "001110010";
                }

            case "rsubw":
                switch (mnemnonic[1]) {
                    case "%D":
                        switch (mnemnonic[2]) {
                            case "%A"  : return "000000111";
                            case "(%A)": return "001000111";
                        }
                }

            case "decw" :
                switch (mnemnonic[1]) {
                    case "%A"  : return "000110010";
                    case "%D"  : return "000001110";
                    case "(%A)": return "001110010";
                }

            case "notw"  :
                switch (mnemnonic[1]) {
                    case "%A"  : return "000110001";
                    case "%D"  : return "000001101";
                    case "(%A)": return "001110001";
                }

            case "negw"  :
                switch (mnemnonic[1]) {
                    case "%A"  : return "000110011";
                    case "%D"  : return "000001111";
                    case "(%A)": return "001110011";
                }

            case "andw"  :
                switch (mnemnonic[1]) {
                    case "%A"  : return          "000000000";
                    case "%D"  :
                        switch (mnemnonic[2]) {
                            case "%A"  : return  "000000000";
                            case "(%A)": return  "001000000";
                        }
                    case "(%A)": return          "001000000";
                }
            case "orw"   :
                switch (mnemnonic[1]) {
                    case "%A"  :         return  "000010101";
                    case "%D"  :
                        switch (mnemnonic[2]) {
                            case "%A"  : return  "000010101";
                            case "(%A)": return  "001010101";
                        }
                    case "(%A)":         return  "001010101";
                }
            default    :                 return  "000001100";
        }
    }

    /**
     * Retorna o código binário do mnemônico para realizar uma operação de jump (salto).
     * @param  mnemnonic vetor de mnemônicos "instrução" a ser analisada.
     * @return Opcode (String de 3 bits) com código em linguagem de máquina para a instrução.
     */
    public static String jump(String[] mnemnonic) {
        /* TODO: implementar */
        switch (mnemnonic[0]){
            case "jmp" : return "111";
            case "je" : return  "010";
            case "jne" : return "101";
            case "jg" : return  "001";
            case "jge" : return "011";
            case "jl" : return "100";
            case "jle" : return "110";
            default : return "000";
        }
    }

    /**
     * Retorna o código binário de um valor decimal armazenado numa String.
     * @param  symbol valor numérico decimal armazenado em uma String.
     * @return Valor em binário (String de 15 bits) representado com 0s e 1s.
     */
    public static String toBinary(String symbol) {
        /* TODO: implementar */
        if (Integer.parseInt(symbol) >65535){
            symbol = "65535";
        }
        String binaryString = Integer.toBinaryString(Integer.parseInt(symbol));
        while (binaryString.length()< 16){
            binaryString = '0'+binaryString;
        }
        return binaryString;
    }
}
