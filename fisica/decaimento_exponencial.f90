program decaimento_exponencial
        implicit none

        real :: n0, lambda, t, n

        print *, "Digite N0:"
        read *, n0

        print *, "Digite lambda:"
        read *, lambda

        print *, "Digite o tempo t:"
        read *, t

        if (lambda < 0.0) then
                print *, "Erro: lambda deve ser positivo."
        else
                n = n0 * exp(-lambda * t)

                print *, "N(t) =", n
        end if
end program decaimento_exponencial
