### Descripción del Script

Este script en **Bash** está diseñado para automatizar la consulta de historiales de dominios utilizando la API de [Wayback Machine](https://web.archive.org/). Los resultados de las consultas se almacenan en archivos de texto separados dentro de una carpeta especificada por el usuario. A continuación, se detallan las características principales del script:

---

### Características

1. **Consulta de Historial de Dominios:**
   - Realiza solicitudes a la API de Wayback Machine para recuperar las URLs históricas asociadas con un dominio.

2. **Creación Automática de Carpeta de Salida:**
   - Genera automáticamente una carpeta para almacenar los resultados de cada dominio.

3. **Gestión de Errores:**
   - Detecta errores durante la descarga y muestra mensajes claros para facilitar la depuración.

4. **Retraso entre Solicitudes:**
   - Añade un retraso de 3 segundos entre cada solicitud para evitar sobrecargar el servidor.

5. **Compatibilidad y Robustez:**
   - Maneja dominios con caracteres especiales y verifica la validez de los argumentos antes de ejecutar.

---

### Cómo Usar

1. **Preparar el archivo de dominios:**
   - Crear un archivo de texto (por ejemplo, `dominios.txt`) donde cada línea contiene un dominio, sin espacios adicionales.

   Ejemplo de contenido del archivo:
   ```
   example.com
   anotherdomain.org
   sample.net
   ```

2. **Ejecutar el script:**
   - Asegúrate de que el script tenga permisos de ejecución:
     ```bash
     chmod +x history-fetcher.sh
     ```

   - Ejecuta el script con los siguientes argumentos:
     ```bash
     ./history-fetcher.sh <archivo_de_dominios> <carpeta_de_salida>
     ```
     - `<archivo_de_dominios>`: Ruta al archivo que contiene los dominios.
     - `<carpeta_de_salida>`: Nombre de la carpeta donde se guardarán los resultados.

   Ejemplo:
   ```bash
   ./history-fetcher.sh dominios.txt resultados
   ```

3. **Ver los resultados:**
   - Los resultados se guardarán en archivos de texto dentro de la carpeta especificada. Por ejemplo:
     ```
     resultados/example.com-history.txt
     resultados/anotherdomain.org-history.txt
     ```

---

### Notas

- **Requisitos:** El script requiere que `wget` esté instalado en el sistema.
- **Tiempo de Ejecución:** Dependiendo de la cantidad de dominios y el tamaño de sus historiales, la ejecución puede tardar debido al retraso de 3 segundos entre solicitudes.
- **Advertencia:** Evita abusar de la API de Wayback Machine para no ser bloqueado.

Este script es útil para realizar auditorías de seguridad, análisis históricos o investigaciones sobre dominios específicos.
