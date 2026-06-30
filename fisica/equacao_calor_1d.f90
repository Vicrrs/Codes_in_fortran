program equacao_calor_1d
  implicit none

  integer, parameter :: nx = 51
  real :: t(nx), tnovo(nx)
  real :: comprimento, dx, dt, alfa, r
  real :: tempo, tempomax, x
  integer :: i, passo, npassos

  comprimento = 1.0

  print *, "Digite alfa, por exemplo 0.01:"
  read *, alfa

  print *, "Digite dt, por exemplo 0.0001:"
  read *, dt

  print *, "Digite o tempo maximo, por exemplo 0.1:"
  read *, tempomax

  dx = comprimento / real(nx - 1)
  r = alfa * dt / (dx ** 2)

  if (r > 0.5) then
    print *, "Cuidado: metodo instavel."
    print *, "Valor de r =", r
    print *, "Use dt menor."
  else
    print *, "Valor de r =", r
    print *, "Metodo estavel para este dt."
  end if

  do i = 1, nx
    x = real(i - 1) * dx

    if (x > 0.4 .and. x < 0.6) then
      t(i) = 100.0
    else
      t(i) = 0.0
    end if
  end do

  t(1) = 0.0
  t(nx) = 0.0

  npassos = int(tempomax / dt)
  tempo = 0.0

  do passo = 1, npassos

    tnovo(1) = 0.0
    tnovo(nx) = 0.0

    do i = 2, nx - 1
      tnovo(i) = t(i) + r * (t(i + 1) - 2.0 * t(i) + t(i - 1))
    end do

    do i = 1, nx
      t(i) = tnovo(i)
    end do

    tempo = tempo + dt
  end do

  open(unit=20, file="calor_1d.dat", status="replace")

  write(20,*) "# x temperatura"

  do i = 1, nx
    x = real(i - 1) * dx
    write(20,*) x, t(i)
  end do

  close(20)

  print *, "Simulacao concluida."
  print *, "Resultado salvo em calor_1d.dat"

end program equacao_calor_1d