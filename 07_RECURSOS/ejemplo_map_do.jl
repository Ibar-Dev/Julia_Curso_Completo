# Ejemplo temático: Uso de map() y sintaxis do

# Usando función anónima
cuadrados1 = map(x -> x^2, [1, 2, 3, 4])
println("Cuadrados con función anónima: $cuadrados1")

# Usando sintaxis do
cuadrados2 = map([1, 2, 3, 4]) do x
    x^2
end
println("Cuadrados con sintaxis do: $cuadrados2")

# Ejemplo con función de varias líneas
resultados = map([1, 2, 3, 4]) do x
    y = x^2
    if y > 5
        return y
    else
        return 0
    end
end
println("Resultados con lógica condicional: $resultados")
