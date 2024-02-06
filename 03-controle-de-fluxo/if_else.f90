program if_else
    implicit none
    integer :: numero = 5

    if (numero > 0) then
      print *, "Número é positivo."
    else
      print *, "Número é negativo ou zero."
    end if
end program if_else
