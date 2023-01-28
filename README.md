# Quantum Software Final Project
by Harshil Avlani, Christina Trinh, Vibusha Vadivel, Audrey Wei

## Description
QAOA (Quantum Approximate Optimization Algorithm) is a quantum algorithm for solving combinatorial optimization problems, such as the Maximum Cut Problem (MAXCUT). The algorithm was first introduced by Farhi, Goldstone, and Gutmann in 2014. It is a hybrid quantum-classical algorithm that uses a quantum computer to find the approximate solution to an optimization problem and classical optimization to find the best parameters.

The basic idea behind QAOA is to use a quantum computer to find the approximate solution to an optimization problem. The algorithm starts by initializing the quantum state of a set of qubits (the basic unit of quantum information) to a simple state, such as the equal superposition state. The qubits are then evolved under a series of unitary operations, known as the QAOA circuit, which are chosen to encode the problem of interest. The final state of the qubits encodes the approximate solution to the optimization problem.

The QAOA circuit is parameterized by a set of angles $\boldsymbol{\beta}$ and $\boldsymbol{\gamma}$, which determine the evolution of the qubits. The circuit can be represented mathematically as:

$$ U(\boldsymbol{\beta},\boldsymbol{\gamma}) = \prod_{i=1}^p e^{-i\beta_i C} e^{-i\gamma_i B} $$

Where $C$ and $B$ are the cost and mixing Hamiltonians, respectively. The cost Hamiltonian $C$ encodes the problem of interest and the mixing Hamiltonian $B$ is chosen to spread the information of the cost Hamiltonian over all qubits.

QAOA uses a parameterized circuit, which can be optimized using classical optimization techniques to find the best parameters that minimize the cost function of the problem. The algorithm can be run multiple times with different initial parameters to increase the probability of finding the global minimum.

This implementation of QAOA includes modifications of $C$ and $B$ to solve both the [MAXCUT](https://en.wikipedia.org/wiki/Maximum_cut) problem and the [Travelling Salesman Problem](https://en.wikipedia.org/wiki/Travelling_salesman_problem) (TSP). 


