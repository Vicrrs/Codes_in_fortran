program ordenacao
  implicit none
  integer, dimension(5) :: arr = [34, 12, 5, 66, 1]
  integer :: i, j, temp

  do i = 1, size(arr)-1
    do j = i+1, size(arr)
      if (arr(i) > arr(j)) then
        temp = arr(i)
        arr(i) = arr(j)
        arr(j) = temp
      end if
    end do
  end do

  print *, "Array ordenado: ", arr
end program ordenacao
