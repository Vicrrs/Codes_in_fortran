program tabuada
        implicit none

        integer :: numero, i

        print *, "Digite um numero inteiro:"
        read *, numero

        do i = 1, 10
                print *, numero, "x", i, "=", numero * i
        end do

end program tabuada
