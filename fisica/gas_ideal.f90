program gas_ideal
        implicit none

        real :: p, v, n, r, t

        r = 8.314

        print *, "Digite o numero de mols: "
        read *, n

        print *, "Digite a temperatura em Kelvin:"
        read *, t

        print *, "Digite o volume em metros cubicos:"
        read *, v

        if (v <= 0.0) then
                print *, "Erro, o volume deve ser maior que zero."
        else
                p = n * r * t / v
                print *, "Pressao:", p, "Pa"
        end if
end program gas_ideal
