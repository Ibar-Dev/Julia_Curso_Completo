# Algoritmo genético simple

# Este ejemplo muestra la estructura básica de un algoritmo genético

function fitness(x)
    return -abs(x - 42)
end

poblacion = rand(1:100, 10)
for generacion in 1:20
    scores = fitness.(poblacion)
    mejor = poblacion[argmax(scores)]
    println("Generación $generacion, mejor individuo: $mejor, fitness: $(fitness(mejor))")
    # Mutación simple
    poblacion = poblacion .+ rand(-2:2, 10)
end
