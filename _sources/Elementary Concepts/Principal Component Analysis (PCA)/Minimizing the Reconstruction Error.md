# Minimizing the Reconstruction Error


Along a certain direction $\mathbf{w}$($\mathbf{w} = 1$), the projected point of $\mathbf{x}_i$ is given by (the data is assumed to have zero mean)

```{math}
\begin{align*}\mathbf{p}_i = (\mathbf{w}^\top\mathbf{x}_i) \mathbf{w}_i
\end{align*}
```

Consider minimizing the mean square:

```{math}
:label: eq:1
\begin{align}\frac{1}{n}\sum_{i=1}^n \norm{\mathbf{x}_i - \mathbf{p}_i}\end{align}
```


Let $t_i = \mathbf{w}^\top\mathbf{x}_i$, it can be shown that 

```{math}
\begin{align*}\frac{1}{n}\sum_{i=1}^n \norm{\mathbf{x}_i - \mathbf{p}_i}
= \frac{1}{n}\sum_{i=1}^n \norm{\mathbf{x}_i}^2
- \frac{n-1}{n}\var(t_1, \ldots, t_n)
\end{align*}
```

Therefore, to minimize the mean square error {eq}`eq:1` is equivalent to maximize the variance

```{math}
\begin{align*}\var(t_1, \ldots, t_n)
\end{align*}
```
