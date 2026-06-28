program bhaskara
        implicit none

        real :: a, b, c
        real :: delta, x1, x2

        print *, "Equacao do tipo ax^2 + bx + x = 0"

        print *, "Digite a: "
        read *, a

        print *, "Digite b: "
        read *, b

        print *, "Digite c: "
        read *, c

        if (a == 0.0) then
                print *, "Nao eh equacao do segundo grau, pois a = 0."
        else
                delta = b ** 2 - 4 * a * c

                print *, "Delta = ", delta

                if (delta > 0.0) then
                        x1 = (-b + sqrt(delta)) / (2.0 * a)
                        x2 = (-b - sqrt(delta)) / (2.0 * a)

                        print *, "Duas raizes reais:"
                        print *, "x1 =", x1
                        print *, "x2 =", x2

                else if (delta == 0.0) then
                        x1 = -b / (2.0 * a)

                        print *, "Uma raiz real:"
                        print *, "x =", x1

                else
                        print *, "Nao existem raizes reais."
                end if
        end if
end program bhaskara
