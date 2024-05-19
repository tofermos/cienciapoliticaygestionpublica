# ACTIVIDAD 2. ASOCIACIÓN DE DOS VARIABLES. 
install.packages("haven")
library(haven)
install.packages("DescTools")
library(DescTools)

setwd("/home/tomas/Documents/cienciapoliticaygestionpublica/elecciones/italia")
datos<-read_sav("datosprac2.sav")
# PREPARAR DATOS
# Duplicación de campos

datos$rec_hmsfmlsh<-datos$hmsfmlsh
datos$rec_freehms<-datos$freehms

# Recodificación para que se muestre los valores de las etiquetas
# De la variable independiente
datos$rec_hmsfmlsh <- factor(datos$rec_hmsfmlsh,
                                  levels = c(1,2,3,4,5),
                                  labels = c("Muy de acuerdo", "De acuerdo", 
                                             "Ni de acuerdo ni en desacuerdo", "En desacuerdo", 
                                             "Muy en desacuerdo")) 

# De la variable dependiente
datos$rec_freehms <- factor(datos$rec_freehms,
                                 levels = c(1,2,3,4,5),
                                 labels = c("Muy de acuerdo", "De acuerdo", 
                                            "Ni de acuerdo ni en desacuerdo", "En desacuerdo", 
                                            "Muy en desacuerdo")) 

# 2 LA HIPÓTESIS

# rec_hmsfmlsh es la variable independiente ( filas de la tabla).
# rec_freehms es la variable dependiente (columnas de la tabla).

# Hipótesis nula: No hay asociación estadística significativa entre las variables y por lo tanto el coeficiente de asociación vale cero.

# 3 TABLA CRUZADA

# En cada celda está el valor absoluto.
freqtab <- xtabs(~rec_hmsfmlsh + rec_freehms, data = datos)

filas1 <- prop.table(((freqtab)*100), 1) 
filas100<-filas1*100
filas<-round(filas100,2)
print(filas)

marg100 <- margin.table((prop.table(freqtab)*100), 2) # Marginales para porcentajes de fila (VD columnas)
marg<-round(marg100 ,2)
print(marg)

# Se exportan a dos ficheros csv y manualmente los combinamos

write.csv2(filas, "filas.csv")
write.csv2(marg, "marginales.csv")

# CHI CUADRADO

# Uso de la función con las variables directamente
chi <- chisq.test( datos$rec_hmsfmlsh, datos$rec_freehms)
print(chi)

# Uso de la función con la tabla
chi <- chisq.test(freqtab)
print(chi)

#COEFICIENTE DE *TAU-B DE KENDALL*.
# Es el test más adecuado cuando las dos variables ordinales tienen el mismo número de categorías. 
taub <- KendallTauB(datos$lrscale, datos$medcrgvc, conf.level = 0.95)
taub

# COEFICIENTE DE SOMMERS. 

# Se trata de otro test de asociación para variables ordinales que también nos informa de la magnitud y dirección de la asociación mediante su coeficiente que oscilará también entre -1 y 1. 

delta <- SomersDelta(datos$lrscale, datos$medcrgvc, conf.level = 0.95)
delta
