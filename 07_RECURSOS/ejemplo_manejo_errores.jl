# Ejemplo temático: Manejo de errores

function dividir(a, b)
    try
        return a / b
    catch e
        println("Error: $e")
        return nothing
    end
end

println(dividir(10, 2))
println(dividir(10, 0))
