# config.jl
# Ejemplo de uso de un script de otra carpeta

include("../utils/settings.jl")

saludo_config()
println("Configuración cargada: $APP_NAME, versión $VERSION")
