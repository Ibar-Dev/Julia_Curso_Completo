# Ejercicio básico: Módulos

module Saludo
export saludar

function saludar(nombre)
    println("¡Hola, $nombre!")
end

end

using .Saludo
Saludo.saludar("Julia")
