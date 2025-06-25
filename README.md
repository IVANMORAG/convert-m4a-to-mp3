# 🎧 Convert M4A to Real MP3

Script en Bash que **detecta y convierte archivos M4A (incluso si tienen extensión .mp3) a MP3 reales**, usando FFmpeg.

## 🚀 ¿Por qué usar este script?
- Algunos archivos .mp3 en realidad son **M4A/AAC con extensión cambiada** (mal convertidos).
- Este script verifica el formato **real** con `file` y los convierte correctamente a MP3.

## 📦 Requisitos
- `bash` (probado en Linux/macOS)
- `ffmpeg` (para conversión)
- `file` (para detectar el tipo real)

## ⚙️ Instalación
```bash
git clone https://github.com/tuusuario/convert-m4a-to-mp3.git
cd convert-m4a-to-mp3
chmod +x convert.sh
```
