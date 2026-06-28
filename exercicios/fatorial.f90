program fatorial
        implicit none

        integer :: n, i
        integer :: resultado

        resultado = 1

        print *, "Digite um numero inteiro positivo:"
        read *, n

        if (n < 0) then
                print *, "Nao existe fatorial de numero negativo."
        else
                do i = 1, n
                        resultado = resultado * i
                end do

                print *, "O fatorial de", n, "e:", resultado
        end if
end program fatorial
