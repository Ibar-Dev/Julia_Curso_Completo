### Pluto.jl notebook: Optimización y Buenas Prácticas en Julia ###

using Markdown
using BenchmarkTools

md"""
# Optimización y Buenas Prácticas en Julia

Este notebook te enseña cómo escribir código eficiente y profesional en Julia, midiendo tiempos y evitando errores comunes.
"""

md"""
## 1. Variables globales vs locales
Evita usar variables globales en funciones para mejor rendimiento.
"""

begin
    x = 10
    function suma_global()
        return x + 5
    end
    function suma_local(x)
        return x + 5
    end
    println("Global: ", suma_global())
    println("Local: ", suma_local(10))
end

md"""
## 2. Tipado explícito
El tipado ayuda al compilador a optimizar el código.
"""

function suma_tipada(a::Int, b::Int)
    return a + b
end
println("Suma tipada: ", suma_tipada(3, 7))

md"""
## 3. Medir performance
Usa @time y BenchmarkTools para comparar velocidad.
"""

function suma_lenta(v)
    s = 0
    for x in v
        s += x
    end
    return s
end

v = rand(1:100, 10^6)
@time suma_lenta(v)
@benchmark suma_lenta(v)

md"""
## 4. Vectorización y broadcasting
Prefiere operaciones vectorizadas para mayor velocidad.
"""

v2 = rand(1:100, 10^6)
@time sum(v2)
@benchmark sum(v2)

md"""
## 5. Uso de funciones puras y modulares
Divide el código en funciones pequeñas y reutilizables.
"""

function cuadrado(x)
    return x^2
end
resultados = map(cuadrado, [1,2,3,4])
println("Cuadrados: ", resultados)

md"""
## 6. Benchmark de funciones anónimas y do
"""

@benchmark map(x -> x^2, v2)
@benchmark map(v2) do x
    x^2
end

md"""
## 7. Consejos finales
- Usa Pluto para experimentar y medir cambios en tiempo real
- Documenta tus funciones
- Prefiere tipado explícito y vectorización
- Usa BenchmarkTools para comparar implementaciones
"""
