# Calculadora básica

function calculadora()
    println("Ingrese el primer número:")
    a = parse(Float64, readline())
    println("Ingrese el segundo número:")
    b = parse(Float64, readline())
    println("Operación (+, -, *, /):")
    op = readline()
    resultado = op == "+" ? a + b : op == "-" ? a - b : op == "*" ? a * b : op == "/" ? a / b : "Operación inválida"
    println("Resultado: $resultado")
end

# calculadora() # Descomenta para usar en REPL
