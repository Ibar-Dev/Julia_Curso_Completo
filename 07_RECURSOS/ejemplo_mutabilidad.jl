# Ejemplo temático: Mutabilidad

mutable struct Contador
    valor::Int
end

c = Contador(0)
c.valor += 1
println("Valor del contador: ", c.valor)
# Ejemplo temático: Mutabilidad

mutable struct Contador
    valor::Int
end

c = Contador(0)
c.valor += 1
println("Valor del contador: ", c.valor)
