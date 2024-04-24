program exemplo1
  implicit none
  integer :: num, resultado

  num = 4

  resultado = quadrado(num)

  print *, 'O quadrado de ', num, 'é', resultado
  
contains ! separa as definicoes de funcoes internas
  integer function quadrado(x)
    integer, intent(in) :: x
    quadrado = x * x
  end function quadrado
end program exemplo1
