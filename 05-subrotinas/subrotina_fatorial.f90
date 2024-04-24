program exemplo2
  implicit none
  integer :: n, fatorial

  n = 5
  call calcula_fatorial(n, fatorial)
  print *, 'Fatorial de ', n, 'é', fatorial

contains
  subroutine calcula_fatorial(num, fat)
    integer, intent(in) :: num
    integer, intent(out) :: fat
    integer :: i

    fat = 1
    do i = 2, num
      fat = fat * i
    end do
  end subroutine calcula_fatorial
end program exemplo2
