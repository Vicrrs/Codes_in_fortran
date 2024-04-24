program exemplo4
    implicit none
    real :: celsius, fahrenheit

    celsius = 100.0
    fahrenheit = celsius_para_fahrenheit(celsius)
    print *, celsius, 'C é', fahrenheit, 'F'

contains
    real function celsius_para_fahrenheit(c)
        real, intent(in) :: C
        celsius_para_fahrenheit = (c * 9.0/5.0) + 32
    end function celsius_para_fahrenheit
end program exemplo4