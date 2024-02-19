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
- ## Secant
  - ### Regular Falsi
- ## Newton - Raphson
- ## Fixed Point Iteration

# Interpolation & Extrapolation
- ## Lagrange's Interpolation Formula
- ## Newton's Divided Differences
  - ### Forward Differences
  - ### Backward Differences
  - ### Centeral Differences (pending)

