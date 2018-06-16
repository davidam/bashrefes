10i @documentlanguage es

# Deshace la traducción de «builtin» en ejemplo de uso de instrucción
/example/ {N; s/\(@example\n..*\)instrucción-integrada/\1builtin/}
/@item instrucción integrada/ {N;s/@item instrucción integrada\n@btindex instrucción integrada/@item builtin\n@btindex builtin/}

# Añade la traducción de la GNU Free Documentation License
/* GNU Free Documentation License::/ a * Traducci@'on de GNU Free Documentation License::  Copiar y compartir esta documentaci@'on (en espa@~nol).

/@include fdl.texi/ a @node Traducci@'on de GNU Free Documentation License\n@appendix Traducci@'on de GNU Free Documentation License\n\n@include fdl.es.texi
