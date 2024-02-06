program arquivos
  implicit none
  character(len=100) :: linha
  open(unit=10, file="exemplo.txt", status="old", action="read")

  do while (.true.)
    read(10, *, end=100) linha
    print *, linha
  end do
100 continue
  close(10)
end program arquivos
