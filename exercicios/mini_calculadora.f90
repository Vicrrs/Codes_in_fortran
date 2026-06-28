program mini_calculadora
        implicit none

        real :: a, b
        integer :: opcao

        print *, "===== MINI CALCULADORA ====="
        print *, "1 - SOMA"
        print *, "2 - SUBTRACAO"
        print *, "3 - MULTIPLICACAO"
        print *, "4 - DIVISAO"
        print *, "5 - POTENCIA"

        print *, "Escolha uma opcao:"
        read *, opcao

        print *, "Digite o primeiro numero:"
        read *, a

        print *, "Digite o segundo numero:"
        read *, b

        if (opcao == 1) then
                print *, "Resultado:", a + b
        else if (opcao == 2) then
                print *, "Resultado:", a - b
        else if (opcao == 3) then
                print *, "Resultado:", a * b
        else if (opcao == 4) then
                if (b /= 0.0) then
                        print *, "Resultado:", a / b
                else
                        print *, "Erro: divisao por zero."
                end if
        else if (opcao == 5) then
                print *, "Resultado:", a ** b
        else
                print *, "Opcao invalida."
        end if
end program mini_calculadora
