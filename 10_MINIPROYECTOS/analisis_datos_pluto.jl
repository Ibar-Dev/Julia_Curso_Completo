### Pluto.jl notebook: Mini-proyecto de análisis de datos ###

using DataFrames, CSV, Plots, Statistics, Markdown

md"""
# Mini-proyecto: Análisis de datos en Julia

Este notebook te guía en la carga, exploración y visualización de datos reales.
"""

md"""
## 1. Cargar datos CSV
"""

df = CSV.read("datos.csv", DataFrame)
println("Primeras filas:")
println(first(df, 5))

md"""
## 2. Estadísticas básicas
"""

println("Media de edad: ", mean(df.edad))
println("Máximo salario: ", maximum(df.salario))

md"""
## 3. Visualización
"""

histogram(df.edad, bins=10, title="Distribución de edades", xlabel="Edad", ylabel="Frecuencia")

md"""
## 4. Filtrado y agrupación
"""

mayores = filter(row -> row.edad > 30, df)
println("Mayores de 30 años:")
println(mayores)

md"""
## 5. Guardar resultados
"""

CSV.write("mayores_30.csv", mayores)

md"""
## 6. Siguiente paso: Machine Learning básico
"""

md"""
Puedes instalar MLJ.jl y probar modelos de regresión o clasificación sobre tus datos.
"""
### Pluto.jl notebook: Mini-proyecto de análisis de datos ###

using DataFrames, CSV, Plots, Statistics, Markdown

md"""
# Mini-proyecto: Análisis de datos en Julia

Este notebook te guía en la carga, exploración y visualización de datos reales.
"""

md"""
## 1. Cargar datos CSV
"""

df = CSV.read("datos.csv", DataFrame)
println("Primeras filas:")
println(first(df, 5))

md"""
## 2. Estadísticas básicas
"""

println("Media de edad: ", mean(df.edad))
println("Máximo salario: ", maximum(df.salario))

md"""
## 3. Visualización
"""

histogram(df.edad, bins=10, title="Distribución de edades", xlabel="Edad", ylabel="Frecuencia")

md"""
## 4. Filtrado y agrupación
"""

mayores = filter(row -> row.edad > 30, df)
println("Mayores de 30 años:")
println(mayores)

md"""
## 5. Guardar resultados
"""

CSV.write("mayores_30.csv", mayores)

md"""
## 6. Siguiente paso: Machine Learning básico
"""

md"""
Puedes instalar MLJ.jl y probar modelos de regresión o clasificación sobre tus datos.
"""
