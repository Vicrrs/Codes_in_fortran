program celsius_fahrenheit
        implicit none

        real :: celsius, fahrenheit

        print *, "Digite a temperatura em Celsius:"
        read *, celsius

        fahrenheit = celsius * 9.0 / 5.0 + 32

        print *, "Temperatura em Fahrenheit:", fahrenheit
end program celsius_fahrenheit
