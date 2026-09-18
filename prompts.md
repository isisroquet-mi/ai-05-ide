# Chat exportado — *Artificial Intelligence in the Knowledge Economy*

## Usuario
Podrías resumirme en conciso de que trata el paper?

## Asistente
Sí. El paper **“Artificial Intelligence in the Knowledge Economy” de Enrique Ide y Eduard Talamàs** estudia **cómo la IA puede reorganizar el trabajo de conocimiento dentro de las empresas**, especialmente cuando puede realizar tareas cognitivas que antes dependían del conocimiento humano difícil de codificar.

La idea central es que, antes de la IA, las empresas se organizan en jerarquías: los trabajadores con menor conocimiento hacen tareas más rutinarias y, cuando encuentran un problema difícil, consultan a trabajadores más expertos o **“solvers”**. El paper introduce IA en esta estructura y analiza qué ocurre con **los puestos de trabajo, la organización de las empresas, los salarios y la producción**.

Su resultado principal depende de **qué tan capaz y autónoma sea la IA**. Una IA autónoma básica puede reemplazar trabajo rutinario y empujar a algunos humanos hacia tareas más complejas; en ese caso, los trabajadores menos capacitados pueden verse perjudicados mientras los más expertos se benefician. Si la IA es suficientemente avanzada, también puede ayudar a los trabajadores menos capacitados a resolver problemas complejos.

Además, compara **IA autónoma** —que puede trabajar por sí misma— con **IA no autónoma o copilot**, que solo ayuda al humano. La IA no autónoma tiende a beneficiar relativamente más a los trabajadores con menor conocimiento, mientras que la autónoma favorece más a los de mayor conocimiento; sin embargo, **la producción total es mayor con IA autónoma**.

**En una frase:** el paper pregunta *“¿cómo cambia la organización del trabajo cuando la IA deja de ser solo una herramienta y puede convertirse en un trabajador o experto adicional dentro de la empresa?”* y muestra que el efecto sobre las personas depende mucho de **la capacidad y autonomía de la IA**.

---

## Usuario
Necesito que realizar una demostracion matematica del paper con la siguiente indicacion: **The one refereed paper of the term.** Everything else on this course is a preprint or working paper; this one went through the *JPE* with a named editor and four anonymous referees. Worth noticing what that changes about how it is written.

**What to prioritise.** Propositions 5 and 6, and the structure of the argument: who gains at the top, who gains at the bottom, and what happens to total output. Derive the **two- or three-type discrete version** by hand — the continuum is not required.

**Which version.** The course PDF is dated May 20, 2025 (39 pp); the latest arXiv version is **v11, February 25, 2025** (35 pp). Propositions 1–6 carry the same numbers and statements in both, but the page numbers differ by about one. The Lean run pins arXiv v11 (section 2). Say which version you read.

**Citation note.** Talam**à**s carries a grave accent, and the paper is **2025**, not the 2024 working paper that many reference lists still show.

## Asistente
Sí. Para cumplir exactamente con lo que pide tu profesor, **no necesitas demostrar todo el modelo continuo**. Lo más conveniente es construir una **versión discreta con dos tipos humanos —bajo y alto— más la IA**, y usarla para reproducir los mecanismos de las Propositions 5 y 6: quién gana abajo, quién gana arriba y por qué el output con IA autónoma es mayor.

Voy a basarme en el **PDF de 39 páginas que subiste, la versión del curso/JPE de Ide y Talamàs (2025)**. Para tu entrega conviene declarar explícitamente esa versión y escribir *Talamàs* con acento grave.

### 1. Modelo mínimo que necesitamos

Supongamos dos tipos de humanos:

\[
z_L<z_H,
\]

donde \(z_L\) es un trabajador de bajo conocimiento y \(z_H\) uno de alto conocimiento.

Un problema tiene dificultad

\[
x\sim U[0,1].
\]

Por tanto, una persona con conocimiento \(z\) puede resolver por sí misma una fracción \(z\) de los problemas.

Si un trabajador de conocimiento \(z\) no puede resolver el problema, pide ayuda a un **solver**. Cada consulta consume \(h\) unidades de tiempo del solver. Por eso, la cantidad de trabajadores que puede supervisar un solver es

\[
\boxed{
n(z)=\frac{1}{h(1-z)}
}
\]

porque

\[
h\,n(z)(1-z)=1.
\]

Si los trabajadores tienen conocimiento \(z\) y el solver conocimiento \(s>z\), cada trabajador termina produciendo con probabilidad \(s\). Por eso:

\[
Y=n(z)s.
\]

La condición de beneficio cero de la firma humana es

\[
n(z)s-n(z)w(z)-w(s)=0,
\]

o

\[
\boxed{
n(z)[s-w(z)]=w(s).
}
\]

Esta ecuación es la base de casi toda la demostración discreta.

### 2. Benchmark pre-IA

Tomemos unos valores simples:

\[
z_L=0.2,
\qquad
z_H=0.9,
\qquad
h=0.25.
\]

Entonces:

\[
n(z_L)
=
\frac{1}{0.25(1-0.2)}
=
\frac{1}{0.2}
=
5.
\]

Es decir, **un trabajador de tipo alto puede supervisar cinco trabajadores de tipo bajo**.

Supongamos un equilibrio pre-IA con

\[
w_L^0=0.52.
\]

La condición de beneficio cero determina el salario del solver:

\[
5(0.9-0.52)=w_H^0,
\]

por lo que

\[
\boxed{w_H^0=1.9}.
\]

Verificación:

\[
5(0.9)-5(0.52)-1.9
=
4.5-2.6-1.9
=
0.
\]

Por tanto, nuestro benchmark es

\[
\boxed{
w_L^0=0.52,
\qquad
w_H^0=1.90.
}
\]

El output total de esta firma es

\[
\boxed{
Y^0=5(0.9)=4.5.
}
\]

Una precisión importante: en el continuo del paper la estructura de matching ayuda a determinar de manera única el schedule salarial. En una versión con solo dos tipos, la condición de beneficio cero no determina por sí sola cómo se reparte todo el excedente. Por eso estamos escogiendo un **benchmark competitivo de beneficio cero** para mostrar el mecanismo de las Propositions 5–6; no estamos afirmando que este pequeño modelo replique toda la unicidad del continuo.

### 3. Introducimos IA autónoma

Sea

\[
z_{AI}=a.
\]

La IA autónoma puede hacer dos cosas:

1. ser **worker/coworker**, es decir, realizar producción;
2. ser **solver/copilot**, es decir, ayudar a un humano.

Como además puede trabajar independientemente, una unidad de compute tiene un costo de oportunidad igual a lo que produciría por sí sola:

\[
\boxed{r^A=a}.
\]

### 4. ¿Qué pasa con el trabajador de abajo?

Supongamos que los \(L\) utilizan a la IA como solver.

Una IA solver puede atender a nuestros cinco trabajadores \(L\).

El output es

\[
5a.
\]

El costo salarial humano es

\[
5w_L^A,
\]

y utilizar la IA cuesta

\[
r^A=a.
\]

Beneficio cero:

\[
5a-5w_L^A-a=0.
\]

Entonces

\[
5w_L^A=4a
\]

y

\[
\boxed{
w_L^A
=
a\left(1-\frac{1}{5}\right)
=
0.8a.
}
\]

En forma general,

\[
\boxed{
w_L^A
=
a\left(1-\frac{1}{n(z_L)}\right).
}
\]

#### ¿Cuándo gana el trabajador de abajo?

Necesitamos

\[
w_L^A>w_L^0.
\]

Entonces

\[
a\left(1-\frac{1}{n_L}\right)>w_L^0.
\]

Despejando:

\[
\boxed{
a>
\frac{w_L^0}
{1-\frac{1}{n_L}}
}.
\]

Con nuestros números:

\[
a>\frac{0.52}{0.8}=0.65.
\]

Por tanto:

\[
\boxed{
a>0.65
\Rightarrow
\text{el tipo bajo gana con IA autónoma}.
}
\]

Pero

\[
\boxed{
a<0.65
\Rightarrow
\text{el tipo bajo pierde}.
}
\]

Este es el mecanismo de la **Proposition 5**: hay ganadores en la parte baja **solo si la IA es suficientemente buena**.

### 5. Ejemplo de IA autónoma básica

Tomemos

\[
a_B=0.5.
\]

Entonces

\[
w_L^A
=
0.8(0.5)
=
0.4.
\]

Comparando:

\[
0.4<0.52.
\]

Por tanto,

\[
\boxed{
w_L^A<w_L^0.
}
\]

El trabajador de bajo conocimiento **pierde**.

### 6. ¿Qué ocurre con el individuo de arriba?

Ahora usemos a la IA como **worker** y al humano \(H\) como solver.

Si los trabajadores son IA con conocimiento \(a\), un solver puede manejar

\[
n(a)
=
\frac{1}{h(1-a)}
\]

agentes de IA.

La firma produce

\[
n(a)z_H.
\]

Cada IA cuesta \(r^A=a\), por lo que:

\[
n(a)a
\]

es el costo del compute.

El único salario humano es \(w_H^A\).

Beneficio cero:

\[
n(a)z_H-n(a)a-w_H^A=0.
\]

Así,

\[
\boxed{
w_H^A=n(a)(z_H-a).
}
\]

Con la IA básica \(a=0.5\):

\[
n(0.5)
=
\frac{1}{0.25(0.5)}
=
8.
\]

Entonces

\[
w_H^A
=
8(0.9-0.5)
=
8(0.4)
=
3.2.
\]

Antes:

\[
w_H^0=1.9.
\]

Ahora:

\[
w_H^A=3.2.
\]

Por tanto,

\[
\boxed{
3.2>1.9.
}
\]

Así que con IA básica:

\[
\boxed{
\text{Bottom pierde, Top gana}.
}
\]

La intuición económica es que el experto puede **escalar su conocimiento**: en lugar de utilizar su tiempo resolviendo problemas de unos pocos humanos, puede supervisar muchos agentes IA.

### 7. Ahora hagamos la IA suficientemente avanzada

Tomemos

\[
a_A=0.8.
\]

Para el trabajador bajo:

\[
w_L^A
=
0.8(0.8)
=
0.64.
\]

Como

\[
0.64>0.52,
\]

ahora:

\[
\boxed{
w_L^A>w_L^0.
}
\]

El individuo de abajo también gana.

Para el individuo alto:

\[
n(0.8)
=
\frac{1}{0.25(0.2)}
=
20.
\]

Por tanto,

\[
w_H^A
=
20(0.9-0.8)
=
2.
\]

Y

\[
2>1.9.
\]

Así:

\[
\boxed{
w_H^A>w_H^0.
}
\]

Con una IA suficientemente avanzada obtenemos:

\[
\boxed{
\text{Bottom gana y Top gana}.
}
\]

### 8. Proposition 6: IA no autónoma

Aquí aparece la parte más bonita de la demostración.

La IA no autónoma **solo puede ser copilot/solver**. No puede ser worker ni producir independientemente.

Por tanto, si hay compute abundante, parte del compute queda sin uso.

Su precio de equilibrio es entonces:

\[
\boxed{
r^N=0.
}
\]

Volvamos a los trabajadores \(L\).

Si la IA es su solver:

\[
5a-5w_L^N-r^N=0.
\]

Como

\[
r^N=0,
\]

tenemos

\[
5a-5w_L^N=0.
\]

Así,

\[
\boxed{
w_L^N=a.
}
\]

Comparemos esto con IA autónoma:

\[
w_L^A
=
a\left(1-\frac1{n_L}\right).
\]

Por tanto,

\[
w_L^N-w_L^A
=
a-
a\left(1-\frac1{n_L}\right)
=
\boxed{
\frac{a}{n_L}>0.
}
\]

Este resultado reproduce de forma muy limpia la Proposition 6:

\[
\boxed{
w_L^N>w_L^A.
}
\]

**Los trabajadores menos capacitados prefieren IA no autónoma.**

¿Por qué? Porque la IA copilot **no tiene un uso alternativo productivo**. Su costo de oportunidad es cero.

### 9. ¿Cuándo se utiliza la IA no autónoma?

El trabajador bajo recibe

\[
w_L^N=a
\]

si utiliza IA.

Antes recibía

\[
w_L^0.
\]

Entonces la IA no autónoma es atractiva únicamente cuando

\[
a>w_L^0.
\]

Así:

\[
\boxed{
a>w_L^0
}
\]

es el umbral de adopción.

### 10. Comparación completa para \(a=0.8\)

\[
\begin{array}{c|ccc}
& \text{Sin IA} & \text{IA autónoma} & \text{IA no autónoma}\\
\hline
L & 0.52 & 0.64 & 0.80\\
H & 1.90 & 2.00 & \text{menor que con autónoma}
\end{array}
\]

Para el individuo de abajo:

\[
\boxed{
w_L^N>w_L^A>w_L^0
}
\]

porque

\[
0.80>0.64>0.52.
\]

Es decir:

\[
\boxed{
\text{el bottom prefiere la IA como copilot}.
}
\]

### 11. ¿Qué ocurre con el output total?

Sea

\[
\mathcal F_N
\]

el conjunto de asignaciones posibles con IA **no autónoma**.

Sea

\[
\mathcal F_A
\]

el conjunto de asignaciones posibles con IA **autónoma**.

Toda acción que puede realizar una IA no autónoma también puede realizarla una autónoma.

Por tanto:

\[
\boxed{
\mathcal F_N\subset\mathcal F_A.
}
\]

Como el equilibrio es eficiente:

\[
Y^A
=
\max_{x\in\mathcal F_A}Y(x)
\]

y

\[
Y^N
=
\max_{x\in\mathcal F_N}Y(x).
\]

De

\[
\mathcal F_N\subset\mathcal F_A
\]

se sigue inmediatamente:

\[
Y^A\geq Y^N.
\]

Pero con IA no autónoma, por la abundancia de compute, queda compute ocioso.

Una IA autónoma puede tomar al menos parte de ese compute ocioso y producir independientemente una cantidad positiva \(a\).

Por tanto:

\[
\boxed{
Y^A>Y^N.
}
\]

### 12. Se puede ver directamente con nuestros números

Mantengamos:

\[
a=0.8.
\]

Tenemos cinco trabajadores \(L\), un individuo \(H\) y 21 unidades de compute.

#### Sin IA

\[
Y^0=5(0.9)=4.5.
\]

#### IA no autónoma

\[
Y_L^N=5(0.8)=4.
\]

\[
Y_H^N=0.9.
\]

Entonces:

\[
\boxed{
Y^N=4+0.9=4.9.
}
\]

#### IA autónoma

\[
Y_L^A=5(0.8)=4.
\]

\[
n(0.8)=20.
\]

\[
Y_H^A
=
20(0.9)
=
18.
\]

Por tanto:

\[
\boxed{
Y^A=4+18=22.
}
\]

Y obtenemos:

\[
\boxed{
Y^A=22>Y^N=4.9>Y^0=4.5.
}
\]

### 13. Lo que realmente estás demostrando

\[
\boxed{
w_L^A
=
a\left(1-\frac{1}{n_L}\right)
}
\]

\[
\boxed{
w_L^N=a
}
\]

por lo que

\[
\boxed{
w_L^N-w_L^A
=
\frac{a}{n_L}>0.
}
\]

Además,

\[
\boxed{
w_H^A
=
n(a)(z_H-a),
\qquad
n(a)=\frac{1}{h(1-a)}.
}
\]

Y, finalmente,

\[
\boxed{
\mathcal F_N\subset\mathcal F_A
\quad\Longrightarrow\quad
Y^A>Y^N.
}
\]

---

## Usuario
necesito que sea un corto, cual me recomiendads?

## Asistente
Sí. Si tiene que ser **corto**, yo haría una sola demostración discreta de la **Proposition 6**. Es la más limpia y te permite cubrir dos cosas que el profesor pide: **quién gana abajo** y **qué pasa con el output total**.

Puedes usar solo **dos tipos humanos**, \(L\) y \(H\), y una IA de conocimiento \(a\). Para un trabajador bajo \(L\), un solver puede asistir a

\[
n_L=\frac{1}{h(1-z_L)}
\]

trabajadores.

Con **IA autónoma**, la IA también puede producir sola, así que su costo de oportunidad es

\[
r^A=a.
\]

Por beneficio cero de la firma,

\[
n_La-n_Lw_L^A-a=0,
\]

de donde

\[
\boxed{
w_L^A=a\left(1-\frac{1}{n_L}\right)
}.
\]

Con **IA no autónoma**, la IA solo puede ser copilot. Como el compute abundante que no se usa queda ocioso,

\[
r^N=0.
\]

Entonces,

\[
n_La-n_Lw_L^N=0
\]

y

\[
\boxed{w_L^N=a}.
\]

Comparando:

\[
w_L^N-w_L^A
=
a-a\left(1-\frac1{n_L}\right)
=
\boxed{\frac{a}{n_L}>0}.
\]

Por tanto,

\[
\boxed{w_L^N>w_L^A}.
\]

**Interpretación:** el trabajador de bajo conocimiento gana más con una IA tipo **copilot**, porque esa IA no compite con él en producción y tiene costo de oportunidad cero.

Para cerrar con output:

\[
\mathcal F_N\subset \mathcal F_A
\]

porque una IA autónoma puede hacer todo lo que hace una no autónoma **y además trabajar por sí misma**. Por eficiencia,

\[
\boxed{Y^A>Y^N}.
\]

Así tu demostración puede ocupar **media página** y tiene una historia económica muy clara: **copilot beneficia más al bottom, coworker/autonomous produce más output**.

La frase de versión podría quedar así:

> *I use the 39-page course/JPE version of Ide and Talamàs (2025) and derive a two-type discrete analogue of Proposition 6.*

---

## Usuario
oka, dame la derivación detallada matematica de tu recomendación, en formato latex, que me permita reproducirlo y entenderlo, no generes texto innecesario, la mate debe entenderse, pero tampoco detalles operacionales sencillos, como restas o sumas o otros.

## Asistente
```latex
\documentclass[11pt]{article}

\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{amsmath,amssymb}
\usepackage{geometry}
\geometry{margin=2.5cm}

\begin{document}

\section*{Discrete derivation of Proposition 6}

\textbf{Version read:} Ide and Talamàs (2025), 39-page course/JPE version.

\subsection*{1. Setup}

Consider two human types:

\[
z_L < z_H,
\]

where $z_L$ is the knowledge level of a low-knowledge worker and
$z_H$ is the knowledge level of a high-knowledge solver.

Let the AI have knowledge

\[
z_{AI}=a,
\]

with

\[
z_L<a<z_H.
\]

Each worker encounters a problem with difficulty

\[
x\sim U[0,1].
\]

A worker with knowledge $z_L$ solves the problem independently whenever

\[
x\leq z_L.
\]

Therefore, the probability that the worker needs help is

\[
1-z_L.
\]

Each request for help consumes $h$ units of the solver's time.
If one solver has one unit of time, the number of low-type workers it can assist,
denoted by $n_L$, satisfies

\[
h\,n_L(1-z_L)=1.
\]

Hence,

\[
\boxed{
n_L=\frac{1}{h(1-z_L)}
}.
\]

\subsection*{2. Autonomous AI}

With autonomous AI, an AI agent can either provide assistance or produce
independently.

An independent AI agent solves a fraction $a$ of problems, so one unit of
compute can generate expected output

\[
a.
\]

Therefore, the equilibrium rental rate of compute is

\[
\boxed{
r^{A}=a
}.
\]

Now consider a firm with $n_L$ human workers of type $L$ and one AI solver.

Because the AI has knowledge $a$, each worker ultimately produces with
probability $a$. Total expected output is therefore

\[
Y_L^{A}=n_La.
\]

The firm's costs are

\[
n_Lw_L^{A}+r^{A}.
\]

Under perfect competition, profits are zero:

\[
n_La-n_Lw_L^{A}-r^{A}=0.
\]

Substituting $r^{A}=a$,

\[
n_L(a-w_L^{A})=a.
\]

Thus,

\[
a-w_L^{A}=\frac{a}{n_L},
\]

and therefore

\[
\boxed{
w_L^{A}
=
a\left(1-\frac{1}{n_L}\right)
}.
\]

Using

\[
\frac{1}{n_L}=h(1-z_L),
\]

we can also write

\[
\boxed{
w_L^{A}
=
a\left[1-h(1-z_L)\right].
}
\]

The term

\[
\frac{a}{n_L}
\]

is the part of output that must compensate the AI for its opportunity cost:
an autonomous AI could instead produce independently.

\subsection*{3. Nonautonomous AI}

Now suppose the AI is nonautonomous.

It can act only as a solver or copilot; it cannot produce independently.

With compute abundant, any compute not used to assist humans remains idle.
Hence its equilibrium rental rate is

\[
\boxed{
r^{N}=0.
}
\]

Consider again $n_L$ human workers assisted by one AI solver.

Expected output remains

\[
Y_L^{N}=n_La.
\]

The zero-profit condition is now

\[
n_La-n_Lw_L^{N}-r^{N}=0.
\]

Since

\[
r^{N}=0,
\]

we obtain

\[
n_L(a-w_L^{N})=0.
\]

Hence,

\[
\boxed{
w_L^{N}=a.
}
\]

\subsection*{4. Comparing the low type}

Subtract the autonomous-AI wage from the nonautonomous-AI wage:

\[
w_L^{N}-w_L^{A}
=
a-
a\left(1-\frac{1}{n_L}\right).
\]

Therefore,

\[
\boxed{
w_L^{N}-w_L^{A}
=
\frac{a}{n_L}
>0.
}
\]

Equivalently,

\[
\boxed{
w_L^{N}>w_L^{A}.
}
\]

Since

\[
\frac{1}{n_L}=h(1-z_L),
\]

the wage difference can also be written as

\[
\boxed{
w_L^{N}-w_L^{A}
=
ah(1-z_L)>0.
}
\]

Thus, the low-knowledge worker obtains a larger share of output when AI is
nonautonomous.

The mechanism is the difference in the AI's opportunity cost:

\[
\boxed{
r^{A}=a>0,
\qquad
r^{N}=0.
}
\]

With autonomous AI, part of firm output must compensate compute because
the AI could produce independently. With nonautonomous AI, this outside
option disappears, so that surplus is captured by the human worker.

\subsection*{5. When is nonautonomous AI adopted?}

Without AI, let the low type earn

\[
w_L^{0}.
\]

Using nonautonomous AI gives

\[
w_L^{N}=a.
\]

Therefore, the low type benefits from using nonautonomous AI whenever

\[
w_L^{N}>w_L^{0}.
\]

Substituting,

\[
\boxed{
a>w_L^{0}.
}
\]

Thus, in the two-type version, nonautonomous AI is adopted by the low type
when its knowledge is sufficiently high relative to the worker's pre-AI wage.

\subsection*{6. Total output}

Let

\[
\mathcal{F}^{N}
\]

denote the set of feasible production allocations with nonautonomous AI and

\[
\mathcal{F}^{A}
\]

the corresponding set with autonomous AI.

An autonomous AI can perform every activity available to a nonautonomous AI,
but can additionally work as a producer.

Hence,

\[
\boxed{
\mathcal{F}^{N}\subseteq \mathcal{F}^{A}.
}
\]

Since equilibrium is efficient,

\[
Y^{N}
=
\max_{f\in\mathcal{F}^{N}}Y(f),
\]

while

\[
Y^{A}
=
\max_{f\in\mathcal{F}^{A}}Y(f).
\]

Therefore,

\[
Y^{A}\geq Y^{N}.
\]

Under nonautonomous AI and abundant compute, some compute is idle.
Take one such unused unit of compute.

Under autonomous AI, that same unit can instead operate as an independent
producer and generate expected output

\[
a>0.
\]

Thus the feasible autonomous allocation can strictly increase output without
reducing the output produced elsewhere.

Therefore,

\[
\boxed{
Y^{A}>Y^{N}.
}
\]

\subsection*{7. Main result}

The two-type discrete version gives

\[
\boxed{
w_L^{N}=a
>
a\left(1-\frac{1}{n_L}\right)
=w_L^{A}
}
\]

but

\[
\boxed{
Y^{A}>Y^{N}.
}
\]

Hence,

\[
\boxed{
\text{Nonautonomous AI benefits the low type more,
while autonomous AI generates more total output.}
}
\]

\end{document}
```

La parte matemática central que conviene que puedas reproducir de memoria es:

\[
h n_L(1-z_L)=1
\Rightarrow
n_L=\frac{1}{h(1-z_L)},
\]

\[
r^A=a
\Rightarrow
w_L^A
=
a\left(1-\frac1{n_L}\right),
\]

\[
r^N=0
\Rightarrow
w_L^N=a,
\]

y finalmente

\[
\boxed{
w_L^N-w_L^A
=
\frac{a}{n_L}>0
},
\qquad
\boxed{Y^A>Y^N}.
\]

Estas dos últimas desigualdades son el corazón de la demostración.

---

## Usuario
dame en formato md: qué pregunta responde el artículo, el problema del agente y el resultado principal **con todas sus condiciones.**

## Asistente
# Ide y Talamàs (2025) — *Artificial Intelligence in the Knowledge Economy*

## 1. Pregunta del artículo

El artículo pregunta:

> **¿Cómo cambia la organización del trabajo, los salarios y la producción cuando la inteligencia artificial puede realizar trabajo cognitivo basado en conocimiento no codificable?**

En particular, estudia dos dimensiones de la IA:

- su **nivel de conocimiento**, \(z_{AI}\);
- su **grado de autonomía**.

La distinción clave es entre:

- **IA autónoma:** puede actuar como **coworker**, realizando producción por sí misma, y como **solver/copilot**, ayudando a otros;
- **IA no autónoma:** solo puede actuar como **solver/copilot**.

El objetivo es determinar cómo estas tecnologías afectan:

\[
\boxed{
\text{ocupaciones}
\;+\;
\text{matching}
\;+\;
\text{salarios}
\;+\;
\text{output total}.
}
\]

## 2. Problema del agente

### Humanos

Cada humano tiene un nivel de conocimiento

\[
z\in[0,1]
\]

y una unidad de tiempo.

Las oportunidades de producción presentan un problema de dificultad

\[
x\sim U[0,1].
\]

Un individuo puede resolver el problema si

\[
z\geq x.
\]

Por tanto, un humano con conocimiento \(z\) resuelve por sí mismo una fracción

\[
z
\]

de los problemas.

Si no puede resolver un problema, puede pedir ayuda a un **solver**. Cada consulta consume

\[
h\in(0,1)
\]

unidades del tiempo del solver.

Por ello, un solver que ayuda a trabajadores con conocimiento \(z\) puede supervisar

\[
\boxed{
n(z)=\frac{1}{h(1-z)}
}
\]

trabajadores, porque

\[
h\,n(z)(1-z)=1.
\]

Los humanos son neutrales al riesgo y eligen la ocupación que maximiza su ingreso:

\[
\boxed{
\max
\left\{
\text{ingreso como productor independiente},
\text{ ingreso como worker},
\text{ ingreso como solver}
\right\}.
}
\]

En equilibrio, los individuos con menor conocimiento tienden a convertirse en **workers**, mientras que los de mayor conocimiento se especializan como **solvers**.

### Firmas

Las firmas competitivas eligen:

\[
\boxed{
\text{estructura organizacional}
+
\text{matching}
+
\text{uso de IA}
}
\]

para maximizar beneficios.

Una firma de una sola capa obtiene:

\[
\Pi_1=
\begin{cases}
z-w(z), & \text{si utiliza un humano},\\[4pt]
z_{AI}-r, & \text{si utiliza IA}.
\end{cases}
\]

Para una firma de dos capas sin automatización:

\[
\boxed{
\Pi_2^{nA}(s,z)
=
n(z)\,[s-w(z)]-w(s).
}
\]

Con IA como solver:

\[
\boxed{
\Pi_2^{tA}(z)
=
n(z)\,[z_{AI}-w(z)]-r.
}
\]

Con IA como worker:

\[
\boxed{
\Pi_2^{bA}(s)
=
n(z_{AI})[s-r]-w(s).
}
\]

En equilibrio competitivo,

\[
\boxed{\Pi=0}.
\]

## 3. Resultado principal

El resultado central es que **el efecto distributivo de la IA depende de su conocimiento y, especialmente, de si puede actuar autónomamente**.

### A. IA autónoma: Proposition 5

Definamos:

\[
B=
\{z<z_{AI}:w^*(z)>w(z)\},
\]

como el conjunto de individuos por debajo de la IA que ganan con su introducción, y

\[
T=
\{z>z_{AI}:w^*(z)>w(z)\},
\]

como los individuos por encima de la IA que ganan.

El paper muestra que los ganadores aparecen en los extremos:

\[
B=[0,z_b),
\qquad
T=(z_t,1].
\]

#### Ganadores en la parte baja

Existe un umbral

\[
\bar z_{AI}\in\operatorname{int}W
\]

tal que

\[
\boxed{
B\neq\varnothing
\iff
z_{AI}>\bar z_{AI}.
}
\]

Es decir:

\[
\boxed{
\text{los individuos de menor conocimiento solo ganan si la IA es suficientemente avanzada.}
}
\]

Si la IA es relativamente básica, el efecto negativo de un peor matching puede dominar.

Si es suficientemente avanzada, el efecto positivo sobre la participación del trabajador en el excedente domina.

#### Ganadores en la parte alta

Bajo los supuestos del modelo principal,

\[
\boxed{
T\neq\varnothing
\qquad
\forall z_{AI}\in[0,1).
}
\]

Por tanto, siempre existe un conjunto de individuos altamente conocedores que gana con IA autónoma.

La intuición es que los expertos pueden utilizar IA como workers y aplicar su conocimiento sobre más unidades de producción.

#### Condiciones importantes de Proposition 5

El resultado de que los individuos de arriba siempre ganen requiere:

\[
\boxed{h<h_0}
\]

que es el caso en el que el análisis principal se concentra.

También requiere que la IA no sea perfectamente conocedora:

\[
\boxed{
z_{AI}\in[0,1).
}
\]

Si

\[
z_{AI}=1,
\]

la IA es esencialmente “superinteligente” dentro del modelo y los humanos de mayor conocimiento pueden perder.

Asimismo, cuando

\[
h\geq h_0,
\]

el resultado de ganancias aseguradas para el top ya no es general.

### B. IA no autónoma: Proposition 6

Con IA no autónoma, la tecnología solo puede actuar como **solver/copilot**.

No puede:

\[
\text{realizar producción independiente}
\]

ni actuar como

\[
\text{worker}.
\]

Como el compute es abundante y parte queda ociosa, su precio de equilibrio es

\[
\boxed{
r^{N}=0.
}
\]

#### Condición 1: IA insuficientemente avanzada

Si

\[
\boxed{
z_{AI}\leq w(0),
}
\]

entonces la IA no se utiliza:

\[
\boxed{
W_a^{N}=\varnothing.
}
\]

En consecuencia,

\[
\boxed{
w^{N}(z)=w(z)
}
\]

y las ocupaciones coinciden con el equilibrio pre-IA.

#### Condición 2: IA suficientemente avanzada

Si

\[
\boxed{
z_{AI}>w(0),
}
\]

la IA sí se utiliza, pero únicamente por los trabajadores menos conocedores como solver:

\[
\boxed{
W_a^{N}
\preceq
W_p^{N}\cup I^{N}\cup S_p^{N}.
}
\]

### C. Comparación autónoma vs. no autónoma

#### 1. Output total

Para cualquier nivel de conocimiento de la IA considerado por el modelo:

\[
\boxed{
Y^{A}>Y^{N}.
}
\]

La razón es que una IA autónoma puede realizar todas las tareas de una IA no autónoma y, adicionalmente, puede:

\[
\boxed{
\text{trabajar y producir independientemente}.
}
\]

Con IA no autónoma, parte del compute queda ociosa; con IA autónoma puede utilizarse productivamente.

#### 2. Individuos de menor conocimiento

Existe un \(\varepsilon>0\) tal que para los individuos suficientemente cercanos a la parte baja,

\[
\boxed{
w^{N}(z)
\geq
\max\{w(z),w^{A}(z)\},
\qquad
z\in[0,\varepsilon).
}
\]

La desigualdad es estricta cuando

\[
\boxed{
z_{AI}>w(0).
}
\]

Por tanto:

\[
\boxed{
\text{los menos conocedores prefieren IA no autónoma.}
}
\]

#### 3. Individuos de mayor conocimiento

Existe un \(\varepsilon>0\) tal que para los individuos suficientemente cercanos a la parte alta,

\[
\boxed{
w^{N}(z)\leq w^{A}(z),
\qquad
z\in(1-\varepsilon,1].
}
\]

La desigualdad es estricta para

\[
z\neq1.
\]

Por tanto:

\[
\boxed{
\text{los más conocedores prefieren IA autónoma.}
}
\]

## Resultado central en una expresión

\[
\boxed{
\begin{array}{c}
\text{IA no autónoma}
\;\Rightarrow\;
\text{mayor beneficio relativo para el bottom}
\\[4pt]
\text{IA autónoma}
\;\Rightarrow\;
\text{mayor beneficio relativo para el top}
\\[4pt]
\text{IA autónoma}
\;\Rightarrow\;
\text{mayor output total}.
\end{array}
}
\]

El mecanismo fundamental es que la autonomía crea un **trade-off distributivo**:

\[
\boxed{
\text{restringir la autonomía de la IA favorece relativamente al bottom,
pero reduce la producción agregada}.
}
\]
