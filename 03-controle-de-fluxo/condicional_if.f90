program exemplo1
  implicit none
  integer :: numero
  numero = 5
  if (numero>0) then
    print *, 'O numero é positivo.'
  else
    print *, 'O numero é negativo ou zero.'
  endif
end program exemplo1
