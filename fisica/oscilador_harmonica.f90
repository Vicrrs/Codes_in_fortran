program oscilador_harmonico
  implicit none

  real :: m, k, x, v, a, dt, t, tmax
  integer :: i, n

  print *, "Digite a massa m em kg:"
  read *, m

  print *, "Digite a constante elastica k em N/m:"
  read *, k

  print *, "Digite a posicao inicial x0 em metros:"
  read *, x

  print *, "Digite a velocidade inicial v0 em m/s:"
  read *, v

  print *, "Digite o passo de tempo dt:"
  read *, dt

  print *, "Digite o tempo maximo:"
  read *, tmax

  if (m <= 0.0 .or. k <= 0.0 .or. dt <= 0.0) then
    print *, "Erro: m, k e dt devem ser maiores que zero."
  else
    n = int(tmax / dt)
    t = 0.0

    print *, "t", "x", "v"

    do i = 0, n
      print *, t, x, v

      a = -(k / m) * x
      v = v + a * dt
      x = x + v * dt
      t = t + dt
    end do
  end if

end program oscilador_harmonico
