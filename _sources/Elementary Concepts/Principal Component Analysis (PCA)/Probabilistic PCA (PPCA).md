# Probabilistic PCA (PPCA)


Suppose $(\mathbf{x}_1, \ldots, \mathbf{x}_n)$ is a sample of $d$-dimensional data. We assume random variable $\mathbf{x}$ is generated from some low dimensional latent variable $\mathbf{z}\in\R^l$ where typically $l \ll d$. Then $\mathbf{x}$ can be modelled by 

```{math}
\begin{align*}\mathbf{x} = F \mathbf{z} + \boldsymbol{\mu} + \boldsymbol{\varepsilon}\end{align*}
```

where $\boldsymbol{\mu}$ is the mean of $\mathbf{x}$ and $\boldsymbol{\varepsilon}\sim\mathcal{N}(\mathbf{0}, \sigma^2 I)$ is a noise term which captures the details of $\mathbf{x}$. The latent variable $\mathbf{z}$ is also assumed normal, more precisely, standard normal. That is, $\mathbf{z}\sim\mathcal{N}(\mathbf{0}, I)$. The parameters to fit are $F$, $\boldsymbol{\mu}$ and $\sigma^2$.



How to fit the parameters?



Optimal $F$:

```{math}
\begin{align*}\hat{F} = U_l \left( \Lambda_l - \sigma^2 I \right)^{\frac{1}{2}} R
\end{align*}
```


Optimal $\sigma^2$:

```{math}
\begin{align*}\hat{\sigma}^2 = \frac{1}{d - l}\sum_{i=l+1}^k \lambda_i
\end{align*}
```
