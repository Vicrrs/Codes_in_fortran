# Codes_in_fortran
repository for testing and studying the Fortran language.

# Fortran

Fortran é uma linguagem de programação de alto nível que é particularmente forte em áreas como computação científica, engenharia, e matemática aplicada. Originada na década de 1950, Fortran (um acrônimo para "Formula Translation") foi a primeira linguagem de programação de alto nível amplamente usada, projetada para permitir a fácil tradução de fórmulas matemáticas para código de computador.

### Classificação:

Dado seu projeto e uso predominante, Fortran é classificada como uma linguagem de programação:

* De Alto Nível: Por ser abstrata e distante da linguagem de máquina, focando na facilidade de leitura e escrita para humanos.
    
* Imperativa: Porque expressa programas em termos de declarações que alteram o estado do programa.
    
* Procedural: Suportando a organização do código em procedimentos ou rotinas (subrotinas e funções).
    
* Array-Oriented: Devido ao seu suporte extensivo e eficiente para operações com arrays.
    
* (Parcialmente) Orientada a Objetos: Nas versões mais recentes, com suporte a características como tipos definidos pelo usuário (derived types), encapsulamento, e polimorfismo.

## Estrutura Básica
Um programa Fortran típico é composto de unidades de programa, que podem ser programas principais, módulos, subrotinas e funções.

* Programa Principal: É onde a execução do programa começa. Um programa Fortran pode ter apenas um programa principal.
* Módulos: Usados para definir váriaveis globais, subrotinas, funções e interfaces que podem ser compartilhadas entre diferentes partes do programa.
* Subrotinas e Funções: Blocos de código que realizam tarefas específicas e podem ser chamados de outras partes do programa.


## Sintaxe de Declaração de Variáveis

Fortram é uma linguagem de tipagem estática, o que significa que você deve declarar o tipo de uma variável antes de usá-la.
```fortran
integer :: i, j, k
real :: x, y, z
character(len=100) :: str
logical :: flag
```

## Estruturas de Controle de Fluxo
Fortran suporta as usuais estruturas de controle de fluxo, como `if`, `do` loops e `select case`.

* `if`:
```fortran
if (condição) then
    ! blocos de código
else if (outra_condição) then
    ! blocos de código
else
    ! blocos de código
end if
```

* `Loops`:
       
    * Loop definitivo:
    ```fortran
    do i=1, N
        ! blocos de código
    end do
    ```

    * Loop enquanto:
    ```fortran
    do while (condição)
        ! blocos de código
    end do
    ```

* `Select case` (switch-case em outras linguagens):
```fortran
select case (variável)
case (1)
    ! blocos de código
case (2)
    ! blocos de código
case default
    ! blocos de código
end select
```

