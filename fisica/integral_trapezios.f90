program integral_trapezios
  implicit none

  real :: a, b, h, integral, x
  integer :: n, i

  print *, "Digite o limite inferior a:"
  read *, a

  print *, "Digite o limite superior b:"
  read *, b

  print *, "Digite o numero de divisoes n:"
  read *, n

  if (n <= 0) then
    print *, "Erro: n deve ser maior que zero."
  else
    h = (b - a) / real(n)

    integral = 0.5 * (f(a) + f(b))

    do i = 1, n - 1
      x = a + i * h
      integral = integral + f(x)
    end do

    integral = integral * h

    print *, "Integral aproximada:", integral
  end if

contains

  real function f(x)
    implicit none
    real, intent(in) :: x

    f = x ** 2
  end function f

end program integral_trapezios
