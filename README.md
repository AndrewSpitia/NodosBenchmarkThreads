# NodosBenchmarkThreads

En este repositorio se encuentran los archivos para la elaboración del segundo parcial para la asignatura de Computación Paralela y Distribuida.

Contenido:
---

*  Una carpeta ```Codes``` en la cual están todos los códigos utilizados para el desarrollo de la práctica. En ella están los siguientes elementos:
    * Los algoritmos ejecutados para la práctica: ```Algorithm1.c```, ```Algorithm2.c``` y ```Algorithm2.c```. Cada algoritmo realiza una multiplicación de matrices de distintas formas. Para la pŕactica se utilizan para hacer una comparativa. Estos utilizan un archivo ```module.c``` en donde se implementan las funciones y como interfaz utilizan ```module.h```.
    * Hay un archivo ```Makefile``` que optimiza la compilación de los programas mencionados anteriormente. Para ejecutar los programas, se utiliza ```make nombreDelprogramaSinExtension```
    * Hay un archivo ```launcher.pl``` que compila y ejecuta los programas mencionados. Este realiza ejecuciones de los 3 algoritmos en tamaños de matrices de n\*n con valores de n iguales a 96, 200,400, 800, 1600 y 3200. Para ejecutarlo, debe primero cambiar el nombre de su máquina en el archivo ```machine.txt```. Para ejecutarlo: ```./launcher.pl```
    * Hay un directorio con nombre ```results``` que contiene los resultados de la ejecución de los programas en algunos nodos de cómputo.
* Hay un archivo ```graficas_parcial_1.ipynb``` que lee los archivos de la carpeta results y los procesa para generar gráficas para las comparativas 
