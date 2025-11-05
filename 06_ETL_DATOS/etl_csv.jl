# ETL de CSV en Julia

using CSV, DataFrames

df = CSV.read("datos.csv", DataFrame)
println("Primeras filas:")
println(first(df, 5))

# Filtrar y guardar
filtrado = filter(row -> row.edad > 30, df)
CSV.write("mayores_30.csv", filtrado)
