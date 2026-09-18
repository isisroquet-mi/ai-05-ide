# Repositorio 5 — Ide y Talamàs (2025)

## Paper y versión leída

**Ide, E., & Talamàs, E. (2025). “Artificial Intelligence in the Knowledge Economy”. _Journal of Political Economy_, 133(12), 3762–3800.**

Para el análisis económico leí la versión publicada del curso, fechada el 20 de mayo de 2025 (39 pp.). La formalización fija la versión **arXiv v11, 25 de febrero de 2025** (35 pp.), como exige la consigna. Las Proposiciones 1–6 mantienen la misma numeración y contenido sustantivo en ambas versiones.

## 1. Pregunta

¿Cómo cambian la organización del trabajo, los salarios y el producto cuando una IA con conocimiento \(z_{AI}\) puede resolver problemas y, además, puede o no actuar autónomamente?

La comparación tiene **dos dimensiones distintas**:

1. **capacidad**, medida por \(z_{AI}\);
2. **autonomía**: una IA autónoma puede producir como coworker y asesorar como solver; una IA no autónoma solo puede asesorar.

## 2. Problema del agente y de la firma

Cada humano tiene conocimiento \(z\in[0,1]\) y una unidad de tiempo. La dificultad de una oportunidad es \(x\sim U[0,1]\), de modo que el agente resuelve solo cuando \(x\le z\). Una consulta al solver consume \(h\in(0,1)\) unidades de su tiempo. Por eso, un solver que ayuda a trabajadores de tipo \(z\) puede supervisar

$$
n(z)=\frac{1}{h(1-z)},\qquad h\,n(z)(1-z)=1.
$$

Los humanos eligen entre producir solos, trabajar en la capa inferior o ser solvers. Las firmas competitivas eligen estructura y matching. Sus beneficios relevantes son

$$
\Pi_2^{nA}(s,z)=n(z)[s-w(z)]-w(s),
$$

$$
\Pi_2^{tA}(z)=n(z)[z_{AI}-w(z)]-r,
\qquad
\Pi_2^{bA}(s)=n(z_{AI})[s-r]-w(s).
$$

En equilibrio competitivo, \(\Pi=0\). La IA autónoma tiene un costo de oportunidad: una unidad de cómputo usada como solver también podría producir sola, por lo que \(r^A>0\). La IA no autónoma deja cómputo ocioso y \(r^N=0\).

## 3. Resultado principal y condiciones

**Proposición 5 — IA autónoma.** Si

$$
B=\{z<z_{AI}:w^A(z)>w(z)\},\qquad
T=\{z>z_{AI}:w^A(z)>w(z)\},
$$

entonces los ganadores aparecen en los extremos. Existe \(\bar z_{AI}\in\operatorname{int}W\) tal que

$$
B\neq\varnothing \iff z_{AI}>\bar z_{AI}.
$$

Por tanto, el bottom gana con IA autónoma **solo si la IA es suficientemente capaz**. Bajo el supuesto principal \(h<h_0\) y mientras \(z_{AI}\in[0,1)\), siempre hay ganadores en el top: \(T\neq\varnothing\). Esta conclusión no es general si \(h\ge h_0\), y con \(z_{AI}=1\) los humanos más conocedores pueden perder.

**Proposición 6 — IA no autónoma.** El equilibrio es único, eficiente, maximiza ingreso laboral y \(r^N=0\). Si \(z_{AI}\le w(0)\), la IA no se usa y salarios y ocupaciones coinciden con el equilibrio pre-IA. Si \(z_{AI}>w(0)\), la usan como solver únicamente los individuos menos conocedores. Además:

$$
Y^A>Y^N,
$$

$$
\exists\varepsilon>0:\quad
w^N(z)\ge\max\{w(z),w^A(z)\}
\quad\forall z\in[0,\varepsilon),
$$

con desigualdad estricta si \(z_{AI}>w(0)\), mientras que cerca del top

$$
w^N(z)\le w^A(z),
$$

estrictamente para \(z\ne1\).

## 4. Derivación discreta y veredicto

En una economía con tipos \(z_L<a<z_H\), \(z_{AI}=a\) y \(n_L=1/[h(1-z_L)]>1\), beneficio cero da

$$
w_L^A=a\left(1-\frac1{n_L}\right),
\qquad
w_L^N=a.
$$

Así, para \(a>0\),

$$
w_L^N-w_L^A=\frac{a}{n_L}>0.
$$

La IA no autónoma favorece relativamente al tipo bajo porque no compite con él en producción y no tiene costo de oportunidad como productor independiente.

La derivación manual en `hand/` también dejó visible un paso que debía corregirse: la inclusión del conjunto factible solo prueba \(Y^A\ge Y^N\). Para obtener la desigualdad estricta del paper, \(Y^A>Y^N\), hay que usar que la autonomía habilita una oportunidad productiva adicional con valor positivo para el cómputo que, bajo no autonomía, queda ocioso.

## 5. Interpretación

Restringir la autonomía favorece relativamente al bottom, pero reduce el producto agregado. Sin embargo, la afirmación “el efecto distributivo depende de autonomía, no de capacidad” es incompleta: el bottom gana con IA autónoma si y solo si \(z_{AI}>\bar z_{AI}\), y la IA no autónoma solo se adopta si \(z_{AI}>w(0)\). **La autonomía determina qué usos del cómputo son posibles; la capacidad determina cuándo esos usos alteran el equilibrio.**

## Contenido del repositorio

- `README.md`: pregunta, problema del agente, resultados y condiciones.
- `prompts.md`: conversación original sin editar.
- `hand/`: derivación discreta escrita a mano.
- `presentation.tex` y `presentation.pdf`: presentación Beamer de 20 minutos.
- `lean/`: carpeta completa generada por AppliedModelingLib, con código, estado, auditorías y documentación.

