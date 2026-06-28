program lei_coulomb
  implicit none

  real :: q1, q2, r
  real :: k, f

  k = 8.99e9

  print *, "Digite a carga q1 em Coulomb:"
  read *, q1

  print *, "Digite a carga q2 em Coulomb:"
  read *, q2

  print *, "Digite a distancia entre as cargas em metros:"
  read *, r

  if (r <= 0.0) then
          print *, "Erro: a distancia deve ser maior que zero."
  else
          f = k * abs(q1 * q2) / (r ** 2)

          print *, "Modulo da forca eletrica:", f, "N"

          if (q1 * q2 > 0.0) then
                  print *, "A forca e repulsiva."
          else if (q1 * q2 < 0.0) then
                  print *, "A forca e atrativa."
          else
                  print *, "Uma das cargas e nula, entao a forca e zero."
          end if
  end if

end program lei_coulomb

