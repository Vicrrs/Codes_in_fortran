program exemplo1
  implicit none
  integer :: x, y, resultado

  x = 5
  y = 3
  call soma(x,y, resultado)
  print *, 'Resultado da soma: ', resultado

contains
  subroutine soma(a, b, res)
    integer, intent(in) :: a, b
    integer, intent(out) :: res
    res = a + b
  end subroutine soma
end program exemplo1
