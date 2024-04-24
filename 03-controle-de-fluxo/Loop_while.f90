program exemplo3
  implicit none
  integer :: contador
  contador = 0
  do while (contador < 5)
    contador = contador + 1
    print *, 'Contador: ', contador
  end do
end program exemplo3
