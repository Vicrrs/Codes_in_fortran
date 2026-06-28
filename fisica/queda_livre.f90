program queda_livre
        implicit none

        real :: h, g, t, v

        g = 9.8

        print *, "Digite a aulta em metros:"
        read *, h

        if (h < 0.0) then
                print *, "Erro: a altura nao pode ser negativa."
        else
                t = sqrt(2.0 * h / g)
                v = g * t

                print *, "Tempo de queda:", t, "s"
                print *, "Velocidade final:", v, "m/s"
        end if
end program queda_livre

