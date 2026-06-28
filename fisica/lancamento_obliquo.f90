program lancamento_obliquo
        implicit none

        real :: v0, theta_graus, theta_rad
        real :: g, pi
        real :: vx, vy, alcance, altura_maxima, tempo_total

        pi = 3.14159265
        g = 9.8

        print *, "Digite a velocidade inicial em m/s:"
        read *, v0

        print *, "Digite o angulo em graus:"
        read *, theta_graus
        
        ! O Fortran calcula sin e cos usando radianos, nao graus
        theta_rad = theta_graus * pi / 180.0

        vx = v0 * cos(theta_rad)
        vy = v0 * sin(theta_rad)

        alcance = v0 ** 2 * sin(2.0 * theta_rad) / g
        altura_maxima = vy ** 2 / (2.0 * g)
        tempo_total = 2.0 * vy / g

        print *, "Componente vx:", vx, "m/s"
        print *, "Componente vy:", vy, "m/s"
        print *, "Alcance", alcance, "m"
        print *, "Altura maxima", altura_maxima, "m"
        print *, "Tempo total:", tempo_total, "s"

end program lancamento_obliquo

