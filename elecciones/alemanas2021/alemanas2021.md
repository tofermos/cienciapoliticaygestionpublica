---
title: "EL SISTEMA DE PARTIDOS ALEMÁN TRAS LAS ELECCIONES DEL 2021"
author: "Tomàs Ferrandis Moscardó"
date: "2021-12-10"
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

# 1. RESUMEN

El presente trabajo es una parte de un examen Take Home de la asignatura de *Introducción a la Ciencia política*. en él se analiza el sistema de partidos políticos alemán tras las elecciones federales de Alemania en 2021.

# 2. INTRODUCCIÓN

Las elecciones federales de Alemania de 2021 se celebraron el 26 de septiembre de 2021 en las que se eligieron 736 diputados para el Bundestag ( cámara baja alemana ).

El Parlamento alemán cuenta con un mínimo de 598 escaños. De éstos, 299 son adjudicados a candidatos de los länders ( estados ) elegidos directamente en el primer voto de la papeleta. Los otros 299 escaños se reparten entre los partidos elegidos a través del segundo voto basado en listas cerradas. No obstante, se pueden añadir diputados posteriormente para asegurar una proporcionalidad en los votos nacionales. En 2017 tendríamos un Bundestag de 709 escaños y en 2021, de 736.

## Consideraciones previas

En el presente trabajo, a efectos de cálculos para la obtención de indicadores parlamentarios, nos basaremos en el total de diputados obtenido de las dos papeletas. Para cálculos electorales ( porcentaje de votos ) consideraremos los votos a las listas cerradas ( segunda papeleta ).

En ambos casos tendremos en cuenta los partidos que han obtenido representación en las elecciones del 2021 o las anteriores del 2017.
En cuanto a los partidos de la democracia-cristiana se consideraran sumados los resultados del partido de ámbito nacional ( CDU ) y el de Baviera ( CSU ).
      
# 3. FRAGMENTACIÓN PARLAMENTARIA
La fragmentación es un valor entre 0 y 1 que indica el número de partidos y el tamaño relativo de éstos. Es decir, nos muestra cómo de fraccionado está el sistema de partidos. Cuando los valores se acercan a 1 se tiende a un sistema más fraccionado mientras que si se acercan a 0, tenderíamos a un partido pocas opciones políticas con posibilidades.

## Fragmentación parlamentaria 2021:

Fparlamentario=1−TantoX1escaños2

*Tabla 1. Elecciones Federales Alemania de 2021.  Fragmentación parlamentaria.*

||**Escaños 2021**|**TantoX1 escaños**|&emsp;&emsp;<b>( TantoX1 escaños) <sup>2</sup></b>|
| :--- | :- | :- | :- |
|&emsp;&emsp;**SPD** |&emsp;&emsp;206|&emsp;&emsp;0,28|&emsp;&emsp;0,08|
|&emsp;&emsp;**CDU/CSU** |&emsp;&emsp;197|&emsp;&emsp;0,27|&emsp;&emsp;0,07|
|&emsp;&emsp;**VERDES** |&emsp;&emsp;118|&emsp;&emsp;0,16|&emsp;&emsp;0,03|
|&emsp;&emsp;**FDP ( Liberales )** |&emsp;&emsp;92|&emsp;&emsp;0,13|&emsp;&emsp;0,02|
|&emsp;&emsp;**AfD (Ultraderecha)** |&emsp;&emsp;83|&emsp;&emsp;0,11|&emsp;&emsp;0,01|
|&emsp;&emsp;**LA IZQUIERDA** |&emsp;&emsp;39|&emsp;&emsp;0,05|&emsp;&emsp;0,03|
|&emsp;&emsp;**SSW** |&emsp;&emsp;1|&emsp;&emsp;0|&emsp;&emsp;0|
|&emsp;&emsp;|&emsp;&emsp;Total escaños:736|&emsp;&emsp;|&emsp;&emsp;Suma: 0,21|
|&emsp;&emsp;|&emsp;&emsp;**Fragmentación parlamentaria** |&emsp;&emsp;F = 1- 0,21 =  **0,79**||

## Operativa para el cálculo

1. En la 3ª columna ( “TantoX1 escaños” ) obtenemos el tanto por uno de escaños de cada partido dividiendo el número de escaños que ha obtenido por el total de escaños ( 736 ).
2. El tanto por uno obtenido se eleva al cuadrado en la 4ª columna.
3. Se suman de los valores de la 4ª columna ( “( TantoX1 escaños )2”) y nos da el valor 0,21.
4. Se resta este valor a 1.

En nuestro caso, estamos ante un sistema de partidos bastante fragmentado ( valor de fragmentación más cerca del 1 que del 0 ).


## Umbral electoral

La legislación alemana permite acceder al parlamento solo si se supera la **barrera legal** del 5% de los votos, no obstante se exime del cumplimiento de esta condición a los partidos de minorías étnicas como es el  SSW, partido de la minoría danesa de Schleswig-Holstein. Este partido solo se enfrenta pues a una **barrera real**.

Esta consideración con las minorías del sistema electoral alemán contribuye a un parlamento un poco más fragmentado. El sistema alemán apuesta por la calidad democrática en este aspecto ( más representatividad ) frente a la efectividad.

# 4. SISTEMA DE PARTIDOS

Si nos fijamos en los datos de las elecciones del 2017 comparados con estas últimas ( Tabla 2 ), vemos que en 2017 teníamos un **sistema de partidos multipartidista con dos partidos dominantes** según la clasificación de De Ware. En cambio, ahora, con el crecimiento del tercer partido ( Los Verdes ) , incluso del cuarto ( el partido liberal ), el sistema se acerca más a un **multipartidismo segmentado**.


*Tabla2. Comparativa resultados elecciones federales alemanas 2017 y 2021.*

|&emsp;&emsp;&emsp;|&emsp;&emsp;&emsp;**2021**|&emsp;&emsp;&emsp;**2017**|||
|:-- | :-: | :-: | :- | :- |
|&emsp;&emsp;&emsp;|&emsp;&emsp;&emsp;**Escaños**|&emsp;&emsp;&emsp;**% votos**|&emsp;&emsp;&emsp;**Escaños**|&emsp;&emsp;&emsp;**% votos**|
|&emsp;&emsp;&emsp;**SPD** |&emsp;&emsp;&emsp;206|&emsp;&emsp;&emsp;25,7|&emsp;&emsp;&emsp;153|&emsp;&emsp;&emsp;20,5|
|&emsp;&emsp;&emsp;**CDU/CSU** |&emsp;&emsp;&emsp;197|&emsp;&emsp;&emsp;24,07|&emsp;&emsp;&emsp;246|&emsp;&emsp;&emsp;32,9|
|&emsp;&emsp;&emsp;**VERDES** |&emsp;&emsp;&emsp;118|&emsp;&emsp;&emsp;14,75|&emsp;&emsp;&emsp;67|&emsp;&emsp;&emsp;8,9|
|&emsp;&emsp;&emsp;**FDP (Liberales)** |&emsp;&emsp;&emsp;92|&emsp;&emsp;&emsp;11,46|&emsp;&emsp;&emsp;80|&emsp;&emsp;&emsp;10,7|
|&emsp;&emsp;&emsp;**AfD (Ultraderecha)** |&emsp;&emsp;&emsp;83|&emsp;&emsp;&emsp;10,34|&emsp;&emsp;&emsp;94|&emsp;&emsp;&emsp;12,6|
|&emsp;&emsp;&emsp;**LA IZQUIERDA** |&emsp;&emsp;&emsp;39|&emsp;&emsp;&emsp;4,89|&emsp;&emsp;&emsp;69|&emsp;&emsp;&emsp;9,2|
|&emsp;&emsp;&emsp;**SSW** |&emsp;&emsp;&emsp;1|&emsp;&emsp;&emsp;0,1|&emsp;&emsp;&emsp;0|&emsp;&emsp;&emsp;0|
|&emsp;&emsp;&emsp;**Total**|&emsp;&emsp;&emsp;**736**|&emsp;&emsp;&emsp;|&emsp;&emsp;&emsp;**709**|&emsp;&emsp;&emsp;|


Si atendemos a la clasificación de Giovanni Sartori no cabe duda que estamos ante un sistema pluralista. Vayamos pues a valorar si es un **pluralismo moderado** o 

## Pluralismo polarizado

En una primera valoración podemos deducir que el hecho de que socialdemócratas, liberales y demócrata-cristianos compiten en el centro tenemos un rasgo inequívoco de pluralismo moderado. Incluso Los Verdes alemanes se han sumado a esta competencia reubicándose en las posiciones más centradas ( ecoliberalismo ) que representa su candidata. Por contra, la presencia de la ultraderecha y la izquierda radical como fuerzas antisistema es una señal clara de pluralismo polarizado.

Así pues, respecto a las anteriores elecciones del 2017, tenemos una evolución del ecologismo que se suma a la competición por el centro, el retroceso de los dos partidos antisistema y el cambio de un sistema de dos partidos predominantes a un sistema de tres. Esto nos permite afirmar que el sistema de partidos alemán ha evolucionado hacia un sistema **más pluralista aunque menos polarizado** y más moderado.

# 5. ANÁLISIS DEL RESULTADO: COMPETITIVIDAD Y CONCENTRACIÓN

## Competitividad

Si comparamos los resultados, tanto en porcentaje de votos como de escaños, con los obtenidos en 2017, podemos obtener el indicador de Competitividad que refleja la intensidad de la disputa entre los principales partidos.

La competitividad es la diferencia entre los dos primeros partidos. Hablaremos de competitividad electoral si consideramos los porcentajes de voto o de competitividad parlamentaria si consideramos los porcentajes de escaños.


 *Tabla3. Comparativa de competitividad en la elecciones federales alemanas 2017 y 2021*

|&emsp;&emsp;&emsp;|&emsp;&emsp;&emsp;**COMPETITIVIDAD 2021**|&emsp;&emsp;&emsp;**COMPETITIVIDAD 2017**|
| :-- | :-: | :-: |
|&emsp;&emsp;&emsp;Electoral|&emsp;&emsp;&emsp;1,67 |&emsp;&emsp;&emsp;12,50|
|&emsp;&emsp;&emsp;Parlamentaria|&emsp;&emsp;&emsp;1,22|&emsp;&emsp;&emsp;13,12|

 La competitividad electoral está por debajo del 5%, es por tanto muy alta.

## Operativa del cálculo:

Para la obtención del valor de competitividad electoral se resta el % de votos del primer partido y el segundo.

Para la obtención del valor de competitividad parlamentaria se resta el % de diputados del primer partido y del  segundo.

# 6. CONCENTRACIÓN

A partir de la suma del % de votos del primer y segundo partido obtenemos la concentración electoral que nos indica el peso que tiene el bipartidismo. De forma análoga si tomamos los porcentajes de escaños obtendremos la concentración parlamentaria.

*Tabla4. Comparativa de concentración de voto en la elecciones federales alemanas 2017 y 2021*

|&emsp;&emsp;&emsp;|&emsp;&emsp;&emsp;**CONCENTRACIÓN 2021**|&emsp;&emsp;&emsp;**CONCENTRACIÓN 2017**|
| :-- | :-: | :-: |
|&emsp;&emsp;&emsp;Electoral|&emsp;&emsp;&emsp;49,81%|&emsp;&emsp;&emsp;53,50%|
|&emsp;&emsp;&emsp;Parlamentaria|&emsp;&emsp;&emsp;54,76%|&emsp;&emsp;&emsp;56,28%|

La mayor pluralidad de la que hablábamos antes se ve también reflejada en una menor concentración de votos de los dos principales partidos en las elecciones del 2021 respecto a las anteriores.

# 7. VOLATILIDAD ELECTORAL

Con la volatilidad se cuantifica el cambio de preferencias partidistas entre elecciones. Para el cálculo de la volatilidad electoral tomaremos los porcentajes de votos de la segunda papeleta, lista cerrada.

La suma del valor absoluto de porcentaje de votos que ha variado para cada partido divido por 2. 

   VolatilidadElectoral=%votos2021−%votos20172

*Tabla 4. Volatilidad en la elecciones federales alemanas 2021 respecto a 2017*

|&emsp;&emsp;|&emsp;&emsp;**% votos 2021**|&emsp;&emsp;**% votos 2017**|&emsp;&emsp;` `**Diferencia**|
| :-- | :-: | :-: | :-: |
|&emsp;&emsp;**SPD** |&emsp;&emsp;25,74|&emsp;&emsp;20,5|&emsp;&emsp;5,24|
|&emsp;&emsp;**CDU/CSU** |&emsp;&emsp;24,07|&emsp;&emsp;32,9|&emsp;&emsp;8,93|
|&emsp;&emsp;**VERDES** |&emsp;&emsp;14,75|&emsp;&emsp;8,9|&emsp;&emsp;5,85|
|&emsp;&emsp;**FDP (Liberales)** |&emsp;&emsp;11,46|&emsp;&emsp;10,7|&emsp;&emsp;0,76|
|&emsp;&emsp;**AfD (Ultraderecha)** |&emsp;&emsp;10,34|&emsp;&emsp;12,6|&emsp;&emsp;2,26|
|&emsp;&emsp;**LA IZQUIERDA** |&emsp;&emsp;4,89|&emsp;&emsp;9,2|&emsp;&emsp;4,31|
|&emsp;&emsp;**SSW** |&emsp;&emsp;0,1|&emsp;&emsp;-|&emsp;&emsp;0,1|
|&emsp;&emsp;**Volatilidad electoral**|&emsp;&emsp;**13,73**|||


## Operativa de cálculo:

1. Se obtiene el valor absoluto de la diferencia de % de votos de cada partido en las elecciones consecutivas. **Volatilidad desagregada**.
2. Se suman estos valores y se divide por 2 y se obtiene la **volatilidad total o agregada**.

El valor va desde 0% a 100%. En el caso extremo de desaparecer todos los partidos, la suma de volatilidades desagregadas daría 200% ( 100% + 100; los partidos que desaparecen más lo nuevos ) , que al dividir-la por 2 daría 100%.

En el otro extremo tendríamos un resultado electoral idéntico al anterior: 0%

En las elecciones federales alemanas del 2021, gran parte de la volatilidad prácticamente es de tipo  **intrasistémica,** se produce entre partido ya existentes en el Bundestag desde 2017. No obstante también tenemos la entrada al parlamento del partido de la minoría danesa de Schleswig-Holstein, el SSW. Teniendo en cuenta que este partido no se presentó desde 1961 estamos estamos ante un calor ejemplo de volatilidad **extrasistémica**. 

Si comparamos la suma de los votos de las opciones de centro hasta la ultraderecha por un lado y la suma de los votos del bloque de izquierda y ecologismo, por otro podríamos aventurarnos a afirmar que puede haber habido una volatilidad **interbloques** además de la **intrabloque.**

*Tabla5. Suma de porcentajes de voto por bloques ideológicos según clivaje socioeconómico “Derecha-Izquierda”.*

|**BLOQUE**|**2021**|**2017**|
| :-- | :-: | :-: |
|SPD+ VERDES + LA IZQUIERDA|45,38%|38,6%|
|CDU/CSU+ FPD + AfD|45,87%|56,3%|

# 8. GOBERNABILIDAD Y REPRESENTATIVIDAD

Analicemos los factores que favorecen la gobernabilidad y los que la complican así como su relación con la representatividad, especialmente después del 2021.

## Aspectos que complican la gobernabilidad

El sistema electoral alemán en sí apuesta claramente por logar una cuota alta de representatividad de la sociedad en el Bundestag y sacrifica la eficacia deseable para facilitar gobiernos sin bloqueos. Se trata de un sistema electoral proporcional, un rasgo coherente con otros propios de una **democracia consensual** tanto en la dimensión *ejecutivos-partidos* ( gobierno de coalición, equilibrio de poderes, multipartidismo o corporativismo ) como en la dimensión *federal-unitaria* ( federalismo, bicameralismo… ) que tiene la democracia alemana.

Este hecho se refleja no solo en el resultado electoral fragmentado o en la oferta plural de partidos sino también en aspectos que hemos comentado como el posible incremento del número de diputados para buscar una mayor proporcionalidad o la exención de la barrera legal del 5% a opciones que representen minorías étnicas.

## Aspectos que ayudan a la gobernabilidad. El pluralismo moderado

A pesar de todo, los partidos políticos solucionan de forma responsable esta situación. Se da la paradoja que esta mayor fragmentación del sistema producida en 2021, se ha dado de forma paralela a una mayor competición por el centro político con el giro ecoliberal de Los Verdes y un descenso de los partidos extremistas. De hecho fue este nuevo escenario de pluralismo moderado ell que abrió varias posibilidades de negociación para alcanzar un gobierno de coalición. Recordemos que las elecciones posibilitan la configuración de gobiernos pero no lo determinan, esto es tarea de los partidos. Muy pronto la prensa empezó a hablar de la posible coalición “Jamaica” o coalición “Semáforo” en clara alusión de los colores con que identifican los cuatro principales partidos políticos:

- Coalición Jamaica ( Negro-amarillo-verde ): Demócrata-cristianos, liberales y verdes.
- Coalición Semáforo ( Rojo-amarillo-verde ): Socialdemócratas, liberales y verdes.

Algo destacable es que en ningún todo momento se ha eludido “toda alianza con partidos y candidatos antidemocráticos” ( Levitsky y Ziblatt: 2018).

# 9. BIBLIOGRAFIA Y WEBGRAFÍA
   
   * Deustcher Bundestag. (s.f ). *Elecciones*. https://www.bundestag.de/es/wahlen
   
   * Isabel Diz Otero, María Lois González y Amparo Novo Vázquez. *Ciencia política contemporánea.*  2012. Editorial UOC.

   * Steven Levitsky y Daniel Ziblatt, *Cómo mueren las democracias.* 2018. Editorial Planeta.

   
