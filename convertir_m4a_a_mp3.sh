#!/bin/bash

# Verificar ffmpeg
if ! command -v ffmpeg &> /dev/null; then
    echo "❌ Error: ffmpeg no está instalado. Instálalo con:"
    echo "   sudo pacman -S ffmpeg"
    exit 1
fi

# Convertir TODOS los M4A (aunque se llamen .mp3) a MP3 reales
echo "🔍 Buscando archivos M4A disfrazados..."
for file in *.*; do
    if file --mime-type "$file" | grep -q "audio/x-m4a"; then
        # Generar un nombre temporal único para evitar conflictos
        temp_file="temp_${file%.*}.mp3"
        echo "🎧 Convirtiendo: $file → $temp_file"
        
        # Convertir a MP3 (sin preguntar sobrescritura)
        ffmpeg -i "$file" -codec:a libmp3lame -q:a 2 -ar 44100 -ac 2 "$temp_file" -v quiet -y
        
        # Borrar el original y renombrar el temporal
        rm "$file"
        mv "$temp_file" "${file%.*}.mp3"
    fi
done

echo "✅ ¡Conversión completa! Ahora son MP3 reales (sin M4A ocultos)."