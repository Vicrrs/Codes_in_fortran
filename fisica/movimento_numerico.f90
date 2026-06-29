program movimento_numerico
  implicit none

  real :: x, v, a, t, dt, tmax
  integer :: i, n

  print *, "Digite a posicao inicial x0:"
  read *, x

  print *, "Digite a velocidade inicial v0:"
  read *, v

  print *, "Digite a aceleracao constante a:"
  read *, a

  print *, "Digite o passo de tempo dt:"
  read *, dt

  print *, "Digite o tempo maximo:"
  read *, tmax

  if (dt <= 0.0) then
    print *, "Erro: dt deve ser maior que zero."
  else
    n = int(tmax / dt)
    t = 0.0

    print *, "t", "x", "v"

    do i = 0, n
      print *, t, x, v

      v = v + a * dt
      x = x + v * dt

      t = t + dt
    end do
  end if

end program movimento_numerico
