program fourier_onda_quadrada
    implicit none

    real :: x, x_graus
    real :: soma, resultado
    real :: pi
    integer :: ntermos, k, m

    pi = 3.14159265

    print *, "Digite o valor de x em graus:"
    read *, x_graus

    print *, "Digite o numero de termos da serie:"
    read *, ntermos

    if (ntermos <= 0) then
        print *, "Erro: o numero de termos deve ser positivo."
    else
        x = x_graus * pi / 180

        soma = 0.0

        do k = 1, ntermos
            m = 2 * k - 1
            soma = soma + sin(real(m) * x) / real(m)
        end do

        resultado = (4.0 / pi) * soma

        print *, "Aproximacao da onda quadrada:"
        print *, resultado
    end if
end program fourier_onda_quadrada
