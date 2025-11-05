# Visualización básica con Plots.jl

using Plots
x = 1:10
y = x .^ 2
plot(x, y, label="y = x^2", xlabel="x", ylabel="y", title="Gráfico cuadrático")
