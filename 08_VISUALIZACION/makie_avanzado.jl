# Visualización avanzada con Makie.jl

using CairoMakie
x = 0:0.1:2π
y = sin.(x)
fig = Figure()
ax = Axis(fig[1, 1], title="Seno con Makie", xlabel="x", ylabel="sin(x)")
lines!(ax, x, y, color=:blue)
fig
