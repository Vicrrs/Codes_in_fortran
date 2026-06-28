program calorimetria
  implicit none

  real :: m1, c1, t1
  real :: m2, c2, t2
  real :: tf

  print *, "Digite a massa do corpo 1 em kg:"
  read *, m1

  print *, "Digite o calor especifico do corpo 1:"
  read *, c1

  print *, "Digite a temperatura inicial do corpo 1:"
  read *, t1

  print *, "Digite a massa do corpo 2 em kg:"
  read *, m2

  print *, "Digite o calor especifico do corpo 2:"
  read *, c2

  print *, "Digite a temperatura inicial do corpo 2:"
  read *, t2

  tf = (m1 * c1 * t1 + m2 * c2 * t2) / (m1 * c1 + m2 * c2)

  print *, "Temperatura final de equilibrio:", tf, "graus Celsius"

end program calorimetria
