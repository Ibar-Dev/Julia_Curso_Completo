# Errores frecuentes en Julia y cómo solucionarlos

- **UndefVarError**: Variable no definida. Solución: declara la variable antes de usarla.
- **MethodError**: Llamada a función con tipos de argumentos incorrectos. Solución: revisa los tipos y define métodos adecuados.
- **BoundsError**: Índice fuera de rango en arrays. Solución: verifica los límites del array.
- **LoadError**: Error al cargar archivos o módulos. Solución: revisa rutas y dependencias.
- **TypeError**: Operación entre tipos incompatibles. Solución: convierte los tipos explícitamente.
- **StackOverflowError**: Recursión infinita. Solución: revisa condiciones de salida en funciones recursivas.
- **PkgError**: Problemas al instalar paquetes. Solución: actualiza el registro y verifica la conexión a internet.
- **Ambigüedad en métodos**: Métodos con firmas similares. Solución: especializa los métodos o usa tipos más específicos.
- **Problemas de performance**: Código lento por variables globales o tipos inestables. Solución: usa funciones y tipado explícito.
