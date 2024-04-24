program exemplo_ponteiro_struct
    implicit none

    ! Definição do tipo derivado Pessoa.
    type :: Pessoa
        character(len=50) :: nome
        integer :: idade
    end type Pessoa

    ! Declaração de uma variável do tipo Pessoa que será o alvo do ponteiro.
    type(Pessoa), target :: pessoa1

    ! Declaração de um ponteiro para o tipo Pessoa.
    type(Pessoa), pointer :: ptr_pessoa

    ! Atribuição de valores aos campos da variável pessoa1.
    pessoa1%nome = 'John Doe'
    pessoa1%idade = 30

    ! Associação do ponteiro à variável pessoa1.
    ptr_pessoa => pessoa1

    ! Impressão dos valores acessados através do ponteiro.
    print *, 'Nome:', ptr_pessoa%nome, 'Idade:', ptr_pessoa%idade
end program exemplo_ponteiro_struct
