Esto es el proyecto de traducción de *Bash Reference Manual*. La traducción se
encuentra bajo la licencia GNU Free Documentation License, que puedes encontrar
en los archivos `LICENCIA` y `fdl.texi`.

## Colaborar

Puedes ver las tareas que estamos realizando o las que necesitan ser
realizadas en el
[gestor de incidencias del repositorio](https://notabug.org/jorgesumle/bashrefes/issues).

Para realizar una corrección en una sección basta con abrir el archivo
`.po` correspondiente y editarlo. Estas son las correspondencias entre
archivos y capítulos:

- **Capítulo 8**: `rluser.es.mo`
- **Capítulo 9**: `hsuser.es.po`
- **Anexo D**: `fdl.es.texi` (obtenido de <https://notabug.org/jorgesumle/fdl-es>)
- **Todo lo demás**: `bashref.es.po`

## Generar los archivos de salida

Para generar los archivos de salida necesitas instalar las siguientes dependencias:
- **Make** (para automatizar tareas)
- **po4a** (para traducir archivos Texinfo)
- **texi2html** (para generar formato HTML)
- **texlive** (para generar formato PDF)
- **texlive-lang-spanish** (para separación de palabras en la generación de PDF)

En un sistema operativo basado en Debian GNU/Linux es tan sencillo como
ejecutar
`sudo apt install make po4a texi2html texlive texlive-lang-spanish`

Después simplemente ejecuta `make html` o `make texi` en la carpeta raíz del
repositorio.

## Actualizar traducción

Hace falta obtener los archivos más recientes del código fuente de Bash
(https://savannah.gnu.org/projects/bash/). Dentro del repositorio se encuentran
en las siguientes rutas:

- `doc/fdl.texi`
- `doc/bashref.texi`
- `doc/version.texi`
- `lib/readline/doc/rluser.texi`
- `lib/readline/doc/hsuser.texi`

Copia esos archivos a este directorio y ejecuta `make actualiza_pot`.

## Notas de traducción

### Convenciones

Se usa el usted para referirse al usuario.

### Glosario

- *[command] argument*: argumento
- *builtin command*: instrucción integrada
- *callback*: retrollamada
- *command*: instrucción u orden
- *command line*: línea de órdenes o línea de instrucciones
- *exit status*: estado de salida
- *feature*: funcionalidad
- *file*: archivo
- *hash*: hash o resumen criptográfico
- *job control*: control de tareas
- *library*: biblioteca
- *shell*: intérprete
