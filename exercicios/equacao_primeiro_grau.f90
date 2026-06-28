program equacao_primeiro_grau
        implicit none

        real :: a, b, x

        print *, "Equacao do tipo ax + b = 0"

        print *, "Digite o valor de a:"
        read *, a

        print *, "Digite o valor de b:"
        read *, b

        if (a /= 0.0) then
                x = -b / a
                print *, "A solucao e x=", x
        else
                print *, "Nao e equacao do primeiro grau, pois a = 0."
        end if

end program equacao_primeiro_grau
