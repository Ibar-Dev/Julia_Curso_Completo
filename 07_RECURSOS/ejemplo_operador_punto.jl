# Ejemplo temático: Operador punto . para operaciones elementwise

v = [1, 2, 3, 4]
cuadrados = v .^ 2 # Eleva cada elemento al cuadrado
suma = v .+ 10     # Suma 10 a cada elemento
println("Cuadrados: $cuadrados")
println("Suma: $suma")

# Broadcasting con funciones
f = x -> x^3
cubos = f.(v)
println("Cubos: $cubos")
