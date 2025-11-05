# Ejemplo temático: Pares clave-valor con =>

dic = Dict("uno" => 1, "dos" => 2, "tres" => 3)
println("Diccionario: $dic")
for (clave, valor) in dic
    println("Clave: $clave, Valor: $valor")
end
