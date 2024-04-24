program exemplo2
    implicit none
    integer :: n, resultado

    n = 5
    resultado = fatorial(n)
    print *, 'Fatorial de', n, 'é', resultado

contains
    recursive integer function fatorial(x) result(res)
        integer, intent(in) :: x

        if (x <= 1) then
            res = 1
        else
            res = x * fatorial(x-1)
        end if
    end function fatorial
end program exemplo2
