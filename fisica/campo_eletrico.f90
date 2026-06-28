program campo_eletrico
        implicit none

        real :: q, r, e
        real :: k

        k = 8.99e9

        print *, "Digite a carga em Coulomb:"
        read *, q

        print *, "Digite a distancia em metros:"
        read *, r

        if (r <= 0.0) then
                print *, "Erro: a distancia deve ser maio que zero."
        else
                e = k * abs(q) / (r ** 2)

                print *, "Campo eletrico:", e, "N/C"
        end if
end program campo_eletrico
