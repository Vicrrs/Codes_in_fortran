program busca
  implicit none
  integer, dimension(5) :: arr = [34, 12, 5, 66, 1]
  integer :: i, valorProcurado, encontrado

  valorProcurado = 66
  encontrado = 0

  do i = 1, size(arr)
    if (arr(i) == valorProcurado) then
      encontrado = 1
      exit
    end if
  end do

  if (encontrado == 1) then
    print *, "Valor encontrado no array."
  else
    print *, "Valor não encontrado."
  end if
end program busca
