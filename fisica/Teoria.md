# Teoria

## 1. Queda livre

Na queda livre, desprezando a resistência do ar, o corpo sofre aceleração constante:
```
g=9,8 m/s²
```

Se um objeto é abandonado do repouso, então:

```
v0 = 0
```

A posição vertical pode ser descrita por:

```
h = 1/2 g.t²
```

Isolando o tempo:

```
t = sqrt(2h / g)
```

A velocidade final é:

```
v = g.t
```

## 2. Lançamento oblíquo

No lançamento oblíquo, a velocidade inicial é dividida em duas componente:

```
vx = v0.cos(theta)
vy = v0.sin(theta)
```

O alcance horizontal, considerando que o corpo volta ao mesmo nível de lançamento, é:

```
R = v0².sin(2.theta) / g
```

A altura máxima é:

```
H = vy²/2g
```

O tempo total de voo é:

```
T = 2vy / g
```

## 3. Calorimetria

Em calorimetria, usamos:

```
Q = m.c.ΔT
```

Onde:

```
Q = quantidade de calor
m = massa
c = calor específico
ΔT = variação de temperatura
```

Se misturaos dois corpos sem perda de calos para o ambiente, temos:

```
calor perdido + calor recebido = 0
```

Para dois corpos, a temperatura final de quelíbrio pode ser calculada por:

```
Tf = (m1.c1.T1 + m2.c2.T2) / (m1.c1 + m2.c2)
```

## 4. Gás ideal

A equação para o gás ideal é:

```
PV = nRT
```

Onde:
```
P = pressão
V = volume
n = número de mols
R = constante dos gases
T = temperatura absoluta em Kelvin
```

Se quisermos calcular a pressão:

```
P = nRT / V
```

A constante dos gases é:

```
R = 8,314 J/ (mol K)
```

## 5. Lei de Coulomb

A força elétrica entre duas cargas puntiformes é dada pela lei de coulomb:

```
F = k.|q1.q2| / r²
```

Onde:

```
F = força elétrica
k = 8,99 × 10⁹ N m²/C²
q1 e q2 = cargas elétricas
r = distância entre as cargas
```

Se as cargas têm o mesmo sinal, a força e repulsiva.
Se têm sinais opostos, a força é atrativa.

## 6. Campo elétrico de uma carga

O campo elétrico gerado por uma carga puntiforme é:

```
E = k |q| / r²  (N/C)
```

Onde:

```
E = campo elétrico
q = carga fonte
r = distância até a carga
k = constante eletrostática
```

## 7. Oscilador harmônico simples

O oscilador harmônico simples aparece em sistemas como massa-mola.
A força elática é dada por:

```
F = -k.x
```

Pela segunda lei de Newton:

```
F = m.a
```

Então:

```
ma = -kx

\(\therefore \)

a = -(k/m)x
```

Definimos:

```
omega² = k/m
```

Então a equação diferencial é:

```
d²x/dt² + omega² x = 0
```

A solução analítica é:

```
x(t) = A.cos(omega t + phi)
```

Mas também podemos resolver numericamente.

Usaremos ummétodo simples chamdo Euler-Cromer:

```
v_novo = v_antigo + a.dt
x_novo = x_antigo + v_novo.dt
```

## 8. Decaimento exponencial

Muitos fenomenos físicos seguem uma equação diferencial do tipo:

```
dN/dt = -lambda N
```

Isso aparece em:

```
decaimento radioativo
decaimento de capacitor
resfriamento aproximado
populações simples
```

A solução analítica é:

```
N(t) = N0.e^(-lambda.t)
```

## 9. Derivada numérica

A derivada mede a taxa de variação de uma função.

A definição é:

```
f'(x) = limite quando h->0 de [f(x+h) - f(x)] / h
```

Mas numericamente usamos a aproximação. Uma aproximação melhor é a diferença central:

```
f'(x) ≈ [f(x+h) - f(x-h)] / 2h
```

## 10. Integral pelo método dos trapézios

A integral apresenta uma área acumulada.

Queremos calcumar:

```
∫ f(x) dx
```

Numericamente, podemos dividir o intervalo ```[a,b]``` em varios pedacos pequenos.

No métodos dos trapézios:

```
Integral ≈ h [ (f(a) + f(b))/2 + soma dos pontos internos ]
```

Onde:

```
h = (b - a) / n
```

## 11. Velocidade e posição por integração numerica

Se conhecemos a aceleração, podemos obter a velocidade:

```
v = v0 + a t
```

Mas numericamente podemos fazer:

```
v_novo = v_antigo + a dt
```

E a posição:

```
x_novo = x_antigo + v dt
```

## 12. Pendulo simples nao linear

O pendulo simples é um sistema clássico de Física matemática.

Para pequenos angulos usamos:

```
sen(theta) ≈ theta
```

Mas a equação mais correta é a não linear:

```
d²theta/dt² = -(g/L) sen(theta)
```

Onde:

```
theta = ângulo do pêndulo
g = gravidade
L = comprimento do fio
```

Para resolver numericamente, transformamos a equação de segunda ordem em duas de primeira ordem.

Definimos:

```
omega = dtheta/dt
```

Então:

```
dtheta/dt = omega
domega/dt = -(g/L) sen(theta)
```

Usaremos o método de Euler-Cromer:

```
omega_novo = omega_antigo + aceleracao_angular * dt
theta_novo = theta_antigo + omega_novo * dt
```

## 13. Série de Fourier de uma onda quadrada

Séries de Fourier servem para representar funções complicadas como soma de senos e cossenos.

Uma onda quadrada pode ser aproximada por:

```
f(x) = 4/pi * [sen(x) + sen(3x)/3 + sen(5x)/5 + sen(7x)/7 + ...]
```

ou seja:

```
f(x) = 4/pi * soma de sen((2k - 1)x)/(2k - 1)
```


## 13. Equação do calor em uma dimensao

A equação do calor é uma das equações diferenciais parciais mais importantes da Física!

```
∂T/∂t = alfa ∂²T/∂x²
```

Onde:

```
T = temperatura
t = tempo
x = posição
alfa = difusividade térmica
```

Ela descreve como o calor se espalha em uma barra.

Vamos imaginar uma barra de comprimento L.

As extremidades ficam fixas em temperatura zero.

```
T(0) = 0
T(L) = 0
```

No início, colocamos uma região quente no centro da barra.

Método numérico:

A discretização usada é:

```
T_i_novo = T_i + r (T_{i+1} - 2T_i + T_{i-1})
```

onde:

```
r = alfa dt / dx²
```


# 14. Equação de Laplace em duas dimensões

A equação de Laplace aparece em muitos problemas

```
∇²V = 0
```

Em duas dimensões:

```
∂²V/∂x² + ∂²V/∂y² = 0
```

A ideia física é: em equilíbrio, o valor em cada ponto é a média dos pontos vizinhos.


# 15. Equação de Schrödinger independente do tempo em uma caixa 1D
