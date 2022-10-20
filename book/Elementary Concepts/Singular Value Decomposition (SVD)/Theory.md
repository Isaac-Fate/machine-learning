# Theory

````{prf:theorem}

Let $A$ be an $m \times n$ real matrix with rank $r$. Then $A$ can be decomposed by 

```{math}
\begin{align*}
A = U \Sigma V^\top\end{align*}
```

where $U$ and $V$ are orthogonal matrices with shape $m \times m$ and $n \times n$, respectively. $\Sigma$ is an $m \times n$ matrix in the form of

```{math}
\begin{align*}\left[\begin{array}{ccc|c}\sigma_1 &  & & \\& \ddots& & 0 \\& & \sigma_r & \\\hline& 0 & & 0
\end{array}
\right]\end{align*}
```

where $\sigma_1, \ldots, \sigma_r$ are nonnegative numbers satisfying

```{math}
\begin{align*}\sigma_1 \geq\cdots\geq\sigma_r > 0
\end{align*}
```

````

````{prf:proof}
TODO

````
