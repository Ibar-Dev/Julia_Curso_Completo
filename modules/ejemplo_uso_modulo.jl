# Ejemplo de uso de módulo avanzado y submódulo

include("MiModulo.jl")
using .MiModulo

saludar("Julia")
using .MiModulo.SubConfig
mostrar_config()
