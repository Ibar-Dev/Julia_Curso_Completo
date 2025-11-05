# Contador de palabras en un texto

function contar_palabras(texto::String)
    palabras = split(texto)
    return length(palabras)
end

texto = "Julia es un lenguaje rápido y fácil de aprender"
println("Cantidad de palabras: $(contar_palabras(texto))")
