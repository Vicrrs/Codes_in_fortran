program area_retangulo
        implicit none

        real :: base, altura, area

        print *, "Digite a base do retangulo: "
        read *, base

        print *, "Digite a altura do retangulo: "
        read *, altura

        area =  base * altura

        print *, "A area do retangulo e: ", area

end program area_retangulo
