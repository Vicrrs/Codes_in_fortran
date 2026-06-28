# Anotando minha revisao de fortran

```bash
# subindo container
podman build -t fortran-dev .

#executando podman 
podman run --rm -it --userns=keep-id -v "$PWD":/work -w /work fortran-dev


# Rodar Fortran sem entrar no container
cd ~/Projetos/Codes_in_fortran

podman run --rm -it --userns=keep-id -v "$PWD":/work -w /work fortran-dev \
  sh -c 'gfortran 01-introducao/hello_world.f90 -o /tmp/programa && /tmp/programa'

# comando de execucao reduzido:

cd ~/Projetos/Codes_in_fortran
runfortran 01-introducao/hello_world.f90

runfortran 02-variaveis-e-tipos-de-dados/variaveis.f90
runfortran 03-controle-de-fluxo/Loop_do.f90
runfortran 06-funcoes/funcoes.f90
```

1. Que tipo de linguagem é fortran?

A ideia do Fortran é muito boa para quem quer estudar matematica, fisica, calculo numerico e simulações. Ele é uma linguagem antiga, mas ainda muito usada em ciencia, engenharia, meteorologia, fisica computacional e computacao de alto desenpenho.

Ele é uma linguagem:

**Compilada**: você descreve o codigo, compila com ```gfortran```, e depois executa o programa!

EX:

```bash
gfortran programa.f90 -o programa
./programa
```

**Imperativa/procedural**: Você da comandos em sequencia para o computador executar.

**Tipada**: voce precisa declarar o tipo das variaceis, como integer, real, character.


2. Estrutura mínima de um programa Fortran.

Um programa básico em Fortran moderno geralmente tem isso:

```fortran
program exemplo
    implicit none

    ! Aqui ficam as variaveis
    ! Aqui ficam os comandos

end program exemplo
```

As partes importates são:

```program nome```

Começa o programa.

```implicit none```

Isso é muito importante.


Ele obriga você a declarar todas as variáveis. Sem isso, o Fortran pode criar variáveis automaticamente por engano.


### Declaração de variáveis

Exemplo:

```fortran
integer :: idade
real :: altura
character(len=30) :: nome
```

Tipos comuns:

```fortran
integer		! numeros inteiros: 1, 2, -5, 100
real		! numeros reais: 2.5, 3.14, -0.8
character	! texto
logical		! verdadeiro ou falso
```


### Entrada e saida

Para mostrar algo na tela:

```fortran
print *, "Ola, mundo"
```

Para ler algo digitado pelo usuário:

```fortran
read *, numero
```


3. Operadores matemáticos em Fortran

Fortran usa operadores parecidos em matemática:

```fortran
+		soma
-		subtracao
*		multiplicacao
/		divisao
**		potencia
```

4. Primeiro exemplo: soma de dois números.


Crie o arquivo:

```bash
nano soma.f90
```

Código:

```fortran
program soma
	implicit none

	real :: a, b, resultado

	print *, "Digite o primeiro numero:"
	read *, a

	print *, "Digite o segundo numero:"
	read *, b

	resultado = a + b

	print *, "A soma e:", resultado

end program soma
```

Compile:
```bash
gfortran soma.f90 -o soma
```

### Explicação

Aqui criamos três variáveis reais:

```fortran
real :: a, b, resultado
```

O programa espera você digitar um número:

```fortran
read *, a
```

Aqui acontece a conta:

```fortran
resultado = a + b
```

Mostra o resultado na tela:

```fortran
print *, "A soma e: ", resultado
```

