###### Técnicas de Investigación en Ciencia Política I ######

### Curso: 2º / Grado Ciencia Política y Gestión Pública

### Tema: 4

### Docentes: Estefanía Agüero Merino

# RECUERDA: Puedes escribir lo que necesites, siempre que antes de la frase
# incorporéis el signo '#' para que este texto no piense el programa
# que es ejecutable.

# CUIDADO al escribir: R no entiende de tildes ni de carácteres especiales (como
# la ñ) puedes escribirlos como textos, pero no los uses para denominar 
# variables ni cualquier otra línea que sea ejecutable. NI TILDES NI CAR. ESPEC.

## Una vez comienzas el trabajo con datos, es recomendable que aquellas librerías
# que vayas a usar, las actives antes de comenzar el trabajo. Inmediatamente 
# después, establece el set working directory (directorio de trabajo) que vas a
# emplear. 

## Consejo: Ejecuta el script de recodificación para trabajar con las variables 
# limpias.

### Set Working Directory:

setwd("")

### Apertura base de datos.
require(foreign)

datoscis <- read.spss("cisjulio2022.sav", to.data.frame=TRUE,
                      use.value.labels = FALSE)


### CONTRASTE SOBRE LA MEDIA.
# Se hace sobre la variable "edad"
# La media poblacional para el contraste es 50

### CONTRASTE SOBRE LA MEDIA.

mean(datoscis$EDAD) # Para conocer el valor de la media de nuestros datos

t.test(datoscis$EDAD, alternative = 'two.sided', mu = 50, conf.level = .95)

# Para comprender qué significa cada argumento que le damos a la función...:

## alternative =  -> Puede tener las indicaciones 'two.sized' (que la hipótesis 
# alternativa tiene un valor diferente a la media muestral que le hemos 
# indicado), 'greater' (que la hipótesis alternativa tiene un valor mayor a la 
# media muestral que le hemos dado) y 'less' (que la hipótesis alternativa tiene
# un valor menor que la media muestral que hemos indicado). Recomendamos usar
# 'two.sized'.

## mu = número -> el valor de la media muestra que le atribuimos a la hipótesis 
# nula.

## conf.level =  -> El valor que le damos a los intervales de confianza. El 
# recomendado es el de .95 (95%).

# Cuando no tenemos argumento para rechazar la hipótesis nula, aceptamos que la 
# muestra tiene un valor muestral como el que hemos indicado. 



### PRUEBA DE IGUALDAD DE MEDIAS. (misma variable, diferentes grupos)

# Se emplea para comprobar si un parámetro tiene una media igual (o diferente)
# para diferentes grupos. Por ejemplo, podemos querer verificar si hombres y 
# mujeres tienen una media ideológica igual (o no)...:

t.test(recESCIDEOL~SEXO, data = datoscis)

# Para comprender bien qué incorporamos en la función...: 

## variablemedia~variablegrupos. Primero, señalamos SOLO EL NOMBRE de la
# variable cuya igualdad de medias queremos comprobar. En segundo lugar, unido
# por un '~' señalamos la variable que contiene los grupos que deseamos observar.

## alternative =  -> Puede tener las indicaciones 'two.sized' (el valor de ambas 
# medias no es igual), 'greater' (el valor de las medias es desigual y el del 
# primer grupo es mayor que el del segundo) y 'less' (el valor de las medias es 
# desigual y el del primer grupo es menor que el del segundo). Recomendamos usar
# 'two.sized'.

## conf.level =  -> El valor que le damos a los intervales de confianza. El 
# recomendado es el de .95 (95%).

## var.equal = TRUE / FALSE -> Si hay, o no, igualdad de varianzas. Si sabemos
# que la varianza en las poblaciones es igual, daremos el valor de 'TRUE'. En el
# caso contrario, si no lo sabemos o sabemos que no son iguales las varianzas,
# 'FALSE'. 

## data = nombrebasededatos -> aquí señalamos el nombre de la base de datos.


### CONTRASTE DE MEDIAS PARA DATOS RELACIONADOS. (dos variables, misma base de datos)

## Vamos a comparar las medias de las evaluaciones de dos Ministras:
#Yolanda Díaz y Margarita Robles

## En primer lugar se recodifican las variables necesarias:
# VALMINIS_7 Y VALMINIS_19

datoscis$recVALMINIS_7 <- datoscis$VALMINIS_7
datoscis$recVALMINIS_7[datoscis$recVALMINIS_7 >=98] <- NA

datoscis$recVALMINIS_19 <- datoscis$VALMINIS_19
datoscis$recVALMINIS_19[datoscis$recVALMINIS_19 >=98] <- NA

## Y procedemos con el contraste hipótesis con la prueba t:

t.test(datoscis$recVALMINIS_7, datoscis$recVALMINIS_19,
       alternative = 'two.sided',
       conf.level = .95,
       paired = T)

# paired = T -> le indicamos a la función que estamos trabajando con dos
# muestras relacionadas.
# alternative = 'two.sized' -> indica que nuestra hipótesis alternativa es que
# las medias no son iguales. 



### TEST DE PROPORCIONES. (Complemento)

# Manejaremos la hipótesis nula de que el porcentaje votantes en las próximas
# elecciones sería del 70 % y la hipótesis alternativa de que sería inferior.

tabla <- table(datoscis$recVOTOGEN)
prop.test(tabla, alternative = 'less', p=.70, conf.level = .95)








## Aprendiendo más...:


# Bouso        pp. 130 - 143 (medias)
# Bouso        pp. 144 - 150 (varianzas test)
# London's Global University () "T Test for Difference in Means and Hypothesis Testing" <https://www.ucl.ac.uk/~uctqiax/PUBLG100/2015/week3/seminar3.html>