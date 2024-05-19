# PRÁCTICA 2.
# PREGUNTA 1. CONTRASTE DE MEDIAS PARA DATOS RELACIONADOS. 
# Dos variables de la misma base de datos.

# 1.- Abrir el fichero .sav
install.packages("haven")
library(haven)
datos<-read_sav("datosprac2.sav")


# 2.- Duplicación de campos

# Ya están recodificados los valores 77, 88, 99 como NA
# Duplicamos los campos
datos$rec_cttresac <- datos$cttresac
datos$rec_fairelecc<-datos$fairelcc

# 3.- Hipótesis nula
# La hipótesis nula planteará que las dos medias son iguales.

# 4.- Contraste de hipótesis
# Aplicamos t
# paired = T -> indica a la función que operará con 2 muestras relacionadas
# alternative = 'two.sized' -> indica que la hipótesis alternativa es que las medias no son iguales. 
t.test(datos$rec_fairelecc, datos$rec_cttresac,
       alternative = 'two.sided',
       conf.level = .99,
       paired = T)

# Observamos en el resultado de t que la media de las diferencias vale 1,22. El intervalos va de 1.076505 a 1.359597 y que
# que p-value vale 2,2x10e-16, un valor mucho menor que el límite de 0,05 

# 5.- Comentario final

# La diferencia entre las medias es suficiente como para poder descartar la hipótesis nula que planteaba que 
# las dos medias eran iguales.