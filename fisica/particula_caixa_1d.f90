program particula_caixa_1d
  implicit none

  real :: pi, l, x, dx
  real :: psi, energia
  integer :: n, i, nx

  pi = 3.14159265
  l = 1.0
  nx = 100

  print *, "Digite o numero quantico n:"
  read *, n

  if (n <= 0) then
    print *, "Erro: n deve ser inteiro positivo."
  else
    dx = l / real(nx)

    energia = real(n ** 2) * pi ** 2 / 2.0

    open(unit=40, file="particula_caixa.dat", status="replace")

    write(40,*) "# x psi probabilidade"

    do i = 0, nx
      x = real(i) * dx

      psi = sqrt(2.0 / l) * sin(real(n) * pi * x / l)

      write(40,*) x, psi, psi ** 2
    end do

    close(40)

    print *, "Energia em unidades naturais:", energia
    print *, "Dados salvos em particula_caixa.dat"
  end if

end program particula_caixa_1d