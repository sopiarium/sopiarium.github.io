# Scripts de Automatización

Este repositorio incluye scripts de ejemplo para automatizar tareas comunes de Jekyll.

## 📜 Scripts Disponibles

### 1. `new_post.sh.example` - Crear nuevos posts

Script para crear posts de blog automáticamente con plantilla y front matter.

**Características:**
- Genera nombre de archivo con fecha automática
- Copia plantilla predefinida
- Solicita contenido interactivamente
- Añade imágenes clicables automáticamente
- Formatea título y fecha

**Configuración:**

```bash
# 1. Copia el archivo
cp new_post.sh.example new_post.sh

# 2. Edita y configura la ruta a tu plantilla
nano new_post.sh
# Modifica: POST_TEMPLATE_PATH="/path/to/your/post_template.md"

# 3. Dale permisos de ejecución
chmod +x new_post.sh
```

**Uso:**

```bash
./new_post.sh "Título del Nuevo Post"
```

El script te pedirá:
1. Contenido del post (escribe y presiona Ctrl-D)
2. URL para imágenes clicables (opcional)

**Ejemplo de plantilla** (`post_template.md`):

```markdown
---
layout: post
title: "Título del post"
date: AAAA-MM-DD
categories: blog
---

<!-- El contenido irá aquí -->
```

---

### 2. `actualiza.sh.example` - Deployment a GitHub Pages

Script para construir el sitio Jekyll y copiarlo al repositorio de GitHub Pages.

**Características:**
- Construye el sitio con `jekyll build`
- Limpia el directorio de destino
- Copia archivos generados
- Elimina archivos que no deben publicarse
- Muestra estado de Git para revisión

**Configuración:**

```bash
# 1. Copia el archivo
cp actualiza.sh.example actualiza.sh

# 2. Edita y configura tus rutas
nano actualiza.sh
# Modifica:
#   JEKYLL_SOURCE_DIR="/path/to/your/jekyll/project"
#   GITHUB_PAGES_DIR="/path/to/your/username.github.io"

# 3. Dale permisos de ejecución
chmod +x actualiza.sh
```

**Uso:**

```bash
./actualiza.sh
```

Después de ejecutarlo, completa el proceso manualmente:

```bash
cd /path/to/your/username.github.io
git add .
git commit -m "Actualización del sitio"
git push origin main
```

---

## 🔒 Seguridad

**IMPORTANTE:** Los scripts reales (`new_post.sh` y `actualiza.sh`) están en `.gitignore` porque contienen rutas específicas de tu sistema.

**NO SUBAS** los scripts reales al repositorio público si contienen:
- Rutas absolutas con tu nombre de usuario
- Información de estructura de proyectos privados
- Tokens o credenciales

---

## 🛠️ Requisitos

- **Jekyll** instalado (`gem install jekyll`)
- **Git** configurado
- Repositorio de GitHub Pages (`username.github.io`)

---

## 📝 Notas

- Los archivos `.example` son seguros para subir al repositorio
- Después de configurar, mantén tus scripts reales en local
- Revisa el `.gitignore` para asegurar que los scripts reales están excluidos

---

## 🤝 Contribuciones

Si mejoras estos scripts, por favor comparte las mejoras como archivos `.example` sanitizados.
