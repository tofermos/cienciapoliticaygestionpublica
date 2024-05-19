###### Técnicas de Investigación en Ciencia Política I ######

### Curso: 2º / Grado en Ciencia Política y Gestión Pública

### Tema: 5

### Docentes: Estefanía Agüero Merino

# RECUERDA: Puedes escribir lo que necesites, siempre que antes de la frase
# incorporéis el signo '#' para que este texto no piense el programa
# que es ejecutable.

# CUIDADO al escribir: R no entiende de tildes ni de caracteres especiales (como
# la ñ) puedes escribirlos como textos, pero no los uses para denominar 
# variables ni cualquier otra línea que sea ejecutable. NI TILDES NI CAR. ESPEC.

## Una vez comienzas el trabajo con datos, es recomendable que aquellas librerías
# que vayas a usar, las actives antes de comenzar el trabajo. Inmediatamente 
# después, establece el set working directory (directorio de trabajo) que vas a
# emplear. 

## Recordatorio en la elaboración de tablas de contingencia: en filas ponemos la
# variable independiente y en columnas la variable dependiente.

# ¡! Vuelve a descargar y ejecutar el script de "recodificación". Hay novedades
# que necesitarás para que este código funcione correctamente.


if(!require(haven)){install.packages("haven")} # para abrir fichero .sav
library(haven)
# El fichero .sav se guardará en una subcarpeta DATOS

datoscis<-read_sav("datoscis.sav")


## Recodificaciones Necesarias...:
datoscis$recSIMPATIA <- datoscis$SIMPATIA
datoscis$recSIMPATIA[datoscis$recSIMPATIA >= 998] <- NA
datoscis$recSIMPATIA[datoscis$recSIMPATIA == 5] <- 3
datoscis$recSIMPATIA[datoscis$recSIMPATIA == 6] <- 3
datoscis$recSIMPATIA[datoscis$recSIMPATIA == 7] <- 3
datoscis$recSIMPATIA[datoscis$recSIMPATIA == 21] <- 3
datoscis$recSIMPATIA[datoscis$recSIMPATIA == 18] <- 5
datoscis$recSIMPATIA[datoscis$recSIMPATIA > 5] <- 6
datoscis$recSIMPATIA <- factor(datoscis$recSIMPATIA,
                               levels = c(1,2,3,4,5,6),
                               labels = c("PP", "PSOE", 
                                          "PODEMOS", "CIUDADANOS", 
                                          "VOX", "OTROS")) 


datoscis$recSEXO <- datoscis$SEXO
datoscis$recSEXO <- factor(datoscis$recSEXO,
                           levels = c(1,2),
                           labels = c("Hombre", "Mujer")) 


#------------------------- TABLAS DE CONTINGENCIA ------------------------------

### TABLAS DE CONTINGENCIA / TABLAS CRUZADAS

# Las tablas cruzadas son una herramienta imprescindible en todo análisis que 
# valore la asociación de dos variables. Son un buen análisis preeliminar para
# conocer como puede ser una correlación, además de una herramienta ampliamente
# utilizada cuando se quiere ver la distribución de los casos según los valores.

# Vamos a ver una forma muy sencilla para crear tablas cruzadas, de acuerdo con
# vuestras preferencias así como su exportación en formato .csv (recuerda que
# este formato permite también trabajarlo en excel).

freqtab <- xtabs(~recSEXO + recSIMPATIA, data = datoscis)
freqtab # para ver la tabla de frecuencias que hemos generado.

# Pero... ¿si quisiéramos tener los porcentajes? Con la tabla ya generada...

total <- prop.table(freqtab)## porcentajes de celdas totales.
print((total)*100)

filas <- prop.table(((freqtab)*100), 1) ## porcentaje de filas (preferido)
print((filas)*100)

columnas <- prop.table(((freqtab)*100), 2) ## porcentaje de columnas
print((columnas)*100)

# Para obtener los porcentajes marginales de fila, necesarios para comprobar la
# asociación de variables en tabla.... [RECUERDA, marginales de fila porque
# nuestra VD está en columnas, la VI en filas y los totales son de filas]...: 

marg <- margin.table((prop.table(freqtab)*100), 2) # Marginales para porcentajes de fila (VD columnas)
marg

# Para los valores marginales de las columnas....:

marg <- margin.table((prop.table(freqtab)*100), 1) # Marginales para porcentajes de fila (VD columnas)
marg

# Para exportar la tabla (cualquiera de las que hemos creado) podemos sacarla de
# RStudio en formato .csv para, a partir de ahí, abrirla con Excel, editarla 
# como prefiramos e incluirla en cualquier documento que queramos.

write.csv2(filas, "tablafilas.csv")
write.csv2(tabtot, "tabtot.csv")

### ESTADÍSTICO CHI CUADRADO

# Para calcular el estadístico Chi Cuadrado podemos hacerlo de dos formas:
# Bien a partir de una tabla (como las que hemos realizado en el ejercicio 
# anterior) o introduciendo directamente las variables [en este último caso el
# resultado obtenido será igual que si introdujeramos una tabla de frecuencias].

chi <- chisq.test(datoscis$recSEXO, datoscis$recSIMPATIA)
chi

chi <- chisq.test(freqtab)
chi




# --------------------------------------- EXTRA -------------------------------#

# EXTRA ## LIBRERÍA epiDisplay (Tablas cruzadas)

## La forma de trabajo de esta librería es un poco más compleja, pero interesante.
# No da muchas opciones de edición pero si permite una fácil exportación del 
# resultado. Por otra parte, os facilita un gráfico mosaico que cruza ambas 
# variables que podría resultaros interesante para leer el cruce de las variables. 

require(epiDisplay)
tcruzada <- tabpct(datoscis$recSEXO, datoscis$recSIMPATIA,
                   decimal = 1,
                   percent = "row",
                   xlab = "Sexo",
                   ylab = "Simpatía partido")

# Como sabéis, es totalmente necesario tener claro qué porcentaje queremos
# reflejar en la tabla. Para indicarlo en la función lo haremos a través de 
# 'percent'.
# Podemos pedirle 'both' y nos dará tres tablas: una con los porcentajes de
# columna, otra con los de fila(row) y otra con las frecuencias. 'col' devolverá
# una tabla que combina las frecuencias con los porcentajes de columna. En caso
# de querer solo los porcentajes de fila, la orden es 'row'. 



# <https://www.rdocumentation.org/packages/epiDisplay/versions/3.5.0.2/topics/tabpct>
# <https://www.rdocumentation.org/packages/epiDisplay/versions/3.5.0.2/topics/tabpct>


