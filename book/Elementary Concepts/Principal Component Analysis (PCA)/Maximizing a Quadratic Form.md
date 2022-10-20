# Maximizing a Quadratic Form


In this section, we turn the focus maximizing a quadratic form $\mathbf{x}^\top A \mathbf{x}$ where $A \in\R^{n \times n}$ is an $n \times n$ positive semi-definite real matrix. To be concise, we shall adopt this setting of $A$ throughout this section. As we will see in a later section, this optimization problem plays an important role on the formulation of PCA.



Since $A$ is positive semi-definite, all its eigenvalues are nonnegative. By convention, we sort the eigenvalues in the descending order:

```{math}
\begin{align*}\lambda_1 \geq\lambda_2 \geq\cdots\geq\lambda_n \geq 0
\end{align*}
```

And the corresponding eigenvectors are denoted by $\mathbf{v}_1, \ldots, \mathbf{v}_n$.


````{prf:theorem}
:label: thm:1

Consider the following optimization problem: 

```{math}
\begin{alignat*}2\max_{\mathbf{x}}&\quad& &\mathbf{x}^\top A \mathbf{x}\\\text{s.t.}& & &\norm{\mathbf{x}} = 1
\end{alignat*}
```

The solution to this problem is any normalized eigenvector $\mathbf{v}$ that is associated with the **largest** eigenvalue $\lambda_1$ of $A$. In particular, eigenvector $\mathbf{v}_1$ is a solution.

````

````{prf:proof}
TODO

````

````{prf:theorem}
:label: thm:2

The solution to the optimization problem

```{math}
\begin{alignat*}2\max_{\mathbf{x}}&\quad& &\mathbf{x}^\top A \mathbf{x}\\\text{s.t.}& & &\begin{cases}
\norm{\mathbf{x}} = 1\\ 
\mathbf{v}_i^\top \mathbf{x} = 0
\quad \forall 1 \leq i \leq j-1
\end{cases}\end{alignat*}
```

is any normalized eigenvector $\mathbf{v}$ associated with $\lambda_j$. In particular, eigenvector $\mathbf{v}_j$ is a solution.

````

````{prf:proof}
TODO

````
