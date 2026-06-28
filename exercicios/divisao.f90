program divisao_segura
        implicit none

        real :: a, b, resultado

        print *, "Digite o numerador: "
        read *, a

        print *, "Digite o denominador: "
        read *, b

        if (b /= 0.0) then
                resultado =  a / b
                print *, "Resultado: ", resultado
        else
                print *, "Erro, nao existe divisao por zero"
        end if
end program divisao_segura
