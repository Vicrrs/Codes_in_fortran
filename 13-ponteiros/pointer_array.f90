program exemplo_ponteiro_array
    implicit none
    integer, target :: arr(5)
    integer, pointer :: p_arr(:)

    arr = [1, 2, 3, 4, 5]
    p_arr => arr
    print *, 'Valores do array via ponteiro:', p_arr
end program exemplo_ponteiro_array
