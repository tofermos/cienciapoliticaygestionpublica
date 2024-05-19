# PRÁCTICA 2. 

# ACTIVIDAD 1. CONTRASTE DE MEDIAS PARA DATOS RELACIONADOS. 
# Dos variables de la misma base de datos.

# 1.- IMPORTACIÓN DE DATOS
if(!require(haven)){install.packages("haven")} # para abrir fichero .sav
library(haven)
if(!require(knitr)){install.packages("knitr")}#tabla dinámica Rmd y otros
library(knitr)
if(!require(DescTools)){install.packages("DescTools")}
library(DescTools)
# El fichero .sav se guardará en una subcarpeta DATOS

# Creamos el dataframe
# df_ronda10<-read_sav(rutaFichero)
setwd("/home/tomas/Documents/cienciapoliticaygestionpublica/elecciones/italia/DATOS")
df_ronda10<-read_sav("datosprac2.sav")


# 2.- PREPARAR DATOS

# 2.1 VALORES NO VÁLIDOS
## Se comprueba que los datos han sido recodificados...
unique(df_ronda10$fairelcc)
unique(df_ronda10$cttresac)
# ... caso contrario ( valores 77, 88, 99 según el codebook ) se recodificarían
# df_ronda10$fairelcc[df_ronda10$fairelcc >10]<-NA
# df_ronda10$cttresac[df_ronda10$cttresac >10]<-NA


# 2.2 Se duplican los campos
# Trabajaremos con los 
df_ronda10$rec_cttresac <- df_ronda10$cttresac
df_ronda10$rec_fairelecc<-df_ronda10$fairelcc

# 3.- HIPÓTESIS NULA: 
    
    # H0: Ambas medias son iguales.
    # H1: Hipótesis alternativa:Las medias son distintas
    
# 4.- Aplicamos t:

# paired = T -> indica a la función que operará con 2 muestras relacionadas
# alternative = 'two.sized' -> indica que la hipótesis alternativa es que las medias no son iguales. 
t.test(df_ronda10$rec_fairelecc, df_ronda10$rec_cttresac,
       alternative = 'two.sided',
       conf.level = .99,
       paired = T)

# 4.- CONCLUSIÓN
# Hay una diferencia significativa entre las medias por lo tanto, 
# podemos descartar la hipótesis nula puesto que p es muy inferior a 0,05

#
#
#
#

#                     ACTIVIDAD 2. ASOCIACIÓN DE VARIABLES. 
# Comprobar la asociación entre dos variables cualitativas ordinales.

# 1.- PREPARAR DATOS

# Duplicación de columnas del dataframe

df_ronda10$rec_hmsfmlsh<-df_ronda10$hmsfmlsh
df_ronda10$rec_freehms<-df_ronda10$freehms

# Recodifcación para que se muestre los valores de las etiquetas
# De la variable independiente: "Me daría vergüenza que un familiar..."
 df_ronda10$rec_hmsfmlsh <- factor(df_ronda10$rec_hmsfmlsh,
                               levels = c(1,2,3,4,5),
                               labels = c("Muy de acuerdo", "De acuerdo", 
                                          "Ni de acuerdo ni en desacuerdo", "En desacuerdo", 
                                         "Muy en desacuerdo")) 

# De la variable dependiente: "Los gays y lesbianas deberían tener libertad para..."
 df_ronda10$rec_freehms <- factor(df_ronda10$rec_freehms,
                             levels = c(1,2,3,4,5),
                              labels = c("Muy de acuerdo", "De acuerdo", 
                                         "Ni de acuerdo ni en desacuerdo", "En desacuerdo", 
                                         "Muy en desacuerdo")) 

# 2. SOBRE LAS VARIABLES 
# rec_hmsfmlsh representa la variable independiente. En las filas de la tabla.
# rec_freehms representa la variable dependiente. En las columnas de la tabla.

# 3.- HIPÓTESIS NULA: 
 
 # H0: No hay asociación estadísticamente significativa entre las variables: el coeficiente de asociación es cero.
 
# 4. LA TABLA DE CONTINGENCIA (TABLA CRUZADA)

 
# 4.1 En cada celda está el valor absoluto.
freqtabla <- xtabs(~rec_hmsfmlsh + rec_freehms, data = df_ronda10)

# 4.2 Finalmente, lo que interesa es en cada celda el % de cada categoría de V independiente o fila (se indica con "1" en la función R)
freqtabla_100xFila<-prop.table((freqtabla),1)*100

# 4.3 Obtención de los porcentajes marginales de la variable dependiente (Fila de Totales)
Total <- margin.table((prop.table(freqtabla)*100), 2)

# 4.4 Fusión de las dos tablas ( 4.2 freqtabla_100xFila y 4.3 Total )

fusion <- round(rbind(freqtabla_100xFila, Total),2)
# print(fusion)

cat ("Tabla 1")
kable(fusion, caption="Opinón sobre la libertad gays y lesbianas (variable dependiente en columnas) según la vergüenza familiar gay o lesbiana (variable independiente en filas)")

# 4.5 CONCLUSIÓN SOBRE LA TABLA

# En primer lugar vemos de los totales marginales que la mayoría está De acuerdo con las libertades de los gays y lesbianas (30,54% Muy de acuerdo y 45,02 De acuerdo)
#, siendo el menor porcentaje el de "Muy en desacuerdo" ( 2,65%). 
# En segundo lugar vemos que los que están "En desacuerdo" con sentir vergüenza por un familiar gay o homosexual, son los que más se posicionan en
# como "De acuerdo" con las libertades (67,34%). Destaca con cifras similares, los que están "Muy en desacuerdo" con avergonzarse de un familiar que manifiestan
# estar "Muy de acuerdo con la libertad".
# En lo que respecta a posiciones más "nautrales", se observa que los que no están "Ni en desacuerdo ni en desacuerdo" con el tema de a vergüenza que, también se decantan mayoritariamente por la misma posición
# sobre la libertad.
# Sobre los que se identifican con algún tipo de vergüenza sobre tener un familiar homosexual cabe hacer dos observaciones.
#   Por un parte, los que responden que estar "De acuerdo" con la afirmación de vergüenza, su posición mayoritaria respecto a la libertad es "De acuerdo" con un 36,65%. 
#   Por otra parte, los que responden estar "Muy de acuerdo" con este sentimiento de vergüenza, si bien la respuesta mayoritaria es contraria a la libertad 
#  ("Muy en desacuerdo" el 33,78% y "En desacuerdo" el 24,32%), un 22,97% se manifiesta "Muy de acuerdo" con la libertad. Este dato es el que más llama la atención


# 5. CHI CUADRADO

# 5.1 Introduciendo directamente las variables
chi <- chisq.test( df_ronda10$rec_hmsfmlsh, df_ronda10$rec_freehms)
chi

# 5.2 Mediante la tabla
chi <- chisq.test(freqtabla)
chi

# 5.3 CONCLUSIÓN SOBRE CHI CUADRADO

# El coeficiente indica la magnitud de la asociación. El valor de 1723,8 es muy superior a 0, lo que indica una asociación fuerte.
# Tenemos una evidencia para el rechazo de la H0 y vemos que p-valor = 2.2e-16 es muy inferior a alpha=0,001 por lo que tenemos un nivel de confianza
# superior al 99,9$.
# No obstante, vemos que la ejecución de la función nos avisa:
# Warning messages:
#  1: In chisq.test(datos$rec_hmsfmlsh, datos$rec_freehms) :
#  Chi-squared approximation may be incorrect
# 2: In chisq.test(freqtab) : Chi-squared approximation may be incorrect

# SE PUEDE RECHAZAR LA HIPÓTESIS NULA. LAS VARIABLES  ESTÁN ASOCIADAS

# ACTIVIDAD 3. 

# DATOS
# Se comprueba que no hay valores que recodificar ( )
unique(df_ronda10$lrscale)
unique(df_ronda10$medcrgvc)

# Duplicación de columnas a manipular
df_ronda10$rec_lrscale<-df_ronda10$lrscale
df_ronda10$rec_medcrgvc<-df_ronda10$medcrgvc


# Coeficiente TAU-B DE KENDALL.
# Se trata del test más adecuado cuando las dos variables ordinales tienen el mismo número de 
#   categorías. Produce una tabla cuadrada.

taub <- KendallTauB(df_ronda10$rec_lrscale, df_ronda10$rec_medcrgvc, conf.level = 0.95)
taub

KendallTauB(df_ronda10$rec_lrscale, df_ronda10$rec_medcrgvc, conf.level = 0.95)

# Vemos que tiene un valor de asociación cercano al 0 (-0.009130106) y que el intervalo pasa por el 0 (-0.043788752  0.025528540)
# por lo que calculados para un alpha= 0,05. NO se puede rechazar la hipótesis de nula de no asociación.
# Conclusión: No hay asociación.

### Coeficiente D DE SOMMERS. 

# Se trata de otro test de asociación para variables ordinales que también nos informa de la magnitud y dirección de la asociación meidiante su coeficiente 
# que oscilará también entre -1 y 1. 

delta <- SomersDelta(df_ronda10$rec_lrscale, df_ronda10$rec_medcrgvc, conf.level = 0.95)
delta
# Vemos que muestra de nuevo un valor de asociación cercano al 0 (-0.009052743 ) y que el intervalo pasa por el 0 ( -0.043415457  0.025309971  )
# por lo que calculados para un alpha= 0,05 NO se puede rechazar la hipótesis de nula de no asociación.
# Conclusión: No hay asociación.