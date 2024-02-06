module matematica
  implicit none
contains
  function soma(a, b)
    integer :: soma
    integer, intent(in) :: a, b
    soma = a + b
  end function soma
end module matematica

program main
  use matematica
  implicit none
  print *, "Soma: ", soma(5, 3)
end program main
