# Calculadora de interés compuesto

function interes_compuesto(principal, tasa, años)
    return principal * (1 + tasa)^años
end

principal = 1000
tasa = 0.05
años = 3
resultado = interes_compuesto(principal, tasa, años)
println("Interés compuesto de $principal al 5% por $años años: $resultado")
