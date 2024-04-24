program exemplo4
  implicit none
  integer :: idade
  idade = 18
  if (idade >= 18) then
    print *, 'Você é adulto.'
    if (idade >= 65) then
      print *, 'Você é idoso.'
    endif
  else
    print *, 'Você é menor de idade.'
  endif
end program exemplo4
