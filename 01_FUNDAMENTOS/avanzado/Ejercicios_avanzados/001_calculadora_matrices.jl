# Calculadora de matrices

using LinearAlgebra
A = [1 2; 3 4]
B = [2 0; 1 2]

suma = A + B
producto = A * B
detA = det(A)

println("Suma de matrices:\n$suma")
println("Producto de matrices:\n$producto")
println("Determinante de A: $detA")
