program media_notas
        implicit none

        real :: n1, n2, n3, media

        print *, "Digite a primeira nota: "
        read *, n1

        print *, "Digite a segunda nota: "
        read *, n2

        print *, "Digite a terceira nota: "
        read *, n3

        media = (n1 + n2 + n3) / 3.0

        print *, "Media: ", media

        if (media >= 7.0) then
                print *, "Aluno aprovado."
        else
                print *, "Aluno reprovado."
        end if

end program media_notas
