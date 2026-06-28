program par_ou_impar
        implicit none

        integer :: numero

        print *, "Digite um numero inteiro:"
        read *, numero

        if (mod(numero, 2) == 0) then
                print *, "O numero e par."
        else
                print *, "O numero e impar."
        end if

end program par_ou_impar
