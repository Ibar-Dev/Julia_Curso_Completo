# Módulo avanzado con submódulo y gestión de dependencias

module MiModulo

using Dates

export saludar, SubConfig

function saludar(nombre)
    println("Hola, $nombre! Hoy es $(Dates.today())")
end

module SubConfig
    export mostrar_config
    const APP_NAME = "ModuloAvanzado"
    const VERSION = "2.0.0"
    function mostrar_config()
        println("App: $APP_NAME, versión: $VERSION")
    end
end

end # module MiModulo
