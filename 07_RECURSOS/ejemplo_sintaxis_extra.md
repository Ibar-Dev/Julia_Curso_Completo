# Ejemplos de sintaxis especial en Julia

## Uso de begin...end
Permite agrupar varias líneas en una sola expresión:
```julia
begin
    x = 5
    y = 10
    println(x + y)
end
```

## Uso de ; para separar expresiones en una línea
```julia
x = 1; y = 2; println(x + y)
```

## Interpolación de variables en strings
```julia
nombre = "Julia"
println("Hola $nombre")
```

## Asignación múltiple
```julia
a, b = 1, 2
println(a, b)
```

## Rango y comprehensions
```julia
rango = 1:5
cuadrados = [x^2 for x in rango]
println(cuadrados)
```

## Uso de ... para splatting (expandir argumentos)
```julia
v = [1, 2, 3]
println(v...)
```

Estos ejemplos te ayudarán a dominar la sintaxis única y poderosa de Julia.
