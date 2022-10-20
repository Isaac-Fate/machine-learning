# Maximizing the Variance


Let $(\mathbf{x}_1, \ldots, \mathbf{x}_n)$ be a sample of $d$-dimensional data with *zero mean*, that is, $\mathbf{x}_i \in\R^d$ and $\bar{\mathbf{x}} = \mathbf{0}$. If the data does not have zero mean, then we can always first shift it so that it is centered at its mean. 



Now, we want to find a direction $\mathbf{w}\in\R^d$($\norm{\mathbf{w}} = 1$) such that all the data points projected to this direction will preserve the maximum variance. For point $\mathbf{x}_i$, let 

```{math}
\begin{align*}
t_i = \mathbf{w}^\top\mathbf{x}_i
\end{align*}
```

then our goal is to maximize $\var(t_1, \ldots, t_n)$, i.e., to solve the following optimization problem:

```{math}
\begin{alignat*}2\max&\quad& &\var(t_1, \ldots, t_n) \\\text{s.t.}& & &\norm{\mathbf{w}} = 1
\end{alignat*}
```


It can be shown that 

```{math}
\begin{align*}\var(t_1, \ldots, t_n)
= \frac{1}{n-1}\sum_{i=1}^n \mathbf{w}^\top\mathbf{x}_i \mathbf{x}_i^\top\mathbf{w}
= \mathbf{w}^\top S \mathbf{w}\end{align*}
```

By {prf:ref}`thm:1`, the maximum value of the variance $\var(t_1, \ldots, t_n)$ is the largest eigenvalue of the sample covariance matrix $S$.



What will happen if we apply the PCA to the sample data without first center it at its mean?


```{math}
\begin{align*}\mathbf{w}^\top(\mathbf{x}_i - \bar{\mathbf{x}})
= \mathbf{w}^\top\mathbf{x}_i 
- \mathbf{w}^\top\bar{\mathbf{x}}\end{align*}
```

This implies projected value or the component score will be shifted by $\mathbf{w}^\top\bar{\mathbf{x}}$. We can fix this by re-center it after PCA.

