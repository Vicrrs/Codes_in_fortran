program main
  implicit none
  integer :: resultado

  resultado = soma(5, 3)
  print *, "Resultado da soma: ", resultado
contains
  function soma(a, b)
    integer :: soma
    integer, intent(in) :: a, b
    soma = a + b
  end function soma
end program main
