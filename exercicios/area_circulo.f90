program area_circulo
        implicit none

        real :: raio, area
        real, parameter :: pi = 3.14159265

        print *, "Digite o raio do circulo: "
        read *, raio

        area = pi * raio ** 2

        print *, "Area do circulo e: ", area

end program area_circulo
