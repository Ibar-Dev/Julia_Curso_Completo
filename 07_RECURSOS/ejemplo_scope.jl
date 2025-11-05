# Ejemplo temático: Scope (ámbito de variables)

function ejemplo_scope()
    x = 10
    if x > 5
        y = 20
        println("Dentro del if: x=$x, y=$y")
    end
    # println(y) # Esto da error porque y solo existe dentro del if
end

ejemplo_scope()
# Ejemplo temático: Scope (ámbito de variables)

function ejemplo_scope()
    x = 10
    if x > 5
        y = 20
        println("Dentro del if: x=$x, y=$y")
    end
    # println(y) # Esto da error porque y solo existe dentro del if
end

ejemplo_scope()
