module pessoa_module
  implicit none
  type :: Pessoa
    character(len=50) :: nome
    integer :: idade
  contains
    procedure :: mostraDados => mostraDadosPessoa
  end type Pessoa
contains
  subroutine mostraDadosPessoa(this)
    class(Pessoa), intent(in) :: this
      print *, "Nome: ", this%nome
      print *, "Idade: ", this%idade
  end subroutine mostraDadosPessoa
end module pessoa_module

program poo
  use pessoa_module
  type(Pessoa) :: p

  p%nome = "Joao"
  p%idade = 30

  call p%mostraDados
end program poo
