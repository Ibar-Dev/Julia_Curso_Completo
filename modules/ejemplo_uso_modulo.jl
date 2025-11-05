# Ejemplo de uso de módulo avanzado y submódulo

include("MiModulo.jl")
using .MiModulo

println(saludar("Estudiante"))
println("La suma de 2 + 3 es: ", sumar(2, 3))
using .MiModulo.SubConfig
mostrar_config()
# Ejemplo de uso de módulo avanzado y submódulo

include("MiModulo.jl")
using .MiModulo

saludar("Julia")
using .MiModulo.SubConfig
mostrar_config()
