# MA205 - Numerical Analysis 🐲
[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

# System of Linear Equations
- ## Gaussian Elimination
  usage: $\space$ `[x, returnValue] = gaussian_elimination(A, B);`
  
  `returnValue` :
  - 0 : sucessful execution
  - 1 : $A$ is not a square matrix
  - 2 : $|A|$ is $0$
  
  It is advised to read `x` if and only if `returnValue` is 0.
  - ### Partial Pivotting
    usage: $\space$ `[x, returnValue] = gaussian_elimination_partial_pivot(A, B);`
  - ### Gauss - Jordan Elimination (pending)   
- ## LU Decomposition
  usage: $\space$ `[x, returnValue] = LU_factorisation(A, B);`
    
  `returnValue` :
  - 0 : sucessful execution
  - 1 : $A$ is not a square matrix
  - 2 : $|A|$ is $0$
  
  It is advised to read `x` if and only if `returnValue` is 0.
  
- ## Jacobi Method (pending)
- ## Gauss - Scidel Method (pending)
  - ### Successive Over-Relaxation (pending)

# Root Finding
- ## Bisection
  usage: ` [root, num_iterations] = bisection(f, a, b, tolerance, max_iterations)`
- ## Secant
    usage: ` [root, num_iterations] = secant(f, x0, x1, tolerance, max_iterations)`
  - ### Regular Falsi
     usage: ` [root, num_iterations] = secant_regular_falsi(f, x0, x1, tolerance, max_iterations)`
- ## Newton - Raphson
    usage: ` [root, num_iterations, returnValue] = bisection(f, Df, x0, tolerance, max_iterations)`
      
  `returnValue` :
  - 0 : sucessful execution
  - 1 : $\frac{df}{dx}|_{root} = 0$
  
- ## Fixed Point Iteration
  solves $g(x) = x$
  
  usage: ` [root, num_iterations] = fixed_point_itteration(g, x, tolerance, max_iterations)`

# Interpolation & Extrapolation
- ## Lagrange's Interpolation Formula
  usage: `f = lagrange_interpolation(X, Y);`
  
- ## Newton's Divided Differences
  - ### Forward Differences
    usage: `f = newton_forward_difference(X, Y);`
  - ### Backward Differences
    usage: `f = newton_backward_difference(X, Y);`
  - ### Centeral Differences (pending)

