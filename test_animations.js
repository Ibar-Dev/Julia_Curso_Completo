// Archivo de prueba para verificar animaciones de VSCode

function testAnimationEffects() {
    console.log("🎬 Probando animaciones en VSCode");

    const tabs = ["Tab 1", "Tab 2", "Tab 3", "Tab 4"];
    const commands = [
        "File: Save",
        "Edit: Copy",
        "View: Toggle Minimap",
        "Terminal: Toggle Terminal"
    ];

    // Simulación de múltiples líneas para probar scrolling
    const scrollContent = Array.from({length: 100}, (_, i) =>
        `Línea ${i + 1}: Este es un contenido de prueba para verificar las animaciones de scrolling en VSCode.`
    ).join('\n');

    return {
        message: "✅ Animaciones configuradas",
        tabs,
        commands,
        scrollContent
    };
}

// Ejecutar prueba
const result = testAnimationEffects();
console.log(result);