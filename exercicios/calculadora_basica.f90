program calculadora_basica
        implicit none

        real :: a, b

        print *, "Digite o primeiro número: "
        read *, a

        print *, "Digite o segundo número: "
        read *, b
        
        print *, "Soma: ", a + b
        print *, "Subtracao: ", a - b
        print *, "Multiplicacao: ", a * b
        print *, "Divisao: ", a / b
        print *, "Potencia a elevado a b: ", a ** b

end program calculadora_basica
