# Juego: Adivina el número

function adivina_numero()
    secreto = rand(1:100)
    intentos = 0
    println("Adivina el número entre 1 y 100")
    while true
        print("Tu intento: ")
        intento = parse(Int, readline())
        intentos += 1
        if intento == secreto
            println("¡Correcto! Lo lograste en $intentos intentos.")
            break
        elseif intento < secreto
            println("Demasiado bajo.")
        else
            println("Demasiado alto.")
        end
    end
end

# adivina_numero() # Descomenta para jugar en REPL
# Juego: Adivina el número

function adivina_numero()
    secreto = rand(1:100)
    intentos = 0
    println("Adivina el número entre 1 y 100")
    while true
        print("Tu intento: ")
        intento = parse(Int, readline())
        intentos += 1
        if intento == secreto
            println("¡Correcto! Lo lograste en $intentos intentos.")
            break
        elseif intento < secreto
            println("Demasiado bajo.")
        else
            println("Demasiado alto.")
        end
    end
end

# adivina_numero() # Descomenta para jugar en REPL
