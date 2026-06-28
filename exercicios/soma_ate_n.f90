program soma_ate_n
        implicit none

        integer :: n, i, soma

        soma = 0

        print *, "Digite um numero inteiro positivo: "
        read *, n

        do i = 1, n
                soma = soma + i
        end do

        print *, "A soma de 1 ate", n, "e:", soma

end program soma_ate_n
