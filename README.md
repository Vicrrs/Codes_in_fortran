# Codes_in_fortran
repository for testing and studying the Fortran language.

# Fortran

Fortran é uma linguagem de programação de alto nível que é particularmente forte em áreas como computação científica, engenharia, e matemática aplicada. Originada na década de 1950, Fortran (um acrônimo para "Formula Translation") foi a primeira linguagem de programação de alto nível amplamente usada, projetada para permitir a fácil tradução de fórmulas matemáticas para código de computador.

### Características Principais:

* Orientada a cálculos númericos e científicos: Fortran foi desenolvida com o objetivo de suportar computação numérica complexa, incluindo operações de álgebra linear, processamento de matrizes e manipulação de arrays multidimensionais. Suas capacidades robustas para essas tarefas a tornam uma escolha popular em campos que requerem extensos cálculos numéricos, como física, química, meteorologia e engenharia.

* Eficiência: 


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


## Subrotinas e Funções

Subrotinas e funções são definidas com uma sintaxe específica e podem ser chamadas de outras partes do programa.

* Subrotina:
```fortran
subroutine minhaSubrotina(arg1, arg2)
    integer, intent(in) :: arg1
    integer, intent(out) :: arg2
    ! corpo da subrotina
end subrotine minhaSubrotina
```

* Função
```fortran
function minhaFuncao(arg1) result(resultado)
    integer, intent(in) :: arg1
    integer :: resultado
    ! corpo da funcao
end function minhaFuncao
```

## Módulos
Módulos em Fortran são usados para encapsular variáveis, subrotinas, funções, e definições de tipos, facilitando a reutilização de código.

```fortran
module meuModulo
    implicit none
    ! declarações
contains
    ! subrotinas e funcoes
end module meuModulo
```

## Comentários

Comentários são iniciados com um `!`e podem ser colocados em quase qualquer lugar no código.

```fortran
! Isto é um comentário
```

## Características modernas

Fortran moderno suporta programação orientada a objetos, incluindo a definição de tipos personalizados (ánalogos a classes em outras linguagens), herança, polimorfismo e encapsulamento.

```fortran
type :: Meu tipo
    ! membros do tipo
contains
    procedure :: minhaFuncao ! método do tipo
end type MeuTipo
```

## Tipos de dados inerentes

Fortran possui vários tipos de dados inerentes que são essenciais para diversas aplicações científicas e de engenharia:

* Integer: Para números inteiros.
* Real: Para números de pontos flutuantes.
* Complex: Para números complexos.
* Character: Para strings de caracteres.
* Logical: Para valores booleanos (`True` ou `False`).


## Estrutura de Dados Avançadas

Além dos tipos básicos, Fortran permite a definição de estruturas de dados complexos.

* Arrays: Fortran é conhecido por seu poderoso suporte a arrays, permitindo operações complexas de álgebra linear de forma direta.

```fortran
real, dimension(10) :: vetor
real, dimension(10,10) :: matriz
```

* Derived Types (Tipos derivados): Similar a structs em C ou classes em outras linguagens, permitindo agrupar diferentes tipos de dados.

```fortran
type :: Pessoa
    character(len=50) :: nome
    integer :: idade
end type Pessoa
```

## Operadores e Expressões

Fortran suporta os operadores aritméticos (+, -, *, /), operadores relacionais (==, /=, <, <=, >, >=) e operadores lógicos (.and., .or., .not.). As expressões seguem a precedência padrão de operadores, que pode ser alterada usando parênteses.

## Atribuições e Operações com Arrays

Um dos pontos fortes do Fortran é a manipulação de arrays, incluindo a atribuição e operações de matriz inteira, que permitem operações compactas e eficientes:

```fortran
matriz = 0.0 ! Atribui 0 a todos os elementos da matriz
vetor = [1, 2, 3, 4, 5]
matriz(1,:) = vetor ! Atribui vetor à primeira linha de matriz
```

## IO (Entrada e Saída)

Fortran oferece comandos para leitura e escrita de dados, tanto em arquivos como na entrada/saída padrão:

* Leitura e Escrita na Tela:

```fortran
print *, "Informe um número:"
read *, numero
```

* Leitura e Escrita em Arquivos:

```fortran
open(unit=10, file='dados.txt', status='old', action='read')
read(10, *) valor
close(10)
```

## Controle de Fluxo avançado.

* Ciclos e Loops com do: Fortran permite loops com contadores, além de loops baseados em condições.

```fortran
do i = 1, n, 2 ! Loop de 1 a n com passo de 2
    ! código
end do
```

* Loop Infinito e Saída com `exit`:

```fortran
do
    if (condicao) exit
end do
```

## Programação Orientada a Objetos

Fortran suporta conceitos de OOP desde a versão 2003, incluindo:

* Tipos Derivados com Extensão (Herança):

```fortran
type, extends(Pessoa) :: Empregado
    integer :: id
end type Empregado
```

* Polimorfismo e Interfaces: Permitindo a definição de comportamentos abstratos que podem ser implementados por tipos derivados.

* Encapsulamento e Módulos: Os módulos fornecem um meio de encapsular dados e funcionalidades, promovendo a reutilização e a organização do código.
