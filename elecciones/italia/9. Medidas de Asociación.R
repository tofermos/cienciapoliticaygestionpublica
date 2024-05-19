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

## Limpieza:

datoscis$recCONOMINIS_5 <- datoscis$CONOMINIS_5
datoscis$recCONOMINIS_5[datoscis$recCONOMINIS_5 == 7] <- 2
datoscis$recCONOMINIS_5[datoscis$recCONOMINIS_5 == 9] <- NA

datoscis$recCONFIANZAPTE <- datoscis$CONFIANZAPTE
datoscis$recCONFIANZAPTE[datoscis$recCONFIANZAPTE >= 8] <- NA

datoscis$recCONFIANZAOPOSIC <- datoscis$CONFIANZAOPOSIC
datoscis$recCONFIANZAOPOSIC[datoscis$recCONFIANZAOPOSIC >=8] <- NA

datoscis$recVALMINIS_1 <- datoscis$VALMINIS_1
datoscis$recVALMINIS_1[datoscis$recVALMINIS_1 >=98] <- NA

datoscis$recVALMINIS_2 <- datoscis$VALMINIS_2
datoscis$recVALMINIS_2[datoscis$recVALMINIS_2 >=98] <- NA



# -------------------------- VARIABLES NOMINALES -------------------------------

### Coeficiente LAMBDA [Dos nominales]

# Buen coeficiente (además de ser el más usado) cuando de las dos variables 
# sobre las que se trata de establecer una relación una es la variable
# dependiente y otra la independiente.

require(DescTools)
lambda <- Lambda(datoscis$recSEXO, datoscis$recSIMPATIA, conf.level = 0.95)
print(lambda)


# <https://search.r-project.org/CRAN/refmans/DescTools/html/Lambda.html>.

#' Si las variables no tienen valores nominales, podemos forzar que rstudio las
#' tome como nominales. Como ya vimos hace semanas, esto lo hacemos con as.factor
#' A continuación creamos una mini base de datos. En ella tomaremos solo las dos
#' variables de interés y [esto es lo que más nos interesa] le pediremos que 
#' omita los perdidos. A continuación, ya podemos calcular el coeficiente phi.

### Coeficiente V DE CRAMER con su intervalo de confianza del 95%

as.factor(datoscis$recSEXO)
as.factor(datoscis$recSIMPATIA)

tabla <- table(datoscis$recSEXO, datoscis$recSIMPATIA)
tabla 


require(confintr)
civcramer <- ci_cramersv(tabla, interval = .95, test_adjustment = TRUE)
civcramer

# <https://www.statology.org/cramers-v-in-r/>.
# <https://search.r-project.org/CRAN/refmans/confintr/html/cramersv.html>.
# <https://www.rdocumentation.org/packages/rcompanion/versions/2.3.26/topics/cramerV>.


### Coeficiente PHI [Dos nominales]

require(psych)


datoscis$recCONOMINIS_5 <- datoscis$CONOMINIS_5
datoscis$recCONOMINIS_5[datoscis$recCONOMINIS_5 == 7] <- 2
datoscis$recCONOMINIS_5[datoscis$recCONOMINIS_5 == 9] <- NA


tabla2 <- table(datoscis$SEXO, datoscis$recCONOMINIS_5)
tabla2
phi(tabla2)

# <https://www.statology.org/phi-coefficient-in-r/>.
# <https://cran.r-project.org/web/packages/psych/psych.pdf>



# -------------------------- VARIABLES ORDINALES -------------------------------

### Coeficiente GAMMA. [Dos ordinales] 
table3 <- xtabs(~recCONFIANZAPTE + recCONFIANZAOPOSIC, data = datoscis)
table3

library(MESS)
gkgamma(table3, conf.level = 0.95)

# En primer lugar se encuentra el estadístico z (no lo interpretamos), después
# el p-valor del coeficiente Gamma. Abajo se encuentra el intervalo de confianza
# del 95%. Finalmente, nos proporciona el valor de Gamma.

#<https://search.r-project.org/CRAN/refmans/DescTools/html/GoodmanKruskalGamma.html>


### Coeficiente D DE SOMERS. [Dos ordinales]

require(DescTools)
delta <- SomersDelta(datoscis$recCONFIANZAPTE, datoscis$recCONFIANZAOPOSIC, conf.level = 0.95)
delta

# <https://search.r-project.org/CRAN/refmans/DescTools/html/SomersDelta.html>.


### Coeficiente TAU-B DE KENDALL [Dos ordinales con el mismo número de 
#   categorías de valores - Producen una tabla cuadrada] 

require(DescTools)
taub <- KendallTauB(datoscis$recCONFIANZAPTE, datoscis$recCONFIANZAOPOSIC, conf.level = 0.95)
taub

KendallTauB(datoscis$recCONFIANZAPTE, datoscis$recCONFIANZAOPOSIC, conf.level = 0.95)

# <https://search.r-project.org/CRAN/refmans/DescTools/html/KendallTauB.html>.


### Coeficiente TAU-C DE KENDALL [Dos ordinales con diferente número de 
#   categorías de valores]

require(DescTools)
tauc <- StuartTauC(datoscis$recCONFIANZAPTE, datoscis$recCONFIANZAOPOSIC, conf.level = 0.95)
tauc

# <https://search.r-project.org/CRAN/refmans/DescTools/html/StuartTauC.html>. 



# --------------------- VARIABLES DE INTERVALO / RAZÓN -------------------------

# A continuación, veremos la forma cómo medir la asociación de dos variables
# continuas.

datoscis$recVALMINIS_1 <- datoscis$VALMINIS_1
datoscis$recVALMINIS_1[datoscis$recVALMINIS_1 >=98] <- NA

datoscis$recVALMINIS_2 <- datoscis$VALMINIS_2
datoscis$recVALMINIS_2[datoscis$recVALMINIS_2 >=98] <- NA


### COVARIANZA.

covarianza <- cov(datoscis$recVALMINIS_1, datoscis$recVALMINIS_2, use = "complete.obs") # COMPLETAR CON LAS OPCIONES.
covarianza

# <https://search.r-project.org/R/refmans/stats/html/cor.html>


### CORRELACIÓN. Coeficiente de CORRELACIÓN DE PEARSON.

cor.test(datoscis$recVALMINIS_1, datoscis$recVALMINIS_2)

# Para los resultados, la lectura es...: El primer valor que da, es el
# estadístico t de la correlación de Pearson. El segundo valor, son los grados de libertad
# después está el p-valor del coeficiente. A continuación se encuentra el
# intervalo de confianza del 95%. Finalmente, tenemos el valor de la correlación.

# <https://search.r-project.org/R/refmans/stats/html/cor.html>.
# <https://cran.rstudio.com/web/packages/psych/psych.pdf>.
