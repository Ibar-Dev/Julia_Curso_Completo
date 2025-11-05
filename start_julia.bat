@echo off
REM Script de inicio rápido para el curso de Julia (Windows)
REM Uso: start_julia.bat [opciones]

REM Cambiar al directorio del script
cd /d "%~dp0"

REM Mostrar mensaje de bienvenida
echo 🚀 Iniciando Julia Curso Completo...
echo 📁 Directorio: %CD%
echo 📦 Activando entorno del proyecto...

REM Ejecutar Julia con el proyecto activado
julia --project=. %*