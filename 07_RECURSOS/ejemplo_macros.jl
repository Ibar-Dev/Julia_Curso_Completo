# Ejemplo temático: Macros en Julia

macro di_hola()
    return :(println("¡Hola desde una macro!"))
end

@di_hola
