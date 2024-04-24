program exemplo3
  implicit none
  integer, dimension(5) :: arr=[1, 2, 3, 4, 5]

  call inverter_Array(arr)
  print *, 'Array invertido', arr

contains
  subroutine inverter_Array(Array)
    integer, dimension(:), intent(inout) :: array
    integer :: i, temp, n

    n = size(array)
    do i = 1, n/2
      temp = array(i)
      array(i) = array(n-i+1)
      array(n-i+1) = temp
    end do
  end subroutine inverter_Array
end program exemplo3
