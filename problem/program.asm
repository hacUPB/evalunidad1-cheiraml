// Cheira Marulanda López
// 000283140
// cheira.marulanda@upb.edu.co
(INICIO)
            @KBD
            D=M
            @84
            D=D-A
            @VERTICAL
            D;JEQ

            @KBD
            D=M
            @67
            D=D-A
            @BORRAR
            D;JEQ

            @INICIO
            0;JMP
(VERTICAL)
            @16400
            D=A
            @coordenada
            M=D
            @256
            D=A
            @contador
            M=D
            @256
            D=A
            @punto
            M=D
            @32
            D=A
            @salto
            M=D
            @booleano
            M=0
            @RECTA
            0;JMP
(HORIZONTAL)
            @20480
            D=A
            @coordenada
            M=D
            @32
            D=A
            @contador
            M=D
            @punto
            M=-1
            @1
            D=A
            @salto
            M=D
            @booleano
            M=1
            @RECTA
            0;JMP
(BORRAR)
            @16384
            D=A
            @coordenada
            M=D
            @8192
            D=A
            @contador
            M=D
            @1
            D=A
            @punto
            M=0
            @salto
            M=D
            @RECTA
            0;JMP
(RECTA)
            @coordenada
            D=M
            @saltoenpantalla
            M=D
(PINTAR)
            @contador
            D=M

            @FIN
            D;JEQ

            @punto
            D=M
            @saltoenpantalla
            A=M
            M=D

            @contador
            M=M-1

            @salto
            D=M

            @saltoenpantalla
            M=M+D
            
            @PINTAR
            0;JMP
(FIN)
            @booleano
            D=M
            @HORIZONTAL
            D;JEQ
            
            @INICIO
            0;JMP

