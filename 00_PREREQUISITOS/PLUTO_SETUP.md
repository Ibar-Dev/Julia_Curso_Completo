# Guía de Instalación y Uso de Pluto.jl

Pluto.jl es un entorno de notebook reactivo para Julia, ideal para aprender y experimentar de forma interactiva. Aquí encontrarás instrucciones para instalar y usar Pluto, así como consejos y solución de problemas comunes.

## Instalación rápida
1. Instala Julia desde [julialang.org](https://julialang.org/downloads/)
2. Abre Julia y ejecuta:
```julia
using Pkg
Pkg.add("Pluto")
```
3. Ejecuta Pluto:
```julia
using Pluto
Pluto.run()
```
Esto abrirá Pluto en tu navegador en `http://localhost:1234`

## Ventajas de Pluto.jl
- Reactividad automática
- Gestión de dependencias integrada
- Exportación a HTML
- Interfaz moderna y responsiva
- Seguridad en variables y celdas

## Solución de problemas comunes
- Si Pluto no abre, prueba otro puerto: `Pluto.run(port=8080)`
- Instala paquetes en celdas separadas para evitar conflictos
- Consulta la [documentación oficial](https://plutojl.org/) para más ayuda

## Recursos adicionales
- [Documentación de Pluto.jl](https://plutojl.org/)
- [Galería de notebooks](https://plutojl.org/en/docs/sample-notebooks/)
- [Julia Academy](https://juliaacademy.com/)

¡Disfruta aprendiendo Julia con Pluto! 🚀
