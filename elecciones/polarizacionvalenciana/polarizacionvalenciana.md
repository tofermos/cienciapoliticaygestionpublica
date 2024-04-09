---
title: "LA POLARIZACIÓN EN LES CORTS VALENCIANES"
author: "Tomàs Ferrandis Moscardó"
date: "2023-12-10"
output:
  html_document:
    toc: true
    toc_float: true
    toc_depth: 4
    df_print: paged
    number_sections: false
  word_document:
    toc: true
  pdf_document:
    latex_engine: xelatex
    toc: true
    keep_tex: true
---
# 1	NEPE Y EL NEPP ELECCIONES AUTONÓMICAS 2019 COMUNIDAD VALENCIANA**
## 1.1 CÁLCULOS

Obtenemos los datos de Número Efectivo de Partidos Electorales y Número Efectivo de Partidos Parlamentarios.

|Sigla|Votos|Candidatura|Escaños|% escaños|TantoX1escaños|Tanto1Xotos|TantoXescaños2
|:---|---:|---:|---:|-------:|---:|---:|
|PSOE|643.909| 24,40| 27|27| 0,24| 0,27| 0,06|
|PP|508.534|19,27|19|19|0,19|0,19|0,04|
|Cs|470.676|17,84|18|18|0,18|0,18|0,03|
|COMPROMÍS|443.640|16,81|17|17|0,17|0,17|0,03|
|VOX|281.608|10,67|10|10|0,11|0,10|0,01|
|PODEMOS|215.392|8,16|8|8|0,08|0,08|0,01|
|||||Suma|0,18|0,19|
|||||F=1-Σx1²|0,83|0,81|
||||||**NEPP**|**NEPE**|
||||||5,71|5,38|

*Fuente: Elaboración propia a partir de datos de ARGOS* 

**Sigla:** Siglas con las que concurría el partido o coalición electoral.

**Votos:** Suma de los votos de cada candidatura en las tres circunscripciones provinciales.

**%Válidos:**  Porcentaje de votos válidos de cada candidatura redondeado a 2 decimales.

**Escaños:** Suma de escaños obtenidos por cada candidatura.

**x1\_votos:** Tanto por uno de votos de cada candidatura, redondeado a 3 decimales.

**x\_1\_escaños:** Tanto por uno respecto al total de escaños asignados a la autonomía.

**x1\_votos2:**  x1\_votos elevado al cuadrado y redondeado a 3 decimales

**x1\_escaños2:** x1\_escaños elevado al cuadrado y redondeado a 3 decimales.

**NEPE:** Número Efectivo de Partidos Electorales.

NEPE=1TantoX1votos2

**Número efectivo de partidos parlamentarios**
**NEPP:** Número Efectivo de Partidos Parlamentarios.

NEPP=1TantoX1escaños2

# 1.2	LA DIFERENCIA ENTRE EL NEPE Y EL NEPP

La razón por la que el NEPP es mayor que el NEPE es la desproporcionalidad que introduce el sistema electoral a la hora de transformar los votos en escaños.

Esta desproporcionalidad se debe a dos efectos. Por un parte, la asignación de diputados aplicando la **Ley d’Hondt**. Esta fórmula favorece al partido o los partidos mayoritarios en detrimento del resto. Por otra parte, tenemos el efecto producido por la división del territorio en **circunscripciones provinciales.** Al crear estos distritos, se asignan menos escaños en cada reparto, hecho que dificulta (cuando no impide) a los terceros partidos la obtención de representantes. 

La consecuencia de ambos efectos es una concentración de escaños superior a la de votos.

### **EFECTO DE LA APLICACIÓN DE LA LEY D’HONDT**
#### ***Circunscripción de valencia***




|;;|**PSOE**|**PP**|**VOX**|**UP**|**COMPROMÍS**|**Cs**|
| :- | :-: | :-: | :-: | :-: | :-: | :-: |
|40|10|7|4|3|9|7|
|1|**326.663**|**259.934**|**146.908**|**107.397**|**299.404**|**250.267**|
|2|**163.332**|**129.967**|**73.454**|**53.699**|**149.702**|**125.134**|
|3|**108.888**|**86.645**|**48.969**|**35.799**|**99.801**|**83.422**|
|4|**81.666**|**64.984**|**36.727**|26\.849|**74.851**|**62.567**|
|5|**65.333**|**51.987**|29\.382|21\.479|**59.881**|**50.053**|
|6|**54.444**|**43.322**|24\.485|17\.900|**49.901**|**41.711**|
|7|**46.666**|**37.133**|20\.987|15\.342|**42.772**|**35.752**|
|8|**40.833**|32\.492|18\.364|13\.425|**37.426**|31\.283|
|9|**36.296**|28\.882|16\.323|11\.933|**33.267**|27\.807|
|10|**32.666**|25\.993|14\.691|10\.740|29\.940|25\.027|
|11|29\.697|23\.630|13\.355|9\.763|27\.219|22\.752|

*Fuente: Elaboración propia a partir de datos de ARGOS* 

Vemos como el porcentaje de escaños supera al de votos sólo en los dos partidos más votados. Siendo el efecto, en el resto de partidos, el contrario.

|**Candidaturas**|**Votos** |**% Votos**|**Escaños**|**% escaños**|
| :- | :-: | :-: | :-: | :-: |
|P.S.O.E.|326\.663|22,8|10|25|
|COMPROMíS|299\.404|20,9|9|22,5|
|PP|259\.934|18,15|7|17,5|
|Cs|250\.267|17,47|7|17,5|
|VOX|146\.908|10,26|4|10|
|UNIDES PODEM-EUPV|107\.397|7,5|3|7,5|

*Fuente: Elaboración propia a partir de datos de ARGOS*

### ***Circunscripción de Alicante***

|**35**|**PSOE**|**PP**|**VOX**|**UP**|**Cs**|**COMPROMÍS**|
| :- | :-: | :-: | :-: | :-: | :-: | :-: |
||10|7|4|3|7|4|
|1|**231.662**|**181.867**|**102.239**|**83.855**|**173.468**|**99.488**|
|2|**115.831**|**90.934**|**51.120**|**41.928**|**86.734**|**49.744**|
|3|**77.221**|**60.622**|**34.080**|**27.952**|**57.823**|**33.163**|
|4|**57.916**|**45.467**|**25.560**|20\.964|**43.367**|**24.872**|
|5|**46.332**|**36.373**|20\.448|16\.771|**34.694**|19\.898|
|6|**38.610**|**30.311**|17\.040|13\.976|**28.911**|16\.581|
|7|**33.095**|**25.981**|14\.606|11\.979|**24.781**|14\.213|
|8|**28.958**|22\.733|12\.780|10\.482|21\.684|12\.436|
|9|**25.740**|20\.207|11\.360|9\.317|19\.274|11\.054|
|10|**23.166**|18\.187|10\.224|8\.386|17\.347|9\.949|
|11|21\.060|16\.533|9\.294|7\.623|15\.770|9\.044|

*Fuente: Elaboración propia a partir de datos de ARGOS*



Vemos cómo claramente el primer partido obtiene un porcentaje de escaños superior al de votos. El segundo y tercer partido prácticamente se quedan igual pero el resto quedan perjudicados en el reparto. 

|**Candidaturas**|**Votos**|**% votos**|**Escaños**|**% Escaños**|
| :- | :-: | :-: | :-: | :-: |
|PSOE|231\.662|25,78|10|28,57|
|PP|181\.867|20,24|7|20,00|
|Cs|173\.468|19,3|7|20,00|
|VOX|102\.239|11,38|4|11,43|
|COMPROMíS|99\.488|11,07|4|11,43|
|UNIDES PODEM-EUPV|83\.855|9,33|3|8,57|

*Fuente: Elaboración propia a partir de ARGOS*

#### <a name="__refheading___toc2995_958040307"></a>***Circunscripción por Castellón***

||**PSOE**|**PP**|**VOX**|**UP**|**Cs**|**Compromís**|
| :- | :-: | :-: | :-: | :-: | :-: | :-: |
|24|7|5|2|2|4|4|
|1|**85.584**|**66.733**|**32.461**|**24.140**|**46.941**|**44.748**|
|2|**42.792**|**33.367**|**16.231**|**12.070**|**23.471**|**22.374**|
|3|**28.528**|**22.244**|10\.820|8\.047|**15.647**|**14.916**|
|4|**21.396**|**16.683**|8\.115|6\.035|11\.735|11\.187|
|5|**17.117**|**13.347**|6\.492|4\.828|9\.388|8\.950|
|6|**14.264**|11\.122|5\.410|4\.023|7\.824|7\.458|
|7|**12.226**|9\.533|4\.637|3\.449|6\.706|6\.393|
|8|10\.698|8\.342|4\.058|3\.018|5\.868|5\.594|

*Fuente: Elaboración propia a partir de datos de ARGOS*

Aunque con diferencias en los partidos segundo, tercero y cuarto menos significativas, sigue produciéndose una asignación más favorable al partido mayor y la asignación más desfavorable a los partidos mas pequeños.



|**Candidaturas**|**Votos**|**% votos**|**Escaños**|**% Escaños**|
| :- | :-: | :-: | :-: | :-: |
|P.S.O.E|85\.584|27,84|7|29,17|
|PP|66\.733|21,71|5|20,83|
|Cs|46\.941|15,27|4|16,67|
|COMPROMíS|44\.748|14,56|4|16,67|
|VOX|32\.461|10,56|2|8,33|
|UNIDES PODEM-EUPV|24\.140|7,85|2|8,33|

*Fuente: Elaboración propia a partir de datos de ARGOS*
##
## **EFECTO DE LAS CIRCUNSCRIPCIONES PROVINCIALES**

El hecho de que cada escaño no “cueste” en todas las circunscripciones electorales supone una ventaja enorme para los partidos mayoritarios especialmente en circunscripciones menores. Esto se ve claramente en la circunscripción de Castellón. Aunque la tendencia a la fragmentación producida en estas últimas elecciones ha reducido este efecto mucho respecto a convocatorias anteriores.

||**Votos** |**Escaños**|**Votos por escaños**|
| :- | :-: | :-: | :-: |
|Valencia|1\.432.434  |40|35\.810|
|Alicante|898\.706 |&emsp;35|&emsp;25\.677|
|&emsp;Castellón|&emsp;307\.396|&emsp;24|&emsp;12\.808|

*Fuente: Elaboración propia a partir de datos de ARGOS*


## **CONCLUSIÓN**

De los datos anteriores se puede entender que el “coste” de un Diputado no sea el mismo para cada partido y que, en lineas generales cuando mayor sea el partido, más fácil sea obtener un diputado más. 

|&emsp;|&emsp;**Votos totales**|&emsp;**Diputados**|&emsp;**Votos/Escaño**|
| :- | :-: | :-: | :-: |
|&emsp;PSOE|&emsp;643\.909|&emsp;27|&emsp;23\.848|
|&emsp;PP|&emsp;508\.534|&emsp;19|&emsp;26\.765|
|&emsp;Cs|&emsp;470\.676|&emsp;18|&emsp;26\.149|
|&emsp;COMPROMÍS|&emsp;443\.640|&emsp;17|&emsp;26\.096|
|&emsp;VOX|&emsp;281\.608|&emsp;10|&emsp;28\.161|
|&emsp;PODEMOS|&emsp;215\.392|&emsp;8|&emsp;26\.924|

*Fuente: Elaboración propia a partir de datos de ARGOS*



# 2	RELACIÓN ENTRE POLARIZACIÓN Y FORMATO DEL SISTEMA DE PARTIDOS

En principio la distribución de fuerzas y su peso electoral y parlamentario nos sitúa en un escenario claro de multipartidismo. Respecto a la polarización del sistema podemos señalar aspectos como la competencia fuerte por el electorado ideologizado de izquierda entre Compromís y Podemos y la actitud antisistema de VOX (oposición frontal al autogobierno, al bilingüismo, a la recuperación del derecho civil o la reforma de la financiación autonómica...). Ambas conductas nos definen tendencias centrífugas propias de un multipartidismo polarizado.

Aunque, por otra parte, también tendríamos la tendencia centrípeta propia de un partido *catch-all* como el PSOE y, últimamente, también recuperada en el PP valenciano que, de hecho, evita hablar de coalición con la derecha radical así como coincidir en el discurso. 

La polarización en si, adquiere una mayor importancia debido a dos factores. La identidad del País Valenciano como tal y los resultados electorales similares de las segundas y terceras fuerzas parlamentarias. Hablamos de un pueblo  histórico con una cultura y lengua que no se ajusta al viejo ideal de Estado-nación uniforme que defiende VOX. Además, existe una izquierda de marcado acento valencianista. Esto añadiría una nueva dimensión a la polarización al tener que considerarla no solo respecto al clivaje típico de izquierda-derecha, sino también centro-periferia o identitario Además como hemos avanzado, si consideramos la escasa diferencia de votos y escaños en términos (sobre todo) de los partidos más polarizados ( VOX, Compromís, Podemos), incluso un cálculo de la “polarización ponderada” nos daría un resultado elevado tanto electoral como parlamentaria.

No obstante, debemos tener en cuenta que el actual gobierno de coalición ya es el segundo (Botànic 2) y en estos momentos todos sus componentes (PSOE Compromís y Podemos) piden el voto para reeditar un Tercer Botànic frente a la posibilidad, ya real, de gobierno PP-VOX. Incluso el enfrentamiento entre Compromís y Podemos ha disminuido ante el temor compartido de que el partido morado no sume suficiente para reeditar el pacto. Por lo tanto, se empieza a asumir por parte de la izquierda, de VOX y de Ciudadanos la idea de alternancia de coaliciones.

En conclusión, podemos decir que observando la polarización, entre otras cuestiones como la fragmentación, concentración etc, el sistema de partidos valenciano que evolucionó del bipartidismo al multipartidismo polarizado actual, parece que tienda hacia algo similar a lo que Caramandi definió como bipolar; una reedición de la coalición de izquierdas y la posible alternancia con una nueva coalición de derechas pero no se trataría, de momento, de coaliciones preelectorales aunque no hay que descartar una futura “confluencia” entre Compromís y Podemos.

