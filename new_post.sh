#!/bin/bash

if [ -z "$1" ]
then
    echo "Por favor, proporciona un título para el post."
    exit 1
fi

title="$1"
date_with_time=$(date +"%Y-%m-%d %H:%M:%S %z")
date_without_time=$(date +"%Y-%m-%d")
filename="_posts/$date_without_time-$(echo $title | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g').markdown"

cp /Users/test01test/Documents/consultoria/editorial/web/websites/post_template.md "$filename"
sed -i.bak "s/Título del post/$title/; s/AAAA-MM-DD/$date_with_time/" "$filename"
rm "$filename.bak"

echo "Escribe el contenido del post y presiona Ctrl-D cuando termines:"
content=$(</dev/stdin)
echo "$content" >> "$filename"


echo "Si has colocado imágenes en la carpeta /img éstas se añadirán como imagenes clicables, necesito que me escribas la URL hacia la que quieres que apunten las imágenes, es decir, a donde irán cuando se les haga click con el ratón encima:"
echo ""
echo "🚨🔴🚨 ¡Recuerda añadir los enlaces con el protocolo https://! 🔴🚨🔴"
read image_url

if [ ! -z "$image_url" ]
then
    echo "Añadiendo imágenes clicables..."
    for image in img/*
    do
        image_name=$(basename "$image")
        echo "Procesando imagen $image_name..."
        echo "<br>[![Descripción de la imagen]({{ '/assets/images/$image_name' | absolute_url }}){: .image-link }]($image_url)<br>" >> "$filename"
    done
fi







echo "Nuevo post creado: $filename"

