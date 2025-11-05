# Ejemplo temático: Despacho múltiple

# Julia selecciona el método adecuado según el tipo de los argumentos
function area(r::Float64)
    return pi * r^2
end

function area(l::Int, w::Int)
    return l * w
end

println("Área de círculo: ", area(3.0))
println("Área de rectángulo: ", area(4, 5))
