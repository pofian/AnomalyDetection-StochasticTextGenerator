# Numerical Methods project

### The project is structured into the following 3 independent methods:

## Method 1: Anomaly Detection
The main function within this method is `optimal_threshold()`, which, based on the `truths` and `probabilities` data, applies the functions `check_predictions()` and `metrics()` for multiple epsilon values from the interval created by the values in the `probabilities` vector.

## Method 2: Kernel Regression
The goal of this method is to determine the vector **a** (of parameters α), which boils down to solving the system **Bx=y**, where **B = λI<sub>n</sub> + K**. This will be done:
1. Iteratively (using the conjugate gradient method)
2. Non-iteratively (by calling the `cholesky()` function, which can be used because we know that the matrix **B** is semi-positive definite).

## Method 3: Text Generation
The method should build the stochastic matrix based on calls to functions that generate dictionaries for sequences and tokens.
