#!/bin/bash

# Verifica si los argumentos son válidos
if [[ $# -lt 2 ]]; then
  echo "Uso: $0 <archivo_de_dominios> <carpeta_de_salida>"
  exit 1
fi

file=$1
folder=$2
path=$(pwd)

# Verifica si el archivo de dominios existe
if [[ ! -f $file ]]; then
  echo "El archivo '$file' no existe."
  exit 1
fi

# Crea la carpeta de salida si no existe
mkdir -p "$path/$folder"

# Itera sobre los dominios del archivo
while IFS= read -r domain; do
  if [[ -n $domain ]]; then
    output_file="$path/$folder/$domain-history.txt"
    echo "Procesando dominio: $domain"
    sleep 3
    wget --timeout=20 --no-check-certificate -O "$output_file" "https://web.archive.org/cdx/search/cdx?url=*.$domain&fl=original&collapse=urlkey&" || {
      echo "Error al descargar datos para $domain"
    }
  fi
done < "$file"
