# ETL de JSON en Julia

using JSON

json_str = read("datos.json", String)
data = JSON.parse(json_str)

# Acceder a datos
println("Nombre: ", data["nombre"])

# Modificar y guardar
nuevo = Dict("nombre" => "Ana", "edad" => 28)
open("nuevo.json", "w") do f
    write(f, JSON.json(nuevo))
end
