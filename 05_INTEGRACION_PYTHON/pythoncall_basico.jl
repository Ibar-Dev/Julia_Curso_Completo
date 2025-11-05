# Ejemplo de integración Julia-Python con PythonCall

using PythonCall

# Importar módulo estándar
math = pyimport("math")
println("Coseno en Python: ", math.cos(0))

# Usar pandas desde Julia
pd = pyimport("pandas")
df = pd.DataFrame(Dict("a" => [1,2,3], "b" => [4,5,6]))
println("DataFrame pandas:\n", df)
