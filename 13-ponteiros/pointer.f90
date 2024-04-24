program exemplo_ponteiro_int
    implicit none
    integer, target :: num
    integer, pointer :: ptr

    num = 100
    ptr => num ! Associa um ponteiro ptr a uma variavel num
    print *, 'Valor apontado por ptr:', ptr
end program exemplo_ponteiro_int