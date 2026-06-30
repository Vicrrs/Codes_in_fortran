program laplace_2d
    implicit none

    integer, parameter :: nx = 30, ny = 30
    real :: v(nx, ny), vnovo(nx, ny)
    real :: erro, tolerancia
    integer :: i, j, iter, itermax

    tolerancia = 1.0e-4
    itermax = 10000

    v = 0.0
    vnovo = 0.0

    do i = 1, nx
        v(i, ny) = 100.0
        vnovo(i, ny) = 100.0
    end do

    iter = 0
    erro = 1.0

    do while (erro > tolerancia .and. iter < itermax)

        erro = 0.0

        do i = 2, nx - 1
            do j = 2, ny - 1
                vnovo(i, j) = 0.25 * (v(i + 1, j) + v(i - 1, j) + v(i, j + 1) + v(i, j - 1))

                if (abs(vnovo(i, j) - v(i, j)) > erro) then
                    erro = abs(vnovo(i, j) - v(i, j))
                end if
            end do
        end do

        do i = 2, nx - 1
            do j = 2, ny -1
                v(i, j) = vnovo(i, j)
            end do
        end do

        iter = iter + 1
    end do

    open(unit = 30, file="laplace_2d.dat", status="replace")

    write(30, *) "# i j v"

    do j = 1, ny
        do i = 1, nx
            write(30, *) i, j, v(i, j)
        end do
        write(30, *)
    end do

    close(30)

    print *, "Iteracoes:", iter
    print *, "Erro final:", erro
    print *, "Resultado salvo em laplace_2d.dat"

end program laplace_2d
