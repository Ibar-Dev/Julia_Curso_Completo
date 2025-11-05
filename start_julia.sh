#!/bin/bash

# Script de inicio rápido para el curso de Julia
# Uso: ./start_julia.sh [opciones]

# Cambiar al directorio del script
cd "$(dirname "$0")"

# Mostrar mensaje de bienvenida
echo "🚀 Iniciando Julia Curso Completo..."
echo "📁 Directorio: $(pwd)"
echo "📦 Activando entorno del proyecto..."

# Ejecutar Julia con el proyecto activado
julia --project=. "$@"