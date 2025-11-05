# Ejercicios sobre map() y sintaxis do

# 1. Eleva al cubo cada elemento de un array usando map y función anónima
cubos = map(x -> x^3, [2, 4, 6])
println("Cubos: $cubos")

# 2. Convierte una lista de strings a mayúsculas usando map y do
palabras = ["julia", "es", "potente"]
mayusculas = map(palabras) do palabra
    uppercase(palabra)
end
println("Mayúsculas: $mayusculas")

# 3. Suma 10 a cada elemento de un array usando map y do
numeros = [5, 10, 15]
sumados = map(numeros) do n
    n + 10
end
println("Sumados: $sumados")
# Ejercicios sobre map() y sintaxis do

# 1. Eleva al cubo cada elemento de un array usando map y función anónima
cubos = map(x -> x^3, [2, 4, 6])
println("Cubos: $cubos")

# 2. Convierte una lista de strings a mayúsculas usando map y do
palabras = ["julia", "es", "potente"]
mayusculas = map(palabras) do palabra
    uppercase(palabra)
end
println("Mayúsculas: $mayusculas")

# 3. Suma 10 a cada elemento de un array usando map y do
numeros = [5, 10, 15]
sumados = map(numeros) do n
    n + 10
end
println("Sumados: $sumados")
