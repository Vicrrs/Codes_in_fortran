program pendulo_nao_linear
    implicit none

    real :: g, comprimento
    real :: theta, theta_graus
    real :: omega, alpha
    real :: dt, t, tmax
    real :: pi
    integer :: i, n

    pi = 3.14159265
    g = 9.8

    print *, "Digite o comprimento do pendulo em metros:"
    read *, comprimento

    print *, "Digite o angulo inicial em graus:"
    read *, theta_graus

    print *, "Digite a velocidade angular inicial em rad/s:"
    read *, omega

    print *, "Digite o passo de tempo dt:"
    read *, dt

    print *, "Digite o tempo maximo:"
    read *, tmax

    if (comprimento <= 0.0 .or. dt <= 0.0) then
        print *, "Erro: comprimento e dt devem ser positivos"
    else
        theta = theta_graus * pi / 180.0

        n = int(tmax/dt)
        t = 0.0

        open(unit=10, file="pendulo.dat", status="replace")

        write(10, *) "# t theta_rad theta_graus omega"

        do i = 0, n
            write(10, *) t, theta, theta * 180.0 / pi, omega

            alpha = -(g / comprimento) * sin(theta)

            omega = omega + alpha * dt
            theta = theta + omega * dt

            t = t + dt

        end do

        close(10)

        print *, "Simulacao concluida"
        print *, "Dados salvos em pendulo.dat"
    end if
end program pendulo_nao_linear
