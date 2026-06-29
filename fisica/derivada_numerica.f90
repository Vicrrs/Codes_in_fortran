program derivada_numerica
  implicit none

  real :: x, h, derivada

  print *, "Funcao usada: f(x) = x**2"
  print *, "Digite o ponto x onde deseja calcular a derivada."
  print *, "Exemplo: para calcular f'(3), digite 3"
  read *, x

  print *, "Digite o valor de h, por exemplo 0.001:"
  read *, h

  if (h <= 0.0) then
    print *, "Erro: h deve ser maior que zero."
  else
    derivada = (f(x + h) - f(x - h)) / (2.0 * h)

    print *, "Derivada numerica:", derivada
    print *, "Derivada exata:", 2.0 * x
  end if

contains

  real function f(x)
    implicit none
    real, intent(in) :: x

    f = x ** 2
  end function f

end program derivada_numerica
