# Ejemplo de integración Julia-Python con PyCall

using PyCall

# Llamar función de la librería estándar de Python
math = pyimport("math")
println("Raíz cuadrada en Python: ", math.sqrt(16))

# Usar numpy desde Julia
np = pyimport("numpy")
arr = np.array([1,2,3,4])
println("Array numpy: ", arr)
println("Suma numpy: ", np.sum(arr))
