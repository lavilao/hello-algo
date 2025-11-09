#set document(author: "krahets", title: "Hello 算法")
#set text(lang: "zh")
#set par(justify: true)

#outline()

#show heading.where(level: 1): it => {
  pagebreak(weak: true)
  align(center, text(2em, style: "normal", weight: "bold", it.body))
  v(1.5em)
}

#show heading.where(level: 2): it => {
  v(1.2em)
  text(1.5em, style: "normal", weight: "bold", it.body)
  v(0.8em)
}

#show heading.where(level: 3): it => {
  v(1em)
  text(1.2em, style: "normal", weight: "bold", it.body)
  v(0.6em)
}

#let tip(body) = {
  block(
    fill: rgb("#eef7fa"),
    stroke: rgb("#29b6f6"),
    radius: 4pt,
    inset: 8pt,
    width: 100%,
    body
  )
}

#let question(body) = {
  block(
    fill: rgb("#fff8e1"),
    stroke: rgb("#ffa726"),
    radius: 4pt,
    inset: 8pt,
    width: 100%,
    body
  )
}

#let note(body) = {
  block(
    fill: luma(240),
    stroke: luma(180),
    radius: 4pt,
    inset: 8pt,
    width: 100%,
    body
  )
}

#let success(body) = {
  block(
    fill: rgb("#e8f5e9"),
    stroke: rgb("#66bb6a"),
    radius: 4pt,
    inset: 8pt,
    width: 100%,
    body
  )
}

#let abstract(body) = {
  align(center, block(
    fill: luma(245),
    inset: 10pt,
    radius: 4pt,
    width: 80%,
    text(style: "italic", body)
  ))
}

#let codeblock(raw_code, lang: "python") = {
  block(
    fill: luma(245),
    inset: 10pt,
    radius: 4pt,
    width: 100%,
    raw(raw_code, lang: lang)
  )
}
= Antes de empezar
<antes-de-empezar>
Hace algunos años, compartí soluciones al problema "Sword for Offer" en
LeetCode, recibiendo elogios y soporte de muchos lectores. Durante las
interacciones con los lectores, la pregunta más común que me encontraba
era "Cómo puedo empezar con los algoritmos." Gradualmente, desarrollé un
interés fijo en esta pregunta.

Solucionar problemas directamente parece ser el método más popular ---
es sencillo, directo y eficiente. Sin embargo, resolver problemas es
parecer como jugar a un juego de Buscaminas: aquellos con habilidades de
autoestudio pueden solucionar las minas uno por uno, pero los que no
tienen bases sólidas pueden sentirse como abrumados por explosiones,
retirandose paso a paso por la frustración. Leer libros también es
común, pero para quienes aspiran a entrevistas laborales, la energía que
gastan en escribir tesis, presentar resumenes y la preparación para
exámenes y reuniones deja poco tiempo para leer libros densos,
convirtiéndolos en un arduo desafío.

Si estás enfrentando problemas similares, entonces este libro tiene la
suerte de encontrarte. Este libro es mi respuesta a la pregunta.
Mientras que puede no ser la mejor solucipon, es al menos un intento
positivo. Puede que este libro no te de una oferta de trabajo, pero si
te guiará a través del "mapa de conocimiento" de las estructuras de
datos y algoritmos, ayudará a entender las formas, tamaños y ubicaciones
de las diferentes "minas", y te permitirá dominar diversos métodos de
"demolición de minas". Con estas habilidades, creo que podrás resolver
problemas y leer literatura con mayor facilidad, construyendo
gradualmente un sistema de conocimientos.

Estoy completamente de acuerdo con la afirmación de Profesor Feynman:
'El conocimiento no es gratis. Debes prestar atención'. En este sentido,
este libro no es del todo gratuito. Para no decepcionar la preciosa
atención que dedicas a este libro, le dedicaré toda mi 'atención' a este
libro.

Entendiendo mis limitaciones, aunque el contenido de este libro ha sido
perfeccionado con el tiempo, seguramente quedan errores. Les pido
sinceramente críticas y correcciones a todos los profesores y
estudiantes.

#figure(image("es/docs/assets/covers/chapter_hello_algo.jpg"),
  caption: [
    Hello Algo
  ]
)

#block[
```
<h2 style="margin-top: 0.8em; margin-bottom: 0.8em;">Hola, Algo!</h2>
```

]
La aparición de las computadoras ha traído cambios significativos al
mundo. Con su potencia de procesamiento de alta velocidad y excelente
programabilidad, se han convertido en el medio ideal para ejecutar
algoritmos y procesar datos. Ya sea que sean los gráficos realistas de
los videojuegos, las decisiones inteligentes en la conducción autónoma,
los juegos de Go de AlphaGo, o las interacciones naturales de ChatGPT,
estos ejemplos son demostraciones exquisitas del trabajo de los
algoritgos en computadoras.

En realidad, antes de la llegada de las computadoras, los algoritmos y
las estructuras de datos ya existían en cada rincón del mundo. Los
algoritmos iniciales eran relativamente simples, como los métodos de
conteo antiguos y procedimientos de herramientas. A medida que la
civilización avanzó, los algoritmos se hicieron más refinados y
complejos. Desde la exquisita artesanía de los artesanos, hasta los
productos industriales que liberan fuerzas productivas, y desde las
leyes científicas que gobiernan el universo, casi todo lo ordinario o
asombroso tiene detrás de él el ingenioso pensamiento de los algoritmos.

De manera similar, las estructuras de datos están en todos lados: desde
las redes sociales hasta las lineas del metro, muchos sistemas pueden
ser modelados como "grafos"; desde un país hasta una familia, las formas
principales de organización social exhiben características de "árboles";
las ropas de invierno son como una "pila", donde la primera prenda
puesta es la última en retirarse; un tubo de badminton se asemeja a una
"fila", con un extremo para insertar y otro para retirar; un diccionario
es como un "tabla hash", permitiendo búsquedas rápidas del objetivo
deseado.

Este libro tiene como objetivo ayudar a los lectores a comprender los
conceptos fundamentales de los algoritalos y las estructuras de datos de
manera clara y fácil de entender, mediante ilustraciones animadas y
ejemplos de código ejecutables. Basado en esto, este libro busca revelar
las manifestaciones vívidas de los algoritmos en el mundo complejo,
destacando la belleza de los algoritmos. Espero que este libro pueda
ayudarte!
= Prefacio
<prefacio>
#figure(image("es/docs/assets/covers/chapter_preface.jpg"),
  caption: [
    Prefacio
  ]
)

!!! abstract

```
Los algoritmos son como una hermosa sinfonía, con cada línea de código fluyendo como un ritmo.

Que este libro suene suavemente en tu mente, dejando una melodía única y profunda.
```
= Acerca de este libro
<acerca-de-este-libro>
Este proyecto de código abierto tiene como objetivo crear un curso
gratuito y amigable para principiantes sobre estructuras de datos y
algoritmos.

- Ilustraciones animadas, contenido fácil de entender y una curva de
  aprendizaje suave ayudan a los principiantes a explorar el "mapa de
  conocimiento" de estructuras de datos y algoritmos.
- Ejecutar código con un solo clic, ayudando a los lectores a mejorar
  sus habilidades de programación y a comprender el funcionamiento de
  los algoritmos y la implementación de las estructuras de datos.
- Promoviendo el aprendizaje a través de la enseñanza, con la libertad
  de hacer preguntas y compartir conocimientos. ¡Vamos a crecer juntos a
  través de la discusión!

== Público objetivo
<público-objetivo>
- Si eres nuevo en algoritmos y tienes poca exposición, o tienes
  experiencia previa en algoritmos pero tienes una comprensión vaga de
  estructuras de datos y algoritmos, y saltas constantemente entre “sí”
  y “hmm”, entonces este libro es para ti!

- Si ya tienes cierta experiencia en la resolución de problemas y estás
  familiarizado con la mayoría de los tipos de problemas, entonces este
  libro puede ayudarte a revisar y organizar tu sistema de conocimiento
  de algoritmos. El repositorio del código fuente puede ser utilizado
  como un “kit de resolución de problemas” o una “guía rápida de
  algoritmos”.

- Si eres un experto en algoritmos, nos alegra recibir tus valiosas
  sugerencias, o
  #link("https://www.hello-algo.com/chapter_appendix/contribution/")[Únete a nosotros y colabora];.

!!! exitos "Requisitos"

```
Deberías saber leer y escribir código simple en al menos un lenguaje de programación.
```

== Estructura del contenido
<estructura-del-contenido>
El contenido principal del libro se muestra en la figura a continuación.

- #strong[Análisis de complejidad];: explora aspectos y métodos para
  evaluar estructuras de datos y algoritmos. Cubre métodos para derivar
  la complejidad del tiempo y la complejidad del espacio, junto con
  tipos y ejemplos comunes.
- #strong[Estructuras de datos];: se centra en los tipos de datos
  fundamentales, los métodos de clasificación, las definiciones, los
  pros y los contras, las operaciones comunes, los tipos, las
  aplicaciones y los métodos de implementación de estructuras de datos
  como arreglos, listas enlazadas, pilas, colas, tablas hash, árboles,
  montículos, grafos, etc.
- #strong[Algoritmos];: define algoritmos, discute sus pros y contras,
  eficiencia, escenarios de aplicación, pasos para la resolución de
  problemas e incluye preguntas de muestra para varios algoritmos como
  búsqueda, ordenación, divide y vencerás, backtracking, programación
  dinámica, algoritmos codiciosos y más.

#figure(image("es/docs/chapter_preface/about_the_book.assets/hello_algo_mindmap.png"),
  caption: [
    Contenido principal del libro
  ]
)

== Agradecimientos
<agradecimientos>
Este libro se mejora continuamente con los esfuerzos conjuntos de muchos
colaboradores de la comunidad de código abierto. Gracias a cada escritor
que invirtió su tiempo y energía, enumerados en el orden generado por
GitHub: krahets, coderonion, Gonglja, nuomi1, Reanon, justin-tse,
hpstory, danielsss, curtishd, night-cruise, S-N-O-R-L-A-X, msk397,
gvenusleo, khoaxuantu, RiverTwilight, rongyi, gyt95, zhuoqinyue, K3v123,
Zuoxun, mingXta, hello-ikun, FangYuan33, GN-Yu, yuelinxin, longsizhuo,
Cathay-Chen, guowei-gong, xBLACKICEx, IsChristina, JoseHung,
qualifier1024, QiLOL, pengchzn, Guanngxu, L-Super, WSL0809, Slone123c,
lhxsm, yuan0221, what-is-me, theNefelibatas, longranger2, cy-by-side,
xiongsp, JeffersonHuang, Transmigration-zhou, magentaqin, Wonderdch,
malone6, xiaomiusa87, gaofer, bluebean-cloud, a16su, Shyam-Chen, nanlei,
hongyun-robot, Phoenix0415, MolDuM, Nigh, he-weilai, junminhong, mgisr,
iron-irax, yd-j, XiaChuerwu, XC-Zero, seven1240, SamJin98, wodray,
reeswell, NI-SW, Horbin-Magician, Enlightenus, xjr7670, YangXuanyi,
DullSword, boloboloda, iStig, qq909244296, jiaxianhua, wenjianmin,
keshida, kilikilikid, lclc6, lwbaptx, liuxjerry, lucaswangdev,
lyl625760, hts0000, gledfish, fbigm, echo1937, szu17dmy, dshlstarr,
Yucao-cy, coderlef, czruby, bongbongbakudan, beintentional, ZongYangL,
ZhongYuuu, luluxia, xb534, bitsmi, ElaBosak233, baagod, zhouLion,
yishangzhang, yi427, yabo083, weibk, wangwang105, th1nk3r-ing, tao363,
4yDX3906, syd168, steventimes, sslmj2020, smilelsb, siqyka, selear,
sdshaoda, Xi-Row, popozhu, nuquist19, noobcodemaker, XiaoK29, chadyi,
ZhongGuanbin, shanghai-Jerry, JackYang-hellobobo, Javesun99, lipusheng,
BlindTerran, ShiMaRing, FreddieLi, FloranceYeh, iFleey, fanchenggang,
gltianwen, goerll, Dr-XYZ, nedchu, curly210102, CuB3y0nd, KraHsu,
CarrotDLaw, youshaoXG, bubble9um, fanenr, eagleanurag,
LifeGoesOnionOnionOnion, 52coder, foursevenlove, KorsChen, hezhizhen,
linzeyan, ZJKung, GaochaoZhu, hopkings2008, yang-le, Evilrabbit520,
Turing-1024-Lee, thomasq0…

El trabajo de revisión de código para este libro fue completado por
coderonion, Gonglja, gvenusleo, hpstory, justin‐tse, khoaxuantu,
krahets, night-cruise, nuomi1, Reanon y rongyi (enumerados en orden
alfabético). Gracias a ellos por su tiempo y esfuerzo, asegurando la
estandarización y uniformidad del código en varios idiomas.

La versión en chino tradicional de este libro fue revisada por
Shyam-Chen y Dr-XYZ, mientras que la versión en inglés fue revisada por
yuelinxin, K3v123, QiLOL, Phoenix0415, SamJin98, yanedie, RafaelCaso,
pengchzn, thomasq0 y magentaqin. Es gracias a sus continuas
contribuciones que este libro puede llegar y servir a un público más
amplio.

A lo largo de la creación de este libro, numerosas personas brindaron
una ayuda invaluable, que incluye, entre otras:

- Gracias a mi mentor en la empresa, el Dr.~Xi Li, quien me animó en una
  conversación a "moverme rápido", lo que solidificó mi determinación de
  escribir este libro;
- Gracias a mi novia Bubble, como la primera lectora de este libro, por
  ofrecer muchas sugerencias valiosas desde la perspectiva de una
  principiante en algoritmos, haciendo que este libro sea más adecuado
  para novatos;
- Gracias a Tengbao, Qibao y Feibao por idear un nombre creativo para
  este libro, evocando los gratos recuerdos de todos al escribir su
  primera línea de código "¡Hola, mundo!";
- Gracias a Xiaoquan por brindar ayuda profesional en propiedad
  intelectual, que ha desempeñado un papel importante en el desarrollo
  de este libro de código abierto;
- Gracias a Sutong por diseñar una hermosa portada y logotipo para este
  libro, y por hacer pacientemente múltiples revisiones bajo mi
  insistencia;
- Gracias a #cite(<squidfunk>, form: "prose") por brindar sugerencias de
  escritura y composición tipográfica, así como por su tema de
  documentación de código abierto desarrollado
  #link("https://github.com/squidfunk/mkdocs-material/tree/master")[Material-for-MkDocs];.

A lo largo del viaje de escritura, profundicé en numerosos libros de
texto y artículos sobre estructuras de datos y algoritmos. Estos
trabajos sirvieron como modelos ejemplares, asegurando la precisión y
calidad del contenido de este libro. ¡Extiendo mi gratitud a todos los
que me precedieron por sus invaluables contribuciones!

Este libro aboga por una combinación de aprendizaje práctico y mental,
inspirado en este sentido por
#link("https://github.com/d2l-ai/d2l-en")["Dive into Deep Learning"];.
Recomiendo encarecidamente este excelente libro a todos los lectores.

#strong[Un sincero agradecimiento a mis padres, cuyo continuo apoyo y
aliento me han permitido hacer este interesante trabajo];.

#bibliography("refs.bib")
= Cómo leer
<cómo-leer>
!!! tip

```
Para una mejor experiencia de lectura, se recomienda que lea esta sección.
```

== Convenciones de escritura
<convenciones-de-escritura>
- Los capítulos marcados con un '\*' después del título son opcionales y
  contienen contenido relativamente desafiante. Si tiene poco tiempo, es
  recomendable omitirlos.
- Los términos técnicos estarán en negrita (en las versiones impresa y
  en PDF) o subrayados (en la versión web), por ejemplo, arreglo. Es
  recomendable familiarizarse con ellos para una mejor comprensión de
  los textos técnicos.
- El #strong[texto en negrita] indica contenido clave o declaraciones de
  resumen, que merecen especial atención.
- Las palabras y frases con significados específicos se indican con
  "comillas" para evitar ambigüedades.
- Cuando se trata de términos que no son consistentes entre los
  lenguajes de programación, este libro sigue a Python, por ejemplo,
  usando `None` para significar `null`.
- Este libro ignora parcialmente las convenciones de comentarios para
  los lenguajes de programación a cambio de un diseño más compacto del
  contenido. Los comentarios consisten principalmente en tres tipos:
  comentarios de título, comentarios de contenido y comentarios de
  varias líneas.

\=== "Python"

````
```python title=""
"""Comentarios de encabezado para etiquetar funciones, clases, muestras de prueba, etc."""

# Comentarios para explicar detalles

"""
Comentarios
de varias líneas
"""
```
````

\=== "C++"

````
```cpp title=""
/* Comentarios de encabezado para etiquetar funciones, clases, muestras de prueba, etc. */

// Comentarios para explicar detalles.

/**
 * Comentarios
 * de varias líneas
 */
```
````

\=== "Java"

````
```java title=""
/* Comentarios de encabezado para etiquetar funciones, clases, muestras de prueba, etc. */

// Comentarios para explicar detalles.

/**
 * Comentarios
 * de varias líneas
 */
```
````

\=== "C\#"

````
```csharp title=""
/* Comentarios de encabezado para etiquetar funciones, clases, muestras de prueba, etc. */

// Comentarios para explicar detalles.

/**
 * Comentarios
 * de varias líneas
 */
```
````

\=== "Go"

````
```go title=""
/* Comentarios de encabezado para etiquetar funciones, clases, muestras de prueba, etc. */

// Comentarios para explicar detalles.

/**
 * Comentarios
 * de varias líneas
 */
```
````

\=== "Swift"

````
```swift title=""
/* Comentarios de encabezado para etiquetar funciones, clases, muestras de prueba, etc. */

// Comentarios para explicar detalles.

/**
 * Comentarios
 * de varias líneas
 */
```
````

\=== "JS"

````
```javascript title=""
/* Comentarios de encabezado para etiquetar funciones, clases, muestras de prueba, etc. */

// Comentarios para explicar detalles.

/**
 * Comentarios
 * de varias líneas
 */
```
````

\=== "TS"

````
```typescript title=""
/* Comentarios de encabezado para etiquetar funciones, clases, muestras de prueba, etc. */

// Comentarios para explicar detalles.

/**
 * Comentarios
 * de varias líneas
 */
```
````

\=== "Dart"

````
```dart title=""
/* Comentarios de encabezado para etiquetar funciones, clases, muestras de prueba, etc. */

// Comentarios para explicar detalles.

/**
 * Comentarios
 * de varias líneas
 */
```
````

\=== "Rust"

````
```rust title=""
/* Comentarios de encabezado para etiquetar funciones, clases, muestras de prueba, etc. */

// Comentarios para explicar detalles.

/**
 * Comentarios
 * de varias líneas
 */
```
````

\=== "C"

````
```c title=""
/* Comentarios de encabezado para etiquetar funciones, clases, muestras de prueba, etc. */

// Comentarios para explicar detalles.

/**
 * Comentarios
 * de varias líneas
 */
```
````

\=== "Kotlin"

````
```kotlin title=""
/* Comentarios de encabezado para etiquetar funciones, clases, muestras de prueba, etc. */

// Comentarios para explicar detalles.

/**
 * Comentarios
 * de varias líneas
 */
```
````

\=== "Zig"

````
```zig title=""
// Comentarios de encabezado para etiquetar funciones, clases, muestras de prueba, etc.

// Comentarios para explicar detalles.

// Comentarios
// de varias líneas
```
````

== Aprendizaje eficiente a través de ilustraciones animadas
<aprendizaje-eficiente-a-través-de-ilustraciones-animadas>
En comparación con el texto, los videos y las imágenes tienen una mayor
densidad de información y son más estructurados, lo que los hace más
fáciles de entender. En este libro, #strong[los conceptos clave y
difíciles se presentan principalmente a través de animaciones e
ilustraciones];, con el texto sirviendo como explicaciones y
complementos.

Cuando encuentre contenido con animaciones o ilustraciones como se
muestra en la figura a continuación, #strong[priorice la comprensión de
la figura, con el texto como suplementario];, integrando ambos para una
comprensión integral.

#figure(image("es/docs/index.assets/animation.gif"),
  caption: [
    Ejemplo de ilustración animada
  ]
)

== Profundizar la comprensión a través de la práctica de la codificación
<profundizar-la-comprensión-a-través-de-la-práctica-de-la-codificación>
El código fuente de este libro se encuentra en el
#link("https://github.com/krahets/hello-algo")[Repositorio de GitHub];.
Como se muestra en la figura a continuación, #strong[el código fuente
viene con ejemplos de prueba y se puede ejecutar con un solo clic];.

Si el tiempo lo permite, #strong[se recomienda que escriba el código
usted mismo];. Si tiene poco tiempo, al menos lea y ejecute todos los
códigos.

En comparación con solo leer código, escribir código a menudo produce
más aprendizaje. #strong[Aprender haciendo es la verdadera forma de
aprender.]

#figure(image("es/docs/index.assets/running_code.gif"),
  caption: [
    Ejemplo de código en ejecución
  ]
)

La configuración para ejecutar el código implica tres pasos principales.

#strong[Paso 1: Instale un entorno de programación local];. Siga el
#link("https://www.hello-algo.com/chapter_appendix/installation/")[tutorial]
en el apéndice para la instalación, u omita este paso si ya está
instalado.

#strong[Paso 2: Clone o descargue el repositorio de código];. Visite el
#link("https://github.com/krahets/hello-algo")[Repositorio de GitHub];.

Si #link("https://git-scm.com/downloads")[Git] está instalado, use el
siguiente comando para clonar el repositorio:

```shell
git clone https://github.com/krahets/hello-algo.git
```

Alternativamente, también puede hacer clic en el botón "Download ZIP" en
la ubicación que se muestra en la figura a continuación para descargar
directamente el código como un archivo ZIP comprimido. Luego,
simplemente puede extraerlo localmente.

#figure(image("es/docs/chapter_preface/suggestions.assets/download_code.png"),
  caption: [
    Clonación del repositorio y descarga del código
  ]
)

#strong[Paso 3: Ejecute el código fuente];. Como se muestra en la figura
a continuación, para el bloque de código etiquetado con el nombre del
archivo en la parte superior, podemos encontrar el archivo de código
fuente correspondiente en la carpeta `codes` del repositorio. Estos
archivos se pueden ejecutar con un solo clic, lo que le ayudará a
ahorrar tiempo de depuración innecesario y le permitirá concentrarse en
el aprendizaje.

#figure(image("es/docs/chapter_preface/suggestions.assets/code_md_to_repo.png"),
  caption: [
    Bloque de código y archivo de código fuente correspondiente
  ]
)

== Aprendiendo juntos en la discusión
<aprendiendo-juntos-en-la-discusión>
Mientras lee este libro, no se salte los puntos que no aprendió.
#strong[Siéntase libre de publicar sus preguntas en la sección de
comentarios];. Estaremos encantados de responderlas y, por lo general,
podemos responder en un plazo de dos días.

Como se ilustra en la figura a continuación, cada capítulo presenta una
sección de comentarios en la parte inferior. Le animo a que preste
atención a estos comentarios. No solo lo exponen a los problemas
encontrados por otros, lo que ayuda a identificar lagunas de
conocimiento y a generar una contemplación más profunda, sino que
también lo invitan a contribuir generosamente respondiendo las preguntas
de otros lectores, compartiendo ideas y fomentando la mejora mutua.

#figure(image("es/docs/index.assets/comment.gif"),
  caption: [
    Ejemplo de sección de comentarios
  ]
)

== Ruta de aprendizaje de algoritmos
<ruta-de-aprendizaje-de-algoritmos>
En general, el viaje para dominar las estructuras de datos y los
algoritmos se puede dividir en tres etapas:

+ #strong[Etapa 1: Introducción a los algoritmos];. Necesitamos
  familiarizarnos con las características y el uso de diversas
  estructuras de datos y aprender sobre los principios, procesos, usos y
  eficiencia de diferentes algoritmos.
+ #strong[Etapa 2: Practicar problemas de algoritmos];. Se recomienda
  comenzar con problemas populares, como
  #link("https://leetcode.cn/studyplan/coding-interviews/")[Sword for Offer]
  y
  #link("https://leetcode.cn/studyplan/top-100-liked/")[LeetCode Hot 100];,
  y acumular al menos 100 preguntas para familiarizarse con los
  problemas algorítmicos principales. El olvido puede ser un desafío
  cuando comienza a practicar, pero tenga la seguridad de que esto es
  normal. Podemos seguir la "Curva de olvido de Ebbinghaus" para revisar
  las preguntas y, por lo general, después de 3 a 5 rondas de
  repeticiones, podremos memorizarlas.
+ #strong[Etapa 3: Construir el sistema de conocimiento];. En términos
  de aprendizaje, podemos leer artículos de columnas de algoritmos,
  marcos de soluciones y libros de texto de algoritmos para enriquecer
  continuamente el sistema de conocimiento. En términos de práctica,
  podemos probar estrategias avanzadas, como categorizar por tema,
  múltiples soluciones para un solo problema y una solución para
  múltiples problemas, etc. Se pueden encontrar ideas sobre estas
  estrategias en varias comunidades.

Como se muestra en la figura a continuación, este libro cubre
principalmente la "Etapa 1", con el objetivo de ayudarlo a embarcarse de
manera más eficiente en las Etapas 2 y 3.

#figure(image("es/docs/chapter_preface/suggestions.assets/learning_route.png"),
  caption: [
    Ruta de aprendizaje de algoritmos
  ]
)
= Resumen
<resumen>
- El público principal de este libro son los principiantes en
  algoritmos. Si ya tiene algunos conocimientos básicos, este libro
  puede ayudarlo a revisar sistemáticamente sus conocimientos de
  algoritmos, y el código fuente de este libro también se puede utilizar
  como un "kit de herramientas de codificación".
- El libro consta de tres secciones principales, Análisis de
  complejidad, Estructuras de datos y Algoritmos, que cubren la mayoría
  de los temas en el campo.
- Para los recién llegados a los algoritmos, es crucial leer un libro
  introductorio en las etapas iniciales para evitar muchos desvíos o
  escollos comunes.
- Las animaciones y figuras dentro del libro generalmente se usan para
  presentar puntos clave y conocimientos difíciles. Se les debe prestar
  más atención al leer el libro.
- La práctica es la mejor manera de aprender a programar. Se recomienda
  encarecidamente que ejecute el código fuente y escriba el código usted
  mismo.
- Cada capítulo de la versión web de este libro cuenta con una sección
  de discusión, y le invitamos a compartir sus preguntas y puntos de
  vista en cualquier momento.
= Encuentro con los algoritmos
<encuentro-con-los-algoritmos>
#figure(image("es/docs/assets/covers/chapter_introduction.jpg"),
  caption: [
    Encuentro con los algoritmos
  ]
)

!!! abstract

```
Una grácil doncella baila, entrelazada con los datos, su falda se mece al son de la melodía de los algoritmos.

Te invita a un baile, sigue sus pasos y entra en el mundo de los algoritmos lleno de lógica y belleza.
```
= Los algoritmos están en todas partes
<los-algoritmos-están-en-todas-partes>
Cuando escuchamos la palabra "algoritmo", naturalmente pensamos en las
matemáticas. Sin embargo, muchos algoritmos no involucran matemáticas
complejas, sino que se basan más en la lógica básica, que se puede ver
en todas partes en nuestra vida diaria.

Antes de discutir formalmente los algoritmos, vale la pena compartir un
hecho interesante: #strong[ya ha aprendido inconscientemente muchos
algoritmos y se ha acostumbrado a aplicarlos en su vida diaria];. Aquí,
daré algunos ejemplos específicos para probar este punto.

#strong[Ejemplo 1: Consultar un diccionario];. En un diccionario de
inglés, las palabras se enumeran alfabéticamente. Supongamos que estamos
buscando una palabra que comienza con la letra $r$. Esto generalmente se
hace de la siguiente manera:

+ Abra el diccionario aproximadamente a la mitad y verifique la primera
  letra de la página, digamos que la letra es $m$.
+ Dado que $r$ viene después de $m$ en el alfabeto, podemos ignorar la
  primera mitad del diccionario y centrarnos en la segunda mitad.
+ Repita los pasos `1.` y `2.` hasta que encuentre la página donde la
  palabra comienza con $r$.

\=== "\<1\>"
#box(image("es/docs/chapter_introduction/algorithms_are_everywhere.assets/binary_search_dictionary_step1.png"))

\=== "\<2\>"
#box(image("es/docs/chapter_introduction/algorithms_are_everywhere.assets/binary_search_dictionary_step2.png"))

\=== "\<3\>"
#box(image("es/docs/chapter_introduction/algorithms_are_everywhere.assets/binary_search_dictionary_step3.png"))

\=== "\<4\>"
#box(image("es/docs/chapter_introduction/algorithms_are_everywhere.assets/binary_search_dictionary_step4.png"))

\=== "\<5\>"
#box(image("es/docs/chapter_introduction/algorithms_are_everywhere.assets/binary_search_dictionary_step5.png"))

Esta habilidad esencial para los estudiantes de primaria, consultar un
diccionario, es en realidad el famoso algoritmo de "búsqueda binaria".
Desde la perspectiva de la estructura de datos, podemos considerar el
diccionario como un "arreglo" ordenado; desde una perspectiva
algorítmica, la serie de acciones tomadas para buscar una palabra en el
diccionario se puede ver como una "búsqueda binaria".

#strong[Ejemplo 2: Organizar las cartas de juego];. Cuando jugamos a las
cartas, necesitamos organizar las cartas en nuestra mano en orden
ascendente, como se muestra en el siguiente proceso.

+ Divida las cartas de juego en secciones "ordenadas" y "desordenadas",
  asumiendo que inicialmente la carta del extremo izquierdo ya está en
  orden.
+ Saque una carta de la sección desordenada e insértela en la posición
  correcta en la sección ordenada; después de esto, las dos cartas del
  extremo izquierdo están en orden.
+ Continúe repitiendo el paso `2.` hasta que todas las cartas estén en
  orden.

#figure(image("es/docs/chapter_introduction/algorithms_are_everywhere.assets/playing_cards_sorting.png"),
  caption: [
    Proceso de clasificación de cartas de juego
  ]
)

El método anterior de organizar las cartas de juego es esencialmente el
algoritmo de "ordenamiento por inserción", que es muy eficiente para
conjuntos de datos pequeños. Las funciones de ordenación de muchos
lenguajes de programación incluyen el ordenamiento por inserción.

#strong[Ejemplo 3: Dar cambio];. Supongamos que compramos productos por
valor de $69$ yuanes en un supermercado y le damos al cajero $100$
yuanes, entonces el cajero necesita darnos $31$ yuanes de cambio.
Naturalmente, completarían el proceso de pensamiento como se muestra en
la figura a continuación.

+ Las opciones son monedas más pequeñas que $31$, incluidas $1$, $5$,
  $10$ y $20$.
+ Saque el $20$ más grande de las opciones, dejando $31 - 20 = 11$.
+ Saque el $10$ más grande de las opciones restantes, dejando
  $11 - 10 = 1$.
+ Saque el $1$ más grande de las opciones restantes, dejando
  $1 - 1 = 0$.
+ Complete el proceso de dar cambio, con la solución siendo
  $20 + 10 + 1 = 31$.

#figure(image("es/docs/chapter_introduction/algorithms_are_everywhere.assets/greedy_change.png"),
  caption: [
    Proceso de dar cambio
  ]
)

En los pasos anteriores, tomamos la mejor decisión en cada paso (usando
la denominación más grande posible), lo que finalmente da como resultado
un plan factible para dar cambio. Desde la perspectiva de las
estructuras de datos y los algoritmos, este método es esencialmente un
algoritmo "codicioso".

Desde cocinar una comida hasta los viajes interestelares, casi toda la
resolución de problemas involucra algoritmos. El advenimiento de las
computadoras nos permite almacenar estructuras de datos en la memoria y
escribir código para llamar a la CPU y la GPU para ejecutar algoritmos.
De esta manera, podemos transferir problemas de la vida real a las
computadoras, resolviendo varios problemas complejos de manera más
eficiente.

!!! tip

```
Si conceptos como estructuras de datos, algoritmos, arreglos y búsqueda binaria todavía le parecen algo oscuros, le animo a que siga leyendo. Este libro lo guiará suavemente al ámbito de la comprensión de las estructuras de datos y los algoritmos.
```
= ¿Qué es un algoritmo?
<qué-es-un-algoritmo>
== Definición de un algoritmo
<definición-de-un-algoritmo>
Un algoritmo es un conjunto de instrucciones o pasos para resolver un
problema específico en una cantidad finita de tiempo. Tiene las
siguientes características:

- El problema está claramente definido, incluidas las definiciones
  inequívocas de entrada y salida.
- El algoritmo es factible, lo que significa que se puede completar en
  un número finito de pasos, tiempo y espacio de memoria.
- Cada paso tiene un significado definitivo. La salida es
  consistentemente la misma bajo las mismas entradas y condiciones.

== Definición de una estructura de datos
<definición-de-una-estructura-de-datos>
Una estructura de datos es una forma de organizar y almacenar datos en
una computadora, con los siguientes objetivos de diseño:

- Minimizar la ocupación de espacio para ahorrar memoria de la
  computadora.
- Hacer que las operaciones de datos sean lo más rápidas posible,
  cubriendo el acceso, la adición, la eliminación, la actualización de
  datos, etc.
- Proporcionar una representación de datos concisa e información lógica
  para permitir una ejecución eficiente del algoritmo.

#strong[Diseñar estructuras de datos es un acto de equilibrio, que a
menudo requiere compensaciones];. Si desea mejorar en un aspecto, a
menudo necesita comprometerse en otro. Aquí hay dos ejemplos:

- En comparación con los arreglos, las listas enlazadas ofrecen más
  comodidad en la adición y eliminación de datos, pero sacrifican la
  velocidad de acceso a los datos.
- Los grafos, en comparación con las listas enlazadas, proporcionan
  información lógica más rica pero requieren más espacio de memoria.

== Relación entre estructuras de datos y algoritmos
<relación-entre-estructuras-de-datos-y-algoritmos>
Como se muestra en la figura a continuación, las estructuras de datos y
los algoritmos están muy relacionados y estrechamente integrados,
específicamente en los siguientes tres aspectos:

- Las estructuras de datos son la base de los algoritmos. Proporcionan
  almacenamiento de datos estructurado y métodos para manipular datos
  para algoritmos.
- Los algoritmos son el escenario donde entran en juego las estructuras
  de datos. La estructura de datos por sí sola solo almacena información
  de datos; es a través de la aplicación de algoritmos que se pueden
  resolver problemas específicos.
- Los algoritmos a menudo se pueden implementar en función de diferentes
  estructuras de datos, but su eficiencia de ejecución puede variar
  mucho. Elegir la estructura de datos adecuada es clave.

#figure(image("es/docs/chapter_introduction/what_is_dsa.assets/relationship_between_data_structure_and_algorithm.png"),
  caption: [
    Relación entre estructuras de datos y algoritmos
  ]
)

Las estructuras de datos y los algoritmos se pueden comparar con un
conjunto de bloques de construcción, como se ilustra en la figura a
continuación. Un conjunto de bloques de construcción incluye numerosas
piezas, acompañadas de instrucciones de montaje detalladas. Seguir estas
instrucciones paso a paso nos permite construir un intrincado modelo de
bloques.

#figure(image("es/docs/chapter_introduction/what_is_dsa.assets/assembling_blocks.png"),
  caption: [
    Montaje de bloques
  ]
)

La correspondencia detallada entre los dos se muestra en la tabla a
continuación.

Tabla ~ Comparación de estructuras de datos y algoritmos con bloques de
construcción
#figure(
  align(center)[#table(
    columns: (32.26%, 67.74%),
    align: (auto,auto,),
    table.header([Estructuras de datos y algoritmos], [Bloques de
      construcción],),
    table.hline(),
    [Datos de entrada], [Bloques sin montar],
    [Estructura de datos], [Organización de bloques, incluida la forma,
    el tamaño, las conexiones, etc.],
    [Algoritmo], [Una serie de pasos para ensamblar los bloques en la
    forma deseada],
    [Datos de salida], [Modelo de bloque completado],
  )]
  , kind: table
  )

Vale la pena señalar que las estructuras de datos y los algoritmos son
independientes de los lenguajes de programación. Por esta razón, este
libro puede proporcionar implementaciones en múltiples lenguajes de
programación.

!!! tip "Abreviatura convencional"

```
En las discusiones de la vida real, a menudo nos referimos a "Estructuras de datos y algoritmos" simplemente como "Algoritmos". Por ejemplo, los conocidos problemas de algoritmos de LeetCode en realidad prueban tanto el conocimiento de la estructura de datos como el del algoritmo.
```
= Resumen
<resumen>
- Los algoritmos son omnipresentes en la vida diaria y no son tan
  inaccesibles y complejos como podrían parecer. De hecho, ya hemos
  aprendido inconscientemente muchos algoritmos para resolver diversos
  problemas de la vida.
- El principio de buscar una palabra en un diccionario es consistente
  con el algoritmo de búsqueda binaria. El algoritmo de búsqueda binaria
  encarna el importante concepto algorítmico de divide y vencerás.
- El proceso de organizar las cartas de juego es muy similar al
  algoritmo de ordenamiento por inserción. El algoritmo de ordenamiento
  por inserción es adecuado para ordenar conjuntos de datos pequeños.
- Los pasos para dar cambio en moneda siguen esencialmente el algoritmo
  codicioso, donde cada paso implica tomar la mejor decisión posible en
  el momento.
- Un algoritmo es un conjunto de instrucciones o pasos que se utilizan
  para resolver un problema específico en una cantidad finita de tiempo,
  mientras que una estructura de datos es la forma en que se organizan y
  almacenan los datos en una computadora.
- Las estructuras de datos y los algoritmos están estrechamente
  vinculados. Las estructuras de datos son la base de los algoritmos, y
  los algoritmos son el escenario para utilizar las funciones de las
  estructuras de datos.
- Podemos comparar las estructuras de datos y los algoritmos con los
  bloques de construcción. Los bloques representan datos, la forma y el
  método de conexión de los bloques representan estructuras de datos, y
  los pasos para ensamblar los bloques corresponden a algoritmos.
= Análisis de complejidad
<análisis-de-complejidad>
#figure(image("es/docs/assets/covers/chapter_complexity_analysis.jpg"),
  caption: [
    Análisis de complejidad
  ]
)

!!! abstract

```
El análisis de complejidad es como un navegador espacio-temporal en el vasto universo de los algoritmos.

Nos guía en la exploración de las profundidades de las dimensiones del tiempo y el espacio, en busca de soluciones más elegantes.
```
= Evaluación del rendimiento de los algoritmos
<evaluación-del-rendimiento-de-los-algoritmos>
En el diseño de algoritmos, perseguimos los siguientes dos objetivos en
secuencia.

+ #strong[Encontrar una solución al problema];: El algoritmo debe
  encontrar de manera confiable la solución correcta dentro del rango
  especificado de entradas.
+ #strong[Buscar la solución óptima];: Para el mismo problema, pueden
  existir múltiples soluciones, y nuestro objetivo es encontrar el
  algoritmo más eficiente posible.

En otras palabras, bajo la premisa de poder resolver el problema, la
eficiencia del algoritmo se ha convertido en el principal criterio para
evaluar un algoritmo, que incluye las siguientes dos dimensiones.

- #strong[Eficiencia de tiempo];: La velocidad a la que se ejecuta un
  algoritmo.
- #strong[Eficiencia de espacio];: El tamaño del espacio de memoria
  ocupado por un algoritmo.

En resumen, #strong[nuestro objetivo es diseñar estructuras de datos y
algoritmos que sean rápidos y eficientes en el uso de la memoria];.
Evaluar eficazmente la eficiencia de los algoritmos es crucial porque
solo así podemos comparar varios algoritmos y guiar el proceso de diseño
y optimización de algoritmos.

Existen principalmente dos métodos de evaluación de la eficiencia:
pruebas reales y estimación teórica.

== Pruebas reales
<pruebas-reales>
Supongamos que tenemos los algoritmos `A` y `B`, ambos capaces de
resolver el mismo problema, y necesitamos comparar sus eficiencias. El
método más directo es usar una computadora para ejecutar estos dos
algoritmos, monitorear y registrar su tiempo de ejecución y uso de
memoria. Este método de evaluación refleja la situación real, pero tiene
limitaciones significativas.

Por un lado, #strong[es difícil eliminar la interferencia del entorno de
prueba];. Las configuraciones de hardware pueden afectar el rendimiento
del algoritmo. Por ejemplo, un algoritmo con un alto grado de
paralelismo es más adecuado para ejecutarse en CPU de varios núcleos,
mientras que un algoritmo que involucra operaciones de memoria
intensivas funciona mejor con memoria de alto rendimiento. Los
resultados de la prueba de un algoritmo pueden variar en diferentes
máquinas. Esto significa que probar en varias máquinas para calcular la
eficiencia promedio se vuelve impráctico.

Por otro lado, #strong[realizar una prueba completa consume muchos
recursos];. La eficiencia del algoritmo varía con el tamaño de los datos
de entrada. Por ejemplo, con volúmenes de datos más pequeños, el
algoritmo `A` podría ejecutarse más rápido que el `B`, pero con
volúmenes de datos más grandes, los resultados de la prueba pueden ser
los opuestos. Por lo tanto, para sacar conclusiones convincentes,
necesitamos probar una amplia gama de tamaños de datos de entrada, lo
que requiere recursos computacionales excesivos.

== Estimación teórica
<estimación-teórica>
Debido a las limitaciones significativas de las pruebas reales, podemos
considerar evaluar la eficiencia del algoritmo únicamente a través de
cálculos. Este método de estimación se conoce como análisis de
complejidad asintótica, o simplemente análisis de complejidad.

El análisis de complejidad refleja la relación entre los recursos de
tiempo y espacio necesarios para la ejecución del algoritmo y el tamaño
de los datos de entrada. #strong[Describe la tendencia de crecimiento en
el tiempo y el espacio requeridos por el algoritmo a medida que aumenta
el tamaño de los datos de entrada];. Esta definición puede sonar
compleja, pero podemos desglosarla en tres puntos clave para entenderla
mejor.

- "Recursos de tiempo y espacio" corresponden a complejidad de tiempo y
  complejidad de espacio, respectivamente.
- "A medida que aumenta el tamaño de los datos de entrada" significa que
  la complejidad refleja la relación entre la eficiencia del algoritmo y
  el volumen de datos de entrada.
- "La tendencia de crecimiento en tiempo y espacio" indica que el
  análisis de complejidad no se centra en los valores específicos del
  tiempo de ejecución o el espacio ocupado, sino en la "tasa" a la que
  aumenta el tiempo o el espacio.

#strong[El análisis de complejidad supera las desventajas de los métodos
de prueba reales];, lo que se refleja en los siguientes aspectos:

- No requiere ejecutar el código realmente, lo que lo hace más
  respetuoso con el medio ambiente y eficiente en energía.
- Es independiente del entorno de prueba y aplicable a todas las
  plataformas operativas.
- Puede reflejar la eficiencia del algoritmo bajo diferentes volúmenes
  de datos, especialmente en el rendimiento de algoritmos con grandes
  volúmenes de datos.

!!! tip

```
Si todavía está confundido sobre el concepto de complejidad, no se preocupe. Lo cubriremos en detalle en los capítulos siguientes.
```

El análisis de complejidad nos proporciona una "regla" para evaluar la
eficiencia de un algoritmo, lo que nos permite medir los recursos de
tiempo y espacio necesarios para ejecutarlo y comparar la eficiencia de
diferentes algoritmos.

La complejidad es un concepto matemático que puede ser abstracto y
desafiante para los principiantes. Desde esta perspectiva, el análisis
de complejidad podría no ser el tema más adecuado para presentar
primero. Sin embargo, al discutir las características de una estructura
de datos o algoritmo en particular, es difícil evitar analizar su
velocidad y uso de espacio.

En resumen, se recomienda desarrollar una comprensión básica del
análisis de complejidad antes de sumergirse profundamente en las
estructuras de datos y los algoritmos, #strong[para que pueda realizar
un análisis de complejidad en algoritmos simples];.
= Iteración y recursión
<iteración-y-recursión>
En los algoritmos, la ejecución repetida de una tarea es bastante común
y está estrechamente relacionada con el análisis de la complejidad. Por
lo tanto, antes de profundizar en los conceptos de complejidad temporal
y espacial, exploremos primero cómo implementar tareas repetitivas en la
programación. Esto implica comprender dos estructuras de control de
programación fundamentales: la iteración y la recursión.

== Iteración
<iteración>
La iteración es una estructura de control para realizar repetidamente
una tarea. En la iteración, un programa repite un bloque de código
siempre que se cumpla una determinada condición hasta que esta condición
ya no se satisfaga.

=== Bucles for
<bucles-for>
El bucle `for` es una de las formas más comunes de iteración, y
#strong[es particularmente adecuado cuando se conoce de antemano el
número de iteraciones];.

La siguiente función utiliza un bucle `for` para realizar una suma de
$1 + 2 + dots.h + n$, y la suma se almacena en la variable `res`. Es
importante tener en cuenta que en Python, `range(a, b)` crea un
intervalo que incluye `a` pero excluye `b`, lo que significa que itera
sobre el rango desde $a$ hasta $b - 1$.

```python
def for_loop(n: int) -> int:
    """for 循环"""
    res = 0
    # 循环求和 1, 2, ..., n-1, n
    for i in range(1, n + 1):
        res += i
    return res
```

La siguiente figura representa esta función de suma.

#figure(image("es/docs/chapter_computational_complexity/iteration_and_recursion.assets/iteration.png"),
  caption: [
    Diagrama de flujo de la función de suma
  ]
)

El número de operaciones en esta función de suma es proporcional al
tamaño de los datos de entrada $n$, o en otras palabras, tiene una
relación lineal. #strong[Esta "relación lineal" es lo que describe la
complejidad temporal];. Este tema se discutirá con más detalle en la
siguiente sección.

=== Bucles while
<bucles-while>
Al igual que los bucles `for`, los bucles `while` son otro enfoque para
implementar la iteración. En un bucle `while`, el programa comprueba una
condición al principio de cada iteración; si la condición es verdadera,
la ejecución continúa, de lo contrario, el bucle finaliza.

A continuación, utilizamos un bucle `while` para implementar la suma
$1 + 2 + dots.h + n$.

```python
def while_loop(n: int) -> int:
    """while 循环"""
    res = 0
    i = 1  # 初始化条件变量
    # 循环求和 1, 2, ..., n-1, n
    while i <= n:
        res += i
        i += 1  # 更新条件变量
    return res
```

#strong[Los bucles `while` proporcionan más flexibilidad que los bucles
`for`];, especialmente porque permiten la inicialización y modificación
personalizadas de la variable de condición en cada paso.

Por ejemplo, en el siguiente código, la variable de condición $i$ se
actualiza dos veces en cada ronda, lo que sería un inconveniente de
implementar con un bucle `for`.

```python
def while_loop_ii(n: int) -> int:
    """while 循环（两次更新）"""
    res = 0
    i = 1  # 初始化条件变量
    # 循环求和 1, 4, 10, ...
    while i <= n:
        res += i
        # 更新条件变量
        i += 1
        i *= 2
    return res
```

En general, #strong[los bucles `for` son más concisos, mientras que los
bucles `while` son más flexibles];. Ambos pueden implementar estructuras
iterativas. Cuál usar debe determinarse en función de los requisitos
específicos del problema.

=== Bucles anidados
<bucles-anidados>
Podemos anidar una estructura de bucle dentro de otra. A continuación se
muestra un ejemplo con bucles `for`:

```python
def nested_for_loop(n: int) -> str:
    """双层 for 循环"""
    res = ""
    # 循环 i = 1, 2, ..., n-1, n
    for i in range(1, n + 1):
        # 循环 j = 1, 2, ..., n-1, n
        for j in range(1, n + 1):
            res += f"({i}, {j}), "
    return res
```

La siguiente figura representa este bucle anidado.

#figure(image("es/docs/chapter_computational_complexity/iteration_and_recursion.assets/nested_iteration.png"),
  caption: [
    Diagrama de flujo del bucle anidado
  ]
)

En tales casos, el número de operaciones de la función es proporcional a
$n^2$, lo que significa que el tiempo de ejecución del algoritmo y el
tamaño de los datos de entrada $n$ tienen una "relación cuadrática".

Podemos aumentar aún más la complejidad agregando más bucles anidados,
cada nivel de anidación efectivamente "aumentando la dimensión", lo que
eleva la complejidad temporal a "cúbica", "cuártica", etc.

== Recursión
<recursión>
La recursión es una estrategia algorítmica en la que una función
resuelve un problema llamándose a sí misma. Implica principalmente dos
fases:

+ #strong[Llamada];: Aquí es donde el programa se llama a sí mismo
  repetidamente, a menudo con argumentos progresivamente más pequeños o
  más simples, avanzando hacia la "condición de terminación".
+ #strong[Retorno];: Al activar la "condición de terminación", el
  programa comienza a regresar desde la función recursiva más profunda,
  agregando los resultados de cada capa.

Desde una perspectiva de implementación, el código recursivo incluye
principalmente tres elementos.

+ #strong[Condición de terminación];: Determina cuándo cambiar de
  "llamada" a "retorno".
+ #strong[Llamada recursiva];: Corresponde a la "llamada", donde la
  función se llama a sí misma, generalmente con parámetros más pequeños
  o simplificados.
+ #strong[Resultado de retorno];: Corresponde al "retorno", donde el
  resultado del nivel de recursión actual se devuelve a la capa
  anterior.

Observe el siguiente código, donde simplemente llamar a la función
`recur(n)` puede calcular la suma de $1 + 2 + dots.h + n$:

```python
def recur(n: int) -> int:
    """递归"""
    # 终止条件
    if n == 1:
        return 1
    # 递：递归调用
    res = recur(n - 1)
    # 归：返回结果
    return n + res
```

La siguiente figura muestra el proceso recursivo de esta función.

#figure(image("es/docs/chapter_computational_complexity/iteration_and_recursion.assets/recursion_sum.png"),
  caption: [
    Proceso recursivo de la función de suma
  ]
)

Aunque la iteración y la recursión pueden lograr los mismos resultados
desde un punto de vista computacional, #strong[representan dos
paradigmas de pensamiento y resolución de problemas completamente
diferentes];.

- #strong[Iteración];: Resuelve problemas "de abajo hacia arriba".
  Comienza con los pasos más básicos y luego agrega o acumula
  repetidamente estos pasos hasta que se completa la tarea.
- #strong[Recursión];: Resuelve problemas "de arriba hacia abajo".
  Descompone el problema original en subproblemas más pequeños, cada uno
  de los cuales tiene la misma forma que el problema original. Estos
  subproblemas se descomponen aún más en subproblemas aún más pequeños,
  deteniéndose en el caso base cuya solución se conoce.

Tomemos el ejemplo anterior de la función de suma, definida como
$f \( n \) = 1 + 2 + dots.h + n$.

- #strong[Iteración];: En este enfoque, simulamos el proceso de suma
  dentro de un bucle. Comenzando desde $1$ y recorriendo hasta $n$,
  realizamos la operación de suma en cada iteración para finalmente
  calcular $f \( n \)$.
- #strong[Recursión];: Aquí, el problema se descompone en un
  subproblema: $f \( n \) = n + f \( n - 1 \)$. Esta descomposición
  continúa recursivamente hasta llegar al caso base, $f \( 1 \) = 1$,
  momento en el que finaliza la recursión.

=== Pila de llamadas
<pila-de-llamadas>
Cada vez que una función recursiva se llama a sí misma, el sistema
asigna memoria para que la función recién iniciada almacene variables
locales, la dirección de retorno y otra información relevante. Esto
conduce a dos resultados principales.

- Los datos de contexto de la función se almacenan en un área de memoria
  llamada "espacio de marco de pila" y solo se liberan después de que la
  función regresa. Por lo tanto, #strong[la recursión generalmente
  consume más espacio de memoria que la iteración];.
- Las llamadas recursivas introducen una sobrecarga adicional.
  #strong[Por lo tanto, la recursión suele ser menos eficiente en tiempo
  que los bucles.]

Como se muestra en la figura a continuación, hay $n$ funciones
recursivas no devueltas antes de activar la condición de terminación, lo
que indica una #strong[profundidad de recursión de $n$];.

#figure(image("es/docs/chapter_computational_complexity/iteration_and_recursion.assets/recursion_sum_depth.png"),
  caption: [
    Profundidad de la llamada de recursión
  ]
)

En la práctica, la profundidad de la recursión permitida por los
lenguajes de programación suele ser limitada, y una recursión
excesivamente profunda puede provocar errores de desbordamiento de la
pila.

=== Recursión de cola
<recursión-de-cola>
Curiosamente, #strong[si una función realiza su llamada recursiva como
el último paso antes de regresar,] el compilador o intérprete puede
optimizarla para que sea tan eficiente en espacio como la iteración.
Este escenario se conoce como recursión de cola.

- #strong[Recursión regular];: En la recursión estándar, cuando la
  función regresa al nivel anterior, continúa ejecutando más código, lo
  que requiere que el sistema guarde el contexto de la llamada anterior.
- #strong[Recursión de cola];: Aquí, la llamada recursiva es la
  operación final antes de que la función regrese. Esto significa que al
  regresar al nivel anterior, no se necesitan más acciones, por lo que
  el sistema no necesita guardar el contexto del nivel anterior.

Por ejemplo, al calcular $1 + 2 + dots.h + n$, podemos hacer que la
variable de resultado `res` sea un parámetro de la función, logrando así
la recursión de cola:

```python
def tail_recur(n: int, res: int) -> int:
    """尾递归"""
    # 终止条件
    if n == 0:
        return res
    # 尾递归调用
    return tail_recur(n - 1, res + n)
```

El proceso de ejecución de la recursión de cola se muestra en la figura
a continuación. Comparando la recursión regular y la recursión de cola,
el punto de la operación de suma es diferente.

- #strong[Recursión regular];: La operación de suma ocurre durante la
  fase de "retorno", lo que requiere otra suma después de que cada capa
  regresa.
- #strong[Recursión de cola];: La operación de suma ocurre durante la
  fase de "llamada", y la fase de "retorno" solo implica regresar a
  través de cada capa.

#figure(image("es/docs/chapter_computational_complexity/iteration_and_recursion.assets/tail_recursion_sum.png"),
  caption: [
    Proceso de recursión de cola
  ]
)

!!! tip

```
Tenga en cuenta que muchos compiladores o intérpretes no admiten la optimización de la recursión de cola. Por ejemplo, Python no admite la optimización de la recursión de cola de forma predeterminada, por lo que incluso si la función tiene la forma de recursión de cola, aún puede encontrar problemas de desbordamiento de la pila.
```

=== Árbol de recursión
<árbol-de-recursión>
Cuando se trata de algoritmos relacionados con "divide y vencerás", la
recursión a menudo ofrece un enfoque más intuitivo y un código más
legible que la iteración. Tomemos como ejemplo la "secuencia de
Fibonacci".

!!! question

```
Dada una secuencia de Fibonacci $0, 1, 1, 2, 3, 5, 8, 13, \dots$, encuentre el número $n$ en la secuencia.
```

Sea el número $n$ de la secuencia de Fibonacci $f \( n \)$, es fácil
deducir dos conclusiones:

- Los dos primeros números de la secuencia son $f \( 1 \) = 0$ y
  $f \( 2 \) = 1$.
- Cada número de la secuencia es la suma de los dos anteriores, es
  decir, $f \( n \) = f \( n - 1 \) + f \( n - 2 \)$.

Usando la relación recursiva y considerando los dos primeros números
como condiciones de terminación, podemos escribir el código recursivo.
Llamar a `fib(n)` producirá el número $n$ de la secuencia de Fibonacci:

```python
def fib(n: int) -> int:
    """斐波那契数列：递归"""
    # 终止条件 f(1) = 0, f(2) = 1
    if n == 1 or n == 2:
        return n - 1
    # 递归调用 f(n) = f(n-1) + f(n-2)
    res = fib(n - 1) + fib(n - 2)
    # 返回结果
    return res
```

Al observar el código anterior, vemos que llama recursivamente a dos
funciones dentro de sí mismo, #strong[lo que significa que una llamada
genera dos llamadas de bifurcación];. Como se ilustra en la figura a
continuación, esta llamada recursiva continua finalmente crea un árbol
de recursión con una profundidad de $n$.

#figure(image("es/docs/chapter_computational_complexity/iteration_and_recursion.assets/recursion_tree.png"),
  caption: [
    Árbol de recursión de la secuencia de Fibonacci
  ]
)

Fundamentalmente, la recursión encarna el paradigma de "descomponer un
problema en subproblemas más pequeños". Esta estrategia de divide y
vencerás es crucial.

- Desde una perspectiva algorítmica, muchas estrategias importantes como
  la búsqueda, la ordenación, el retroceso, el divide y vencerás y la
  programación dinámica utilizan directa o indirectamente esta forma de
  pensar.
- Desde la perspectiva de la estructura de datos, la recursión es
  naturalmente adecuada para tratar con listas enlazadas, árboles y
  grafos, ya que son muy adecuados para el análisis utilizando el
  enfoque de divide y vencerás.

== Comparación
<comparación>
Resumiendo el contenido anterior, la siguiente tabla muestra las
diferencias entre la iteración y la recursión en términos de
implementación, rendimiento y aplicabilidad.

Tabla: Comparación de las características de la iteración y la recursión
#figure(
  align(center)[#table(
    columns: (8.33%, 28.92%, 62.75%),
    align: (auto,auto,auto,),
    table.header([], [Iteración], [Recursión],),
    table.hline(),
    [Enfoque], [Estructura de bucle], [La función se llama a sí misma],
    [Eficiencia de tiempo], [Generalmente mayor eficiencia, sin
    sobrecarga de llamadas a funciones], [Cada llamada a una función
    genera una sobrecarga],
    [Uso de memoria], [Normalmente utiliza un tamaño fijo de espacio de
    memoria], [Las llamadas a funciones acumulativas pueden utilizar una
    cantidad sustancial de espacio de marco de pila],
    [Problemas adecuados], [Adecuado para tareas de bucle simples,
    código intuitivo y legible], [Adecuado para la descomposición de
    problemas, como árboles, grafos, divide y vencerás, retroceso, etc.,
    estructura de código concisa y clara],
  )]
  , kind: table
  )

!!! tip

```
Si encuentra difícil de entender el siguiente contenido, considere volver a visitarlo después de leer el capítulo "Pila".
```

Entonces, ¿cuál es la conexión intrínseca entre la iteración y la
recursión? Tomando como ejemplo la función recursiva anterior, la
operación de suma ocurre durante la fase de "retorno" de la recursión.
Esto significa que la función llamada inicialmente es la última en
completar su operación de suma, #strong[reflejando el principio de
"último en entrar, primero en salir" de una pila];.

Los términos recursivos como "pila de llamadas" y "espacio de marco de
pila" insinúan la estrecha relación entre la recursión y las pilas.

+ #strong[Llamada];: Cuando se llama a una función, el sistema asigna un
  nuevo marco de pila en la "pila de llamadas" para esa función,
  almacenando variables locales, parámetros, direcciones de retorno y
  otros datos.
+ #strong[Retorno];: Cuando una función completa la ejecución y regresa,
  el marco de pila correspondiente se elimina de la "pila de llamadas",
  restaurando el entorno de ejecución de la función anterior.

Por lo tanto, #strong[podemos usar una pila explícita para simular el
comportamiento de la pila de llamadas];, transformando así la recursión
en una forma iterativa:

```python
def for_loop_recur(n: int) -> int:
    """使用迭代模拟递归"""
    # 使用一个显式的栈来模拟系统调用栈
    stack = []
    res = 0
    # 递：递归调用
    for i in range(n, 0, -1):
        stack.append(i)
    # 归：返回结果
    while stack:
        res += stack.pop()
    # res = 1+2+3+...+n
    return res
```

Al observar el código anterior, cuando la recursión se transforma en
iteración, el código se vuelve más complejo. Aunque la iteración y la
recursión a menudo se pueden transformar entre sí, no siempre es
aconsejable hacerlo por dos razones:

- El código transformado puede volverse más difícil de entender y menos
  legible.
- Para algunos problemas complejos, simular el comportamiento de la pila
  de llamadas del sistema puede ser todo un desafío.

En conclusión, #strong[la elección entre iteración o recursión depende
de la naturaleza específica del problema];. En la práctica de la
programación, es crucial sopesar los pros y los contras de ambos y
elegir el enfoque más adecuado para la situación en cuestión.
= Complejidad temporal
<complejidad-temporal>
El tiempo de ejecución puede evaluar intuitivamente la eficiencia de un
algoritmo. ¿Cómo podemos estimar con precisión el tiempo de ejecución de
una parte de un algoritmo?

+ #strong[Determinación de la plataforma de ejecución];: Esto incluye la
  configuración del hardware, el lenguaje de programación, el entorno
  del sistema, etc., todo lo cual puede afectar la eficiencia de la
  ejecución del código.
+ #strong[Evaluación del tiempo de ejecución para diversas operaciones
  computacionales];: Por ejemplo, una operación de suma `+` podría
  tardar 1 ns, una operación de multiplicación `*` podría tardar 10 ns,
  una operación de impresión `print()` podría tardar 5 ns, etc.
+ #strong[Conteo de todas las operaciones computacionales en el código];:
  La suma de los tiempos de ejecución de todas estas operaciones da el
  tiempo de ejecución total.

Por ejemplo, considere el siguiente código con un tamaño de entrada de
$n$:

\=== "Python"

````
```python title=""
# Bajo una plataforma operativa
def algorithm(n: int):
    a = 2      # 1 ns
    a = a + 1  # 1 ns
    a = a * 2  # 10 ns
    # Ciclo n veces
    for _ in range(n):  # 1 ns
        print(0)        # 5 ns
```
````

\=== "C++"

````
```cpp title=""
// Bajo una plataforma operativa particular
void algorithm(int n) {
    int a = 2;  // 1 ns
    a = a + 1;  // 1 ns
    a = a * 2;  // 10 ns
    // Bucle n veces
    for (int i = 0; i < n; i++) {  // 1 ns , en cada ronda se ejecuta i++
        cout << 0 << endl;         // 5 ns
    }
}
```
````

\=== "Java"

````
```java title=""
// Bajo una plataforma operativa particular
void algorithm(int n) {
    int a = 2;  // 1 ns
    a = a + 1;  // 1 ns
    a = a * 2;  // 10 ns
    // Bucle n veces
    for (int i = 0; i < n; i++) {  // 1 ns , en cada ronda se ejecuta i++
        System.out.println(0);     // 5 ns
    }
}
```
````

Usando el método anterior, el tiempo de ejecución del algoritmo se puede
calcular como $\( 6 n + 12 \)$ ns:

$ 1 + 1 + 10 + \( 1 + 5 \) times n = 6 n + 12 $

Sin embargo, en la práctica, #strong[contar el tiempo de ejecución de un
algoritmo no es práctico ni razonable];. Primero, no queremos vincular
el tiempo estimado a la plataforma de ejecución, ya que los algoritmos
deben ejecutarse en varias plataformas. Segundo, es difícil saber el
tiempo de ejecución para cada tipo de operación, lo que dificulta el
proceso de estimación.

== Evaluación de la tendencia de crecimiento del tiempo
<evaluación-de-la-tendencia-de-crecimiento-del-tiempo>
El análisis de la complejidad temporal no cuenta el tiempo de ejecución
del algoritmo, #strong[sino la tendencia de crecimiento del tiempo de
ejecución a medida que aumenta el volumen de datos];.

Entendamos este concepto de "tendencia de crecimiento del tiempo" con un
ejemplo. Supongamos que el tamaño de los datos de entrada es $n$, y
consideremos tres algoritmos `A`, `B` y `C`:

\=== "Python"

````
```python title=""
# Complejidad temporal del algoritmo A: orden constante
def algorithm_A(n: int):
    print(0)
# Complejidad temporal del algoritmo B: orden lineal
def algorithm_B(n: int):
    for _ in range(n):
        print(0)
# Complejidad temporal del algoritmo C: orden constante
def algorithm_C(n: int):
    for _ in range(1000000):
        print(0)
```
````

La figura a continuación muestra las complejidades temporales de estos
tres algoritmos.

- El algoritmo `A` tiene solo una operación de impresión, y su tiempo de
  ejecución no crece con $n$. Su complejidad temporal se considera de
  "orden constante".
- El algoritmo `B` implica una operación de impresión en un bucle $n$
  veces, y su tiempo de ejecución crece linealmente con $n$. Su
  complejidad temporal es de "orden lineal".
- El algoritmo `C` tiene una operación de impresión en un bucle
  1,000,000 de veces. Aunque tarda mucho tiempo, es independiente del
  tamaño de los datos de entrada $n$. Por lo tanto, la complejidad
  temporal de `C` es la misma que la de `A`, que es de "orden
  constante".

#figure(image("es/docs/chapter_computational_complexity/time_complexity.assets/time_complexity_simple_example.png"),
  caption: [
    Tendencia de crecimiento del tiempo de los algoritmos a, b y c
  ]
)

En comparación con contar directamente el tiempo de ejecución de un
algoritmo, ¿cuáles son las características del análisis de complejidad
temporal?

- #strong[La complejidad temporal evalúa eficazmente la eficiencia del
  algoritmo];. Por ejemplo, el algoritmo `B` tiene un tiempo de
  ejecución que crece linealmente, que es más lento que el algoritmo `A`
  cuando $n > 1$ y más lento que `C` cuando $n > 1 \, 000 \, 000$. De
  hecho, siempre que el tamaño de los datos de entrada $n$ sea
  suficientemente grande, un algoritmo de complejidad de "orden
  constante" siempre será mejor que uno de "orden lineal", lo que
  demuestra la esencia de la tendencia de crecimiento del tiempo.
- #strong[El análisis de la complejidad temporal es más sencillo];.
  Obviamente, la plataforma de ejecución y los tipos de operaciones
  computacionales son irrelevantes para la tendencia de crecimiento del
  tiempo de ejecución. Por lo tanto, en el análisis de la complejidad
  temporal, podemos simplemente tratar el tiempo de ejecución de todas
  las operaciones computacionales como el mismo "tiempo unitario",
  simplificando el "conteo del tiempo de ejecución de la operación
  computacional" a un "conteo de operaciones computacionales". Esto
  reduce significativamente la complejidad de la estimación.
- #strong[La complejidad temporal tiene sus limitaciones];. Por ejemplo,
  aunque los algoritmos `A` y `C` tienen la misma complejidad temporal,
  sus tiempos de ejecución reales pueden ser bastante diferentes. Del
  mismo modo, aunque el algoritmo `B` tiene una complejidad temporal
  mayor que `C`, es claramente superior cuando el tamaño de los datos de
  entrada $n$ es pequeño. En estos casos, es difícil juzgar la
  eficiencia de los algoritmos basándose únicamente en la complejidad
  temporal. No obstante, a pesar de estos problemas, el análisis de la
  complejidad sigue siendo el método más eficaz y comúnmente utilizado
  para evaluar la eficiencia de los algoritmos.

== Límite superior asintótico
<límite-superior-asintótico>
Considere una función con un tamaño de entrada de $n$:

\=== "Python"

````
```python title=""
def algorithm(n: int):
    a = 1      # +1
    a = a + 1  # +1
    a = a * 2  # +1
    # Ciclo n veces
    for i in range(n):  # +1
        print(0)        # +1
```
````

Dado una función que representa el número de operaciones de un algoritmo
como una función del tamaño de la entrada $n$, denotada como
$T \( n \)$, considere el siguiente ejemplo:

$ T \( n \) = 3 + 2 n $

Dado que $T \( n \)$ es una función lineal, su tendencia de crecimiento
es lineal y, por lo tanto, su complejidad temporal es de orden lineal,
denotada como $O \( n \)$. Esta notación matemática, conocida como ,
representa el de la función $T \( n \)$.

En esencia, el análisis de la complejidad temporal consiste en encontrar
el límite superior asintótico del "número de operaciones $T \( n \)$".
Tiene una definición matemática precisa.

!!! note "Límite superior asintótico"

```
Si existen números reales positivos $c$ y $n_0$ tales que para todo $n > n_0$, $T(n) \leq c \cdot f(n)$, entonces se considera que $f(n)$ es un límite superior asintótico de $T(n)$, denotado como $T(n) = O(f(n))$.
```

Como se muestra en la figura a continuación, calcular el límite superior
asintótico implica encontrar una función $f \( n \)$ tal que, a medida
que $n$ se acerca al infinito, $T \( n \)$ y $f \( n \)$ tienen el mismo
orden de crecimiento, difiriendo solo por un factor constante $c$.

#figure(image("es/docs/chapter_computational_complexity/time_complexity.assets/asymptotic_upper_bound.png"),
  caption: [
    Límite superior asintótico de una función
  ]
)

== Método de cálculo
<método-de-cálculo>
Si bien el concepto de límite superior asintótico puede parecer
matemáticamente denso, no es necesario que lo comprenda por completo de
inmediato. Primero entendamos el método de cálculo, que se puede
practicar y comprender con el tiempo.

Una vez que se determina $f \( n \)$, obtenemos la complejidad temporal
$O \( f \( n \) \)$. Pero, ¿cómo determinamos el límite superior
asintótico $f \( n \)$? Este proceso generalmente implica dos pasos:
contar el número de operaciones y determinar el límite superior
asintótico.

=== Paso 1: contar el número de operaciones
<paso-1-contar-el-número-de-operaciones>
Este paso implica revisar el código línea por línea. Sin embargo, debido
a la presencia de la constante $c$ en $c dot.op f \( n \)$,
#strong[todos los coeficientes y términos constantes en $T \( n \)$
pueden ignorarse];. Este principio permite técnicas de simplificación en
el conteo de operaciones.

+ #strong[Ignorar los términos constantes en $T \( n \)$];, ya que no
  afectan a que la complejidad temporal sea independiente de $n$.
+ #strong[Omitir todos los coeficientes];. Por ejemplo, un bucle de
  $2 n$, $5 n + 1$ veces, etc., se puede simplificar a $n$ veces, ya que
  el coeficiente antes de $n$ no afecta la complejidad temporal.
+ #strong[Usar la multiplicación para bucles anidados];. El número total
  de operaciones es igual al producto del número de operaciones en cada
  bucle, aplicando las técnicas de simplificación de los puntos 1 y 2
  para cada nivel de bucle.

Dado una función, podemos usar estas técnicas para contar operaciones:

\=== "Python"

````
```python title=""
def algorithm(n: int):
    a = 1      # +0 (truco 1)
    a = a + n  # +0 (truco 1)
    # +n (técnica 2)
    for i in range(5 * n + 1):
        print(0)
    # +n*n (técnica 3)
    for i in range(2 * n):
        for j in range(n + 1):
            print(0)
```
````

La siguiente fórmula muestra los resultados del conteo antes y después
de la simplificación, ambos conduciendo a una complejidad temporal de
$O \( n^2 \)$:

\$\$
\\begin{aligned}
T(n) & = 2n(n + 1) + (5n + 1) + 2 & \\text{Conteo completo (-.-|||)} \\newline
& = 2n^2 + 7n + 3 \\newline
T(n) & = n^2 + n & \\text{Conteo simplificado (o.O)}
\\end{aligned}
\$\$

=== Paso 2: determinar el límite superior asintótico
<paso-2-determinar-el-límite-superior-asintótico>
#strong[La complejidad temporal está determinada por el término de orden
más alto en $T \( n \)$];. Esto se debe a que, a medida que $n$ se
acerca al infinito, el término de orden más alto domina, haciendo que la
influencia de otros términos sea insignificante.

La siguiente tabla ilustra ejemplos de diferentes recuentos de
operaciones y sus correspondientes complejidades temporales. Se utilizan
algunos valores exagerados para enfatizar que los coeficientes no pueden
alterar el orden de crecimiento. Cuando $n$ se vuelve muy grande, estas
constantes se vuelven insignificantes.

Tabla: Complejidad temporal para diferentes recuentos de operaciones
#figure(
  align(center)[#table(
    columns: 2,
    align: (auto,auto,),
    table.header([Recuento de operaciones $T \( n \)$], [Complejidad
      temporal $O \( f \( n \) \)$],),
    table.hline(),
    [$100000$], [$O \( 1 \)$],
    [$3 n + 2$], [$O \( n \)$],
    [$2 n^2 + 3 n + 2$], [$O \( n^2 \)$],
    [$n^3 + 10000 n^2$], [$O \( n^3 \)$],
    [$2^n + 10000 n^10000$], [$O \( 2^n \)$],
  )]
  , kind: table
  )

== Tipos comunes de complejidad temporal
<tipos-comunes-de-complejidad-temporal>
Consideremos el tamaño de los datos de entrada como $n$. Los tipos
comunes de complejidades temporales se muestran en la figura a
continuación, ordenados de menor a mayor:

\$\$
\\begin{aligned}
& O(1) \< O(\\log n) \< O(n) \< O(n \\log n) \< O(n^2) \< O(2^n) \< O(n!) \\newline
& \\text{Constante} \< \\text{Logarítmico} \< \\text{Lineal} \< \\text{Lineal-Logarítmico} \< \\text{Cuadrático} \< \\text{Exponencial} \< \\text{Factorial}
\\end{aligned}
\$\$

#figure(image("es/docs/chapter_computational_complexity/time_complexity.assets/time_complexity_common_types.png"),
  caption: [
    Tipos comunes de complejidad temporal
  ]
)

=== Orden constante $O \( 1 \)$
<orden-constante-o1>
El orden constante significa que el número de operaciones es
independiente del tamaño de los datos de entrada $n$. En la siguiente
función, aunque el número de operaciones `size` puede ser grande, la
complejidad temporal sigue siendo $O \( 1 \)$ ya que no está relacionada
con $n$:

```python
def constant(n: int) -> int:
    """常数阶"""
    count = 0
    size = 100000
    for _ in range(size):
        count += 1
    return count
```

=== Orden lineal $O \( n \)$
<orden-lineal-on>
El orden lineal indica que el número de operaciones crece linealmente
con el tamaño de los datos de entrada $n$. El orden lineal aparece
comúnmente en estructuras de un solo bucle:

```python
def linear(n: int) -> int:
    """线性阶"""
    count = 0
    for _ in range(n):
        count += 1
    return count
```

Operaciones como el recorrido de arreglos y el recorrido de listas
enlazadas tienen una complejidad temporal de $O \( n \)$, donde $n$ es
la longitud del arreglo o la lista:

```python
def array_traversal(nums: list[int]) -> int:
    """线性阶（遍历数组）"""
    count = 0
    # 循环次数与数组长度成正比
    for num in nums:
        count += 1
    return count
```

Es importante tener en cuenta que #strong[el tamaño de los datos de
entrada $n$ debe determinarse en función del tipo de datos de entrada];.
Por ejemplo, en el primer ejemplo, $n$ representa el tamaño de los datos
de entrada, mientras que en el segundo ejemplo, la longitud del arreglo
$n$ es el tamaño de los datos.

=== Orden cuadrático $O \( n^2 \)$
<orden-cuadrático-on2>
El orden cuadrático significa que el número de operaciones crece
cuadráticamente con el tamaño de los datos de entrada $n$. El orden
cuadrático suele aparecer en bucles anidados, donde tanto el bucle
externo como el interno tienen una complejidad temporal de $O \( n \)$,
lo que da como resultado una complejidad general de $O \( n^2 \)$:

```python
def quadratic(n: int) -> int:
    """平方阶"""
    count = 0
    # 循环次数与数据大小 n 成平方关系
    for i in range(n):
        for j in range(n):
            count += 1
    return count
```

La siguiente figura compara las complejidades temporales de orden
constante, lineal y cuadrático.

#figure(image("es/docs/chapter_computational_complexity/time_complexity.assets/time_complexity_constant_linear_quadratic.png"),
  caption: [
    Complejidades temporales de orden constante, lineal y cuadrático
  ]
)

Por ejemplo, en el ordenamiento de burbuja, el bucle externo se ejecuta
$n - 1$ veces, y el bucle interno se ejecuta $n - 1$, $n - 2$, …, $2$,
$1$ veces, con un promedio de $n \/ 2$ veces, lo que da como resultado
una complejidad temporal de $O \( \( n - 1 \) n \/ 2 \) = O \( n^2 \)$:

```python
def bubble_sort(nums: list[int]) -> int:
    """平方阶（冒泡排序）"""
    count = 0  # 计数器
    # 外循环：未排序区间为 [0, i]
    for i in range(len(nums) - 1, 0, -1):
        # 内循环：将未排序区间 [0, i] 中的最大元素交换至该区间的最右端
        for j in range(i):
            if nums[j] > nums[j + 1]:
                # 交换 nums[j] 与 nums[j + 1]
                tmp: int = nums[j]
                nums[j] = nums[j + 1]
                nums[j + 1] = tmp
                count += 3  # 元素交换包含 3 个单元操作
    return count
```

=== Orden exponencial $O \( 2^n \)$
<orden-exponencial-o2n>
La "división celular" biológica es un ejemplo clásico de crecimiento de
orden exponencial: comenzando con una célula, se convierte en dos
después de una división, cuatro después de dos divisiones, y así
sucesivamente, lo que da como resultado $2^n$ células después de $n$
divisiones.

La siguiente figura y el código simulan el proceso de división celular,
con una complejidad temporal de $O \( 2^n \)$:

```python
def exponential(n: int) -> int:
    """指数阶（循环实现）"""
    count = 0
    base = 1
    # 细胞每轮一分为二，形成数列 1, 2, 4, 8, ..., 2^(n-1)
    for _ in range(n):
        for _ in range(base):
            count += 1
        base *= 2
    # count = 1 + 2 + 4 + 8 + .. + 2^(n-1) = 2^n - 1
    return count
```

#figure(image("es/docs/chapter_computational_complexity/time_complexity.assets/time_complexity_exponential.png"),
  caption: [
    Complejidad temporal de orden exponencial
  ]
)

En la práctica, el orden exponencial aparece a menudo en funciones
recursivas. Por ejemplo, en el siguiente código, se divide
recursivamente en dos mitades, deteniéndose después de $n$ divisiones:

```python
def exp_recur(n: int) -> int:
    """指数阶（递归实现）"""
    if n == 1:
        return 1
    return exp_recur(n - 1) + exp_recur(n - 1) + 1
```

El crecimiento de orden exponencial es extremadamente rápido y se ve
comúnmente en métodos de búsqueda exhaustiva (fuerza bruta,
backtracking, etc.). Para problemas a gran escala, el orden exponencial
es inaceptable, y a menudo se requieren soluciones de programación
dinámica o algoritmos codiciosos.

=== Orden logarítmico $O \( log n \)$
<orden-logarítmico-olog-n>
En contraste con el orden exponencial, el orden logarítmico refleja
situaciones en las que "el tamaño se reduce a la mitad en cada ronda".
Dado un tamaño de datos de entrada $n$, dado que el tamaño se reduce a
la mitad en cada ronda, el número de iteraciones es $log_2 n$, la
función inversa de $2^n$.

La siguiente figura y el código simulan el proceso de "reducir a la
mitad en cada ronda", con una complejidad temporal de $O \( log_2 n \)$,
comúnmente abreviado como $O \( log n \)$:

```python
def logarithmic(n: int) -> int:
    """对数阶（循环实现）"""
    count = 0
    while n > 1:
        n = n / 2
        count += 1
    return count
```

#figure(image("es/docs/chapter_computational_complexity/time_complexity.assets/time_complexity_logarithmic.png"),
  caption: [
    Complejidad temporal de orden logarítmico
  ]
)

Al igual que el orden exponencial, el orden logarítmico también aparece
con frecuencia en funciones recursivas. El siguiente código forma un
árbol recursivo de altura $log_2 n$:

```python
def log_recur(n: int) -> int:
    """对数阶（递归实现）"""
    if n <= 1:
        return 0
    return log_recur(n / 2) + 1
```

El orden logarítmico es típico en algoritmos basados en la estrategia de
divide y vencerás, que encarna el enfoque de "dividir en muchos" y
"simplificar problemas complejos". Es de crecimiento lento y es la
complejidad temporal más ideal después del orden constante.

!!! tip "¿Cuál es la base de $O \( log n \)$?"

```
Técnicamente, "dividir en $m$" corresponde a una complejidad temporal de $O(\log_m n)$. Usando la fórmula de cambio de base del logaritmo, podemos equiparar diferentes complejidades logarítmicas:

$$
O(\log_m n) = O(\log_k n / \log_k m) = O(\log_k n)
$$

Esto significa que la base $m$ se puede cambiar sin afectar la complejidad. Por lo tanto, a menudo omitimos la base $m$ y simplemente denotamos el orden logarítmico como $O(\log n)$.
```

=== Orden lineal-logarítmico $O \( n log n \)$
<orden-lineal-logarítmico-on-log-n>
El orden lineal-logarítmico aparece a menudo en bucles anidados, con las
complejidades de los dos bucles siendo $O \( log n \)$ y $O \( n \)$
respectivamente. El código relacionado es el siguiente:

```python
def linear_log_recur(n: int) -> int:
    """线性对数阶"""
    if n <= 1:
        return 1
    # 一分为二，子问题的规模减小一半
    count = linear_log_recur(n // 2) + linear_log_recur(n // 2)
    # 当前子问题包含 n 个操作
    for _ in range(n):
        count += 1
    return count
```

La siguiente figura demuestra cómo se genera el orden
lineal-logarítmico. Cada nivel de un árbol binario tiene $n$
operaciones, y el árbol tiene $log_2 n + 1$ niveles, lo que da como
resultado una complejidad temporal de $O \( n log n \)$.

#figure(image("es/docs/chapter_computational_complexity/time_complexity.assets/time_complexity_logarithmic_linear.png"),
  caption: [
    Complejidad temporal de orden lineal-logarítmico
  ]
)

Los algoritmos de ordenación convencionales suelen tener una complejidad
temporal de $O \( n log n \)$, como el ordenamiento rápido, el
ordenamiento por fusión y el ordenamiento por montículos.

=== Orden factorial $O \( n ! \)$
<orden-factorial-on>
El orden factorial corresponde al problema matemático de la "permutación
completa". Dados $n$ elementos distintos, el número total de
permutaciones posibles es:

$ n ! = n times \( n - 1 \) times \( n - 2 \) times dots.h times 2 times 1 $

Los factoriales se implementan normalmente mediante recursión. Como se
muestra en el código y la figura a continuación, el primer nivel se
divide en $n$ ramas, el segundo nivel en $n - 1$ ramas, y así
sucesivamente, deteniéndose después del nivel $n$:

```python
def factorial_recur(n: int) -> int:
    """阶乘阶（递归实现）"""
    if n == 0:
        return 1
    count = 0
    # 从 1 个分裂出 n 个
    for _ in range(n):
        count += factorial_recur(n - 1)
    return count
```

#figure(image("es/docs/chapter_computational_complexity/time_complexity.assets/time_complexity_factorial.png"),
  caption: [
    Complejidad temporal de orden factorial
  ]
)

Nótese que el orden factorial crece incluso más rápido que el orden
exponencial; es inaceptable para valores de $n$ más grandes.

== Complejidades temporales en el peor, mejor y promedio de los casos
<complejidades-temporales-en-el-peor-mejor-y-promedio-de-los-casos>
#strong[La eficiencia temporal de un algoritmo a menudo no es fija, sino
que depende de la distribución de los datos de entrada];. Supongamos que
tenemos un arreglo `nums` de longitud $n$, que consta de números del $1$
al $n$, cada uno de los cuales aparece solo una vez, pero en un orden
barajado al azar. La tarea es devolver el índice del elemento $1$.
Podemos sacar las siguientes conclusiones:

- Cuando `nums = [?, ?, ..., 1]`, es decir, cuando el último elemento es
  $1$, se requiere un recorrido completo del arreglo, #strong[alcanzando
  la complejidad temporal en el peor de los casos de $O \( n \)$];.
- Cuando `nums = [1, ?, ?, ...]`, es decir, cuando el primer elemento es
  $1$, no importa la longitud del arreglo, no se necesita más recorrido,
  #strong[alcanzando la complejidad temporal en el mejor de los casos de
  $Omega \( 1 \)$];.

La "complejidad temporal en el peor de los casos" corresponde al límite
superior asintótico, denotado por la notación de O grande.
Correspondientemente, la "complejidad temporal en el mejor de los casos"
corresponde al límite inferior asintótico, denotado por $Omega$:

```src
[file]{worst_best_time_complexity}-[class]{}-[func]{find_one}
```

Es importante tener en cuenta que la complejidad temporal en el mejor de
los casos rara vez se utiliza en la práctica, ya que generalmente solo
se puede lograr con probabilidades muy bajas y puede ser engañosa.
#strong[La complejidad temporal en el peor de los casos es más práctica,
ya que proporciona un valor de seguridad para la eficiencia];, lo que
nos permite utilizar el algoritmo con confianza.

Del ejemplo anterior, está claro que tanto las complejidades temporales
en el peor como en el mejor de los casos solo ocurren bajo
"distribuciones de datos especiales", que pueden tener una pequeña
probabilidad de ocurrencia y pueden no reflejar con precisión la
eficiencia de ejecución del algoritmo. En contraste, #strong[la
complejidad temporal promedio puede reflejar la eficiencia del algoritmo
bajo datos de entrada aleatorios];, denotada por la notación $Theta$.

Para algunos algoritmos, podemos simplemente estimar el caso promedio
bajo una distribución de datos aleatoria. Por ejemplo, en el ejemplo
mencionado anteriormente, dado que el arreglo de entrada está barajado,
la probabilidad de que el elemento $1$ aparezca en cualquier índice es
igual. Por lo tanto, el número promedio de bucles para el algoritmo es
la mitad de la longitud del arreglo $n \/ 2$, lo que da una complejidad
temporal promedio de $Theta \( n \/ 2 \) = Theta \( n \)$.

Sin embargo, calcular la complejidad temporal promedio para algoritmos
más complejos puede ser bastante difícil, ya que es un desafío analizar
la expectativa matemática general bajo la distribución de datos. En
tales casos, generalmente usamos la complejidad temporal en el peor de
los casos como el estándar para juzgar la eficiencia del algoritmo.

!!! question "¿Por qué rara vez se ve el símbolo $Theta$?"

```
Posiblemente porque la notación $O$ se habla más comúnmente, a menudo se usa para representar la complejidad temporal promedio. Sin embargo, estrictamente hablando, esta práctica no es precisa. En este libro y otros materiales, si encuentra declaraciones como "complejidad temporal promedio $O(n)$", por favor, entiéndalo directamente como $\Theta(n)$.
```
= Complejidad espacial
<complejidad-espacial>
La complejidad espacial se utiliza para medir la tendencia de
crecimiento del espacio de memoria ocupado por un algoritmo a medida que
aumenta la cantidad de datos. Este concepto es muy similar a la
complejidad temporal, excepto que el "tiempo de ejecución" se reemplaza
por "espacio de memoria ocupado".

== Espacio relacionado con los algoritmos
<espacio-relacionado-con-los-algoritmos>
El espacio de memoria utilizado por un algoritmo durante su ejecución
incluye principalmente los siguientes tipos.

- #strong[Espacio de entrada];: Se utiliza para almacenar los datos de
  entrada del algoritmo.
- #strong[Espacio temporal];: Se utiliza para almacenar variables,
  objetos, contextos de funciones y otros datos durante la ejecución del
  algoritmo.
- #strong[Espacio de salida];: Se utiliza para almacenar los datos de
  salida del algoritmo.

Generalmente, el alcance de las estadísticas de complejidad espacial
incluye tanto el "Espacio temporal" como el "Espacio de salida".

El espacio temporal se puede dividir a su vez en tres partes.

- #strong[Datos temporales];: Se utilizan para guardar varias
  constantes, variables, objetos, etc., durante la ejecución del
  algoritmo.
- #strong[Espacio de marco de pila];: Se utiliza para guardar los datos
  de contexto de la función llamada. El sistema crea un marco de pila en
  la parte superior de la pila cada vez que se llama a una función, y el
  espacio del marco de pila se libera después de que la función regresa.
- #strong[Espacio de instrucciones];: Se utiliza para almacenar
  instrucciones de programa compiladas, que generalmente son
  insignificantes en las estadísticas reales.

Al analizar la complejidad espacial de un programa, #strong[normalmente
contamos los datos temporales, el espacio del marco de pila y los datos
de salida];, como se muestra en la figura a continuación.

#figure(image("es/docs/chapter_computational_complexity/space_complexity.assets/space_types.png"),
  caption: [
    Tipos de espacio utilizados en los algoritmos
  ]
)

El código relevante es el siguiente:

\=== "Python"

````
```python title=""
class Node:
    """Clases"""
    def __init__(self, x: int):
        self.val: int = x               # valor del nodo
        self.next: Node | None = None   # referencia al siguiente nodo

def function() -> int:
    """Funciones"""
    # Realizar ciertas operaciones...
    return 0

def algorithm(n) -> int:    # datos de entrada
    A = 0                   # datos temporales (constante, generalmente en mayúsculas)
    b = 0                   # datos temporales (variable)
    node = Node(0)          # datos temporales (objeto)
    c = function()          # Espacio de marco de pila (llamar a la función)
    return A + b + c        # datos de salida
```
````

== Método de cálculo
<método-de-cálculo>
El método para calcular la complejidad espacial es aproximadamente
similar al de la complejidad temporal, con el único cambio de que el
objeto estadístico pasa de ser el "número de operaciones" al "tamaño del
espacio utilizado".

Sin embargo, a diferencia de la complejidad temporal,
#strong[normalmente solo nos centramos en la complejidad espacial en el
peor de los casos];. Esto se debe a que el espacio de memoria es un
requisito estricto y debemos asegurarnos de que haya suficiente espacio
de memoria reservado para todos los datos de entrada.

Considere el siguiente código, el término "peor de los casos" en la
complejidad espacial en el peor de los casos tiene dos significados.

+ #strong[Basado en los peores datos de entrada];: Cuando $n < 10$, la
  complejidad espacial es $O \( 1 \)$; pero cuando $n > 10$, el arreglo
  inicializado `nums` ocupa un espacio de $O \( n \)$, por lo que la
  complejidad espacial en el peor de los casos es $O \( n \)$.
+ #strong[Basado en el pico de memoria utilizado durante la ejecución
  del algoritmo];: Por ejemplo, antes de ejecutar la última línea, el
  programa ocupa un espacio de $O \( 1 \)$; al inicializar el arreglo
  `nums`, el programa ocupa un espacio de $O \( n \)$, por lo que la
  complejidad espacial en el peor de los casos es $O \( n \)$.

\=== "Python"

````
```python title=""
def algorithm(n: int):
    a = 0               # O(1)
    b = [0] * 10000     # O(1)
    if n > 10:
        nums = [0] * n  # O(n)
```
````

#strong[En las funciones recursivas, se debe tener en cuenta el espacio
del marco de pila];. Considere el siguiente código:

\=== "Python"

````
```python title=""
def function() -> int:
    # Realizar ciertas operaciones
    return 0

def loop(n: int):
    """Bucle O(1)"""
    for _ in range(n):
        function()

def recur(n: int):
    """Recursión O(n)"""
    if n == 1:
        return
    return recur(n - 1)
```
````

La complejidad temporal de las funciones `loop()` y `recur()` es
$O \( n \)$, pero sus complejidades espaciales difieren.

- La función `loop()` llama a `function()` $n$ veces en un bucle, donde
  el `function()` de cada iteración regresa y libera su espacio de marco
  de pila, por lo que la complejidad espacial permanece en $O \( 1 \)$.
- La función recursiva `recur()` tendrá $n$ instancias de la función
  `recur()` no devueltas que existen simultáneamente durante su
  ejecución, por lo que ocupa un espacio de marco de pila de
  $O \( n \)$.

== Tipos comunes
<tipos-comunes>
Sea el tamaño de los datos de entrada $n$, la siguiente figura muestra
los tipos comunes de complejidades espaciales (ordenados de menor a
mayor).

$  & O \( 1 \) < O \( log n \) < O \( n \) < O \( n^2 \) < O \( 2^n \)\
 & upright("Constante") < upright("Logarítmico") < upright("Lineal") < upright("Cuadrático") < upright("Exponencial") $

#figure(image("es/docs/chapter_computational_complexity/space_complexity.assets/space_complexity_common_types.png"),
  caption: [
    Tipos comunes de complejidad espacial
  ]
)

=== Orden constante $O \( 1 \)$
<orden-constante-o1>
El orden constante es común en constantes, variables, objetos que son
independientes del tamaño de los datos de entrada $n$.

Tenga en cuenta que la memoria ocupada al inicializar variables o llamar
a funciones en un bucle, que se libera al entrar en el siguiente ciclo,
no se acumula en el espacio, por lo que la complejidad espacial
permanece en $O \( 1 \)$:

```python
def constant(n: int):
    """常数阶"""
    # 常量、变量、对象占用 O(1) 空间
    a = 0
    nums = [0] * 10000
    node = ListNode(0)
    # 循环中的变量占用 O(1) 空间
    for _ in range(n):
        c = 0
    # 循环中的函数占用 O(1) 空间
    for _ in range(n):
        function()
```

=== Orden lineal $O \( n \)$
<orden-lineal-on>
El orden lineal es común en arreglos, listas enlazadas, pilas, colas,
etc., donde el número de elementos es proporcional a $n$:

```python
def linear(n: int):
    """线性阶"""
    # 长度为 n 的列表占用 O(n) 空间
    nums = [0] * n
    # 长度为 n 的哈希表占用 O(n) 空间
    hmap = dict[int, str]()
    for i in range(n):
        hmap[i] = str(i)
```

Como se muestra en la figura a continuación, la profundidad recursiva de
esta función es $n$, lo que significa que hay $n$ instancias de la
función `linear_recur()` no devueltas, que utilizan un tamaño de
$O \( n \)$ de espacio de marco de pila:

```python
def linear_recur(n: int):
    """线性阶（递归实现）"""
    print("递归 n =", n)
    if n == 1:
        return
    linear_recur(n - 1)
```

#figure(image("es/docs/chapter_computational_complexity/space_complexity.assets/space_complexity_recursive_linear.png"),
  caption: [
    Función recursiva que genera una complejidad espacial de orden
    lineal
  ]
)

=== Orden cuadrático $O \( n^2 \)$
<orden-cuadrático-on2>
El orden cuadrático es común en matrices y grafos, donde el número de
elementos es cuadrático a $n$:

```python
def quadratic(n: int):
    """平方阶"""
    # 二维列表占用 O(n^2) 空间
    num_matrix = [[0] * n for _ in range(n)]
```

Como se muestra en la figura a continuación, la profundidad recursiva de
esta función es $n$, y en cada llamada recursiva, se inicializa un
arreglo con longitudes $n$, $n - 1$, $dots.h$, $2$, $1$, con un promedio
de $n \/ 2$, por lo que en general ocupa un espacio de $O \( n^2 \)$:

```python
def quadratic_recur(n: int) -> int:
    """平方阶（递归实现）"""
    if n <= 0:
        return 0
    # 数组 nums 长度为 n, n-1, ..., 2, 1
    nums = [0] * n
    return quadratic_recur(n - 1)
```

#figure(image("es/docs/chapter_computational_complexity/space_complexity.assets/space_complexity_recursive_quadratic.png"),
  caption: [
    Función recursiva que genera una complejidad espacial de orden
    cuadrático
  ]
)

=== Orden exponencial $O \( 2^n \)$
<orden-exponencial-o2n>
El orden exponencial es común en los árboles binarios. Observe la figura
a continuación, un "árbol binario completo" con $n$ niveles tiene
$2^n - 1$ nodos, ocupando un espacio de $O \( 2^n \)$:

```python
def build_tree(n: int) -> TreeNode | None:
    """指数阶（建立满二叉树）"""
    if n == 0:
        return None
    root = TreeNode(0)
    root.left = build_tree(n - 1)
    root.right = build_tree(n - 1)
    return root
```

#figure(image("es/docs/chapter_computational_complexity/space_complexity.assets/space_complexity_exponential.png"),
  caption: [
    Árbol binario completo que genera una complejidad espacial de orden
    exponencial
  ]
)

=== Orden logarítmico $O \( log n \)$
<orden-logarítmico-olog-n>
El orden logarítmico es común en los algoritmos de divide y vencerás.
Por ejemplo, en el ordenamiento por fusión, un arreglo de longitud $n$
se divide recursivamente por la mitad en cada ronda, formando un árbol
de recursión de altura $log n$, utilizando un espacio de marco de pila
de $O \( log n \)$.

Otro ejemplo es convertir un número en una cadena. Dado un entero
positivo $n$, su número de dígitos es $log_10 n + 1$, que corresponde a
la longitud de la cadena, por lo que la complejidad espacial es
$O \( log_10 n + 1 \) = O \( log n \)$.

== Equilibrio entre tiempo y espacio
<equilibrio-entre-tiempo-y-espacio>
Idealmente, nuestro objetivo es que tanto la complejidad temporal como
la espacial sean óptimas. Sin embargo, en la práctica, optimizar ambas
simultáneamente suele ser difícil.

#strong[Reducir la complejidad temporal generalmente se logra a costa de
una mayor complejidad espacial, y viceversa];. El enfoque de sacrificar
el espacio de memoria para mejorar la velocidad del algoritmo se conoce
como "intercambio espacio-tiempo"; lo contrario se conoce como
"intercambio tiempo-espacio".

La elección depende de qué aspecto valoremos más. En la mayoría de los
casos, el tiempo es más valioso que el espacio, por lo que el
"intercambio espacio-tiempo" suele ser la estrategia más común. Por
supuesto, controlar la complejidad espacial también es muy importante
cuando se trata de grandes volúmenes de datos.
= Resumen
<resumen>
=== Revisión clave
<revisión-clave>
#strong[Evaluación de la eficiencia del algoritmo]

- La eficiencia temporal y la eficiencia espacial son los dos criterios
  principales para evaluar los méritos de un algoritmo.
- Podemos evaluar la eficiencia del algoritmo mediante pruebas reales,
  pero es difícil eliminar la influencia del entorno de prueba y consume
  importantes recursos computacionales.
- El análisis de complejidad puede superar las desventajas de las
  pruebas reales. Sus resultados son aplicables en todas las plataformas
  operativas y pueden revelar la eficiencia de los algoritmos en
  diferentes escalas de datos.

#strong[Complejidad temporal]

- La complejidad temporal mide la tendencia del tiempo de ejecución de
  un algoritmo con el aumento del volumen de datos, evaluando
  eficazmente la eficiencia del algoritmo. Sin embargo, puede fallar en
  ciertos casos, como con volúmenes de datos de entrada pequeños o
  cuando las complejidades temporales son las mismas, lo que dificulta
  la comparación precisa de la eficiencia de los algoritmos.
- La complejidad temporal en el peor de los casos se denota usando la
  notación de O grande, que representa el límite superior asintótico,
  reflejando el nivel de crecimiento del número de operaciones
  $T \( n \)$ a medida que $n$ se acerca al infinito.
- El cálculo de la complejidad temporal implica dos pasos: primero
  contar el número de operaciones y luego determinar el límite superior
  asintótico.
- Las complejidades temporales comunes, ordenadas de menor a mayor,
  incluyen $O \( 1 \)$, $O \( log n \)$, $O \( n \)$, $O \( n log n \)$,
  $O \( n^2 \)$, $O \( 2^n \)$ y $O \( n ! \)$, entre otras.
- La complejidad temporal de algunos algoritmos no es fija y depende de
  la distribución de los datos de entrada. Las complejidades temporales
  se dividen en casos peor, mejor y promedio. El mejor caso rara vez se
  usa porque los datos de entrada generalmente necesitan cumplir
  condiciones estrictas para lograr el mejor caso.
- La complejidad temporal promedio refleja la eficiencia de un algoritmo
  bajo entradas de datos aleatorias, asemejándose mucho al rendimiento
  del algoritmo en aplicaciones reales. El cálculo de la complejidad
  temporal promedio requiere tener en cuenta la distribución de los
  datos de entrada y la expectativa matemática posterior.

#strong[Complejidad espacial]

- La complejidad espacial, similar a la complejidad temporal, mide la
  tendencia del espacio de memoria ocupado por un algoritmo con el
  aumento del volumen de datos.
- El espacio de memoria relevante utilizado durante la ejecución del
  algoritmo se puede dividir en espacio de entrada, espacio temporal y
  espacio de salida. Generalmente, el espacio de entrada no se incluye
  en los cálculos de complejidad espacial. El espacio temporal se puede
  dividir en datos temporales, espacio de marco de pila y espacio de
  instrucciones, donde el espacio de marco de pila generalmente afecta
  la complejidad espacial solo en funciones recursivas.
- Normalmente solo nos centramos en la complejidad espacial en el peor
  de los casos, lo que significa calcular la complejidad espacial del
  algoritmo bajo los peores datos de entrada y en el peor momento de la
  operación.
- Las complejidades espaciales comunes, ordenadas de menor a mayor,
  incluyen $O \( 1 \)$, $O \( log n \)$, $O \( n \)$, $O \( n^2 \)$ y
  $O \( 2^n \)$, entre otras.

=== Preguntas y respuestas
<preguntas-y-respuestas>
#strong[P];: ¿La complejidad espacial de la recursión de cola es
$O \( 1 \)$?

Teóricamente, la complejidad espacial de una función recursiva de cola
se puede optimizar a $O \( 1 \)$. Sin embargo, la mayoría de los
lenguajes de programación (como Java, Python, C++, Go, C\#) no admiten
la optimización automática de la recursión de cola, por lo que
generalmente se considera que tiene una complejidad espacial de
$O \( n \)$.

#strong[P];: ¿Cuál es la diferencia entre los términos "función" y
"método"?

Una función se puede ejecutar de forma independiente, con todos los
parámetros pasados explícitamente. Un método está asociado a un objeto y
se pasa implícitamente al objeto que lo llama, pudiendo operar sobre los
datos contenidos en una instancia de una clase.

Aquí hay algunos ejemplos de lenguajes de programación comunes:

- C es un lenguaje de programación procedural sin conceptos orientados a
  objetos, por lo que solo tiene funciones. Sin embargo, podemos simular
  la programación orientada a objetos creando estructuras (struct), y
  las funciones asociadas a estas estructuras son equivalentes a los
  métodos en otros lenguajes de programación.
- Java y C\# son lenguajes de programación orientados a objetos donde
  los bloques de código (métodos) suelen formar parte de una clase. Los
  métodos estáticos se comportan como funciones porque están vinculados
  a la clase y no pueden acceder a variables de instancia específicas.
- C++ y Python admiten tanto la programación procedural (funciones) como
  la programación orientada a objetos (métodos).

#strong[P];: ¿La figura "Tipos comunes de complejidad espacial" refleja
el tamaño absoluto del espacio ocupado?

No, la figura muestra las complejidades espaciales, que reflejan las
tendencias de crecimiento, no el tamaño absoluto del espacio ocupado.

Si toma $n = 8$, podría encontrar que los valores de cada curva no
corresponden a sus funciones. Esto se debe a que cada curva incluye un
término constante, destinado a comprimir el rango de valores en un rango
visualmente cómodo.

En la práctica, dado que normalmente no conocemos la complejidad del
"término constante" de cada método, generalmente no es posible elegir la
mejor solución para $n = 8$ basándose únicamente en la complejidad. Sin
embargo, para $n = 8^5$, es mucho más fácil elegir, ya que la tendencia
de crecimiento se vuelve dominante.
= Estructuras de datos
<estructuras-de-datos>
#figure(image("es/docs/assets/covers/chapter_data_structure.jpg"),
  caption: [
    Estructuras de datos
  ]
)

!!! abstract

```
Las estructuras de datos sirven como un marco robusto y diverso.

Ofrecen un plan para la organización ordenada de los datos, sobre el cual los algoritmos cobran vida.
```
= Clasificación de las estructuras de datos
<clasificación-de-las-estructuras-de-datos>
Las estructuras de datos comunes incluyen arreglos, listas enlazadas,
pilas, colas, tablas hash, árboles, montículos y grafos. Se pueden
clasificar en "estructura lógica" y "estructura física".

== Estructura lógica: lineal y no lineal
<estructura-lógica-lineal-y-no-lineal>
#strong[Las estructuras lógicas revelan las relaciones lógicas entre los
elementos de datos];. En los arreglos y las listas enlazadas, los datos
se organizan en una secuencia específica, lo que demuestra la relación
lineal entre los datos; mientras que en los árboles, los datos se
organizan jerárquicamente de arriba hacia abajo, lo que muestra la
relación derivada entre "ancestros" y "descendientes"; y los grafos se
componen de nodos y aristas, lo que refleja la intrincada relación de
red.

Como se muestra en la figura a continuación, las estructuras lógicas se
pueden dividir en dos categorías principales: "lineales" y "no
lineales". Las estructuras lineales son más intuitivas, lo que indica
que los datos se organizan linealmente en relaciones lógicas; las
estructuras no lineales, por el contrario, se organizan de forma no
lineal.

- #strong[Estructuras de datos lineales];: Arreglos, Listas enlazadas,
  Pilas, Colas, Tablas hash.
- #strong[Estructuras de datos no lineales];: Árboles, Montículos,
  Grafos, Tablas hash.

Las estructuras de datos no lineales se pueden dividir a su vez en
estructuras de árbol y estructuras de red.

- #strong[Estructuras de árbol];: Árboles, Montículos, Tablas hash,
  donde los elementos tienen una relación de uno a muchos.
- #strong[Estructuras de red];: Grafos, donde los elementos tienen
  relaciones de muchos a muchos.

#figure(image("es/docs/chapter_data_structure/classification_of_data_structure.assets/classification_logic_structure.png"),
  caption: [
    Estructuras de datos lineales y no lineales
  ]
)

== Estructura física: contigua y dispersa
<estructura-física-contigua-y-dispersa>
#strong[Durante la ejecución de un algoritmo, los datos que se procesan
se almacenan en la memoria];. La siguiente figura muestra un módulo de
memoria de computadora donde cada cuadrado negro es un espacio de
memoria física. Podemos pensar en la memoria como una vasta hoja de
cálculo de Excel, donde cada celda es capaz de almacenar una cierta
cantidad de datos.

#strong[El sistema accede a los datos en la ubicación de destino
mediante una dirección de memoria];. Como se muestra en la figura a
continuación, la computadora asigna un identificador único a cada celda
de la tabla de acuerdo con reglas específicas, asegurando que cada
espacio de memoria tenga una dirección de memoria única. Con estas
direcciones, el programa puede acceder a los datos almacenados en la
memoria.

#figure(image("es/docs/chapter_data_structure/classification_of_data_structure.assets/computer_memory_location.png"),
  caption: [
    Módulo de memoria, espacios de memoria, direcciones de memoria
  ]
)

!!! tip

```
Cabe señalar que comparar la memoria con una hoja de cálculo de Excel es una analogía simplificada. El mecanismo de funcionamiento real de la memoria es más complejo, e involucra conceptos como el espacio de direcciones, la gestión de la memoria, los mecanismos de caché, la memoria virtual y la memoria física.
```

La memoria es un recurso compartido para todos los programas. Cuando un
bloque de memoria es ocupado por un programa, no puede ser utilizado
simultáneamente por otros programas. #strong[Por lo tanto, considerar
los recursos de memoria es crucial en el diseño de estructuras de datos
y algoritmos];. Por ejemplo, el uso máximo de memoria del algoritmo no
debe exceder la memoria libre restante del sistema; si hay una falta de
bloques de memoria contiguos, entonces la estructura de datos elegida
debe poder almacenarse en bloques de memoria no contiguos.

Como se ilustra en la figura a continuación, #strong[la estructura
física refleja la forma en que los datos se almacenan en la memoria de
la computadora] y se puede dividir en almacenamiento de espacio contiguo
(arreglos) y almacenamiento de espacio no contiguo (listas enlazadas).
Los dos tipos de estructuras físicas exhiben características
complementarias en términos de eficiencia de tiempo y eficiencia de
espacio.

#figure(image("es/docs/chapter_data_structure/classification_of_data_structure.assets/classification_phisical_structure.png"),
  caption: [
    Almacenamiento de espacio contiguo y almacenamiento de espacio
    disperso
  ]
)

#strong[Cabe señalar que todas las estructuras de datos se implementan
basándose en arreglos, listas enlazadas o una combinación de ambos];.
Por ejemplo, las pilas y las colas se pueden implementar utilizando
arreglos o listas enlazadas; mientras que las implementaciones de tablas
hash pueden involucrar tanto arreglos como listas enlazadas.

- #strong[Implementaciones basadas en arreglos];: Pilas, Colas, Tablas
  hash, Árboles, Montículos, Grafos, Matrices, Tensores (arreglos con
  dimensiones $gt.eq 3$).
- #strong[Implementaciones basadas en listas enlazadas];: Pilas, Colas,
  Tablas hash, Árboles, Montículos, Grafos, etc.

Las estructuras de datos implementadas basándose en arreglos también se
denominan "estructuras de datos estáticas", lo que significa que su
longitud no se puede cambiar después de la inicialización. Por el
contrario, las basadas en listas enlazadas se denominan "estructuras de
datos dinámicas", que aún pueden ajustar su tamaño durante la ejecución
del programa.

!!! tip

```
Si le resulta difícil comprender la estructura física, se recomienda que lea el siguiente capítulo, "Arreglos y listas enlazadas", y vuelva a visitar esta sección más tarde.
```
= Tipos de datos básicos
<tipos-de-datos-básicos>
Cuando hablamos de datos en computadoras, nos vienen a la mente varias
formas como texto, imágenes, videos, voz y modelos 3D. A pesar de sus
diferentes formas de organización, todos están compuestos por varios
tipos de datos básicos.

#strong[Los tipos de datos básicos son aquellos con los que la CPU puede
operar directamente] y se utilizan directamente en los algoritmos,
incluyendo principalmente los siguientes.

- Tipos enteros: `byte`, `short`, `int`, `long`.
- Tipos de punto flotante: `float`, `double`, utilizados para
  representar decimales.
- Tipo de carácter: `char`, utilizado para representar letras,
  puntuación e incluso emojis en varios idiomas.
- Tipo booleano: `bool`, utilizado para representar decisiones de "sí" o
  "no".

#strong[Los tipos de datos básicos se almacenan en las computadoras en
formato binario];. Un dígito binario es 1 bit. En la mayoría de los
sistemas operativos modernos, 1 byte consta de 8 bits.

El rango de valores para los tipos de datos básicos depende del tamaño
del espacio que ocupan. A continuación, tomamos Java como ejemplo.

- El tipo entero `byte` ocupa 1 byte = 8 bits y puede representar $2^8$
  números.
- El tipo entero `int` ocupa 4 bytes = 32 bits y puede representar
  $2^32$ números.

La siguiente tabla enumera el espacio ocupado, el rango de valores y los
valores predeterminados de varios tipos de datos básicos en Java. Si
bien no es necesario memorizar esta tabla, se recomienda tener una
comprensión general de ella y consultarla cuando sea necesario.

Tabla ~ Espacio ocupado y rango de valores de los tipos de datos básicos
#figure(
  align(center)[#table(
    columns: (7.78%, 8.89%, 15.56%, 26.67%, 25.56%, 15.56%),
    align: (auto,auto,auto,auto,auto,auto,),
    table.header([Tipo], [Símbolo], [Espacio ocupado], [Valor
      mínimo], [Valor máximo], [Valor predeterminado],),
    table.hline(),
    [Entero], [`byte`], [1 byte], [$- 2^7$ ($- 128$)], [$2^7 - 1$
    ($127$)], [0],
    [], [`short`], [2 bytes], [$- 2^15$], [$2^15 - 1$], [0],
    [], [`int`], [4 bytes], [$- 2^31$], [$2^31 - 1$], [0],
    [], [`long`], [8 bytes], [$- 2^63$], [$2^63 - 1$], [0],
    [Flotante], [`float`], [4
    bytes], [$1.175 times 10^(- 38)$], [$3.403 times 10^38$], [$0.0 upright("f")$],
    [], [`double`], [8
    bytes], [$2.225 times 10^(- 308)$], [$1.798 times 10^308$], [0.0],
    [Carácter], [`char`], [2 bytes], [0], [$2^16 - 1$], [0],
    [Booleano], [`bool`], [1
    byte], [$upright("false")$], [$upright("true")$], [$upright("false")$],
  )]
  , kind: table
  )

Tenga en cuenta que la tabla anterior es específica de los tipos de
datos básicos de Java. Cada lenguaje de programación tiene sus propias
definiciones de tipos de datos, que pueden diferir en el espacio
ocupado, los rangos de valores y los valores predeterminados.

- En Python, el tipo entero `int` puede ser de cualquier tamaño,
  limitado solo por la memoria disponible; el `float` de punto flotante
  es de doble precisión de 64 bits; no existe el tipo `char`, ya que un
  solo carácter es en realidad una cadena `str` de longitud 1.
- C y C++ no especifican el tamaño de los tipos de datos básicos, varía
  con la implementación y la plataforma. La tabla anterior sigue el
  #link("https://en.cppreference.com/w/cpp/language/types#Properties")[modelo de datos]
  LP64, utilizado para sistemas operativos Unix de 64 bits, incluidos
  Linux y macOS.
- El tamaño de `char` en C y C++ es de 1 byte, mientras que en la
  mayoría de los lenguajes de programación, depende del método de
  codificación de caracteres específico, como se detalla en el capítulo
  "Codificación de caracteres".
- Aunque representar un booleano solo requiere 1 bit (0 o 1),
  generalmente se almacena en la memoria como 1 byte. Esto se debe a que
  las CPU de las computadoras modernas suelen utilizar 1 byte como la
  unidad de memoria direccionable más pequeña.

Entonces, ¿cuál es la conexión entre los tipos de datos básicos y las
estructuras de datos? Sabemos que las estructuras de datos son formas de
organizar y almacenar datos en las computadoras. El enfoque aquí está en
la "estructura" más que en los "datos".

Si queremos representar "una fila de números", naturalmente pensamos en
usar un arreglo. Esto se debe a que la estructura lineal de un arreglo
puede representar la adyacencia y el orden de los números, pero si el
contenido almacenado es un entero `int`, un decimal `float` o un
carácter `char`, es irrelevante para la "estructura de datos".

En otras palabras, #strong[los tipos de datos básicos proporcionan el
"tipo de contenido" de los datos, mientras que las estructuras de datos
proporcionan la "forma de organizar" los datos];. Por ejemplo, en el
siguiente código, usamos la misma estructura de datos (arreglo) para
almacenar y representar diferentes tipos de datos básicos, incluidos
`int`, `float`, `char`, `bool`, etc.

\=== "Python"

````
```python title=""
# Usando varios tipos de datos básicos para inicializar arreglos
numbers: list[int] = [0] * 5
decimals: list[float] = [0.0] * 5
# Los caracteres de Python son en realidad cadenas de longitud 1
characters: list[str] = ['0'] * 5
bools: list[bool] = [False] * 5
# Las listas de Python pueden almacenar libremente varios tipos de datos básicos y referencias a objetos
data = [0, 0.0, 'a', False, ListNode(0)]
```
````
= Codificación de números \*
<codificación-de-números>
!!! tip

```
En este libro, los capítulos marcados con un asterisco '*' son lecturas opcionales. Si tiene poco tiempo o le resultan desafiantes, puede omitirlos inicialmente y volver a ellos después de completar los capítulos esenciales.
```

== Codificación de enteros
<codificación-de-enteros>
En la tabla de la sección anterior, observamos que todos los tipos
enteros pueden representar un número negativo más que números positivos,
como el rango `byte` de $\[ - 128 \, 127 \]$. Este fenómeno parece
contraintuitivo, y su razón subyacente implica el conocimiento de la
codificación de signo-magnitud, complemento a uno y complemento a dos.

En primer lugar, es importante tener en cuenta que #strong[los números
se almacenan en las computadoras utilizando la forma de complemento a
dos];. Antes de analizar por qué es así, definamos estos tres métodos de
codificación:

- #strong[Signo-magnitud];: El bit más alto de una representación
  binaria de un número se considera el bit de signo, donde $0$
  representa un número positivo y $1$ representa un número negativo. Los
  bits restantes representan el valor del número.
- #strong[Complemento a uno];: El complemento a uno de un número
  positivo es el mismo que su signo-magnitud. Para los números
  negativos, se obtiene invirtiendo todos los bits excepto el bit de
  signo.
- #strong[Complemento a dos];: El complemento a dos de un número
  positivo es el mismo que su signo-magnitud. Para los números
  negativos, se obtiene sumando $1$ a su complemento a uno.

La siguiente figura ilustra las conversiones entre signo-magnitud,
complemento a uno y complemento a dos:

#figure(image("es/docs/chapter_data_structure/number_encoding.assets/1s_2s_complement.png"),
  caption: [
    Conversiones entre signo-magnitud, complemento a uno y complemento a
    dos
  ]
)

Aunque el signo-magnitud es el más intuitivo, tiene limitaciones. Por un
lado, #strong[los números negativos en signo-magnitud no se pueden usar
directamente en los cálculos];. Por ejemplo, en signo-magnitud, calcular
$1 + \( - 2 \)$ da como resultado $- 3$, lo cual es incorrecto.

$  & 1 + \( - 2 \)\
 & arrow.r 0000 #h(0em) 0001 + 1000 #h(0em) 0010\
 & = 1000 #h(0em) 0011\
 & arrow.r - 3 $

Para solucionar esto, las computadoras introdujeron el complemento a
uno. Si convertimos a complemento a uno y calculamos $1 + \( - 2 \)$,
luego convertimos el resultado de nuevo a signo-magnitud, obtenemos el
resultado correcto de $- 1$.

$  & 1 + \( - 2 \)\
 & arrow.r 0000 #h(0em) 0001 #h(0em) upright("(Signo-magnitud)") + 1000 #h(0em) 0010 #h(0em) upright("(Signo-magnitud)")\
 & = 0000 #h(0em) 0001 #h(0em) upright("(Complemento a uno)") + 1111 #h(0em) 1101 #h(0em) upright("(Complemento a uno)")\
 & = 1111 #h(0em) 1110 #h(0em) upright("(Complemento a uno)")\
 & = 1000 #h(0em) 0001 #h(0em) upright("(Signo-magnitud)")\
 & arrow.r - 1 $

Además, #strong[hay dos representaciones de cero en signo-magnitud];:
$+ 0$ y $- 0$. Esto significa dos codificaciones binarias diferentes
para cero, lo que podría generar ambigüedad. Por ejemplo, en las
comprobaciones condicionales, no diferenciar entre cero positivo y
negativo podría dar lugar a resultados incorrectos. Abordar esta
ambigüedad requeriría comprobaciones adicionales, lo que podría reducir
la eficiencia computacional.

$ + 0 & arrow.r 0000 #h(0em) 0000\
- 0 & arrow.r 1000 #h(0em) 0000 $

Al igual que el signo-magnitud, el complemento a uno también sufre de la
ambigüedad de cero positivo y negativo. Por lo tanto, las computadoras
introdujeron además el complemento a dos. Observemos el proceso de
conversión para cero negativo en signo-magnitud, complemento a uno y
complemento a dos:

$ - 0 arrow.r #h(0em) & 1000 #h(0em) 0000 #h(0em) upright("(Signo-magnitud)")\
= #h(0em) & 1111 #h(0em) 1111 #h(0em) upright("(Complemento a uno)")\
= 1 #h(0em) & 0000 #h(0em) 0000 #h(0em) upright("(Complemento a dos)")\
 $

Sumar $1$ al complemento a uno de cero negativo produce un acarreo, pero
como la longitud del `byte` es de solo 8 bits, el $1$ acarreado al
noveno bit se descarta. Por lo tanto, #strong[el complemento a dos de
cero negativo es $0000 #h(0em) 0000$];, el mismo que el cero positivo,
resolviendo así la ambigüedad.

Un último enigma es el rango $\[ - 128 \, 127 \]$ para `byte`, con un
número negativo adicional, $- 128$. Observamos que para el intervalo
$\[ - 127 \, + 127 \]$, todos los enteros tienen su correspondiente
signo-magnitud, complemento a uno y complemento a dos, lo que permite la
conversión mutua entre ellos.

Sin embargo, #strong[el complemento a dos $1000 #h(0em) 0000$ es una
excepción sin un signo-magnitud correspondiente];. Según el método de
conversión, su signo-magnitud sería $0000 #h(0em) 0000$, lo que indica
cero. Esto presenta una contradicción porque su complemento a dos
debería representarse a sí mismo. Las computadoras designan este
complemento a dos especial $1000 #h(0em) 0000$ como representante de
$- 128$. De hecho, el cálculo de $\( - 1 \) + \( - 127 \)$ en
complemento a dos da como resultado $- 128$.

$  & \( - 127 \) + \( - 1 \)\
 & arrow.r 1111 #h(0em) 1111 #h(0em) upright("(Signo-magnitud)") + 1000 #h(0em) 0001 #h(0em) upright("(Signo-magnitud)")\
 & = 1000 #h(0em) 0000 #h(0em) upright("(Complemento a uno)") + 1111 #h(0em) 1110 #h(0em) upright("(Complemento a uno)")\
 & = 1000 #h(0em) 0001 #h(0em) upright("(Complemento a dos)") + 1111 #h(0em) 1111 #h(0em) upright("(Complemento a dos)")\
 & = 1000 #h(0em) 0000 #h(0em) upright("(Complemento a dos)")\
 & arrow.r - 128 $

Como habrás notado, todos estos cálculos son sumas, lo que insinúa un
hecho importante: #strong[los circuitos de hardware internos de las
computadoras están diseñados principalmente en torno a las operaciones
de suma];. Esto se debe a que la suma es más sencilla de implementar en
hardware en comparación con otras operaciones como la multiplicación, la
división y la resta, lo que permite una paralelización más fácil y una
computación más rápida.

Es importante tener en cuenta que esto no significa que las computadoras
solo puedan realizar sumas. #strong[Al combinar la suma con operaciones
lógicas básicas, las computadoras pueden ejecutar una variedad de otras
operaciones matemáticas];. Por ejemplo, la resta $a - b$ se puede
traducir en $a + \( - b \)$; la multiplicación y la división se pueden
traducir en múltiples sumas o restas.

Ahora podemos resumir la razón para usar el complemento a dos en las
computadoras: con la representación de complemento a dos, las
computadoras pueden usar los mismos circuitos y operaciones para manejar
la suma de números positivos y negativos, eliminando la necesidad de
circuitos de hardware especiales para la resta y evitando la ambigüedad
de cero positivo y negativo. Esto simplifica enormemente el diseño del
hardware y mejora la eficiencia computacional.

El diseño del complemento a dos es bastante ingenioso, y debido a las
limitaciones de espacio, nos detendremos aquí. Se anima a los lectores
interesados a explorar más a fondo.

== Codificación de números de punto flotante
<codificación-de-números-de-punto-flotante>
Es posible que haya notado algo intrigante: a pesar de tener la misma
longitud de 4 bytes, ¿por qué un `float` tiene un rango de valores mucho
mayor en comparación con un `int`? Esto parece contraintuitivo, ya que
uno esperaría que el rango se redujera para `float` ya que necesita
representar fracciones.

De hecho, #strong[esto se debe al diferente método de representación
utilizado por los números de punto flotante (`float`)];. Consideremos un
número binario de 32 bits como:

$ b_31 b_30 b_29 dots.h b_2 b_1 b_0 $

Según el estándar IEEE 754, un `float` de 32 bits consta de las
siguientes tres partes:

- Bit de signo $upright(S)$: Ocupa 1 bit, correspondiente a $b_31$.
- Bit de exponente $upright(E)$: Ocupa 8 bits, correspondiente a
  $b_30 b_29 dots.h b_23$.
- Bit de fracción $upright(N)$: Ocupa 23 bits, correspondiente a
  $b_22 b_21 dots.h b_0$.

El valor de un número `float` binario se calcula como:

$ upright("val") = \( - 1 \)^(b_31) times 2^((b_30 b_29 dots.h b_23)_2 - 127) times (1 . b_22 b_21 dots.h b_0)_2 $

Convertido a una fórmula decimal, esto se convierte en:

$ upright("val") = \( - 1 \)^(upright(S)) times 2^(upright(E) - 127) times \( 1 + upright(N) \) $

El rango de cada componente es:

$ upright(S) in & { 0 \, 1 } \, quad upright(E) in { 1 \, 2 \, dots.h \, 254 }\
\( 1 + upright(N) \) = & \( 1 + sum_(i = 1)^23 b_(23 - i) times 2^(- i) \) subset \[ 1 \, 2 - 2^(- 23) \] $

#figure(image("es/docs/chapter_data_structure/number_encoding.assets/ieee_754_float.png"),
  caption: [
    Ejemplo de cálculo de un flotante en el estándar IEEE 754
  ]
)

Observando la figura anterior, dado un ejemplo de datos
$upright(S) = 0$, $upright(E) = 124$,
$upright(N) = 2^(- 2) + 2^(- 3) = 0.375$, tenemos:

$ upright("val") = \( - 1 \)^0 times 2^(124 - 127) times \( 1 + 0.375 \) = 0.171875 $

Ahora podemos responder a la pregunta inicial: #strong[La representación
de `float` incluye un bit de exponente, lo que lleva a un rango mucho
mayor que `int`];. Basado en el cálculo anterior, el número positivo
máximo representable por `float` es aproximadamente
$2^(254 - 127) times \( 2 - 2^(- 23) \) approx 3.4 times 10^38$, y el
número negativo mínimo se obtiene cambiando el bit de signo.

#strong[Sin embargo, la compensación por el rango expandido de `float`
es un sacrificio en la precisión];. El tipo entero `int` utiliza los 32
bits para representar el número, con valores distribuidos uniformemente;
pero debido al bit de exponente, cuanto mayor sea el valor de un
`float`, mayor será la diferencia entre números adyacentes.

Como se muestra en la tabla a continuación, los bits de exponente
$upright(E) = 0$ y $upright(E) = 255$ tienen significados especiales,
#strong[utilizados para representar cero, infinito, $upright(N a N)$,
etc.]

Tabla ~ Significado de los bits de exponente
#figure(
  align(center)[#table(
    columns: (12.16%, 19.59%, 20.95%, 47.3%),
    align: (auto,auto,auto,auto,),
    table.header([Bit de exponente E], [Bit de fracción
      $upright(N) = 0$], [Bit de fracción
      $upright(N) eq.not 0$], [Fórmula de cálculo],),
    table.hline(),
    [$0$], [$plus.minus 0$], [Números
    subnormales], [$\( - 1 \)^(upright(S)) times 2^(- 126) times \( 0 . upright(N) \)$],
    [$1 \, 2 \, dots.h \, 254$], [Números normales], [Números
    normales], [$\( - 1 \)^(upright(S)) times 2^(\( upright(E) - 127 \)) times \( 1 . upright(N) \)$],
    [$255$], [$plus.minus oo$], [$upright(N a N)$], [],
  )]
  , kind: table
  )

Cabe señalar que los números subnormales mejoran significativamente la
precisión de los números de punto flotante. El número normal positivo
más pequeño es $2^(- 126)$, y el número subnormal positivo más pequeño
es $2^(- 126) times 2^(- 23)$.

El `double` de doble precisión también utiliza un método de
representación similar al `float`, que no se detalla aquí por brevedad.
= Codificación de caracteres \*
<codificación-de-caracteres>
En el sistema informático, todos los datos se almacenan en formato
binario, y `char` no es una excepción. Para representar caracteres,
necesitamos desarrollar un "conjunto de caracteres" que defina un mapeo
uno a uno entre cada carácter y los números binarios. Con el conjunto de
caracteres, las computadoras pueden convertir números binarios a
caracteres consultando la tabla.

== Conjunto de caracteres ASCII
<conjunto-de-caracteres-ascii>
El código ASCII es uno de los primeros conjuntos de caracteres, conocido
oficialmente como Código Estándar Americano para el Intercambio de
Información. Utiliza 7 dígitos binarios (los 7 bits inferiores de un
byte) para representar un carácter, lo que permite un máximo de 128
caracteres diferentes. Como se muestra en la figura a continuación,
ASCII incluye letras mayúsculas y minúsculas en inglés, números del 0 al
9, varios signos de puntuación y ciertos caracteres de control (como
nueva línea y tabulación).

#figure(image("es/docs/chapter_data_structure/character_encoding.assets/ascii_table.png"),
  caption: [
    Código ASCII
  ]
)

Sin embargo, #strong[ASCII solo puede representar caracteres en inglés];.
Con la globalización de las computadoras, se desarrolló un conjunto de
caracteres llamado EASCII para representar más idiomas. Se expande de la
estructura de 7 bits de ASCII a 8 bits, lo que permite la representación
de 256 caracteres.

Globalmente, se han introducido varios conjuntos de caracteres EASCII
específicos de cada región. Los primeros 128 caracteres de estos
conjuntos son consistentes con ASCII, mientras que los 128 caracteres
restantes se definen de manera diferente para adaptarse a los requisitos
de diferentes idiomas.

== Conjunto de caracteres GBK
<conjunto-de-caracteres-gbk>
Más tarde, se descubrió que #strong[EASCII aún no podía satisfacer los
requisitos de caracteres de muchos idiomas];. Por ejemplo, hay casi cien
mil caracteres chinos, con varios miles de uso regular. En 1980, la
Administración de Estandarización de China lanzó el conjunto de
caracteres GB2312, que incluía 6763 caracteres chinos, satisfaciendo
esencialmente las necesidades de procesamiento informático para el
idioma chino.

Sin embargo, GB2312 no podía manejar algunos caracteres raros y
tradicionales. El conjunto de caracteres GBK expande GB2312 e incluye
21886 caracteres chinos. En el esquema de codificación GBK, los
caracteres ASCII se representan con un byte, mientras que los caracteres
chinos usan dos bytes.

== Conjunto de caracteres Unicode
<conjunto-de-caracteres-unicode>
Con la rápida evolución de la tecnología informática y una plétora de
conjuntos de caracteres y estándares de codificación, surgieron
numerosos problemas. Por un lado, estos conjuntos de caracteres
generalmente solo definían caracteres para idiomas específicos y no
podían funcionar correctamente en entornos multilingües. Por otro lado,
la existencia de múltiples estándares de conjuntos de caracteres para el
mismo idioma causaba texto ilegible cuando la información se
intercambiaba entre computadoras que usaban diferentes estándares de
codificación.

Los investigadores de esa época pensaron: #strong[¿Qué pasaría si se
desarrollara un conjunto de caracteres completo que abarcara todos los
idiomas y símbolos globales? ¿No resolvería esto los problemas asociados
con los entornos multilingües y el texto ilegible?] Inspirado por esta
idea, nació el extenso conjunto de caracteres, Unicode.

Unicode se conoce como "统一码" (Código Unificado) en chino,
teóricamente capaz de albergar más de un millón de caracteres. Su
objetivo es incorporar caracteres de todo el mundo en un solo conjunto,
proporcionando un conjunto de caracteres universal para procesar y
mostrar varios idiomas y reducir los problemas de texto ilegible debido
a diferentes estándares de codificación.

Desde su lanzamiento en 1991, Unicode se ha expandido continuamente para
incluir nuevos idiomas y caracteres. A partir de septiembre de 2022,
Unicode contiene 149.186 caracteres, incluidos caracteres, símbolos e
incluso emojis de varios idiomas. En el vasto conjunto de caracteres
Unicode, los caracteres de uso común ocupan 2 bytes, mientras que
algunos caracteres raros pueden ocupar 3 o incluso 4 bytes.

Unicode es un conjunto de caracteres universal que asigna un número
(llamado "punto de código") a cada carácter, #strong[pero no especifica
cómo deben almacenarse estos puntos de código de caracteres en un
sistema informático];. Uno podría preguntar: ¿Cómo interpreta un sistema
los puntos de código Unicode de diferentes longitudes dentro de un
texto? Por ejemplo, dado un código de 2 bytes, ¿cómo determina el
sistema si representa un solo carácter de 2 bytes o dos caracteres de 1
byte?

#strong[Una solución sencilla a este problema es almacenar todos los
caracteres como codificaciones de igual longitud];. Como se muestra en
la figura a continuación, cada carácter en "Hello" ocupa 1 byte,
mientras que cada carácter en "算法" (algoritmo) ocupa 2 bytes.
Podríamos codificar todos los caracteres en "Hello 算法" como 2 bytes
rellenando los bits superiores con ceros. Este método permitiría al
sistema interpretar un carácter cada 2 bytes, recuperando el contenido
de la frase.

#figure(image("es/docs/chapter_data_structure/character_encoding.assets/unicode_hello_algo.png"),
  caption: [
    Ejemplo de codificación Unicode
  ]
)

Sin embargo, como nos ha demostrado ASCII, la codificación en inglés
solo requiere 1 byte. Usar el enfoque anterior duplicaría el espacio
ocupado por el texto en inglés en comparación con la codificación ASCII,
lo que es un desperdicio de espacio de memoria. Por lo tanto, se
necesita un método de codificación Unicode más eficiente.

== Codificación UTF-8
<codificación-utf-8>
Actualmente, UTF-8 se ha convertido en el método de codificación Unicode
más utilizado internacionalmente. #strong[Es una codificación de
longitud variable];, que utiliza de 1 a 4 bytes para representar un
carácter, dependiendo de la complejidad del carácter. Los caracteres
ASCII solo necesitan 1 byte, las letras latinas y griegas requieren 2
bytes, los caracteres chinos de uso común necesitan 3 bytes y algunos
otros caracteres raros necesitan 4 bytes.

Las reglas de codificación para UTF-8 no son complejas y se pueden
dividir en dos casos:

- Para caracteres de 1 byte, establezca el bit más alto en $0$, y los 7
  bits restantes en el punto de código Unicode. En particular, los
  caracteres ASCII ocupan los primeros 128 puntos de código en el
  conjunto Unicode. Esto significa que #strong[la codificación UTF-8 es
  compatible con versiones anteriores de ASCII];. Esto implica que UTF-8
  se puede usar para analizar texto ASCII antiguo.
- Para caracteres de longitud $n$ bytes (donde $n > 1$), establezca los
  $n$ bits más altos del primer byte en $1$, y el bit
  $\( n + 1 \)^(upright("ésimo"))$ en $0$; a partir del segundo byte,
  establezca los 2 bits más altos de cada byte en $10$; el resto de los
  bits se utilizan para rellenar el punto de código Unicode.

La figura a continuación muestra la codificación UTF-8 para "Hello算法".
Se puede observar que, dado que los $n$ bits más altos se establecen en
$1$, el sistema puede determinar la longitud del carácter como $n$
contando el número de bits más altos establecidos en $1$.

Pero, ¿por qué establecer los 2 bits más altos de los bytes restantes en
$10$? En realidad, este $10$ sirve como una especie de suma de
verificación. Si el sistema comienza a analizar texto desde un byte
incorrecto, el $10$ al principio del byte puede ayudar al sistema a
detectar rápidamente anomalías.

La razón para usar $10$ como suma de verificación es que, según las
reglas de codificación UTF-8, es imposible que los dos bits más altos de
un carácter sean $10$. Esto se puede probar por contradicción: Si los
dos bits más altos de un carácter son $10$, indica que la longitud del
carácter es $1$, correspondiente a ASCII. Sin embargo, el bit más alto
de un carácter ASCII debe ser $0$, lo que contradice la suposición.

#figure(image("es/docs/chapter_data_structure/character_encoding.assets/utf-8_hello_algo.png"),
  caption: [
    Ejemplo de codificación UTF-8
  ]
)

Además de UTF-8, otros métodos de codificación comunes incluyen:

- #strong[Codificación UTF-16];: Utiliza 2 o 4 bytes para representar un
  carácter. Todos los caracteres ASCII y los caracteres no ingleses de
  uso común se representan con 2 bytes; algunos caracteres requieren 4
  bytes. Para caracteres de 2 bytes, la codificación UTF-16 es igual al
  punto de código Unicode.
- #strong[Codificación UTF-32];: Cada carácter utiliza 4 bytes. Esto
  significa que UTF-32 ocupa más espacio que UTF-8 y UTF-16,
  especialmente para textos con una alta proporción de caracteres ASCII.

Desde la perspectiva del espacio de almacenamiento, usar UTF-8 para
representar caracteres en inglés es muy eficiente porque solo requiere 1
byte; usar UTF-16 para codificar algunos caracteres no ingleses (como el
chino) puede ser más eficiente porque solo requiere 2 bytes, mientras
que UTF-8 podría necesitar 3 bytes.

Desde una perspectiva de compatibilidad, UTF-8 es el más versátil, con
muchas herramientas y bibliotecas que priorizan UTF-8.

== Codificación de caracteres en lenguajes de programación
<codificación-de-caracteres-en-lenguajes-de-programación>
Históricamente, muchos lenguajes de programación utilizaban
codificaciones de longitud fija como UTF-16 o UTF-32 para procesar
cadenas durante la ejecución del programa. Esto permite que las cadenas
se manejen como arreglos, ofreciendo varias ventajas:

- #strong[Acceso aleatorio];: Las cadenas codificadas en UTF-16 se
  pueden acceder aleatoriamente con facilidad. Para UTF-8, que es una
  codificación de longitud variable, localizar el carácter
  $i^(upright("ésimo"))$ requiere recorrer la cadena desde el principio
  hasta la posición $i^(upright("ésima"))$, lo que lleva un tiempo de
  $O \( n \)$.
- #strong[Conteo de caracteres];: Similar al acceso aleatorio, contar el
  número de caracteres en una cadena codificada en UTF-16 es una
  operación de $O \( 1 \)$. Sin embargo, contar caracteres en una cadena
  codificada en UTF-8 requiere recorrer toda la cadena.
- #strong[Operaciones de cadena];: Muchas operaciones de cadena como
  dividir, concatenar, insertar y eliminar son más fáciles en cadenas
  codificadas en UTF-16. Estas operaciones generalmente requieren
  cálculos adicionales en cadenas codificadas en UTF-8 para garantizar
  la validez de la codificación UTF-8.

El diseño de esquemas de codificación de caracteres en lenguajes de
programación es un tema interesante que involucra varios factores:

- El tipo `String` de Java utiliza la codificación UTF-16, con cada
  carácter ocupando 2 bytes. Esto se basó en la creencia inicial de que
  16 bits eran suficientes para representar todos los caracteres
  posibles y se demostró que era incorrecto más tarde. A medida que el
  estándar Unicode se expandió más allá de los 16 bits, los caracteres
  en Java ahora pueden representarse mediante un par de valores de 16
  bits, conocidos como "pares sustitutos".
- JavaScript y TypeScript utilizan la codificación UTF-16 por razones
  similares a Java. Cuando Netscape introdujo JavaScript por primera vez
  en 1995, Unicode aún estaba en sus primeras etapas, y la codificación
  de 16 bits era suficiente para representar todos los caracteres
  Unicode.
- C\# utiliza la codificación UTF-16, en gran parte porque la plataforma
  .NET, diseñada por Microsoft, y muchas tecnologías de Microsoft,
  incluido el sistema operativo Windows, utilizan ampliamente la
  codificación UTF-16.

Debido a la subestimación del recuento de caracteres, estos lenguajes
tuvieron que usar "pares sustitutos" para representar caracteres Unicode
que excedían los 16 bits. Este enfoque tiene sus inconvenientes: las
cadenas que contienen pares sustitutos pueden tener caracteres que
ocupan 2 o 4 bytes, perdiendo la ventaja de la codificación de longitud
fija. Además, el manejo de pares sustitutos agrega complejidad y
dificultad de depuración a la programación.

Para abordar estos desafíos, algunos lenguajes han adoptado estrategias
de codificación alternativas:

- El tipo `str` de Python utiliza la codificación Unicode con una
  representación flexible donde la longitud de almacenamiento de los
  caracteres depende del punto de código Unicode más grande de la
  cadena. Si todos los caracteres son ASCII, cada carácter ocupa 1 byte,
  2 bytes para caracteres dentro del Plano Multilingüe Básico (BMP) y 4
  bytes para caracteres más allá del BMP.
- El tipo `string` de Go utiliza internamente la codificación UTF-8. Go
  también proporciona el tipo `rune` para representar puntos de código
  Unicode individuales.
- Los tipos `str` y `String` de Rust utilizan internamente la
  codificación UTF-8. Rust también ofrece el tipo `char` para puntos de
  código Unicode individuales.

Es importante tener en cuenta que la discusión anterior se refiere a
cómo se almacenan las cadenas en los lenguajes de programación,
#strong[lo cual es diferente de cómo se almacenan las cadenas en
archivos o se transmiten a través de redes];. Para el almacenamiento de
archivos o la transmisión en red, las cadenas suelen codificarse en
formato UTF-8 para una compatibilidad y eficiencia de espacio óptimas.
= Resumen
<resumen>
=== Revisión clave
<revisión-clave>
- Las estructuras de datos se pueden clasificar desde dos perspectivas:
  estructura lógica y estructura física. La estructura lógica describe
  las relaciones lógicas entre los datos, mientras que la estructura
  física describe cómo se almacenan los datos en la memoria.
- Las estructuras lógicas utilizadas con frecuencia incluyen estructuras
  lineales, árboles y redes. Generalmente dividimos las estructuras de
  datos en lineales (arreglos, listas enlazadas, pilas, colas) y no
  lineales (árboles, grafos, montículos) según su estructura lógica. La
  implementación de tablas hash puede involucrar estructuras de datos
  tanto lineales como no lineales.
- Cuando un programa se está ejecutando, los datos se almacenan en la
  memoria. Cada espacio de memoria tiene una dirección correspondiente,
  y el programa accede a los datos a través de estas direcciones.
- Las estructuras físicas se pueden dividir en almacenamiento de espacio
  continuo (arreglos) y almacenamiento de espacio discreto (listas
  enlazadas). Todas las estructuras de datos se implementan utilizando
  arreglos, listas enlazadas o una combinación de ambos.
- Los tipos de datos básicos en las computadoras incluyen enteros
  (`byte`, `short`, `int`, `long`), números de punto flotante (`float`,
  `double`), caracteres (`char`) y booleanos (`bool`). El rango de
  valores de un tipo de datos depende de su tamaño y representación.
- Signo-magnitud, complemento a 1, complemento a 2 son tres métodos de
  codificación de enteros en computadoras, y se pueden convertir entre
  sí. El bit más significativo del signo-magnitud es el bit de signo, y
  los bits restantes representan el valor del número.
- Los enteros se codifican mediante el complemento a 2 en las
  computadoras. Los beneficios de esta representación incluyen (i) la
  computadora puede unificar la suma de enteros positivos y negativos,
  (ii) no es necesario diseñar circuitos de hardware especiales para la
  resta, y (iii) no hay ambigüedad de cero positivo y negativo.
- La codificación de números de punto flotante consta de 1 bit de signo,
  8 bits de exponente y 23 bits de fracción. Debido al bit de exponente,
  el rango de números de punto flotante es mucho mayor que el de los
  enteros, pero a costa de la precisión.
- ASCII es el conjunto de caracteres en inglés más antiguo, con 1 byte
  de longitud y un total de 127 caracteres. GBK es un conjunto de
  caracteres chinos popular, que incluye más de 20.000 caracteres
  chinos. Unicode tiene como objetivo proporcionar un estándar de
  conjunto de caracteres completo que incluya caracteres de varios
  idiomas del mundo, resolviendo así el problema de los caracteres
  ilegibles causado por métodos de codificación de caracteres
  inconsistentes.
- UTF-8 es el método de codificación Unicode más popular y general. Es
  un método de codificación de longitud variable con buena escalabilidad
  y eficiencia espacial. UTF-16 y UTF-32 son métodos de codificación de
  longitud fija. Al codificar caracteres chinos, UTF-16 ocupa menos
  espacio que UTF-8. Los lenguajes de programación como Java y C\# usan
  la codificación UTF-16 de forma predeterminada.

=== Preguntas y respuestas
<preguntas-y-respuestas>
#strong[P];: ¿Por qué una tabla hash contiene estructuras de datos tanto
lineales como no lineales?

La estructura subyacente de una tabla hash es un arreglo. Para resolver
las colisiones de hash, podemos usar el "encadenamiento" (discutido en
una sección posterior, "Colisión de hash"): cada cubo en el arreglo
apunta a una lista enlazada, que puede transformarse en un árbol
(generalmente un árbol rojo-negro) cuando su longitud es mayor que un
cierto umbral. Desde una perspectiva de almacenamiento, la estructura
subyacente de una tabla hash es un arreglo, donde cada cubo podría
contener un valor, una lista enlazada o un árbol. Por lo tanto, las
tablas hash pueden contener estructuras de datos tanto lineales
(arreglos, listas enlazadas) como no lineales (árboles).

#strong[P];: ¿La longitud del tipo `char` es de 1 byte?

La longitud del tipo `char` está determinada por el método de
codificación del lenguaje de programación. Por ejemplo, Java,
JavaScript, TypeScript y C\# utilizan la codificación UTF-16 (para
guardar puntos de código Unicode), por lo que la longitud del tipo
`char` es de 2 bytes.

#strong[P];: ¿Hay alguna ambigüedad cuando nos referimos a las
estructuras de datos basadas en arreglos como "estructuras de datos
estáticas"? La pila también puede realizar operaciones "dinámicas" como
sacar y empujar.

La pila puede implementar operaciones de datos dinámicas, pero la
estructura de datos sigue siendo "estática" (la longitud es fija).
Aunque las estructuras de datos basadas en arreglos pueden agregar o
eliminar elementos dinámicamente, su capacidad es fija. Si el tamaño de
la pila excede el tamaño preasignado, el arreglo antiguo se copiará en
un arreglo recién creado y más grande.

#strong[P];: Cuando se construye una pila (cola), su tamaño no se
especifica, entonces ¿por qué son "estructuras de datos estáticas"?

En los lenguajes de programación de alto nivel, no necesitamos
especificar manualmente la capacidad inicial de las pilas (colas); esta
tarea se completa automáticamente dentro de la clase. Por ejemplo, la
capacidad inicial de `ArrayList` de Java suele ser 10. Además, la
operación de expansión también se completa automáticamente. Consulte el
capítulo "Lista" posterior para obtener más detalles.

#strong[P];: El método de convertir el signo-magnitud al complemento a 2
es "primero negar y luego sumar 1", por lo que convertir el complemento
a 2 al signo-magnitud debería ser su operación inversa "primero restar 1
y luego negar". Sin embargo, el complemento a 2 también se puede
convertir al signo-magnitud mediante "primero negar y luego sumar 1",
¿por qué es esto?

#strong[R];: Esto se debe a que la conversión mutua entre el
signo-magnitud y el complemento a 2 es equivalente a calcular el
"complemento". Primero definimos el complemento: suponiendo que
$a + b = c$, entonces decimos que $a$ es el complemento de $b$ a $c$, y
viceversa, $b$ es el complemento de $a$ a $c$.

Dado un número binario $0010$ con longitud $n = 4$, si este número es el
signo-magnitud (ignorando el bit de signo), entonces su complemento a 2
se puede obtener mediante "primero negar y luego sumar 1":

$ 0010 arrow.r 1101 arrow.r 1110 $

Observe que la suma del signo-magnitud y el complemento a 2 es
$0010 + 1110 = 10000$, es decir, el complemento a 2 $1110$ es el
"complemento" del signo-magnitud $0010$ a $10000$. #strong[Esto
significa que el "primero negar y luego sumar 1" anterior es equivalente
a calcular el complemento a $10000$];.

Entonces, ¿cuál es el "complemento" de $1110$ a $10000$? Todavía podemos
calcularlo mediante "negar primero y luego sumar 1":

$ 1110 arrow.r 0001 arrow.r 0010 $

En otras palabras, el signo-magnitud y el complemento a 2 son el
"complemento" del otro a $10000$, por lo que "signo-magnitud a
complemento a 2" y "complemento a 2 a signo-magnitud" se pueden
implementar con la misma operación (primero negar y luego sumar 1).

Por supuesto, también podemos usar la operación inversa de "primero
negar y luego sumar 1" para encontrar el signo-magnitud del complemento
a 2 $1110$, es decir, "primero restar 1 y luego negar":

$ 1110 arrow.r 1101 arrow.r 0010 $

En resumen, "primero negar y luego sumar 1" y "primero restar 1 y luego
negar" están calculando el complemento a $10000$, y son equivalentes.

Esencialmente, la operación "negar" es en realidad encontrar el
complemento a $1111$ (porque `signo-magnitud + complemento a 1 = 1111`
siempre se cumple); y el complemento a 1 más 1 es igual al complemento a
2 a $10000$.

Tomamos $n = 4$ como ejemplo en lo anterior, y se puede generalizar a
cualquier número binario con cualquier número de dígitos.
= Arreglos y listas enlazadas
<arreglos-y-listas-enlazadas>
#figure(image("es/docs/assets/covers/chapter_array_and_linkedlist.jpg"),
  caption: [
    Arreglos y listas enlazadas
  ]
)

!!! abstract

```
El mundo de las estructuras de datos se asemeja a un robusto muro de ladrillos.

En los arreglos, imagine ladrillos cómodamente alineados, cada uno descansando sin problemas junto al siguiente, creando una formación unificada. Mientras tanto, en las listas enlazadas, estos ladrillos se dispersan libremente, abrazados por enredaderas que tejen elegantemente las conexiones entre ellos.
```
= Arreglo
<arreglo>
Un arreglo es una estructura de datos lineal que funciona como una fila
de elementos similares, almacenados juntos en la memoria de una
computadora en espacios contiguos. Es como una secuencia que mantiene un
almacenamiento organizado. Cada elemento de esta fila tiene su "lugar"
único conocido como índice. Consulte la figura a continuación para
observar cómo funcionan los arreglos y comprender estos términos clave.

#figure(image("es/docs/chapter_array_and_linkedlist/array.assets/array_definition.png"),
  caption: [
    Definición de arreglo y método de almacenamiento
  ]
)

== Operaciones comunes en arreglos
<operaciones-comunes-en-arreglos>
=== Inicialización de arreglos
<inicialización-de-arreglos>
Los arreglos se pueden inicializar de dos maneras según las necesidades:
sin valores iniciales o con valores iniciales especificados. Cuando no
se especifican valores iniciales, la mayoría de los lenguajes de
programación establecerán los elementos del arreglo en $0$:

\=== "Python"

````
```python title="array.py"
# Inicializar arreglo
arr: list[int] = [0] * 5  # [ 0, 0, 0, 0, 0 ]
nums: list[int] = [1, 3, 2, 5, 4]
```
````

=== Acceso a elementos
<acceso-a-elementos>
Los elementos de un arreglo se almacenan en espacios de memoria
contiguos, lo que simplifica el cálculo de la dirección de memoria de
cada elemento. La fórmula que se muestra en la figura a continuación
ayuda a determinar la dirección de memoria de un elemento, utilizando la
dirección de memoria del arreglo (específicamente, la dirección del
primer elemento) y el índice del elemento. Este cálculo agiliza el
acceso directo al elemento deseado.

#figure(image("es/docs/chapter_array_and_linkedlist/array.assets/array_memory_location_calculation.png"),
  caption: [
    Cálculo de la dirección de memoria para elementos de arreglo
  ]
)

Como se observa en la figura anterior, la indexación de arreglos
comienza convencionalmente en $0$. Si bien esto podría parecer
contraintuitivo, considerando que el conteo generalmente comienza en
$1$, dentro de la fórmula de cálculo de direcciones, #strong[un índice
es esencialmente un desplazamiento desde la dirección de memoria];. Para
la dirección del primer elemento, este desplazamiento es $0$, lo que
valida su índice como $0$.

El acceso a los elementos de un arreglo es muy eficiente, lo que nos
permite acceder aleatoriamente a cualquier elemento en tiempo
$O \( 1 \)$.

```python
def random_access(nums: list[int]) -> int:
    """随机访问元素"""
    # 在区间 [0, len(nums)-1] 中随机抽取一个数字
    random_index = random.randint(0, len(nums) - 1)
    # 获取并返回随机元素
    random_num = nums[random_index]
    return random_num
```

=== Inserción de elementos
<inserción-de-elementos>
Los elementos del arreglo están densamente empaquetados en la memoria,
sin espacio disponible para acomodar datos adicionales entre ellos. Como
se ilustra en la figura a continuación, insertar un elemento en el medio
de un arreglo requiere desplazar todos los elementos posteriores una
posición hacia atrás para crear espacio para el nuevo elemento.

#figure(image("es/docs/chapter_array_and_linkedlist/array.assets/array_insert_element.png"),
  caption: [
    Ejemplo de inserción de elementos en un arreglo
  ]
)

Es importante tener en cuenta que, debido a la longitud fija de un
arreglo, la inserción de un elemento inevitablemente resultará en la
pérdida del último elemento del arreglo. Las soluciones para abordar
este problema se explorarán en el capítulo "Lista".

```python
def insert(nums: list[int], num: int, index: int):
    """在数组的索引 index 处插入元素 num"""
    # 把索引 index 以及之后的所有元素向后移动一位
    for i in range(len(nums) - 1, index, -1):
        nums[i] = nums[i - 1]
    # 将 num 赋给 index 处的元素
    nums[index] = num
```

=== Eliminación de elementos
<eliminación-de-elementos>
De manera similar, como se muestra en la figura a continuación, para
eliminar un elemento en el índice $i$, todos los elementos que siguen al
índice $i$ deben moverse una posición hacia adelante.

#figure(image("es/docs/chapter_array_and_linkedlist/array.assets/array_remove_element.png"),
  caption: [
    Ejemplo de eliminación de elementos de un arreglo
  ]
)

Tenga en cuenta que después de la eliminación, el antiguo último
elemento se vuelve "sin sentido", por lo que no requiere ninguna
modificación específica.

```python
def remove(nums: list[int], index: int):
    """删除索引 index 处的元素"""
    # 把索引 index 之后的所有元素向前移动一位
    for i in range(index, len(nums) - 1):
        nums[i] = nums[i + 1]
```

En resumen, las operaciones de inserción y eliminación en arreglos
presentan las siguientes desventajas:

- #strong[Alta complejidad temporal];: Tanto la inserción como la
  eliminación en un arreglo tienen una complejidad temporal promedio de
  $O \( n \)$, donde $n$ es la longitud del arreglo.
- #strong[Pérdida de elementos];: Debido a la longitud fija de los
  arreglos, los elementos que exceden la capacidad del arreglo se
  pierden durante la inserción.
- #strong[Desperdicio de memoria];: Inicializar un arreglo más largo y
  utilizar solo la parte frontal da como resultado elementos finales
  "sin sentido" durante la inserción, lo que lleva a un desperdicio de
  espacio de memoria.

=== Recorrido de arreglos
<recorrido-de-arreglos>
En la mayoría de los lenguajes de programación, podemos recorrer un
arreglo utilizando índices o iterando directamente sobre cada elemento:

```python
def traverse(nums: list[int]):
    """遍历数组"""
    count = 0
    # 通过索引遍历数组
    for i in range(len(nums)):
        count += nums[i]
    # 直接遍历数组元素
    for num in nums:
        count += num
    # 同时遍历数据索引和元素
    for i, num in enumerate(nums):
        count += nums[i]
        count += num
```

=== Búsqueda de elementos
<búsqueda-de-elementos>
Localizar un elemento específico dentro de un arreglo implica iterar a
través del arreglo, verificando cada elemento para determinar si
coincide con el valor deseado.

Debido a que los arreglos son estructuras de datos lineales, esta
operación se conoce comúnmente como "búsqueda lineal".

```python
def find(nums: list[int], target: int) -> int:
    """在数组中查找指定元素"""
    for i in range(len(nums)):
        if nums[i] == target:
            return i
    return -1
```

=== Expansión de arreglos
<expansión-de-arreglos>
En entornos de sistemas complejos, garantizar la disponibilidad de
espacio de memoria después de un arreglo para una extensión segura de la
capacidad se vuelve un desafío. En consecuencia, en la mayoría de los
lenguajes de programación, #strong[la longitud de un arreglo es
inmutable];.

Para expandir un arreglo, es necesario crear un arreglo más grande y
luego copiar los elementos del arreglo original. Esta operación tiene
una complejidad temporal de $O \( n \)$ y puede llevar mucho tiempo para
arreglos grandes. El código es el siguiente:

```python
def extend(nums: list[int], enlarge: int) -> list[int]:
    """扩展数组长度"""
    # 初始化一个扩展长度后的数组
    res = [0] * (len(nums) + enlarge)
    # 将原数组中的所有元素复制到新数组
    for i in range(len(nums)):
        res[i] = nums[i]
    # 返回扩展后的新数组
    return res
```

== Ventajas y limitaciones de los arreglos
<ventajas-y-limitaciones-de-los-arreglos>
Los arreglos se almacenan en espacios de memoria contiguos y constan de
elementos del mismo tipo. Este enfoque proporciona una información
previa sustancial que los sistemas pueden aprovechar para optimizar la
eficiencia de las operaciones de la estructura de datos.

- #strong[Alta eficiencia espacial];: Los arreglos asignan un bloque
  contiguo de memoria para los datos, eliminando la necesidad de una
  sobrecarga estructural adicional.
- #strong[Soporte para acceso aleatorio];: Los arreglos permiten el
  acceso en tiempo $O \( 1 \)$ a cualquier elemento.
- #strong[Localidad de caché];: Al acceder a los elementos del arreglo,
  la computadora no solo los carga, sino que también almacena en caché
  los datos circundantes, utilizando la caché de alta velocidad para
  mejorar las velocidades de las operaciones posteriores.

Sin embargo, el almacenamiento continuo de espacio es un arma de doble
filo, con las siguientes limitaciones:

- #strong[Baja eficiencia en la inserción y eliminación];: A medida que
  los arreglos acumulan muchos elementos, la inserción o eliminación de
  elementos requiere el desplazamiento de un gran número de elementos.
- #strong[Longitud fija];: La longitud de un arreglo es fija después de
  la inicialización. La expansión de un arreglo requiere copiar todos
  los datos a un nuevo arreglo, lo que incurre en costos significativos.
- #strong[Desperdicio de espacio];: Si el tamaño del arreglo asignado
  excede lo necesario, el espacio adicional se desperdicia.

== Aplicaciones típicas de los arreglos
<aplicaciones-típicas-de-los-arreglos>
Los arreglos son estructuras de datos fundamentales y ampliamente
utilizadas. Encuentran aplicación frecuente en varios algoritmos y
sirven en la implementación de estructuras de datos complejas.

- #strong[Acceso aleatorio];: Los arreglos son ideales para almacenar
  datos cuando se requiere un muestreo aleatorio. Al generar una
  secuencia aleatoria basada en índices, podemos lograr un muestreo
  aleatorio de manera eficiente.
- #strong[Ordenamiento y búsqueda];: Los arreglos son la estructura de
  datos más utilizada para algoritmos de ordenamiento y búsqueda.
  Técnicas como el ordenamiento rápido, el ordenamiento por fusión, la
  búsqueda binaria, etc., operan principalmente en arreglos.
- #strong[Tablas de búsqueda];: Los arreglos sirven como tablas de
  búsqueda eficientes para la recuperación rápida de elementos o
  relaciones. Por ejemplo, la asignación de caracteres a códigos ASCII
  se vuelve sencilla utilizando los valores de los códigos ASCII como
  índices y almacenando los elementos correspondientes en el arreglo.
- #strong[Aprendizaje automático];: Dentro del dominio de las redes
  neuronales, los arreglos desempeñan un papel fundamental en la
  ejecución de operaciones cruciales de álgebra lineal que involucran
  vectores, matrices y tensores. Los arreglos sirven como la estructura
  de datos principal y más utilizada en la programación de redes
  neuronales.
- #strong[Implementación de estructuras de datos];: Los arreglos sirven
  como bloques de construcción para implementar varias estructuras de
  datos como pilas, colas, tablas hash, montículos, grafos, etc. Por
  ejemplo, la representación de una matriz de adyacencia de un grafo es
  esencialmente un arreglo bidimensional.
= Lista enlazada
<lista-enlazada>
El espacio de memoria es un recurso compartido entre todos los
programas. En un entorno de sistema complejo, la memoria disponible
puede estar dispersa por todo el espacio de memoria. Entendemos que la
memoria asignada para un arreglo debe ser continua. Sin embargo, para
arreglos muy grandes, encontrar un espacio de memoria contiguo
suficientemente grande podría ser un desafío. Aquí es donde la ventaja
flexible de las listas enlazadas se hace evidente.

Una lista enlazada es una estructura de datos lineal en la que cada
elemento es un objeto nodo, y los nodos están interconectados a través
de "referencias". Estas referencias contienen las direcciones de memoria
de los nodos subsiguientes, lo que permite la navegación de un nodo al
siguiente.

El diseño de las listas enlazadas permite que sus nodos se distribuyan
en diferentes ubicaciones de memoria sin requerir direcciones de memoria
contiguas.

#figure(image("es/docs/chapter_array_and_linkedlist/linked_list.assets/linkedlist_definition.png"),
  caption: [
    Definición de lista enlazada y método de almacenamiento
  ]
)

Como se muestra en la figura anterior, vemos que el bloque de
construcción básico de una lista enlazada es el objeto nodo. Cada nodo
consta de dos componentes clave: el "valor" del nodo y una "referencia"
al siguiente nodo.

- El primer nodo de una lista enlazada es el "nodo cabeza", y el último
  es el "nodo cola".
- El nodo cola apunta a "nulo", designado como `null` en Java, `nullptr`
  en C++ y `None` en Python.
- En lenguajes que admiten punteros, como C, C++, Go y Rust, esta
  "referencia" se implementa típicamente como un "puntero".

Como ilustra el código a continuación, un `ListNode` en una lista
enlazada, además de contener un valor, también debe mantener una
referencia (o puntero) adicional. Por lo tanto, #strong[una lista
enlazada ocupa más espacio de memoria que un arreglo al almacenar la
misma cantidad de datos.];.

\=== "Python"

````
```python title=""
class ListNode:
    """Clase de nodo de lista enlazada"""
    def __init__(self, val: int):
        self.val: int = val               # Valor del nodo
        self.next: ListNode | None = None # Referencia al siguiente nodo
```
````

== Operaciones comunes en listas enlazadas
<operaciones-comunes-en-listas-enlazadas>
=== Inicialización de una lista enlazada
<inicialización-de-una-lista-enlazada>
La construcción de una lista enlazada es un proceso de dos pasos:
primero, inicializar cada objeto nodo, y segundo, formar los enlaces de
referencia entre los nodos. Después de la inicialización, podemos
recorrer todos los nodos secuencialmente desde el nodo cabeza siguiendo
la referencia `next`.

\=== "Python"

````
```python title="linked_list.py"
# Inicializar lista enlazada: 1 -> 3 -> 2 -> 5 -> 4
# Inicializar cada nodo
n0 = ListNode(1)
n1 = ListNode(3)
n2 = ListNode(2)
n3 = ListNode(5)
n4 = ListNode(4)
# Construir referencias entre nodos
n0.next = n1
n1.next = n2
n2.next = n3
n3.next = n4
```
````

=== Inserción de nodos
<inserción-de-nodos>
Insertar un nodo en una lista enlazada es muy fácil. Como se muestra en
la figura a continuación, supongamos que queremos insertar un nuevo nodo
`P` entre dos nodos adyacentes `n0` y `n1`. #strong[Esto se puede lograr
simplemente modificando dos referencias de nodo (punteros)];, con una
complejidad temporal de $O \( 1 \)$.

En comparación, insertar un elemento en un arreglo tiene una complejidad
temporal de $O \( n \)$, lo que se vuelve menos eficiente cuando se
trata de grandes volúmenes de datos.

#figure(image("es/docs/chapter_array_and_linkedlist/linked_list.assets/linkedlist_insert_node.png"),
  caption: [
    Ejemplo de inserción de nodos en una lista enlazada
  ]
)

```src
[file]{linked_list}-[class]{}-[func]{insert}
```

=== Eliminación de nodos
<eliminación-de-nodos>
Como se muestra en la figura a continuación, eliminar un nodo de una
lista enlazada también es muy fácil, #strong[lo que implica solo la
modificación de la referencia (puntero) de un solo nodo];.

Es importante tener en cuenta que, aunque el nodo `P` sigue apuntando a
`n1` después de ser eliminado, se vuelve inaccesible durante el
recorrido de la lista enlazada. Esto significa efectivamente que `P` ya
no forma parte de la lista enlazada.

#figure(image("es/docs/chapter_array_and_linkedlist/linked_list.assets/linkedlist_remove_node.png"),
  caption: [
    Eliminación de nodos de una lista enlazada
  ]
)

```src
[file]{linked_list}-[class]{}-[func]{remove}
```

=== Acceso a nodos
<acceso-a-nodos>
#strong[El acceso a los nodos en una lista enlazada es menos eficiente];.
Como se mencionó anteriormente, se puede acceder a cualquier elemento de
un arreglo en tiempo $O \( 1 \)$. Por el contrario, con una lista
enlazada, el programa implica comenzar desde el nodo cabeza y recorrer
secuencialmente los nodos hasta que se encuentra el nodo deseado. En
otras palabras, para acceder al nodo $i$-ésimo en una lista enlazada, el
programa debe iterar a través de $i - 1$ nodos, lo que resulta en una
complejidad temporal de $O \( n \)$.

```src
[file]{linked_list}-[class]{}-[func]{access}
```

=== Búsqueda de nodos
<búsqueda-de-nodos>
Recorra la lista enlazada para localizar un nodo cuyo valor coincida con
`target`, y luego genere el índice de ese nodo dentro de la lista
enlazada. Este procedimiento también es un ejemplo de búsqueda lineal.
El código correspondiente se proporciona a continuación:

```src
[file]{linked_list}-[class]{}-[func]{find}
```

== Arreglos vs.~listas enlazadas
<arreglos-vs.-listas-enlazadas>
La siguiente tabla resume las características de los arreglos y las
listas enlazadas, y también compara sus eficiencias en varias
operaciones. Debido a que utilizan estrategias de almacenamiento
opuestas, sus respectivas propiedades y eficiencias operativas exhiben
contrastes distintos.

Tabla ~ Comparación de eficiencia de arreglos y listas enlazadas
#figure(
  align(center)[#table(
    columns: (20.22%, 53.93%, 25.84%),
    align: (auto,auto,auto,),
    table.header([], [Arreglos], [Listas enlazadas],),
    table.hline(),
    [Almacenamiento], [Espacio de memoria contiguo], [Espacio de memoria
    disperso],
    [Expansión de capacidad], [Longitud fija], [Expansión flexible],
    [Eficiencia de memoria], [Menos memoria por elemento, posible
    desperdicio de espacio], [Más memoria por elemento],
    [Acceso a elementos], [$O \( 1 \)$], [$O \( n \)$],
    [Adición de elementos], [$O \( n \)$], [$O \( 1 \)$],
    [Eliminación de elementos], [$O \( n \)$], [$O \( 1 \)$],
  )]
  , kind: table
  )

== Tipos comunes de listas enlazadas
<tipos-comunes-de-listas-enlazadas>
Como se muestra en la figura a continuación, hay tres tipos comunes de
listas enlazadas.

- #strong[Lista enlazada simple];: Esta es la lista enlazada estándar
  descrita anteriormente. Los nodos en una lista enlazada simple
  incluyen un valor y una referencia al siguiente nodo. El primer nodo
  se conoce como nodo cabeza, y el último nodo, que apunta a nulo
  (`None`), es el nodo cola.
- #strong[Lista enlazada circular];: Se forma cuando el nodo cola de una
  lista enlazada simple apunta de nuevo al nodo cabeza, creando un
  bucle. En una lista enlazada circular, cualquier nodo puede funcionar
  como nodo cabeza.
- #strong[Lista doblemente enlazada];: A diferencia de una lista
  enlazada simple, una lista doblemente enlazada mantiene referencias en
  dos direcciones. Cada nodo contiene referencias (puntero) tanto a su
  sucesor (el siguiente nodo) como a su predecesor (el nodo anterior).
  Aunque las listas doblemente enlazadas ofrecen más flexibilidad para
  recorrer en cualquier dirección, también consumen más espacio de
  memoria.

\=== "Python"

````
```python title=""
class ListNode:
    """Clase de nodo de lista enlazada bidireccional"""
    def __init__(self, val: int):
        self.val: int = val                # Valor del nodo
        self.next: ListNode | None = None  # Referencia al nodo sucesor
        self.prev: ListNode | None = None  # Referencia a un nodo predecesor
```
````

#figure(image("es/docs/chapter_array_and_linkedlist/linked_list.assets/linkedlist_common_types.png"),
  caption: [
    Tipos comunes de listas enlazadas
  ]
)

== Aplicaciones típicas de las listas enlazadas
<aplicaciones-típicas-de-las-listas-enlazadas>
Las listas enlazadas simples se utilizan con frecuencia en la
implementación de pilas, colas, tablas hash y grafos.

- #strong[Pilas y colas];: En las listas enlazadas simples, si las
  inserciones y eliminaciones ocurren en el mismo extremo, se comporta
  como una pila (último en entrar, primero en salir). Por el contrario,
  si las inserciones están en un extremo y las eliminaciones en el otro,
  funciona como una cola (primero en entrar, primero en salir).
- #strong[Tablas hash];: Las listas enlazadas se utilizan en el
  encadenamiento, un método popular para resolver colisiones de hash.
  Aquí, todos los elementos colisionados se agrupan en una lista
  enlazada.
- #strong[Grafos];: Las listas de adyacencia, un método estándar para la
  representación de grafos, asocian cada vértice del grafo con una lista
  enlazada. Esta lista contiene elementos que representan vértices
  conectados al vértice correspondiente.

Las listas doblemente enlazadas son ideales para escenarios que
requieren un acceso rápido a los elementos precedentes y sucesores.

- #strong[Estructuras de datos avanzadas];: En estructuras como los
  árboles rojo-negro y los árboles B, el acceso al padre de un nodo es
  esencial. Esto se logra incorporando una referencia al nodo padre en
  cada nodo, similar a una lista doblemente enlazada.
- #strong[Historial del navegador];: En los navegadores web, las listas
  doblemente enlazadas facilitan la navegación por el historial de
  páginas visitadas cuando los usuarios hacen clic en avanzar o
  retroceder.
- #strong[Algoritmo LRU];: Las listas doblemente enlazadas son adecuadas
  para los algoritmos de expulsión de caché de menos usadas
  recientemente (LRU), lo que permite una rápida identificación de los
  datos menos usados recientemente y facilita la adición y eliminación
  rápida de nodos.

Las listas enlazadas circulares son ideales para aplicaciones que
requieren operaciones periódicas, como la programación de recursos en
sistemas operativos.

- #strong[Algoritmo de planificación por turnos];: En los sistemas
  operativos, el algoritmo de planificación por turnos es un método
  común de planificación de CPU, que requiere recorrer un grupo de
  procesos. A cada proceso se le asigna un segmento de tiempo, y al
  expirar, la CPU rota al siguiente proceso. Esta operación cíclica se
  puede realizar de manera eficiente utilizando una lista enlazada
  circular, lo que permite un sistema justo y de tiempo compartido entre
  todos los procesos.
- #strong[Búferes de datos];: Las listas enlazadas circulares también se
  utilizan en búferes de datos, como en reproductores de audio y video,
  donde el flujo de datos se divide en múltiples bloques de búfer
  organizados de forma circular para una reproducción fluida.
= Lista
<lista>
Una lista es un concepto de estructura de datos abstracta que representa
una colección ordenada de elementos, que admite operaciones como acceso,
modificación, adición, eliminación y recorrido de elementos, sin
requerir que los usuarios consideren las limitaciones de capacidad. Las
listas se pueden implementar basándose en listas enlazadas o arreglos.

- Una lista enlazada sirve inherentemente como una lista, admitiendo
  operaciones para agregar, eliminar, buscar y modificar elementos, con
  la flexibilidad de ajustar dinámicamente su tamaño.
- Los arreglos también admiten estas operaciones, pero debido a su
  longitud inmutable, pueden considerarse como una lista con un límite
  de longitud.

Al implementar listas usando arreglos, #strong[la inmutabilidad de la
longitud reduce la practicidad de la lista];. Esto se debe a que
predecir la cantidad de datos a almacenar con anticipación a menudo es
un desafío, lo que dificulta la elección de una longitud de lista
adecuada. Si la longitud es demasiado pequeña, es posible que no cumpla
con los requisitos; si es demasiado grande, puede desperdiciar espacio
de memoria.

Para resolver este problema, podemos implementar listas usando un
arreglo dinámico. Hereda las ventajas de los arreglos y puede expandirse
dinámicamente durante la ejecución del programa.

De hecho, #strong[muchas bibliotecas estándar de lenguajes de
programación implementan listas usando arreglos dinámicos];, como `list`
de Python, `ArrayList` de Java, `vector` de C++ y `List` de C\#. En la
siguiente discusión, consideraremos "lista" y "arreglo dinámico" como
conceptos sinónimos.

== Operaciones comunes de lista
<operaciones-comunes-de-lista>
=== Inicialización de una lista
<inicialización-de-una-lista>
Normalmente utilizamos dos métodos de inicialización: "sin valores
iniciales" y "con valores iniciales".

\=== "Python"

````
```python title="list.py"
# Inicializar lista
# Sin valores iniciales
nums1: list[int] = []
# Con valores iniciales
nums: list[int] = [1, 3, 2, 5, 4]
```
````

=== Acceso a elementos
<acceso-a-elementos>
Las listas son esencialmente arreglos, por lo que pueden acceder y
actualizar elementos en tiempo $O \( 1 \)$, lo cual es muy eficiente.

\=== "Python"

````
```python title="list.py"
# Acceder a elementos
num: int = nums[1]  # Acceder al elemento en el índice 1

# Actualizar elementos
nums[1] = 0    # Actualizar el elemento en el índice 1 a 0
```
````

=== Inserción y eliminación de elementos
<inserción-y-eliminación-de-elementos>
En comparación con los arreglos, las listas ofrecen más flexibilidad
para agregar y eliminar elementos. Si bien agregar elementos al final de
una lista es una operación de $O \( 1 \)$, la eficiencia de insertar y
eliminar elementos en otras partes de la lista sigue siendo la misma que
en los arreglos, con una complejidad temporal de $O \( n \)$.

\=== "Python"

````
```python title="list.py"
# Limpiar lista
nums.clear()

# Agregar elementos al final
nums.append(1)
nums.append(3)
nums.append(2)
nums.append(5)
nums.append(4)

# Insertar elemento en el medio
nums.insert(3, 6)  # Insertar el número 6 en el índice 3

# Eliminar elementos
nums.pop(3)        # Eliminar el elemento en el índice 3
```
````

=== Iteración de la lista
<iteración-de-la-lista>
Similar a los arreglos, las listas se pueden iterar utilizando índices o
iterando directamente a través de cada elemento.

\=== "Python"

````
```python title="list.py"
# Iterar a través de la lista por índice
count = 0
for i in range(len(nums)):
    count += nums[i]

# Iterar directamente a través de los elementos de la lista
for num in nums:
    count += num
```
````

=== Concatenación de listas
<concatenación-de-listas>
Dada una nueva lista `nums1`, podemos agregarla al final de la lista
original.

\=== "Python"

````
```python title="list.py"
# Concatenar dos listas
nums1: list[int] = [6, 8, 7, 10, 9]
nums += nums1  # Concatenar nums1 al final de nums
```
````

=== Ordenar la lista
<ordenar-la-lista>
Una vez que la lista está ordenada, podemos emplear algoritmos
comúnmente utilizados en problemas de algoritmos relacionados con
arreglos, como la "búsqueda binaria" y los algoritmos de "dos punteros".

\=== "Python"

````
```python title="list.py"
# Ordenar la lista
nums.sort()  # Después de ordenar, los elementos de la lista están en orden ascendente
```
````

== Implementación de listas
<implementación-de-listas>
Muchos lenguajes de programación vienen con listas incorporadas,
incluidos Java, C++, Python, etc. Sus implementaciones tienden a ser
intrincadas, con configuraciones cuidadosamente consideradas para varios
parámetros, como la capacidad inicial y los factores de expansión. Los
lectores curiosos pueden profundizar en el código fuente para seguir
aprendiendo.

Para mejorar nuestra comprensión de cómo funcionan las listas,
intentaremos implementar una versión simplificada de una lista,
centrándonos en tres aspectos cruciales del diseño:

- #strong[Capacidad inicial];: Elija una capacidad inicial razonable
  para el arreglo. En este ejemplo, elegimos 10 como capacidad inicial.
- #strong[Registro de tamaño];: Declare una variable `size` para
  registrar el número actual de elementos en la lista, actualizándose en
  tiempo real con la inserción y eliminación de elementos. Con esta
  variable, podemos localizar el final de la lista y determinar si es
  necesaria la expansión.
- #strong[Mecanismo de expansión];: Si la lista alcanza su capacidad
  máxima al insertar un elemento, se requiere un proceso de expansión.
  Esto implica crear un arreglo más grande basándose en el factor de
  expansión y luego transferir todos los elementos del arreglo actual al
  nuevo. En este ejemplo, estipulamos que el tamaño del arreglo debe
  duplicarse con cada expansión.

```src
[file]{my_list}-[class]{my_list}-[func]{}
```
= Memoria y caché \*
<memoria-y-caché>
En las dos primeras secciones de este capítulo, exploramos los arreglos
y las listas enlazadas, dos estructuras de datos fundamentales que
representan el "almacenamiento continuo" y el "almacenamiento disperso",
respectivamente.

De hecho, #strong[la estructura física determina en gran medida la
eficiencia con la que un programa utiliza la memoria y la caché];, lo
que a su vez afecta el rendimiento general del algoritmo.

== Dispositivos de almacenamiento de la computadora
<dispositivos-de-almacenamiento-de-la-computadora>
Hay tres tipos de dispositivos de almacenamiento en las computadoras:
disco duro, memoria de acceso aleatorio (RAM) y memoria caché. La
siguiente tabla muestra sus respectivos roles y características de
rendimiento en los sistemas informáticos.

Tabla ~ Dispositivos de almacenamiento de la computadora
#figure(
  align(center)[#table(
    columns: (4.58%, 25.83%, 30%, 39.58%),
    align: (auto,auto,auto,auto,),
    table.header([], [Disco duro], [Memoria], [Caché],),
    table.hline(),
    [Uso], [Almacenamiento a largo plazo de datos, incluyendo SO,
    programas, archivos, etc.], [Almacenamiento temporal de programas en
    ejecución y datos en procesamiento], [Almacena datos e instrucciones
    de acceso frecuente, reduciendo el número de accesos de la CPU a la
    memoria],
    [Volatilidad], [Los datos no se pierden después de apagar], [Los
    datos se pierden después de apagar], [Los datos se pierden después
    de apagar],
    [Capacidad], [Mayor, nivel de TB], [Menor, nivel de GB], [Muy
    pequeña, nivel de MB],
    [Velocidad], [Más lento, varios cientos a miles de MB/s], [Más
    rápido, varias decenas de GB/s], [Muy rápido, varias decenas a
    cientos de GB/s],
    [Precio (USD)], [Más barato, unos pocos centavos / GB], [Más caro,
    unos pocos dólares / GB], [Muy caro, con precio de CPU],
  )]
  , kind: table
  )

El sistema de almacenamiento de la computadora se puede visualizar como
una pirámide, como se muestra en la figura a continuación. Los
dispositivos de almacenamiento en la parte superior de la pirámide son
más rápidos, tienen capacidades más pequeñas y son más caros. Este
diseño de varios niveles no es accidental, sino un resultado deliberado
de una cuidadosa consideración por parte de científicos e ingenieros
informáticos.

- #strong[Reemplazar los discos duros con memoria es un desafío];. En
  primer lugar, los datos en la memoria se pierden después de apagar, lo
  que la hace inadecuada para el almacenamiento de datos a largo plazo;
  en segundo lugar, la memoria es significativamente más cara que los
  discos duros, lo que limita su viabilidad para un uso generalizado en
  el mercado de consumo.
- #strong[Las cachés se enfrentan a una compensación entre gran
  capacidad y alta velocidad];. A medida que aumenta la capacidad de las
  cachés L1, L2 y L3, su tamaño físico crece, lo que aumenta la
  distancia del núcleo de la CPU. Esto da como resultado tiempos de
  transferencia de datos más largos y una mayor latencia de acceso. Con
  la tecnología actual, una estructura de caché de varios niveles
  proporciona el equilibrio óptimo entre capacidad, velocidad y costo.

#figure(image("es/docs/chapter_array_and_linkedlist/ram_and_cache.assets/storage_pyramid.png"),
  caption: [
    Sistema de almacenamiento de la computadora
  ]
)

!!! tip

```
La jerarquía de almacenamiento en las computadoras refleja un cuidadoso equilibrio entre velocidad, capacidad y costo. Este tipo de compensación es común en varias industrias, donde encontrar el equilibrio óptimo entre beneficios y limitaciones es esencial.
```

En general, #strong[los discos duros proporcionan almacenamiento a largo
plazo para grandes volúmenes de datos, la memoria sirve como
almacenamiento temporal para los datos que se procesan durante la
ejecución del programa, y la caché almacena los datos e instrucciones a
los que se accede con frecuencia para mejorar la eficiencia de la
ejecución];. Juntos, garantizan el funcionamiento eficiente de los
sistemas informáticos.

Como se muestra en la figura a continuación, durante la ejecución del
programa, los datos se leen del disco duro a la memoria para el cálculo
de la CPU. La caché, que actúa como una extensión de la CPU,
#strong[precarga inteligentemente los datos de la memoria];, lo que
permite un acceso más rápido a los datos para la CPU. Esto mejora en
gran medida la eficiencia de la ejecución del programa al tiempo que
reduce la dependencia de una memoria más lenta.

#figure(image("es/docs/chapter_array_and_linkedlist/ram_and_cache.assets/computer_storage_devices.png"),
  caption: [
    Flujo de datos entre el disco duro, la memoria y la caché
  ]
)

== Eficiencia de la memoria de las estructuras de datos
<eficiencia-de-la-memoria-de-las-estructuras-de-datos>
En términos de utilización del espacio de memoria, los arreglos y las
listas enlazadas tienen sus ventajas y limitaciones.

Por un lado, #strong[la memoria es limitada y no puede ser compartida
por varios programas];, por lo que optimizar el uso del espacio en las
estructuras de datos es crucial. Los arreglos son eficientes en el
espacio porque sus elementos están densamente empaquetados, sin requerir
memoria adicional para referencias (punteros) como en las listas
enlazadas. Sin embargo, los arreglos requieren la preasignación de un
bloque contiguo de memoria, lo que puede llevar a un desperdicio si el
espacio asignado excede la necesidad real. La expansión de un arreglo
también incurre en una sobrecarga adicional de tiempo y espacio. Por el
contrario, las listas enlazadas asignan y liberan memoria dinámicamente
para cada nodo, lo que ofrece una mayor flexibilidad a costa de memoria
adicional para los punteros.

Por otro lado, durante la ejecución del programa, #strong[la asignación
y desasignación repetida de memoria aumenta la fragmentación de la
memoria];, lo que reduce la eficiencia de la utilización de la memoria.
Los arreglos, debido a su método de almacenamiento continuo, tienen
relativamente menos probabilidades de causar fragmentación de la
memoria. Por el contrario, las listas enlazadas almacenan elementos en
ubicaciones no contiguas, y las inserciones y eliminaciones frecuentes
pueden exacerbar la fragmentación de la memoria.

== Eficiencia de la caché de las estructuras de datos
<eficiencia-de-la-caché-de-las-estructuras-de-datos>
Aunque las cachés son mucho más pequeñas en capacidad de espacio que la
memoria, son mucho más rápidas y desempeñan un papel crucial en la
velocidad de ejecución del programa. Debido a su capacidad limitada, las
cachés solo pueden almacenar un subconjunto de datos a los que se accede
con frecuencia. Cuando la CPU intenta acceder a datos que no están
presentes en la caché, se produce un fallo de caché, lo que requiere que
la CPU recupere los datos necesarios de una memoria más lenta, lo que
puede afectar el rendimiento.

Claramente, #strong[cuantos menos fallos de caché, mayor será la
eficiencia de lectura-escritura de datos de la CPU];, y mejor será el
rendimiento del programa. La proporción de recuperación exitosa de datos
de la caché por parte de la CPU se denomina tasa de aciertos de caché,
una métrica que a menudo se utiliza para medir la eficiencia de la
caché.

Para lograr una mayor eficiencia, las cachés adoptan los siguientes
mecanismos de carga de datos.

- #strong[Líneas de caché];: Las cachés operan almacenando y cargando
  datos en unidades llamadas líneas de caché, en lugar de bytes
  individuales. Este enfoque mejora la eficiencia al transferir bloques
  de datos más grandes a la vez.
- #strong[Mecanismo de precarga];: Los procesadores predicen los
  patrones de acceso a datos (por ejemplo, acceso secuencial o de paso
  fijo) y precargan los datos en la caché basándose en estos patrones
  para aumentar la tasa de aciertos de caché.
- #strong[Localidad espacial];: Cuando se accede a un dato específico,
  es probable que se acceda pronto a los datos cercanos. Para aprovechar
  esto, las cachés cargan datos adyacentes junto con los datos
  solicitados, mejorando las tasas de aciertos.
- #strong[Localidad temporal];: Si se accede a los datos, es probable
  que se acceda a ellos de nuevo en un futuro próximo. Las cachés
  utilizan este principio para retener los datos a los que se ha
  accedido recientemente para mejorar la tasa de aciertos.

De hecho, #strong[los arreglos y las listas enlazadas tienen diferentes
eficiencias de utilización de la caché];, lo que se refleja
principalmente en los siguientes aspectos.

- #strong[Espacio ocupado];: Los elementos de la lista enlazada ocupan
  más espacio que los elementos del arreglo, lo que resulta en que se
  retengan menos datos efectivos en la caché.
- #strong[Líneas de caché];: Los datos de la lista enlazada están
  dispersos por toda la memoria, y la caché se "carga por fila", por lo
  que la proporción de datos no válidos cargados es mayor.
- #strong[Mecanismo de precarga];: El patrón de acceso a datos de los
  arreglos es más "predecible" que el de las listas enlazadas, es decir,
  es más fácil para el sistema adivinar los datos que están a punto de
  cargarse.
- #strong[Localidad espacial];: Los arreglos se almacenan en un espacio
  de memoria continuo, por lo que es más probable que se acceda pronto a
  los datos cercanos a los datos que se están cargando.

En general, #strong[los arreglos tienen una tasa de aciertos de caché
más alta y generalmente son más eficientes en operación que las listas
enlazadas];. Esto hace que las estructuras de datos basadas en arreglos
sean más populares en la resolución de problemas algorítmicos.

Cabe señalar que #strong[una alta eficiencia de caché no significa que
los arreglos sean siempre mejores que las listas enlazadas];. La
elección de la estructura de datos debe depender de los requisitos
específicos de la aplicación. Por ejemplo, tanto los arreglos como las
listas enlazadas pueden implementar la estructura de datos de "pila"
(que se detallará en el próximo capítulo), pero son adecuadas para
diferentes escenarios.

- En los problemas de algoritmos, tendemos a elegir pilas basadas en
  arreglos porque proporcionan una mayor eficiencia operativa y
  capacidades de acceso aleatorio, con el único costo de la necesidad de
  preasignar una cierta cantidad de espacio de memoria para el arreglo.
- Si el volumen de datos es muy grande, altamente dinámico y el tamaño
  esperado de la pila es difícil de estimar, entonces una pila basada en
  una lista enlazada es una mejor opción. Las listas enlazadas pueden
  distribuir una gran cantidad de datos en diferentes partes de la
  memoria y evitar la sobrecarga adicional de la expansión del arreglo.
= Resumen
<resumen>
=== Revisión clave
<revisión-clave>
- Los arreglos y las listas enlazadas son dos estructuras de datos
  básicas, que representan dos métodos de almacenamiento en la memoria
  de la computadora: almacenamiento de espacio contiguo y almacenamiento
  de espacio no contiguo. Sus características se complementan entre sí.
- Los arreglos admiten el acceso aleatorio y usan menos memoria; sin
  embargo, son ineficientes en la inserción y eliminación de elementos y
  tienen una longitud fija después de la inicialización.
- Las listas enlazadas implementan una inserción y eliminación eficiente
  de nodos mediante el cambio de referencias (punteros) y pueden ajustar
  su longitud de forma flexible; sin embargo, tienen una menor
  eficiencia de acceso a los nodos y consumen más memoria.
- Los tipos comunes de listas enlazadas incluyen listas enlazadas
  simples, listas enlazadas circulares y listas doblemente enlazadas,
  cada una con sus propios escenarios de aplicación.
- Las listas son colecciones ordenadas de elementos que admiten la
  adición, eliminación y modificación, típicamente implementadas
  basándose en arreglos dinámicos, conservando las ventajas de los
  arreglos al tiempo que permiten un ajuste flexible de la longitud.
- El advenimiento de las listas mejoró significativamente la practicidad
  de los arreglos, pero puede conducir a cierto desperdicio de espacio
  de memoria.
- Durante la ejecución del programa, los datos se almacenan
  principalmente en la memoria. Los arreglos proporcionan una mayor
  eficiencia del espacio de memoria, mientras que las listas enlazadas
  son más flexibles en el uso de la memoria.
- Las cachés proporcionan un acceso rápido a los datos a las CPU a
  través de mecanismos como líneas de caché, precarga, localidad
  espacial y localidad temporal, lo que mejora significativamente la
  eficiencia de ejecución del programa.
- Debido a las mayores tasas de aciertos de caché, los arreglos son
  generalmente más eficientes que las listas enlazadas. Al elegir una
  estructura de datos, se debe tomar la decisión adecuada en función de
  las necesidades y escenarios específicos.

=== Preguntas y respuestas
<preguntas-y-respuestas>
#strong[P];: ¿Almacenar arreglos en la pila versus en el montón afecta
la eficiencia de tiempo y espacio?

Los arreglos almacenados tanto en la pila como en el montón se almacenan
en espacios de memoria contiguos, y la eficiencia de las operaciones de
datos es esencialmente la misma. Sin embargo, las pilas y los montones
tienen sus propias características, lo que lleva a las siguientes
diferencias.

+ Eficiencia de asignación y liberación: La pila es un bloque de memoria
  más pequeño, asignado automáticamente por el compilador; la memoria
  del montón es relativamente más grande y se puede asignar
  dinámicamente en el código, más propensa a la fragmentación. Por lo
  tanto, las operaciones de asignación y liberación en el montón son
  generalmente más lentas que en la pila.
+ Limitación de tamaño: La memoria de la pila es relativamente pequeña,
  mientras que el tamaño del montón generalmente está limitado por la
  memoria disponible. Por lo tanto, el montón es más adecuado para
  almacenar arreglos grandes.
+ Flexibilidad: El tamaño de los arreglos en la pila debe determinarse
  en tiempo de compilación, mientras que el tamaño de los arreglos en el
  montón se puede determinar dinámicamente en tiempo de ejecución.

#strong[P];: ¿Por qué los arreglos requieren elementos del mismo tipo,
mientras que las listas enlazadas no enfatizan los elementos del mismo
tipo?

Las listas enlazadas consisten en nodos conectados por referencias
(punteros), y cada nodo puede almacenar datos de diferentes tipos, como
int, double, string, object, etc.

En contraste, los elementos del arreglo deben ser del mismo tipo, lo que
permite el cálculo de desplazamientos para acceder a las posiciones de
los elementos correspondientes. Por ejemplo, un arreglo que contenga
tipos int y long, con elementos individuales que ocupen 4 bytes y 8
bytes respectivamente, no puede usar la siguiente fórmula para calcular
los desplazamientos, ya que el arreglo contiene elementos de dos
longitudes diferentes.

```shell
# Dirección de memoria del elemento = dirección de memoria del arreglo + longitud del elemento * índice del elemento
```

#strong[P];: Después de eliminar un nodo, ¿es necesario establecer
`P.next` en `None`?

No modificar `P.next` también es aceptable. Desde la perspectiva de la
lista enlazada, recorrer desde el nodo cabeza hasta el nodo cola ya no
encontrará `P`. Esto significa que el nodo `P` ha sido eliminado
efectivamente de la lista, y hacia dónde apunta `P` ya no afecta a la
lista.

Desde una perspectiva de recolección de basura, para lenguajes con
mecanismos automáticos de recolección de basura como Java, Python y Go,
si el nodo `P` se recolecta depende de si todavía hay referencias que
apunten a él, no del valor de `P.next`. En lenguajes como C y C++,
necesitamos liberar manualmente la memoria del nodo.

#strong[P];: En las listas enlazadas, la complejidad temporal para las
operaciones de inserción y eliminación es `O(1)`. Pero buscar el
elemento antes de la inserción o eliminación toma `O(n)` tiempo,
entonces ¿por qué la complejidad temporal no es `O(n)`?

Si un elemento se busca primero y luego se elimina, la complejidad
temporal es de hecho `O(n)`. Sin embargo, la ventaja de `O(1)` de las
listas enlazadas en la inserción y eliminación se puede realizar en
otras aplicaciones. Por ejemplo, en la implementación de colas de doble
extremo usando listas enlazadas, mantenemos punteros que siempre apuntan
a los nodos cabeza y cola, lo que hace que cada operación de inserción y
eliminación sea `O(1)`.

#strong[P];: En la figura "Definición de lista enlazada y método de
almacenamiento", ¿los nodos de almacenamiento de color azul claro ocupan
una única dirección de memoria, o comparten la mitad con el valor del
nodo?

La figura es solo una representación cualitativa; el análisis
cuantitativo depende de situaciones específicas.

- Diferentes tipos de valores de nodo ocupan diferentes cantidades de
  espacio, como int, long, double e instancias de objetos.
- El espacio de memoria ocupado por las variables de puntero depende del
  sistema operativo y del entorno de compilación utilizados,
  generalmente 8 bytes o 4 bytes.

#strong[P];: ¿Agregar elementos al final de una lista siempre es `O(1)`?

Si agregar un elemento excede la longitud de la lista, la lista debe
expandirse primero. El sistema solicitará un nuevo bloque de memoria y
moverá todos los elementos de la lista original, en cuyo caso la
complejidad temporal se convierte en `O(n)`.

#strong[P];: La afirmación "La aparición de las listas mejora en gran
medida la practicidad de los arreglos, pero puede conducir a cierto
desperdicio de espacio de memoria" - ¿se refiere a la memoria ocupada
por variables adicionales como capacidad, longitud y multiplicador de
expansión?

El desperdicio de espacio aquí se refiere principalmente a dos aspectos:
por un lado, las listas se establecen con una longitud inicial, que no
siempre necesitamos; por otro lado, para evitar expansiones frecuentes,
la expansión generalmente se multiplica por un coeficiente, como
$times 1.5$. Esto da como resultado muchos espacios vacíos, que
normalmente no podemos llenar por completo.

#strong[P];: En Python, después de inicializar `n = [1, 2, 3]`, las
direcciones de estos 3 elementos son contiguas, pero al inicializar
`m = [2, 1, 3]` se muestra que el `id` de cada elemento no es
consecutivo, sino idéntico a los de `n`. Si las direcciones de estos
elementos no son contiguas, ¿sigue siendo `m` un arreglo?

Si reemplazamos los elementos de la lista con nodos de lista enlazada
`n = [n1, n2, n3, n4, n5]`, estos 5 objetos de nodo también suelen estar
dispersos por la memoria. Sin embargo, dado un índice de lista, aún
podemos acceder a la dirección de memoria del nodo en tiempo `O(1)`,
accediendo así al nodo correspondiente. Esto se debe a que el arreglo
almacena referencias a los nodos, no los nodos mismos.

A diferencia de muchos lenguajes, en Python, los números también se
envuelven como objetos, y las listas almacenan referencias a estos
números, no los números mismos. Por lo tanto, encontramos que el mismo
número en dos arreglos tiene el mismo `id`, y las direcciones de memoria
de estos números no necesitan ser contiguas.

#strong[P];: La `std::list` en C++ STL ya ha implementado una lista
doblemente enlazada, pero parece que algunos libros de algoritmos no la
usan directamente. ¿Hay alguna limitación?

Por un lado, a menudo preferimos usar arreglos para implementar
algoritmos, usando listas enlazadas solo cuando sea necesario,
principalmente por dos razones.

- Sobrecarga de espacio: Dado que cada elemento requiere dos punteros
  adicionales (uno para el elemento anterior y otro para el siguiente),
  `std::list` generalmente ocupa más espacio que `std::vector`.
- Poco amigable con la caché: Como los datos no se almacenan
  continuamente, `std::list` tiene una tasa de utilización de caché más
  baja. Generalmente, `std.vector` funciona mejor.

Por otro lado, las listas enlazadas son principalmente necesarias para
árboles binarios y grafos. Las pilas y las colas a menudo se implementan
utilizando las clases `stack` y `queue` del lenguaje de programación, en
lugar de listas enlazadas.

#strong[P];: ¿Inicializar una lista `res = [0] * self.size()` da como
resultado que cada elemento de `res` haga referencia a la misma
dirección?

No.~Sin embargo, este problema surge con arreglos bidimensionales, por
ejemplo, inicializar una lista bidimensional `res = [[0]] * self.size()`
haría referencia a la misma lista `[0]` varias veces.

#strong[P];: Al eliminar un nodo, ¿es necesario romper la referencia a
su nodo sucesor?

Desde la perspectiva de las estructuras de datos y los algoritmos
(resolución de problemas), está bien no romper el enlace, siempre que la
lógica del programa sea correcta. Desde la perspectiva de las
bibliotecas estándar, romper el enlace es más seguro y lógicamente más
claro. Si el enlace no se rompe y el nodo eliminado no se recicla
correctamente, podría afectar el reciclaje de la memoria del nodo
sucesor.
= Pila y cola
<pila-y-cola>
#figure(image("es/docs/assets/covers/chapter_stack_and_queue.jpg"),
  caption: [
    Pila y cola
  ]
)

!!! abstract

```
Una pila es como gatos colocados uno encima del otro, mientras que una cola es como gatos alineados uno por uno.

Representan las relaciones lógicas de Último en Entrar, Primero en Salir (LIFO) y Primero en Entrar, Primero en Salir (FIFO), respectivamente.
```
= Pila
<pila>
Una pila es una estructura de datos lineal que sigue el principio de
Último en Entrar, Primero en Salir (LIFO).

Podemos comparar una pila con una pila de platos sobre una mesa. Para
acceder al plato inferior, primero hay que quitar los platos de arriba.
Al reemplazar los platos con varios tipos de elementos (como enteros,
caracteres, objetos, etc.), obtenemos la estructura de datos conocida
como pila.

Como se muestra en la figura a continuación, nos referimos a la parte
superior de la pila de elementos como la "cima de la pila" y a la parte
inferior como el "fondo de la pila". La operación de agregar elementos a
la cima de la pila se llama "push", y la operación de eliminar el
elemento superior se llama "pop".

#figure(image("es/docs/chapter_stack_and_queue/stack.assets/stack_operations.png"),
  caption: [
    Regla de último en entrar, primero en salir de la pila
  ]
)

== Operaciones comunes en la pila
<operaciones-comunes-en-la-pila>
Las operaciones comunes en una pila se muestran en la tabla a
continuación. Los nombres de los métodos específicos dependen del
lenguaje de programación utilizado. Aquí, usamos `push()`, `pop()` y
`peek()` como ejemplos.

Tabla ~ Eficiencia de las operaciones de pila
#figure(
  align(center)[#table(
    columns: (11.43%, 67.14%, 21.43%),
    align: (auto,auto,auto,),
    table.header([Método], [Descripción], [Complejidad temporal],),
    table.hline(),
    [`push()`], [Empujar un elemento a la pila (agregar a la
    cima)], [$O \( 1 \)$],
    [`pop()`], [Sacar el elemento superior de la pila], [$O \( 1 \)$],
    [`peek()`], [Acceder al elemento superior de la
    pila], [$O \( 1 \)$],
  )]
  , kind: table
  )

Típicamente, podemos usar directamente la clase de pila incorporada en
el lenguaje de programación. Sin embargo, algunos lenguajes pueden no
proporcionar específicamente una clase de pila. En estos casos, podemos
usar el "arreglo" o la "lista enlazada" del lenguaje como una pila e
ignorar las operaciones que no estén relacionadas con la lógica de la
pila en el programa.

\=== "Python"

````
```python title="stack.py"
# Inicializar la pila
# Python no tiene una clase de pila incorporada, por lo que se puede usar una lista como pila
stack: list[int] = []

# Empujar elementos a la pila
stack.append(1)
stack.append(3)
stack.append(2)
stack.append(5)
stack.append(4)

# Acceder al elemento superior de la pila
peek: int = stack[-1]

# Sacar un elemento de la pila
pop: int = stack.pop()

# Obtener la longitud de la pila
size: int = len(stack)

# Comprobar si la pila está vacía
is_empty: bool = len(stack) == 0
```
````

== Implementación de una pila
<implementación-de-una-pila>
Para comprender mejor cómo funciona una pila, intentemos implementar una
clase de pila nosotros mismos.

Una pila sigue el principio de Último en Entrar, Primero en Salir, lo
que significa que solo podemos agregar o eliminar elementos en la parte
superior de la pila. Sin embargo, tanto los arreglos como las listas
enlazadas permiten agregar y eliminar elementos en cualquier posición,
#strong[por lo tanto, una pila puede verse como un arreglo o una lista
enlazada restringida];. En otras palabras, podemos "proteger" ciertas
operaciones irrelevantes de un arreglo o una lista enlazada, alineando
su comportamiento externo con las características de una pila.

=== Implementación basada en una lista enlazada
<implementación-basada-en-una-lista-enlazada>
Al implementar una pila usando una lista enlazada, podemos considerar el
nodo cabeza de la lista como la cima de la pila y el nodo cola como el
fondo de la pila.

Como se muestra en la figura a continuación, para la operación push,
simplemente insertamos elementos al principio de la lista enlazada. Este
método de inserción de nodos se conoce como "inserción en la cabeza".
Para la operación pop, solo necesitamos eliminar el nodo cabeza de la
lista.

\=== "LinkedListStack"
#box(image("es/docs/chapter_stack_and_queue/stack.assets/linkedlist_stack_step1.png"))

\=== "push()"
#box(image("es/docs/chapter_stack_and_queue/stack.assets/linkedlist_stack_step2_push.png"))

\=== "pop()" #box(image("es/docs/chapter_stack_and_queue/stack.assets/linkedlist_stack_step3_pop.png"))

A continuación se muestra un ejemplo de código para implementar una pila
basada en una lista enlazada:

```src
[file]{linkedlist_stack}-[class]{linked_list_stack}-[func]{}
```

=== Implementación basada en un arreglo
<implementación-basada-en-un-arreglo>
Al implementar una pila usando un arreglo, podemos considerar el final
del arreglo como la cima de la pila. Como se muestra en la figura a
continuación, las operaciones push y pop corresponden a agregar y
eliminar elementos al final del arreglo, respectivamente, ambas con una
complejidad temporal de $O \( 1 \)$.

\=== "ArrayStack" #box(image("es/docs/chapter_stack_and_queue/stack.assets/array_stack_step1.png"))

\=== "push()" #box(image("es/docs/chapter_stack_and_queue/stack.assets/array_stack_step2_push.png"))

\=== "pop()" #box(image("es/docs/chapter_stack_and_queue/stack.assets/array_stack_step3_pop.png"))

Dado que los elementos que se van a empujar a la pila pueden aumentar
continuamente, podemos usar un arreglo dinámico, evitando así la
necesidad de manejar la expansión del arreglo nosotros mismos. Aquí hay
un ejemplo de código:

```src
[file]{array_stack}-[class]{array_stack}-[func]{}
```

== Comparación de las dos implementaciones
<comparación-de-las-dos-implementaciones>
#strong[Operaciones soportadas]

Ambas implementaciones soportan todas las operaciones definidas en una
pila. La implementación de arreglo adicionalmente soporta acceso
aleatorio, pero esto está más allá del alcance de una definición de pila
y generalmente no se usa.

#strong[Eficiencia temporal]

En la implementación basada en arreglos, tanto las operaciones push como
pop ocurren en memoria contigua preasignada, lo que tiene buena
localidad de caché y, por lo tanto, mayor eficiencia. Sin embargo, si la
operación push excede la capacidad del arreglo, se activa un mecanismo
de redimensionamiento, lo que hace que la complejidad temporal de esa
operación push sea $O \( n \)$.

En la implementación de lista enlazada, la expansión de la lista es muy
flexible y no hay problemas de disminución de la eficiencia como en la
expansión de arreglos. Sin embargo, la operación push requiere
inicializar un objeto nodo y modificar punteros, por lo que su
eficiencia es relativamente menor. Si los elementos que se empujan ya
son objetos nodo, se puede omitir el paso de inicialización, lo que
mejora la eficiencia.

Por lo tanto, cuando los elementos para las operaciones push y pop son
tipos de datos básicos como `int` o `double`, podemos sacar las
siguientes conclusiones:

- La eficiencia de la implementación de pila basada en arreglos
  disminuye durante la expansión, pero dado que la expansión es una
  operación de baja frecuencia, su eficiencia promedio es mayor.
- La implementación de pila basada en lista enlazada proporciona un
  rendimiento de eficiencia más estable.

#strong[Eficiencia espacial]

Al inicializar una lista, el sistema asigna una "capacidad inicial", que
podría exceder la necesidad real; además, el mecanismo de expansión
generalmente aumenta la capacidad por un factor específico (como
duplicar), lo que también puede exceder la necesidad real. Por lo tanto,
#strong[la pila basada en arreglos podría desperdiciar algo de espacio];.

Sin embargo, dado que los nodos de la lista enlazada requieren espacio
adicional para almacenar punteros, #strong[el espacio ocupado por los
nodos de la lista enlazada es relativamente mayor];.

En resumen, no podemos simplemente determinar qué implementación es más
eficiente en memoria. Requiere un análisis basado en circunstancias
específicas.

== Aplicaciones típicas de la pila
<aplicaciones-típicas-de-la-pila>
- #strong[Atrás y adelante en navegadores, deshacer y rehacer en
  software];. Cada vez que abrimos una nueva página web, el navegador
  empuja la página anterior a la pila, lo que nos permite volver a la
  página anterior a través de la operación de retroceso, que es
  esencialmente una operación pop. Para admitir tanto el retroceso como
  el avance, se necesitan dos pilas para trabajar juntas.
- #strong[Gestión de memoria en programas];. Cada vez que se llama a una
  función, el sistema agrega un marco de pila en la parte superior de la
  pila para registrar la información de contexto de la función. En las
  funciones recursivas, la fase de recursión descendente sigue empujando
  a la pila, mientras que la fase de retroceso ascendente sigue sacando
  de la pila.
= Cola
<cola>
Una cola es una estructura de datos lineal que sigue la regla de Primero
en Entrar, Primero en Salir (FIFO). Como su nombre indica, una cola
simula el fenómeno de hacer fila, donde los recién llegados se unen a la
cola por la parte trasera, y la persona que está al frente sale de la
cola primero.

Como se muestra en la figura a continuación, llamamos a la parte
delantera de la cola la "cabeza" y a la parte trasera la "cola". La
operación de agregar elementos a la parte trasera de la cola se denomina
"encolar", y la operación de eliminar elementos de la parte delantera se
denomina "desencolar".

#figure(image("es/docs/chapter_stack_and_queue/queue.assets/queue_operations.png"),
  caption: [
    Regla de primero en entrar, primero en salir de la cola
  ]
)

== Operaciones comunes en la cola
<operaciones-comunes-en-la-cola>
Las operaciones comunes en una cola se muestran en la tabla a
continuación. Tenga en cuenta que los nombres de los métodos pueden
variar entre los diferentes lenguajes de programación. Aquí, usamos la
misma convención de nombres que la utilizada para las pilas.

Tabla ~ Eficiencia de las operaciones de cola
#figure(
  align(center)[#table(
    columns: (17.19%, 59.38%, 23.44%),
    align: (auto,auto,auto,),
    table.header([Nombre del método], [Descripción], [Complejidad
      temporal],),
    table.hline(),
    [`push()`], [Encolar un elemento, agregarlo a la
    cola], [$O \( 1 \)$],
    [`pop()`], [Desencolar el elemento de la cabeza], [$O \( 1 \)$],
    [`peek()`], [Acceder al elemento de la cabeza], [$O \( 1 \)$],
  )]
  , kind: table
  )

Podemos usar directamente las clases de cola ya hechas en los lenguajes
de programación:

\=== "Python"

````
```python title="queue.py"
from collections import deque

# Inicializar la cola
# En Python, generalmente usamos la clase deque como cola
# Aunque queue.Queue() es una clase de cola pura, no es muy fácil de usar, por lo que no se recomienda
que: deque[int] = deque()

# Encolar elementos
que.append(1)
que.append(3)
que.append(2)
que.append(5)
que.append(4)

# Acceder al primer elemento
front: int = que[0]

# Desencolar un elemento
pop: int = que.popleft()

# Obtener la longitud de la cola
size: int = len(que)

# Comprobar si la cola está vacía
is_empty: bool = len(que) == 0
```
````

== Implementación de una cola
<implementación-de-una-cola>
Para implementar una cola, necesitamos una estructura de datos que
permita agregar elementos en un extremo y eliminarlos en el otro. Tanto
las listas enlazadas como los arreglos cumplen con este requisito.

=== Implementación basada en una lista enlazada
<implementación-basada-en-una-lista-enlazada>
Como se muestra en la figura a continuación, podemos considerar el "nodo
cabeza" y el "nodo cola" de una lista enlazada como el "frente" y la
"parte trasera" de la cola, respectivamente. Se estipula que los nodos
solo se pueden agregar en la parte trasera y eliminar en el frente.

\=== "LinkedListQueue"
#box(image("es/docs/chapter_stack_and_queue/queue.assets/linkedlist_queue_step1.png"))

\=== "push()"
#box(image("es/docs/chapter_stack_and_queue/queue.assets/linkedlist_queue_step2_push.png"))

\=== "pop()" #box(image("es/docs/chapter_stack_and_queue/queue.assets/linkedlist_queue_step3_pop.png"))

A continuación se muestra el código para implementar una cola usando una
lista enlazada:

```src
[file]{linkedlist_queue}-[class]{linked_list_queue}-[func]{}
```

=== Implementación basada en un arreglo
<implementación-basada-en-un-arreglo>
Eliminar el primer elemento de un arreglo tiene una complejidad temporal
de $O \( n \)$, lo que haría que la operación de desencolar fuera
ineficiente. Sin embargo, este problema se puede evitar inteligentemente
de la siguiente manera.

Usamos una variable `front` para indicar el índice del elemento frontal
y mantenemos una variable `size` para registrar la longitud de la cola.
Definimos `rear = front + size`, que apunta a la posición inmediatamente
posterior al elemento de la cola.

Con este diseño, #strong[el intervalo efectivo de elementos en el
arreglo es `[front, rear - 1]`];. Los métodos de implementación para
varias operaciones se muestran en la figura a continuación.

- Operación de encolar: Asigne el elemento de entrada al índice `rear` y
  aumente `size` en 1.
- Operación de desencolar: Simplemente aumente `front` en 1 y disminuya
  `size` en 1.

Ambas operaciones de encolar y desencolar solo requieren una única
operación, cada una con una complejidad temporal de $O \( 1 \)$.

\=== "ArrayQueue" #box(image("es/docs/chapter_stack_and_queue/queue.assets/array_queue_step1.png"))

\=== "push()" #box(image("es/docs/chapter_stack_and_queue/queue.assets/array_queue_step2_push.png"))

\=== "pop()" #box(image("es/docs/chapter_stack_and_queue/queue.assets/array_queue_step3_pop.png"))

Podría notar un problema: a medida que las operaciones de encolar y
desencolar se realizan continuamente, tanto `front` como `rear` se
mueven hacia la derecha y #strong[eventualmente llegarán al final del
arreglo y no podrán moverse más];. Para resolver esto, podemos tratar el
arreglo como un "arreglo circular" donde se conecta el final del arreglo
de nuevo a su principio.

En un arreglo circular, `front` o `rear` deben volver al principio del
arreglo al llegar al final. Este patrón cíclico se puede lograr con una
"operación de módulo" como se muestra en el código a continuación:

```src
[file]{array_queue}-[class]{array_queue}-[func]{}
```

La implementación anterior de la cola todavía tiene sus limitaciones: su
longitud es fija. Sin embargo, este problema no es difícil de resolver.
Podemos reemplazar el arreglo con un arreglo dinámico que pueda
expandirse si es necesario. Los lectores interesados pueden intentar
implementarlo ellos mismos.

La comparación de las dos implementaciones es consistente con la de la
pila y no se repite aquí.

== Aplicaciones típicas de la cola
<aplicaciones-típicas-de-la-cola>
- #strong[Pedidos de Amazon];: Después de que los compradores realizan
  pedidos, estos pedidos se unen a una cola, y el sistema los procesa en
  orden. Durante eventos como el Día del Soltero, se genera una gran
  cantidad de pedidos en poco tiempo, lo que convierte la alta
  concurrencia en un desafío clave para los ingenieros.
- #strong[Varias listas de tareas pendientes];: Cualquier escenario que
  requiera una funcionalidad de "primero en llegar, primero en ser
  atendido", como la cola de tareas de una impresora o la cola de
  entrega de alimentos de un restaurante, puede mantener eficazmente el
  orden de procesamiento con una cola.
= Cola de doble extremo
<cola-de-doble-extremo>
En una cola, solo podemos eliminar elementos de la cabeza o agregar
elementos a la cola. Como se muestra en la figura a continuación, una
cola de doble extremo (deque) ofrece más flexibilidad, permitiendo la
adición o eliminación de elementos tanto en la cabeza como en la cola.

#figure(image("es/docs/chapter_stack_and_queue/deque.assets/deque_operations.png"),
  caption: [
    Operaciones en cola de doble extremo
  ]
)

== Operaciones comunes en cola de doble extremo
<operaciones-comunes-en-cola-de-doble-extremo>
Las operaciones comunes en una cola de doble extremo se enumeran a
continuación, y los nombres de los métodos específicos dependen del
lenguaje de programación utilizado.

Tabla ~ Eficiencia de las operaciones de cola de doble extremo
#figure(
  align(center)[#table(
    columns: (24.07%, 48.15%, 27.78%),
    align: (auto,auto,auto,),
    table.header([Nombre del método], [Descripción], [Complejidad
      temporal],),
    table.hline(),
    [`pushFirst()`], [Agregar un elemento a la cabeza], [$O \( 1 \)$],
    [`pushLast()`], [Agregar un elemento a la cola], [$O \( 1 \)$],
    [`popFirst()`], [Eliminar el primer elemento], [$O \( 1 \)$],
    [`popLast()`], [Eliminar el último elemento], [$O \( 1 \)$],
    [`peekFirst()`], [Acceder al primer elemento], [$O \( 1 \)$],
    [`peekLast()`], [Acceder al último elemento], [$O \( 1 \)$],
  )]
  , kind: table
  )

De manera similar, podemos usar directamente las clases de cola de doble
extremo implementadas en los lenguajes de programación:

\=== "Python"

````
```python title="deque.py"
from collections import deque

# Inicializar la deque
deq: deque[int] = deque()

# Encolar elementos
deq.append(2)      # Agregar a la cola
deq.append(5)
deq.append(4)
deq.appendleft(3)  # Agregar a la cabeza
deq.appendleft(1)

# Acceder a elementos
front: int = deq[0]  # El primer elemento
rear: int = deq[-1]  # El último elemento

# Desencolar elementos
pop_front: int = deq.popleft()  # El primer elemento desencolado
pop_rear: int = deq.pop()       # El último elemento desencolado

# Obtener la longitud de la deque
size: int = len(deq)

# Comprobar si la deque está vacía
is_empty: bool = len(deq) == 0
```
````

== Implementación de una cola de doble extremo \*
<implementación-de-una-cola-de-doble-extremo>
La implementación de una cola de doble extremo es similar a la de una
cola regular, puede basarse en una lista enlazada o en un arreglo como
estructura de datos subyacente.

=== Implementación basada en lista doblemente enlazada
<implementación-basada-en-lista-doblemente-enlazada>
Recordemos de la sección anterior que usamos una lista enlazada simple
regular para implementar una cola, ya que convenientemente permite
eliminar desde la cabeza (correspondiente a la operación de desencolar)
y agregar nuevos elementos después de la cola (correspondiente a la
operación de encolar).

Para una cola de doble extremo, tanto la cabeza como la cola pueden
realizar operaciones de encolar y desencolar. En otras palabras, una
cola de doble extremo necesita implementar operaciones en la dirección
opuesta también. Para esto, usamos una "lista doblemente enlazada" como
estructura de datos subyacente de la cola de doble extremo.

Como se muestra en la figura a continuación, tratamos los nodos cabeza y
cola de la lista doblemente enlazada como el frente y la parte trasera
de la cola de doble extremo, respectivamente, e implementamos la
funcionalidad para agregar y eliminar nodos en ambos extremos.

\=== "LinkedListDeque"
#box(image("es/docs/chapter_stack_and_queue/deque.assets/linkedlist_deque_step1.png"))

\=== "pushLast()"
#box(image("es/docs/chapter_stack_and_queue/deque.assets/linkedlist_deque_step2_push_last.png"))

\=== "pushFirst()"
#box(image("es/docs/chapter_stack_and_queue/deque.assets/linkedlist_deque_step3_push_first.png"))

\=== "popLast()"
#box(image("es/docs/chapter_stack_and_queue/deque.assets/linkedlist_deque_step4_pop_last.png"))

\=== "popFirst()"
#box(image("es/docs/chapter_stack_and_queue/deque.assets/linkedlist_deque_step5_pop_first.png"))

El código de implementación es el siguiente:

```src
[file]{linkedlist_deque}-[class]{linked_list_deque}-[func]{}
```

=== Implementación basada en arreglo
<implementación-basada-en-arreglo>
Como se muestra en la figura a continuación, de manera similar a la
implementación de una cola con un arreglo, también podemos usar un
arreglo circular para implementar una cola de doble extremo.

\=== "ArrayDeque" #box(image("es/docs/chapter_stack_and_queue/deque.assets/array_deque_step1.png"))

\=== "pushLast()"
#box(image("es/docs/chapter_stack_and_queue/deque.assets/array_deque_step2_push_last.png"))

\=== "pushFirst()"
#box(image("es/docs/chapter_stack_and_queue/deque.assets/array_deque_step3_push_first.png"))

\=== "popLast()"
#box(image("es/docs/chapter_stack_and_queue/deque.assets/array_deque_step4_pop_last.png"))

\=== "popFirst()"
#box(image("es/docs/chapter_stack_and_queue/deque.assets/array_deque_step5_pop_first.png"))

La implementación solo necesita agregar métodos para "encolar al frente"
y "desencolar por la parte trasera":

```src
[file]{array_deque}-[class]{array_deque}-[func]{}
```

== Aplicaciones de la cola de doble extremo
<aplicaciones-de-la-cola-de-doble-extremo>
La cola de doble extremo combina la lógica de pilas y colas, #strong[por
lo tanto, puede implementar todos sus casos de uso respectivos al tiempo
que ofrece una mayor flexibilidad];.

Sabemos que la función "deshacer" del software se implementa típicamente
usando una pila: el sistema `empuja` cada operación de cambio a la pila
y luego `saca` para implementar el deshacer. Sin embargo, considerando
las limitaciones de los recursos del sistema, el software a menudo
restringe el número de pasos de deshacer (por ejemplo, solo permite los
últimos 50 pasos). Cuando la longitud de la pila excede los 50, el
software necesita realizar una operación de eliminación en la parte
inferior de la pila (el frente de la cola). #strong[Pero una pila
regular no puede realizar esta función, donde una cola de doble extremo
se vuelve necesaria];. Tenga en cuenta que la lógica central de
"deshacer" todavía sigue el principio de Último en Entrar, Primero en
Salir de una pila, pero una cola de doble extremo puede implementar de
manera más flexible alguna lógica adicional.
= Resumen
<resumen>
=== Revisión clave
<revisión-clave>
- La pila es una estructura de datos que sigue el principio de Último en
  Entrar, Primero en Salir (LIFO) y se puede implementar utilizando
  arreglos o listas enlazadas.
- En términos de eficiencia temporal, la implementación de la pila
  basada en arreglos tiene una eficiencia promedio más alta. Sin
  embargo, durante la expansión, la complejidad temporal para una sola
  operación de inserción puede degradarse a $O \( n \)$. En contraste,
  la implementación de la pila basada en listas enlazadas ofrece una
  eficiencia más estable.
- Con respecto a la eficiencia espacial, la implementación de la pila
  basada en arreglos puede conducir a cierto grado de desperdicio de
  espacio. Sin embargo, es importante tener en cuenta que el espacio de
  memoria ocupado por los nodos en una lista enlazada es generalmente
  mayor que el de los elementos en un arreglo.
- Una cola es una estructura de datos que sigue el principio de Primero
  en Entrar, Primero en Salir (FIFO), y también se puede implementar
  utilizando arreglos o listas enlazadas. Las conclusiones con respecto
  a la eficiencia temporal y espacial para las colas son similares a las
  de las pilas.
- Una cola de doble extremo (deque) es un tipo de cola más flexible que
  permite agregar y eliminar elementos en ambos extremos.

=== Preguntas y respuestas
<preguntas-y-respuestas>
#strong[P];: ¿La funcionalidad de avance y retroceso del navegador se
implementa con una lista doblemente enlazada?

La navegación de avance y retroceso de un navegador es esencialmente una
manifestación del concepto de "pila". Cuando un usuario visita una nueva
página, la página se agrega a la parte superior de la pila; cuando hace
clic en el botón de retroceso, la página se saca de la parte superior de
la pila. Una cola de doble extremo (deque) puede implementar
convenientemente algunas operaciones adicionales, como se menciona en la
sección "Cola de doble extremo".

#strong[P];: Después de sacar de una pila, ¿es necesario liberar la
memoria del nodo sacado?

Si el nodo sacado se seguirá utilizando más tarde, no es necesario
liberar su memoria. En lenguajes como Java y Python que tienen
recolección de basura automática, no es necesaria la liberación manual
de memoria; en C y C++, se requiere la liberación manual de memoria.

#strong[P];: Una cola de doble extremo parece dos pilas unidas. ¿Cuáles
son sus usos?

Una cola de doble extremo, que es una combinación de una pila y una cola
o dos pilas unidas, exhibe la lógica tanto de la pila como de la cola.
Por lo tanto, puede implementar todas las aplicaciones de pilas y colas
al tiempo que ofrece mayor flexibilidad.

#strong[P];: ¿Cómo se implementan exactamente las funciones de deshacer
y rehacer?

Las operaciones de deshacer y rehacer se implementan utilizando dos
pilas: Pila `A` para deshacer y Pila `B` para rehacer.

+ Cada vez que un usuario realiza una operación, se empuja a la Pila
  `A`, y la Pila `B` se vacía.
+ Cuando el usuario ejecuta un "deshacer", la operación más reciente se
  saca de la Pila `A` y se empuja a la Pila `B`.
+ Cuando el usuario ejecuta un "rehacer", la operación más reciente se
  saca de la Pila `B` y se empuja de nuevo a la Pila `A`.
= Tabla hash
<tabla-hash>
#figure(image("es/docs/assets/covers/chapter_hashing.jpg"),
  caption: [
    Tabla hash
  ]
)

!!! abstract

```
En el mundo de la computación, una tabla hash es similar a un bibliotecario inteligente.

Sabe cómo calcular números de índice, lo que permite una rápida recuperación del libro deseado.
```
= Tabla hash
<tabla-hash>
Una tabla hash, también conocida como mapa hash, es una estructura de
datos que establece un mapeo entre claves y valores, lo que permite una
recuperación eficiente de elementos. Específicamente, cuando
introducimos una `clave` en la tabla hash, podemos recuperar el `valor`
correspondiente con una complejidad temporal de $O \( 1 \)$.

Como se muestra en la figura a continuación, dados $n$ estudiantes, cada
estudiante tiene dos campos de datos: "Nombre" y "ID de estudiante". Si
queremos implementar una función de consulta que tome un ID de
estudiante como entrada y devuelva el nombre correspondiente, podemos
usar la tabla hash que se muestra en la figura a continuación.

#figure(image("es/docs/chapter_hashing/hash_map.assets/hash_table_lookup.png"),
  caption: [
    Representación abstracta de una tabla hash
  ]
)

Además de las tablas hash, los arreglos y las listas enlazadas también
se pueden usar para implementar la funcionalidad de consulta, pero la
complejidad temporal es diferente. Su eficiencia se compara en la tabla
a continuación:

- #strong[Insertar un elemento];: Simplemente agregue el elemento al
  final del arreglo (o lista enlazada). La complejidad temporal de esta
  operación es $O \( 1 \)$.
- #strong[Buscar un elemento];: Como el arreglo (o lista enlazada) no
  está ordenado, buscar un elemento requiere recorrer todos los
  elementos. La complejidad temporal de esta operación es $O \( n \)$.
- #strong[Eliminar un elemento];: Para eliminar un elemento, primero
  debemos localizarlo. Luego, lo eliminamos del arreglo (o lista
  enlazada). La complejidad temporal de esta operación es $O \( n \)$.

Tabla ~ Comparación de la eficiencia temporal para operaciones comunes
#figure(
  align(center)[#table(
    columns: 4,
    align: (auto,auto,auto,auto,),
    table.header([], [Arreglo], [Lista enlazada], [Tabla hash],),
    table.hline(),
    [Buscar elementos], [$O \( n \)$], [$O \( n \)$], [$O \( 1 \)$],
    [Insertar elementos], [$O \( 1 \)$], [$O \( 1 \)$], [$O \( 1 \)$],
    [Eliminar elementos], [$O \( n \)$], [$O \( n \)$], [$O \( 1 \)$],
  )]
  , kind: table
  )

Como se observa, #strong[la complejidad temporal para las operaciones
(inserción, eliminación, búsqueda y modificación) en una tabla hash es
$O \( 1 \)$];, lo cual es altamente eficiente.

== Operaciones comunes de la tabla hash
<operaciones-comunes-de-la-tabla-hash>
Las operaciones comunes de una tabla hash incluyen: inicialización,
consulta, adición de pares clave-valor y eliminación de pares
clave-valor. Aquí hay un ejemplo de código:

\=== "Python"

````
```python title="hash_map.py"
# Inicializar tabla hash
hmap: dict = {}

# Operación de adición
# Agregar par clave-valor (clave, valor) a la tabla hash
hmap[12836] = "Xiao Ha"
hmap[15937] = "Xiao Luo"
hmap[16750] = "Xiao Suan"
hmap[13276] = "Xiao Fa"
hmap[10583] = "Xiao Ya"

# Operación de consulta
# Ingresar clave en la tabla hash, obtener valor
name: str = hmap[15937]

# Operación de eliminación
# Eliminar par clave-valor (clave, valor) de la tabla hash
hmap.pop(10583)
```
````

Hay tres formas comunes de recorrer una tabla hash: recorrer pares
clave-valor, recorrer claves y recorrer valores. Aquí hay un ejemplo de
código:

\=== "Python"

````
```python title="hash_map.py"
# Recorrer tabla hash
# Recorrer pares clave-valor clave->valor
for key, value in hmap.items():
    print(key, "->", value)
# Recorrer solo claves
for key in hmap.keys():
    print(key)
# Recorrer solo valores
for value in hmap.values():
    print(value)
```
````

== Implementación simple de una tabla hash
<implementación-simple-de-una-tabla-hash>
Primero, consideremos el caso más simple: #strong[implementar una tabla
hash usando solo un arreglo];. En la tabla hash, cada espacio vacío en
el arreglo se llama cubo, y cada cubo puede almacenar un par
clave-valor. Por lo tanto, la operación de consulta implica encontrar el
cubo correspondiente a la `clave` y recuperar el `valor` de él.

Entonces, ¿cómo localizamos el cubo correspondiente basándonos en la
`clave`? Esto se logra a través de una función hash. El papel de la
función hash es mapear un espacio de entrada más grande a un espacio de
salida más pequeño. En una tabla hash, el espacio de entrada consiste en
todas las claves, y el espacio de salida consiste en todos los cubos
(índices de arreglo). En otras palabras, dada una `clave`,
#strong[podemos usar la función hash para determinar la ubicación de
almacenamiento del par clave-valor correspondiente en el arreglo];.

Con una `clave` dada, el cálculo de la función hash consta de dos pasos:

+ Calcular el valor hash usando un cierto algoritmo hash `hash()`.
+ Tomar el módulo del valor hash con el número de cubos (longitud del
  arreglo) `capacity` para obtener el `índice` del arreglo
  correspondiente a la clave.

```shell
index = hash(key) % capacity
```

Posteriormente, podemos usar el `índice` para acceder al cubo
correspondiente en la tabla hash y así recuperar el `valor`.

Supongamos que la longitud del arreglo es `capacity = 100`, y el
algoritmo hash se define como `hash(key) = key`. Por lo tanto, la
función hash se puede expresar como `key % 100`. La siguiente figura
ilustra el principio de funcionamiento de la función hash usando `key`
como ID de estudiante y `value` como nombre.

#figure(image("es/docs/chapter_hashing/hash_map.assets/hash_function.png"),
  caption: [
    Principio de funcionamiento de la función hash
  ]
)

El siguiente código implementa una tabla hash simple. Aquí, encapsulamos
`key` y `value` en una clase `Pair` para representar el par clave-valor.

```src
[file]{array_hash_map}-[class]{array_hash_map}-[func]{}
```

== Colisión hash y redimensionamiento
<colisión-hash-y-redimensionamiento>
Esencialmente, el papel de la función hash es mapear todo el espacio de
entrada de todas las claves al espacio de salida de todos los índices de
arreglo. Sin embargo, el espacio de entrada suele ser mucho mayor que el
espacio de salida. Por lo tanto, #strong[teóricamente, siempre habrá
casos en los que "múltiples entradas correspondan a la misma salida"];.

En el ejemplo anterior, con la función hash dada, cuando los dos últimos
dígitos de la `clave` de entrada son los mismos, la función hash produce
la misma salida. Por ejemplo, al consultar a dos estudiantes con ID de
estudiante 12836 y 20336, encontramos:

```shell
12836 % 100 = 36
20336 % 100 = 36
```

Como se muestra en la figura a continuación, ambos ID de estudiante
apuntan al mismo nombre, lo cual es obviamente incorrecto. Esta
situación en la que múltiples entradas corresponden a la misma salida se
denomina colisión hash.

#figure(image("es/docs/chapter_hashing/hash_map.assets/hash_collision.png"),
  caption: [
    Ejemplo de colisión hash
  ]
)

Es fácil entender que a medida que aumenta la capacidad $n$ de la tabla
hash, la probabilidad de que varias claves se asignen al mismo cubo
disminuye, lo que resulta en menos colisiones. Por lo tanto,
#strong[podemos reducir las colisiones hash redimensionando la tabla
hash];.

Como se muestra en la figura a continuación, antes de redimensionar, los
pares clave-valor `(136, A)` y `(236, D)` colisionan. Sin embargo,
después de redimensionar, la colisión se resuelve.

#figure(image("es/docs/chapter_hashing/hash_map.assets/hash_table_reshash.png"),
  caption: [
    Redimensionamiento de la tabla hash
  ]
)

Similar a la expansión de arreglos, redimensionar una tabla hash
requiere migrar todos los pares clave-valor de la tabla hash original a
la nueva, lo que consume mucho tiempo. Además, dado que la `capacidad`
de la tabla hash cambia, necesitamos recalcular las posiciones de
almacenamiento de todos los pares clave-valor usando la función hash, lo
que aumenta aún más la sobrecarga computacional del proceso de
redimensionamiento. Por lo tanto, los lenguajes de programación a menudo
asignan una capacidad suficientemente grande para la tabla hash para
evitar redimensionamientos frecuentes.

El factor de carga es un concepto importante en las tablas hash. Se
define como la relación entre el número de elementos en la tabla hash y
el número de cubos. Se utiliza para medir la gravedad de las colisiones
hash y #strong[a menudo sirve como un disparador para el
redimensionamiento de la tabla hash];. Por ejemplo, en Java, cuando el
factor de carga excede $0.75$, el sistema redimensionará la tabla hash
al doble de su tamaño original.
= Colisión hash
<colisión-hash>
La sección anterior mencionaba que, #strong[en la mayoría de los casos,
el espacio de entrada de una función hash es mucho mayor que el espacio
de salida];, por lo que, teóricamente, las colisiones hash son
inevitables. Por ejemplo, si el espacio de entrada son todos los enteros
y el espacio de salida es el tamaño de la capacidad del arreglo,
entonces inevitablemente varios enteros se asignarán al mismo índice de
cubo.

Las colisiones hash pueden conducir a resultados de consulta
incorrectos, lo que afecta gravemente la usabilidad de la tabla hash.
Para abordar este problema, cada vez que ocurre una colisión hash,
realizamos un redimensionamiento de la tabla hash hasta que la colisión
desaparece. Este enfoque es bastante simple, directo y funciona bien.
Sin embargo, parece ser bastante ineficiente, ya que la expansión de la
tabla implica una gran cantidad de migración de datos, así como el
recálculo del código hash, que son costosos. Para mejorar la eficiencia,
podemos adoptar las siguientes estrategias:

+ Mejorar la estructura de datos de la tabla hash de tal manera que
  #strong[la localización del elemento objetivo siga funcionando bien en
  caso de una colisión hash];.
+ La expansión es el último recurso antes de que sea necesaria, cuando
  se observan colisiones graves.

Existen principalmente dos métodos para mejorar la estructura de las
tablas hash: "Encadenamiento separado" y "Direccionamiento abierto".

== Encadenamiento separado
<encadenamiento-separado>
En la tabla hash original, cada cubo puede almacenar solo un par
clave-valor. El encadenamiento separado convierte un solo elemento en
una lista enlazada, tratando los pares clave-valor como nodos de lista,
almacenando todos los pares clave-valor en colisión en la misma lista
enlazada. La figura a continuación muestra un ejemplo de una tabla hash
con encadenamiento separado.

#figure(image("es/docs/chapter_hashing/hash_collision.assets/hash_table_chaining.png"),
  caption: [
    Tabla hash de encadenamiento separado
  ]
)

Las operaciones de una tabla hash implementada con encadenamiento
separado han cambiado de la siguiente manera:

- #strong[Consulta de elementos];: Introduzca `key`, obtenga el índice
  del cubo a través de la función hash, luego acceda al nodo cabeza de
  la lista enlazada. Recorra la lista enlazada y compare la clave para
  encontrar el par clave-valor objetivo.
- #strong[Adición de elementos];: Acceda al nodo cabeza de la lista
  enlazada a través de la función hash, luego agregue el nodo (par
  clave-valor) a la lista.
- #strong[Eliminación de elementos];: Acceda a la cabeza de la lista
  enlazada basándose en el resultado de la función hash, luego recorra
  la lista enlazada para encontrar el nodo objetivo y eliminarlo.

El encadenamiento separado tiene las siguientes limitaciones:

- #strong[Mayor uso de espacio];: La lista enlazada contiene punteros de
  nodo, que consumen más espacio de memoria que los arreglos.
- #strong[Menor eficiencia de consulta];: Esto se debe a que se requiere
  un recorrido lineal de la lista enlazada para encontrar el elemento
  correspondiente.

El código a continuación proporciona una implementación simple de una
tabla hash de encadenamiento separado, con dos cosas a tener en cuenta:

- Se utilizan listas (arreglos dinámicos) en lugar de listas enlazadas
  para simplificar. En esta configuración, la tabla hash (arreglo)
  contiene múltiples cubos, cada uno de los cuales es una lista.
- Esta implementación incluye un método de redimensionamiento de la
  tabla hash. Cuando el factor de carga excede $2 / 3$, expandimos la
  tabla hash al doble de su tamaño original.

```src
[file]{hash_map_chaining}-[class]{hash_map_chaining}-[func]{}
```

Cabe señalar que cuando la lista enlazada es muy larga, la eficiencia de
consulta $O \( n \)$ es deficiente. #strong[En este caso, la lista se
puede convertir a un "árbol AVL" o "árbol rojo-negro"] para optimizar la
complejidad temporal de la operación de consulta a $O \( log n \)$.

== Direccionamiento abierto
<direccionamiento-abierto>
El direccionamiento abierto no introduce estructuras de datos
adicionales, sino que maneja las colisiones hash a través de "múltiples
sondeos". Los métodos de sondeo incluyen principalmente el sondeo
lineal, el sondeo cuadrático y el doble hash.

Usemos el sondeo lineal como ejemplo para introducir el mecanismo de las
tablas hash de direccionamiento abierto.

=== Sondeo lineal
<sondeo-lineal>
El sondeo lineal utiliza una búsqueda lineal de paso fijo para el
sondeo, a diferencia de las tablas hash ordinarias.

- #strong[Inserción de elementos];: Calcule el índice del cubo usando la
  función hash. Si el cubo ya contiene un elemento, recorra linealmente
  hacia adelante desde la posición de conflicto (generalmente con un
  tamaño de paso de $1$) hasta que se encuentre un cubo vacío, luego
  inserte el elemento.
- #strong[Búsqueda de elementos];: Si se encuentra una colisión hash,
  use el mismo tamaño de paso para recorrer linealmente hacia adelante
  hasta que se encuentre el elemento correspondiente y devuelva `value`;
  si se encuentra un cubo vacío, significa que el elemento objetivo no
  está en la tabla hash, así que devuelva `None`.

La figura a continuación muestra la distribución de pares clave-valor en
una tabla hash de direccionamiento abierto (sondeo lineal). Según esta
función hash, las claves con los mismos dos últimos dígitos se asignarán
al mismo cubo. Mediante el sondeo lineal, se almacenan secuencialmente
en ese cubo y en los cubos debajo de él.

#figure(image("es/docs/chapter_hashing/hash_collision.assets/hash_table_linear_probing.png"),
  caption: [
    Distribución de pares clave-valor en la tabla hash de
    direccionamiento abierto (sondeo lineal)
  ]
)

Sin embargo, #strong[el sondeo lineal tiende a crear "agrupamiento"];.
Específicamente, cuanto más largas sean las posiciones continuamente
ocupadas en el arreglo, mayor será la probabilidad de que ocurran
colisiones hash en estas posiciones continuas, lo que promoverá aún más
el crecimiento del agrupamiento en esa posición, formando un círculo
vicioso y, en última instancia, conduciendo a una degradación de la
eficiencia de las operaciones de inserción, eliminación, consulta y
actualización.

Es importante tener en cuenta que #strong[no podemos eliminar
directamente elementos en una tabla hash de direccionamiento abierto];.
La eliminación de un elemento crea un cubo vacío `None` en el arreglo.
Al buscar elementos, si el sondeo lineal encuentra este cubo vacío,
regresará, lo que hará que los elementos debajo de este cubo sean
inaccesibles. El programa puede asumir incorrectamente que estos
elementos no existen, como se muestra en la figura a continuación.

#figure(image("es/docs/chapter_hashing/hash_collision.assets/hash_table_open_addressing_deletion.png"),
  caption: [
    Problemas de consulta causados por la eliminación en el
    direccionamiento abierto
  ]
)

Para resolver este problema, podemos adoptar el mecanismo de eliminación
perezosa: en lugar de eliminar directamente elementos de la tabla hash,
#strong[use una constante `TOMBSTONE` para marcar el cubo];. En este
mecanismo, tanto `None` como `TOMBSTONE` representan cubos vacíos y
pueden contener pares clave-valor. Sin embargo, cuando el sondeo lineal
encuentra `TOMBSTONE`, debe continuar recorriendo, ya que aún puede
haber pares clave-valor debajo de él.

Sin embargo, #strong[la eliminación perezosa puede acelerar la
degradación del rendimiento de la tabla hash];. Cada operación de
eliminación produce una marca de eliminación, y a medida que aumenta
`TOMBSTONE`, el tiempo de búsqueda también aumentará porque el sondeo
lineal puede necesitar omitir múltiples `TOMBSTONE` para encontrar el
elemento objetivo.

Para abordar esto, considere registrar el índice del primer `TOMBSTONE`
encontrado durante el sondeo lineal e intercambiar las posiciones del
elemento objetivo buscado con ese `TOMBSTONE`. El beneficio de hacer
esto es que cada vez que se consulta o agrega un elemento, el elemento
se moverá a un cubo más cercano a su posición ideal (el punto de partida
del sondeo), optimizando así la eficiencia de la consulta.

El código a continuación implementa una tabla hash de direccionamiento
abierto (sondeo lineal) con eliminación perezosa. Para hacer un mejor
uso del espacio de la tabla hash, tratamos la tabla hash como un
"arreglo circular". Al ir más allá del final del arreglo, volvemos al
principio y continuamos recorriendo.

```src
[file]{hash_map_open_addressing}-[class]{hash_map_open_addressing}-[func]{}
```

=== Sondeo cuadrático
<sondeo-cuadrático>
El sondeo cuadrático es similar al sondeo lineal y es una de las
estrategias comunes de direccionamiento abierto. Cuando ocurre una
colisión, el sondeo cuadrático no simplemente salta un número fijo de
pasos, sino que salta un número de pasos igual al "cuadrado del número
de sondeos", es decir, $1 \, 4 \, 9 \, dots.h$ pasos.

El sondeo cuadrático tiene las siguientes ventajas:

- El sondeo cuadrático intenta aliviar el efecto de agrupamiento del
  sondeo lineal saltando la distancia del cuadrado del número de
  sondeos.
- El sondeo cuadrático salta distancias mayores para encontrar
  posiciones vacías, lo que ayuda a distribuir los datos de manera más
  uniforme.

Sin embargo, el sondeo cuadrático no es perfecto:

- Todavía existe el agrupamiento, es decir, algunas posiciones tienen
  más probabilidades de ser ocupadas que otras.
- Debido al crecimiento de los cuadrados, el sondeo cuadrático puede no
  sondear toda la tabla hash, lo que significa que incluso si hay cubos
  vacíos en la tabla hash, el sondeo cuadrático puede no ser capaz de
  acceder a ellos.

=== Doble hash
<doble-hash>
Como su nombre indica, el método de doble hash utiliza múltiples
funciones hash $f_1 \( x \)$, $f_2 \( x \)$, $f_3 \( x \)$, $dots.h$
para el sondeo.

- #strong[Inserción de elementos];: Si la función hash $f_1 \( x \)$
  encuentra un conflicto, intenta $f_2 \( x \)$, y así sucesivamente,
  hasta que se encuentra una posición vacía y se inserta el elemento.
- #strong[Búsqueda de elementos];: Busque en el mismo orden de funciones
  hash hasta que se encuentre el elemento objetivo y se devuelva; si se
  encuentra una posición vacía o se han probado todas las funciones
  hash, indica que el elemento no está en la tabla hash, entonces
  devuelva `None`.

En comparación con el sondeo lineal, el método de doble hash es menos
propenso al agrupamiento, pero múltiples funciones hash introducen una
sobrecarga computacional adicional.

!!! tip

```
Tenga en cuenta que las tablas hash de direccionamiento abierto (sondeo lineal, sondeo cuadrático y doble hash) tienen el problema de "no poder eliminar elementos directamente".
```

== Elección de lenguajes de programación
<elección-de-lenguajes-de-programación>
Los diferentes lenguajes de programación adoptan diferentes estrategias
de implementación de tablas hash. Aquí hay algunos ejemplos:

- Python utiliza direccionamiento abierto. El diccionario `dict` utiliza
  números pseudoaleatorios para el sondeo.
- Java utiliza encadenamiento separado. Desde JDK 1.8, cuando la
  longitud del arreglo en `HashMap` alcanza 64 y la longitud de una
  lista enlazada alcanza 8, la lista enlazada se convierte en un árbol
  rojo-negro para mejorar el rendimiento de búsqueda.
- Go utiliza encadenamiento separado. Go estipula que cada cubo puede
  almacenar hasta 8 pares clave-valor, y si se excede la capacidad, se
  vincula un cubo de desbordamiento; cuando hay demasiados cubos de
  desbordamiento, se realiza una operación especial de
  redimensionamiento de igual capacidad para garantizar el rendimiento.
= Algoritmos hash
<algoritmos-hash>
Las dos secciones anteriores introdujeron el principio de funcionamiento
de las tablas hash y los métodos para manejar las colisiones hash. Sin
embargo, tanto el direccionamiento abierto como el encadenamiento
#strong[solo pueden garantizar que la tabla hash funcione normalmente
cuando ocurren colisiones, pero no pueden reducir la frecuencia de las
colisiones hash];.

Si las colisiones hash ocurren con demasiada frecuencia, el rendimiento
de la tabla hash se deteriorará drásticamente. Como se muestra en la
figura a continuación, para una tabla hash de encadenamiento, en el caso
ideal, los pares clave-valor se distribuyen uniformemente entre los
cubos, logrando una eficiencia de consulta óptima; en el peor de los
casos, todos los pares clave-valor se almacenan en el mismo cubo,
degradando la complejidad temporal a $O \( n \)$.

#figure(image("es/docs/chapter_hashing/hash_algorithm.assets/hash_collision_best_worst_condition.png"),
  caption: [
    Casos ideales y peores de colisiones hash
  ]
)

#strong[La distribución de los pares clave-valor está determinada por la
función hash];. Recordando los pasos para calcular una función hash,
primero se calcula el valor hash y luego se le aplica el módulo de la
longitud del arreglo:

```shell
index = hash(key) % capacity
```

Observando la fórmula anterior, cuando la capacidad de la tabla hash
`capacity` es fija, #strong[el algoritmo hash `hash()` determina el
valor de salida];, determinando así la distribución de los pares
clave-valor en la tabla hash.

Esto significa que, para reducir la probabilidad de colisiones hash,
debemos centrarnos en el diseño del algoritmo hash `hash()`.

== Objetivos de los algoritmos hash
<objetivos-de-los-algoritmos-hash>
Para lograr una estructura de datos de tabla hash "rápida y estable",
los algoritmos hash deben tener las siguientes características:

- #strong[Determinismo];: Para la misma entrada, el algoritmo hash
  siempre debe producir la misma salida. Solo así la tabla hash puede
  ser confiable.
- #strong[Alta eficiencia];: El proceso de cálculo del valor hash debe
  ser lo suficientemente rápido. Cuanto menor sea la sobrecarga
  computacional, más práctica será la tabla hash.
- #strong[Distribución uniforme];: El algoritmo hash debe garantizar que
  los pares clave-valor se distribuyan uniformemente en la tabla hash.
  Cuanto más uniforme sea la distribución, menor será la probabilidad de
  colisiones hash.

De hecho, los algoritmos hash no solo se utilizan para implementar
tablas hash, sino que también se aplican ampliamente en otros campos.

- #strong[Almacenamiento de contraseñas];: Para proteger la seguridad de
  las contraseñas de los usuarios, los sistemas generalmente no
  almacenan las contraseñas en texto plano, sino los valores hash de las
  contraseñas. Cuando un usuario ingresa una contraseña, el sistema
  calcula el valor hash de la entrada y lo compara con el valor hash
  almacenado. Si coinciden, la contraseña se considera correcta.
- #strong[Verificación de integridad de datos];: El remitente de los
  datos puede calcular el valor hash de los datos y enviarlo; el
  receptor puede volver a calcular el valor hash de los datos recibidos
  y compararlo con el valor hash recibido. Si coinciden, los datos se
  consideran intactos.

Para aplicaciones criptográficas, para evitar la ingeniería inversa,
como deducir la contraseña original a partir del valor hash, los
algoritmos hash necesitan características de seguridad de nivel
superior.

- #strong[Unidireccionalidad];: Debería ser imposible deducir cualquier
  información sobre los datos de entrada a partir del valor hash.
- #strong[Resistencia a colisiones];: Debería ser extremadamente difícil
  encontrar dos entradas diferentes que produzcan el mismo valor hash.
- #strong[Efecto avalancha];: Cambios menores en la entrada deberían
  conducir a cambios significativos e impredecibles en la salida.

Tenga en cuenta que #strong["Distribución uniforme" y "Resistencia a
colisiones" son dos conceptos separados];. Satisfacer la distribución
uniforme no significa necesariamente resistencia a colisiones. Por
ejemplo, bajo una entrada `key` aleatoria, la función hash `key % 100`
puede producir una salida distribuida uniformemente. Sin embargo, este
algoritmo hash es demasiado simple, y todas las `key` con los mismos dos
últimos dígitos tendrán la misma salida, lo que facilita la deducción de
una `key` utilizable a partir del valor hash, lo que permite descifrar
la contraseña.

== Diseño de algoritmos hash
<diseño-de-algoritmos-hash>
El diseño de algoritmos hash es un problema complejo que requiere la
consideración de muchos factores. Sin embargo, para algunos escenarios
menos exigentes, también podemos diseñar algunos algoritmos hash
simples.

- #strong[Hash aditivo];: Suma los códigos ASCII de cada carácter de la
  entrada y utiliza la suma total como valor hash.
- #strong[Hash multiplicativo];: Utiliza la no correlación de la
  multiplicación, multiplicando cada ronda por una constante, acumulando
  los códigos ASCII de cada carácter en el valor hash.
- #strong[Hash XOR];: Acumula el valor hash mediante la operación XOR de
  cada elemento de los datos de entrada.
- #strong[Hash rotatorio];: Acumula el código ASCII de cada carácter en
  un valor hash, realizando una operación de rotación en el valor hash
  antes de cada acumulación.

```src
[file]{simple_hash}-[class]{}-[func]{rot_hash}
```

Se observa que el último paso de cada algoritmo hash es tomar el módulo
del número primo grande $1000000007$ para asegurar que el valor hash
esté dentro de un rango apropiado. Vale la pena reflexionar por qué se
enfatiza el módulo de un número primo, o cuáles son las desventajas del
módulo de un número compuesto. Esta es una pregunta interesante.

Para concluir: #strong[Usar un número primo grande como módulo puede
maximizar la distribución uniforme de los valores hash];. Dado que un
número primo no comparte factores comunes con otros números, puede
reducir los patrones periódicos causados por la operación de módulo,
evitando así las colisiones hash.

Por ejemplo, supongamos que elegimos el número compuesto $9$ como
módulo, que se puede dividir por $3$, entonces todas las `key`
divisibles por $3$ se asignarán a los valores hash $0$, $3$, $6$.

$ upright("módulo") & = 9\
upright("clave") & = { 0 \, 3 \, 6 \, 9 \, 12 \, 15 \, 18 \, 21 \, 24 \, 27 \, 30 \, 33 \, dots.h }\
upright("hash") & = { 0 \, 3 \, 6 \, 0 \, 3 \, 6 \, 0 \, 3 \, 6 \, 0 \, 3 \, 6 \, dots.h } $

Si la `key` de entrada tiene este tipo de distribución de secuencia
aritmética, entonces los valores hash se agruparán, lo que exacerbará
las colisiones hash. Ahora, supongamos que reemplazamos `módulo` con el
número primo $13$, ya que no hay factores comunes entre `key` y
`módulo`, la uniformidad de los valores hash de salida mejorará
significativamente.

$ upright("módulo") & = 13\
upright("clave") & = { 0 \, 3 \, 6 \, 9 \, 12 \, 15 \, 18 \, 21 \, 24 \, 27 \, 30 \, 33 \, dots.h }\
upright("hash") & = { 0 \, 3 \, 6 \, 9 \, 12 \, 2 \, 5 \, 8 \, 11 \, 1 \, 4 \, 7 \, dots.h } $

Cabe señalar que si se garantiza que la `key` se distribuye de forma
aleatoria y uniforme, entonces elegir un número primo o un número
compuesto como módulo puede producir valores hash distribuidos
uniformemente. Sin embargo, cuando la distribución de la `key` tiene
cierta periodicidad, el módulo de un número compuesto es más probable
que resulte en agrupamiento.

En resumen, generalmente elegimos un número primo como módulo, y este
número primo debe ser lo suficientemente grande como para eliminar los
patrones periódicos tanto como sea posible, mejorando la robustez del
algoritmo hash.

== Algoritmos hash comunes
<algoritmos-hash-comunes>
No es difícil ver que los algoritmos hash simples mencionados
anteriormente son bastante "frágiles" y están lejos de alcanzar los
objetivos de diseño de los algoritmos hash. Por ejemplo, dado que la
suma y la XOR obedecen la ley conmutativa, el hash aditivo y el hash XOR
no pueden distinguir cadenas con el mismo contenido pero en diferente
orden, lo que puede exacerbar las colisiones hash y causar problemas de
seguridad.

En la práctica, generalmente usamos algunos algoritmos hash estándar,
como MD5, SHA-1, SHA-2 y SHA-3. Pueden mapear datos de entrada de
cualquier longitud a un valor hash de longitud fija.

Durante el siglo pasado, los algoritmos hash han estado en un proceso
continuo de actualización y optimización. Algunos investigadores se
esfuerzan por mejorar el rendimiento de los algoritmos hash, mientras
que otros, incluidos los hackers, se dedican a encontrar problemas de
seguridad en los algoritmos hash. La siguiente tabla muestra los
algoritmos hash comúnmente utilizados en aplicaciones prácticas.

- MD5 y SHA-1 han sido atacados con éxito varias veces y, por lo tanto,
  se abandonan en varias aplicaciones de seguridad.
- La serie SHA-2, especialmente SHA-256, es uno de los algoritmos hash
  más seguros hasta la fecha, sin ataques exitosos reportados, por lo
  que se usa comúnmente en varias aplicaciones y protocolos de
  seguridad.
- SHA-3 tiene costos de implementación más bajos y mayor eficiencia
  computacional en comparación con SHA-2, pero su cobertura de uso
  actual no es tan extensa como la serie SHA-2.

Tabla ~ Algoritmos hash comunes
#figure(
  align(center)[#table(
    columns: (7.89%, 24.74%, 18.42%, 34.21%, 14.74%),
    align: (auto,auto,auto,auto,auto,),
    table.header([], [MD5], [SHA-1], [SHA-2], [SHA-3],),
    table.hline(),
    [Año de lanzamiento], [1992], [1995], [2002], [2008],
    [Longitud de salida], [128 bits], [160 bits], [256/512
    bits], [224/256/384/512 bits],
    [Colisiones hash], [Frecuentes], [Frecuentes], [Raras], [Raras],
    [Nivel de seguridad], [Bajo, ha sido atacado con éxito], [Bajo, ha
    sido atacado con éxito], [Alto], [Alto],
    [Aplicaciones], [Abandonado, todavía se usa para comprobaciones de
    integridad de datos], [Abandonado], [Verificación de transacciones
    de criptomonedas, firmas digitales, etc.], [Se puede usar para
    reemplazar SHA-2],
  )]
  , kind: table
  )

= Valores hash en estructuras de datos
<valores-hash-en-estructuras-de-datos>
Sabemos que las claves en una tabla hash pueden ser de varios tipos de
datos, como enteros, decimales o cadenas. Los lenguajes de programación
suelen proporcionar algoritmos hash incorporados para estos tipos de
datos para calcular los índices de los cubos en la tabla hash. Tomando
Python como ejemplo, podemos usar la función `hash()` para calcular los
valores hash para varios tipos de datos.

- Los valores hash de enteros y booleanos son sus propios valores.
- El cálculo de los valores hash para números de punto flotante y
  cadenas es más complejo, y se anima a los lectores interesados a
  estudiarlo por su cuenta.
- El valor hash de una tupla es una combinación de los valores hash de
  cada uno de sus elementos, lo que da como resultado un único valor
  hash.
- El valor hash de un objeto se genera en función de su dirección de
  memoria. Al anular el método hash de un objeto, los valores hash se
  pueden generar en función del contenido.

!!! tip

```
Tenga en cuenta que la definición y los métodos de las funciones de cálculo de valores hash incorporadas en diferentes lenguajes de programación varían.
```

\=== "Python"

````
```python title="built_in_hash.py"
num = 3
hash_num = hash(num)
# El valor hash del entero 3 es 3

bol = True
hash_bol = hash(bol)
# El valor hash del booleano True es 1

dec = 3.14159
hash_dec = hash(dec)
# El valor hash del decimal 3.14159 es 326484311674566659

str = "Hello 算法"
hash_str = hash(str)
# El valor hash de la cadena "Hello 算法" es 4617003410720528961

tup = (12836, "小哈")
hash_tup = hash(tup)
# El valor hash de la tupla (12836, '小哈') es 1029005403108185979

obj = ListNode(0)
hash_obj = hash(obj)
# El valor hash del objeto ListNode en 0x1058fd810 es 274267521
```
````

En muchos lenguajes de programación, #strong[solo los objetos inmutables
pueden servir como `key` en una tabla hash];. Si usamos una lista
(arreglo dinámico) como `key`, cuando el contenido de la lista cambia,
su valor hash también cambia, y ya no podríamos encontrar el `value`
original en la tabla hash.

Aunque las variables miembro de un objeto personalizado (como un nodo de
lista enlazada) son mutables, es hasheable. #strong[Esto se debe a que
el valor hash de un objeto generalmente se genera en función de su
dirección de memoria];, e incluso si el contenido del objeto cambia, la
dirección de memoria permanece igual, por lo que el valor hash permanece
sin cambios.

Es posible que haya notado que los valores hash de salida en diferentes
consolas son diferentes. #strong[Esto se debe a que el intérprete de
Python agrega una sal aleatoria a la función hash de cadena cada vez que
se inicia];. Este enfoque previene eficazmente los ataques HashDoS y
mejora la seguridad del algoritmo hash.
= Resumen
<resumen>
=== Revisión clave
<revisión-clave>
- Dada una `clave` de entrada, una tabla hash puede recuperar el `valor`
  correspondiente en tiempo $O \( 1 \)$, lo cual es altamente eficiente.
- Las operaciones comunes de la tabla hash incluyen consultar, agregar
  pares clave-valor, eliminar pares clave-valor y recorrer la tabla
  hash.
- La función hash mapea una `clave` a un índice de arreglo, lo que
  permite acceder al cubo correspondiente y recuperar el `valor`.
- Dos claves diferentes pueden terminar con el mismo índice de arreglo
  después del hash, lo que lleva a resultados de consulta erróneos. Este
  fenómeno se conoce como colisión hash.
- Cuanto mayor sea la capacidad de la tabla hash, menor será la
  probabilidad de colisiones hash. Por lo tanto, el redimensionamiento
  de la tabla hash puede mitigar las colisiones hash. Similar al
  redimensionamiento de arreglos, el redimensionamiento de tablas hash
  es costoso.
- El factor de carga, definido como el número de elementos dividido por
  el número de cubos, refleja la gravedad de las colisiones hash y a
  menudo se utiliza como condición para activar el redimensionamiento de
  la tabla hash.
- El encadenamiento aborda las colisiones hash convirtiendo cada
  elemento en una lista enlazada, almacenando todos los elementos en
  colisión en la misma lista. Sin embargo, las listas excesivamente
  largas pueden reducir la eficiencia de la consulta, lo que se puede
  mejorar convirtiendo las listas en árboles rojo-negro.
- El direccionamiento abierto maneja las colisiones hash a través de
  múltiples sondeos. El sondeo lineal utiliza un tamaño de paso fijo,
  pero no puede eliminar elementos y es propenso a la agrupación. El
  hash múltiple utiliza varias funciones hash para el sondeo, lo que
  reduce la agrupación en comparación con el sondeo lineal, pero aumenta
  la sobrecarga computacional.
- Diferentes lenguajes de programación adoptan varias implementaciones
  de tablas hash. Por ejemplo, `HashMap` de Java utiliza encadenamiento,
  mientras que `dict` de Python emplea direccionamiento abierto.
- En las tablas hash, deseamos algoritmos hash con determinismo, alta
  eficiencia y distribución uniforme. En criptografía, los algoritmos
  hash también deben poseer resistencia a colisiones y el efecto
  avalancha.
- Los algoritmos hash suelen utilizar números primos grandes como
  módulos para garantizar una distribución uniforme de los valores hash
  y reducir las colisiones hash.
- Los algoritmos hash comunes incluyen MD5, SHA-1, SHA-2 y SHA-3. MD5 se
  usa a menudo para comprobaciones de integridad de archivos, mientras
  que SHA-2 se usa comúnmente en aplicaciones y protocolos seguros.
- Los lenguajes de programación suelen proporcionar algoritmos hash
  incorporados para los tipos de datos para calcular los índices de los
  cubos en las tablas hash. Generalmente, solo los objetos inmutables
  son hasheables.

=== Preguntas y respuestas
<preguntas-y-respuestas>
#strong[P];: ¿Cuándo se degrada la complejidad temporal de una tabla
hash a $O \( n \)$?

La complejidad temporal de una tabla hash puede degradarse a $O \( n \)$
cuando las colisiones hash son graves. Cuando la función hash está bien
diseñada, la capacidad se establece adecuadamente y las colisiones se
distribuyen uniformemente, la complejidad temporal es $O \( 1 \)$.
Generalmente consideramos que la complejidad temporal es $O \( 1 \)$
cuando se utilizan tablas hash incorporadas en los lenguajes de
programación.

#strong[P];: ¿Por qué no usar la función hash $f \( x \) = x$? Esto
eliminaría las colisiones.

Bajo la función hash $f \( x \) = x$, cada elemento corresponde a un
índice de cubo único, lo que equivale a un arreglo. Sin embargo, el
espacio de entrada suele ser mucho mayor que el espacio de salida
(longitud del arreglo), por lo que el último paso de una función hash
suele ser tomar el módulo de la longitud del arreglo. En otras palabras,
el objetivo de una tabla hash es mapear un espacio de estado más grande
a uno más pequeño mientras proporciona una eficiencia de consulta de
$O \( 1 \)$.

#strong[P];: ¿Por qué las tablas hash pueden ser más eficientes que los
arreglos, las listas enlazadas o los árboles binarios, aunque las tablas
hash se implementan utilizando estas estructuras?

En primer lugar, las tablas hash tienen una mayor eficiencia temporal
pero una menor eficiencia espacial. Una parte significativa de la
memoria en las tablas hash permanece sin usar.

En segundo lugar, las tablas hash solo son más eficientes en tiempo en
casos de uso específicos. Si una característica se puede implementar con
la misma complejidad temporal utilizando un arreglo o una lista
enlazada, generalmente es más rápido que usar una tabla hash. Esto se
debe a que el cálculo de la función hash incurre en una sobrecarga, lo
que hace que el factor constante en la complejidad temporal sea mayor.

Por último, la complejidad temporal de las tablas hash puede degradarse.
Por ejemplo, en el encadenamiento, realizamos operaciones de búsqueda en
una lista enlazada o un árbol rojo-negro, lo que aún corre el riesgo de
degradarse a tiempo $O \( n \)$.

#strong[P];: ¿El hash múltiple también tiene el defecto de no poder
eliminar elementos directamente? ¿Se puede reutilizar el espacio marcado
como eliminado?

El hash múltiple es una forma de direccionamiento abierto, y todos los
métodos de direccionamiento abierto tienen el inconveniente de no poder
eliminar elementos directamente; requieren marcar los elementos como
eliminados. Los espacios marcados se pueden reutilizar. Al insertar
nuevos elementos en la tabla hash, y la función hash apunta a una
posición marcada como eliminada, esa posición puede ser utilizada por el
nuevo elemento. Esto mantiene la secuencia de sondeo de la tabla hash al
tiempo que garantiza un uso eficiente del espacio.

#strong[P];: ¿Por qué ocurren colisiones hash durante el proceso de
búsqueda en el sondeo lineal?

Durante el proceso de búsqueda, la función hash apunta al cubo y al par
clave-valor correspondientes. Si la `clave` no coincide, indica una
colisión hash. Por lo tanto, el sondeo lineal buscará hacia abajo con un
tamaño de paso predeterminado hasta que se encuentre el par clave-valor
correcto o la búsqueda falle.

#strong[P];: ¿Por qué redimensionar una tabla hash puede aliviar las
colisiones hash?

El último paso de una función hash a menudo implica tomar el módulo de
la longitud del arreglo $n$, para mantener la salida dentro del rango
del índice del arreglo. Al redimensionar, la longitud del arreglo $n$
cambia, y los índices correspondientes a las claves también pueden
cambiar. Las claves que antes se asignaban al mismo cubo podrían
distribuirse en varios cubos después del redimensionamiento, mitigando
así las colisiones hash.
= Árbol
<árbol>
#figure(image("es/docs/assets/covers/chapter_tree.jpg"),
  caption: [
    Árbol
  ]
)

!!! abstract

```
El imponente árbol exhala una esencia vibrante, con raíces profundas y abundante follaje, sin embargo, sus ramas están escasamente dispersas, creando un aura etérea.

Nos muestra la forma vívida de divide y vencerás en los datos.
```
= Árbol binario
<árbol-binario>
Un árbol binario es una estructura de datos no lineal que representa la
relación jerárquica entre ancestros y descendientes y encarna la lógica
de divide y vencerás de "dividir en dos". Similar a una lista enlazada,
la unidad básica de un árbol binario es un nodo, y cada nodo contiene un
valor, una referencia a su nodo hijo izquierdo y una referencia a su
nodo hijo derecho.

\=== "Python"

````
```python title=""
class TreeNode:
    """Nodo de árbol binario"""
    def __init__(self, val: int):
        self.val: int = val                # Valor del nodo
        self.left: TreeNode | None = None  # Referencia al nodo hijo izquierdo
        self.right: TreeNode | None = None # Referencia al nodo hijo derecho
```
````

Cada nodo tiene dos referencias (punteros), que apuntan respectivamente
al nodo hijo izquierdo y al nodo hijo derecho. Este nodo se denomina
nodo padre de estos dos nodos hijos. Cuando se da un nodo de un árbol
binario, llamamos al árbol formado por el hijo izquierdo de este nodo y
todos los nodos debajo de él el subárbol izquierdo de este nodo. De
manera similar, se puede definir el subárbol derecho.

#strong[En un árbol binario, excepto los nodos hoja, todos los demás
nodos contienen nodos hijos y subárboles no vacíos.] Como se muestra en
la figura a continuación, si el "Nodo 2" se considera un nodo padre, sus
nodos hijos izquierdo y derecho son "Nodo 4" y "Nodo 5" respectivamente.
El subárbol izquierdo está formado por el "Nodo 4" y todos los nodos
debajo de él, mientras que el subárbol derecho está formado por el "Nodo
5" y todos los nodos debajo de él.

#figure(image("es/docs/chapter_tree/binary_tree.assets/binary_tree_definition.png"),
  caption: [
    Nodo padre, nodo hijo, subárbol
  ]
)

== Terminología común de los árboles binarios
<terminología-común-de-los-árboles-binarios>
La terminología comúnmente utilizada de los árboles binarios se muestra
en la figura a continuación.

- Nodo raíz: El nodo en el nivel superior de un árbol binario, que no
  tiene un nodo padre.
- Nodo hoja: Un nodo que no tiene ningún nodo hijo, con ambos punteros
  apuntando a `None`.
- Arista: Un segmento de línea que conecta dos nodos, que representa una
  referencia (puntero) entre los nodos.
- El nivel de un nodo: Aumenta de arriba a abajo, siendo el nodo raíz el
  nivel 1.
- El grado de un nodo: El número de nodos hijos que tiene un nodo. En un
  árbol binario, el grado puede ser 0, 1 o 2.
- La altura de un árbol binario: El número de aristas desde el nodo raíz
  hasta el nodo hoja más lejano.
- La profundidad de un nodo: El número de aristas desde el nodo raíz
  hasta el nodo.
- La altura de un nodo: El número de aristas desde el nodo hoja más
  lejano hasta el nodo.

#figure(image("es/docs/chapter_tree/binary_tree.assets/binary_tree_terminology.png"),
  caption: [
    Terminología común de los árboles binarios
  ]
)

!!! tip

```
Tenga en cuenta que normalmente definimos "altura" y "profundidad" como "el número de aristas recorridas", pero algunas preguntas o libros de texto pueden definirlas como "el número de nodos recorridos". En este caso, tanto la altura como la profundidad deben incrementarse en 1.
```

== Operaciones básicas de los árboles binarios
<operaciones-básicas-de-los-árboles-binarios>
=== Inicialización de un árbol binario
<inicialización-de-un-árbol-binario>
Similar a una lista enlazada, la inicialización de un árbol binario
implica primero crear los nodos y luego establecer las referencias
(punteros) entre ellos.

\=== "Python"

````
```python title="binary_tree.py"
# Inicializando un árbol binario
# Inicializando nodos
n1 = TreeNode(val=1)
n2 = TreeNode(val=2)
n3 = TreeNode(val=3)
n4 = TreeNode(val=4)
n5 = TreeNode(val=5)
# Enlazando referencias (punteros) entre nodos
n1.left = n2
n1.right = n3
n2.left = n4
n2.right = n5
```
````

=== Inserción y eliminación de nodos
<inserción-y-eliminación-de-nodos>
Similar a una lista enlazada, la inserción y eliminación de nodos en un
árbol binario se puede lograr modificando punteros. La figura a
continuación proporciona un ejemplo.

#figure(image("es/docs/chapter_tree/binary_tree.assets/binary_tree_add_remove.png"),
  caption: [
    Inserción y eliminación de nodos en un árbol binario
  ]
)

\=== "Python"

````
```python title="binary_tree.py"
# Insertar y eliminar nodos
p = TreeNode(0)
# Insertar nodo P entre n1 -> n2
n1.left = p
p.left = n2
# Eliminar nodo P
n1.left = n2
```
````

!!! tip

```
Cabe señalar que la inserción de nodos puede cambiar la estructura lógica original del árbol binario, mientras que la eliminación de nodos generalmente implica la eliminación del nodo y todos sus subárboles. Por lo tanto, en un árbol binario, la inserción y eliminación generalmente se realizan a través de un conjunto de operaciones para lograr resultados significativos.
```

== Tipos comunes de árboles binarios
<tipos-comunes-de-árboles-binarios>
=== Árbol binario perfecto
<árbol-binario-perfecto>
Como se muestra en la figura a continuación, en un árbol binario
perfecto, todos los niveles están completamente llenos de nodos. En un
árbol binario perfecto, los nodos hoja tienen un grado de $0$, mientras
que todos los demás nodos tienen un grado de $2$. El número total de
nodos se puede calcular como $2^(h + 1) - 1$, donde $h$ es la altura del
árbol. Esto exhibe una relación exponencial estándar, lo que refleja el
fenómeno común de la división celular en la naturaleza.

!!! tip

```
Tenga en cuenta que en la comunidad china, un árbol binario perfecto a menudo se denomina <u>árbol binario completo</u>.
```

#figure(image("es/docs/chapter_tree/binary_tree.assets/perfect_binary_tree.png"),
  caption: [
    Árbol binario perfecto
  ]
)

=== Árbol binario completo
<árbol-binario-completo>
Como se muestra en la figura a continuación, un árbol binario completo
es un árbol binario donde solo el nivel inferior posiblemente no está
completamente lleno, y los nodos en el nivel inferior deben llenarse
continuamente de izquierda a derecha. Tenga en cuenta que un árbol
binario perfecto también es un árbol binario completo.

#figure(image("es/docs/chapter_tree/binary_tree.assets/complete_binary_tree.png"),
  caption: [
    Árbol binario completo
  ]
)

=== Árbol binario lleno
<árbol-binario-lleno>
Como se muestra en la figura a continuación, un árbol binario lleno,
excepto los nodos hoja, tiene dos nodos hijos para todos los demás
nodos.

#figure(image("es/docs/chapter_tree/binary_tree.assets/full_binary_tree.png"),
  caption: [
    Árbol binario lleno
  ]
)

=== Árbol binario equilibrado
<árbol-binario-equilibrado>
Como se muestra en la figura a continuación, en un árbol binario
equilibrado, la diferencia absoluta entre la altura de los subárboles
izquierdo y derecho de cualquier nodo no excede de 1.

#figure(image("es/docs/chapter_tree/binary_tree.assets/balanced_binary_tree.png"),
  caption: [
    Árbol binario equilibrado
  ]
)

== Degeneración de los árboles binarios
<degeneración-de-los-árboles-binarios>
La figura a continuación muestra las estructuras ideales y degeneradas
de los árboles binarios. Un árbol binario se convierte en un "árbol
binario perfecto" cuando cada nivel está lleno; mientras que degenera en
una "lista enlazada" cuando todos los nodos están sesgados hacia un
lado.

- Un árbol binario perfecto es un escenario ideal donde se puede
  utilizar plenamente la ventaja de "divide y vencerás" de un árbol
  binario.
- Por otro lado, una lista enlazada representa otro extremo donde todas
  las operaciones se vuelven lineales, lo que resulta en una complejidad
  temporal de $O \( n \)$.

#figure(image("es/docs/chapter_tree/binary_tree.assets/binary_tree_best_worst_cases.png"),
  caption: [
    Las mejores y peores estructuras de árboles binarios
  ]
)

Como se muestra en la tabla a continuación, en las mejores y peores
estructuras, el árbol binario alcanza valores máximos o mínimos para el
recuento de nodos hoja, el número total de nodos y la altura.

Tabla ~ Las mejores y peores estructuras de árboles binarios
#figure(
  align(center)[#table(
    columns: (61.04%, 24.68%, 14.29%),
    align: (auto,auto,auto,),
    table.header([], [Árbol binario perfecto], [Lista enlazada],),
    table.hline(),
    [Número de nodos en el nivel $i$], [$2^(i - 1)$], [$1$],
    [Número de nodos hoja en un árbol con altura $h$], [$2^h$], [$1$],
    [Número total de nodos en un árbol con altura
    $h$], [$2^(h + 1) - 1$], [$h + 1$],
    [Altura de un árbol con $n$ nodos
    totales], [$log_2 \( n + 1 \) - 1$], [$n - 1$],
  )]
  , kind: table
  )
= Recorrido de árboles binarios
<recorrido-de-árboles-binarios>
Desde una perspectiva de estructura física, un árbol es una estructura
de datos basada en listas enlazadas. Por lo tanto, su método de
recorrido implica acceder a los nodos uno por uno a través de punteros.
Sin embargo, un árbol es una estructura de datos no lineal, lo que hace
que recorrer un árbol sea más complejo que recorrer una lista enlazada,
lo que requiere la ayuda de algoritmos de búsqueda.

Los métodos de recorrido comunes para árboles binarios incluyen el
recorrido por niveles, el recorrido en preorden, el recorrido en inorden
y el recorrido en postorden.

== Recorrido por niveles
<recorrido-por-niveles>
Como se muestra en la figura a continuación, el recorrido por niveles
recorre el árbol binario de arriba a abajo, capa por capa. Dentro de
cada nivel, visita los nodos de izquierda a derecha.

El recorrido por niveles es esencialmente un tipo de recorrido en
amplitud, también conocido como búsqueda en amplitud (BFS), que encarna
un método de recorrido capa por capa que se expande
"circunferencialmente hacia afuera".

#figure(image("es/docs/chapter_tree/binary_tree_traversal.assets/binary_tree_bfs.png"),
  caption: [
    Recorrido por niveles de un árbol binario
  ]
)

=== Implementación del código
<implementación-del-código>
La búsqueda en amplitud se implementa generalmente con la ayuda de una
"cola". La cola sigue la regla de "primero en entrar, primero en salir",
mientras que la búsqueda en amplitud sigue la regla de "progresión capa
por capa", las ideas subyacentes de ambas son consistentes. El código de
implementación es el siguiente:

```src
[file]{binary_tree_bfs}-[class]{}-[func]{level_order}
```

=== Análisis de complejidad
<análisis-de-complejidad>
- #strong[La complejidad temporal es $O \( n \)$];: Todos los nodos se
  visitan una vez, lo que lleva $O \( n \)$ tiempo, donde $n$ es el
  número de nodos.
- #strong[La complejidad espacial es $O \( n \)$];: En el peor de los
  casos, es decir, un árbol binario completo, antes de recorrer el nivel
  inferior, la cola puede contener como máximo $\( n + 1 \) \/ 2$ nodos
  simultáneamente, ocupando un espacio de $O \( n \)$.

== Recorrido en preorden, inorden y postorden
<recorrido-en-preorden-inorden-y-postorden>
Correspondientemente, el recorrido en preorden, inorden y postorden
pertenecen al recorrido en profundidad, también conocido como búsqueda
en profundidad (DFS), que encarna un método de recorrido que "procede
hasta el final primero, luego retrocede y continúa".

La siguiente figura muestra el principio de funcionamiento de la
realización de un recorrido en profundidad en un árbol binario.
#strong[El recorrido en profundidad es como "caminar" alrededor de todo
el árbol binario];, encontrando tres posiciones en cada nodo,
correspondientes al recorrido en preorden, inorden y postorden.

#figure(image("es/docs/chapter_tree/binary_tree_traversal.assets/binary_tree_dfs.png"),
  caption: [
    Recorrido en preorden, inorden y postorden de un árbol de búsqueda
    binaria
  ]
)

=== Implementación del código
<implementación-del-código-1>
La búsqueda en profundidad se implementa generalmente basándose en la
recursión:

```src
[file]{binary_tree_dfs}-[class]{}-[func]{post_order}
```

!!! tip

```
La búsqueda en profundidad también se puede implementar basándose en la iteración, los lectores interesados pueden estudiarlo por su cuenta.
```

La siguiente figura muestra el proceso recursivo del recorrido en
preorden de un árbol binario, que se puede dividir en dos partes
opuestas: "recursión" y "retorno".

+ "Recursión" significa iniciar un nuevo método, el programa accede al
  siguiente nodo en este proceso.
+ "Retorno" significa que la función regresa, lo que indica que el nodo
  actual ha sido completamente accedido.

\=== "\<1\>"
#box(image("es/docs/chapter_tree/binary_tree_traversal.assets/preorder_step1.png"))

\=== "\<2\>"
#box(image("es/docs/chapter_tree/binary_tree_traversal.assets/preorder_step2.png"))

\=== "\<3\>"
#box(image("es/docs/chapter_tree/binary_tree_traversal.assets/preorder_step3.png"))

\=== "\<4\>"
#box(image("es/docs/chapter_tree/binary_tree_traversal.assets/preorder_step4.png"))

\=== "\<5\>"
#box(image("es/docs/chapter_tree/binary_tree_traversal.assets/preorder_step5.png"))

\=== "\<6\>"
#box(image("es/docs/chapter_tree/binary_tree_traversal.assets/preorder_step6.png"))

\=== "\<7\>"
#box(image("es/docs/chapter_tree/binary_tree_traversal.assets/preorder_step7.png"))

\=== "\<8\>"
#box(image("es/docs/chapter_tree/binary_tree_traversal.assets/preorder_step8.png"))

\=== "\<9\>"
#box(image("es/docs/chapter_tree/binary_tree_traversal.assets/preorder_step9.png"))

\=== "\<10\>"
#box(image("es/docs/chapter_tree/binary_tree_traversal.assets/preorder_step10.png"))

\=== "\<11\>"
#box(image("es/docs/chapter_tree/binary_tree_traversal.assets/preorder_step11.png"))

=== Análisis de complejidad
<análisis-de-complejidad-1>
- #strong[La complejidad temporal es $O \( n \)$];: Todos los nodos se
  visitan una vez, utilizando $O \( n \)$ tiempo.
- #strong[La complejidad espacial es $O \( n \)$];: En el peor de los
  casos, es decir, el árbol degenera en una lista enlazada, la
  profundidad de recursión alcanza $n$, el sistema ocupa un espacio de
  marco de pila de $O \( n \)$.
= Representación de árboles binarios en arreglos
<representación-de-árboles-binarios-en-arreglos>
Bajo la representación de lista enlazada, la unidad de almacenamiento de
un árbol binario es un nodo `TreeNode`, con nodos conectados por
punteros. Las operaciones básicas de los árboles binarios bajo la
representación de lista enlazada se introdujeron en la sección anterior.

Entonces, ¿podemos usar un arreglo para representar un árbol binario? La
respuesta es sí.

== Representación de árboles binarios perfectos
<representación-de-árboles-binarios-perfectos>
Analicemos primero un caso simple. Dado un árbol binario perfecto,
almacenamos todos los nodos en un arreglo de acuerdo con el orden de
recorrido por niveles, donde cada nodo corresponde a un índice de
arreglo único.

Basándonos en las características del recorrido por niveles, podemos
deducir una "fórmula de mapeo" entre el índice de un nodo padre y sus
hijos: #strong[Si el índice de un nodo es $i$, entonces el índice de su
hijo izquierdo es $2 i + 1$ y el de su hijo derecho es $2 i + 2$];. La
siguiente figura muestra la relación de mapeo entre los índices de
varios nodos.

#figure(image("es/docs/chapter_tree/array_representation_of_tree.assets/array_representation_binary_tree.png"),
  caption: [
    Representación de un árbol binario perfecto en un arreglo
  ]
)

#strong[La fórmula de mapeo juega un papel similar a las referencias de
nodo (punteros) en las listas enlazadas];. Dado cualquier nodo en el
arreglo, podemos acceder a su nodo hijo izquierdo (derecho) usando la
fórmula de mapeo.

== Representación de cualquier árbol binario
<representación-de-cualquier-árbol-binario>
Los árboles binarios perfectos son un caso especial; a menudo hay muchos
valores `None` en los niveles intermedios de un árbol binario. Dado que
la secuencia de recorrido por niveles no incluye estos valores `None`,
no podemos confiar únicamente en esta secuencia para deducir el número y
la distribución de los valores `None`. #strong[Esto significa que
múltiples estructuras de árboles binarios pueden coincidir con la misma
secuencia de recorrido por niveles];.

Como se muestra en la figura a continuación, dado un árbol binario no
perfecto, el método anterior de representación de arreglos falla.

#figure(image("es/docs/chapter_tree/array_representation_of_tree.assets/array_representation_without_empty.png"),
  caption: [
    La secuencia de recorrido por niveles corresponde a múltiples
    posibilidades de árboles binarios
  ]
)

Para resolver este problema, #strong[podemos considerar escribir
explícitamente todos los valores `None` en la secuencia de recorrido por
niveles];. Como se muestra en la figura a continuación, después de este
tratamiento, la secuencia de recorrido por niveles puede representar de
forma única un árbol binario. El código de ejemplo es el siguiente:

\=== "Python"

````
```python title=""
# Representación de un árbol binario en un arreglo
# Usando None para representar espacios vacíos
tree = [1, 2, 3, 4, None, 6, 7, 8, 9, None, None, 12, None, None, 15]
```
````

#figure(image("es/docs/chapter_tree/array_representation_of_tree.assets/array_representation_with_empty.png"),
  caption: [
    Representación de cualquier tipo de árbol binario en un arreglo
  ]
)

Cabe señalar que #strong[los árboles binarios completos son muy
adecuados para la representación en arreglos];. Recordando la definición
de un árbol binario completo, `None` aparece solo en el nivel inferior y
hacia la derecha, #strong[lo que significa que todos los valores `None`
aparecen definitivamente al final de la secuencia de recorrido por
niveles];.

Esto significa que al usar un arreglo para representar un árbol binario
completo, es posible omitir el almacenamiento de todos los valores
`None`, lo cual es muy conveniente. La figura a continuación muestra un
ejemplo.

#figure(image("es/docs/chapter_tree/array_representation_of_tree.assets/array_representation_complete_binary_tree.png"),
  caption: [
    Representación de un árbol binario completo en un arreglo
  ]
)

El siguiente código implementa un árbol binario basado en la
representación de arreglos, incluyendo las siguientes operaciones:

- Dado un nodo, obtener su valor, nodo hijo izquierdo (derecho) y nodo
  padre.
- Obtener las secuencias de recorrido en preorden, inorden, postorden y
  por niveles.

```src
[file]{array_binary_tree}-[class]{array_binary_tree}-[func]{}
```

== Ventajas y limitaciones
<ventajas-y-limitaciones>
La representación de árboles binarios en arreglos tiene las siguientes
ventajas:

- Los arreglos se almacenan en espacios de memoria contiguos, lo que es
  amigable con la caché y permite un acceso y recorrido más rápidos.
- No requiere almacenar punteros, lo que ahorra espacio.
- Permite el acceso aleatorio a los nodos.

Sin embargo, la representación de arreglos también tiene algunas
limitaciones:

- El almacenamiento en arreglos requiere un espacio de memoria contiguo,
  por lo que no es adecuado para almacenar árboles con una gran cantidad
  de datos.
- Agregar o eliminar nodos requiere operaciones de inserción y
  eliminación de arreglos, que son menos eficientes.
- Cuando hay muchos valores `None` en el árbol binario, la proporción de
  datos de nodos contenidos en el arreglo es baja, lo que lleva a una
  menor utilización del espacio.
= Árbol de búsqueda binaria
<árbol-de-búsqueda-binaria>
Como se muestra en la figura a continuación, un árbol de búsqueda
binaria satisface las siguientes condiciones.

+ Para el nodo raíz, el valor de todos los nodos en el subárbol
  izquierdo \< el valor del nodo raíz \< el valor de todos los nodos en
  el subárbol derecho.
+ Los subárboles izquierdo y derecho de cualquier nodo también son
  árboles de búsqueda binaria, es decir, también satisfacen la condición
  `1.`.

#figure(image("es/docs/chapter_tree/binary_search_tree.assets/binary_search_tree.png"),
  caption: [
    Árbol de búsqueda binaria
  ]
)

== Operaciones en un árbol de búsqueda binaria
<operaciones-en-un-árbol-de-búsqueda-binaria>
Encapsulamos el árbol de búsqueda binaria como una clase
`BinarySearchTree` y declaramos una variable miembro `root` que apunta
al nodo raíz del árbol.

=== Búsqueda de un nodo
<búsqueda-de-un-nodo>
Dado un valor de nodo objetivo `num`, se puede buscar de acuerdo con las
propiedades del árbol de búsqueda binaria. Como se muestra en la figura
a continuación, declaramos un nodo `cur`, comenzamos desde el nodo raíz
del árbol binario `root` y hacemos un bucle para comparar el tamaño
entre el valor del nodo `cur.val` y `num`.

- Si `cur.val < num`, significa que el nodo objetivo está en el subárbol
  derecho de `cur`, por lo tanto, ejecute `cur = cur.right`.
- Si `cur.val > num`, significa que el nodo objetivo está en el subárbol
  izquierdo de `cur`, por lo tanto, ejecute `cur = cur.left`.
- Si `cur.val = num`, significa que se encontró el nodo objetivo, salga
  del bucle y devuelva el nodo.

\=== "\<1\>"
#box(image("es/docs/chapter_tree/binary_search_tree.assets/bst_search_step1.png"))

\=== "\<2\>"
#box(image("es/docs/chapter_tree/binary_search_tree.assets/bst_search_step2.png"))

\=== "\<3\>"
#box(image("es/docs/chapter_tree/binary_search_tree.assets/bst_search_step3.png"))

\=== "\<4\>"
#box(image("es/docs/chapter_tree/binary_search_tree.assets/bst_search_step4.png"))

La operación de búsqueda en un árbol de búsqueda binaria funciona con el
mismo principio que el algoritmo de búsqueda binaria, eliminando la
mitad de los casos en cada ronda. El número de bucles es como máximo la
altura del árbol binario. Cuando el árbol binario está equilibrado,
utiliza tiempo $O \( log n \)$. El código de ejemplo es el siguiente:

```src
[file]{binary_search_tree}-[class]{binary_search_tree}-[func]{search}
```

=== Inserción de un nodo
<inserción-de-un-nodo>
Dado un elemento `num` a insertar, para mantener la propiedad del árbol
de búsqueda binaria "subárbol izquierdo \< nodo raíz \< subárbol
derecho", la operación de inserción procede como se muestra en la figura
a continuación.

+ #strong[Búsqueda de la posición de inserción];: Similar a la operación
  de búsqueda, comience desde el nodo raíz, recorra hacia abajo según la
  relación de tamaño entre el valor del nodo actual y `num`, hasta que
  se pase el nodo hoja (recorrido a `None`), luego salga del bucle.
+ #strong[Inserte el nodo en esta posición];: Inicialice el nodo `num` y
  colóquelo donde estaba `None`.

#figure(image("es/docs/chapter_tree/binary_search_tree.assets/bst_insert.png"),
  caption: [
    Inserción de un nodo en un árbol de búsqueda binaria
  ]
)

En la implementación del código, tenga en cuenta los siguientes dos
puntos.

- El árbol de búsqueda binaria no permite la existencia de nodos
  duplicados; de lo contrario, se violaría su definición. Por lo tanto,
  si el nodo a insertar ya existe en el árbol, la inserción no se
  realiza y el nodo regresa directamente.
- Para realizar la operación de inserción, necesitamos usar el nodo
  `pre` para guardar el nodo del bucle anterior. De esta manera, al
  recorrer a `None`, podemos obtener su nodo padre, completando así la
  operación de inserción del nodo.

```src
[file]{binary_search_tree}-[class]{binary_search_tree}-[func]{insert}
```

Similar a la búsqueda de un nodo, la inserción de un nodo utiliza tiempo
$O \( log n \)$.

=== Eliminación de un nodo
<eliminación-de-un-nodo>
Primero, encuentre el nodo objetivo en el árbol binario, luego
elimínelo. Similar a la inserción de un nodo, debemos asegurarnos de que
después de completar la operación de eliminación, la propiedad del árbol
de búsqueda binaria "subárbol izquierdo \< nodo raíz \< subárbol
derecho" aún se satisfaga. Por lo tanto, según el número de nodos hijos
del nodo objetivo, lo dividimos en tres casos: 0, 1 y 2, y realizamos
las operaciones de eliminación de nodos correspondientes.

Como se muestra en la figura a continuación, cuando el grado del nodo a
eliminar es $0$, significa que el nodo es un nodo hoja y se puede
eliminar directamente.

#figure(image("es/docs/chapter_tree/binary_search_tree.assets/bst_remove_case1.png"),
  caption: [
    Eliminación de un nodo en un árbol de búsqueda binaria (grado 0)
  ]
)

Como se muestra en la figura a continuación, cuando el grado del nodo a
eliminar es $1$, basta con reemplazar el nodo a eliminar con su nodo
hijo.

#figure(image("es/docs/chapter_tree/binary_search_tree.assets/bst_remove_case2.png"),
  caption: [
    Eliminación de un nodo en un árbol de búsqueda binaria (grado 1)
  ]
)

Cuando el grado del nodo a eliminar es $2$, no podemos eliminarlo
directamente, sino que necesitamos usar un nodo para reemplazarlo. Para
mantener la propiedad del árbol de búsqueda binaria "subárbol izquierdo
\< nodo raíz \< subárbol derecho", #strong[este nodo puede ser el nodo
más pequeño del subárbol derecho o el nodo más grande del subárbol
izquierdo];.

Suponiendo que elegimos el nodo más pequeño del subárbol derecho (el
siguiente nodo en el recorrido en orden), entonces la operación de
eliminación procede como se muestra en la figura a continuación.

+ Encuentre el siguiente nodo en la "secuencia de recorrido en orden"
  del nodo a eliminar, denotado como `tmp`.
+ Reemplace el valor del nodo a eliminar con el valor de `tmp`, y
  elimine recursivamente el nodo `tmp` en el árbol.

\=== "\<1\>"
#box(image("es/docs/chapter_tree/binary_search_tree.assets/bst_remove_case3_step1.png"))

\=== "\<2\>"
#box(image("es/docs/chapter_tree/binary_search_tree.assets/bst_remove_case3_step2.png"))

\=== "\<3\>"
#box(image("es/docs/chapter_tree/binary_search_tree.assets/bst_remove_case3_step3.png"))

\=== "\<4\>"
#box(image("es/docs/chapter_tree/binary_search_tree.assets/bst_remove_case3_step4.png"))

La operación de eliminación de un nodo también utiliza tiempo
$O \( log n \)$, donde encontrar el nodo a eliminar requiere tiempo
$O \( log n \)$, y obtener el nodo sucesor del recorrido en orden
requiere tiempo $O \( log n \)$. El código de ejemplo es el siguiente:

```src
[file]{binary_search_tree}-[class]{binary_search_tree}-[func]{remove}
```

=== El recorrido en orden está ordenado
<el-recorrido-en-orden-está-ordenado>
Como se muestra en la figura a continuación, el recorrido en orden de un
árbol binario sigue el orden de recorrido de "izquierda $arrow.r$ raíz
$arrow.r$ derecha", y un árbol de búsqueda binaria satisface la relación
de tamaño de "nodo hijo izquierdo \< nodo raíz \< nodo hijo derecho".

Esto significa que al realizar un recorrido en orden en un árbol de
búsqueda binaria, el siguiente nodo más pequeño siempre se recorrerá
primero, lo que lleva a una propiedad importante: #strong[La secuencia
de recorrido en orden en un árbol de búsqueda binaria es ascendente];.

Usando la propiedad ascendente del recorrido en orden, la obtención de
datos ordenados en un árbol de búsqueda binaria requiere solo tiempo
$O \( n \)$, sin necesidad de operaciones de ordenación adicionales, lo
cual es muy eficiente.

#figure(image("es/docs/chapter_tree/binary_search_tree.assets/bst_inorder_traversal.png"),
  caption: [
    Secuencia de recorrido en orden de un árbol de búsqueda binaria
  ]
)

== Eficiencia de los árboles de búsqueda binaria
<eficiencia-de-los-árboles-de-búsqueda-binaria>
Dado un conjunto de datos, consideramos usar un arreglo o un árbol de
búsqueda binaria para el almacenamiento. Observando la tabla a
continuación, las operaciones en un árbol de búsqueda binaria tienen
todas una complejidad temporal logarítmica, lo cual es estable y
eficiente. Los arreglos son más eficientes que los árboles de búsqueda
binaria solo en escenarios que implican adiciones frecuentes y búsquedas
o eliminaciones poco frecuentes.

Tabla ~ Comparación de eficiencia entre arreglos y árboles de búsqueda
#figure(
  align(center)[#table(
    columns: 3,
    align: (auto,auto,auto,),
    table.header([], [Arreglo sin ordenar], [Árbol de búsqueda binaria],),
    table.hline(),
    [Buscar elemento], [$O \( n \)$], [$O \( log n \)$],
    [Insertar elemento], [$O \( 1 \)$], [$O \( log n \)$],
    [Eliminar elemento], [$O \( n \)$], [$O \( log n \)$],
  )]
  , kind: table
  )

Idealmente, el árbol de búsqueda binaria está "equilibrado", lo que
permite encontrar cualquier nodo en $log n$ bucles.

Sin embargo, si insertamos y eliminamos nodos continuamente en un árbol
de búsqueda binaria, puede degenerar en una lista enlazada como se
muestra en la figura a continuación, donde la complejidad temporal de
varias operaciones también se degrada a $O \( n \)$.

#figure(image("es/docs/chapter_tree/binary_search_tree.assets/bst_degradation.png"),
  caption: [
    Degradación de un árbol de búsqueda binaria
  ]
)

== Aplicaciones comunes de los árboles de búsqueda binaria
<aplicaciones-comunes-de-los-árboles-de-búsqueda-binaria>
- Se utiliza como índices multinivel en sistemas para implementar
  operaciones eficientes de búsqueda, inserción y eliminación.
- Sirve como estructura de datos subyacente para ciertos algoritmos de
  búsqueda.
- Se utiliza para almacenar flujos de datos para mantener su estado
  ordenado.
= Árbol AVL \*
<árbol-avl>
En la sección "Árbol de búsqueda binaria", mencionamos que después de
múltiples inserciones y eliminaciones, un árbol de búsqueda binaria
podría degenerar en una lista enlazada. En tales casos, la complejidad
temporal de todas las operaciones se degrada de $O \( log n \)$ a
$O \( n \)$.

Como se muestra en la figura a continuación, después de dos operaciones
de eliminación de nodos, este árbol de búsqueda binaria degenerará en
una lista enlazada.

#figure(image("es/docs/chapter_tree/avl_tree.assets/avltree_degradation_from_removing_node.png"),
  caption: [
    Degradación de un árbol AVL después de eliminar nodos
  ]
)

Por ejemplo, en el árbol binario perfecto que se muestra en la figura a
continuación, después de insertar dos nodos, el árbol se inclinará
fuertemente hacia la izquierda y la complejidad temporal de las
operaciones de búsqueda también se degradará.

#figure(image("es/docs/chapter_tree/avl_tree.assets/avltree_degradation_from_inserting_node.png"),
  caption: [
    Degradación de un árbol AVL después de insertar nodos
  ]
)

En 1962, G. M. Adelson-Velsky y E. M. Landis propusieron el Árbol AVL en
su artículo "Un algoritmo para la organización de la información". El
artículo detallaba una serie de operaciones para asegurar que, después
de añadir y eliminar nodos continuamente, el árbol AVL no se degradaría,
manteniendo así la complejidad temporal de varias operaciones en el
nivel $O \( log n \)$. En otras palabras, en escenarios donde se
necesitan inserciones, eliminaciones, búsquedas y modificaciones
frecuentes, el árbol AVL siempre puede mantener un rendimiento eficiente
de las operaciones de datos, lo que tiene un gran valor de aplicación.

== Terminología común en árboles AVL
<terminología-común-en-árboles-avl>
Un árbol AVL es tanto un árbol de búsqueda binaria como un árbol binario
equilibrado, satisfaciendo todas las propiedades de estos dos tipos de
árboles binarios, por lo tanto, es un árbol de búsqueda binaria
equilibrado.

=== Altura del nodo
<altura-del-nodo>
Dado que las operaciones relacionadas con los árboles AVL requieren
obtener las alturas de los nodos, necesitamos agregar una variable
`height` a la clase de nodo:

\=== "Python"

````
```python title=""
class TreeNode:
    """Nodo de árbol AVL"""
    def __init__(self, val: int):
        self.val: int = val                 # Valor del nodo
        self.height: int = 0                # Altura del nodo
        self.left: TreeNode | None = None   # Referencia al hijo izquierdo
        self.right: TreeNode | None = None  # Referencia al hijo derecho
```
````

La "altura del nodo" se refiere a la distancia desde ese nodo hasta su
nodo hoja más lejano, es decir, el número de "aristas" pasadas. Es
importante tener en cuenta que la altura de un nodo hoja es $0$, y la
altura de un nodo nulo es $- 1$. Crearemos dos funciones de utilidad
para obtener y actualizar la altura de un nodo:

```src
[file]{avl_tree}-[class]{avl_tree}-[func]{update_height}
```

=== Factor de equilibrio del nodo
<factor-de-equilibrio-del-nodo>
El factor de equilibrio de un nodo se define como la altura del subárbol
izquierdo del nodo menos la altura de su subárbol derecho, con el factor
de equilibrio de un nodo nulo definido como $0$. También encapsularemos
la funcionalidad de obtener el factor de equilibrio del nodo en una
función para facilitar su uso posterior:

```src
[file]{avl_tree}-[class]{avl_tree}-[func]{balance_factor}
```

!!! tip

```
Sea $f$ el factor de equilibrio, entonces el factor de equilibrio de cualquier nodo en un árbol AVL satisface $-1 \le f \le 1$.
```

== Rotaciones en árboles AVL
<rotaciones-en-árboles-avl>
La característica distintiva de un árbol AVL es la operación de
"rotación", que puede restaurar el equilibrio a un nodo desequilibrado
sin afectar la secuencia de recorrido en orden del árbol binario. En
otras palabras, #strong[la operación de rotación puede mantener la
propiedad de un "árbol de búsqueda binaria" al mismo tiempo que
convierte el árbol de nuevo en un "árbol binario equilibrado"];.

Llamamos "nodos desequilibrados" a los nodos con un factor de equilibrio
absoluto $> 1$. Dependiendo del tipo de desequilibrio, existen cuatro
tipos de rotaciones: rotación a la derecha, rotación a la izquierda,
rotación derecha-izquierda y rotación izquierda-derecha. A continuación,
detallamos estas operaciones de rotación.

=== Rotación a la derecha
<rotación-a-la-derecha>
Como se muestra en la figura a continuación, el primer nodo
desequilibrado de abajo hacia arriba en el árbol binario es el "nodo 3".
Centrándose en el subárbol con este nodo desequilibrado como raíz,
denotado como `node`, y su hijo izquierdo como `child`, realice una
"rotación a la derecha". Después de la rotación a la derecha, el
subárbol vuelve a estar equilibrado mientras mantiene las propiedades de
un árbol de búsqueda binaria.

\=== "\<1\>"
#box(image("es/docs/chapter_tree/avl_tree.assets/avltree_right_rotate_step1.png"))

\=== "\<2\>"
#box(image("es/docs/chapter_tree/avl_tree.assets/avltree_right_rotate_step2.png"))

\=== "\<3\>"
#box(image("es/docs/chapter_tree/avl_tree.assets/avltree_right_rotate_step3.png"))

\=== "\<4\>"
#box(image("es/docs/chapter_tree/avl_tree.assets/avltree_right_rotate_step4.png"))

Como se muestra en la figura a continuación, cuando el nodo `child`
tiene un hijo derecho (denotado como `grand_child`), se debe agregar un
paso en la rotación a la derecha: establecer `grand_child` como el hijo
izquierdo de `node`.

#figure(image("es/docs/chapter_tree/avl_tree.assets/avltree_right_rotate_with_grandchild.png"),
  caption: [
    Rotación a la derecha con grand\_child
  ]
)

La "rotación a la derecha" es un término figurado; en la práctica, se
logra modificando los punteros de los nodos, como se muestra en el
siguiente código:

```src
[file]{avl_tree}-[class]{avl_tree}-[func]{right_rotate}
```

=== Rotación a la izquierda
<rotación-a-la-izquierda>
Correspondientemente, si consideramos el "espejo" del árbol binario
desequilibrado anterior, se debe realizar la operación de "rotación a la
izquierda" que se muestra en la figura a continuación.

#figure(image("es/docs/chapter_tree/avl_tree.assets/avltree_left_rotate.png"),
  caption: [
    Operación de rotación a la izquierda
  ]
)

De manera similar, como se muestra en la figura a continuación, cuando
el nodo `child` tiene un hijo izquierdo (denotado como `grand_child`),
se debe agregar un paso en la rotación a la izquierda: establecer
`grand_child` como el hijo derecho de `node`.

#figure(image("es/docs/chapter_tree/avl_tree.assets/avltree_left_rotate_with_grandchild.png"),
  caption: [
    Rotación a la izquierda con grand\_child
  ]
)

Se puede observar que #strong[las operaciones de rotación a la derecha y
a la izquierda son lógicamente simétricas, y resuelven dos tipos
simétricos de desequilibrio];. Basándose en la simetría, al reemplazar
todos los `left` con `right` y todos los `right` con `left` en el código
de implementación de la rotación a la derecha, podemos obtener el código
de implementación para la rotación a la izquierda:

```src
[file]{avl_tree}-[class]{avl_tree}-[func]{left_rotate}
```

=== Rotación izquierda-derecha
<rotación-izquierda-derecha>
Para el nodo desequilibrado 3 que se muestra en la figura a
continuación, el uso de la rotación izquierda o derecha por sí solo no
puede restaurar el equilibrio al subárbol. En este caso, primero se debe
realizar una "rotación a la izquierda" en `child`, seguida de una
"rotación a la derecha" en `node`.

#figure(image("es/docs/chapter_tree/avl_tree.assets/avltree_left_right_rotate.png"),
  caption: [
    Rotación izquierda-derecha
  ]
)

=== Rotación derecha-izquierda
<rotación-derecha-izquierda>
Como se muestra en la figura a continuación, para el caso espejo del
árbol binario desequilibrado anterior, primero se debe realizar una
"rotación a la derecha" en `child`, seguida de una "rotación a la
izquierda" en `node`.

#figure(image("es/docs/chapter_tree/avl_tree.assets/avltree_right_left_rotate.png"),
  caption: [
    Rotación derecha-izquierda
  ]
)

=== Elección de la rotación
<elección-de-la-rotación>
Los cuatro tipos de desequilibrios que se muestran en la figura a
continuación corresponden a los casos descritos anteriormente, que
requieren respectivamente rotación a la derecha, rotación
izquierda-derecha, rotación derecha-izquierda y rotación a la izquierda.

#figure(image("es/docs/chapter_tree/avl_tree.assets/avltree_rotation_cases.png"),
  caption: [
    Los cuatro casos de rotación del árbol AVL
  ]
)

Como se muestra en la tabla a continuación, determinamos a cuál de los
casos anteriores pertenece un nodo desequilibrado juzgando el signo del
factor de equilibrio del nodo desequilibrado y el factor de equilibrio
de su hijo de lado superior.

Tabla ~ Condiciones para elegir entre los cuatro casos de rotación
#figure(
  align(center)[#table(
    columns: (35.11%, 29.79%, 35.11%),
    align: (auto,auto,auto,),
    table.header([Factor de equilibrio del nodo desequilibrado], [Factor
      de equilibrio del nodo hijo], [Método de rotación a utilizar],),
    table.hline(),
    [$> 1$ (Árbol inclinado a la izquierda)], [$gt.eq 0$], [Rotación a
    la derecha],
    [$> 1$ (Árbol inclinado a la izquierda)], [$< 0$], [Rotación a la
    izquierda y luego a la derecha],
    [$< - 1$ (Árbol inclinado a la derecha)], [$lt.eq 0$], [Rotación a
    la izquierda],
    [$< - 1$ (Árbol inclinado a la derecha)], [$> 0$], [Rotación a la
    derecha y luego a la izquierda],
  )]
  , kind: table
  )

Para mayor comodidad, encapsulamos las operaciones de rotación en una
función. #strong[Con esta función, podemos realizar rotaciones en varios
tipos de desequilibrios, restaurando el equilibrio a los nodos
desequilibrados];. El código es el siguiente:

```src
[file]{avl_tree}-[class]{avl_tree}-[func]{rotate}
```

== Operaciones comunes en árboles AVL
<operaciones-comunes-en-árboles-avl>
=== Inserción de nodos
<inserción-de-nodos>
La operación de inserción de nodos en árboles AVL es similar a la de los
árboles de búsqueda binaria. La única diferencia es que después de
insertar un nodo en un árbol AVL, puede aparecer una serie de nodos
desequilibrados a lo largo de la ruta desde ese nodo hasta el nodo raíz.
Por lo tanto, #strong[necesitamos comenzar desde este nodo y realizar
operaciones de rotación hacia arriba para restaurar el equilibrio a
todos los nodos desequilibrados];. El código es el siguiente:

```src
[file]{avl_tree}-[class]{avl_tree}-[func]{insert_helper}
```

=== Eliminación de nodos
<eliminación-de-nodos>
De manera similar, basándose en el método de eliminación de nodos en
árboles de búsqueda binaria, es necesario realizar operaciones de
rotación de abajo hacia arriba para restaurar el equilibrio a todos los
nodos desequilibrados. El código es el siguiente:

```src
[file]{avl_tree}-[class]{avl_tree}-[func]{remove_helper}
```

=== Búsqueda de nodos
<búsqueda-de-nodos>
La operación de búsqueda de nodos en árboles AVL es consistente con la
de los árboles de búsqueda binaria y no se detallará aquí.

== Aplicaciones típicas de los árboles AVL
<aplicaciones-típicas-de-los-árboles-avl>
- Organización y almacenamiento de grandes cantidades de datos, adecuado
  para escenarios con búsquedas de alta frecuencia e inserciones y
  eliminaciones de baja frecuencia.
- Se utiliza para construir sistemas de índices en bases de datos.
- Los árboles rojo-negro también son un tipo común de árbol de búsqueda
  binaria equilibrado. En comparación con los árboles AVL, los árboles
  rojo-negro tienen condiciones de equilibrio más relajadas, requieren
  menos rotaciones para la inserción y eliminación de nodos, y tienen
  una mayor eficiencia promedio para las operaciones de adición y
  eliminación de nodos.
= Resumen
<resumen>
=== Revisión clave
<revisión-clave>
- Un árbol binario es una estructura de datos no lineal que refleja la
  lógica de "divide y vencerás" de dividir uno en dos. Cada nodo de
  árbol binario contiene un valor y dos punteros, que apuntan a sus
  nodos hijos izquierdo y derecho, respectivamente.
- Para un nodo en un árbol binario, su nodo hijo izquierdo (derecho) y
  el árbol formado debajo de él se denominan colectivamente el subárbol
  izquierdo (derecho) del nodo.
- Los términos relacionados con los árboles binarios incluyen nodo raíz,
  nodo hoja, nivel, grado, arista, altura y profundidad.
- Las operaciones de inicialización de un árbol binario, inserción de
  nodos y eliminación de nodos son similares a las operaciones de listas
  enlazadas.
- Los tipos comunes de árboles binarios incluyen árboles binarios
  perfectos, árboles binarios completos, árboles binarios llenos y
  árboles binarios equilibrados. El árbol binario perfecto representa el
  estado ideal, mientras que la lista enlazada es el peor estado después
  de la degradación.
- Un árbol binario se puede representar usando un arreglo organizando
  los valores de los nodos y los espacios vacíos en una secuencia de
  recorrido por niveles e implementando punteros basados en la relación
  de mapeo de índices entre nodos padre y nodos hijo.
- El recorrido por niveles de un árbol binario es un método de búsqueda
  en amplitud, que refleja una forma de recorrido capa por capa de
  "expansión círculo por círculo". Generalmente se implementa usando una
  cola.
- Los recorridos en preorden, inorden y postorden son todos métodos de
  búsqueda en profundidad, que reflejan la forma de recorrido de "ir al
  final primero, luego retroceder para continuar". Generalmente se
  implementan usando recursión.
- Un árbol de búsqueda binaria es una estructura de datos eficiente para
  la búsqueda de elementos, con una complejidad temporal de las
  operaciones de búsqueda, inserción y eliminación de $O \( log n \)$.
  Cuando un árbol de búsqueda binaria degenera en una lista enlazada,
  estas complejidades temporales se deterioran a $O \( n \)$.
- Un árbol AVL, también conocido como árbol de búsqueda binaria
  equilibrado, asegura que el árbol permanezca equilibrado después de
  inserciones y eliminaciones continuas de nodos a través de operaciones
  de rotación.
- Las operaciones de rotación en un árbol AVL incluyen rotación a la
  derecha, rotación a la izquierda, rotación derecha-izquierda y
  rotación izquierda-derecha. Después de la inserción o eliminación de
  nodos, el árbol AVL se reequilibra realizando estas rotaciones de
  abajo hacia arriba.

=== Preguntas y respuestas
<preguntas-y-respuestas>
#strong[P];: Para un árbol binario con un solo nodo, ¿la altura del
árbol y la profundidad del nodo raíz son ambas $0$?

Sí, porque la altura y la profundidad se definen típicamente como "el
número de aristas recorridas".

#strong[P];: La inserción y eliminación en un árbol binario generalmente
se logran mediante un conjunto de operaciones. ¿A qué se refiere aquí
"un conjunto de operaciones"? ¿Implica liberar los recursos de los nodos
hijos?

Tomando como ejemplo el árbol de búsqueda binaria, la operación de
eliminar un nodo debe manejarse en tres escenarios diferentes, cada uno
de los cuales requiere múltiples pasos de operaciones de nodo.

#strong[P];: ¿Por qué hay tres secuencias: preorden, inorden y postorden
para el recorrido DFS de un árbol binario, y cuáles son sus usos?

Similar al recorrido secuencial y inverso de arreglos, los recorridos en
preorden, inorden y postorden son tres métodos para recorrer un árbol
binario, lo que nos permite obtener un resultado de recorrido en un
orden específico. Por ejemplo, en un árbol de búsqueda binaria, dado que
los tamaños de los nodos satisfacen
`valor del nodo hijo izquierdo < valor del nodo raíz < valor del nodo hijo derecho`,
podemos obtener una secuencia de nodos ordenada recorriendo el árbol con
la prioridad "izquierda $arrow.r$ raíz $arrow.r$ derecha".

#strong[P];: En una operación de rotación a la derecha que trata con la
relación entre los nodos de desequilibrio `node`, `child`,
`grand_child`, ¿no se pierde la conexión entre `node` y su nodo padre y
el enlace original de `node` después de la rotación a la derecha?

Necesitamos ver este problema desde una perspectiva recursiva. La
operación `right_rotate(root)` pasa el nodo raíz del subárbol y
finalmente devuelve el nodo raíz del subárbol rotado con `return child`.
La conexión entre el nodo raíz del subárbol y su nodo padre se establece
después de que esta función regresa, lo cual está fuera del alcance del
mantenimiento de la operación de rotación a la derecha.

#strong[P];: En C++, las funciones se dividen en secciones `private` y
`public`. ¿Qué consideraciones hay para esto? ¿Por qué la función
`height()` y la función `updateHeight()` se colocan en `public` y
`private`, respectivamente?

Depende del alcance del uso del método. Si un método solo se usa dentro
de la clase, entonces está diseñado para ser `private`. Por ejemplo, no
tiene sentido que los usuarios llamen a `updateHeight()` por su cuenta,
ya que es solo un paso en las operaciones de inserción o eliminación.
Sin embargo, `height()` es para acceder a la altura del nodo, similar a
`vector.size()`, por lo que se establece en `public` para su uso.

#strong[P];: ¿Cómo se construye un árbol de búsqueda binaria a partir de
un conjunto de datos de entrada? ¿Es muy importante la elección del nodo
raíz?

Sí, el método para construir el árbol se proporciona en el método
`build_tree()` en el código del árbol de búsqueda binaria. En cuanto a
la elección del nodo raíz, generalmente ordenamos los datos de entrada y
luego seleccionamos el elemento central como nodo raíz, construyendo
recursivamente los subárboles izquierdo y derecho. Este enfoque maximiza
el equilibrio del árbol.

#strong[P];: En Java, ¿siempre hay que usar el método `equals()` para la
comparación de cadenas?

En Java, para los tipos de datos primitivos, `==` se usa para comparar
si los valores de dos variables son iguales. Para los tipos de
referencia, los principios de funcionamiento de los dos símbolos son
diferentes.

- `==`: Se usa para comparar si dos variables apuntan al mismo objeto,
  es decir, si sus posiciones en la memoria son las mismas.
- `equals()`: Se usa para comparar si los valores de dos objetos son
  iguales.

Por lo tanto, para comparar valores, debemos usar `equals()`. Sin
embargo, las cadenas inicializadas con
`String a = "hi"; String b = "hi";` se almacenan en el grupo de
constantes de cadena y apuntan al mismo objeto, por lo que `a == b`
también se puede usar para comparar el contenido de dos cadenas.

#strong[P];: Antes de llegar al nivel inferior, ¿el número de nodos en
la cola es $2^h$ en el recorrido en amplitud?

Sí, por ejemplo, un árbol binario completo con altura $h = 2$ tiene un
total de $n = 7$ nodos, entonces el nivel inferior tiene
$4 = 2^h = \( n + 1 \) \/ 2$ nodos.
= Montículo
<montículo>
#figure(image("es/docs/assets/covers/chapter_heap.jpg"),
  caption: [
    Montículo
  ]
)

!!! abstract

```
Los montículos se asemejan a montañas y sus picos irregulares, en capas y ondulados, cada uno con su forma única.

Cada pico de montaña sube y baja en alturas dispersas, pero el más alto siempre capta la atención primero.
```
= Montículo
<montículo>
Un montículo es un árbol binario completo que satisface condiciones
específicas y se puede clasificar principalmente en dos tipos, como se
muestra en la figura a continuación.

- montículo mínimo: El valor de cualquier nodo $lt.eq$ los valores de
  sus nodos hijos.
- montículo máximo: El valor de cualquier nodo $gt.eq$ los valores de
  sus nodos hijos.

#figure(image("es/docs/chapter_heap/heap.assets/min_heap_and_max_heap.png"),
  caption: [
    Montículo mínimo y montículo máximo
  ]
)

Como caso especial de un árbol binario completo, un montículo tiene las
siguientes características:

- Los nodos de la capa inferior se llenan de izquierda a derecha, y los
  nodos de otras capas están completamente llenos.
- El nodo raíz del árbol binario se llama la "cima" del montículo, y el
  nodo más a la derecha de la parte inferior se llama el "fondo" del
  montículo.
- Para los montículos máximos (montículos mínimos), el valor del
  elemento superior (raíz) es el más grande (más pequeño) entre todos
  los elementos.

== Operaciones comunes del montículo
<operaciones-comunes-del-montículo>
Cabe señalar que muchos lenguajes de programación proporcionan una cola
de prioridad, que es una estructura de datos abstracta definida como una
cola con ordenación de prioridad.

En la práctica, #strong[los montículos se utilizan a menudo para
implementar colas de prioridad. Un montículo máximo corresponde a una
cola de prioridad donde los elementos se desencolan en orden
descendente];. Desde una perspectiva de uso, podemos considerar "cola de
prioridad" y "montículo" como estructuras de datos equivalentes. Por lo
tanto, este libro no hace una distinción especial entre los dos,
refiriéndose uniformemente a ellos como "montículo".

Las operaciones comunes en los montículos se muestran en la tabla a
continuación, y los nombres de los métodos pueden variar según el
lenguaje de programación.

Tabla ~ Eficiencia de las operaciones del montículo
#figure(
  align(center)[#table(
    columns: (12.79%, 69.77%, 17.44%),
    align: (auto,auto,auto,),
    table.header([Nombre del método], [Descripción], [Complejidad
      temporal],),
    table.hline(),
    [`push()`], [Agregar un elemento al montículo], [$O \( log n \)$],
    [`pop()`], [Eliminar el elemento superior del
    montículo], [$O \( log n \)$],
    [`peek()`], [Acceder al elemento superior (para montículo
    máximo/mínimo, el valor máximo/mínimo)], [$O \( 1 \)$],
    [`size()`], [Obtener el número de elementos en el
    montículo], [$O \( 1 \)$],
    [`isEmpty()`], [Comprobar si el montículo está
    vacío], [$O \( 1 \)$],
  )]
  , kind: table
  )

En la práctica, podemos usar directamente la clase de montículo (o clase
de cola de prioridad) proporcionada por los lenguajes de programación.

Similar a los algoritmos de ordenación donde tenemos "orden ascendente"
y "orden descendente", podemos cambiar entre "montículo mínimo" y
"montículo máximo" estableciendo una `flag` o modificando el
`Comparator`. El código es el siguiente:

\=== "Python"

````
```python title="heap.py"
# Inicializar un montículo mínimo
min_heap, flag = [], 1
# Inicializar un montículo máximo
max_heap, flag = [], -1

# El módulo heapq de Python implementa un montículo mínimo por defecto
# Al negar los elementos antes de empujarlos al montículo, invertimos el orden y así implementamos un montículo máximo
# En este ejemplo, flag = 1 corresponde a un montículo mínimo, mientras que flag = -1 corresponde a un montículo máximo

# Empujar elementos al montículo
heapq.heappush(max_heap, flag * 1)
heapq.heappush(max_heap, flag * 3)
heapq.heappush(max_heap, flag * 2)
heapq.heappush(max_heap, flag * 5)
heapq.heappush(max_heap, flag * 4)

# Recuperar el elemento superior del montículo
peek: int = flag * max_heap[0] # 5

# Sacar el elemento superior del montículo
# Los elementos sacados formarán una secuencia en orden descendente
val = flag * heapq.heappop(max_heap) # 5
val = flag * heapq.heappop(max_heap) # 4
val = flag * heapq.heappop(max_heap) # 3
val = flag * heapq.heappop(max_heap) # 2
val = flag * heapq.heappop(max_heap) # 1

# Obtener el tamaño del montículo
size: int = len(max_heap)

# Comprobar si el montículo está vacío
is_empty: bool = not max_heap

# Crear un montículo a partir de una lista
min_heap: list[int] = [1, 3, 2, 5, 4]
heapq.heapify(min_heap)
```
````

== Implementación del montículo
<implementación-del-montículo>
La siguiente implementación es de un montículo máximo. Para convertirlo
en un montículo mínimo, simplemente invierta todas las comparaciones
lógicas de tamaño (por ejemplo, reemplace $gt.eq$ con $lt.eq$). Se anima
a los lectores interesados a implementarlo por su cuenta.

=== Almacenamiento y representación del montículo
<almacenamiento-y-representación-del-montículo>
Como se mencionó en la sección "Árboles binarios", los árboles binarios
completos son muy adecuados para la representación en arreglos. Dado que
los montículos son un tipo de árbol binario completo,
#strong[utilizaremos arreglos para almacenar montículos];.

Al usar un arreglo para representar un árbol binario, los elementos
representan los valores de los nodos y los índices representan las
posiciones de los nodos en el árbol binario. #strong[Los punteros de los
nodos se implementan a través de una fórmula de mapeo de índices];.

Como se muestra en la figura a continuación, dado un índice $i$, el
índice de su hijo izquierdo es $2 i + 1$, el índice de su hijo derecho
es $2 i + 2$, y el índice de su padre es $\( i - 1 \) \/ 2$ (división
entera). Cuando el índice está fuera de los límites, significa un nodo
nulo o que el nodo no existe.

#figure(image("es/docs/chapter_heap/heap.assets/representation_of_heap.png"),
  caption: [
    Representación y almacenamiento de montículos
  ]
)

Podemos encapsular la fórmula de mapeo de índices en funciones para un
uso posterior conveniente:

```src
[file]{my_heap}-[class]{max_heap}-[func]{parent}
```

=== Acceso al elemento superior del montículo
<acceso-al-elemento-superior-del-montículo>
El elemento superior del montículo es el nodo raíz del árbol binario,
que también es el primer elemento de la lista:

```src
[file]{my_heap}-[class]{max_heap}-[func]{peek}
```

=== Inserción de un elemento en el montículo
<inserción-de-un-elemento-en-el-montículo>
Dado un elemento `val`, primero lo agregamos al fondo del montículo.
Después de la adición, dado que `val` puede ser mayor que otros
elementos en el montículo, la integridad del montículo podría verse
comprometida, #strong[por lo que es necesario reparar la ruta desde el
nodo insertado hasta el nodo raíz];. Esta operación se llama heapify.

Considerando comenzar desde el nodo insertado, #strong[realice heapify
de abajo hacia arriba];. Como se muestra en la figura a continuación,
comparamos el valor del nodo insertado con su nodo padre, y si el nodo
insertado es mayor, los intercambiamos. Luego, continuamos esta
operación, reparando cada nodo en el montículo de abajo hacia arriba
hasta llegar a la raíz o a un nodo que no necesita intercambio.

\=== "\<1\>" #box(image("es/docs/chapter_heap/heap.assets/heap_push_step1.png"))

\=== "\<2\>" #box(image("es/docs/chapter_heap/heap.assets/heap_push_step2.png"))

\=== "\<3\>" #box(image("es/docs/chapter_heap/heap.assets/heap_push_step3.png"))

\=== "\<4\>" #box(image("es/docs/chapter_heap/heap.assets/heap_push_step4.png"))

\=== "\<5\>" #box(image("es/docs/chapter_heap/heap.assets/heap_push_step5.png"))

\=== "\<6\>" #box(image("es/docs/chapter_heap/heap.assets/heap_push_step6.png"))

\=== "\<7\>" #box(image("es/docs/chapter_heap/heap.assets/heap_push_step7.png"))

\=== "\<8\>" #box(image("es/docs/chapter_heap/heap.assets/heap_push_step8.png"))

\=== "\<9\>" #box(image("es/docs/chapter_heap/heap.assets/heap_push_step9.png"))

Dado un total de $n$ nodos, la altura del árbol es $O \( log n \)$. Por
lo tanto, las iteraciones del bucle para la operación heapify son como
máximo $O \( log n \)$, #strong[lo que hace que la complejidad temporal
de la operación de inserción de elementos sea $O \( log n \)$];. El
código es el siguiente:

```src
[file]{my_heap}-[class]{max_heap}-[func]{sift_up}
```

=== Eliminación del elemento superior del montículo
<eliminación-del-elemento-superior-del-montículo>
El elemento superior del montículo es el nodo raíz del árbol binario, es
decir, el primer elemento de la lista. Si eliminamos directamente el
primer elemento de la lista, todos los índices de los nodos en el árbol
binario cambiarán, lo que dificultará el uso de heapify para
reparaciones posteriores. Para minimizar los cambios en los índices de
los elementos, utilizamos los siguientes pasos.

+ Intercambie el elemento superior con el elemento inferior del
  montículo (intercambie el nodo raíz con el nodo hoja más a la
  derecha).
+ Después del intercambio, elimine la parte inferior del montículo de la
  lista (tenga en cuenta que, dado que se ha intercambiado, el elemento
  superior original se está eliminando).
+ Comenzando desde el nodo raíz, #strong[realice heapify de arriba hacia
  abajo];.

Como se muestra en la figura a continuación, #strong[la dirección de
"heapify de arriba hacia abajo" es opuesta a "heapify de abajo hacia
arriba"];. Comparamos el valor del nodo raíz con sus dos hijos y lo
intercambiamos con el hijo más grande. Luego, repetimos esta operación
hasta llegar al nodo hoja o encontrar un nodo que no necesite
intercambio.

\=== "\<1\>" #box(image("es/docs/chapter_heap/heap.assets/heap_pop_step1.png"))

\=== "\<2\>" #box(image("es/docs/chapter_heap/heap.assets/heap_pop_step2.png"))

\=== "\<3\>" #box(image("es/docs/chapter_heap/heap.assets/heap_pop_step3.png"))

\=== "\<4\>" #box(image("es/docs/chapter_heap/heap.assets/heap_pop_step4.png"))

\=== "\<5\>" #box(image("es/docs/chapter_heap/heap.assets/heap_pop_step5.png"))

\=== "\<6\>" #box(image("es/docs/chapter_heap/heap.assets/heap_pop_step6.png"))

\=== "\<7\>" #box(image("es/docs/chapter_heap/heap.assets/heap_pop_step7.png"))

\=== "\<8\>" #box(image("es/docs/chapter_heap/heap.assets/heap_pop_step8.png"))

\=== "\<9\>" #box(image("es/docs/chapter_heap/heap.assets/heap_pop_step9.png"))

\=== "\<10\>" #box(image("es/docs/chapter_heap/heap.assets/heap_pop_step10.png"))

Similar a la operación de inserción de elementos, la complejidad
temporal de la operación de eliminación del elemento superior también es
$O \( log n \)$. El código es el siguiente:

```src
[file]{my_heap}-[class]{max_heap}-[func]{sift_down}
```

== Aplicaciones comunes de los montículos
<aplicaciones-comunes-de-los-montículos>
- #strong[Cola de prioridad];: Los montículos suelen ser la estructura
  de datos preferida para implementar colas de prioridad, con
  operaciones de encolar y desencolar con una complejidad temporal de
  $O \( log n \)$, y la construcción de una cola con una complejidad
  temporal de $O \( n \)$, todas ellas muy eficientes.
- #strong[Ordenación por montículos];: Dado un conjunto de datos,
  podemos crear un montículo a partir de ellos y luego realizar
  continuamente operaciones de eliminación de elementos para obtener
  datos ordenados. Sin embargo, existe una forma más elegante de
  implementar la ordenación por montículos, como se explica en el
  capítulo "Ordenación por montículos".
- #strong[Encontrar los $k$ elementos más grandes];: Este es un problema
  algorítmico clásico y también un caso de uso común, como seleccionar
  las 10 noticias más populares para la búsqueda en caliente de Weibo,
  elegir los 10 productos más vendidos, etc.
= Operación de construcción de montículo
<operación-de-construcción-de-montículo>
En algunos casos, queremos construir un montículo utilizando todos los
elementos de una lista, y este proceso se conoce como "operación de
construcción de montículo".

== Implementación con operación de inserción de montículo
<implementación-con-operación-de-inserción-de-montículo>
Primero, creamos un montículo vacío y luego iteramos a través de la
lista, realizando la "operación de inserción de montículo" en cada
elemento a su vez. Esto significa agregar el elemento al final del
montículo y luego "heapificarlo" de abajo hacia arriba.

Cada vez que se agrega un elemento al montículo, la longitud del
montículo aumenta en uno. Dado que los nodos se agregan al árbol binario
de arriba hacia abajo, el montículo se construye "de arriba hacia
abajo".

Sea $n$ el número de elementos, y la operación de inserción de cada
elemento toma $O \( log n \)$ tiempo, por lo tanto, la complejidad
temporal de este método de construcción de montículo es
$O \( n log n \)$.

== Implementación mediante heapify a través del recorrido
<implementación-mediante-heapify-a-través-del-recorrido>
De hecho, podemos implementar un método más eficiente de construcción de
montículos en dos pasos.

+ Agregue todos los elementos de la lista tal como están al montículo;
  en este punto, las propiedades del montículo aún no se satisfacen.
+ Recorra el montículo en orden inverso (inverso del recorrido por
  niveles) y realice "heapify de arriba hacia abajo" en cada nodo no
  hoja.

#strong[Después de heapificar un nodo, el subárbol con ese nodo como
raíz se convierte en un submontículo válido];. Dado que el recorrido es
en orden inverso, el montículo se construye "de abajo hacia arriba".

La razón para elegir el recorrido inverso es que asegura que el subárbol
debajo del nodo actual ya es un submontículo válido, lo que hace que la
heapificación del nodo actual sea efectiva.

Vale la pena mencionar que #strong[dado que los nodos hoja no tienen
hijos, naturalmente forman submontículos válidos y no necesitan ser
heapificados];. Como se muestra en el siguiente código, el último nodo
no hoja es el padre del último nodo; comenzamos desde él y recorremos en
orden inverso para realizar la heapificación:

```src
[file]{my_heap}-[class]{max_heap}-[func]{__init__}
```

== Análisis de complejidad
<análisis-de-complejidad>
A continuación, intentaremos calcular la complejidad temporal de este
segundo método de construcción de montículos.

- Suponiendo que el número de nodos en el árbol binario completo es $n$,
  entonces el número de nodos hoja es $\( n + 1 \) \/ 2$, donde $\/$ es
  la división entera. Por lo tanto, el número de nodos que necesitan ser
  heapificados es $\( n - 1 \) \/ 2$.
- En el proceso de "heapify de arriba hacia abajo", cada nodo se
  heapifica a los nodos hoja como máximo, por lo que el número máximo de
  iteraciones es la altura del árbol binario $log n$.

Multiplicando los dos, obtenemos la complejidad temporal del proceso de
construcción del montículo como $O \( n log n \)$. #strong[Pero esta
estimación no es precisa, porque no tiene en cuenta la naturaleza del
árbol binario que tiene muchos más nodos en los niveles inferiores que
en la parte superior.]

Realicemos un cálculo más preciso. Para simplificar el cálculo,
supongamos un "árbol binario perfecto" con $n$ nodos y altura $h$; esta
suposición no afecta la corrección del resultado.

#figure(image("es/docs/chapter_heap/build_heap.assets/heapify_operations_count.png"),
  caption: [
    Recuento de nodos en cada nivel de un árbol binario perfecto
  ]
)

Como se muestra en la figura anterior, el número máximo de iteraciones
para que un nodo "sea heapificado de arriba hacia abajo" es igual a la
distancia desde ese nodo hasta los nodos hoja, que es precisamente la
"altura del nodo". Por lo tanto, podemos sumar el "número de nodos
$times$ altura del nodo" en cada nivel, #strong[para obtener el número
total de iteraciones de heapificación para todos los nodos];.

$ T \( h \) = 2^0 h + 2^1 \( h - 1 \) + 2^2 \( h - 2 \) + dots.h + 2^(\( h - 1 \)) times 1 $

Para simplificar la ecuación anterior, necesitamos usar el conocimiento
de secuencias de la escuela secundaria, primero multiplicar $T \( h \)$
por $2$, para obtener:

$ T \( h \) & = 2^0 h + 2^1 \( h - 1 \) + 2^2 \( h - 2 \) + dots.h + 2^(h - 1) times 1\
2 T \( h \) & = 2^1 h + 2^2 \( h - 1 \) + 2^3 \( h - 2 \) + dots.h + 2^h times 1\
 $

Restando $T \( h \)$ de $2 T \( h \)$ usando el método de
desplazamiento, obtenemos:

$ 2 T \( h \) - T \( h \) = T \( h \) = - 2^0 h + 2^1 + 2^2 + dots.h + 2^(h - 1) + 2^h $

Observando la ecuación, $T \( h \)$ es una serie geométrica, que se
puede calcular directamente usando la fórmula de la suma, lo que resulta
en una complejidad temporal de:

$ T \( h \) & = 2 frac(1 - 2^h, 1 - 2) - h\
 & = 2^(h + 1) - h - 2\
 & = O \( 2^h \) $

Además, un árbol binario perfecto con altura $h$ tiene
$n = 2^(h + 1) - 1$ nodos, por lo que la complejidad es
$O \( 2^h \) = O \( n \)$. Este cálculo muestra que #strong[la
complejidad temporal de introducir una lista y construir un montículo es
$O \( n \)$, lo cual es muy eficiente];.
= Problema Top-k
<problema-top-k>
!!! question

```
Dado un arreglo desordenado `nums` de longitud $n$, devuelva los $k$ elementos más grandes del arreglo.
```

Para este problema, primero introduciremos dos soluciones sencillas,
luego explicaremos un método más eficiente basado en montículos.

== Método 1: Selección iterativa
<método-1-selección-iterativa>
Podemos realizar $k$ rondas de iteraciones como se muestra en la figura
a continuación, extrayendo los elementos $1^(upright("er"))$,
$2^(upright("do"))$, $dots.h$, $k^(upright("ésimo"))$ más grandes en
cada ronda, con una complejidad temporal de $O \( n k \)$.

Este método solo es adecuado cuando $k lt.double n$, ya que la
complejidad temporal se acerca a $O \( n^2 \)$ cuando $k$ está cerca de
$n$, lo cual consume mucho tiempo.

#figure(image("es/docs/chapter_heap/top_k.assets/top_k_traversal.png"),
  caption: [
    Encontrando iterativamente los k elementos más grandes
  ]
)

!!! tip

```
Cuando $k = n$, podemos obtener una secuencia ordenada completa, lo que equivale al algoritmo de "ordenación por selección".
```

== Método 2: Ordenación
<método-2-ordenación>
Como se muestra en la figura a continuación, podemos ordenar primero el
arreglo `nums` y luego devolver los últimos $k$ elementos, con una
complejidad temporal de $O \( n log n \)$.

Claramente, este método "excede" la tarea, ya que solo necesitamos
encontrar los $k$ elementos más grandes, sin necesidad de ordenar los
otros elementos.

#figure(image("es/docs/chapter_heap/top_k.assets/top_k_sorting.png"),
  caption: [
    Ordenación para encontrar los k elementos más grandes
  ]
)

== Método 3: Montículo
<método-3-montículo>
Podemos resolver el problema Top-k de manera más eficiente basándonos en
montículos, como se muestra en el siguiente proceso.

+ Inicialice un montículo mínimo, donde el elemento superior es el más
  pequeño.
+ Primero, inserte los primeros $k$ elementos del arreglo en el
  montículo.
+ A partir del elemento $k + 1^(upright("ésimo"))$, si el elemento
  actual es mayor que el elemento superior del montículo, elimine el
  elemento superior del montículo e inserte el elemento actual en el
  montículo.
+ Después de completar el recorrido, el montículo contiene los $k$
  elementos más grandes.

\=== "\<1\>" #box(image("es/docs/chapter_heap/top_k.assets/top_k_heap_step1.png"))

\=== "\<2\>" #box(image("es/docs/chapter_heap/top_k.assets/top_k_heap_step2.png"))

\=== "\<3\>" #box(image("es/docs/chapter_heap/top_k.assets/top_k_heap_step3.png"))

\=== "\<4\>" #box(image("es/docs/chapter_heap/top_k.assets/top_k_heap_step4.png"))

\=== "\<5\>" #box(image("es/docs/chapter_heap/top_k.assets/top_k_heap_step5.png"))

\=== "\<6\>" #box(image("es/docs/chapter_heap/top_k.assets/top_k_heap_step6.png"))

\=== "\<7\>" #box(image("es/docs/chapter_heap/top_k.assets/top_k_heap_step7.png"))

\=== "\<8\>" #box(image("es/docs/chapter_heap/top_k.assets/top_k_heap_step8.png"))

\=== "\<9\>" #box(image("es/docs/chapter_heap/top_k.assets/top_k_heap_step9.png"))

El código de ejemplo es el siguiente:

```src
[file]{top_k}-[class]{}-[func]{top_k_heap}
```

Se realizan un total de $n$ rondas de inserciones y eliminaciones de
montículos, siendo el tamaño máximo del montículo $k$, por lo que la
complejidad temporal es $O \( n log k \)$. Este método es muy eficiente;
cuando $k$ es pequeño, la complejidad temporal tiende a $O \( n \)$;
cuando $k$ es grande, la complejidad temporal no excederá
$O \( n log n \)$.

Además, este método es adecuado para escenarios con flujos de datos
dinámicos. Al agregar datos continuamente, podemos mantener los
elementos dentro del montículo, logrando así actualizaciones dinámicas
de los $k$ elementos más grandes.
= Resumen
<resumen>
=== Revisión clave
<revisión-clave>
- Un montículo es un árbol binario completo que se puede clasificar como
  un montículo máximo o un montículo mínimo según su propiedad de
  construcción, donde el elemento superior de un montículo máximo es el
  más grande y el elemento superior de un montículo mínimo es el más
  pequeño.
- Una cola de prioridad se define como una cola con prioridad de
  desencolado, generalmente implementada usando un montículo.
- Las operaciones comunes de un montículo y sus complejidades temporales
  correspondientes incluyen: inserción de elementos en el montículo
  $O \( log n \)$, eliminación del elemento superior del montículo
  $O \( log n \)$ y acceso al elemento superior del montículo
  $O \( 1 \)$.
- Un árbol binario completo es adecuado para ser representado por un
  arreglo, por lo que los montículos se almacenan comúnmente usando
  arreglos.
- Las operaciones de heapify se utilizan para mantener las propiedades
  del montículo y se utilizan tanto en las operaciones de inserción como
  de eliminación del montículo.
- La complejidad temporal de construir un montículo dado una entrada de
  $n$ elementos se puede optimizar a $O \( n \)$, lo cual es altamente
  eficiente.
- Top-k es un problema algorítmico clásico que se puede resolver
  eficientemente utilizando la estructura de datos del montículo, con
  una complejidad temporal de $O \( n log k \)$.

=== Preguntas y respuestas
<preguntas-y-respuestas>
#strong[P];: ¿El "montículo" en las estructuras de datos es el mismo
concepto que el "montículo" en la gestión de memoria?

Los dos no son el mismo concepto, aunque ambos se denominan "montículo".
El montículo en la memoria del sistema informático es parte de la
asignación dinámica de memoria, donde el programa puede usarlo para
almacenar datos durante la ejecución. El programa puede solicitar una
cierta cantidad de memoria del montículo para almacenar estructuras
complejas como objetos y arreglos. Cuando los datos asignados ya no son
necesarios, el programa necesita liberar esta memoria para evitar fugas
de memoria. En comparación con la memoria de la pila, la gestión y el
uso de la memoria del montículo exigen más precaución, ya que un uso
inadecuado puede provocar fugas de memoria y punteros colgantes.
= Grafo
<grafo>
#figure(image("es/docs/assets/covers/chapter_graph.jpg"),
  caption: [
    Grafo
  ]
)

!!! abstract

```
En el viaje de la vida, cada uno de nosotros es un nodo, conectado por innumerables aristas invisibles.

Cada encuentro y despedida deja una huella única en este vasto grafo de la vida.
```
= Grafo
<grafo>
Un grafo es un tipo de estructura de datos no lineal, que consta de
vértices y aristas. Un grafo $G$ se puede representar abstractamente
como una colección de un conjunto de vértices $V$ y un conjunto de
aristas $E$. El siguiente ejemplo muestra un grafo que contiene 5
vértices y 7 aristas.

$ V & = { 1 \, 2 \, 3 \, 4 \, 5 }\
E & = { \( 1 \, 2 \) \, \( 1 \, 3 \) \, \( 1 \, 5 \) \, \( 2 \, 3 \) \, \( 2 \, 4 \) \, \( 2 \, 5 \) \, \( 4 \, 5 \) }\
G & = { V \, E }\
 $

Si los vértices se ven como nodos y las aristas como referencias
(punteros) que conectan los nodos, los grafos pueden verse como una
estructura de datos que se extiende a partir de las listas enlazadas.
Como se muestra en la figura a continuación, #strong[en comparación con
las relaciones lineales (listas enlazadas) y las relaciones de divide y
vencerás (árboles), las relaciones de red (grafos) son más complejas
debido a su mayor grado de libertad];.

#figure(image("es/docs/chapter_graph/graph.assets/linkedlist_tree_graph.png"),
  caption: [
    Relación entre listas enlazadas, árboles y grafos
  ]
)

== Tipos comunes y terminologías de grafos
<tipos-comunes-y-terminologías-de-grafos>
Los grafos se pueden dividir en grafos no dirigidos y grafos dirigidos
dependiendo de si las aristas tienen dirección, como se muestra en la
figura a continuación.

- En grafos no dirigidos, las aristas representan una conexión
  "bidireccional" entre dos vértices, por ejemplo, los "amigos" en
  Facebook.
- En grafos dirigidos, las aristas tienen direccionalidad, es decir, las
  aristas $A arrow.r B$ y $A arrow.l B$ son independientes entre sí. Por
  ejemplo, la relación de "seguir" y "seguido" en Instagram o TikTok.

#figure(image("es/docs/chapter_graph/graph.assets/directed_graph.png"),
  caption: [
    Grafos dirigidos y no dirigidos
  ]
)

Dependiendo de si todos los vértices están conectados, los grafos se
pueden dividir en grafos conectados y grafos desconectados, como se
muestra en la figura a continuación.

- Para grafos conectados, es posible llegar a cualquier otro vértice
  partiendo de un vértice arbitrario.
- Para grafos desconectados, hay al menos un vértice al que no se puede
  llegar desde un vértice inicial arbitrario.

#figure(image("es/docs/chapter_graph/graph.assets/connected_graph.png"),
  caption: [
    Grafos conectados y desconectados
  ]
)

También podemos agregar una variable de peso a las aristas, lo que da
como resultado grafos ponderados como se muestra en la figura a
continuación. Por ejemplo, en Instagram, el sistema ordena su lista de
seguidores y seguidos por el nivel de interacción entre usted y otros
usuarios (me gusta, vistas, comentarios, etc.). Dicha red de interacción
se puede representar mediante un grafo ponderado.

#figure(image("es/docs/chapter_graph/graph.assets/weighted_graph.png"),
  caption: [
    Grafos ponderados y no ponderados
  ]
)

Las estructuras de datos de grafos incluyen los siguientes términos de
uso común.

- Adyacencia: Cuando hay una arista que conecta dos vértices, se dice
  que estos dos vértices son "adyacentes". En la figura anterior, los
  vértices adyacentes al vértice 1 son los vértices 2, 3 y 5.
- Ruta: La secuencia de aristas que se pasan del vértice A al vértice B
  se denomina ruta de A a B. En la figura anterior, la secuencia de
  aristas 1-5-2-4 es una ruta del vértice 1 al vértice 4.
- Grado: El número de aristas que tiene un vértice. Para grafos
  dirigidos, el grado de entrada se refiere a cuántas aristas apuntan al
  vértice, y el grado de salida se refiere a cuántas aristas apuntan
  desde el vértice.

== Representación de grafos
<representación-de-grafos>
Las representaciones comunes de grafos incluyen "matriz de adyacencia" y
"lista de adyacencia". Los siguientes ejemplos utilizan grafos no
dirigidos.

=== Matriz de adyacencia
<matriz-de-adyacencia>
Sea $n$ el número de vértices en el grafo, la matriz de adyacencia
utiliza una matriz de $n times n$ para representar el grafo, donde cada
fila (columna) representa un vértice, y los elementos de la matriz
representan aristas, con $1$ o $0$ indicando si hay una arista entre dos
vértices.

Como se muestra en la figura a continuación, sea $M$ la matriz de
adyacencia y $V$ la lista de vértices, entonces el elemento de la matriz
$M \[ i \, j \] = 1$ indica que hay una arista entre el vértice
$V \[ i \]$ y el vértice $V \[ j \]$, por el contrario
$M \[ i \, j \] = 0$ indica que no hay una arista entre los dos
vértices.

#figure(image("es/docs/chapter_graph/graph.assets/adjacency_matrix.png"),
  caption: [
    Representación de un grafo con una matriz de adyacencia
  ]
)

Las matrices de adyacencia tienen las siguientes características.

- Un vértice no puede conectarse a sí mismo, por lo que los elementos de
  la diagonal principal de la matriz de adyacencia carecen de sentido.
- Para grafos no dirigidos, las aristas en ambas direcciones son
  equivalentes, por lo que la matriz de adyacencia es simétrica con
  respecto a la diagonal principal.
- Al reemplazar los elementos de la matriz de adyacencia de $1$ y $0$
  por pesos, podemos representar grafos ponderados.

Al representar grafos con matrices de adyacencia, es posible acceder
directamente a los elementos de la matriz para obtener aristas, lo que
resulta en operaciones eficientes de adición, eliminación, búsqueda y
modificación, todas con una complejidad temporal de $O \( 1 \)$. Sin
embargo, la complejidad espacial de la matriz es $O \( n^2 \)$, lo que
consume más memoria.

=== Lista de adyacencia
<lista-de-adyacencia>
La lista de adyacencia utiliza $n$ listas enlazadas para representar el
grafo, donde cada nodo de la lista enlazada representa un vértice. La
$i$-ésima lista enlazada corresponde al vértice $i$ y contiene todos los
vértices adyacentes (vértices conectados a ese vértice). La figura a
continuación muestra un ejemplo de un grafo almacenado usando una lista
de adyacencia.

#figure(image("es/docs/chapter_graph/graph.assets/adjacency_list.png"),
  caption: [
    Representación de un grafo con una lista de adyacencia
  ]
)

La lista de adyacencia solo almacena aristas reales, y el número total
de aristas suele ser mucho menor que $n^2$, lo que la hace más eficiente
en espacio. Sin embargo, encontrar aristas en la lista de adyacencia
requiere recorrer la lista enlazada, por lo que su eficiencia temporal
no es tan buena como la de la matriz de adyacencia.

Observando la figura anterior, #strong[la estructura de la lista de
adyacencia es muy similar al "encadenamiento" en las tablas hash, por lo
que podemos usar métodos similares para optimizar la eficiencia];. Por
ejemplo, cuando la lista enlazada es larga, se puede transformar en un
árbol AVL o un árbol rojo-negro, optimizando así la eficiencia temporal
de $O \( n \)$ a $O \( log n \)$; la lista enlazada también se puede
transformar en una tabla hash, reduciendo así la complejidad temporal a
$O \( 1 \)$.

== Aplicaciones comunes de los grafos
<aplicaciones-comunes-de-los-grafos>
Como se muestra en la tabla a continuación, muchos sistemas del mundo
real se pueden modelar con grafos, y los problemas correspondientes se
pueden reducir a problemas de computación de grafos.

Tabla ~ Grafos comunes en la vida real
#figure(
  align(center)[#table(
    columns: (13.89%, 14.81%, 41.67%, 29.63%),
    align: (auto,auto,auto,auto,),
    table.header([], [Vértices], [Aristas], [Problema de computación de
      grafos],),
    table.hline(),
    [Redes sociales], [Usuarios], [Seguir / Seguido], [Recomendaciones
    de seguimiento potencial],
    [Líneas de metro], [Estaciones], [Conectividad entre
    estaciones], [Recomendaciones de ruta más corta],
    [Sistema solar], [Cuerpos celestes], [Fuerzas gravitacionales entre
    cuerpos celestes], [Cálculos de órbita planetaria],
  )]
  , kind: table
  )
= Operaciones básicas en grafos
<operaciones-básicas-en-grafos>
Las operaciones básicas en grafos se pueden dividir en operaciones sobre
"aristas" y operaciones sobre "vértices". Bajo los dos métodos de
representación de "matriz de adyacencia" y "lista de adyacencia", las
implementaciones son diferentes.

== Implementación basada en matriz de adyacencia
<implementación-basada-en-matriz-de-adyacencia>
Dado un grafo no dirigido con $n$ vértices, las diversas operaciones se
implementan como se muestra en la figura a continuación.

- #strong[Agregar o eliminar una arista];: Modifique directamente la
  arista especificada en la matriz de adyacencia, utilizando tiempo
  $O \( 1 \)$. Dado que es un grafo no dirigido, es necesario actualizar
  las aristas en ambas direcciones simultáneamente.
- #strong[Agregar un vértice];: Agregue una fila y una columna al final
  de la matriz de adyacencia y rellénelas todas con $0$s, utilizando
  tiempo $O \( n \)$.
- #strong[Eliminar un vértice];: Elimine una fila y una columna en la
  matriz de adyacencia. El peor caso es cuando se eliminan la primera
  fila y columna, lo que requiere que $\( n - 1 \)^2$ elementos se
  "muevan hacia arriba y hacia la izquierda", utilizando así tiempo
  $O \( n^2 \)$.
- #strong[Inicialización];: Pase $n$ vértices, inicialice una lista de
  vértices `vertices` de longitud $n$, utilizando tiempo $O \( n \)$;
  inicialice una matriz de adyacencia `adjMat` de tamaño $n times n$,
  utilizando tiempo $O \( n^2 \)$.

\=== "Inicializar matriz de adyacencia"
#box(image("es/docs/chapter_graph/graph_operations.assets/adjacency_matrix_step1_initialization.png"))

\=== "Agregar una arista"
#box(image("es/docs/chapter_graph/graph_operations.assets/adjacency_matrix_step2_add_edge.png"))

\=== "Eliminar una arista"
#box(image("es/docs/chapter_graph/graph_operations.assets/adjacency_matrix_step3_remove_edge.png"))

\=== "Agregar un vértice"
#box(image("es/docs/chapter_graph/graph_operations.assets/adjacency_matrix_step4_add_vertex.png"))

\=== "Eliminar un vértice"
#box(image("es/docs/chapter_graph/graph_operations.assets/adjacency_matrix_step5_remove_vertex.png"))

A continuación se muestra el código de implementación para grafos
representados mediante una matriz de adyacencia:

```src
[file]{graph_adjacency_matrix}-[class]{graph_adj_mat}-[func]{}
```

== Implementación basada en lista de adyacencia
<implementación-basada-en-lista-de-adyacencia>
Dado un grafo no dirigido con un total de $n$ vértices y $m$ aristas,
las diversas operaciones se pueden implementar como se muestra en la
figura a continuación.

- #strong[Agregar una arista];: Simplemente agregue la arista al final
  de la lista enlazada del vértice correspondiente, utilizando tiempo
  $O \( 1 \)$. Debido a que es un grafo no dirigido, es necesario
  agregar aristas en ambas direcciones simultáneamente.
- #strong[Eliminar una arista];: Encuentre y elimine la arista
  especificada en la lista enlazada del vértice correspondiente,
  utilizando tiempo $O \( m \)$. En un grafo no dirigido, es necesario
  eliminar aristas en ambas direcciones simultáneamente.
- #strong[Agregar un vértice];: Agregue una lista enlazada en la lista
  de adyacencia y haga del nuevo vértice el nodo cabeza de la lista,
  utilizando tiempo $O \( 1 \)$.
- #strong[Eliminar un vértice];: Es necesario recorrer toda la lista de
  adyacencia, eliminando todas las aristas que incluyen el vértice
  especificado, utilizando tiempo $O \( n + m \)$.
- #strong[Inicialización];: Cree $n$ vértices y $2 m$ aristas en la
  lista de adyacencia, utilizando tiempo $O \( n + m \)$.

\=== "Inicializar lista de adyacencia"
#box(image("es/docs/chapter_graph/graph_operations.assets/adjacency_list_step1_initialization.png"))

\=== "Agregar una arista"
#box(image("es/docs/chapter_graph/graph_operations.assets/adjacency_list_step2_add_edge.png"))

\=== "Eliminar una arista"
#box(image("es/docs/chapter_graph/graph_operations.assets/adjacency_list_step3_remove_edge.png"))

\=== "Agregar un vértice"
#box(image("es/docs/chapter_graph/graph_operations.assets/adjacency_list_step4_add_vertex.png"))

\=== "Eliminar un vértice"
#box(image("es/docs/chapter_graph/graph_operations.assets/adjacency_list_step5_remove_vertex.png"))

A continuación se muestra la implementación del código de la lista de
adyacencia. En comparación con la figura anterior, el código real tiene
las siguientes diferencias.

- Para mayor comodidad al agregar y eliminar vértices, y para
  simplificar el código, usamos listas (arreglos dinámicos) en lugar de
  listas enlazadas.
- Use una tabla hash para almacenar la lista de adyacencia, siendo la
  `clave` la instancia del vértice, el `valor` la lista (lista enlazada)
  de vértices adyacentes a ese vértice.

Además, usamos la clase `Vertex` para representar vértices en la lista
de adyacencia. La razón de esto es: si, como con la matriz de
adyacencia, se usaran índices de lista para distinguir diferentes
vértices, entonces supongamos que desea eliminar el vértice en el índice
$i$, necesitaría recorrer toda la lista de adyacencia y disminuir todos
los índices mayores que $i$ en $1$, lo cual es muy ineficiente. Sin
embargo, si cada vértice es una instancia `Vertex` única, entonces
eliminar un vértice no requiere ningún cambio en otros vértices.

```src
[file]{graph_adjacency_list}-[class]{graph_adj_list}-[func]{}
```

== Comparación de eficiencia
<comparación-de-eficiencia>
Suponiendo que hay $n$ vértices y $m$ aristas en el grafo, la siguiente
tabla compara la eficiencia temporal y la eficiencia espacial de la
matriz de adyacencia y la lista de adyacencia.

Tabla ~ Comparación de la matriz de adyacencia y la lista de adyacencia
#figure(
  align(center)[#table(
    columns: (21.11%, 17.78%, 31.11%, 30%),
    align: (auto,auto,auto,auto,),
    table.header([], [Matriz de adyacencia], [Lista de adyacencia (Lista
      enlazada)], [Lista de adyacencia (Tabla hash)],),
    table.hline(),
    [Determinar
    adyacencia], [$O \( 1 \)$], [$O \( m \)$], [$O \( 1 \)$],
    [Agregar una arista], [$O \( 1 \)$], [$O \( 1 \)$], [$O \( 1 \)$],
    [Eliminar una arista], [$O \( 1 \)$], [$O \( m \)$], [$O \( 1 \)$],
    [Agregar un vértice], [$O \( n \)$], [$O \( 1 \)$], [$O \( 1 \)$],
    [Eliminar un
    vértice], [$O \( n^2 \)$], [$O \( n + m \)$], [$O \( n \)$],
    [Uso del espacio de
    memoria], [$O \( n^2 \)$], [$O \( n + m \)$], [$O \( n + m \)$],
  )]
  , kind: table
  )

Observando la tabla anterior, parece que la lista de adyacencia (tabla
hash) tiene la mejor eficiencia temporal y espacial. Sin embargo, en la
práctica, operar en aristas en la matriz de adyacencia es más eficiente,
requiriendo solo una única operación de acceso o asignación de arreglo.
En general, la matriz de adyacencia ejemplifica el principio de "espacio
por tiempo", mientras que la lista de adyacencia ejemplifica "tiempo por
espacio".
= Recorrido de grafos
<recorrido-de-grafos>
Los árboles representan una relación de "uno a muchos", mientras que los
grafos tienen un mayor grado de libertad y pueden representar cualquier
relación de "muchos a muchos". Por lo tanto, podemos considerar el árbol
como un caso especial de grafo. Claramente, #strong[las operaciones de
recorrido de árboles también son un caso especial de operaciones de
recorrido de grafos];.

Tanto los grafos como los árboles requieren la aplicación de algoritmos
de búsqueda para implementar operaciones de recorrido. El recorrido de
grafos se puede dividir en dos tipos: Búsqueda en amplitud (BFS) y
Búsqueda en profundidad (DFS).

== Búsqueda en amplitud
<búsqueda-en-amplitud>
#strong[La búsqueda en amplitud es un método de recorrido de cerca a
lejos, que comienza desde un cierto nodo, siempre priorizando la visita
a los vértices más cercanos y expandiéndose hacia afuera capa por capa];.
Como se muestra en la figura a continuación, comenzando desde el vértice
superior izquierdo, primero recorra todos los vértices adyacentes a ese
vértice, luego recorra todos los vértices adyacentes al siguiente
vértice, y así sucesivamente, hasta que todos los vértices hayan sido
visitados.

#figure(image("es/docs/chapter_graph/graph_traversal.assets/graph_bfs.png"),
  caption: [
    Recorrido en amplitud de un grafo
  ]
)

=== Implementación del algoritmo
<implementación-del-algoritmo>
BFS se implementa generalmente con la ayuda de una cola, como se muestra
en el código a continuación. La cola es "primero en entrar, primero en
salir", lo que se alinea con la idea de BFS de recorrer "de cerca a
lejos".

+ Agregue el vértice inicial `startVet` a la cola e inicie el bucle.
+ En cada iteración del bucle, saque el vértice del frente de la cola y
  regístrelo como visitado, luego agregue todos los vértices adyacentes
  a ese vértice a la parte trasera de la cola.
+ Repita el paso `2.` hasta que todos los vértices hayan sido visitados.

Para evitar volver a visitar vértices, usamos un conjunto hash `visited`
para registrar qué nodos han sido visitados.

```src
[file]{graph_bfs}-[class]{}-[func]{graph_bfs}
```

El código es relativamente abstracto, puede compararlo con la figura a
continuación para comprenderlo mejor.

\=== "\<1\>" #box(image("es/docs/chapter_graph/graph_traversal.assets/graph_bfs_step1.png"))

\=== "\<2\>" #box(image("es/docs/chapter_graph/graph_traversal.assets/graph_bfs_step2.png"))

\=== "\<3\>" #box(image("es/docs/chapter_graph/graph_traversal.assets/graph_bfs_step3.png"))

\=== "\<4\>" #box(image("es/docs/chapter_graph/graph_traversal.assets/graph_bfs_step4.png"))

\=== "\<5\>" #box(image("es/docs/chapter_graph/graph_traversal.assets/graph_bfs_step5.png"))

\=== "\<6\>" #box(image("es/docs/chapter_graph/graph_traversal.assets/graph_bfs_step6.png"))

\=== "\<7\>" #box(image("es/docs/chapter_graph/graph_traversal.assets/graph_bfs_step7.png"))

\=== "\<8\>" #box(image("es/docs/chapter_graph/graph_traversal.assets/graph_bfs_step8.png"))

\=== "\<9\>" #box(image("es/docs/chapter_graph/graph_traversal.assets/graph_bfs_step9.png"))

\=== "\<10\>" #box(image("es/docs/chapter_graph/graph_traversal.assets/graph_bfs_step10.png"))

\=== "\<11\>" #box(image("es/docs/chapter_graph/graph_traversal.assets/graph_bfs_step11.png"))

!!! question "¿Es única la secuencia de recorrido en amplitud?"

```
No es única. El recorrido en amplitud solo requiere recorrer en un orden "de cerca a lejos", **y el orden de recorrido de los vértices con la misma distancia puede ser arbitrario**. Por ejemplo, en la figura anterior, el orden de visita de los vértices $1$ y $3$ se puede intercambiar, al igual que el orden de los vértices $2$, $4$ y $6$.
```

=== Análisis de complejidad
<análisis-de-complejidad>
#strong[Complejidad temporal];: Todos los vértices se encolarán y
desencolarán una vez, utilizando tiempo $O \( \| V \| \)$; en el proceso
de recorrer los vértices adyacentes, dado que es un grafo no dirigido,
todas las aristas se visitarán $2$ veces, utilizando tiempo
$O \( 2 \| E \| \)$; en general, utilizando tiempo
$O \( \| V \| + \| E \| \)$.

#strong[Complejidad espacial];: El número máximo de vértices en la lista
`res`, el conjunto hash `visited` y la cola `que` es $\| V \|$,
utilizando espacio $O \( \| V \| \)$.

== Búsqueda en profundidad
<búsqueda-en-profundidad>
#strong[La búsqueda en profundidad es un método de recorrido que
prioriza ir lo más lejos posible y luego retrocede cuando no hay más
camino disponible];. Como se muestra en la figura a continuación,
comenzando desde el vértice superior izquierdo, visite algún vértice
adyacente del vértice actual hasta que no haya más camino disponible,
luego regrese y continúe hasta que se recorran todos los vértices.

#figure(image("es/docs/chapter_graph/graph_traversal.assets/graph_dfs.png"),
  caption: [
    Recorrido en profundidad de un grafo
  ]
)

=== Implementación del algoritmo
<implementación-del-algoritmo-1>
Este paradigma de algoritmo de "ir lo más lejos posible y luego
regresar" se implementa generalmente basándose en la recursión. Similar
a la búsqueda en amplitud, en la búsqueda en profundidad, también
necesitamos la ayuda de un conjunto hash `visited` para registrar los
vértices visitados y evitar volver a visitarlos.

```src
[file]{graph_dfs}-[class]{}-[func]{graph_dfs}
```

El proceso del algoritmo de búsqueda en profundidad se muestra en la
figura a continuación.

- #strong[Las líneas discontinuas representan la recursión descendente];,
  lo que indica que se ha iniciado un nuevo método recursivo para
  visitar un nuevo vértice.
- #strong[Las líneas discontinuas curvas representan el retroceso
  ascendente];, lo que indica que este método recursivo ha regresado a
  la posición donde se inició este método.

Para profundizar la comprensión, se sugiere combinar la figura a
continuación con el código para simular (o dibujar) todo el proceso DFS
en su mente, incluyendo cuándo se inicia cada método recursivo y cuándo
regresa.

\=== "\<1\>" #box(image("es/docs/chapter_graph/graph_traversal.assets/graph_dfs_step1.png"))

\=== "\<2\>" #box(image("es/docs/chapter_graph/graph_traversal.assets/graph_dfs_step2.png"))

\=== "\<3\>" #box(image("es/docs/chapter_graph/graph_traversal.assets/graph_dfs_step3.png"))

\=== "\<4\>" #box(image("es/docs/chapter_graph/graph_traversal.assets/graph_dfs_step4.png"))

\=== "\<5\>" #box(image("es/docs/chapter_graph/graph_traversal.assets/graph_dfs_step5.png"))

\=== "\<6\>" #box(image("es/docs/chapter_graph/graph_traversal.assets/graph_dfs_step6.png"))

\=== "\<7\>" #box(image("es/docs/chapter_graph/graph_traversal.assets/graph_dfs_step7.png"))

\=== "\<8\>" #box(image("es/docs/chapter_graph/graph_traversal.assets/graph_dfs_step8.png"))

\=== "\<9\>" #box(image("es/docs/chapter_graph/graph_traversal.assets/graph_dfs_step9.png"))

\=== "\<10\>" #box(image("es/docs/chapter_graph/graph_traversal.assets/graph_dfs_step10.png"))

\=== "\<11\>" #box(image("es/docs/chapter_graph/graph_traversal.assets/graph_dfs_step11.png"))

!!! question "¿Es única la secuencia de recorrido en profundidad?"

```
Similar al recorrido en amplitud, el orden de la secuencia de recorrido en profundidad tampoco es único. Dado un cierto vértice, es posible explorar en cualquier dirección primero, es decir, el orden de los vértices adyacentes se puede barajar arbitrariamente, siendo todos parte del recorrido en profundidad.

Tomando el recorrido de árboles como ejemplo, "raíz $\rightarrow$ izquierda $\rightarrow$ derecha", "izquierda $\rightarrow$ raíz $\rightarrow$ derecha", "izquierda $\rightarrow$ derecha $\rightarrow$ raíz" corresponden a los recorridos en preorden, inorden y postorden, respectivamente. Muestran tres tipos de prioridades de recorrido, sin embargo, los tres se consideran recorridos en profundidad.
```

=== Análisis de complejidad
<análisis-de-complejidad-1>
#strong[Complejidad temporal];: Todos los vértices se visitarán una vez,
utilizando tiempo $O \( \| V \| \)$; todas las aristas se visitarán dos
veces, utilizando tiempo $O \( 2 \| E \| \)$; en general, utilizando
tiempo $O \( \| V \| + \| E \| \)$.

#strong[Complejidad espacial];: El número máximo de vértices en la lista
`res`, el conjunto hash `visited` es $\| V \|$, y la profundidad máxima
de recursión es $\| V \|$, por lo tanto, utilizando espacio
$O \( \| V \| \)$.
= Búsqueda
<búsqueda>
#figure(image("es/docs/assets/covers/chapter_searching.jpg"),
  caption: [
    Búsqueda
  ]
)

!!! abstract

```
La búsqueda es una aventura hacia lo desconocido; donde es posible que tengamos que recorrer cada rincón de un espacio misterioso, o quizás localicemos rápidamente nuestro objetivo.

En este viaje de descubrimiento, cada exploración puede terminar con una respuesta inesperada.
```
= Búsqueda binaria
<búsqueda-binaria>
La búsqueda binaria es un algoritmo de búsqueda eficiente que utiliza
una estrategia de divide y vencerás. Aprovecha el orden ordenado de los
elementos en un arreglo reduciendo el intervalo de búsqueda a la mitad
en cada iteración, continuando hasta que se encuentra el elemento
objetivo o el intervalo de búsqueda se vuelve vacío.

!!! question

```
Dado un arreglo `nums` de longitud $n$, donde los elementos están ordenados en orden ascendente sin duplicados. Encuentre y devuelva el índice del elemento `target` en este arreglo. Si el arreglo no contiene el elemento, devuelva $-1$. Un ejemplo se muestra en la figura a continuación.
```

#figure(image("es/docs/chapter_searching/binary_search.assets/binary_search_example.png"),
  caption: [
    Datos de ejemplo de búsqueda binaria
  ]
)

Como se muestra en la figura a continuación, primero inicializamos los
punteros con $i = 0$ y $j = n - 1$, apuntando al primer y último
elemento del arreglo respectivamente. También representan todo el
intervalo de búsqueda $\[ 0 \, n - 1 \]$. Tenga en cuenta que los
corchetes indican un intervalo cerrado, que incluye los propios valores
límite.

Y luego se pueden realizar los siguientes dos pasos en un bucle.

+ Calcule el índice del punto medio
  $m = floor.l \( i + j \) \/ 2 floor.r$, donde $floor.l med floor.r$
  denota la operación de piso.
+ Basándose en la comparación entre el valor de `nums[m]` y `target`, se
  elegirá uno de los siguientes tres casos para ejecutar.
  + Si `nums[m] < target`, indica que `target` está en el intervalo
    $\[ m + 1 \, j \]$, por lo tanto, establezca $i = m + 1$.
  + Si `nums[m] > target`, indica que `target` está en el intervalo
    $\[ i \, m - 1 \]$, por lo tanto, establezca $j = m - 1$.
  + Si `nums[m] = target`, indica que se encontró `target`, salga del
    bucle y devuelva el índice $m$.

Si el arreglo no contiene el elemento objetivo, el intervalo de búsqueda
eventualmente se reducirá a vacío, terminando por devolver $- 1$.

\=== "\<1\>" #box(image("es/docs/chapter_searching/binary_search.assets/binary_search_step1.png"))

\=== "\<2\>" #box(image("es/docs/chapter_searching/binary_search.assets/binary_search_step2.png"))

\=== "\<3\>" #box(image("es/docs/chapter_searching/binary_search.assets/binary_search_step3.png"))

\=== "\<4\>" #box(image("es/docs/chapter_searching/binary_search.assets/binary_search_step4.png"))

\=== "\<5\>" #box(image("es/docs/chapter_searching/binary_search.assets/binary_search_step5.png"))

\=== "\<6\>" #box(image("es/docs/chapter_searching/binary_search.assets/binary_search_step6.png"))

\=== "\<7\>" #box(image("es/docs/chapter_searching/binary_search.assets/binary_search_step7.png"))

Vale la pena señalar que, dado que $i$ y $j$ son ambos de tipo `int`,
#strong[$i + j$ podría exceder el rango del tipo `int`];. Para evitar el
desbordamiento de números grandes, generalmente usamos la fórmula
$m = floor.l i + \( j - i \) \/ 2 floor.r$ para calcular el punto medio.

El código es el siguiente:

```src
[file]{binary_search}-[class]{}-[func]{binary_search}
```

#strong[La complejidad temporal es $O \( log n \)$];: En el bucle
binario, el intervalo disminuye a la mitad en cada ronda, por lo tanto,
el número de iteraciones es $log_2 n$.

#strong[La complejidad espacial es $O \( 1 \)$];: Los punteros $i$ y $j$
ocupan un espacio de tamaño constante.

== Métodos de representación de intervalos
<métodos-de-representación-de-intervalos>
Además del intervalo cerrado anterior, otra representación de intervalo
común es el intervalo "cerrado por la izquierda y abierto por la
derecha", definido como $\[ 0 \, n \)$, donde el límite izquierdo se
incluye a sí mismo y el límite derecho no. En esta representación, el
intervalo $\[ i \, j \)$ está vacío cuando $i = j$.

Podemos implementar un algoritmo de búsqueda binaria con la misma
funcionalidad basándonos en esta representación:

```src
[file]{binary_search}-[class]{}-[func]{binary_search_lcro}
```

Como se muestra en la figura a continuación, bajo los dos tipos de
representaciones de intervalos, la inicialización, la condición del
bucle y la operación de reducción del intervalo del algoritmo de
búsqueda binaria difieren.

Dado que ambos límites en la representación de "intervalo cerrado" son
inclusivos, las operaciones para reducir el intervalo a través de los
punteros $i$ y $j$ también son simétricas. Esto hace que sea menos
propenso a errores, #strong[por lo tanto, generalmente se recomienda
usar el enfoque de "intervalo cerrado"];.

#figure(image("es/docs/chapter_searching/binary_search.assets/binary_search_ranges.png"),
  caption: [
    Dos tipos de definiciones de intervalos
  ]
)

== Ventajas y limitaciones
<ventajas-y-limitaciones>
La búsqueda binaria funciona bien tanto en aspectos de tiempo como de
espacio.

- La búsqueda binaria es eficiente en tiempo. Con grandes conjuntos de
  datos, la complejidad temporal logarítmica ofrece una gran ventaja.
  Por ejemplo, dado un conjunto de datos con un tamaño $n = 2^20$, la
  búsqueda lineal requiere $2^20 = 1048576$ iteraciones, mientras que la
  búsqueda binaria solo requiere $log_2 2^20 = 20$ bucles.
- La búsqueda binaria no necesita espacio extra. En comparación con los
  algoritmos de búsqueda que dependen de espacio adicional (como la
  búsqueda hash), la búsqueda binaria es más eficiente en espacio.

Sin embargo, la búsqueda binaria puede no ser adecuada para todos los
escenarios debido a las siguientes preocupaciones.

- La búsqueda binaria solo se puede aplicar a datos ordenados. Los datos
  no ordenados deben ordenarse antes de aplicar la búsqueda binaria, lo
  que puede no valer la pena, ya que el algoritmo de ordenación suele
  tener una complejidad temporal de $O \( n log n \)$. Tal costo es
  incluso mayor que la búsqueda lineal, sin mencionar la propia búsqueda
  binaria. Para escenarios con inserciones frecuentes, el costo de
  mantener el arreglo en orden es bastante alto, ya que la complejidad
  temporal de insertar nuevos elementos en posiciones específicas es
  $O \( n \)$.
- La búsqueda binaria solo puede usar arreglos. La búsqueda binaria
  requiere un acceso a elementos no continuo (salto), lo cual es
  ineficiente en una lista enlazada. Como resultado, las listas
  enlazadas o las estructuras de datos basadas en listas enlazadas
  pueden no ser adecuadas para este algoritmo.
- La búsqueda lineal funciona mejor en conjuntos de datos pequeños. En
  la búsqueda lineal, solo se requiere 1 operación de decisión para cada
  iteración; mientras que en la búsqueda binaria, implica 1 suma, 1
  división, 1 a 3 operaciones de decisión, 1 suma (resta), totalizando
  de 4 a 6 operaciones. Por lo tanto, si el tamaño de los datos $n$ es
  pequeño, la búsqueda lineal es más rápida que la búsqueda binaria.

\`\`\`
= Inserción de búsqueda binaria
<inserción-de-búsqueda-binaria>
La búsqueda binaria no solo se utiliza para buscar elementos objetivo,
sino también para resolver muchos problemas variantes, como la búsqueda
de la posición de inserción de elementos objetivo.

== Caso sin elementos duplicados
<caso-sin-elementos-duplicados>
!!! question

```
Dado un arreglo ordenado `nums` de longitud $n$ con elementos únicos y un elemento `target`, inserte `target` en `nums` manteniendo su orden. Si `target` ya existe en el arreglo, insértelo a la izquierda del elemento existente. Devuelva el índice de `target` en el arreglo después de la inserción. Vea el ejemplo que se muestra en la figura a continuación.
```

#figure(image("es/docs/chapter_searching/binary_search_insertion.assets/binary_search_insertion_example.png"),
  caption: [
    Datos de ejemplo para el punto de inserción de búsqueda binaria
  ]
)

Si desea reutilizar el código de búsqueda binaria de la sección
anterior, debe responder las siguientes dos preguntas.

#strong[Pregunta uno];: Si el arreglo ya contiene `target`, ¿sería el
punto de inserción el índice del elemento existente?

El requisito de insertar `target` a la izquierda de elementos iguales
significa que el `target` recién insertado reemplazará la posición
original de `target`. En otras palabras, #strong[cuando el arreglo
contiene `target`, el punto de inserción es de hecho el índice de ese
`target`];.

#strong[Pregunta dos];: Cuando el arreglo no contiene `target`, ¿en qué
índice se insertaría?

Consideremos además el proceso de búsqueda binaria: cuando
`nums[m] < target`, el puntero $i$ se mueve, lo que significa que el
puntero $i$ se acerca a un elemento mayor o igual que `target`. De
manera similar, el puntero $j$ siempre se acerca a un elemento menor o
igual que `target`.

Por lo tanto, al final de la búsqueda binaria, es seguro que: $i$ apunta
al primer elemento mayor que `target`, y $j$ apunta al primer elemento
menor que `target`. #strong[Es fácil ver que cuando el arreglo no
contiene `target`, el punto de inserción es $i$];. El código es el
siguiente:

```src
[file]{binary_search_insertion}-[class]{}-[func]{binary_search_insertion_simple}
```

== Caso con elementos duplicados
<caso-con-elementos-duplicados>
!!! question

```
Basándose en la pregunta anterior, suponga que el arreglo puede contener elementos duplicados, todo lo demás permanece igual.
```

Cuando hay múltiples ocurrencias de `target` en el arreglo, una búsqueda
binaria regular solo puede devolver el índice de una ocurrencia de
`target`, #strong[y no puede determinar cuántas ocurrencias de `target`
hay a la izquierda y a la derecha de esa posición];.

El problema requiere insertar el elemento objetivo en la posición más a
la izquierda, #strong[por lo que necesitamos encontrar el índice del
`target` más a la izquierda en el arreglo];. Inicialmente, considere
implementar esto a través de los pasos que se muestran en la figura a
continuación.

+ Realice una búsqueda binaria para encontrar cualquier índice de
  `target`, digamos $k$.
+ A partir del índice $k$, realice una búsqueda lineal hacia la
  izquierda hasta que se encuentre la ocurrencia más a la izquierda de
  `target`, luego devuelva este índice.

#figure(image("es/docs/chapter_searching/binary_search_insertion.assets/binary_search_insertion_naive.png"),
  caption: [
    Búsqueda lineal para el punto de inserción de elementos duplicados
  ]
)

Aunque este método es factible, incluye búsqueda lineal, por lo que su
complejidad temporal es $O \( n \)$. Este método es ineficiente cuando
el arreglo contiene muchos `target` duplicados.

Ahora considere extender el código de búsqueda binaria. Como se muestra
en la figura a continuación, el proceso general sigue siendo el mismo.
En cada ronda, primero calculamos el índice medio $m$, luego comparamos
el valor de `target` con `nums[m]`, lo que lleva a los siguientes casos.

- Cuando `nums[m] < target` o `nums[m] > target`, significa que `target`
  aún no se ha encontrado, por lo tanto, use la búsqueda binaria normal
  para reducir el rango de búsqueda, #strong[acercando los punteros $i$
  y $j$ a `target`];.
- Cuando `nums[m] == target`, indica que los elementos menores que
  `target` están en el rango $\[ i \, m - 1 \]$, por lo tanto, use
  $j = m - 1$ para reducir el rango, #strong[acercando así el puntero
  $j$ a los elementos menores que `target`];.

Después del bucle, $i$ apunta al `target` más a la izquierda, y $j$
apunta al primer elemento menor que `target`, #strong[por lo tanto, el
índice $i$ es el punto de inserción];.

\=== "\<1\>"
#box(image("es/docs/chapter_searching/binary_search_insertion.assets/binary_search_insertion_step1.png"))

\=== "\<2\>"
#box(image("es/docs/chapter_searching/binary_search_insertion.assets/binary_search_insertion_step2.png"))

\=== "\<3\>"
#box(image("es/docs/chapter_searching/binary_search_insertion.assets/binary_search_insertion_step3.png"))

\=== "\<4\>"
#box(image("es/docs/chapter_searching/binary_search_insertion.assets/binary_search_insertion_step4.png"))

\=== "\<5\>"
#box(image("es/docs/chapter_searching/binary_search_insertion.assets/binary_search_insertion_step5.png"))

\=== "\<6\>"
#box(image("es/docs/chapter_searching/binary_search_insertion.assets/binary_search_insertion_step6.png"))

\=== "\<7\>"
#box(image("es/docs/chapter_searching/binary_search_insertion.assets/binary_search_insertion_step7.png"))

\=== "\<8\>"
#box(image("es/docs/chapter_searching/binary_search_insertion.assets/binary_search_insertion_step8.png"))

Observe el siguiente código. Las operaciones en las ramas
`nums[m] > target` y `nums[m] == target` son las mismas, por lo que
estas dos ramas se pueden fusionar.

Incluso así, aún podemos mantener las condiciones expandidas, ya que
esto hace que la lógica sea más clara y mejora la legibilidad.

```src
[file]{binary_search_insertion}-[class]{}-[func]{binary_search_insertion}
```

!!! tip

```
El código de esta sección utiliza "intervalo cerrado". Si está interesado en "cerrado por la izquierda, abierto por la derecha", intente implementar el código por su cuenta.
```

En resumen, la búsqueda binaria implica esencialmente establecer
objetivos de búsqueda para los punteros $i$ y $j$. Estos objetivos
podrían ser un elemento específico (como `target`) o un rango de
elementos (como los menores que `target`).

En el bucle continuo de la búsqueda binaria, los punteros $i$ y $j$ se
acercan gradualmente al objetivo predefinido. Finalmente, o encuentran
la respuesta o se detienen después de cruzar el límite.
= Límites de la búsqueda binaria
<límites-de-la-búsqueda-binaria>
== Encontrar el límite izquierdo
<encontrar-el-límite-izquierdo>
!!! question

```
Dado un arreglo ordenado `nums` de longitud $n$, que puede contener elementos duplicados, devuelva el índice del elemento `target` más a la izquierda. Si el elemento no está presente en el arreglo, devuelva $-1$.
```

Recordando el método de búsqueda binaria para un punto de inserción, una
vez finalizada la búsqueda, el índice $i$ apuntará a la ocurrencia más a
la izquierda de `target`. Por lo tanto, #strong[buscar el punto de
inserción es esencialmente lo mismo que encontrar el índice del `target`
más a la izquierda];.

Podemos usar la función para encontrar un punto de inserción para
encontrar el límite izquierdo de `target`. Tenga en cuenta que el
arreglo podría no contener `target`, lo que podría llevar a los
siguientes dos resultados:

- El índice $i$ del punto de inserción está fuera de los límites.
- El elemento `nums[i]` no es igual a `target`.

En estos casos, simplemente devuelva $- 1$. El código es el siguiente:

```src
[file]{binary_search_edge}-[class]{}-[func]{binary_search_left_edge}
```

== Encontrar el límite derecho
<encontrar-el-límite-derecho>
¿Cómo encontramos la ocurrencia más a la derecha de `target`? La forma
más sencilla es modificar la lógica de búsqueda binaria tradicional
cambiando la forma en que ajustamos los límites de búsqueda en el caso
de `nums[m] == target`. El código se omite aquí. Si está interesado,
intente implementar el código por su cuenta.

A continuación, presentaremos dos métodos más ingeniosos.

=== Reutilizar la búsqueda del límite izquierdo
<reutilizar-la-búsqueda-del-límite-izquierdo>
Para encontrar la ocurrencia más a la derecha de `target`, podemos
reutilizar la función utilizada para localizar el `target` más a la
izquierda. Específicamente, transformamos la búsqueda del `target` más a
la derecha en una búsqueda del `target + 1` más a la izquierda.

Como se muestra en la figura a continuación, una vez finalizada la
búsqueda, el puntero $i$ apuntará al `target + 1` más a la izquierda (si
existe), mientras que el puntero $j$ apuntará a la ocurrencia más a la
derecha de `target`. Por lo tanto, devolver $j$ nos dará el límite
derecho.

#figure(image("es/docs/chapter_searching/binary_search_edge.assets/binary_search_right_edge_by_left_edge.png"),
  caption: [
    Transformando la búsqueda del límite derecho en la búsqueda del
    límite izquierdo
  ]
)

Tenga en cuenta que el punto de inserción devuelto es $i$, por lo tanto,
debe restarse $1$ para obtener $j$:

```src
[file]{binary_search_edge}-[class]{}-[func]{binary_search_right_edge}
```

=== Transformar en una búsqueda de elementos
<transformar-en-una-búsqueda-de-elementos>
Cuando el arreglo no contiene `target`, $i$ y $j$ eventualmente
apuntarán al primer elemento mayor y menor que `target` respectivamente.

Así, como se muestra en la figura a continuación, podemos construir un
elemento que no existe en el arreglo, para buscar los límites izquierdo
y derecho.

- Para encontrar el `target` más a la izquierda: se puede transformar en
  buscar `target - 0.5`, y devolver el puntero $i$.
- Para encontrar el `target` más a la derecha: se puede transformar en
  buscar `target + 0.5`, y devolver el puntero $j$.

#figure(image("es/docs/chapter_searching/binary_search_edge.assets/binary_search_edge_by_element.png"),
  caption: [
    Transformando la búsqueda de límites en la búsqueda de un elemento
  ]
)

El código se omite aquí, pero hay dos puntos importantes a tener en
cuenta sobre este enfoque.

- El arreglo dado `nums` no contiene decimales, por lo que el manejo de
  casos iguales no es una preocupación.
- Sin embargo, la introducción de decimales en este enfoque requiere
  modificar la variable `target` a un tipo de punto flotante (no se
  necesita ningún cambio en Python).
= Estrategias de optimización hash
<estrategias-de-optimización-hash>
En los problemas de algoritmos, #strong[a menudo reducimos la
complejidad temporal de un algoritmo reemplazando una búsqueda lineal
por una búsqueda basada en hash];. Usemos un problema de algoritmo para
profundizar la comprensión.

!!! question

```
Dado un arreglo de enteros `nums` y un elemento objetivo `target`, busque dos elementos en el arreglo cuya "suma" sea igual a `target`, y devuelva sus índices de arreglo. Cualquier solución es aceptable.
```

== Búsqueda lineal: intercambiando tiempo por espacio
<búsqueda-lineal-intercambiando-tiempo-por-espacio>
Considere recorrer todas las combinaciones posibles directamente. Como
se muestra en la figura a continuación, iniciamos un bucle anidado y, en
cada iteración, determinamos si la suma de los dos enteros es igual a
`target`. Si es así, devolvemos sus índices.

#figure(image("es/docs/chapter_searching/replace_linear_by_hashing.assets/two_sum_brute_force.png"),
  caption: [
    Solución de búsqueda lineal para el problema de la suma de dos
  ]
)

El código se muestra a continuación:

```src
[file]{two_sum}-[class]{}-[func]{two_sum_brute_force}
```

Este método tiene una complejidad temporal de $O \( n^2 \)$ y una
complejidad espacial de $O \( 1 \)$, lo que puede consumir mucho tiempo
con grandes volúmenes de datos.

== Búsqueda hash: intercambiando espacio por tiempo
<búsqueda-hash-intercambiando-espacio-por-tiempo>
Considere usar una tabla hash, donde los pares clave-valor son los
elementos del arreglo y sus índices, respectivamente. Recorra el
arreglo, realizando los pasos que se muestran en la figura a
continuación durante cada iteración.

+ Compruebe si el número `target - nums[i]` está en la tabla hash. Si es
  así, devuelva directamente los índices de estos dos elementos.
+ Agregue el par clave-valor `nums[i]` y el índice `i` a la tabla hash.

\=== "\<1\>"
#box(image("es/docs/chapter_searching/replace_linear_by_hashing.assets/two_sum_hashtable_step1.png"))

\=== "\<2\>"
#box(image("es/docs/chapter_searching/replace_linear_by_hashing.assets/two_sum_hashtable_step2.png"))

\=== "\<3\>"
#box(image("es/docs/chapter_searching/replace_linear_by_hashing.assets/two_sum_hashtable_step3.png"))

El código de implementación se muestra a continuación, requiriendo solo
un único bucle:

```src
[file]{two_sum}-[class]{}-[func]{two_sum_hash_table}
```

Este método reduce la complejidad temporal de $O \( n^2 \)$ a
$O \( n \)$ mediante el uso de la búsqueda hash, lo que mejora
significativamente la eficiencia del tiempo de ejecución.

Como requiere mantener una tabla hash adicional, la complejidad espacial
es $O \( n \)$. #strong[Sin embargo, este método tiene una eficiencia
tiempo-espacio más equilibrada en general, lo que lo convierte en la
solución óptima para este problema];.
= Algoritmos de búsqueda revisados
<algoritmos-de-búsqueda-revisados>
Los algoritmos de búsqueda se utilizan para recuperar uno o más
elementos que cumplen criterios específicos dentro de estructuras de
datos como arreglos, listas enlazadas, árboles o grafos.

Los algoritmos de búsqueda se pueden dividir en las siguientes dos
categorías según su enfoque.

- #strong[Localizar el elemento objetivo recorriendo la estructura de
  datos];, como recorridos de arreglos, listas enlazadas, árboles y
  grafos, etc.
- #strong[Utilizar la estructura organizativa de los datos o los datos
  existentes para lograr búsquedas eficientes de elementos];, como la
  búsqueda binaria, la búsqueda hash, la búsqueda en árboles de búsqueda
  binaria, etc.

Estos temas se introdujeron en capítulos anteriores, por lo que no nos
son desconocidos. En esta sección, revisaremos los algoritmos de
búsqueda desde una perspectiva más sistemática.

== Búsqueda por fuerza bruta
<búsqueda-por-fuerza-bruta>
Una búsqueda por fuerza bruta localiza el elemento objetivo recorriendo
cada elemento de la estructura de datos.

- La "búsqueda lineal" es adecuada para estructuras de datos lineales
  como arreglos y listas enlazadas. Comienza desde un extremo de la
  estructura de datos y accede a cada elemento uno por uno hasta que se
  encuentra el elemento objetivo o se llega al otro extremo sin
  encontrar el elemento objetivo.
- La "búsqueda en amplitud" y la "búsqueda en profundidad" son dos
  estrategias de recorrido para grafos y árboles. La búsqueda en
  amplitud comienza desde el nodo inicial y busca capa por capa (de
  izquierda a derecha), accediendo a los nodos de cerca a lejos. La
  búsqueda en profundidad comienza desde el nodo inicial, sigue un
  camino hasta el final (de arriba a abajo), luego retrocede e intenta
  otros caminos hasta que se recorre toda la estructura de datos.

La ventaja de la búsqueda por fuerza bruta es su simplicidad y
versatilidad, #strong[no necesita preprocesamiento de datos ni la ayuda
de estructuras de datos adicionales];.

Sin embargo, #strong[la complejidad temporal de este tipo de algoritmo
es $O \( n \)$];, donde $n$ es el número de elementos, por lo que el
rendimiento es deficiente con grandes conjuntos de datos.

== Búsqueda adaptativa
<búsqueda-adaptativa>
Una búsqueda adaptativa utiliza las propiedades únicas de los datos
(como el orden) para optimizar el proceso de búsqueda, localizando así
el elemento objetivo de manera más eficiente.

- La "búsqueda binaria" utiliza la ordenación de los datos para lograr
  una búsqueda eficiente, solo adecuada para arreglos.
- La "búsqueda hash" utiliza una tabla hash para establecer un mapeo
  clave-valor entre los datos de búsqueda y los datos objetivo,
  implementando así la operación de consulta.
- La "búsqueda en árbol" en una estructura de árbol específica (como un
  árbol de búsqueda binaria), elimina rápidamente nodos basándose en
  comparaciones de valores de nodos, localizando así el elemento
  objetivo.

La ventaja de estos algoritmos es su alta eficiencia, #strong[con
complejidades temporales que alcanzan $O \( log n \)$ o incluso
$O \( 1 \)$];.

Sin embargo, #strong[el uso de estos algoritmos a menudo requiere
preprocesamiento de datos];. Por ejemplo, la búsqueda binaria requiere
ordenar el arreglo de antemano, y la búsqueda hash y la búsqueda en
árbol requieren la ayuda de estructuras de datos adicionales. Mantener
estas estructuras también requiere más sobrecarga en términos de tiempo
y espacio.

!!! tip

```
Los algoritmos de búsqueda adaptativa a menudo se denominan algoritmos de búsqueda, **utilizados principalmente para recuperar rápidamente elementos objetivo en estructuras de datos específicas**.
```

== Elección de un método de búsqueda
<elección-de-un-método-de-búsqueda>
Dado un conjunto de datos de tamaño $n$, podemos usar una búsqueda
lineal, búsqueda binaria, búsqueda en árbol, búsqueda hash u otros
métodos para recuperar el elemento objetivo. Los principios de
funcionamiento de estos métodos se muestran en la figura a continuación.

#figure(image("es/docs/chapter_searching/searching_algorithm_revisited.assets/searching_algorithms.png"),
  caption: [
    Varias estrategias de búsqueda
  ]
)

Las características y la eficiencia operativa de los métodos mencionados
anteriormente se muestran en la siguiente tabla.

Tabla ~ Comparación de la eficiencia de los algoritmos de búsqueda
#figure(
  align(center)[#table(
    columns: (17.14%, 12.38%, 20%, 25.71%, 24.76%),
    align: (auto,auto,auto,auto,auto,),
    table.header([], [Búsqueda lineal], [Búsqueda binaria], [Búsqueda en
      árbol], [Búsqueda hash],),
    table.hline(),
    [Buscar
    elemento], [$O \( n \)$], [$O \( log n \)$], [$O \( log n \)$], [$O \( 1 \)$],
    [Insertar
    elemento], [$O \( 1 \)$], [$O \( n \)$], [$O \( log n \)$], [$O \( 1 \)$],
    [Eliminar
    elemento], [$O \( n \)$], [$O \( n \)$], [$O \( log n \)$], [$O \( 1 \)$],
    [Espacio
    extra], [$O \( 1 \)$], [$O \( 1 \)$], [$O \( n \)$], [$O \( n \)$],
    [Preprocesamiento de datos], [\/], [Ordenamiento
    $O \( n log n \)$], [Construcción de árbol
    $O \( n log n \)$], [Construcción de tabla hash $O \( n \)$],
    [Orden de los
    datos], [Desordenado], [Ordenado], [Ordenado], [Desordenado],
  )]
  , kind: table
  )

La elección del algoritmo de búsqueda también depende del volumen de
datos, los requisitos de rendimiento de la búsqueda, la frecuencia de
las consultas y actualizaciones de datos, etc.

#strong[Búsqueda lineal]

- Buena versatilidad, sin necesidad de operaciones de preprocesamiento
  de datos. Si solo necesitamos consultar los datos una vez, el tiempo
  de preprocesamiento de datos en los otros tres métodos sería más largo
  que el tiempo de una búsqueda lineal.
- Adecuado para pequeños volúmenes de datos, donde la complejidad
  temporal tiene un impacto menor en la eficiencia.
- Adecuado para escenarios con actualizaciones de datos muy frecuentes,
  porque este método no requiere ningún mantenimiento adicional de los
  datos.

#strong[Búsqueda binaria]

- Adecuado para volúmenes de datos más grandes, con un rendimiento
  estable y una complejidad temporal en el peor de los casos de
  $O \( log n \)$.
- Sin embargo, el volumen de datos no puede ser demasiado grande, porque
  el almacenamiento de arreglos requiere un espacio de memoria contiguo.
- No adecuado para escenarios con adiciones y eliminaciones frecuentes,
  porque mantener un arreglo ordenado incurre en mucha sobrecarga.

#strong[Búsqueda hash]

- Adecuado para escenarios donde el rendimiento de consulta rápida es
  esencial, con una complejidad temporal promedio de $O \( 1 \)$.
- No adecuado para escenarios que necesitan datos ordenados o búsquedas
  de rango, porque las tablas hash no pueden mantener el orden de los
  datos.
- Alta dependencia de las funciones hash y las estrategias de manejo de
  colisiones hash, con riesgos significativos de degradación del
  rendimiento.
- No adecuado para volúmenes de datos excesivamente grandes, porque las
  tablas hash necesitan espacio extra para minimizar las colisiones y
  proporcionar un buen rendimiento de consulta.

#strong[Búsqueda en árbol]

- Adecuado para datos masivos, porque los nodos del árbol se almacenan
  dispersos en la memoria.
- Adecuado para mantener datos ordenados o búsquedas de rango.
- Con la adición y eliminación continua de nodos, el árbol de búsqueda
  binaria puede sesgarse, degradando la complejidad temporal a
  $O \( n \)$.
- Si se utilizan árboles AVL o árboles rojo-negro, las operaciones
  pueden ejecutarse de forma estable con una eficiencia de
  $O \( log n \)$, pero la operación para mantener el equilibrio del
  árbol añade una sobrecarga adicional.
= Resumen
<resumen>
- La búsqueda binaria depende del orden de los datos y realiza la
  búsqueda dividiendo iterativamente el intervalo de búsqueda por la
  mitad. Requiere que los datos de entrada estén ordenados y solo es
  aplicable a arreglos o estructuras de datos basadas en arreglos.
- La búsqueda por fuerza bruta puede ser necesaria para localizar una
  entrada en un conjunto de datos desordenado. Se pueden aplicar
  diferentes algoritmos de búsqueda según la estructura de datos: la
  búsqueda lineal es adecuada para arreglos y listas enlazadas, mientras
  que la búsqueda en amplitud (BFS) y la búsqueda en profundidad (DFS)
  son adecuadas para grafos y árboles. Estos algoritmos son muy
  versátiles, no requieren preprocesamiento de datos, pero tienen una
  complejidad temporal más alta de $O \( n \)$.
- La búsqueda hash, la búsqueda en árbol y la búsqueda binaria son
  métodos de búsqueda eficientes que pueden localizar rápidamente
  elementos objetivo dentro de estructuras de datos específicas. Estos
  algoritmos son muy eficientes, con complejidades temporales que
  alcanzan $O \( log n \)$ o incluso $O \( 1 \)$, pero generalmente
  requieren espacio adicional para acomodar estructuras de datos
  adicionales.
- En la práctica, necesitamos analizar factores como el volumen de
  datos, los requisitos de rendimiento de la búsqueda, las frecuencias
  de consulta y actualización de datos, etc., para elegir un método de
  búsqueda adecuado.
- La búsqueda lineal es ideal para datos pequeños o actualizados con
  frecuencia (volátiles). La búsqueda binaria funciona bien para datos
  grandes y ordenados. La búsqueda hash es adecuada para datos que
  requieren una alta eficiencia de consulta y no necesitan consultas de
  rango. La búsqueda en árbol es la más adecuada para grandes datos
  dinámicos que requieren mantener el orden y necesitan admitir
  consultas de rango.
- Reemplazar la búsqueda lineal con la búsqueda hash es una estrategia
  común para optimizar el rendimiento del tiempo de ejecución,
  reduciendo la complejidad temporal de $O \( n \)$ a $O \( 1 \)$.
= Ordenamiento
<ordenamiento>
#figure(image("es/docs/assets/covers/chapter_sorting.jpg"),
  caption: [
    Ordenamiento
  ]
)

!!! abstract

```
El ordenamiento es como una llave mágica que convierte el caos en orden, permitiéndonos comprender y manejar los datos de manera más eficiente.

Ya sea un simple orden ascendente o arreglos categóricos complejos, el ordenamiento revela la belleza armoniosa de los datos.
```
= Algoritmos de ordenamiento
<algoritmos-de-ordenamiento>
Los algoritmos de ordenamiento se utilizan para organizar un conjunto de
datos en un orden específico. Los algoritmos de ordenamiento tienen una
amplia gama de aplicaciones porque los datos ordenados generalmente se
pueden buscar, analizar y procesar de manera más eficiente.

Como se muestra en la figura a continuación, los tipos de datos en los
algoritmos de ordenamiento pueden ser enteros, números de punto
flotante, caracteres o cadenas, etc. El criterio de ordenamiento se
puede establecer según las necesidades, como el tamaño numérico, el
orden ASCII de los caracteres o un criterio personalizado.

#figure(image("es/docs/chapter_sorting/sorting_algorithm.assets/sorting_examples.png"),
  caption: [
    Tipos de datos y ejemplos de comparadores
  ]
)

== Dimensiones de evaluación
<dimensiones-de-evaluación>
#strong[Eficiencia de ejecución];: Esperamos que la complejidad temporal
de los algoritmos de ordenamiento sea lo más baja posible, así como un
menor número de operaciones generales (reduciendo el término constante
de la complejidad temporal). Para grandes volúmenes de datos, la
eficiencia de ejecución es particularmente importante.

#strong[Propiedad in situ];: Como su nombre lo indica, el ordenamiento
in situ se logra manipulando directamente el arreglo original, sin
necesidad de arreglos auxiliares adicionales, lo que ahorra memoria.
Generalmente, el ordenamiento in situ implica menos operaciones de
movimiento de datos y es más rápido.

#strong[Estabilidad];: El ordenamiento estable asegura que el orden
relativo de los elementos iguales en el arreglo no cambie después del
ordenamiento.

El ordenamiento estable es una condición necesaria para escenarios de
ordenamiento de múltiples claves. Supongamos que tenemos una tabla que
almacena información de estudiantes, con la primera y segunda columna
siendo el nombre y la edad, respectivamente. En este caso, el
ordenamiento inestable podría conducir a una pérdida de orden en los
datos de entrada:

```shell
# Los datos de entrada están ordenados por nombre
# (nombre, edad)
  ('A', 19)
  ('B', 18)
  ('C', 21)
  ('D', 19)
  ('E', 23)

# Suponiendo que se utiliza un algoritmo de ordenamiento inestable para ordenar la lista por edad,
# el resultado cambia la posición relativa de ('D', 19) y ('A', 19),
# y se pierde la propiedad de que los datos de entrada estén ordenados por nombre
  ('B', 18)
  ('D', 19)
  ('A', 19)
  ('C', 21)
  ('E', 23)
```

#strong[Adaptabilidad];: El ordenamiento adaptativo aprovecha la
información de orden existente dentro de los datos de entrada para
reducir el esfuerzo computacional, logrando una eficiencia temporal más
óptima. La complejidad temporal en el mejor de los casos de los
algoritmos de ordenamiento adaptativo suele ser mejor que su complejidad
temporal promedio.

#strong[Basado en comparación o no basado en comparación];: El
ordenamiento basado en comparación se basa en operadores de comparación
($<$, $=$, $>$) para determinar el orden relativo de los elementos y así
ordenar todo el arreglo, siendo la complejidad temporal óptima teórica
$O \( n log n \)$. Mientras tanto, el ordenamiento sin comparación no
utiliza operadores de comparación y puede lograr una complejidad
temporal de $O \( n \)$, pero su versatilidad es relativamente pobre.

== Algoritmo de ordenamiento ideal
<algoritmo-de-ordenamiento-ideal>
#strong[Ejecución rápida, in situ, estable, adaptativo y versátil];.
Claramente, hasta la fecha no se ha encontrado ningún algoritmo de
ordenamiento que combine todas estas características. Por lo tanto, al
seleccionar un algoritmo de ordenamiento, es necesario decidir en
función de las características específicas de los datos y los requisitos
del problema.

A continuación, aprenderemos sobre varios algoritmos de ordenamiento
juntos y analizaremos las ventajas y desventajas de cada uno basándonos
en las dimensiones de evaluación anteriores.
= Ordenamiento por selección
<ordenamiento-por-selección>
El ordenamiento por selección funciona con un principio muy simple:
utiliza un bucle donde cada iteración selecciona el elemento más pequeño
del intervalo no ordenado y lo mueve al final de la sección ordenada.

Supongamos que la longitud del arreglo es $n$, los pasos del
ordenamiento por selección se muestran en la figura a continuación.

+ Inicialmente, todos los elementos no están ordenados, es decir, el
  intervalo no ordenado (índice) es $\[ 0 \, n - 1 \]$.
+ Seleccione el elemento más pequeño en el intervalo $\[ 0 \, n - 1 \]$
  e intercámbielo con el elemento en el índice $0$. Después de esto, el
  primer elemento del arreglo está ordenado.
+ Seleccione el elemento más pequeño en el intervalo $\[ 1 \, n - 1 \]$
  e intercámbielo con el elemento en el índice $1$. Después de esto, los
  dos primeros elementos del arreglo están ordenados.
+ Continúe de esta manera. Después de $n - 1$ rondas de selección e
  intercambio, los primeros $n - 1$ elementos están ordenados.
+ El único elemento restante es posteriormente el elemento más grande y
  no necesita ordenamiento, por lo tanto, el arreglo está ordenado.

\=== "\<1\>"
#box(image("es/docs/chapter_sorting/selection_sort.assets/selection_sort_step1.png"))

\=== "\<2\>"
#box(image("es/docs/chapter_sorting/selection_sort.assets/selection_sort_step2.png"))

\=== "\<3\>"
#box(image("es/docs/chapter_sorting/selection_sort.assets/selection_sort_step3.png"))

\=== "\<4\>"
#box(image("es/docs/chapter_sorting/selection_sort.assets/selection_sort_step4.png"))

\=== "\<5\>"
#box(image("es/docs/chapter_sorting/selection_sort.assets/selection_sort_step5.png"))

\=== "\<6\>"
#box(image("es/docs/chapter_sorting/selection_sort.assets/selection_sort_step6.png"))

\=== "\<7\>"
#box(image("es/docs/chapter_sorting/selection_sort.assets/selection_sort_step7.png"))

\=== "\<8\>"
#box(image("es/docs/chapter_sorting/selection_sort.assets/selection_sort_step8.png"))

\=== "\<9\>"
#box(image("es/docs/chapter_sorting/selection_sort.assets/selection_sort_step9.png"))

\=== "\<10\>"
#box(image("es/docs/chapter_sorting/selection_sort.assets/selection_sort_step10.png"))

\=== "\<11\>"
#box(image("es/docs/chapter_sorting/selection_sort.assets/selection_sort_step11.png"))

En el código, usamos $k$ para registrar el elemento más pequeño dentro
del intervalo no ordenado:

```src
[file]{selection_sort}-[class]{}-[func]{selection_sort}
```

== Características del algoritmo
<características-del-algoritmo>
- #strong[Complejidad temporal de $O \( n^2 \)$, ordenamiento no
  adaptativo];: Hay $n - 1$ iteraciones en el bucle externo, con la
  longitud de la sección no ordenada comenzando en $n$ en la primera
  iteración y disminuyendo a $2$ en la última iteración, es decir, cada
  iteración del bucle externo contiene $n$, $n - 1$, $dots.h$, $3$, $2$
  iteraciones del bucle interno respectivamente, sumando un total de
  $frac(\( n - 1 \) \( n + 2 \), 2)$.
- #strong[Complejidad espacial de $O \( 1 \)$, ordenamiento in situ];:
  Utiliza espacio extra constante con punteros $i$ y $j$.
- #strong[Ordenamiento no estable];: Como se muestra en la figura a
  continuación, un elemento `nums[i]` puede intercambiarse a la derecha
  de un elemento igual, lo que hace que su orden relativo cambie.

#figure(image("es/docs/chapter_sorting/selection_sort.assets/selection_sort_instability.png"),
  caption: [
    Ejemplo de inestabilidad del ordenamiento por selección
  ]
)
= Ordenamiento de burbuja
<ordenamiento-de-burbuja>
El ordenamiento de burbuja funciona comparando e intercambiando
continuamente elementos adyacentes. Este proceso es como burbujas que
suben de abajo hacia arriba, de ahí el nombre "ordenamiento de burbuja".

Como se muestra en la figura a continuación, el proceso de burbujeo se
puede simular utilizando intercambios de elementos: comience desde el
extremo izquierdo del arreglo y muévase hacia la derecha, comparando
cada par de elementos adyacentes. Si el elemento izquierdo es mayor que
el derecho, intercámbielos. Después del recorrido, el elemento más
grande habrá subido al extremo derecho del arreglo.

\=== "\<1\>"
#box(image("es/docs/chapter_sorting/bubble_sort.assets/bubble_operation_step1.png"))

\=== "\<2\>"
#box(image("es/docs/chapter_sorting/bubble_sort.assets/bubble_operation_step2.png"))

\=== "\<3\>"
#box(image("es/docs/chapter_sorting/bubble_sort.assets/bubble_operation_step3.png"))

\=== "\<4\>"
#box(image("es/docs/chapter_sorting/bubble_sort.assets/bubble_operation_step4.png"))

\=== "\<5\>"
#box(image("es/docs/chapter_sorting/bubble_sort.assets/bubble_operation_step5.png"))

\=== "\<6\>"
#box(image("es/docs/chapter_sorting/bubble_sort.assets/bubble_operation_step6.png"))

\=== "\<7\>"
#box(image("es/docs/chapter_sorting/bubble_sort.assets/bubble_operation_step7.png"))

== Proceso del algoritmo
<proceso-del-algoritmo>
Supongamos que el arreglo tiene longitud $n$. Los pasos del ordenamiento
de burbuja se muestran en la figura a continuación:

+ Primero, realice una pasada de "burbujeo" en $n$ elementos,
  #strong[intercambiando el elemento más grande a su posición correcta];.
+ A continuación, realice una pasada de "burbujeo" en los $n - 1$
  elementos restantes, #strong[intercambiando el segundo elemento más
  grande a su posición correcta];.
+ Continúe de esta manera; después de $n - 1$ pasadas, #strong[los
  $n - 1$ elementos más grandes se habrán movido a sus posiciones
  correctas];.
+ El único elemento restante #strong[debe] ser el más pequeño, por lo
  que #strong[no] se requiere más ordenamiento. En este punto, el
  arreglo está ordenado.

#figure(image("es/docs/chapter_sorting/bubble_sort.assets/bubble_sort_overview.png"),
  caption: [
    Proceso de ordenamiento de burbuja
  ]
)

El código de ejemplo es el siguiente:

```src
[file]{bubble_sort}-[class]{}-[func]{bubble_sort}
```

== Optimización de la eficiencia
<optimización-de-la-eficiencia>
Si no se producen intercambios durante una ronda de "burbujeo", el
arreglo ya está ordenado, por lo que podemos regresar inmediatamente.
Para detectar esto, podemos agregar una variable `flag`; cada vez que no
se realicen intercambios en una pasada, establecemos la bandera y
regresamos temprano.

Incluso con esta optimización, la complejidad temporal en el peor de los
casos y la complejidad temporal promedio del ordenamiento de burbuja
siguen siendo $O \( n^2 \)$. Sin embargo, si el arreglo de entrada ya
está ordenado, la complejidad temporal en el mejor de los casos puede
ser tan baja como $O \( n \)$.

```src
[file]{bubble_sort}-[class]{}-[func]{bubble_sort_with_flag}
```

== Características del algoritmo
<características-del-algoritmo>
- #strong[Complejidad temporal de $O \( n^2 \)$, ordenamiento
  adaptativo.] Hay $n - 1$ iteraciones en el bucle externo, con la
  longitud de la sección no ordenada comenzando en $n$ en la primera
  iteración y disminuyendo a $2$ en la última iteración, lo que suma
  $\( n - 1 \) n \/ 2$. Con una optimización `flag`, la complejidad
  temporal en el mejor de los casos puede alcanzar $O \( n \)$ cuando el
  arreglo ya está ordenado.
- #strong[Complejidad espacial de $O \( 1 \)$, ordenamiento in situ.]
  Solo se utiliza una cantidad constante de espacio extra por los
  punteros $i$ y $j$.
- #strong[Ordenamiento estable.] Debido a que los elementos iguales no
  se intercambian durante el "burbujeo", su orden original se conserva,
  lo que lo convierte en un ordenamiento estable.
= Ordenamiento por inserción
<ordenamiento-por-inserción>
El ordenamiento por inserción es un algoritmo de ordenamiento simple que
funciona de manera muy similar al proceso de ordenar manualmente una
baraja de cartas.

Específicamente, seleccionamos un elemento base del intervalo no
ordenado, lo comparamos con los elementos del intervalo ordenado a su
izquierda e insertamos el elemento en la posición correcta.

La figura a continuación ilustra cómo se inserta un elemento en el
arreglo. Suponiendo que el elemento base es `base`, necesitamos
desplazar todos los elementos desde el índice objetivo hasta `base` una
posición a la derecha, luego asignar `base` al índice objetivo.

#figure(image("es/docs/chapter_sorting/insertion_sort.assets/insertion_operation.png"),
  caption: [
    Operación de inserción única
  ]
)

== Proceso del algoritmo
<proceso-del-algoritmo>
El proceso general del ordenamiento por inserción se muestra en la
figura a continuación.

+ Considere el primer elemento del arreglo como ordenado.
+ Seleccione el segundo elemento como `base`, insértelo en su posición
  correcta, #strong[dejando los dos primeros elementos ordenados];.
+ Seleccione el tercer elemento como `base`, insértelo en su posición
  correcta, #strong[dejando los tres primeros elementos ordenados];.
+ Continuando de esta manera, en la iteración final, el último elemento
  se toma como `base`, y después de insertarlo en la posición correcta,
  #strong[todos los elementos están ordenados];.

#figure(image("es/docs/chapter_sorting/insertion_sort.assets/insertion_sort_overview.png"),
  caption: [
    Proceso de ordenamiento por inserción
  ]
)

El código de ejemplo es el siguiente:

```src
[file]{insertion_sort}-[class]{}-[func]{insertion_sort}
```

== Características del algoritmo
<características-del-algoritmo>
- #strong[La complejidad temporal es $O \( n^2 \)$, ordenamiento
  adaptativo];: En el peor de los casos, cada operación de inserción
  requiere $n - 1$, $n - 2$, …, $2$, $1$ bucles, sumando un total de
  $\( n - 1 \) n \/ 2$, por lo tanto, la complejidad temporal es
  $O \( n^2 \)$. En el caso de datos ordenados, la operación de
  inserción terminará temprano. Cuando el arreglo de entrada está
  completamente ordenado, el ordenamiento por inserción logra la mejor
  complejidad temporal de $O \( n \)$.
- #strong[La complejidad espacial es $O \( 1 \)$, ordenamiento in situ];:
  Los punteros $i$ y $j$ utilizan una cantidad constante de espacio
  extra.
- #strong[Ordenamiento estable];: Durante la operación de inserción,
  insertamos elementos a la derecha de elementos iguales, sin cambiar su
  orden.

== Ventajas del ordenamiento por inserción
<ventajas-del-ordenamiento-por-inserción>
La complejidad temporal del ordenamiento por inserción es $O \( n^2 \)$,
mientras que la complejidad temporal del ordenamiento rápido, que
estudiaremos a continuación, es $O \( n log n \)$. Aunque el
ordenamiento por inserción tiene una complejidad temporal mayor,
#strong[suele ser más rápido en tamaños de entrada pequeños];.

Esta conclusión es similar a la de la búsqueda lineal y binaria. Los
algoritmos como el ordenamiento rápido que tienen una complejidad
temporal de $O \( n log n \)$ y se basan en la estrategia de divide y
vencerás a menudo implican más operaciones unitarias. Para tamaños de
entrada pequeños, los valores numéricos de $n^2$ y $n log n$ son
cercanos, y la complejidad no domina, con el número de operaciones
unitarias por ronda jugando un papel decisivo.

De hecho, muchos lenguajes de programación (como Java) utilizan el
ordenamiento por inserción dentro de sus funciones de ordenamiento
incorporadas. El enfoque general es: para arreglos largos, usar
algoritmos de ordenamiento basados en estrategias de divide y vencerás,
como el ordenamiento rápido; para arreglos cortos, usar directamente el
ordenamiento por inserción.

Aunque el ordenamiento de burbuja, el ordenamiento por selección y el
ordenamiento por inserción tienen una complejidad temporal de
$O \( n^2 \)$, en la práctica, #strong[el ordenamiento por inserción se
usa comúnmente más que el ordenamiento de burbuja y el ordenamiento por
selección];, principalmente por las siguientes razones.

- El ordenamiento de burbuja se basa en el intercambio de elementos, lo
  que requiere el uso de una variable temporal, lo que implica 3
  operaciones unitarias; el ordenamiento por inserción se basa en la
  asignación de elementos, lo que requiere solo 1 operación unitaria.
  Por lo tanto, #strong[la sobrecarga computacional del ordenamiento de
  burbuja es generalmente mayor que la del ordenamiento por inserción];.
- La complejidad temporal del ordenamiento por selección siempre es
  $O \( n^2 \)$. #strong[Dado un conjunto de datos parcialmente
  ordenados, el ordenamiento por inserción suele ser más eficiente que
  el ordenamiento por selección];.
- El ordenamiento por selección es inestable y no se puede aplicar al
  ordenamiento multinivel.
= Ordenamiento rápido
<ordenamiento-rápido>
El ordenamiento rápido es un algoritmo de ordenamiento basado en la
estrategia de divide y vencerás, conocido por su eficiencia y amplia
aplicación.

La operación central del ordenamiento rápido es el "particionamiento del
pivote", que tiene como objetivo seleccionar un elemento del arreglo
como "pivote" y mover todos los elementos menores que el pivote a su
lado izquierdo, mientras que mueve todos los elementos mayores que el
pivote a su lado derecho. Específicamente, el proceso de
particionamiento del pivote se ilustra en la figura a continuación.

+ Seleccione el elemento más a la izquierda del arreglo como pivote, e
  inicialice dos punteros `i` y `j` para que apunten a los dos extremos
  del arreglo respectivamente.
+ Establezca un bucle donde cada ronda use `i` (`j`) para buscar el
  primer elemento mayor (menor) que el pivote, luego intercambie estos
  dos elementos.
+ Repita el paso `2.` hasta que `i` y `j` se encuentren, finalmente
  intercambie el pivote al límite entre los dos subarreglos.

\=== "\<1\>" #box(image("es/docs/chapter_sorting/quick_sort.assets/pivot_division_step1.png"))

\=== "\<2\>" #box(image("es/docs/chapter_sorting/quick_sort.assets/pivot_division_step2.png"))

\=== "\<3\>" #box(image("es/docs/chapter_sorting/quick_sort.assets/pivot_division_step3.png"))

\=== "\<4\>" #box(image("es/docs/chapter_sorting/quick_sort.assets/pivot_division_step4.png"))

\=== "\<5\>" #box(image("es/docs/chapter_sorting/quick_sort.assets/pivot_division_step5.png"))

\=== "\<6\>" #box(image("es/docs/chapter_sorting/quick_sort.assets/pivot_division_step6.png"))

\=== "\<7\>" #box(image("es/docs/chapter_sorting/quick_sort.assets/pivot_division_step7.png"))

\=== "\<8\>" #box(image("es/docs/chapter_sorting/quick_sort.assets/pivot_division_step8.png"))

\=== "\<9\>" #box(image("es/docs/chapter_sorting/quick_sort.assets/pivot_division_step9.png"))

Después del particionamiento del pivote, el arreglo original se divide
en tres partes: subarreglo izquierdo, pivote y subarreglo derecho,
satisfaciendo "cualquier elemento en el subarreglo izquierdo $lt.eq$
pivote $lt.eq$ cualquier elemento en el subarreglo derecho". Por lo
tanto, solo necesitamos ordenar estos dos subarreglos.

!!! note "Estrategia de divide y vencerás para el ordenamiento rápido"

```
La esencia del particionamiento del pivote es simplificar el problema de ordenamiento de un arreglo más largo en dos arreglos más cortos.
```

```src
[file]{quick_sort}-[class]{quick_sort}-[func]{partition}
```

== Proceso del algoritmo
<proceso-del-algoritmo>
El proceso general del ordenamiento rápido se muestra en la figura a
continuación.

+ Primero, realice un "particionamiento del pivote" en el arreglo
  original para obtener los subarreglos izquierdo y derecho sin ordenar.
+ Luego, realice recursivamente un "particionamiento del pivote" en los
  subarreglos izquierdo y derecho por separado.
+ Continúe recursivamente hasta que la longitud del subarreglo sea 1,
  completando así el ordenamiento de todo el arreglo.

#figure(image("es/docs/chapter_sorting/quick_sort.assets/quick_sort_overview.png"),
  caption: [
    Proceso de ordenamiento rápido
  ]
)

```src
[file]{quick_sort}-[class]{quick_sort}-[func]{quick_sort}
```

== Características del algoritmo
<características-del-algoritmo>
- #strong[Complejidad temporal de $O \( n log n \)$, ordenamiento no
  adaptativo];: En casos promedio, los niveles recursivos de
  particionamiento del pivote son $log n$, y el número total de bucles
  por nivel es $n$, utilizando $O \( n log n \)$ tiempo en total. En el
  peor de los casos, cada ronda de particionamiento del pivote divide un
  arreglo de longitud $n$ en dos subarreglos de longitudes $0$ y
  $n - 1$, cuando el número de niveles recursivos alcanza $n$, el número
  de bucles en cada nivel es $n$, y el tiempo total utilizado es
  $O \( n^2 \)$.
- #strong[Complejidad espacial de $O \( n \)$, ordenamiento in situ];:
  En el caso de que el arreglo de entrada esté completamente invertido,
  la profundidad recursiva en el peor de los casos alcanza $n$,
  utilizando $O \( n \)$ de espacio de marco de pila. La operación de
  ordenamiento se realiza en el arreglo original sin la ayuda de
  arreglos adicionales.
- #strong[Ordenamiento no estable];: En el paso final del
  particionamiento del pivote, el pivote puede intercambiarse a la
  derecha de elementos iguales.

== ¿Por qué el ordenamiento rápido es rápido?
<por-qué-el-ordenamiento-rápido-es-rápido>
Como su nombre indica, el ordenamiento rápido debe tener ciertas
ventajas en términos de eficiencia. Aunque la complejidad temporal
promedio del ordenamiento rápido es la misma que la del "ordenamiento
por fusión" y el "ordenamiento por montículos", generalmente es más
eficiente por las siguientes razones.

- #strong[Baja probabilidad de escenarios en el peor de los casos];:
  Aunque la complejidad temporal en el peor de los casos del
  ordenamiento rápido es $O \( n^2 \)$, menos estable que el
  ordenamiento por fusión, en la mayoría de los casos, el ordenamiento
  rápido puede operar con una complejidad temporal de $O \( n log n \)$.
- #strong[Alta utilización de la caché];: Durante la operación de
  particionamiento del pivote, el sistema puede cargar todo el
  subarreglo en la caché, lo que permite un acceso más eficiente a los
  elementos. En contraste, algoritmos como el "ordenamiento por
  montículos" necesitan acceder a los elementos de forma discontinua,
  careciendo de esta característica.
- #strong[Pequeño coeficiente constante de complejidad];: Entre los tres
  algoritmos mencionados anteriormente, el ordenamiento rápido tiene el
  menor número total de operaciones como comparaciones, asignaciones e
  intercambios. Esto es similar a por qué el "ordenamiento por
  inserción" es más rápido que el "ordenamiento de burbuja".

== Optimización del pivote
<optimización-del-pivote>
#strong[La eficiencia temporal del ordenamiento rápido puede degradarse
con ciertas entradas];. Por ejemplo, si el arreglo de entrada está
completamente invertido, dado que seleccionamos el elemento más a la
izquierda como pivote, después del particionamiento del pivote, el
pivote se intercambia al extremo derecho del arreglo, lo que hace que la
longitud del subarreglo izquierdo sea $0$ y la longitud del subarreglo
derecho sea $n - 1$. Continuando de esta manera, cada ronda de
particionamiento del pivote tendrá una longitud de subarreglo de $0$, y
la estrategia de divide y vencerás falla, degradando el ordenamiento
rápido a una forma similar al "ordenamiento de burbuja".

Para evitar esta situación, #strong[podemos optimizar la estrategia de
selección del pivote en el particionamiento del pivote];. Por ejemplo,
podemos seleccionar aleatoriamente un elemento como pivote. Sin embargo,
si la suerte no está de nuestro lado y seleccionamos pivotes subóptimos
de forma consistente, la eficiencia sigue sin ser satisfactoria.

Es importante tener en cuenta que los lenguajes de programación suelen
generar "números pseudoaleatorios". Si construimos un caso de prueba
específico para una secuencia de números pseudoaleatorios, la eficiencia
del ordenamiento rápido aún puede degradarse.

Para una mejora adicional, podemos seleccionar tres elementos candidatos
(generalmente el primer, último y el elemento central del arreglo),
#strong[y usar la mediana de estos tres elementos candidatos como
pivote];. De esta manera, la probabilidad de que el pivote "no sea ni
demasiado pequeño ni demasiado grande" aumentará considerablemente. Por
supuesto, también podemos seleccionar más elementos candidatos para
mejorar aún más la robustez del algoritmo. Con este método, la
probabilidad de que la complejidad temporal se degrade a $O \( n^2 \)$
se reduce en gran medida.

El código de ejemplo es el siguiente:

```src
[file]{quick_sort}-[class]{quick_sort_median}-[func]{partition}
```

== Optimización de la recursión de cola
<optimización-de-la-recursión-de-cola>
#strong[Con ciertas entradas, el ordenamiento rápido puede ocupar más
espacio];. Por ejemplo, considere un arreglo de entrada completamente
ordenado. Sea $m$ la longitud del subarreglo en la recursión. En cada
ronda de particionamiento del pivote, se producen un subarreglo
izquierdo de longitud $0$ y un subarreglo derecho de longitud $m - 1$.
Esto significa que el tamaño del problema se reduce en un solo elemento
por cada llamada recursiva, lo que resulta en una reducción muy pequeña
en cada nivel de recursión. Como resultado, la altura del árbol de
recursión puede alcanzar $n - 1$, lo que requiere $O \( n \)$ de espacio
de marco de pila.

Para evitar la acumulación de espacio de marco de pila, podemos comparar
las longitudes de los dos subarreglos después de cada ronda de
ordenamiento del pivote, #strong[y solo ordenar recursivamente el
subarreglo más corto];. Dado que la longitud del subarreglo más corto no
excederá $n \/ 2$, este método asegura que la profundidad de la
recursión no exceda $log n$, optimizando así la complejidad espacial en
el peor de los casos a $O \( log n \)$. El código es el siguiente:

```src
[file]{quick_sort}-[class]{quick_sort_tail_call}-[func]{quick_sort}
```
= Ordenamiento por mezcla
<ordenamiento-por-mezcla>
El ordenamiento por mezcla es un algoritmo de ordenamiento basado en la
estrategia de divide y vencerás, que involucra las fases de "dividir" y
"mezclar" que se muestran en la figura a continuación.

+ #strong[Fase de división];: Divida recursivamente el arreglo desde el
  punto medio, transformando el problema de ordenamiento de un arreglo
  largo en arreglos más cortos.
+ #strong[Fase de mezcla];: Deje de dividir cuando la longitud del
  subarreglo sea 1, y luego comience a mezclar. Los dos arreglos
  ordenados más cortos se mezclan continuamente en un arreglo ordenado
  más largo hasta que el proceso se completa.

#figure(image("es/docs/chapter_sorting/merge_sort.assets/merge_sort_overview.png"),
  caption: [
    Las fases de división y mezcla del ordenamiento por mezcla
  ]
)

== Flujo de trabajo del algoritmo
<flujo-de-trabajo-del-algoritmo>
Como se muestra en la figura a continuación, la "fase de división"
divide recursivamente el arreglo desde el punto medio en dos subarreglos
de arriba a abajo.

+ Calcule el punto medio `mid`, divida recursivamente el subarreglo
  izquierdo (intervalo `[left, mid]`) y el subarreglo derecho (intervalo
  `[mid + 1, right]`).
+ Continúe con el paso `1.` recursivamente hasta que la longitud del
  subarreglo sea 1, luego se detiene.

La "fase de mezcla" combina los subarreglos izquierdo y derecho en un
arreglo ordenado de abajo hacia arriba. Es importante tener en cuenta
que la mezcla comienza con subarreglos de longitud 1, y cada subarreglo
se ordena durante la fase de mezcla.

\=== "\<1\>" #box(image("es/docs/chapter_sorting/merge_sort.assets/merge_sort_step1.png"))

\=== "\<2\>" #box(image("es/docs/chapter_sorting/merge_sort.assets/merge_sort_step2.png"))

\=== "\<3\>" #box(image("es/docs/chapter_sorting/merge_sort.assets/merge_sort_step3.png"))

\=== "\<4\>" #box(image("es/docs/chapter_sorting/merge_sort.assets/merge_sort_step4.png"))

\=== "\<5\>" #box(image("es/docs/chapter_sorting/merge_sort.assets/merge_sort_step5.png"))

\=== "\<6\>" #box(image("es/docs/chapter_sorting/merge_sort.assets/merge_sort_step6.png"))

\=== "\<7\>" #box(image("es/docs/chapter_sorting/merge_sort.assets/merge_sort_step7.png"))

\=== "\<8\>" #box(image("es/docs/chapter_sorting/merge_sort.assets/merge_sort_step8.png"))

\=== "\<9\>" #box(image("es/docs/chapter_sorting/merge_sort.assets/merge_sort_step9.png"))

\=== "\<10\>" #box(image("es/docs/chapter_sorting/merge_sort.assets/merge_sort_step10.png"))

Se puede observar que el orden de recursión en el ordenamiento por
mezcla es consistente con el recorrido en postorden de un árbol binario.

- #strong[Recorrido en postorden];: Primero recorre recursivamente el
  subárbol izquierdo, luego el subárbol derecho y finalmente procesa el
  nodo raíz.
- #strong[Ordenamiento por mezcla];: Primero procesa recursivamente el
  subarreglo izquierdo, luego el subarreglo derecho y finalmente realiza
  la mezcla.

La implementación del ordenamiento por mezcla se muestra en el siguiente
código. Tenga en cuenta que el intervalo a mezclar en `nums` es
`[left, right]`, mientras que el intervalo correspondiente en `tmp` es
`[0, right - left]`.

```src
[file]{merge_sort}-[class]{}-[func]{merge_sort}
```

== Características del algoritmo
<características-del-algoritmo>
- #strong[Complejidad temporal de $O \( n log n \)$, ordenamiento no
  adaptativo];: La división crea un árbol de recursión de altura
  $log n$, con cada capa fusionando un total de $n$ operaciones, lo que
  resulta en una complejidad temporal general de $O \( n log n \)$.
- #strong[Complejidad espacial de $O \( n \)$, ordenamiento no in situ];:
  La profundidad de recursión es $log n$, utilizando $O \( log n \)$ de
  espacio de marco de pila. La operación de fusión requiere arreglos
  auxiliares, utilizando un espacio adicional de $O \( n \)$.
- #strong[Ordenamiento estable];: Durante el proceso de fusión, el orden
  de los elementos iguales permanece sin cambios.

== Ordenamiento de listas enlazadas
<ordenamiento-de-listas-enlazadas>
Para las listas enlazadas, el ordenamiento por mezcla tiene ventajas
significativas sobre otros algoritmos de ordenamiento. #strong[Puede
optimizar la complejidad espacial de la tarea de ordenamiento de listas
enlazadas a $O \( 1 \)$];.

- #strong[Fase de división];: Se puede usar la "iteración" en lugar de
  la "recursión" para realizar el trabajo de división de la lista
  enlazada, lo que ahorra el espacio de marco de pila utilizado por la
  recursión.
- #strong[Fase de mezcla];: En las listas enlazadas, las operaciones de
  inserción y eliminación de nodos se pueden lograr cambiando las
  referencias (punteros), por lo que no es necesario crear listas
  adicionales durante la fase de mezcla (combinando dos listas ordenadas
  cortas en una lista ordenada larga).

Los detalles de implementación son relativamente complejos, y los
lectores interesados pueden consultar materiales relacionados para
aprender.
= Ordenamiento por montículos
<ordenamiento-por-montículos>
!!! tip

```
Antes de leer esta sección, asegúrese de haber completado el capítulo "Montículo".
```

El ordenamiento por montículos es un algoritmo de ordenamiento eficiente
basado en la estructura de datos de montículo. Podemos implementar el
ordenamiento por montículos utilizando las operaciones de "creación de
montículo" y "extracción de elementos" que ya hemos aprendido.

+ Introduzca el arreglo y construya un montículo mínimo, donde el
  elemento más pequeño está en la parte superior del montículo.
+ Realice continuamente la operación de extracción, registre los
  elementos extraídos secuencialmente para obtener una lista ordenada de
  menor a mayor.

Aunque el método anterior es factible, requiere un arreglo adicional
para almacenar los elementos extraídos, lo que consume algo de espacio.
En la práctica, solemos utilizar una implementación más elegante.

== Flujo del algoritmo
<flujo-del-algoritmo>
Supongamos que la longitud del arreglo es $n$, el proceso de
ordenamiento por montículos es el siguiente.

+ Introduzca el arreglo y establezca un montículo máximo. Después de
  este paso, el elemento más grande se posiciona en la parte superior
  del montículo.
+ Intercambie el elemento superior del montículo (el primer elemento)
  con el elemento inferior del montículo (el último elemento). Después
  de este intercambio, reduzca la longitud del montículo en $1$ y
  aumente el recuento de elementos ordenados en $1$.
+ Comenzando desde la parte superior del montículo, realice la operación
  de tamizado hacia abajo de arriba a abajo. Después del tamizado hacia
  abajo, la propiedad del montículo se restaura.
+ Repita los pasos `2.` y `3.` en un bucle durante $n - 1$ rondas para
  completar el ordenamiento del arreglo.

!!! tip

```
De hecho, la operación de extracción de elementos también incluye los pasos `2.` y `3.`, con un paso adicional para sacar (eliminar) el elemento extraído del montículo.
```

\=== "\<1\>" #box(image("es/docs/chapter_sorting/heap_sort.assets/heap_sort_step1.png"))

\=== "\<2\>" #box(image("es/docs/chapter_sorting/heap_sort.assets/heap_sort_step2.png"))

\=== "\<3\>" #box(image("es/docs/chapter_sorting/heap_sort.assets/heap_sort_step3.png"))

\=== "\<4\>" #box(image("es/docs/chapter_sorting/heap_sort.assets/heap_sort_step4.png"))

\=== "\<5\>" #box(image("es/docs/chapter_sorting/heap_sort.assets/heap_sort_step5.png"))

\=== "\<6\>" #box(image("es/docs/chapter_sorting/heap_sort.assets/heap_sort_step6.png"))

\=== "\<7\>" #box(image("es/docs/chapter_sorting/heap_sort.assets/heap_sort_step7.png"))

\=== "\<8\>" #box(image("es/docs/chapter_sorting/heap_sort.assets/heap_sort_step8.png"))

\=== "\<9\>" #box(image("es/docs/chapter_sorting/heap_sort.assets/heap_sort_step9.png"))

\=== "\<10\>" #box(image("es/docs/chapter_sorting/heap_sort.assets/heap_sort_step10.png"))

\=== "\<11\>" #box(image("es/docs/chapter_sorting/heap_sort.assets/heap_sort_step11.png"))

\=== "\<12\>" #box(image("es/docs/chapter_sorting/heap_sort.assets/heap_sort_step12.png"))

En la implementación del código, utilizamos la función de tamizado hacia
abajo `sift_down()` del capítulo "Montículo". Es importante tener en
cuenta que, dado que la longitud del montículo disminuye a medida que se
extrae el elemento máximo, necesitamos agregar un parámetro de longitud
$n$ a la función `sift_down()` para especificar la longitud efectiva
actual del montículo. El código se muestra a continuación:

```src
[file]{heap_sort}-[class]{}-[func]{heap_sort}
```

== Características del algoritmo
<características-del-algoritmo>
- #strong[Complejidad temporal de $O \( n log n \)$, ordenamiento no
  adaptativo];: La creación del montículo utiliza tiempo $O \( n \)$. La
  extracción del elemento más grande del montículo toma tiempo
  $O \( log n \)$, en un bucle de $n - 1$ rondas.
- #strong[Complejidad espacial de $O \( 1 \)$, ordenamiento in situ];:
  Unas pocas variables de puntero utilizan espacio $O \( 1 \)$. Las
  operaciones de intercambio de elementos y heapificación se realizan en
  el arreglo original.
- #strong[Ordenamiento no estable];: Las posiciones relativas de los
  elementos iguales pueden cambiar durante el intercambio de los
  elementos superior e inferior del montículo.
= Ordenamiento por cubetas
<ordenamiento-por-cubetas>
Los algoritmos de ordenamiento mencionados anteriormente son todos
"algoritmos de ordenamiento basados en comparación", que ordenan
elementos comparando sus valores. Dichos algoritmos de ordenamiento no
pueden tener una complejidad temporal mejor que $O \( n log n \)$. A
continuación, discutiremos varios "algoritmos de ordenamiento sin
comparación" que podrían lograr una complejidad temporal lineal.

El ordenamiento por cubetas es una aplicación típica de la estrategia de
divide y vencerás. Funciona estableciendo una serie de cubetas
ordenadas, cada una de las cuales contiene un rango de datos, y
distribuyendo los datos de entrada de manera uniforme entre estas
cubetas. Y luego, los datos de cada cubeta se ordenan individualmente.
Finalmente, los datos ordenados de todas las cubetas se fusionan en
secuencia para producir el resultado final.

== Proceso del algoritmo
<proceso-del-algoritmo>
Considere un arreglo de longitud $n$, con números flotantes en el rango
$\[ 0 \, 1 \)$. El proceso de ordenamiento por cubetas se ilustra en la
figura a continuación.

+ Inicialice $k$ cubetas y distribuya $n$ elementos en estas $k$
  cubetas.
+ Ordene cada cubeta individualmente (usando la función de ordenamiento
  incorporada del lenguaje de programación).
+ Combine los resultados en el orden de la cubeta más pequeña a la más
  grande.

#figure(image("es/docs/chapter_sorting/bucket_sort.assets/bucket_sort_overview.png"),
  caption: [
    Proceso del algoritmo de ordenamiento por cubetas
  ]
)

El código se muestra a continuación:

```src
[file]{bucket_sort}-[class]{}-[func]{bucket_sort}
```

== Características del algoritmo
<características-del-algoritmo>
El ordenamiento por cubetas es adecuado para manejar conjuntos de datos
muy grandes. Por ejemplo, si los datos de entrada incluyen 1 millón de
elementos y las limitaciones de memoria del sistema impiden cargar todos
los datos al mismo tiempo, puede dividir los datos en 1.000 cubetas y
ordenar cada cubeta por separado antes de fusionar los resultados.

- #strong[La complejidad temporal es $O \( n + k \)$];: Suponiendo que
  los elementos se distribuyen uniformemente entre las cubetas, el
  número de elementos en cada cubeta es $n \/ k$. Suponiendo que ordenar
  una sola cubeta toma $O \( n \/ k log \( n \/ k \) \)$ tiempo, ordenar
  todas las cubetas toma $O \( n log \( n \/ k \) \)$ tiempo.
  #strong[Cuando el número de cubetas $k$ es relativamente grande, la
  complejidad temporal se acerca a $O \( n \)$];. La fusión de los
  resultados requiere recorrer todas las cubetas y elementos, lo que
  lleva $O \( n + k \)$ tiempo. En el peor de los casos, todos los datos
  se distribuyen en una sola cubeta, y ordenar esa cubeta toma
  $O \( n^2 \)$ tiempo.
- #strong[La complejidad espacial es $O \( n + k \)$, ordenamiento no in
  situ];: Requiere espacio adicional para $k$ cubetas y un total de $n$
  elementos.
- Si el ordenamiento por cubetas es estable depende de si el algoritmo
  de ordenamiento utilizado dentro de cada cubeta es estable.

== Cómo lograr una distribución uniforme
<cómo-lograr-una-distribución-uniforme>
La complejidad temporal teórica del ordenamiento por cubetas puede
alcanzar $O \( n \)$. #strong[La clave es distribuir uniformemente los
elementos entre todas las cubetas];, ya que los datos del mundo real a
menudo no se distribuyen uniformemente. Por ejemplo, es posible que
queramos distribuir uniformemente todos los productos en eBay por rango
de precios en 10 cubetas. Sin embargo, la distribución de los precios de
los productos puede no ser uniforme, con muchos por debajo de \$100 y
pocos por encima de \$500. Si el rango de precios se divide
uniformemente en 10, la diferencia en el número de productos en cada
cubeta será significativa.

Para lograr una distribución uniforme, podemos establecer inicialmente
un límite aproximado para dividir aproximadamente los datos en 3
cubetas. #strong[Una vez completada la distribución, las cubetas con más
elementos se pueden dividir aún más en 3 cubetas, hasta que el número de
elementos en todas las cubetas sea aproximadamente igual];.

Como se muestra en la figura a continuación, este método esencialmente
construye un árbol recursivo, con el objetivo de asegurar que el
recuento de elementos en los nodos hoja sea lo más uniforme posible. Por
supuesto, no es necesario dividir los datos en 3 cubetas en cada ronda;
la estrategia de partición se puede adaptar a las características únicas
de los datos.

#figure(image("es/docs/chapter_sorting/bucket_sort.assets/scatter_in_buckets_recursively.png"),
  caption: [
    División recursiva de cubetas
  ]
)

Si conocemos la distribución de probabilidad de los precios de los
productos de antemano, #strong[podemos establecer los límites de precios
para cada cubeta basándonos en la distribución de probabilidad de los
datos];. Cabe señalar que no es necesariamente necesario calcular
específicamente la distribución de datos; en su lugar, se puede
aproximar basándose en las características de los datos utilizando un
modelo de probabilidad.

Como se muestra en la figura a continuación, suponiendo que los precios
de los productos siguen una distribución normal, podemos definir
intervalos de precios razonables para equilibrar la distribución de los
artículos entre las cubetas.

#figure(image("es/docs/chapter_sorting/bucket_sort.assets/scatter_in_buckets_distribution.png"),
  caption: [
    División de cubetas basada en la distribución de probabilidad
  ]
)
= Ordenamiento por conteo
<ordenamiento-por-conteo>
El ordenamiento por conteo logra el ordenamiento contando el número de
elementos, generalmente aplicado a arreglos de enteros.

== Implementación simple
<implementación-simple>
Comencemos con un ejemplo simple. Dado un arreglo `nums` de longitud
$n$, donde todos los elementos son "enteros no negativos", el proceso
general del ordenamiento por conteo se muestra en la figura a
continuación.

+ Recorra el arreglo para encontrar el número máximo, denotado como $m$,
  luego cree un arreglo auxiliar `counter` de longitud $m + 1$.
+ #strong[Use `counter` para contar la ocurrencia de cada número en
  `nums`];, donde `counter[num]` corresponde a la ocurrencia del número
  `num`. El método de conteo es simple, solo recorra `nums` (suponga que
  el número actual es `num`), y aumente `counter[num]` en $1$ en cada
  ronda.
+ #strong[Dado que los índices de `counter` están naturalmente
  ordenados, todos los números ya están esencialmente ordenados];. A
  continuación, recorremos `counter` y rellenamos `nums` en orden
  ascendente de ocurrencia.

#figure(image("es/docs/chapter_sorting/counting_sort.assets/counting_sort_overview.png"),
  caption: [
    Proceso de ordenamiento por conteo
  ]
)

El código se muestra a continuación:

```src
[file]{counting_sort}-[class]{}-[func]{counting_sort_naive}
```

!!! note "Conexión entre el ordenamiento por conteo y el ordenamiento
por cubetas"

```
Desde la perspectiva del ordenamiento por cubetas, podemos considerar cada índice del arreglo de conteo `counter` en el ordenamiento por conteo como una cubeta, y el proceso de conteo como la distribución de elementos en las cubetas correspondientes. Esencialmente, el ordenamiento por conteo es un caso especial del ordenamiento por cubetas para datos enteros.
```

== Implementación completa
<implementación-completa>
Los lectores observadores podrían notar que, #strong[si los datos de
entrada son un objeto, el paso `3.` anterior no es válido];. Supongamos
que los datos de entrada son un objeto de producto, queremos ordenar los
productos por el precio (una variable miembro de la clase), pero el
algoritmo anterior solo puede dar el precio ordenado como resultado.

Entonces, ¿cómo podemos obtener el resultado de ordenamiento para los
datos originales? Primero, calculamos la "suma de prefijos" de
`counter`. Como su nombre indica, la suma de prefijos en el índice `i`,
`prefix[i]`, es igual a la suma de los primeros `i` elementos del
arreglo:

$ upright("prefix") \[ i \] = sum_(j = 0)^i upright("counter[j]") $

#strong[La suma de prefijos tiene un significado claro,
`prefix[num] - 1` representa el índice de la última ocurrencia del
elemento `num` en el arreglo de resultados `res`];. Esta información es
crucial, ya que nos dice dónde debe aparecer cada elemento en el arreglo
de resultados. A continuación, recorremos cada elemento `num` del
arreglo original `nums` en orden inverso, realizando los siguientes dos
pasos en cada iteración.

+ Rellene `num` en el arreglo `res` en el índice `prefix[num] - 1`.
+ Disminuya la suma de prefijos `prefix[num]` en $1$ para obtener el
  siguiente índice donde colocar `num`.

Después del recorrido, el arreglo `res` contiene el resultado ordenado,
y finalmente, `res` reemplaza el arreglo original `nums`. El proceso
completo de ordenamiento por conteo se muestra en la figura a
continuación.

\=== "\<1\>" #box(image("es/docs/chapter_sorting/counting_sort.assets/counting_sort_step1.png"))

\=== "\<2\>" #box(image("es/docs/chapter_sorting/counting_sort.assets/counting_sort_step2.png"))

\=== "\<3\>" #box(image("es/docs/chapter_sorting/counting_sort.assets/counting_sort_step3.png"))

\=== "\<4\>" #box(image("es/docs/chapter_sorting/counting_sort.assets/counting_sort_step4.png"))

\=== "\<5\>" #box(image("es/docs/chapter_sorting/counting_sort.assets/counting_sort_step5.png"))

\=== "\<6\>" #box(image("es/docs/chapter_sorting/counting_sort.assets/counting_sort_step6.png"))

\=== "\<7\>" #box(image("es/docs/chapter_sorting/counting_sort.assets/counting_sort_step7.png"))

\=== "\<8\>" #box(image("es/docs/chapter_sorting/counting_sort.assets/counting_sort_step8.png"))

El código de implementación del ordenamiento por conteo se muestra a
continuación:

```src
[file]{counting_sort}-[class]{}-[func]{counting_sort}
```

== Características del algoritmo
<características-del-algoritmo>
- #strong[La complejidad temporal es $O \( n + m \)$, ordenamiento no
  adaptativo];: Implica recorrer `nums` y `counter`, ambos utilizando
  tiempo lineal. Generalmente, $n gt.double m$, y la complejidad
  temporal tiende a $O \( n \)$.
- #strong[La complejidad espacial es $O \( n + m \)$, ordenamiento no in
  situ];: Utiliza un arreglo `res` de longitud $n$ y un arreglo
  `counter` de longitud $m$ respectivamente.
- #strong[Ordenamiento estable];: Dado que los elementos se rellenan en
  `res` en un orden "de derecha a izquierda", invertir el recorrido de
  `nums` puede evitar cambiar la posición relativa entre elementos
  iguales, logrando así un ordenamiento estable. En realidad, recorrer
  `nums` en orden también puede producir el resultado de ordenamiento
  correcto, pero el resultado es inestable.

== Limitaciones
<limitaciones>
Para este momento, es posible que encuentre el ordenamiento por conteo
muy inteligente, ya que puede lograr un ordenamiento eficiente
simplemente contando cantidades. Sin embargo, los requisitos previos
para usar el ordenamiento por conteo son relativamente estrictos.

#strong[El ordenamiento por conteo solo es adecuado para enteros no
negativos];. Si desea aplicarlo a otros tipos de datos, debe asegurarse
de que estos datos se puedan convertir a enteros no negativos sin
cambiar el orden original de los elementos. Por ejemplo, para un arreglo
que contenga enteros negativos, primero puede agregar una constante a
todos los números, convirtiéndolos todos en números positivos, y luego
convertirlos de nuevo después de que el ordenamiento se complete.

#strong[El ordenamiento por conteo es adecuado para grandes conjuntos de
datos con un rango pequeño de valores];. Por ejemplo, en el ejemplo
anterior, $m$ no debe ser demasiado grande, de lo contrario, ocupará
demasiado espacio. Y cuando $n lt.double m$, el ordenamiento por conteo
utiliza tiempo $O \( m \)$, lo que puede ser más lento que los
algoritmos de ordenamiento $O \( n log n \)$.
= Ordenamiento por radix
<ordenamiento-por-radix>
La sección anterior introdujo el ordenamiento por conteo, que es
adecuado para escenarios donde el tamaño de los datos $n$ es grande pero
el rango de datos $m$ es pequeño. Supongamos que necesitamos ordenar
$n = 10^6$ ID de estudiantes, donde cada ID es un número de $8$ dígitos.
Esto significa que el rango de datos $m = 10^8$ es muy grande. Usar el
ordenamiento por conteo en este caso requeriría un espacio de memoria
significativo. El ordenamiento por radix puede evitar esta situación.

El ordenamiento por radix comparte el mismo concepto central que el
ordenamiento por conteo, que también ordena contando la frecuencia de
los elementos. Mientras tanto, el ordenamiento por radix se basa en esto
utilizando la relación progresiva entre los dígitos de los números.
Procesa y ordena los dígitos uno a la vez, logrando el orden final
ordenado.

== Proceso del algoritmo
<proceso-del-algoritmo>
Tomando los datos de ID de estudiante como ejemplo, supongamos que el
dígito menos significativo es el $1^(upright("er"))$ y el más
significativo es el $8^(upright("vo"))$, el proceso de ordenamiento por
radix se ilustra en la figura a continuación.

+ Inicialice el dígito $k = 1$.
+ Realice un "ordenamiento por conteo" en el dígito
  $k^(upright("ésimo"))$ de los ID de estudiante. Una vez completado,
  los datos se ordenarán de menor a mayor según el dígito
  $k^(upright("ésimo"))$.
+ Incremente $k$ en $1$, luego regrese al paso `2.` y continúe iterando
  hasta que todos los dígitos hayan sido ordenados, momento en el que
  finaliza el proceso.

#figure(image("es/docs/chapter_sorting/radix_sort.assets/radix_sort_overview.png"),
  caption: [
    Proceso del algoritmo de ordenamiento por radix
  ]
)

A continuación, analizamos la implementación del código. Para un número
$x$ en base $d$, para obtener su dígito $k^(upright("ésimo"))$ $x_k$, se
puede usar la siguiente fórmula de cálculo:

$ x_k = floor.l x / d^(k - 1) floor.r med mod med d $

Donde $floor.l a floor.r$ denota el redondeo hacia abajo del número de
punto flotante $a$, y $med mod med med d$ denota el módulo de $d$. Para
los datos de ID de estudiante, $d = 10$ y $k in \[ 1 \, 8 \]$.

Además, necesitamos modificar ligeramente el código de ordenamiento por
conteo para permitir el ordenamiento basado en el dígito
$k^(upright("ésimo"))$:

```src
[file]{radix_sort}-[class]{}-[func]{radix_sort}
```

!!! question "¿Por qué empezar a ordenar desde el dígito menos
significativo?"

```
En rondas de ordenamiento consecutivas, el resultado de una ronda posterior anulará el resultado de una ronda anterior. Por ejemplo, si el resultado de la primera ronda es $a < b$ y la segunda ronda es $a > b$, el resultado de la segunda ronda reemplazará el resultado de la primera ronda. Dado que los dígitos de orden superior tienen precedencia sobre los dígitos de orden inferior, tiene sentido ordenar los dígitos inferiores antes que los dígitos superiores.
```

== Características del algoritmo
<características-del-algoritmo>
En comparación con el ordenamiento por conteo, el ordenamiento por radix
es adecuado para rangos numéricos más grandes, #strong[pero asume que
los datos se pueden representar en un número fijo de dígitos, y el
número de dígitos no debe ser demasiado grande];. Por ejemplo, los
números de punto flotante no son adecuados para el ordenamiento por
radix, ya que su recuento de dígitos $k$ puede ser grande, lo que podría
conducir a una complejidad temporal $O \( n k \) gt.double O \( n^2 \)$.

- #strong[La complejidad temporal es $O \( n k \)$, ordenamiento no
  adaptativo];: Suponiendo que el tamaño de los datos es $n$, los datos
  están en base $d$, y el número máximo de dígitos es $k$, entonces
  ordenar un solo dígito toma $O \( n + d \)$ tiempo, y ordenar los $k$
  dígitos toma $O \( \( n + d \) k \)$ tiempo. Generalmente, tanto $d$
  como $k$ son relativamente pequeños, lo que lleva a una complejidad
  temporal que se acerca a $O \( n \)$.
- #strong[La complejidad espacial es $O \( n + d \)$, ordenamiento no in
  situ];: Al igual que el ordenamiento por conteo, el ordenamiento por
  radix se basa en arreglos `res` y `counter` de longitudes $n$ y $d$
  respectivamente.
- #strong[Ordenamiento estable];: Cuando el ordenamiento por conteo es
  estable, el ordenamiento por radix también es estable; si el
  ordenamiento por conteo es inestable, el ordenamiento por radix no
  puede garantizar un orden de ordenamiento correcto.
= Resumen
<resumen>
=== Revisión clave
<revisión-clave>
- El ordenamiento de burbuja funciona intercambiando elementos
  adyacentes. Al agregar una bandera para permitir el retorno temprano,
  podemos optimizar la complejidad temporal en el mejor de los casos del
  ordenamiento de burbuja a $O \( n \)$.
- El ordenamiento por inserción ordena cada ronda insertando elementos
  del intervalo no ordenado en la posición correcta en el intervalo
  ordenado. Aunque la complejidad temporal del ordenamiento por
  inserción es $O \( n^2 \)$, es muy popular para ordenar pequeñas
  cantidades de datos debido a un número relativamente menor de
  operaciones por unidad.
- El ordenamiento rápido se basa en operaciones de particionamiento de
  centinela. En el particionamiento de centinela, es posible elegir
  siempre el peor pivote, lo que lleva a una degradación de la
  complejidad temporal a $O \( n^2 \)$. La introducción de pivotes
  medianos o aleatorios puede reducir la probabilidad de tal
  degradación. La recursión de cola reduce eficazmente la profundidad de
  la recursión, optimizando la complejidad espacial a $O \( log n \)$.
- El ordenamiento por mezcla incluye dos fases: división y mezcla, que
  típicamente encarnan la estrategia de divide y vencerás. En el
  ordenamiento por mezcla, ordenar un arreglo requiere crear arreglos
  auxiliares, lo que resulta en una complejidad espacial de $O \( n \)$;
  sin embargo, la complejidad espacial para ordenar una lista se puede
  optimizar a $O \( 1 \)$.
- El ordenamiento por cubetas consta de tres pasos: distribuir los datos
  en cubetas, ordenar dentro de cada cubeta y fusionar los resultados en
  el orden de las cubetas. También encarna la estrategia de divide y
  vencerás, adecuada para conjuntos de datos muy grandes. La clave del
  ordenamiento por cubetas es la distribución uniforme de los datos.
- El ordenamiento por conteo es una variante del ordenamiento por
  cubetas, que ordena contando las ocurrencias de cada punto de datos.
  El ordenamiento por conteo es adecuado para grandes conjuntos de datos
  con un rango limitado de datos y requiere la conversión de datos a
  enteros positivos.
- El ordenamiento por radix procesa los datos ordenándolos dígito por
  dígito, lo que requiere que los datos se representen como números de
  longitud fija.
- En general, buscamos un algoritmo de ordenamiento que tenga alta
  eficiencia, estabilidad, operación in situ y adaptabilidad. Sin
  embargo, al igual que otras estructuras de datos y algoritmos, ningún
  algoritmo de ordenamiento puede cumplir todas estas condiciones
  simultáneamente. En aplicaciones prácticas, necesitamos elegir el
  algoritmo de ordenamiento apropiado basándonos en las características
  de los datos.
- La siguiente figura compara los algoritmos de ordenamiento principales
  en términos de eficiencia, estabilidad, naturaleza in situ y
  adaptabilidad.

#figure(image("es/docs/chapter_sorting/summary.assets/sorting_algorithms_comparison.png"),
  caption: [
    Comparación de algoritmos de ordenamiento
  ]
)

=== Preguntas y respuestas
<preguntas-y-respuestas>
#strong[P];: ¿Cuándo es necesaria la estabilidad de los algoritmos de
ordenamiento?

En realidad, podríamos ordenar basándonos en un atributo de un objeto.
Por ejemplo, los estudiantes tienen nombres y alturas como atributos, y
nuestro objetivo es implementar un ordenamiento multinivel: primero por
nombre para obtener `(A, 180) (B, 185) (C, 170) (D, 170)`; luego por
altura. Debido a que el algoritmo de ordenamiento es inestable,
podríamos terminar con `(D, 170) (C, 170) (A, 180) (B, 185)`.

Se puede ver que las posiciones de los estudiantes D y C se han
intercambiado, alterando el orden de los nombres, lo cual es indeseable.

#strong[P];: ¿Se puede intercambiar el orden de "búsqueda de derecha a
izquierda" y "búsqueda de izquierda a derecha" en el particionamiento de
centinela?

No, cuando se utiliza el elemento más a la izquierda como pivote,
primero debemos "buscar de derecha a izquierda" y luego "buscar de
izquierda a derecha". Esta conclusión es algo contraintuitiva, así que
analicemos la razón.

El último paso de la partición de centinela `partition()` es
intercambiar `nums[left]` y `nums[i]`. Después del intercambio, los
elementos a la izquierda del pivote son todos `<=` el pivote, #strong[lo
que requiere que `nums[left] >= nums[i]` debe cumplirse antes del último
intercambio];. Supongamos que primero "buscamos de izquierda a derecha",
y si no se encuentra ningún elemento mayor que el pivote,
#strong[saldremos del bucle cuando `i == j`, posiblemente con
`nums[j] == nums[i] > nums[left]`];. En otras palabras, la operación de
intercambio final intercambiará un elemento mayor que el pivote al
extremo izquierdo del arreglo, lo que hará que la partición de centinela
falle.

Por ejemplo, dado el arreglo `[0, 0, 0, 0, 1]`, si primero "buscamos de
izquierda a derecha", el arreglo después de la partición de centinela es
`[1, 0, 0, 0, 0]`, lo cual es incorrecto.

Si consideramos más a fondo, si elegimos `nums[right]` como pivote,
entonces, exactamente lo contrario, primero debemos "buscar de izquierda
a derecha".

#strong[P];: Con respecto a la optimización de la recursión de cola,
¿por qué elegir el arreglo más corto asegura que la profundidad de la
recursión no exceda $log n$?

La profundidad de la recursión es el número de métodos recursivos
actualmente no devueltos. Cada ronda de partición de centinela divide el
arreglo original en dos subarreglos. Con la optimización de la recursión
de cola, la longitud del subarreglo a seguir recursivamente es como
máximo la mitad de la longitud del arreglo original. Suponiendo que el
peor caso siempre reduce la longitud a la mitad, la profundidad final de
la recursión será $log n$.

Revisando el ordenamiento rápido original, podríamos procesar
recursivamente arreglos más grandes de forma continua, en el peor de los
casos de $n$, $n - 1$, …, $2$, $1$, con una profundidad de recursión de
$n$. La optimización de la recursión de cola puede evitar este
escenario.

#strong[P];: Cuando todos los elementos del arreglo son iguales, ¿la
complejidad temporal del ordenamiento rápido es $O \( n^2 \)$? ¿Cómo se
debe manejar este caso degenerado?

Sí. Para esta situación, considere usar el particionamiento de centinela
para dividir el arreglo en tres partes: menor que, igual a y mayor que
el pivote. Solo proceda recursivamente con las partes menor que y mayor
que. En este método, un arreglo donde todos los elementos de entrada son
iguales se puede ordenar en solo una ronda de particionamiento de
centinela.

#strong[P];: ¿Por qué la complejidad temporal en el peor de los casos
del ordenamiento por cubetas es $O \( n^2 \)$?

En el peor de los casos, todos los elementos se colocan en la misma
cubeta. Si usamos un algoritmo $O \( n^2 \)$ para ordenar estos
elementos, la complejidad temporal será $O \( n^2 \)$.
= Divide y vencerás
<divide-y-vencerás>
#figure(image("es/docs/assets/covers/chapter_divide_and_conquer.jpg"),
  caption: [
    Divide y vencerás
  ]
)

!!! abstract

```
Los problemas difíciles se descomponen capa por capa, y cada descomposición los hace más simples.

Divide y vencerás revela una verdad profunda: comienza con la simplicidad, y la complejidad se disuelve.
```
= Algoritmos de divide y vencerás
<algoritmos-de-divide-y-vencerás>
Divide y vencerás es una estrategia algorítmica importante y popular.
Como su nombre indica, el algoritmo se implementa típicamente de forma
recursiva y consta de dos pasos: "dividir" y "vencer".

+ #strong[Dividir (fase de partición)];: Descomponer recursivamente el
  problema original en dos o más subproblemas más pequeños hasta que se
  alcance el subproblema más pequeño.
+ #strong[Vencer (fase de fusión)];: Comenzando desde el subproblema más
  pequeño con solución conocida, construimos la solución al problema
  original fusionando las soluciones de los subproblemas de abajo hacia
  arriba.

Como se muestra en la figura a continuación, el "ordenamiento por
mezcla" es una de las aplicaciones típicas de la estrategia de divide y
vencerás.

+ #strong[Dividir];: Dividir recursivamente el arreglo original
  (problema original) en dos subarreglos (subproblemas), hasta que el
  subarreglo tenga solo un elemento (subproblema más pequeño).
+ #strong[Vencer];: Fusionar los subarreglos ordenados (soluciones a los
  subproblemas) de abajo hacia arriba para obtener un arreglo original
  ordenado (solución al problema original).

#figure(image("es/docs/chapter_divide_and_conquer/divide_and_conquer.assets/divide_and_conquer_merge_sort.png"),
  caption: [
    Estrategia de divide y vencerás del ordenamiento por mezcla
  ]
)

== Cómo identificar problemas de divide y vencerás
<cómo-identificar-problemas-de-divide-y-vencerás>
Si un problema es adecuado para una solución de divide y vencerás
generalmente se puede decidir basándose en los siguientes criterios.

+ #strong[El problema se puede dividir en otros más pequeños];: El
  problema original se puede dividir en subproblemas más pequeños y
  similares, y dicho proceso se puede realizar recursivamente de la
  misma manera.
+ #strong[Los subproblemas son independientes];: No hay superposición
  entre los subproblemas, y son independientes y se pueden resolver por
  separado.
+ #strong[Las soluciones a los subproblemas se pueden fusionar];: La
  solución al problema original se deriva combinando las soluciones de
  los subproblemas.

Claramente, el ordenamiento por mezcla cumple estos tres criterios.

+ #strong[El problema se puede dividir en otros más pequeños];: Dividir
  recursivamente el arreglo (problema original) en dos subarreglos
  (subproblemas).
+ #strong[Los subproblemas son independientes];: Cada subarreglo se
  puede ordenar de forma independiente (los subproblemas se pueden
  resolver de forma independiente).
+ #strong[Las soluciones a los subproblemas se pueden fusionar];: Dos
  subarreglos ordenados (soluciones a los subproblemas) se pueden
  fusionar en un arreglo ordenado (solución al problema original).

== Mejorar la eficiencia a través de divide y vencerás
<mejorar-la-eficiencia-a-través-de-divide-y-vencerás>
La #strong[estrategia de divide y vencerás no solo resuelve eficazmente
los problemas algorítmicos, sino que también a menudo mejora la
eficiencia];. En los algoritmos de ordenamiento, el ordenamiento rápido,
el ordenamiento por mezcla y el ordenamiento por montículos son más
rápidos que el ordenamiento por selección, el ordenamiento de burbuja y
el ordenamiento por inserción porque aplican la estrategia de divide y
vencerás.

Podemos tener una pregunta en mente: #strong[¿Por qué divide y vencerás
puede mejorar la eficiencia del algoritmo, y cuál es la lógica
subyacente?] En otras palabras, ¿por qué dividir un problema en
subproblemas, resolverlos y combinar sus soluciones para abordar el
problema original ofrece más eficiencia que resolver directamente el
problema original? Esta pregunta se puede analizar desde dos aspectos:
recuento de operaciones y computación paralela.

=== Optimización del recuento de operaciones
<optimización-del-recuento-de-operaciones>
Tomando el "ordenamiento de burbuja" como ejemplo, requiere
$O \( n^2 \)$ tiempo para procesar un arreglo de longitud $n$.
Supongamos que dividimos el arreglo desde el punto medio en dos
subarreglos como se muestra en la figura a continuación, dicha división
requiere $O \( n \)$ tiempo. Ordenar cada subarreglo requiere
$O \( \( n \/ 2 \)^2 \)$ tiempo. Y fusionar los dos subarreglos requiere
$O \( n \)$ tiempo. Por lo tanto, la complejidad temporal general es:

$ O \( n + \( n / 2 \)^2 times 2 + n \) = O \( n^2 / 2 + 2 n \) $

#figure(image("es/docs/chapter_divide_and_conquer/divide_and_conquer.assets/divide_and_conquer_bubble_sort.png"),
  caption: [
    Ordenamiento de burbuja antes y después de la partición del arreglo
  ]
)

Calculemos la siguiente desigualdad, donde el lado izquierdo representa
el número total de operaciones antes de la división y el lado derecho
representa el número total de operaciones después de la división,
respectivamente:

$ n^2 & > n^2 / 2 + 2 n\
n^2 - n^2 / 2 - 2 n & > 0\
n \( n - 4 \) & > 0 $

#strong[Esto significa que cuando $n > 4$, el número de operaciones
después de la partición es menor, lo que lleva a un mejor rendimiento];.
Tenga en cuenta que la complejidad temporal después de la partición
sigue siendo cuadrática $O \( n^2 \)$, pero el factor constante en la
complejidad ha disminuido.

Podemos ir aún más lejos. #strong[¿Qué tal si seguimos dividiendo los
subarreglos desde sus puntos medios en dos subarreglos] hasta que los
subarreglos tengan solo un elemento? Esta idea es en realidad el
"ordenamiento por mezcla", con una complejidad temporal de
$O \( n log n \)$.

Intentemos algo un poco diferente de nuevo. #strong[¿Qué tal si
dividimos en más particiones en lugar de solo dos?] Por ejemplo,
¿dividimos uniformemente el arreglo original en $k$ subarreglos? Este
enfoque es muy similar al "ordenamiento por cubetas", que es muy
adecuado para ordenar datos masivos. Teóricamente, la complejidad
temporal puede alcanzar $O \( n + k \)$.

=== Optimización a través de la computación paralela
<optimización-a-través-de-la-computación-paralela>
Sabemos que los subproblemas generados por divide y vencerás son
independientes entre sí, #strong[lo que significa que pueden resolverse
en paralelo.] Como resultado, divide y vencerás no solo reduce la
complejidad temporal del algoritmo, #strong[sino que también facilita la
optimización paralela por parte de los sistemas operativos modernos.]

La optimización paralela es particularmente efectiva en entornos con
múltiples núcleos o procesadores. Como el sistema puede procesar
múltiples subproblemas simultáneamente, utilizando plenamente los
recursos informáticos, el tiempo de ejecución general se reduce
significativamente.

Por ejemplo, en el "ordenamiento por cubetas" que se muestra en la
figura a continuación, dividimos datos masivos uniformemente en varias
cubetas. Los trabajos de ordenar cada cubeta se pueden asignar a las
unidades de computación disponibles. Una vez que todos los trabajos
están hechos, todas las cubetas ordenadas se fusionan para producir el
resultado final.

#figure(image("es/docs/chapter_divide_and_conquer/divide_and_conquer.assets/divide_and_conquer_parallel_computing.png"),
  caption: [
    Computación paralela del ordenamiento por cubetas
  ]
)

== Aplicaciones comunes de divide y vencerás
<aplicaciones-comunes-de-divide-y-vencerás>
Divide y vencerás se puede utilizar para resolver muchos problemas
algorítmicos clásicos.

- #strong[Encontrar el par de puntos más cercano];: Este algoritmo
  funciona dividiendo el conjunto de puntos en dos mitades. Luego,
  encuentra recursivamente el par más cercano en cada mitad. Finalmente,
  considera los pares que abarcan las dos mitades para encontrar el par
  más cercano en general.
- #strong[Multiplicación de enteros grandes];: Un algoritmo se llama
  Karatsuba. Descompone la multiplicación de enteros grandes en varias
  multiplicaciones y sumas de enteros más pequeños.
- #strong[Multiplicación de matrices];: Un ejemplo es el algoritmo de
  Strassen. Descompone una multiplicación de matrices grandes en
  múltiples multiplicaciones y sumas de matrices pequeñas.
- #strong[Problema de las Torres de Hanói];: El problema de las Torres
  de Hanói se puede resolver recursivamente, una aplicación típica de la
  estrategia de divide y vencerás.
- #strong[Resolución de pares de inversión];: En una secuencia, si un
  número precedente es mayor que un número siguiente, entonces estos dos
  números constituyen un par de inversión. La resolución del problema de
  pares de inversión puede utilizar la idea de divide y vencerás, con la
  ayuda del ordenamiento por mezcla.

Divide y vencerás también se aplica ampliamente en el diseño de
algoritmos y estructuras de datos.

- #strong[Búsqueda binaria];: La búsqueda binaria divide un arreglo
  ordenado en dos mitades desde el índice del punto medio. Y luego,
  basándose en el resultado de la comparación entre el valor objetivo y
  el valor del elemento central, se descarta una mitad. La búsqueda
  continúa en la mitad restante con el mismo proceso hasta que se
  encuentra el objetivo o no queda ningún elemento.
- #strong[Ordenamiento por mezcla];: Ya se introdujo al principio de
  esta sección, no se necesita más elaboración.
- #strong[Ordenamiento rápido];: El ordenamiento rápido elige un valor
  pivote para dividir el arreglo en dos subarreglos, uno con elementos
  más pequeños que el pivote y el otro con elementos más grandes que el
  pivote. Dicho proceso continúa contra cada uno de estos dos
  subarreglos hasta que solo contienen un elemento.
- #strong[Ordenamiento por cubetas];: La idea básica del ordenamiento
  por cubetas es distribuir los datos en múltiples cubetas. Después de
  ordenar los elementos dentro de cada cubeta, recuperar los elementos
  de las cubetas en orden para obtener un arreglo ordenado.
- #strong[Árboles];: Por ejemplo, árboles de búsqueda binaria, árboles
  AVL, árboles rojo-negro, árboles B y árboles B+, etc. Sus operaciones,
  como búsqueda, inserción y eliminación, pueden considerarse
  aplicaciones de la estrategia de divide y vencerás.
- #strong[Montículo];: Un montículo es un tipo especial de árbol binario
  completo. Sus diversas operaciones, como inserción, eliminación y
  heapify, en realidad implican la idea de divide y vencerás.
- #strong[Tabla hash];: Aunque las tablas hash no aplican directamente
  divide y vencerás, algunas soluciones de resolución de colisiones hash
  aplican indirectamente la estrategia. Por ejemplo, las listas largas
  en el direccionamiento encadenado pueden convertirse en árboles
  rojo-negro para mejorar la eficiencia de la consulta.

Se puede ver que #strong[divide y vencerás es una idea algorítmica
sutilmente omnipresente];, incrustada en varios algoritmos y estructuras
de datos.
= Estrategia de búsqueda de divide y vencerás
<estrategia-de-búsqueda-de-divide-y-vencerás>
Hemos aprendido que los algoritmos de búsqueda se dividen en dos
categorías principales.

- #strong[Búsqueda por fuerza bruta];: Se implementa recorriendo la
  estructura de datos, con una complejidad temporal de $O \( n \)$.
- #strong[Búsqueda adaptativa];: Utiliza una forma de organización de
  datos única o información previa, y su complejidad temporal puede
  alcanzar $O \( log n \)$ o incluso $O \( 1 \)$.

De hecho, #strong[los algoritmos de búsqueda con una complejidad
temporal de $O \( log n \)$ suelen basarse en la estrategia de divide y
vencerás];, como la búsqueda binaria y los árboles.

- Cada paso de la búsqueda binaria divide el problema (buscar un
  elemento objetivo en un arreglo) en un problema más pequeño (buscar el
  elemento objetivo en la mitad del arreglo), continuando hasta que el
  arreglo esté vacío o se encuentre el elemento objetivo.
- Los árboles representan la idea de divide y vencerás, donde en
  estructuras de datos como árboles de búsqueda binaria, árboles AVL y
  montículos, la complejidad temporal de varias operaciones es
  $O \( log n \)$.

La estrategia de divide y vencerás de la búsqueda binaria es la
siguiente.

- #strong[El problema se puede dividir];: La búsqueda binaria divide
  recursivamente el problema original (buscar en un arreglo) en
  subproblemas (buscar en la mitad del arreglo), lo que se logra
  comparando el elemento central con el elemento objetivo.
- #strong[Los subproblemas son independientes];: En la búsqueda binaria,
  cada ronda maneja un subproblema, sin verse afectado por otros
  subproblemas.
- #strong[Las soluciones de los subproblemas no necesitan fusionarse];:
  La búsqueda binaria tiene como objetivo encontrar un elemento
  específico, por lo que no es necesario fusionar las soluciones de los
  subproblemas. Cuando se resuelve un subproblema, el problema original
  también se resuelve.

Divide y vencerás puede mejorar la eficiencia de la búsqueda porque la
búsqueda por fuerza bruta solo puede eliminar una opción por ronda,
#strong[mientras que divide y vencerás puede eliminar la mitad de las
opciones];.

=== Implementación de la búsqueda binaria basada en divide y vencerás
<implementación-de-la-búsqueda-binaria-basada-en-divide-y-vencerás>
En capítulos anteriores, la búsqueda binaria se implementó basándose en
la iteración. Ahora, la implementamos basándose en divide y vencerás
(recursión).

!!! question

```
Dado un arreglo ordenado `nums` de longitud $n$, donde todos los elementos son únicos, encuentre el elemento `target`.
```

Desde una perspectiva de divide y vencerás, denotamos el subproblema
correspondiente al intervalo de búsqueda $\[ i \, j \]$ como
$f \( i \, j \)$.

Comenzando desde el problema original $f \( 0 \, n - 1 \)$, realice la
búsqueda binaria a través de los siguientes pasos.

+ Calcule el punto medio $m$ del intervalo de búsqueda $\[ i \, j \]$, y
  úselo para eliminar la mitad del intervalo de búsqueda.
+ Resuelva recursivamente el subproblema reducido a la mitad en tamaño,
  que podría ser $f \( i \, m - 1 \)$ o $f \( m + 1 \, j \)$.
+ Repita los pasos `1.` y `2.`, hasta que se encuentre `target` o el
  intervalo esté vacío y regrese.

La figura a continuación muestra el proceso de divide y vencerás de la
búsqueda binaria para el elemento $6$ en un arreglo.

#figure(image("es/docs/chapter_divide_and_conquer/binary_search_recur.assets/binary_search_recur.png"),
  caption: [
    El proceso de divide y vencerás de la búsqueda binaria
  ]
)

En el código de implementación, declaramos una función recursiva `dfs()`
para resolver el problema $f \( i \, j \)$:

```src
[file]{binary_search_recur}-[class]{}-[func]{binary_search}
```
= Problema de construcción de un árbol binario
<problema-de-construcción-de-un-árbol-binario>
!!! question

```
Dadas las secuencias de recorrido en preorden `preorder` y de recorrido en inorden `inorder` de un árbol binario, construya el árbol binario y devuelva su nodo raíz. Suponga que no hay valores de nodo duplicados en el árbol binario (como se muestra en la figura a continuación).
```

#figure(image("es/docs/chapter_divide_and_conquer/build_binary_tree_problem.assets/build_tree_example.png"),
  caption: [
    Datos de ejemplo para construir un árbol binario
  ]
)

=== Determinación de si es un problema de divide y vencerás
<determinación-de-si-es-un-problema-de-divide-y-vencerás>
El problema original de construir un árbol binario a partir de las
secuencias `preorder` e `inorder` es un problema típico de divide y
vencerás.

- #strong[El problema se puede descomponer];: Desde la perspectiva de
  divide y vencerás, podemos dividir el problema original en dos
  subproblemas ---construir el subárbol izquierdo y construir el
  subárbol derecho--- más una operación de inicialización del nodo raíz.
  Para cada subárbol (subproblema), continuamos aplicando el mismo
  enfoque, dividiéndolo en subárboles más pequeños (subproblemas), hasta
  llegar al subproblema más pequeño (un subárbol vacío).
- #strong[Los subproblemas son independientes];: Los subárboles
  izquierdo y derecho no se superponen. Al construir el subárbol
  izquierdo, solo necesitamos los segmentos de los recorridos en inorden
  y preorden que corresponden al subárbol izquierdo. El mismo enfoque se
  aplica al subárbol derecho.
- #strong[Las soluciones a los subproblemas se pueden combinar];: Una
  vez que hemos construido los subárboles izquierdo y derecho (las
  soluciones de los subproblemas), podemos adjuntarlos al nodo raíz para
  obtener la solución al problema original.

=== Cómo dividir los subárboles
<cómo-dividir-los-subárboles>
Basándonos en el análisis anterior, este problema se puede resolver
utilizando divide y vencerás. #strong[Sin embargo, ¿cómo usamos la
secuencia de recorrido en preorden `preorder` y la secuencia de
recorrido en inorden `inorder` para dividir los subárboles izquierdo y
derecho?]

Por definición, tanto las secuencias `preorder` como `inorder` se pueden
dividir en tres partes:

- Recorrido en preorden:
  `[ Raíz | Subárbol izquierdo | Subárbol derecho ]`. Por ejemplo, en la
  figura, el árbol corresponde a `[ 3 | 9 | 2 1 7 ]`.
- Recorrido en inorden:
  `[ Subárbol izquierdo | Raíz | Subárbol derecho ]`. Por ejemplo, en la
  figura, el árbol corresponde a `[ 9 | 3 | 1 2 7 ]`.

Usando los datos de la figura anterior, podemos seguir los pasos que se
muestran en la siguiente figura para obtener los resultados de la
división:

+ El primer elemento 3 en el recorrido en preorden es el valor del nodo
  raíz.
+ Encuentre el índice del nodo raíz 3 en la secuencia `inorder`, y use
  este índice para dividir `inorder` en `[ 9 | 3 ｜ 1 2 7 ]`.
+ Según la división de la secuencia `inorder`, es sencillo determinar
  que los subárboles izquierdo y derecho contienen 1 y 3 nodos,
  respectivamente, por lo que podemos dividir la secuencia `preorder` en
  `[ 3 | 9 | 2 1 7 ]` en consecuencia.

#figure(image("es/docs/chapter_divide_and_conquer/build_binary_tree_problem.assets/build_tree_preorder_inorder_division.png"),
  caption: [
    Dividiendo los subárboles en recorridos en preorden y en inorden
  ]
)

=== Descripción de los rangos de subárboles basada en variables
<descripción-de-los-rangos-de-subárboles-basada-en-variables>
Basándonos en el método de división anterior, #strong[hemos obtenido los
rangos de índices de la raíz, el subárbol izquierdo y el subárbol
derecho en las secuencias `preorder` e `inorder`];. Para describir estos
rangos de índices, utilizamos varias variables de puntero.

- Sea el índice del nodo raíz del árbol actual en la secuencia
  `preorder` denotado como $i$.
- Sea el índice del nodo raíz del árbol actual en la secuencia `inorder`
  denotado como $m$.
- Sea el rango de índices del árbol actual en la secuencia `inorder`
  denotado como $\[ l \, r \]$.

Como se muestra en la tabla a continuación, estas variables representan
el índice del nodo raíz en la secuencia `preorder` y los rangos de
índices de los subárboles en la secuencia `inorder`.

Tabla ~ Índices del nodo raíz y subárboles en recorridos en preorden y
en inorden
#figure(
  align(center)[#table(
    columns: (16.88%, 37.66%, 45.45%),
    align: (auto,auto,auto,),
    table.header([], [Índice del nodo raíz en `preorder`], [Rango de
      índices del subárbol en `inorder`],),
    table.hline(),
    [Árbol actual], [$i$], [$\[ l \, r \]$],
    [Subárbol izquierdo], [$i + 1$], [$\[ l \, m - 1 \]$],
    [Subárbol derecho], [$i + 1 + \( m - l \)$], [$\[ m + 1 \, r \]$],
  )]
  , kind: table
  )

Tenga en cuenta que $\( m - l \)$ en el índice de la raíz del subárbol
derecho representa "el número de nodos en el subárbol izquierdo". Puede
ser útil consultar la figura a continuación para una comprensión más
clara.

#figure(image("es/docs/chapter_divide_and_conquer/build_binary_tree_problem.assets/build_tree_division_pointers.png"),
  caption: [
    Índices del nodo raíz y de los subárboles izquierdo y derecho
  ]
)

=== Implementación del código
<implementación-del-código>
Para mejorar la eficiencia de la consulta de $m$, utilizamos una tabla
hash `hmap` para almacenar el mapeo de los elementos en la secuencia
`inorder` a sus índices:

```src
[file]{build_tree}-[class]{}-[func]{build_tree}
```

La figura a continuación muestra el proceso recursivo de construcción
del árbol binario. Cada nodo se crea durante la fase de "descenso" de la
recursión, y cada arista (referencia) se forma durante la fase de
"ascenso".

\=== "\<1\>"
#box(image("es/docs/chapter_divide_and_conquer/build_binary_tree_problem.assets/built_tree_step1.png"))

\=== "\<2\>"
#box(image("es/docs/chapter_divide_and_conquer/build_binary_tree_problem.assets/built_tree_step2.png"))

\=== "\<3\>"
#box(image("es/docs/chapter_divide_and_conquer/build_binary_tree_problem.assets/built_tree_step3.png"))

\=== "\<4\>"
#box(image("es/docs/chapter_divide_and_conquer/build_binary_tree_problem.assets/built_tree_step4.png"))

\=== "\<5\>"
#box(image("es/docs/chapter_divide_and_conquer/build_binary_tree_problem.assets/built_tree_step5.png"))

\=== "\<6\>"
#box(image("es/docs/chapter_divide_and_conquer/build_binary_tree_problem.assets/built_tree_step6.png"))

\=== "\<7\>"
#box(image("es/docs/chapter_divide_and_conquer/build_binary_tree_problem.assets/built_tree_step7.png"))

\=== "\<8\>"
#box(image("es/docs/chapter_divide_and_conquer/build_binary_tree_problem.assets/built_tree_step8.png"))

\=== "\<9\>"
#box(image("es/docs/chapter_divide_and_conquer/build_binary_tree_problem.assets/built_tree_step9.png"))

La división de las secuencias `preorder` e `inorder` de cada función
recursiva se ilustra en la figura a continuación.

#figure(image("es/docs/chapter_divide_and_conquer/build_binary_tree_problem.assets/built_tree_overall.png"),
  caption: [
    División en cada función recursiva
  ]
)

Suponiendo que el árbol binario tiene $n$ nodos, la inicialización de
cada nodo (llamando a la función recursiva `dfs()`) toma tiempo
$O \( 1 \)$. #strong[Por lo tanto, la complejidad temporal general es
$O \( n \)$];.

Debido a que la tabla hash almacena el mapeo de los elementos `inorder`
a sus índices, requiere espacio $O \( n \)$. En el peor de los casos, si
el árbol binario degenera en una lista enlazada, la profundidad
recursiva puede alcanzar $n$, consumiendo espacio de pila $O \( n \)$.
#strong[Por lo tanto, la complejidad espacial general es $O \( n \)$];.
= Problema de las Torres de Hanói
<problema-de-las-torres-de-hanói>
Tanto en el ordenamiento por mezcla como en la construcción de árboles
binarios, dividimos el problema original en dos subproblemas, cada uno
de la mitad del tamaño del problema original. Sin embargo, para las
Torres de Hanói, adoptamos una estrategia de descomposición diferente.

!!! question

```
Se nos dan tres pilares, denotados como `A`, `B` y `C`. Inicialmente, el pilar `A` tiene $n$ discos, dispuestos de arriba a abajo en tamaño ascendente. Nuestra tarea es mover estos $n$ discos al pilar `C`, manteniendo su orden original (como se muestra en la figura a continuación). Se aplican las siguientes reglas durante el movimiento:

1. Un disco solo se puede quitar de la parte superior de un pilar y debe colocarse en la parte superior de otro pilar.
2. Solo se puede mover un disco a la vez.
3. Un disco más pequeño siempre debe estar encima de un disco más grande.
```

#figure(image("es/docs/chapter_divide_and_conquer/hanota_problem.assets/hanota_example.png"),
  caption: [
    Ejemplo de las Torres de Hanói
  ]
)

#strong[Denotamos el problema de las Torres de Hanói de tamaño $i$ como
$f \( i \)$];. Por ejemplo, $f \( 3 \)$ representa mover $3$ discos del
pilar `A` al pilar `C`.

=== Considerar los casos base
<considerar-los-casos-base>
Como se muestra en la figura a continuación, para el problema
$f \( 1 \)$ ---que tiene solo un disco--- podemos moverlo directamente
de `A` a `C`.

\=== "\<1\>" #box(image("es/docs/chapter_divide_and_conquer/hanota_problem.assets/hanota_f1_step1.png"))

\=== "\<2\>" #box(image("es/docs/chapter_divide_and_conquer/hanota_problem.assets/hanota_f1_step2.png"))

Para $f \( 2 \)$ ---que tiene dos discos--- #strong[dependemos del pilar
`B` para ayudar a mantener el disco más pequeño por encima del disco más
grande];, como se ilustra en la siguiente figura:

+ Primero, mueva el disco más pequeño de `A` a `B`.
+ Luego mueva el disco más grande de `A` a `C`.
+ Finalmente, mueva el disco más pequeño de `B` a `C`.

\=== "\<1\>" #box(image("es/docs/chapter_divide_and_conquer/hanota_problem.assets/hanota_f2_step1.png"))

\=== "\<2\>" #box(image("es/docs/chapter_divide_and_conquer/hanota_problem.assets/hanota_f2_step2.png"))

\=== "\<3\>" #box(image("es/docs/chapter_divide_and_conquer/hanota_problem.assets/hanota_f2_step3.png"))

\=== "\<4\>" #box(image("es/docs/chapter_divide_and_conquer/hanota_problem.assets/hanota_f2_step4.png"))

El proceso de resolución de $f \( 2 \)$ se puede resumir como:
#strong[mover dos discos de `A` a `C` con la ayuda de `B`];. Aquí, `C`
se llama pilar objetivo, y `B` se llama pilar intermedio.

=== Descomposición de subproblemas
<descomposición-de-subproblemas>
Para el problema $f \( 3 \)$ ---es decir, cuando hay tres discos--- la
situación se vuelve un poco más complicada.

Dado que ya conocemos las soluciones para $f \( 1 \)$ y $f \( 2 \)$,
podemos adoptar una perspectiva de divide y vencerás y #strong[tratar
los dos discos superiores en `A` como una sola unidad];, realizando los
pasos que se muestran en la figura a continuación. Esto permite que los
tres discos se muevan con éxito de `A` a `C`.

+ Sea `B` el pilar objetivo y `C` el pilar intermedio, luego mueva los
  dos discos de `A` a `B`.
+ Mueva el disco restante de `A` directamente a `C`.
+ Sea `C` el pilar objetivo y `A` el pilar intermedio, luego mueva los
  dos discos de `B` a `C`.

\=== "\<1\>" #box(image("es/docs/chapter_divide_and_conquer/hanota_problem.assets/hanota_f3_step1.png"))

\=== "\<2\>" #box(image("es/docs/chapter_divide_and_conquer/hanota_problem.assets/hanota_f3_step2.png"))

\=== "\<3\>" #box(image("es/docs/chapter_divide_and_conquer/hanota_problem.assets/hanota_f3_step3.png"))

\=== "\<4\>" #box(image("es/docs/chapter_divide_and_conquer/hanota_problem.assets/hanota_f3_step4.png"))

Esencialmente, #strong[descomponemos $f \( 3 \)$ en dos subproblemas
$f \( 2 \)$ y un subproblema $f \( 1 \)$];. Al resolver estos tres
subproblemas en secuencia, se resuelve el problema original, lo que
indica que los subproblemas son independientes y sus soluciones se
pueden fusionar.

De esto, podemos resumir la estrategia de divide y vencerás para las
Torres de Hanói, ilustrada en la figura a continuación. Dividimos el
problema original $f \( n \)$ en dos subproblemas $f \( n - 1 \)$ y un
subproblema $f \( 1 \)$, y resolvemos estos tres subproblemas en el
siguiente orden:

+ Mueva $n - 1$ discos de `A` a `B`, usando `C` como pilar intermedio.
+ Mueva el disco restante directamente de `A` a `C`.
+ Mueva $n - 1$ discos de `B` a `C`, usando `A` como pilar intermedio.

Para cada subproblema $f \( n - 1 \)$, #strong[podemos aplicar la misma
partición recursiva] hasta que alcancemos el subproblema más pequeño
$f \( 1 \)$. Debido a que ya se sabe que $f \( 1 \)$ requiere solo un
movimiento, es trivial de resolver.

#figure(image("es/docs/chapter_divide_and_conquer/hanota_problem.assets/hanota_divide_and_conquer.png"),
  caption: [
    Estrategia de divide y vencerás para resolver las Torres de Hanói
  ]
)

=== Implementación del código
<implementación-del-código>
En el código, definimos una función recursiva `dfs(i, src, buf, tar)`
que mueve los $i$ discos superiores del pilar `src` al pilar `tar`,
usando el pilar `buf` como pilar intermedio:

```src
[file]{hanota}-[class]{}-[func]{solve_hanota}
```

Como se muestra en la figura a continuación, el problema de las Torres
de Hanói se puede visualizar como un árbol recursivo de altura $n$. Cada
nodo representa un subproblema, correspondiente a una llamada a `dfs()`,
#strong[por lo tanto, la complejidad temporal es $O \( 2^n \)$, y la
complejidad espacial es $O \( n \)$.]

#figure(image("es/docs/chapter_divide_and_conquer/hanota_problem.assets/hanota_recursive_tree.png"),
  caption: [
    Árbol recursivo de las Torres de Hanói
  ]
)

!!! quote

```
El problema de las Torres de Hanói se origina en una antigua leyenda. En un templo de la antigua India, los monjes tenían tres altos pilares de diamante y $64$ discos de oro de diferentes tamaños. Creían que cuando el último disco se colocara correctamente, el mundo terminaría.

Sin embargo, incluso si los monjes movieran un disco cada segundo, tardarían aproximadamente $2^{64} \approx 1.84 \times 10^{19}$ —aproximadamente 585 mil millones de años— superando con creces las estimaciones actuales de la edad del universo. Por lo tanto, si la leyenda es cierta, probablemente no necesitamos preocuparnos por el fin del mundo.
```

\`\`\`
= Resumen
<resumen>
- Divide y vencerás es una estrategia común de diseño de algoritmos que
  consta de dos etapas ---dividir (particionar) y vencer (fusionar)--- y
  generalmente se implementa utilizando recursión.
- Para determinar si un problema es adecuado para un enfoque de divide y
  vencerás, verificamos si el problema se puede descomponer, si los
  subproblemas son independientes y si los subproblemas se pueden
  fusionar.
- El ordenamiento por mezcla es un ejemplo típico de la estrategia de
  divide y vencerás. Divide recursivamente un arreglo en dos subarreglos
  de igual longitud hasta que solo queda un elemento, y luego fusiona
  estos subarreglos capa por capa para completar el ordenamiento.
- La introducción de la estrategia de divide y vencerás a menudo mejora
  la eficiencia del algoritmo. Por un lado, reduce el número de
  operaciones; por otro lado, facilita la optimización paralela del
  sistema después de la división.
- Divide y vencerás se puede aplicar a numerosos problemas algorítmicos
  y se usa ampliamente en el diseño de estructuras de datos y
  algoritmos, apareciendo en muchos escenarios.
- En comparación con la búsqueda por fuerza bruta, la búsqueda
  adaptativa es más eficiente. Los algoritmos de búsqueda con una
  complejidad temporal de $O \( log n \)$ suelen basarse en la
  estrategia de divide y vencerás.
- La búsqueda binaria es otra aplicación clásica de la estrategia de
  divide y vencerás. No implica la fusión de soluciones de subproblemas
  y se puede implementar mediante un enfoque recursivo de divide y
  vencerás.
- En el problema de la construcción de árboles binarios, la construcción
  del árbol (el problema original) se puede dividir en la construcción
  del subárbol izquierdo y el subárbol derecho (los subproblemas). Esto
  se puede lograr dividiendo los rangos de índices de los recorridos en
  preorden y en inorden.
- En el problema de las Torres de Hanói, un problema de tamaño $n$ se
  puede dividir en dos subproblemas de tamaño $n - 1$ y un subproblema
  de tamaño $1$. Al resolver estos tres subproblemas en secuencia, se
  resuelve el problema original.
= Backtracking
<backtracking>
#figure(image("es/docs/assets/covers/chapter_backtracking.jpg"),
  caption: [
    Backtracking
  ]
)

!!! abstract

```
Como exploradores en un laberinto, podemos encontrar obstáculos en nuestro camino.

El poder del backtracking nos permite empezar de nuevo, seguir intentándolo y, finalmente, encontrar la salida que nos lleva a la luz.
```
= Algoritmos de backtracking
<algoritmos-de-backtracking>
El algoritmo de backtracking es un método para resolver problemas
mediante la búsqueda exhaustiva. Su concepto central es partir de un
estado inicial y buscar brutalmente todas las soluciones posibles. El
algoritmo registra las correctas hasta que se encuentra una solución o
se han probado todas las soluciones posibles pero no se encuentra
ninguna.

El backtracking suele emplear la "búsqueda en profundidad" para recorrer
el espacio de soluciones. En el capítulo "Árbol binario", mencionamos
que los recorridos en preorden, inorden y postorden son todas búsquedas
en profundidad. A continuación, utilizaremos el recorrido en preorden
para resolver un problema de backtracking. Esto nos ayuda a comprender
cómo funciona el algoritmo gradualmente.

!!! question "Ejemplo uno"

```
Dado un árbol binario, busque y registre todos los nodos con un valor de $7$ y devuélvalos en una lista.
```

Para resolver este problema, recorremos este árbol en preorden y
verificamos si el valor del nodo actual es $7$. Si lo es, agregamos el
valor del nodo a la lista de resultados `res`. El proceso se muestra en
la figura a continuación:

```src
[file]{preorder_traversal_i_compact}-[class]{}-[func]{pre_order}
```

#figure(image("es/docs/chapter_backtracking/backtracking_algorithm.assets/preorder_find_nodes.png"),
  caption: [
    Búsqueda de nodos en recorrido en preorden
  ]
)

== Prueba y retroceso
<prueba-y-retroceso>
#strong[Se llama algoritmo de backtracking porque utiliza una estrategia
de "prueba" y "retroceso" al buscar en el espacio de soluciones];.
Durante la búsqueda, cada vez que encuentra un estado en el que ya no
puede avanzar para obtener una solución satisfactoria, deshace la
elección anterior y vuelve al estado anterior para que se puedan elegir
otras opciones posibles para el siguiente intento.

En el Ejemplo Uno, visitar cada nodo inicia una "prueba". Y pasar un
nodo hoja o la instrucción `return` para volver al nodo padre sugiere
"retroceso".

Vale la pena señalar que #strong[el retroceso no se trata simplemente de
retornos de funciones];. Ampliaremos ligeramente la pregunta del Ejemplo
Uno para explicar lo que significa.

!!! question "Ejemplo dos"

```
En un árbol binario, busque todos los nodos con un valor de $7$ y, para todos los nodos coincidentes, **devuelva las rutas desde el nodo raíz hasta ese nodo**.
```

Basándonos en el código del Ejemplo Uno, necesitamos usar una lista
llamada `path` para registrar las rutas de los nodos visitados. Cuando
se alcanza un nodo con un valor de $7$, copiamos `path` y lo agregamos a
la lista de resultados `res`. Después del recorrido, `res` contiene
todas las soluciones. El código es el siguiente:

```src
[file]{preorder_traversal_ii_compact}-[class]{}-[func]{pre_order}
```

En cada "prueba", registramos la ruta agregando el nodo actual a `path`.
Cada vez que necesitamos "retroceder", sacamos el nodo de `path`
#strong[para restaurar el estado anterior a este intento fallido];.

Al observar el proceso que se muestra en la figura a continuación,
#strong[la prueba es como "avanzar", y el retroceso es como "deshacer"];.
Los pares posteriores pueden verse como una operación inversa a su
contraparte.

\=== "\<1\>"
#box(image("es/docs/chapter_backtracking/backtracking_algorithm.assets/preorder_find_paths_step1.png"))

\=== "\<2\>"
#box(image("es/docs/chapter_backtracking/backtracking_algorithm.assets/preorder_find_paths_step2.png"))

\=== "\<3\>"
#box(image("es/docs/chapter_backtracking/backtracking_algorithm.assets/preorder_find_paths_step3.png"))

\=== "\<4\>"
#box(image("es/docs/chapter_backtracking/backtracking_algorithm.assets/preorder_find_paths_step4.png"))

\=== "\<5\>"
#box(image("es/docs/chapter_backtracking/backtracking_algorithm.assets/preorder_find_paths_step5.png"))

\=== "\<6\>"
#box(image("es/docs/chapter_backtracking/backtracking_algorithm.assets/preorder_find_paths_step6.png"))

\=== "\<7\>"
#box(image("es/docs/chapter_backtracking/backtracking_algorithm.assets/preorder_find_paths_step7.png"))

\=== "\<8\>"
#box(image("es/docs/chapter_backtracking/backtracking_algorithm.assets/preorder_find_paths_step8.png"))

\=== "\<9\>"
#box(image("es/docs/chapter_backtracking/backtracking_algorithm.assets/preorder_find_paths_step9.png"))

\=== "\<10\>"
#box(image("es/docs/chapter_backtracking/backtracking_algorithm.assets/preorder_find_paths_step10.png"))

\=== "\<11\>"
#box(image("es/docs/chapter_backtracking/backtracking_algorithm.assets/preorder_find_paths_step11.png"))

== Poda
<poda>
Los problemas complejos de backtracking suelen implicar una o más
restricciones, #strong[que a menudo se utilizan para la "poda"];.

!!! question "Ejemplo tres"

```
En un árbol binario, busque todos los nodos con un valor de $7$ y devuelva las rutas desde la raíz hasta estos nodos, **con la restricción de que las rutas no contengan nodos con un valor de $3$**.
```

Para cumplir con las restricciones anteriores, #strong[necesitamos
agregar una operación de poda];: durante el proceso de búsqueda, si se
encuentra un nodo con un valor de $3$, se aborta inmediatamente la
búsqueda posterior a través de la ruta. El código es el siguiente:

```src
[file]{preorder_traversal_iii_compact}-[class]{}-[func]{pre_order}
```

"Poda" es un sustantivo muy vívido. Como se muestra en la figura a
continuación, en el proceso de búsqueda, #strong["cortamos" las ramas de
búsqueda que no cumplen con las restricciones];. Evita intentos
innecesarios adicionales, lo que mejora la eficiencia de la búsqueda.

#figure(image("es/docs/chapter_backtracking/backtracking_algorithm.assets/preorder_find_constrained_paths.png"),
  caption: [
    Poda basada en restricciones
  ]
)

== Código de marco
<código-de-marco>
Ahora, intentemos destilar el marco principal de "prueba, retroceso y
poda" del backtracking para mejorar la universalidad del código.

En el siguiente código de marco, `state` representa el estado actual del
problema, `choices` representa las opciones disponibles bajo el estado
actual:

\=== "Python"

````
```python title=""
def backtrack(state: State, choices: list[choice], res: list[state]):
    """Marco del algoritmo de backtracking"""
    # Comprobar si es una solución
    if is_solution(state):
        # Registrar la solución
        record_solution(state, res)
        # Detener la búsqueda
        return
    # Iterar a través de todas las opciones
    for choice in choices:
        # Podar: comprobar si la opción es válida
        if is_valid(state, choice):
            # Prueba: hacer una elección, actualizar el estado
            make_choice(state, choice)
            backtrack(state, choices, res)
            # Retroceder: deshacer la elección, volver al estado anterior
            undo_choice(state, choice)
```
````

Ahora, podemos resolver el Ejemplo Tres usando el código del marco. El
`state` es la ruta de recorrido del nodo, `choices` son los hijos
izquierdo y derecho del nodo actual, y el resultado `res` es la lista de
rutas:

```src
[file]{preorder_traversal_iii_template}-[class]{}-[func]{backtrack}
```

Según los requisitos, después de encontrar un nodo con un valor de $7$,
la búsqueda debe continuar. #strong[Como resultado, la instrucción
`return` después de registrar la solución debe eliminarse];. La figura a
continuación compara los procesos de búsqueda con y sin retener la
instrucción `return`.

#figure(image("es/docs/chapter_backtracking/backtracking_algorithm.assets/backtrack_remove_return_or_not.png"),
  caption: [
    Comparación de retener y eliminar el retorno en el proceso de
    búsqueda
  ]
)

En comparación con la implementación basada en el recorrido en preorden,
el código que utiliza el marco del algoritmo de backtracking parece
prolijo. Sin embargo, tiene una mejor universalidad. De hecho,
#strong[muchos problemas de backtracking se pueden resolver dentro de
este marco];. Solo necesitamos definir `state` y `choices` de acuerdo
con el problema específico e implementar los métodos en el marco.

== Terminología común
<terminología-común>
Para analizar los problemas algorítmicos con mayor claridad, resumimos
los significados de la terminología comúnmente utilizada en los
algoritmos de backtracking y proporcionamos ejemplos correspondientes
del Ejemplo Tres, como se muestra en la tabla a continuación.

Tabla ~ Terminología común del algoritmo de backtracking
#figure(
  align(center)[#table(
    columns: (8.49%, 51.26%, 40.25%),
    align: (auto,auto,auto,),
    table.header([Término], [Definición], [Ejemplo tres],),
    table.hline(),
    [Solución], [Una solución es una respuesta que satisface condiciones
    específicas del problema, que puede tener una o más], [Todas las
    rutas desde el nodo raíz hasta el nodo $7$ que cumplen la
    restricción],
    [Restricción], [Las restricciones son condiciones en el problema que
    limitan la viabilidad de las soluciones, a menudo utilizadas para la
    poda], [Las rutas no contienen el nodo $3$],
    [Estado], [El estado representa la situación del problema en un
    momento determinado, incluidas las elecciones realizadas], [Ruta del
    nodo visitado actual, es decir, lista de nodos `path`],
    [Prueba], [Una prueba es el proceso de explorar el espacio de
    soluciones basándose en las opciones disponibles, incluyendo la toma
    de decisiones, la actualización del estado y la verificación de si
    es una solución], [Visitar recursivamente los nodos hijos izquierdo
    (derecho), agregar nodos a `path`, verificar si el valor del nodo es
    $7$],
    [Retroceso], [El retroceso se refiere a la acción de deshacer las
    elecciones anteriores y volver al estado anterior cuando se
    encuentran estados que no cumplen las restricciones], [Al pasar
    nodos hoja, finalizar las visitas a nodos, encontrar nodos con un
    valor de $3$, terminar la búsqueda y la función de recursión
    regresa],
    [Poda], [La poda es un método para evitar rutas de búsqueda sin
    sentido basándose en las características y restricciones del
    problema, lo que puede mejorar la eficiencia de la
    búsqueda], [Cuando se encuentra un nodo con un valor de $3$, no se
    requiere más búsqueda],
  )]
  , kind: table
  )

!!! tip

```
Conceptos como problemas, soluciones, estados, etc., son universales y están involucrados en algoritmos de divide y vencerás, backtracking, programación dinámica y algoritmos codiciosos, entre otros.
```

== Ventajas y limitaciones
<ventajas-y-limitaciones>
El algoritmo de backtracking es esencialmente un algoritmo de búsqueda
en profundidad que intenta todas las soluciones posibles hasta que se
encuentra una solución satisfactoria. La ventaja de este método es que
puede encontrar todas las soluciones posibles, y con operaciones de poda
razonables, puede ser altamente eficiente.

Sin embargo, cuando se trata de problemas a gran escala o complejos,
#strong[la eficiencia de ejecución del algoritmo de backtracking puede
no ser aceptable];.

- #strong[Complejidad temporal];: Los algoritmos de backtracking suelen
  necesitar recorrer todos los estados posibles en el espacio de
  estados, lo que puede alcanzar una complejidad temporal exponencial o
  factorial.
- #strong[Complejidad espacial];: En las llamadas recursivas, es
  necesario guardar el estado actual (como rutas, variables auxiliares
  para la poda, etc.). Cuando la profundidad es muy grande, la necesidad
  de espacio puede aumentar significativamente.

Aun así, #strong[el backtracking sigue siendo la mejor solución para
ciertos problemas de búsqueda y problemas de satisfacción de
restricciones];. Para estos problemas, no hay forma de predecir qué
opciones pueden generar soluciones válidas. Tenemos que recorrer todas
las opciones posibles. En este caso, #strong[la clave es cómo optimizar
la eficiencia];. Hay dos métodos comunes de optimización de la
eficiencia.

- #strong[Poda];: Evitar buscar rutas que definitivamente no producirán
  una solución, ahorrando así tiempo y espacio.
- #strong[Búsqueda heurística];: Introducir algunas estrategias o
  estimaciones durante el proceso de búsqueda para priorizar las rutas
  que tienen más probabilidades de producir soluciones válidas.

== Problemas típicos de backtracking
<problemas-típicos-de-backtracking>
Los algoritmos de backtracking se pueden utilizar para resolver muchos
problemas de búsqueda, problemas de satisfacción de restricciones y
problemas de optimización combinatoria.

#strong[Problemas de búsqueda];: El objetivo de estos problemas es
encontrar soluciones que cumplan condiciones específicas.

- Problema de permutación completa: Dado un conjunto, encuentre todas
  las permutaciones y combinaciones posibles del mismo.
- Problema de la suma de subconjuntos: Dado un conjunto y una suma
  objetivo, encuentre todos los subconjuntos del conjunto que sumen el
  objetivo.
- Problema de las Torres de Hanói: Dadas tres varillas y una serie de
  discos de diferentes tamaños, el objetivo es mover todos los discos de
  una varilla a otra, moviendo solo un disco a la vez y nunca colocando
  un disco más grande sobre uno más pequeño.

#strong[Problemas de satisfacción de restricciones];: El objetivo de
estos problemas es encontrar soluciones que satisfagan todas las
restricciones.

- $n$ reinas: Coloque $n$ reinas en un tablero de ajedrez de $n times n$
  para que no se ataquen entre sí.
- Sudoku: Rellene una cuadrícula de $9 times 9$ con los números del $1$
  al $9$, asegurándose de que los números no se repitan en cada fila,
  cada columna y cada subcuadrícula de $3 times 3$.
- Problema de coloración de grafos: Dado un grafo no dirigido, coloree
  cada vértice con la menor cantidad posible de colores para que los
  vértices adyacentes tengan colores diferentes.

#strong[Problemas de optimización combinatoria];: El objetivo de estos
problemas es encontrar la solución óptima dentro de un espacio de
combinación que cumpla ciertas condiciones.

- Problema de la mochila 0-1: Dado un conjunto de elementos y una
  mochila, cada elemento tiene un cierto valor y peso. El objetivo es
  elegir elementos para maximizar el valor total dentro del límite de
  capacidad de la mochila.
- Problema del viajante de comercio: En un grafo, partiendo de un punto,
  visite todos los demás puntos exactamente una vez y luego regrese al
  punto de partida, buscando la ruta más corta.
- Problema del clique máximo: Dado un grafo no dirigido, encuentre el
  subgrafo completo más grande, es decir, un subgrafo donde dos vértices
  cualesquiera estén conectados por una arista.

Tenga en cuenta que para muchos problemas de optimización combinatoria,
el backtracking no es la solución óptima.

- El problema de la mochila 0-1 generalmente se resuelve utilizando
  programación dinámica para lograr una mayor eficiencia temporal.
- El problema del viajante de comercio es un problema NP-Hard bien
  conocido, comúnmente resuelto utilizando algoritmos genéticos y
  algoritmos de colonia de hormigas, entre otros.
- El problema del clique máximo es un problema clásico en la teoría de
  grafos, que se puede resolver utilizando algoritmos codiciosos y otros
  métodos heurísticos.
= Problema de permutación
<problema-de-permutación>
El problema de la permutación es una aplicación típica del algoritmo de
backtracking. Implica encontrar todas las posibles disposiciones
(permutaciones) de elementos de un conjunto dado, como un arreglo o una
cadena.

La siguiente tabla muestra varios ejemplos, incluidos arreglos de
entrada y sus permutaciones correspondientes.

Tabla ~ Ejemplos de permutación
#figure(
  align(center)[#table(
    columns: (14.29%, 85.71%),
    align: (left,left,),
    table.header([Arreglo de entrada], [Permutaciones],),
    table.hline(),
    [$\[ 1 \]$], [$\[ 1 \]$],
    [$\[ 1 \, 2 \]$], [$\[ 1 \, 2 \] \, \[ 2 \, 1 \]$],
    [$\[ 1 \, 2 \, 3 \]$], [$\[ 1 \, 2 \, 3 \] \, \[ 1 \, 3 \, 2 \] \, \[ 2 \, 1 \, 3 \] \, \[ 2 \, 3 \, 1 \] \, \[ 3 \, 1 \, 2 \] \, \[ 3 \, 2 \, 1 \]$],
  )]
  , kind: table
  )

== Casos sin elementos duplicados
<casos-sin-elementos-duplicados>
!!! question

```
Dado un arreglo de enteros sin elementos duplicados, devuelva todas las permutaciones posibles.
```

Desde una perspectiva de backtracking, #strong[podemos ver el proceso de
generación de permutaciones como una serie de elecciones.] Supongamos
que el arreglo de entrada es $\[ 1 \, 2 \, 3 \]$. Si elegimos $1$
primero, luego $3$, y finalmente $2$, obtenemos la permutación
$\[ 1 \, 3 \, 2 \]$. "Backtracking" significa deshacer una elección
anterior y explorar opciones alternativas.

Desde una perspectiva de codificación, el conjunto de candidatos
`choices` consta de todos los elementos del arreglo de entrada, mientras
que `state` contiene los elementos seleccionados hasta ahora. Dado que
cada elemento solo se puede elegir una vez, #strong[todos los elementos
en `state` deben ser únicos];.

Como se ilustra en la figura a continuación, podemos expandir el proceso
de búsqueda en un árbol recursivo, donde cada nodo representa el `state`
actual. Comenzando desde el nodo raíz, después de tres rondas de
selecciones, llegamos a los nodos hoja, cada uno correspondiente a una
permutación.

#figure(image("es/docs/chapter_backtracking/permutations_problem.assets/permutations_i.png"),
  caption: [
    Árbol recursivo de permutación
  ]
)

=== Poda de elección repetida
<poda-de-elección-repetida>
Para asegurar que cada elemento se seleccione solo una vez, introducimos
un arreglo booleano `selected`, donde `selected[i]` indica si
`choices[i]` ha sido elegido. Luego basamos nuestros pasos de poda en
este arreglo:

- Después de elegir `choice[i]`, establezca `selected[i]` en \$
  ext{True}\$ para marcarlo como elegido.
- Mientras itera a través de `choices`, omita todos los elementos
  marcados como elegidos (es decir, pode esas ramas).

Como se muestra en la figura a continuación, supongamos que elegimos 1
en la primera ronda, luego 3 en la segunda ronda y finalmente 2 en la
tercera ronda. Necesitamos podar la rama para el elemento 1 en la
segunda ronda y las ramas para los elementos 1 y 3 en la tercera ronda.

#figure(image("es/docs/chapter_backtracking/permutations_problem.assets/permutations_i_pruning.png"),
  caption: [
    Ejemplo de poda de permutación
  ]
)

De la figura, podemos ver que este proceso de poda reduce el espacio de
búsqueda de $O \( n^n \)$ a $O \( n ! \)$.

=== Implementación del código
<implementación-del-código>
Con esta comprensión, podemos "rellenar los espacios en blanco" de
nuestro código de marco. Para mantener el código general conciso, no
implementaremos cada parte del marco por separado, sino que expandiremos
todo en la función `backtrack()`:

```src
[file]{permutations_i}-[class]{}-[func]{permutations_i}
```

== Considerando elementos duplicados
<considerando-elementos-duplicados>
!!! question

```
Dado un arreglo de enteros **que puede contener elementos duplicados**, devuelva todas las permutaciones únicas.
```

Supongamos que el arreglo de entrada es $\[ 1 \, 1 \, 2 \]$. Para
distinguir entre los dos elementos idénticos $1$, etiquetamos el segundo
como $hat(1)$.

Como se muestra en la figura a continuación, la mitad de las
permutaciones producidas por este método son duplicados:

#figure(image("es/docs/chapter_backtracking/permutations_problem.assets/permutations_ii.png"),
  caption: [
    Permutaciones duplicadas
  ]
)

Entonces, ¿cómo podemos eliminar estas permutaciones duplicadas? Un
enfoque directo es usar un conjunto hash para eliminar duplicados
después de generar todas las permutaciones. Sin embargo, esto es menos
elegante #strong[porque las ramas que producen duplicados son
inherentemente innecesarias y deben podarse de antemano,] lo que mejora
la eficiencia del algoritmo.

=== Poda de elementos iguales
<poda-de-elementos-iguales>
Mirando la figura a continuación, en la primera ronda, elegir $1$ o
$hat(1)$ conduce a las mismas permutaciones, por lo que podamos
$hat(1)$.

De manera similar, después de elegir $2$ en la primera ronda, elegir $1$
o $hat(1)$ en la segunda ronda también conduce a ramas duplicadas, por
lo que podamos $hat(1)$ también.

Esencialmente, #strong[nuestro objetivo es asegurar que múltiples
elementos idénticos solo se seleccionen una vez por ronda de
elecciones.]

#figure(image("es/docs/chapter_backtracking/permutations_problem.assets/permutations_ii_pruning.png"),
  caption: [
    Poda de permutaciones duplicadas
  ]
)

=== Implementación del código
<implementación-del-código-1>
Basándonos en el código del problema anterior, introducimos un conjunto
hash `duplicated` en cada ronda. Este conjunto rastrea los elementos que
ya hemos intentado, para que podamos podar los duplicados:

```src
[file]{permutations_ii}-[class]{}-[func]{permutations_ii}
```

Suponiendo que todos los elementos son distintos, hay $n !$ (factorial)
permutaciones de $n$ elementos. Registrar cada resultado requiere copiar
una lista de longitud $n$, lo que lleva $O \( n \)$ tiempo. #strong[Por
lo tanto, la complejidad temporal total es $O \( n ! n \)$.]

La profundidad máxima de recursión es $n$, utilizando $O \( n \)$ de
espacio de pila. El arreglo `selected` también requiere $O \( n \)$ de
espacio. Debido a que puede haber hasta $n$ conjuntos `duplicated`
separados en un momento dado, colectivamente ocupan $O \( n^2 \)$ de
espacio. #strong[Por lo tanto, la complejidad espacial es
$O \( n^2 \)$.]

=== Comparación de los dos métodos de poda
<comparación-de-los-dos-métodos-de-poda>
Aunque tanto `selected` como `duplicated` sirven como mecanismos de
poda, se dirigen a diferentes problemas:

- #strong[Poda de elección repetida] (a través de `selected`): Hay un
  único arreglo `selected` para toda la búsqueda, que indica qué
  elementos ya están en el estado actual. Esto evita que el mismo
  elemento aparezca más de una vez en `state`.
- #strong[Poda de elementos iguales] (a través de `duplicated`): Cada
  llamada a la función `backtrack` utiliza su propio conjunto
  `duplicated`, registrando qué elementos ya han sido elegidos en esa
  iteración específica (bucle `for`). Esto asegura que los elementos
  iguales se seleccionen solo una vez por ronda de elecciones.

La figura a continuación muestra el alcance de estas dos estrategias de
poda. Cada nodo en el árbol representa una elección; la ruta desde la
raíz hasta cualquier hoja corresponde a una permutación completa.

#figure(image("es/docs/chapter_backtracking/permutations_problem.assets/permutations_ii_pruning_summary.png"),
  caption: [
    Alcance de las dos condiciones de poda
  ]
)
= Problema de la suma de subconjuntos
<problema-de-la-suma-de-subconjuntos>
== Caso sin elementos duplicados
<caso-sin-elementos-duplicados>
!!! question

```
Dado un arreglo de enteros positivos `nums` y un entero positivo objetivo `target`, encuentre todas las combinaciones posibles tales que la suma de los elementos en la combinación sea igual a `target`. El arreglo dado no tiene elementos duplicados, y cada elemento puede elegirse varias veces. Devuelva estas combinaciones como una lista, que no debe contener combinaciones duplicadas.
```

Por ejemplo, para el conjunto de entrada ${ 3 \, 4 \, 5 }$ y el entero
objetivo $9$, las soluciones son ${ 3 \, 3 \, 3 } \, { 4 \, 5 }$. Tenga
en cuenta los siguientes dos puntos.

- Los elementos del conjunto de entrada se pueden elegir un número
  ilimitado de veces.
- Los subconjuntos no distinguen el orden de los elementos, por ejemplo,
  ${ 4 \, 5 }$ y ${ 5 \, 4 }$ son el mismo subconjunto.

=== Solución de permutación de referencia
<solución-de-permutación-de-referencia>
Similar al problema de la permutación, podemos imaginar la generación de
subconjuntos como una serie de elecciones, actualizando la "suma de
elementos" en tiempo real durante el proceso de elección. Cuando la suma
de elementos es igual a `target`, el subconjunto se registra en la lista
de resultados.

A diferencia del problema de la permutación, #strong[los elementos en
este problema se pueden elegir un número ilimitado de veces];, por lo
que no es necesario usar una lista booleana `selected` para registrar si
un elemento ha sido elegido. Podemos hacer pequeñas modificaciones al
código de permutación para resolver inicialmente el problema:

```src
[file]{subset_sum_i_naive}-[class]{}-[func]{subset_sum_i_naive}
```

Al ingresar el arreglo $\[ 3 \, 4 \, 5 \]$ y el elemento objetivo $9$ en
el código anterior, se obtienen los resultados
$\[ 3 \, 3 \, 3 \] \, \[ 4 \, 5 \] \, \[ 5 \, 4 \]$. #strong[Aunque
encuentra con éxito todos los subconjuntos con una suma de $9$, incluye
el subconjunto duplicado $\[ 4 \, 5 \]$ y $\[ 5 \, 4 \]$];.

Esto se debe a que el proceso de búsqueda distingue el orden de las
elecciones; sin embargo, los subconjuntos no distinguen el orden de las
elecciones. Como se muestra en la figura a continuación, elegir $4$
antes de $5$ y elegir $5$ antes de $4$ son ramas diferentes, pero
corresponden al mismo subconjunto.

#figure(image("es/docs/chapter_backtracking/subset_sum_problem.assets/subset_sum_i_naive.png"),
  caption: [
    Búsqueda de subconjuntos y poda fuera de límites
  ]
)

Para eliminar subconjuntos duplicados, #strong[una idea sencilla es
eliminar los duplicados de la lista de resultados];. Sin embargo, este
método es muy ineficiente por dos razones.

- Cuando hay muchos elementos en el arreglo, especialmente cuando
  `target` es grande, el proceso de búsqueda produce un gran número de
  subconjuntos duplicados.
- Comparar subconjuntos (arreglos) en busca de diferencias consume mucho
  tiempo, lo que requiere que los arreglos se ordenen primero y luego se
  comparen las diferencias de cada elemento en los arreglos.

=== Poda de subconjuntos duplicados
<poda-de-subconjuntos-duplicados>
#strong[Consideramos la eliminación de duplicados durante el proceso de
búsqueda mediante la poda];. Observando la figura a continuación, se
generan subconjuntos duplicados al elegir elementos del arreglo en
diferentes órdenes, por ejemplo, en las siguientes situaciones.

+ Cuando se elige $3$ en la primera ronda y $4$ en la segunda ronda, se
  generan todos los subconjuntos que contienen estos dos elementos,
  denotados como $\[ 3 \, 4 \, dots.h \]$.
+ Más tarde, cuando se elige $4$ en la primera ronda, #strong[la segunda
  ronda debe omitir $3$] porque el subconjunto $\[ 4 \, 3 \, dots.h \]$
  generado por esta elección duplica completamente el subconjunto del
  paso `1.`.

En el proceso de búsqueda, las elecciones de cada capa se prueban una
por una de izquierda a derecha, por lo que cuanto más a la derecha esté
una rama, más se podará.

+ Las dos primeras rondas eligen $3$ y $5$, generando el subconjunto
  $\[ 3 \, 5 \, dots.h \]$.
+ Las dos primeras rondas eligen $4$ y $5$, generando el subconjunto
  $\[ 4 \, 5 \, dots.h \]$.
+ Si se elige $5$ en la primera ronda, #strong[entonces la segunda ronda
  debe omitir $3$ y $4$] ya que los subconjuntos
  $\[ 5 \, 3 \, dots.h \]$ y $\[ 5 \, 4 \, dots.h \]$ duplican
  completamente los subconjuntos descritos en los pasos `1.` y `2.`.

#figure(image("es/docs/chapter_backtracking/subset_sum_problem.assets/subset_sum_i_pruning.png"),
  caption: [
    Diferentes órdenes de elección que conducen a subconjuntos
    duplicados
  ]
)

En resumen, dado el arreglo de entrada
$\[ x_1 \, x_2 \, dots.h \, x_n \]$, la secuencia de elección en el
proceso de búsqueda debe ser
$\[ x_(i_1) \, x_(i_2) \, dots.h \, x_(i_m) \]$, que debe satisfacer
$i_1 lt.eq i_2 lt.eq dots.h lt.eq i_m$. #strong[Cualquier secuencia de
elección que no cumpla esta condición causará duplicados y debe
podarse];.

=== Implementación del código
<implementación-del-código>
Para implementar esta poda, inicializamos la variable `start`, que
indica el punto de partida para el recorrido. #strong[Después de hacer
la elección $x_i$, establezca la siguiente ronda para que comience desde
el índice $i$];. Esto asegurará que la secuencia de elección satisfaga
$i_1 lt.eq i_2 lt.eq dots.h lt.eq i_m$, asegurando así la unicidad de
los subconjuntos.

Además, hemos realizado las siguientes dos optimizaciones en el código.

- Antes de iniciar la búsqueda, ordene el arreglo `nums`. En el
  recorrido de todas las opciones, #strong[finalice el bucle
  directamente cuando la suma del subconjunto exceda `target`];, ya que
  los elementos posteriores son más grandes y su suma de subconjuntos
  definitivamente excederá `target`.
- Elimine la variable de suma de elementos `total`, #strong[realizando
  una resta en `target` para contar la suma de elementos];. Cuando
  `target` sea igual a $0$, registre la solución.

```src
[file]{subset_sum_i}-[class]{}-[func]{subset_sum_i}
```

La figura a continuación muestra el proceso general de backtracking
después de ingresar el arreglo $\[ 3 \, 4 \, 5 \]$ y el elemento
objetivo $9$ en el código anterior.

#figure(image("es/docs/chapter_backtracking/subset_sum_problem.assets/subset_sum_i.png"),
  caption: [
    Suma de subconjuntos I proceso de backtracking
  ]
)

== Considerando casos con elementos duplicados
<considerando-casos-con-elementos-duplicados>
!!! question

```
Dado un arreglo de enteros positivos `nums` y un entero positivo objetivo `target`, encuentre todas las combinaciones posibles tales que la suma de los elementos en la combinación sea igual a `target`. **El arreglo dado puede contener elementos duplicados, y cada elemento solo se puede elegir una vez**. Devuelva estas combinaciones como una lista, que no debe contener combinaciones duplicadas.
```

En comparación con la pregunta anterior, #strong[el arreglo de entrada
de esta pregunta puede contener elementos duplicados];, lo que introduce
nuevos problemas. Por ejemplo, dado el arreglo $\[ 4 \, hat(4) \, 5 \]$
y el elemento objetivo $9$, los resultados de salida del código
existente son $\[ 4 \, 5 \] \, \[ hat(4) \, 5 \]$, lo que resulta en
subconjuntos duplicados.

#strong[La razón de esta duplicación es que los elementos iguales se
eligen varias veces en una determinada ronda];. En la figura a
continuación, la primera ronda tiene tres opciones, dos de las cuales
son $4$, generando dos ramas de búsqueda duplicadas, lo que produce
subconjuntos duplicados; de manera similar, los dos $4$ en la segunda
ronda también producen subconjuntos duplicados.

#figure(image("es/docs/chapter_backtracking/subset_sum_problem.assets/subset_sum_ii_repeat.png"),
  caption: [
    Subconjuntos duplicados causados por elementos iguales
  ]
)

=== Poda de elementos iguales
<poda-de-elementos-iguales>
Para resolver este problema, #strong[necesitamos limitar los elementos
iguales a que se elijan solo una vez por ronda];. La implementación es
bastante inteligente: dado que el arreglo está ordenado, los elementos
iguales son adyacentes. Esto significa que en una determinada ronda de
elecciones, si el elemento actual es igual a su elemento de la
izquierda, significa que ya ha sido elegido, por lo que se omite el
elemento actual directamente.

Al mismo tiempo, #strong[esta pregunta estipula que cada elemento del
arreglo solo se puede elegir una vez];. Afortunadamente, también podemos
usar la variable `start` para cumplir con esta restricción: después de
hacer la elección $x_i$, establezca la siguiente ronda para que comience
desde el índice $i + 1$. Esto no solo elimina los subconjuntos
duplicados, sino que también evita la selección repetida de elementos.

=== Implementación del código
<implementación-del-código-1>
```src
[file]{subset_sum_ii}-[class]{}-[func]{subset_sum_ii}
```

La figura a continuación muestra el proceso de backtracking para el
arreglo $\[ 4 \, 4 \, 5 \]$ y el elemento objetivo $9$, incluyendo
cuatro tipos de operaciones de poda. Combine la ilustración con los
comentarios del código para comprender todo el proceso de búsqueda y
cómo funciona cada tipo de operación de poda.

#figure(image("es/docs/chapter_backtracking/subset_sum_problem.assets/subset_sum_ii.png"),
  caption: [
    Suma de subconjuntos II proceso de backtracking
  ]
)
= Problema de las n-reinas
<problema-de-las-n-reinas>
!!! question

```
Según las reglas del ajedrez, una reina puede atacar piezas en la misma fila, columna o línea diagonal. Dadas $n$ reinas y un tablero de ajedrez de $n \times n$, encuentre las disposiciones en las que no dos reinas puedan atacarse entre sí.
```

Como se muestra en la figura a continuación, hay dos soluciones cuando
$n = 4$. Desde la perspectiva del algoritmo de backtracking, un tablero
de ajedrez de $n times n$ tiene $n^2$ casillas, presentando todas las
posibles `choices`. El estado del tablero de ajedrez `state` cambia
continuamente a medida que se coloca cada reina.

#figure(image("es/docs/chapter_backtracking/n_queens_problem.assets/solution_4_queens.png"),
  caption: [
    Solución al problema de las 4 reinas
  ]
)

La figura a continuación muestra las tres restricciones de este
problema: #strong[múltiples reinas no pueden ocupar la misma fila,
columna o diagonal];. Es importante tener en cuenta que las diagonales
se dividen en la diagonal principal `\` y la diagonal secundaria `/`.

#figure(image("es/docs/chapter_backtracking/n_queens_problem.assets/n_queens_constraints.png"),
  caption: [
    Restricciones del problema de las n-reinas
  ]
)

=== Estrategia de colocación fila por fila
<estrategia-de-colocación-fila-por-fila>
Como el número de reinas es igual al número de filas en el tablero de
ajedrez, siendo ambos $n$, es fácil concluir que #strong[cada fila del
tablero de ajedrez permite y solo permite que se coloque una reina];.

Esto significa que podemos adoptar una estrategia de colocación fila por
fila: comenzando desde la primera fila, coloque una reina por fila hasta
que se alcance la última fila.

La figura a continuación muestra el proceso de colocación fila por fila
para el problema de las 4 reinas. Debido a las limitaciones de espacio,
la figura solo expande una rama de búsqueda de la primera fila y poda
cualquier colocación que no cumpla con las restricciones de columna y
diagonal.

#figure(image("es/docs/chapter_backtracking/n_queens_problem.assets/n_queens_placing.png"),
  caption: [
    Estrategia de colocación fila por fila
  ]
)

Esencialmente, #strong[la estrategia de colocación fila por fila sirve
como una función de poda];, eliminando todas las ramas de búsqueda que
colocarían varias reinas en la misma fila.

=== Poda de columna y diagonal
<poda-de-columna-y-diagonal>
Para satisfacer las restricciones de columna, podemos usar un arreglo
booleano `cols` de longitud $n$ para rastrear si una reina ocupa cada
columna. Antes de cada decisión de colocación, `cols` se usa para podar
las columnas que ya tienen reinas, y se actualiza dinámicamente durante
el backtracking.

!!! tip

```
Tenga en cuenta que el origen de la matriz se encuentra en la esquina superior izquierda, donde el índice de fila aumenta de arriba a abajo y el índice de columna aumenta de izquierda a derecha.
```

¿Qué pasa con las restricciones diagonales? Sean los índices de fila y
columna de una celda determinada en el tablero de ajedrez
$\( r o w \, c o l \)$. Al seleccionar una diagonal principal
específica, notamos que la diferencia $r o w - c o l$ es la misma para
todas las celdas de esa diagonal, #strong[lo que significa que
$r o w - c o l$ es un valor constante en la diagonal principal];.

En otras palabras, si dos celdas satisfacen
$r o w_1 - c o l_1 = r o w_2 - c o l_2$, definitivamente están en la
misma diagonal principal. Usando este patrón, podemos utilizar el
arreglo `diags1` que se muestra en la figura a continuación para
rastrear si una reina está en alguna diagonal principal.

De manera similar, #strong[la suma de $r o w + c o l$ es un valor
constante para todas las celdas de la diagonal secundaria];. También
podemos usar el arreglo `diags2` para manejar las restricciones de la
diagonal secundaria.

#figure(image("es/docs/chapter_backtracking/n_queens_problem.assets/n_queens_cols_diagonals.png"),
  caption: [
    Manejo de restricciones de columna y diagonal
  ]
)

=== Implementación del código
<implementación-del-código>
Tenga en cuenta que, en una matriz cuadrada de $n$ dimensiones, el rango
de $r o w - c o l$ es $\[ - n + 1 \, n - 1 \]$, y el rango de
$r o w + c o l$ es $\[ 0 \, 2 n - 2 \]$. En consecuencia, el número de
diagonales principales y secundarias es $2 n - 1$, lo que significa que
la longitud de los arreglos `diags1` y `diags2` es $2 n - 1$.

```src
[file]{n_queens}-[class]{}-[func]{n_queens}
```

Colocando $n$ reinas fila por fila, considerando las restricciones de
columna, desde la primera fila hasta la última fila, hay $n$, $n - 1$,
$dots.h$, $2$, $1$ opciones, utilizando tiempo $O \( n ! \)$. Al
registrar una solución, es necesario copiar la matriz `state` y
agregarla a `res`, con la operación de copia utilizando tiempo
$O \( n^2 \)$. Por lo tanto, #strong[la complejidad temporal general es
$O \( n ! dot.op n^2 \)$];. En la práctica, la poda basada en
restricciones diagonales puede reducir significativamente el espacio de
búsqueda, por lo que a menudo la eficiencia de búsqueda es mejor que la
complejidad temporal mencionada.

El arreglo `state` utiliza espacio $O \( n^2 \)$, y los arreglos `cols`,
`diags1` y `diags2` utilizan cada uno espacio $O \( n \)$. La
profundidad máxima de recursión es $n$, utilizando espacio de marco de
pila $O \( n \)$. Por lo tanto, #strong[la complejidad espacial es
$O \( n^2 \)$];.
= Resumen
<resumen>
=== Revisión clave
<revisión-clave>
- La esencia del algoritmo de backtracking es la búsqueda exhaustiva.
  Busca soluciones que cumplan las condiciones realizando un recorrido
  en profundidad del espacio de soluciones. Durante la búsqueda, si se
  encuentra una solución satisfactoria, se registra, hasta que se
  encuentran todas las soluciones o se completa el recorrido.
- El proceso de búsqueda del algoritmo de backtracking incluye la prueba
  y el retroceso. Utiliza la búsqueda en profundidad para explorar
  varias opciones, y cuando una opción no cumple las restricciones, se
  deshace la elección anterior. Luego, vuelve al estado anterior y
  continúa probando otras opciones. La prueba y el retroceso son
  operaciones en direcciones opuestas.
- Los problemas de backtracking suelen contener múltiples restricciones.
  Estas restricciones se pueden utilizar para realizar operaciones de
  poda. La poda puede terminar ramas de búsqueda innecesarias de
  antemano, mejorando en gran medida la eficiencia de la búsqueda.
- El algoritmo de backtracking se utiliza principalmente para resolver
  problemas de búsqueda y problemas de satisfacción de restricciones.
  Aunque los problemas de optimización combinatoria se pueden resolver
  utilizando backtracking, a menudo hay soluciones más eficientes o
  efectivas disponibles.
- El problema de la permutación tiene como objetivo buscar todas las
  permutaciones posibles de los elementos en un conjunto dado.
  Utilizamos un arreglo para registrar si cada elemento ha sido elegido,
  evitando la selección repetida del mismo elemento. Esto asegura que
  cada elemento se elija solo una vez.
- En los problemas de permutación, si el conjunto contiene elementos
  duplicados, el resultado final incluirá permutaciones duplicadas.
  Necesitamos restringir que los elementos idénticos solo se puedan
  seleccionar una vez en cada ronda, lo que generalmente se implementa
  utilizando un conjunto hash.
- El problema de la suma de subconjuntos tiene como objetivo encontrar
  todos los subconjuntos en un conjunto dado que sumen un valor
  objetivo. El conjunto no distingue el orden de los elementos, pero el
  proceso de búsqueda puede generar subconjuntos duplicados. Esto ocurre
  porque el algoritmo explora diferentes órdenes de elementos como rutas
  únicas. Antes de retroceder, ordenamos los datos y establecemos una
  variable para indicar el punto de partida del recorrido para cada
  ronda. Esto nos permite podar las ramas de búsqueda que generan
  subconjuntos duplicados.
- Para el problema de la suma de subconjuntos, los elementos iguales en
  el arreglo pueden producir conjuntos duplicados. Usando la
  precondición de que el arreglo ya está ordenado, podamos determinando
  si los elementos adyacentes son iguales. Esto asegura que los
  elementos iguales solo se seleccionen una vez por ronda.
- El problema de las $n$ reinas tiene como objetivo encontrar esquemas
  para colocar $n$ reinas en un tablero de ajedrez de $n times n$ de tal
  manera que no dos reinas puedan atacarse entre sí. Las restricciones
  del problema incluyen restricciones de fila, restricciones de columna
  y restricciones en las diagonales principales y secundarias. Para
  cumplir la restricción de fila, adoptamos una estrategia de colocar
  una reina por fila, asegurando que cada fila tenga una reina colocada.
- El manejo de las restricciones de columna y diagonales es similar.
  Para las restricciones de columna, usamos un arreglo para registrar si
  hay una reina en cada columna, indicando así si la celda seleccionada
  es legal. Para las restricciones de diagonales, usamos dos arreglos
  para registrar respectivamente la presencia de reinas en las
  diagonales principales y secundarias. El desafío es determinar la
  relación entre los índices de fila y columna para las celdas en la
  misma diagonal principal o secundaria.

=== Preguntas y respuestas
<preguntas-y-respuestas>
#strong[P];: ¿Cómo podemos entender la relación entre el backtracking y
la recursión?

En general, el backtracking es una "estrategia algorítmica", mientras
que la recursión es más una "herramienta".

- Los algoritmos de backtracking suelen basarse en la recursión. Sin
  embargo, el backtracking es uno de los escenarios de aplicación de la
  recursión, específicamente en problemas de búsqueda.
- La estructura de la recursión refleja el paradigma de resolución de
  problemas de "descomposición de subproblemas". Se usa comúnmente para
  resolver problemas que involucran divide y vencerás, backtracking y
  programación dinámica (recursión memorizada).

\`\`\`
= Programación dinámica
<programación-dinámica>
#figure(image("es/docs/assets/covers/chapter_dynamic_programming.jpg"),
  caption: [
    Programación dinámica
  ]
)

!!! abstract

```
Los arroyos se unen en ríos, y los ríos se unen en el mar.

La programación dinámica entrelaza las soluciones de problemas más pequeños en problemas más grandes, guiándonos paso a paso hacia la orilla lejana, donde espera la respuesta definitiva.
```
= Introducción a la programación dinámica
<introducción-a-la-programación-dinámica>
La programación dinámica es un paradigma algorítmico importante que
descompone un problema en una serie de subproblemas más pequeños y
almacena las soluciones de estos subproblemas para evitar cálculos
redundantes, mejorando así significativamente la eficiencia temporal.

En esta sección, comenzamos con un problema clásico, presentando primero
su solución de backtracking por fuerza bruta, identificando los
subproblemas superpuestos y luego derivando gradualmente una solución de
programación dinámica más eficiente.

!!! question "Subir escaleras"

```
Dada una escalera con $n$ escalones, donde puedes subir $1$ o $2$ escalones a la vez, ¿cuántas formas diferentes hay de llegar a la cima?
```

Como se muestra en la figura a continuación, hay $3$ formas de llegar a
la cima de una escalera de $3$ escalones.

#figure(image("es/docs/chapter_dynamic_programming/intro_to_dynamic_programming.assets/climbing_stairs_example.png"),
  caption: [
    Número de formas de llegar al tercer escalón
  ]
)

Este problema tiene como objetivo calcular el número de formas
#strong[utilizando el backtracking para agotar todas las posibilidades];.
Específicamente, considera el problema de subir escaleras como un
proceso de elección de múltiples rondas: comenzando desde el suelo,
eligiendo subir $1$ o $2$ escalones en cada ronda, incrementando el
conteo de formas al llegar a la cima de las escaleras, y podando el
proceso cuando excede la cima. El código es el siguiente:

```src
[file]{climbing_stairs_backtrack}-[class]{}-[func]{climbing_stairs_backtrack}
```

== Método 1: Búsqueda por fuerza bruta
<método-1-búsqueda-por-fuerza-bruta>
Los algoritmos de backtracking no descomponen explícitamente el problema
en subproblemas. En cambio, tratan el problema como una secuencia de
pasos de decisión, explorando todas las posibilidades a través de prueba
y poda.

Podemos analizar este problema utilizando un enfoque de descomposición.
Sea $d p \[ i \]$ el número de formas de llegar al escalón
$i^(upright("ésimo"))$. En este caso, $d p \[ i \]$ es el problema
original, y sus subproblemas son:

$ d p \[ i - 1 \] \, d p \[ i - 2 \] \, dots.h \, d p \[ 2 \] \, d p \[ 1 \] $

Dado que cada movimiento solo puede avanzar $1$ o $2$ escalones, cuando
estamos en el escalón $i^(upright("ésimo"))$, el escalón anterior debe
haber sido el $i - 1^(upright("ésimo"))$ o el
$i - 2^(upright("ésimo"))$. En otras palabras, solo podemos llegar al
$i^(upright("ésimo"))$ desde el escalón $i - 1^(upright("ésimo"))$ o
$i - 2^(upright("ésimo"))$.

Esto lleva a una conclusión importante: #strong[el número de formas de
llegar al escalón $i - 1^(upright("ésimo"))$ más el número de formas de
llegar al escalón $i - 2^(upright("ésimo"))$ es igual al número de
formas de llegar al escalón $i^(upright("ésimo"))$];. La fórmula es la
siguiente:

$ d p \[ i \] = d p \[ i - 1 \] + d p \[ i - 2 \] $

Esto significa que en el problema de subir escaleras, existe una
relación recursiva entre los subproblemas, #strong[la solución al
problema original se puede construir a partir de las soluciones a los
subproblemas];. La figura a continuación muestra esta relación
recursiva.

#figure(image("es/docs/chapter_dynamic_programming/intro_to_dynamic_programming.assets/climbing_stairs_state_transfer.png"),
  caption: [
    Relación recursiva de los recuentos de soluciones
  ]
)

Podemos obtener la solución de búsqueda por fuerza bruta de acuerdo con
la fórmula recursiva. Comenzando con $d p \[ n \]$,
#strong[descomponemos recursivamente un problema más grande en la suma
de dos subproblemas más pequeños];, hasta llegar a los subproblemas más
pequeños $d p \[ 1 \]$ y $d p \[ 2 \]$ donde las soluciones son
conocidas, con $d p \[ 1 \] = 1$ y $d p \[ 2 \] = 2$, que representan
$1$ y $2$ formas de subir al primer y segundo escalón, respectivamente.

Observe el siguiente código, que, al igual que el código de backtracking
estándar, pertenece a la búsqueda en profundidad pero es más conciso:

```src
[file]{climbing_stairs_dfs}-[class]{}-[func]{climbing_stairs_dfs}
```

La figura a continuación muestra el árbol recursivo formado por la
búsqueda por fuerza bruta. Para el problema $d p \[ n \]$, la
profundidad de su árbol recursivo es $n$, con una complejidad temporal
de $O \( 2^n \)$. Este crecimiento exponencial hace que el programa se
ejecute mucho más lentamente cuando $n$ es grande, lo que lleva a largos
tiempos de espera.

#figure(image("es/docs/chapter_dynamic_programming/intro_to_dynamic_programming.assets/climbing_stairs_dfs_tree.png"),
  caption: [
    Árbol recursivo para subir escaleras
  ]
)

Observando la figura anterior, #strong[la complejidad temporal
exponencial es causada por 'subproblemas superpuestos'];. Por ejemplo,
$d p \[ 9 \]$ se descompone en $d p \[ 8 \]$ y $d p \[ 7 \]$, y
$d p \[ 8 \]$ se descompone aún más en $d p \[ 7 \]$ y $d p \[ 6 \]$,
ambos conteniendo el subproblema $d p \[ 7 \]$.

Así, los subproblemas incluyen subproblemas superpuestos aún más
pequeños, sin fin. Una gran mayoría de los recursos computacionales se
desperdician en estos subproblemas superpuestos.

== Método 2: Búsqueda memorizada
<método-2-búsqueda-memorizada>
Para mejorar la eficiencia del algoritmo, #strong[esperamos que todos
los subproblemas superpuestos se calculen solo una vez];. Para este
propósito, declaramos un arreglo `mem` para registrar la solución de
cada subproblema, y podar los subproblemas superpuestos durante el
proceso de búsqueda.

+ Cuando $d p \[ i \]$ se calcula por primera vez, lo registramos en
  `mem[i]` para su uso posterior.
+ Cuando $d p \[ i \]$ necesite calcularse de nuevo, podemos recuperar
  directamente el resultado de `mem[i]`, evitando así cálculos
  redundantes de ese subproblema.

El código es el siguiente:

```src
[file]{climbing_stairs_dfs_mem}-[class]{}-[func]{climbing_stairs_dfs_mem}
```

Observe la figura a continuación, #strong[después de la memorización,
todos los subproblemas superpuestos deben calcularse solo una vez,
optimizando la complejidad temporal a $O \( n \)$];, lo cual es un salto
significativo.

#figure(image("es/docs/chapter_dynamic_programming/intro_to_dynamic_programming.assets/climbing_stairs_dfs_memo_tree.png"),
  caption: [
    Árbol recursivo con búsqueda memorizada
  ]
)

== Método 3: Programación dinámica
<método-3-programación-dinámica>
#strong[La búsqueda memorizada es un método 'de arriba hacia abajo'];:
comenzamos con el problema original (nodo raíz), descomponemos
recursivamente los subproblemas más grandes en otros más pequeños hasta
que se alcanzan las soluciones a los subproblemas más pequeños conocidos
(nodos hoja). Posteriormente, mediante el backtracking, recopilamos las
soluciones de los subproblemas, construyendo la solución al problema
original.

Por el contrario, #strong[la programación dinámica es un método 'de
abajo hacia arriba'];: comenzando con las soluciones a los subproblemas
más pequeños, construye iterativamente las soluciones a subproblemas más
grandes hasta que se resuelve el problema original.

Dado que la programación dinámica no implica backtracking, solo requiere
iteración usando bucles y no necesita recursión. En el siguiente código,
inicializamos un arreglo `dp` para almacenar las soluciones a los
subproblemas, sirviendo la misma función de registro que el arreglo
`mem` en la búsqueda memorizada:

```src
[file]{climbing_stairs_dp}-[class]{}-[func]{climbing_stairs_dp}
```

La figura a continuación simula el proceso de ejecución del código
anterior.

#figure(image("es/docs/chapter_dynamic_programming/intro_to_dynamic_programming.assets/climbing_stairs_dp.png"),
  caption: [
    Proceso de programación dinámica para subir escaleras
  ]
)

Al igual que el algoritmo de backtracking, la programación dinámica
también utiliza el concepto de "estados" para representar etapas
específicas en la resolución de problemas, cada estado corresponde a un
subproblema y su solución óptima local. Por ejemplo, el estado del
problema de subir escaleras se define como el número de escalón actual
$i$.

Basándonos en el contenido anterior, podemos resumir la terminología
comúnmente utilizada en la programación dinámica.

- El arreglo `dp` se denomina tabla DP, donde $d p \[ i \]$ representa
  la solución al subproblema correspondiente al estado $i$.
- Los estados correspondientes a los subproblemas más pequeños (pasos
  $1$ y $2$) se denominan estados iniciales.
- La fórmula recursiva $d p \[ i \] = d p \[ i - 1 \] + d p \[ i - 2 \]$
  se denomina ecuación de transición de estado.

== Optimización del espacio
<optimización-del-espacio>
Los lectores observadores pueden haber notado que #strong[dado que
$d p \[ i \]$ solo está relacionado con $d p \[ i - 1 \]$ y
$d p \[ i - 2 \]$, no necesitamos usar un arreglo `dp` para almacenar
las soluciones a todos los subproblemas];, sino que simplemente podemos
usar dos variables para progresar iterativamente. El código es el
siguiente:

```src
[file]{climbing_stairs_dp}-[class]{}-[func]{climbing_stairs_dp_comp}
```

Observando el código anterior, dado que se elimina el espacio ocupado
por el arreglo `dp`, la complejidad espacial se reduce de $O \( n \)$ a
$O \( 1 \)$.

En muchos problemas de programación dinámica, el estado actual depende
solo de un número limitado de estados anteriores, lo que nos permite
retener solo los estados necesarios y ahorrar espacio de memoria
mediante la "reducción de dimensiones". #strong[Esta técnica de
optimización del espacio se conoce como 'variable rodante' o 'arreglo
rodante'];.
= Características de los problemas de programación dinámica
<características-de-los-problemas-de-programación-dinámica>
En la sección anterior, aprendimos cómo la programación dinámica
resuelve el problema original descomponiéndolo en subproblemas. De
hecho, la descomposición de subproblemas es un enfoque algorítmico
general, con diferentes énfasis en divide y vencerás, programación
dinámica y backtracking.

- Los algoritmos de divide y vencerás dividen recursivamente el problema
  original en múltiples subproblemas independientes hasta que se
  alcanzan los subproblemas más pequeños, y combinan las soluciones de
  los subproblemas durante el backtracking para obtener finalmente la
  solución al problema original.
- La programación dinámica también descompone el problema
  recursivamente, pero la principal diferencia con los algoritmos de
  divide y vencerás es que los subproblemas en la programación dinámica
  son interdependientes, y aparecerán muchos subproblemas superpuestos
  durante el proceso de descomposición.
- Los algoritmos de backtracking agotan todas las soluciones posibles a
  través de prueba y error y evitan ramas de búsqueda innecesarias
  mediante la poda. La solución al problema original consiste en una
  serie de pasos de decisión, y podemos considerar cada subsecuencia
  antes de cada paso de decisión como un subproblema.

De hecho, la programación dinámica se usa comúnmente para resolver
problemas de optimización, que no solo incluyen subproblemas
superpuestos, sino que también tienen otras dos características
importantes: subestructura óptima y ausencia de estado.

== Subestructura óptima
<subestructura-óptima>
Hacemos una ligera modificación al problema de subir escaleras para que
sea más adecuado para demostrar el concepto de subestructura óptima.

!!! question "Costo mínimo de subir escaleras"

```
Dada una escalera, puedes subir 1 o 2 escalones a la vez, y cada escalón de la escalera tiene un entero no negativo que representa el costo que debes pagar en ese escalón. Dado un arreglo de enteros no negativos $cost$, donde $cost[i]$ representa el costo que debes pagar en el escalón $i$-ésimo, $cost[0]$ es el suelo (punto de partida). ¿Cuál es el costo mínimo requerido para llegar a la cima?
```

Como se muestra en la figura a continuación, si los costos de los
escalones 1, 2 y 3 son $1$, $10$ y $1$ respectivamente, entonces el
costo mínimo para subir al escalón 3 desde el suelo es $2$.

#figure(image("es/docs/chapter_dynamic_programming/dp_problem_features.assets/min_cost_cs_example.png"),
  caption: [
    Costo mínimo para subir al tercer escalón
  ]
)

Sea $d p \[ i \]$ el costo acumulado de subir al escalón $i$-ésimo. Dado
que el escalón $i$-ésimo solo puede provenir del escalón $i - 1$ o
$i - 2$, $d p \[ i \]$ solo puede ser
$d p \[ i - 1 \] + c o s t \[ i \]$ o
$d p \[ i - 2 \] + c o s t \[ i \]$. Para minimizar el costo, debemos
elegir el menor de los dos:

$ d p \[ i \] = min \( d p \[ i - 1 \] \, d p \[ i - 2 \] \) + c o s t \[ i \] $

Esto nos lleva al significado de subestructura óptima: #strong[La
solución óptima al problema original se construye a partir de las
soluciones óptimas de los subproblemas];.

Este problema obviamente tiene una subestructura óptima: seleccionamos
la mejor de las soluciones óptimas de los dos subproblemas,
$d p \[ i - 1 \]$ y $d p \[ i - 2 \]$, y la usamos para construir la
solución óptima para el problema original $d p \[ i \]$.

Entonces, ¿el problema de subir escaleras de la sección anterior tiene
una subestructura óptima? Su objetivo es resolver el número de
soluciones, lo que parece ser un problema de conteo, pero si preguntamos
de otra manera: "Resolver el número máximo de soluciones".
Sorprendentemente, encontramos que #strong[aunque el problema ha
cambiado, la subestructura óptima ha surgido];: el número máximo de
soluciones en el $n$-ésimo escalón es igual a la suma del número máximo
de soluciones en los escalones $n - 1$ y $n - 2$. Por lo tanto, la
interpretación de la subestructura óptima es bastante flexible y tendrá
diferentes significados en diferentes problemas.

Según la ecuación de transición de estado, y los estados iniciales
$d p \[ 1 \] = c o s t \[ 1 \]$ y $d p \[ 2 \] = c o s t \[ 2 \]$,
podemos obtener el código de programación dinámica:

```src
[file]{min_cost_climbing_stairs_dp}-[class]{}-[func]{min_cost_climbing_stairs_dp}
```

La figura a continuación muestra el proceso de programación dinámica
para el código anterior.

#figure(image("es/docs/chapter_dynamic_programming/dp_problem_features.assets/min_cost_cs_dp.png"),
  caption: [
    Proceso de programación dinámica para el costo mínimo de subir
    escaleras
  ]
)

Este problema también se puede optimizar en espacio, comprimiendo una
dimensión a cero, reduciendo la complejidad espacial de $O \( n \)$ a
$O \( 1 \)$:

```src
[file]{min_cost_climbing_stairs_dp}-[class]{}-[func]{min_cost_climbing_stairs_dp_comp}
```

== Ausencia de estado
<ausencia-de-estado>
La ausencia de estado es una de las características importantes que
hacen que la programación dinámica sea efectiva para resolver problemas.
Su definición es: #strong[Dado un cierto estado, su desarrollo futuro
solo está relacionado con el estado actual y no está relacionado con
todos los estados pasados experimentados];.

Tomando el problema de subir escaleras como ejemplo, dado el estado $i$,
se desarrollará en los estados $i + 1$ e $i + 2$, correspondientes a
saltar 1 escalón y 2 escalones respectivamente. Al tomar estas dos
decisiones, no necesitamos considerar los estados anteriores al estado
$i$, ya que no afectan el futuro del estado $i$.

Sin embargo, si agregamos una restricción al problema de subir
escaleras, la situación cambia.

!!! question "Subir escaleras con restricciones"

```
Dada una escalera con $n$ escalones, puedes subir 1 o 2 escalones cada vez, **pero no puedes saltar 1 escalón dos veces seguidas**. ¿Cuántas formas hay de subir a la cima?
```

Como se muestra en la figura a continuación, solo hay 2 opciones
factibles para subir al escalón 3, entre las cuales la opción de saltar
1 escalón tres veces seguidas no cumple la condición de restricción y,
por lo tanto, se descarta.

#figure(image("es/docs/chapter_dynamic_programming/dp_problem_features.assets/climbing_stairs_constraint_example.png"),
  caption: [
    Número de opciones factibles para subir al tercer escalón con
    restricciones
  ]
)

En este problema, si la última ronda fue un salto de 1 escalón, entonces
la siguiente ronda debe ser un salto de 2 escalones. Esto significa que
#strong[la siguiente elección de paso no puede ser determinada
independientemente por el estado actual (escalón actual), sino que
también depende del estado anterior (escalón de la última ronda)];.

No es difícil encontrar que este problema ya no satisface la ausencia de
estado, y la ecuación de transición de estado
$d p \[ i \] = d p \[ i - 1 \] + d p \[ i - 2 \]$ también falla, porque
$d p \[ i - 1 \]$ representa el salto de 1 escalón de esta ronda, pero
incluye muchas opciones de "la última ronda fue un salto de 1 escalón",
que, para cumplir la restricción, no pueden incluirse directamente en
$d p \[ i \]$.

Para esto, necesitamos expandir la definición de estado: #strong[El
estado $\[ i \, j \]$ representa estar en el escalón $i$-ésimo y la
última ronda fue un salto de $j$ escalones];, donde $j in { 1 \, 2 }$.
Esta definición de estado distingue eficazmente si la última ronda fue
un salto de 1 escalón o 2 escalones, y podemos juzgar en consecuencia de
dónde provino el estado actual.

- Cuando la última ronda fue un salto de 1 escalón, la ronda anterior
  solo pudo elegir saltar 2 escalones, es decir, $d p \[ i \, 1 \]$ solo
  puede transferirse de $d p \[ i - 1 \, 2 \]$.
- Cuando la última ronda fue un salto de 2 escalones, la ronda anterior
  pudo elegir saltar 1 escalón o 2 escalones, es decir,
  $d p \[ i \, 2 \]$ puede transferirse de $d p \[ i - 2 \, 1 \]$ o
  $d p \[ i - 2 \, 2 \]$.

Como se muestra en la figura a continuación, $d p \[ i \, j \]$
representa el número de soluciones para el estado $\[ i \, j \]$. En
este punto, la ecuación de transición de estado es:

$ {d p \[ i \, 1 \] = d p \[ i - 1 \, 2 \]\
d p \[ i \, 2 \] = d p \[ i - 2 \, 1 \] + d p \[ i - 2 \, 2 \] $

#figure(image("es/docs/chapter_dynamic_programming/dp_problem_features.assets/climbing_stairs_constraint_state_transfer.png"),
  caption: [
    Relación recursiva considerando restricciones
  ]
)

Al final, devolver $d p \[ n \, 1 \] + d p \[ n \, 2 \]$ será
suficiente, la suma de los dos representa el número total de soluciones
para subir al escalón $n$-ésimo:

```src
[file]{climbing_stairs_constraint_dp}-[class]{}-[func]{climbing_stairs_constraint_dp}
```

En los casos anteriores, dado que solo necesitamos considerar el estado
anterior, aún podemos cumplir con la ausencia de estado expandiendo la
definición de estado. Sin embargo, algunos problemas tienen "efectos de
estado" muy graves.

!!! question "Subir escaleras con generación de obstáculos"

```
Dada una escalera con $n$ escalones, puedes subir 1 o 2 escalones cada vez. **Se estipula que al subir al escalón $i$-ésimo, el sistema coloca automáticamente un obstáculo en el escalón $2i$-ésimo, y a partir de entonces no se permite saltar al escalón $2i$-ésimo en ninguna ronda**. Por ejemplo, si las dos primeras rondas saltan a los escalones 2 y 3, entonces más tarde no se puede saltar a los escalones 4 y 6. ¿Cuántas formas hay de subir a la cima?
```

En este problema, el siguiente salto depende de todos los estados
pasados, ya que cada salto coloca obstáculos en escalones más altos,
afectando los saltos futuros. Para tales problemas, la programación
dinámica a menudo tiene dificultades para resolverlos.

De hecho, muchos problemas complejos de optimización combinatoria (como
el problema del viajante de comercio) no satisfacen la ausencia de
estado. Para este tipo de problemas, generalmente elegimos usar otros
métodos, como la búsqueda heurística, los algoritmos genéticos, el
aprendizaje por refuerzo, etc., para obtener soluciones óptimas locales
utilizables en un tiempo limitado.
= Enfoque de Solución en Programación Dinámica
<enfoque-de-solución-en-programación-dinámica>
En las dos secciones anteriores, introdujimos las características
principales de los problemas de programación dinámica. A continuación,
exploraremos dos preguntas más prácticas.

+ ¿Cómo determinar si un problema es un problema de programación
  dinámica?
+ ¿Por dónde empezar a resolver un problema de programación dinámica y
  cuáles son los pasos completos?

== Determinación del Problema
<determinación-del-problema>
En general, si un problema contiene subproblemas superpuestos,
subestructura óptima y satisface la propiedad de no tener efectos
posteriores, entonces suele ser adecuado para resolverlo con
programación dinámica. Sin embargo, es difícil extraer directamente
estas características de la descripción del problema. Por lo tanto,
solemos relajar las condiciones y #strong[primero observar si el
problema es adecuado para resolverlo mediante backtracking (enumeración
exhaustiva)];.

#strong[Los problemas adecuados para resolver con backtracking suelen
satisfacer el "modelo de árbol de decisión"];. Este tipo de problema se
puede describir utilizando una estructura de árbol, donde cada nodo
representa una decisión y cada ruta representa una secuencia de
decisiones.

En otras palabras, si el problema contiene un concepto claro de decisión
y la solución se produce a través de una serie de decisiones, entonces
satisface el modelo de árbol de decisión y, por lo general, se puede
resolver mediante backtracking.

Sobre esta base, los problemas de programación dinámica también tienen
algunos "puntos a favor" para su identificación.

- El problema incluye descripciones de optimización como máximo (mínimo)
  o más (menos).
- El estado del problema se puede representar mediante una lista, una
  matriz multidimensional o un árbol, y existe una relación recurrente
  entre un estado y sus estados circundantes.

Correspondientemente, también existen algunos "puntos en contra".

- El objetivo del problema es encontrar todas las soluciones posibles,
  en lugar de encontrar la solución óptima.
- La descripción del problema tiene características obvias de
  permutaciones y combinaciones, y requiere devolver múltiples
  soluciones específicas.

Si un problema satisface el modelo de árbol de decisión y tiene "puntos
a favor" relativamente obvios, podemos asumir que es un problema de
programación dinámica y verificarlo durante el proceso de solución.

== Pasos para la Solución del Problema
<pasos-para-la-solución-del-problema>
El proceso de resolución de problemas de programación dinámica variará
según la naturaleza y la dificultad del problema, pero generalmente
sigue estos pasos: describir la decisión, definir el estado, establecer
la tabla $d p$, derivar la ecuación de transición de estado, determinar
las condiciones de contorno, etc.

Para ilustrar los pasos de resolución de problemas de manera más vívida,
utilizaremos un problema clásico: "suma mínima de ruta".

!!! question

```
Dado un grid bidimensional de $n \times m$ `grid`, cada celda de la cuadrícula contiene un entero no negativo que representa el costo de esa celda. Un robot comienza en la celda superior izquierda y solo puede moverse hacia abajo o hacia la derecha en cada paso, hasta llegar a la celda inferior derecha. Devuelve la suma mínima de la ruta desde la esquina superior izquierda hasta la esquina inferior derecha.
```

La siguiente figura muestra un ejemplo; la suma mínima de la ruta para
la cuadrícula dada es $13$.

#figure(image("es/docs/chapter_dynamic_programming/dp_solution_pipeline.assets/min_path_sum_example.png"),
  caption: [
    Datos de ejemplo de suma mínima de ruta
  ]
)

#strong[Primer paso: Considerar la decisión en cada ronda, definir el
estado y así obtener la tabla $d p$]

La decisión en cada ronda de este problema es moverse hacia abajo o
hacia la derecha desde la celda actual. Supongamos que los índices de
fila y columna de la celda actual son $\[ i \, j \]$. Entonces, después
de moverse hacia abajo o hacia la derecha, los índices se convierten en
$\[ i + 1 \, j \]$ o $\[ i \, j + 1 \]$. Por lo tanto, el estado debe
incluir dos variables: el índice de la fila y el índice de la columna,
denotados como $\[ i \, j \]$.

El subproblema correspondiente al estado $\[ i \, j \]$ es: la suma
mínima de la ruta desde el punto de partida $\[ 0 \, 0 \]$ hasta
$\[ i \, j \]$, y la solución se denota como $d p \[ i \, j \]$.

Con esto, hemos obtenido la matriz $d p$ bidimensional que se muestra en
la siguiente figura, cuyas dimensiones son las mismas que las de la
cuadrícula de entrada $g r i d$.

#figure(image("es/docs/chapter_dynamic_programming/dp_solution_pipeline.assets/min_path_sum_solution_state_definition.png"),
  caption: [
    Definición de estado y tabla dp
  ]
)

!!! note

```
El proceso de programación dinámica y backtracking se puede describir como una secuencia de decisiones, y el estado está constituido por todas las variables de decisión. Debe contener todas las variables que describen el progreso de la solución y tener suficiente información para derivar el siguiente estado.

Cada estado corresponde a un subproblema, y definiremos una tabla $dp$ para almacenar las soluciones a todos los subproblemas. Cada variable independiente del estado es una dimensión de la tabla $dp$. Esencialmente, la tabla $dp$ es un mapeo entre los estados y las soluciones de los subproblemas.
```

#strong[Segundo paso: Encontrar la subestructura óptima y luego derivar
la ecuación de transición de estado]

Para el estado $\[ i \, j \]$, solo se puede alcanzar desde la celda
superior $\[ i - 1 \, j \]$ o la celda izquierda $\[ i \, j - 1 \]$. Por
lo tanto, la subestructura óptima es: la suma mínima de la ruta para
llegar a $\[ i \, j \]$ está determinada por la menor de las sumas
mínimas de las rutas a $\[ i \, j - 1 \]$ y $\[ i - 1 \, j \]$.

Según el análisis anterior, podemos derivar la ecuación de transición de
estado que se muestra en la siguiente figura:

$ d p \[ i \, j \] = min \( d p \[ i - 1 \, j \] \, d p \[ i \, j - 1 \] \) + g r i d \[ i \, j \] $

#figure(image("es/docs/chapter_dynamic_programming/dp_solution_pipeline.assets/min_path_sum_solution_state_transition.png"),
  caption: [
    Subestructura óptima y ecuación de transición de estado
  ]
)

!!! note

```
Con base en la tabla $dp$ definida, considera la relación entre el problema original y los subproblemas. Encuentra un método para construir la solución óptima del problema original utilizando las soluciones óptimas de los subproblemas; esto es la subestructura óptima.

Una vez que encontramos la subestructura óptima, podemos usarla para construir la ecuación de transición de estado.
```

#strong[Tercer paso: Determinar las condiciones de contorno y el orden
de transición de estado]

En este problema, los estados en la primera fila solo se pueden alcanzar
desde sus estados a la izquierda, y los estados en la primera columna
solo se pueden alcanzar desde sus estados superiores. Por lo tanto, la
primera fila $i = 0$ y la primera columna $j = 0$ son las condiciones de
contorno.

Como se muestra en la siguiente figura, dado que cada celda se alcanza
desde su celda izquierda y su celda superior, usamos bucles para
recorrer la matriz: el bucle exterior recorre las filas y el bucle
interior recorre las columnas.

#figure(image("es/docs/chapter_dynamic_programming/dp_solution_pipeline.assets/min_path_sum_solution_initial_state.png"),
  caption: [
    Condiciones de contorno y orden de transición de estado
  ]
)

!!! note

```
Las condiciones de contorno se utilizan en programación dinámica para inicializar la tabla $dp$ y en la búsqueda para la poda.

El núcleo del orden de transición de estado es garantizar que cuando se calcula la solución al problema actual, ya se hayan calculado correctamente todas las soluciones a los subproblemas más pequeños de los que depende.
```

Según el análisis anterior, podemos escribir directamente el código de
programación dinámica. Sin embargo, la descomposición de subproblemas es
una idea de arriba hacia abajo, por lo que implementarla en el orden
"búsqueda exhaustiva $arrow.r$ búsqueda con memorización $arrow.r$
programación dinámica" está más en línea con los hábitos de pensamiento.

=== Método uno: Búsqueda Exhaustiva
<método-uno-búsqueda-exhaustiva>
Comenzando la búsqueda desde el estado $\[ i \, j \]$, se descompone
continuamente en estados más pequeños $\[ i - 1 \, j \]$ y
$\[ i \, j - 1 \]$. La función recursiva incluye los siguientes
elementos.

- #strong[Parámetros recursivos];: Estado $\[ i \, j \]$.
- #strong[Valor de retorno];: La suma mínima de la ruta desde
  $\[ 0 \, 0 \]$ hasta $\[ i \, j \]$, $d p \[ i \, j \]$.
- #strong[Condición de terminación];: Cuando $i = 0$ y $j = 0$, devuelve
  el costo $g r i d \[ 0 \, 0 \]$.
- #strong[Poda];: Cuando $i < 0$ o $j < 0$, el índice está fuera de los
  límites. En este caso, devuelve un costo de $+ oo$, que representa la
  inviabilidad.

El código de implementación es el siguiente:

```src
[file]{min_path_sum}-[class]{}-[func]{min_path_sum_dfs}
```

La siguiente figura muestra el árbol de recursión con $d p \[ 2 \, 1 \]$
como nodo raíz. Contiene algunos subproblemas superpuestos, cuyo número
aumentará drásticamente a medida que aumente el tamaño de la cuadrícula
`grid`.

Esencialmente, la razón de los subproblemas superpuestos es que
#strong[existen múltiples rutas desde la esquina superior izquierda
hasta una celda determinada];.

#figure(image("es/docs/chapter_dynamic_programming/dp_solution_pipeline.assets/min_path_sum_dfs.png"),
  caption: [
    Árbol de recursión de búsqueda exhaustiva
  ]
)

Cada estado tiene dos opciones: hacia abajo o hacia la derecha. Se
necesitan un total de $m + n - 2$ pasos para ir desde la esquina
superior izquierda hasta la esquina inferior derecha. Por lo tanto, la
complejidad de tiempo en el peor de los casos es $O \( 2^(m + n) \)$,
donde $n$ y $m$ son el número de filas y columnas de la cuadrícula,
respectivamente. Ten en cuenta que este método de cálculo no considera
la situación cerca de los bordes de la cuadrícula; cuando se alcanza un
borde de la cuadrícula, solo queda una opción, por lo que el número real
de rutas será menor.

=== Método dos: Búsqueda con Memorización
<método-dos-búsqueda-con-memorización>
Introducimos una lista de memorización `mem` del mismo tamaño que la
cuadrícula `grid` para registrar las soluciones de varios subproblemas y
podar los subproblemas superpuestos:

```src
[file]{min_path_sum}-[class]{}-[func]{min_path_sum_dfs_mem}
```

Como se muestra en la siguiente figura, después de introducir la
memorización, la solución a cada subproblema solo necesita calcularse
una vez. Por lo tanto, la complejidad del tiempo depende del número
total de estados, que es el tamaño de la cuadrícula $O \( n m \)$.

#figure(image("es/docs/chapter_dynamic_programming/dp_solution_pipeline.assets/min_path_sum_dfs_mem.png"),
  caption: [
    Árbol de recursión de búsqueda con memorización
  ]
)

=== Método tres: Programación Dinámica
<método-tres-programación-dinámica>
Implementación de la solución de programación dinámica basada en
iteración. El código se muestra a continuación:

```src
[file]{min_path_sum}-[class]{}-[func]{min_path_sum_dp}
```

La siguiente figura muestra el proceso de transición de estado de la
suma mínima de la ruta, que recorre toda la cuadrícula. #strong[Por lo
tanto, la complejidad del tiempo es $O \( n m \)$];.

El tamaño de la matriz `dp` es $n times m$. #strong[Por lo tanto, la
complejidad del espacio es $O \( n m \)$];.

\=== "\<1\>"
#box(image("es/docs/chapter_dynamic_programming/dp_solution_pipeline.assets/min_path_sum_dp_step1.png"))

\=== "\<2\>"
#box(image("es/docs/chapter_dynamic_programming/dp_solution_pipeline.assets/min_path_sum_dp_step2.png"))

\=== "\<3\>"
#box(image("es/docs/chapter_dynamic_programming/dp_solution_pipeline.assets/min_path_sum_dp_step3.png"))

\=== "\<4\>"
#box(image("es/docs/chapter_dynamic_programming/dp_solution_pipeline.assets/min_path_sum_dp_step4.png"))

\=== "\<5\>"
#box(image("es/docs/chapter_dynamic_programming/dp_solution_pipeline.assets/min_path_sum_dp_step5.png"))

\=== "\<6\>"
#box(image("es/docs/chapter_dynamic_programming/dp_solution_pipeline.assets/min_path_sum_dp_step6.png"))

\=== "\<7\>"
#box(image("es/docs/chapter_dynamic_programming/dp_solution_pipeline.assets/min_path_sum_dp_step7.png"))

\=== "\<8\>"
#box(image("es/docs/chapter_dynamic_programming/dp_solution_pipeline.assets/min_path_sum_dp_step8.png"))

\=== "\<9\>"
#box(image("es/docs/chapter_dynamic_programming/dp_solution_pipeline.assets/min_path_sum_dp_step9.png"))

\=== "\<10\>"
#box(image("es/docs/chapter_dynamic_programming/dp_solution_pipeline.assets/min_path_sum_dp_step10.png"))

\=== "\<11\>"
#box(image("es/docs/chapter_dynamic_programming/dp_solution_pipeline.assets/min_path_sum_dp_step11.png"))

\=== "\<12\>"
#box(image("es/docs/chapter_dynamic_programming/dp_solution_pipeline.assets/min_path_sum_dp_step12.png"))

=== Optimización del Espacio
<optimización-del-espacio>
Dado que cada celda solo está relacionada con sus celdas izquierda y
superior, podemos implementar la tabla $d p$ usando solo una matriz de
una sola fila.

Ten en cuenta que debido a que la matriz `dp` solo puede representar el
estado de una fila, no podemos inicializar el estado de la primera
columna por adelantado. En su lugar, lo actualizamos mientras recorremos
cada fila:

```src
[file]{min_path_sum}-[class]{}-[func]{min_path_sum_dp_comp}
```
= Problema de la mochila 0-1
<problema-de-la-mochila-0-1>
El problema de la mochila es un excelente problema introductorio para la
programación dinámica y es el tipo de problema más común en la
programación dinámica. Tiene muchas variantes, como el problema de la
mochila 0-1, el problema de la mochila ilimitada y el problema de la
mochila múltiple, etc.

En esta sección, resolveremos primero el problema de la mochila 0-1 más
común.

!!! question

```
Dados $n$ artículos, el peso del $i$-ésimo artículo es $wgt[i-1]$ y su valor es $val[i-1]$, y una mochila con una capacidad de $cap$. Cada artículo se puede elegir solo una vez. ¿Cuál es el valor máximo de los artículos que se pueden colocar en la mochila bajo el límite de capacidad?
```

Observe la figura a continuación, dado que el número de artículo $i$
comienza a contar desde 1, y el índice del arreglo comienza desde 0, el
peso del artículo $i$ corresponde a $w g t \[ i - 1 \]$ y el valor
corresponde a $v a l \[ i - 1 \]$.

#figure(image("es/docs/chapter_dynamic_programming/knapsack_problem.assets/knapsack_example.png"),
  caption: [
    Datos de ejemplo de la mochila 0-1
  ]
)

Podemos considerar el problema de la mochila 0-1 como un proceso que
consta de $n$ rondas de decisiones, donde para cada artículo hay dos
decisiones: no ponerlo o ponerlo, por lo que el problema se ajusta al
modelo de árbol de decisión.

El objetivo de este problema es "maximizar el valor de los artículos que
se pueden colocar en la mochila bajo la capacidad limitada", por lo que
es más probable que sea un problema de programación dinámica.

#strong[Primer paso: Piense en cada ronda de decisiones, defina los
estados, obteniendo así la tabla $d p$]

Para cada artículo, si no se coloca en la mochila, la capacidad
permanece sin cambios; si se coloca, la capacidad se reduce. De esto, se
puede obtener la definición de estado: el número de artículo actual $i$
y la capacidad de la mochila $c$, denotado como $\[ i \, c \]$.

El estado $\[ i \, c \]$ corresponde al subproblema: #strong[el valor
máximo de los primeros $i$ artículos en una mochila de capacidad $c$];,
denotado como $d p \[ i \, c \]$.

La solución que buscamos es $d p \[ n \, c a p \]$, por lo que
necesitamos una tabla $d p$ bidimensional de tamaño
$\( n + 1 \) times \( c a p + 1 \)$.

#strong[Segundo paso: Identificar la subestructura óptima, luego derivar
la ecuación de transición de estado]

Después de tomar la decisión para el artículo $i$, lo que queda es el
subproblema de las decisiones para los primeros $i - 1$ artículos, que
se puede dividir en dos casos.

- #strong[No poner el artículo $i$];: La capacidad de la mochila
  permanece sin cambios, el estado cambia a $\[ i - 1 \, c \]$.
- #strong[Poner el artículo $i$];: La capacidad de la mochila disminuye
  en $w g t \[ i - 1 \]$, y el valor aumenta en $v a l \[ i - 1 \]$, el
  estado cambia a $\[ i - 1 \, c - w g t \[ i - 1 \] \]$.

El análisis anterior revela la subestructura óptima de este problema:
#strong[el valor máximo $d p \[ i \, c \]$ es igual al valor mayor de
los dos esquemas de no poner el artículo $i$ y poner el artículo $i$];.
De esto, se puede derivar la ecuación de transición de estado:

$ d p \[ i \, c \] = max \( d p \[ i - 1 \, c \] \, d p \[ i - 1 \, c - w g t \[ i - 1 \] \] + v a l \[ i - 1 \] \) $

Es importante tener en cuenta que si el peso del artículo actual
$w g t \[ i - 1 \]$ excede la capacidad restante de la mochila $c$,
entonces la única opción es no ponerlo en la mochila.

#strong[Tercer paso: Determinar las condiciones de contorno y el orden
de las transiciones de estado]

Cuando no hay artículos o la capacidad de la mochila es $0$, el valor
máximo es $0$, es decir, la primera columna $d p \[ i \, 0 \]$ y la
primera fila $d p \[ 0 \, c \]$ son ambas iguales a $0$.

El estado actual $\[ i \, c \]$ transita desde el estado directamente
superior $\[ i - 1 \, c \]$ y el estado superior izquierdo
$\[ i - 1 \, c - w g t \[ i - 1 \] \]$, por lo tanto, toda la tabla
$d p$ se recorre en orden a través de dos capas de bucles.

Siguiendo el análisis anterior, a continuación implementaremos las
soluciones en el orden de búsqueda por fuerza bruta, búsqueda memorizada
y programación dinámica.

=== Método uno: Búsqueda por fuerza bruta
<método-uno-búsqueda-por-fuerza-bruta>
El código de búsqueda incluye los siguientes elementos.

- #strong[Parámetros recursivos];: Estado $\[ i \, c \]$.
- #strong[Valor de retorno];: Solución del subproblema
  $d p \[ i \, c \]$.
- #strong[Condición de terminación];: Cuando el número de artículo está
  fuera de los límites $i = 0$ o la capacidad restante de la mochila es
  $0$, termine la recursión y devuelva el valor $0$.
- #strong[Poda];: Si el peso del artículo actual excede la capacidad
  restante de la mochila, la única opción es no ponerlo en la mochila.

```src
[file]{knapsack}-[class]{}-[func]{knapsack_dfs}
```

Como se muestra en la figura a continuación, dado que cada artículo
genera dos ramas de búsqueda de no seleccionar y seleccionar, la
complejidad temporal es $O \( 2^n \)$.

Observando el árbol recursivo, es fácil ver que hay subproblemas
superpuestos, como $d p \[ 1 \, 10 \]$, etc. Cuando hay muchos artículos
y la capacidad de la mochila es grande, especialmente cuando hay muchos
artículos del mismo peso, el número de subproblemas superpuestos
aumentará significativamente.

#figure(image("es/docs/chapter_dynamic_programming/knapsack_problem.assets/knapsack_dfs.png"),
  caption: [
    El árbol recursivo de búsqueda por fuerza bruta del problema de la
    mochila 0-1
  ]
)

=== Método dos: Búsqueda memorizada
<método-dos-búsqueda-memorizada>
Para asegurar que los subproblemas superpuestos se calculen solo una
vez, usamos una lista de memorización `mem` para registrar las
soluciones a los subproblemas, donde `mem[i][c]` corresponde a
$d p \[ i \, c \]$.

Después de introducir la memorización, #strong[la complejidad temporal
depende del número de subproblemas];, que es $O \( n times c a p \)$. El
código de implementación es el siguiente:

```src
[file]{knapsack}-[class]{}-[func]{knapsack_dfs_mem}
```

La figura a continuación muestra las ramas de búsqueda que se podan en
la búsqueda memorizada.

#figure(image("es/docs/chapter_dynamic_programming/knapsack_problem.assets/knapsack_dfs_mem.png"),
  caption: [
    El árbol recursivo de búsqueda memorizada del problema de la mochila
    0-1
  ]
)

=== Método tres: Programación dinámica
<método-tres-programación-dinámica>
La programación dinámica esencialmente implica rellenar la tabla $d p$
durante la transición de estado, el código se muestra en la figura a
continuación:

```src
[file]{knapsack}-[class]{}-[func]{knapsack_dp}
```

Como se muestra en la figura a continuación, tanto la complejidad
temporal como la espacial están determinadas por el tamaño del arreglo
`dp`, es decir, $O \( n times c a p \)$.

\=== "\<1\>"
#box(image("es/docs/chapter_dynamic_programming/knapsack_problem.assets/knapsack_dp_step1.png"))

\=== "\<2\>"
#box(image("es/docs/chapter_dynamic_programming/knapsack_problem.assets/knapsack_dp_step2.png"))

\=== "\<3\>"
#box(image("es/docs/chapter_dynamic_programming/knapsack_problem.assets/knapsack_dp_step3.png"))

\=== "\<4\>"
#box(image("es/docs/chapter_dynamic_programming/knapsack_problem.assets/knapsack_dp_step4.png"))

\=== "\<5\>"
#box(image("es/docs/chapter_dynamic_programming/knapsack_problem.assets/knapsack_dp_step5.png"))

\=== "\<6\>"
#box(image("es/docs/chapter_dynamic_programming/knapsack_problem.assets/knapsack_dp_step6.png"))

\=== "\<7\>"
#box(image("es/docs/chapter_dynamic_programming/knapsack_problem.assets/knapsack_dp_step7.png"))

\=== "\<8\>"
#box(image("es/docs/chapter_dynamic_programming/knapsack_problem.assets/knapsack_dp_step8.png"))

\=== "\<9\>"
#box(image("es/docs/chapter_dynamic_programming/knapsack_problem.assets/knapsack_dp_step9.png"))

\=== "\<10\>"
#box(image("es/docs/chapter_dynamic_programming/knapsack_problem.assets/knapsack_dp_step10.png"))

\=== "\<11\>"
#box(image("es/docs/chapter_dynamic_programming/knapsack_problem.assets/knapsack_dp_step11.png"))

\=== "\<12\>"
#box(image("es/docs/chapter_dynamic_programming/knapsack_problem.assets/knapsack_dp_step12.png"))

\=== "\<13\>"
#box(image("es/docs/chapter_dynamic_programming/knapsack_problem.assets/knapsack_dp_step13.png"))

\=== "\<14\>"
#box(image("es/docs/chapter_dynamic_programming/knapsack_problem.assets/knapsack_dp_step14.png"))

=== Optimización del espacio
<optimización-del-espacio>
Dado que cada estado solo está relacionado con el estado de la fila
superior, podemos usar dos arreglos para avanzar, reduciendo la
complejidad espacial de $O \( n^2 \)$ a $O \( n \)$.

Pensando más a fondo, ¿podemos usar solo un arreglo para lograr la
optimización del espacio? Se puede observar que cada estado se
transfiere desde la celda directamente superior o desde la celda
superior izquierda. Si solo hay un arreglo, al comenzar a recorrer la
fila $i$-ésima, ese arreglo todavía almacena el estado de la fila
$i - 1$.

- Si se utiliza un recorrido en orden normal, al recorrer
  $d p \[ i \, j \]$, los valores de la parte superior izquierda
  $d p \[ i - 1 \, 1 \]$ \~ $d p \[ i - 1 \, j - 1 \]$ pueden haber sido
  sobrescritos, por lo que no se puede obtener el resultado correcto de
  la transición de estado.
- Si se utiliza un recorrido en orden inverso, no habrá problema de
  sobrescritura, y la transición de estado se puede realizar
  correctamente.

Las figuras a continuación muestran el proceso de transición de la fila
$i = 1$ a la fila $i = 2$ en un solo arreglo. Piense en las diferencias
entre el recorrido en orden normal y el recorrido en orden inverso.

\=== "\<1\>"
#box(image("es/docs/chapter_dynamic_programming/knapsack_problem.assets/knapsack_dp_comp_step1.png"))

\=== "\<2\>"
#box(image("es/docs/chapter_dynamic_programming/knapsack_problem.assets/knapsack_dp_comp_step2.png"))

\=== "\<3\>"
#box(image("es/docs/chapter_dynamic_programming/knapsack_problem.assets/knapsack_dp_comp_step3.png"))

\=== "\<4\>"
#box(image("es/docs/chapter_dynamic_programming/knapsack_problem.assets/knapsack_dp_comp_step4.png"))

\=== "\<5\>"
#box(image("es/docs/chapter_dynamic_programming/knapsack_problem.assets/knapsack_dp_comp_step5.png"))

\=== "\<6\>"
#box(image("es/docs/chapter_dynamic_programming/knapsack_problem.assets/knapsack_dp_comp_step6.png"))

En la implementación del código, solo necesitamos eliminar la primera
dimensión $i$ del arreglo `dp` y cambiar el bucle interno a recorrido
inverso:

```src
[file]{knapsack}-[class]{}-[func]{knapsack_dp_comp}
```
= Problema de la mochila ilimitada
<problema-de-la-mochila-ilimitada>
En esta sección, primero resolvemos otro problema común de la mochila:
la mochila ilimitada, y luego exploramos un caso especial de ella: el
problema del cambio de monedas.

== Problema de la mochila ilimitada
<problema-de-la-mochila-ilimitada-1>
!!! question

```
Dados $n$ artículos, donde el peso del $i$-ésimo artículo es $wgt[i-1]$ y su valor es $val[i-1]$, y una mochila con una capacidad de $cap$. **Cada artículo se puede seleccionar varias veces**. ¿Cuál es el valor máximo de los artículos que se pueden colocar en la mochila sin exceder su capacidad? Vea el ejemplo a continuación.
```

#figure(image("es/docs/chapter_dynamic_programming/unbounded_knapsack_problem.assets/unbounded_knapsack_example.png"),
  caption: [
    Datos de ejemplo para el problema de la mochila ilimitada
  ]
)

=== Enfoque de programación dinámica
<enfoque-de-programación-dinámica>
El problema de la mochila ilimitada es muy similar al problema de la
mochila 0-1, #strong[la única diferencia es que no hay límite en el
número de veces que se puede elegir un artículo];.

- En el problema de la mochila 0-1, solo hay uno de cada artículo, por
  lo que después de colocar el artículo $i$ en la mochila, solo puede
  elegir entre los $i - 1$ artículos anteriores.
- En el problema de la mochila ilimitada, la cantidad de cada artículo
  es ilimitada, por lo que después de colocar el artículo $i$ en la
  mochila, #strong[todavía puede elegir entre los $i$ artículos
  anteriores];.

Bajo las reglas del problema de la mochila ilimitada, el estado
$\[ i \, c \]$ puede cambiar de dos maneras.

- #strong[No poner el artículo $i$];: Al igual que con el problema de la
  mochila 0-1, la transición es a $\[ i - 1 \, c \]$.
- #strong[Poner el artículo $i$];: A diferencia del problema de la
  mochila 0-1, la transición es a $\[ i \, c - w g t \[ i - 1 \] \]$.

La ecuación de transición de estado, por lo tanto, se convierte en:

$ d p \[ i \, c \] = max \( d p \[ i - 1 \, c \] \, d p \[ i \, c - w g t \[ i - 1 \] \] + v a l \[ i - 1 \] \) $

=== Implementación del código
<implementación-del-código>
Comparando el código para los dos problemas, la transición de estado
cambia de $i - 1$ a $i$, el resto es completamente idéntico:

```src
[file]{unbounded_knapsack}-[class]{}-[func]{unbounded_knapsack_dp}
```

=== Optimización del espacio
<optimización-del-espacio>
Dado que el estado actual proviene del estado a la izquierda y arriba,
#strong[la solución optimizada en espacio debe realizar un recorrido
hacia adelante para cada fila en la tabla $d p$];.

Este orden de recorrido es opuesto al del problema de la mochila 0-1.
Consulte la figura a continuación para comprender la diferencia.

\=== "\<1\>"
#box(image("es/docs/chapter_dynamic_programming/unbounded_knapsack_problem.assets/unbounded_knapsack_dp_comp_step1.png"))

\=== "\<2\>"
#box(image("es/docs/chapter_dynamic_programming/unbounded_knapsack_problem.assets/unbounded_knapsack_dp_comp_step2.png"))

\=== "\<3\>"
#box(image("es/docs/chapter_dynamic_programming/unbounded_knapsack_problem.assets/unbounded_knapsack_dp_comp_step3.png"))

\=== "\<4\>"
#box(image("es/docs/chapter_dynamic_programming/unbounded_knapsack_problem.assets/unbounded_knapsack_dp_comp_step4.png"))

\=== "\<5\>"
#box(image("es/docs/chapter_dynamic_programming/unbounded_knapsack_problem.assets/unbounded_knapsack_dp_comp_step5.png"))

\=== "\<6\>"
#box(image("es/docs/chapter_dynamic_programming/unbounded_knapsack_problem.assets/unbounded_knapsack_dp_comp_step6.png"))

La implementación del código es bastante simple, solo elimine la primera
dimensión del arreglo `dp`:

```src
[file]{unbounded_knapsack}-[class]{}-[func]{unbounded_knapsack_dp_comp}
```

== Problema del cambio de monedas
<problema-del-cambio-de-monedas>
El problema de la mochila es un representante de una gran clase de
problemas de programación dinámica y tiene muchas variantes, como el
problema del cambio de monedas.

!!! question

```
Dadas $n$ tipos de monedas, donde la denominación del $i$-ésimo tipo de moneda es $coins[i - 1]$, y la cantidad objetivo es $amt$. **Cada tipo de moneda se puede seleccionar varias veces**. ¿Cuál es el número mínimo de monedas necesarias para alcanzar la cantidad objetivo? Si es imposible alcanzar la cantidad objetivo, devuelva $-1$. Vea el ejemplo a continuación.
```

#figure(image("es/docs/chapter_dynamic_programming/unbounded_knapsack_problem.assets/coin_change_example.png"),
  caption: [
    Datos de ejemplo para el problema del cambio de monedas
  ]
)

=== Enfoque de programación dinámica
<enfoque-de-programación-dinámica-1>
#strong[El cambio de monedas se puede ver como un caso especial del
problema de la mochila ilimitada];, compartiendo las siguientes
similitudes y diferencias.

- Los dos problemas se pueden convertir entre sí: "artículo" corresponde
  a "moneda", "peso del artículo" corresponde a "denominación de la
  moneda" y "capacidad de la mochila" corresponde a "cantidad objetivo".
- Los objetivos de optimización son opuestos: el problema de la mochila
  ilimitada tiene como objetivo maximizar el valor de los artículos,
  mientras que el problema del cambio de monedas tiene como objetivo
  minimizar el número de monedas.
- El problema de la mochila ilimitada busca soluciones que "no excedan"
  la capacidad de la mochila, mientras que el cambio de monedas busca
  soluciones que "exactamente" alcancen la cantidad objetivo.

#strong[Primer paso: Piense en la toma de decisiones de cada ronda,
defina el estado y, por lo tanto, derive la tabla $d p$]

El estado $\[ i \, a \]$ corresponde al subproblema: #strong[el número
mínimo de monedas que pueden formar la cantidad $a$ utilizando los
primeros $i$ tipos de monedas];, denotado como $d p \[ i \, a \]$.

La tabla $d p$ bidimensional es de tamaño
$\( n + 1 \) times \( a m t + 1 \)$.

#strong[Segundo paso: Identificar la subestructura óptima y derivar la
ecuación de transición de estado]

Este problema difiere del problema de la mochila ilimitada en dos
aspectos de la ecuación de transición de estado.

- Este problema busca el mínimo, por lo que el operador $max \( \)$ debe
  cambiarse a $min \( \)$.
- La optimización se centra en el número de monedas, por lo que
  simplemente se agrega $+ 1$ cuando se elige una moneda.

$ d p \[ i \, a \] = min \( d p \[ i - 1 \, a \] \, d p \[ i \, a - c o i n s \[ i - 1 \] \] + 1 \) $

#strong[Tercer paso: Definir las condiciones de contorno y el orden de
transición de estado]

Cuando la cantidad objetivo es $0$, el número mínimo de monedas
necesarias para alcanzarla es $0$, por lo que todos los
$d p \[ i \, 0 \]$ en la primera columna son $0$.

Cuando no hay monedas, #strong[es imposible alcanzar cualquier cantidad
\>0];, lo cual es una solución inválida. Para permitir que la función
$min \( \)$ en la ecuación de transición de estado reconozca y filtre
las soluciones inválidas, considere usar $+ oo$ para representarlas, es
decir, establezca todos los $d p \[ 0 \, a \]$ en la primera fila en
$+ oo$.

=== Implementación del código
<implementación-del-código-1>
La mayoría de los lenguajes de programación no proporcionan una variable
$+ oo$, solo se puede usar el valor máximo de un entero `int` como
sustituto. Esto puede provocar un desbordamiento: la operación $+ 1$ en
la ecuación de transición de estado puede desbordarse.

Por esta razón, usamos el número $a m t + 1$ para representar una
solución inválida, porque el número máximo de monedas necesarias para
alcanzar $a m t$ es como máximo $a m t$. Antes de devolver el resultado,
verifique si $d p \[ n \, a m t \]$ es igual a $a m t + 1$, y si es así,
devuelva $- 1$, lo que indica que la cantidad objetivo no se puede
alcanzar. El código es el siguiente:

```src
[file]{coin_change}-[class]{}-[func]{coin_change_dp}
```

La figura a continuación muestra el proceso de programación dinámica
para el problema del cambio de monedas, que es muy similar al problema
de la mochila ilimitada.

\=== "\<1\>"
#box(image("es/docs/chapter_dynamic_programming/unbounded_knapsack_problem.assets/coin_change_dp_step1.png"))

\=== "\<2\>"
#box(image("es/docs/chapter_dynamic_programming/unbounded_knapsack_problem.assets/coin_change_dp_step2.png"))

\=== "\<3\>"
#box(image("es/docs/chapter_dynamic_programming/unbounded_knapsack_problem.assets/coin_change_dp_step3.png"))

\=== "\<4\>"
#box(image("es/docs/chapter_dynamic_programming/unbounded_knapsack_problem.assets/coin_change_dp_step4.png"))

\=== "\<5\>"
#box(image("es/docs/chapter_dynamic_programming/unbounded_knapsack_problem.assets/coin_change_dp_step5.png"))

\=== "\<6\>"
#box(image("es/docs/chapter_dynamic_programming/unbounded_knapsack_problem.assets/coin_change_dp_step6.png"))

\=== "\<7\>"
#box(image("es/docs/chapter_dynamic_programming/unbounded_knapsack_problem.assets/coin_change_dp_step7.png"))

\=== "\<8\>"
#box(image("es/docs/chapter_dynamic_programming/unbounded_knapsack_problem.assets/coin_change_dp_step8.png"))

\=== "\<9\>"
#box(image("es/docs/chapter_dynamic_programming/unbounded_knapsack_problem.assets/coin_change_dp_step9.png"))

\=== "\<10\>"
#box(image("es/docs/chapter_dynamic_programming/unbounded_knapsack_problem.assets/coin_change_dp_step10.png"))

\=== "\<11\>"
#box(image("es/docs/chapter_dynamic_programming/unbounded_knapsack_problem.assets/coin_change_dp_step11.png"))

\=== "\<12\>"
#box(image("es/docs/chapter_dynamic_programming/unbounded_knapsack_problem.assets/coin_change_dp_step12.png"))

\=== "\<13\>"
#box(image("es/docs/chapter_dynamic_programming/unbounded_knapsack_problem.assets/coin_change_dp_step13.png"))

\=== "\<14\>"
#box(image("es/docs/chapter_dynamic_programming/unbounded_knapsack_problem.assets/coin_change_dp_step14.png"))

\=== "\<15\>"
#box(image("es/docs/chapter_dynamic_programming/unbounded_knapsack_problem.assets/coin_change_dp_step15.png"))

=== Optimización del espacio
<optimización-del-espacio-1>
La optimización del espacio para el problema del cambio de monedas se
maneja de la misma manera que para el problema de la mochila ilimitada:

```src
[file]{coin_change}-[class]{}-[func]{coin_change_dp_comp}
```

== Problema del cambio de monedas II
<problema-del-cambio-de-monedas-ii>
!!! question

```
Dadas $n$ tipos de monedas, donde la denominación del $i$-ésimo tipo de moneda es $coins[i - 1]$, y la cantidad objetivo es $amt$. Cada tipo de moneda se puede seleccionar varias veces, **pregunte cuántas combinaciones de monedas pueden formar la cantidad objetivo**. Vea el ejemplo a continuación.
```

#figure(image("es/docs/chapter_dynamic_programming/unbounded_knapsack_problem.assets/coin_change_ii_example.png"),
  caption: [
    Datos de ejemplo para el problema del cambio de monedas II
  ]
)

=== Enfoque de programación dinámica
<enfoque-de-programación-dinámica-2>
En comparación con el problema anterior, el objetivo de este problema es
determinar el número de combinaciones, por lo que el subproblema se
convierte en: #strong[el número de combinaciones que pueden formar la
cantidad $a$ utilizando los primeros $i$ tipos de monedas];. La tabla
$d p$ sigue siendo una matriz bidimensional de tamaño
$\( n + 1 \) times \( a m t + 1 \)$.

El número de combinaciones para el estado actual es la suma de las
combinaciones de no seleccionar la moneda actual y seleccionar la moneda
actual. La ecuación de transición de estado es:

$ d p \[ i \, a \] = d p \[ i - 1 \, a \] + d p \[ i \, a - c o i n s \[ i - 1 \] \] $

Cuando la cantidad objetivo es $0$, no se necesitan monedas para formar
la cantidad objetivo, por lo que todos los $d p \[ i \, 0 \]$ en la
primera columna deben inicializarse a $1$. Cuando no hay monedas, es
imposible formar cualquier cantidad \>0, por lo que todos los
$d p \[ 0 \, a \]$ en la primera fila deben establecerse en $0$.

=== Implementación del código
<implementación-del-código-2>
```src
[file]{coin_change_ii}-[class]{}-[func]{coin_change_ii_dp}
```

=== Optimización del espacio
<optimización-del-espacio-2>
El enfoque de optimización del espacio es el mismo, solo elimine la
dimensión de la moneda:

```src
[file]{coin_change_ii}-[class]{}-[func]{coin_change_ii_dp_comp}
```
= Problema de la distancia de edición
<problema-de-la-distancia-de-edición>
La distancia de edición, también conocida como distancia de Levenshtein,
se refiere al número mínimo de modificaciones necesarias para
transformar una cadena en otra, comúnmente utilizada en la recuperación
de información y el procesamiento del lenguaje natural para medir la
similitud entre dos secuencias.

!!! question

```
Dadas dos cadenas $s$ y $t$, devuelva el número mínimo de ediciones necesarias para transformar $s$ en $t$.

Puede realizar tres tipos de ediciones en una cadena: insertar un carácter, eliminar un carácter o reemplazar un carácter por cualquier otro carácter.
```

Como se muestra en la figura a continuación, transformar `kitten` en
`sitting` requiere 3 ediciones, incluyendo 2 reemplazos y 1 inserción;
transformar `hello` en `algo` requiere 3 pasos, incluyendo 2 reemplazos
y 1 eliminación.

#figure(image("es/docs/chapter_dynamic_programming/edit_distance_problem.assets/edit_distance_example.png"),
  caption: [
    Datos de ejemplo de distancia de edición
  ]
)

#strong[El problema de la distancia de edición se puede explicar
naturalmente con un modelo de árbol de decisión];. Las cadenas
corresponden a nodos de árbol, y una ronda de decisión (una operación de
edición) corresponde a una arista del árbol.

Como se muestra en la figura a continuación, con operaciones sin
restricciones, cada nodo puede derivar muchas aristas, cada una
correspondiente a una operación, lo que significa que hay muchos caminos
posibles para transformar `hello` en `algo`.

Desde la perspectiva del árbol de decisión, el objetivo de este problema
es encontrar el camino más corto entre el nodo `hello` y el nodo `algo`.

#figure(image("es/docs/chapter_dynamic_programming/edit_distance_problem.assets/edit_distance_decision_tree.png"),
  caption: [
    Problema de la distancia de edición representado basándose en el
    modelo de árbol de decisión
  ]
)

=== Enfoque de programación dinámica
<enfoque-de-programación-dinámica>
#strong[Paso uno: Piense en cada ronda de decisión, defina el estado,
obteniendo así la tabla $d p$]

Cada ronda de decisión implica realizar una operación de edición en la
cadena $s$.

Nuestro objetivo es reducir gradualmente el tamaño del problema durante
el proceso de edición, lo que nos permite construir subproblemas. Sean
las longitudes de las cadenas $s$ y $t$ $n$ y $m$, respectivamente.
Primero consideramos los caracteres finales de ambas cadenas
$s \[ n - 1 \]$ y $t \[ m - 1 \]$.

- Si $s \[ n - 1 \]$ y $t \[ m - 1 \]$ son iguales, podemos omitirlos y
  considerar directamente $s \[ n - 2 \]$ y $t \[ m - 2 \]$.
- Si $s \[ n - 1 \]$ y $t \[ m - 1 \]$ son diferentes, necesitamos
  realizar una edición en $s$ (insertar, eliminar, reemplazar) para que
  los caracteres finales de las dos cadenas coincidan, lo que nos
  permite omitirlos y considerar un problema de menor escala.

Así, cada ronda de decisión (operación de edición) en la cadena $s$
cambia los caracteres restantes en $s$ y $t$ a ser emparejados. Por lo
tanto, el estado es el carácter $i$-ésimo y $j$-ésimo actualmente
considerado en $s$ y $t$, denotado como $\[ i \, j \]$.

El estado $\[ i \, j \]$ corresponde al subproblema: #strong[El número
mínimo de ediciones necesarias para cambiar los primeros $i$ caracteres
de $s$ en los primeros $j$ caracteres de $t$];.

De esto, obtenemos una tabla $d p$ bidimensional de tamaño
$\( i + 1 \) times \( j + 1 \)$.

#strong[Paso dos: Identificar la subestructura óptima y luego derivar la
ecuación de transición de estado]

Considere el subproblema $d p \[ i \, j \]$, cuyos caracteres finales
correspondientes de las dos cadenas son $s \[ i - 1 \]$ y
$t \[ j - 1 \]$, que se pueden dividir en tres escenarios como se
muestra en la figura a continuación.

+ Agregue $t \[ j - 1 \]$ después de $s \[ i - 1 \]$, entonces el
  subproblema restante es $d p \[ i \, j - 1 \]$.
+ Elimine $s \[ i - 1 \]$, entonces el subproblema restante es
  $d p \[ i - 1 \, j \]$.
+ Reemplace $s \[ i - 1 \]$ con $t \[ j - 1 \]$, entonces el subproblema
  restante es $d p \[ i - 1 \, j - 1 \]$.

#figure(image("es/docs/chapter_dynamic_programming/edit_distance_problem.assets/edit_distance_state_transfer.png"),
  caption: [
    Transición de estado de la distancia de edición
  ]
)

Basándonos en el análisis anterior, podemos determinar la subestructura
óptima: El número mínimo de ediciones para $d p \[ i \, j \]$ es el
mínimo entre $d p \[ i \, j - 1 \]$, $d p \[ i - 1 \, j \]$ y
$d p \[ i - 1 \, j - 1 \]$, más el paso de edición $1$. La ecuación de
transición de estado correspondiente es:

$ d p \[ i \, j \] = min \( d p \[ i \, j - 1 \] \, d p \[ i - 1 \, j \] \, d p \[ i - 1 \, j - 1 \] \) + 1 $

Tenga en cuenta que, #strong[cuando $s \[ i - 1 \]$ y $t \[ j - 1 \]$
son iguales, no se requiere ninguna edición para el carácter actual];,
en cuyo caso la ecuación de transición de estado es:

$ d p \[ i \, j \] = d p \[ i - 1 \, j - 1 \] $

#strong[Paso tres: Determinar las condiciones de contorno y el orden de
las transiciones de estado]

Cuando ambas cadenas están vacías, el número de ediciones es $0$, es
decir, $d p \[ 0 \, 0 \] = 0$. Cuando $s$ está vacía pero $t$ no, el
número mínimo de ediciones es igual a la longitud de $t$, es decir, la
primera fila $d p \[ 0 \, j \] = j$. Cuando $s$ no está vacía pero $t$
sí, el número mínimo de ediciones es igual a la longitud de $s$, es
decir, la primera columna $d p \[ i \, 0 \] = i$.

Observando la ecuación de transición de estado, resolver
$d p \[ i \, j \]$ depende de las soluciones de la izquierda, arriba y
arriba a la izquierda, por lo que se puede usar un bucle doble para
recorrer toda la tabla $d p$ en el orden correcto.

=== Implementación del código
<implementación-del-código>
```src
[file]{edit_distance}-[class]{}-[func]{edit_distance_dp}
```

Como se muestra en la figura a continuación, el proceso de transición de
estado en el problema de la distancia de edición es muy similar al del
problema de la mochila, que se puede ver como rellenar una cuadrícula
bidimensional.

\=== "\<1\>"
#box(image("es/docs/chapter_dynamic_programming/edit_distance_problem.assets/edit_distance_dp_step1.png"))

\=== "\<2\>"
#box(image("es/docs/chapter_dynamic_programming/edit_distance_problem.assets/edit_distance_dp_step2.png"))

\=== "\<3\>"
#box(image("es/docs/chapter_dynamic_programming/edit_distance_problem.assets/edit_distance_dp_step3.png"))

\=== "\<4\>"
#box(image("es/docs/chapter_dynamic_programming/edit_distance_problem.assets/edit_distance_dp_step4.png"))

\=== "\<5\>"
#box(image("es/docs/chapter_dynamic_programming/edit_distance_problem.assets/edit_distance_dp_step5.png"))

\=== "\<6\>"
#box(image("es/docs/chapter_dynamic_programming/edit_distance_problem.assets/edit_distance_dp_step6.png"))

\=== "\<7\>"
#box(image("es/docs/chapter_dynamic_programming/edit_distance_problem.assets/edit_distance_dp_step7.png"))

\=== "\<8\>"
#box(image("es/docs/chapter_dynamic_programming/edit_distance_problem.assets/edit_distance_dp_step8.png"))

\=== "\<9\>"
#box(image("es/docs/chapter_dynamic_programming/edit_distance_problem.assets/edit_distance_dp_step9.png"))

\=== "\<10\>"
#box(image("es/docs/chapter_dynamic_programming/edit_distance_problem.assets/edit_distance_dp_step10.png"))

\=== "\<11\>"
#box(image("es/docs/chapter_dynamic_programming/edit_distance_problem.assets/edit_distance_dp_step11.png"))

\=== "\<12\>"
#box(image("es/docs/chapter_dynamic_programming/edit_distance_problem.assets/edit_distance_dp_step12.png"))

\=== "\<13\>"
#box(image("es/docs/chapter_dynamic_programming/edit_distance_problem.assets/edit_distance_dp_step13.png"))

\=== "\<14\>"
#box(image("es/docs/chapter_dynamic_programming/edit_distance_problem.assets/edit_distance_dp_step14.png"))

\=== "\<15\>"
#box(image("es/docs/chapter_dynamic_programming/edit_distance_problem.assets/edit_distance_dp_step15.png"))

=== Optimización del espacio
<optimización-del-espacio>
Dado que $d p \[ i \, j \]$ se deriva de las soluciones de arriba
$d p \[ i - 1 \, j \]$, a la izquierda $d p \[ i \, j - 1 \]$ y arriba a
la izquierda $d p \[ i - 1 \, j - 1 \]$, y el recorrido directo perderá
la solución de arriba a la izquierda $d p \[ i - 1 \, j - 1 \]$, y el
recorrido inverso no puede construir $d p \[ i \, j - 1 \]$ de antemano,
por lo tanto, ambos órdenes de recorrido no son factibles.

Por esta razón, podemos usar una variable `leftup` para almacenar
temporalmente la solución de arriba a la izquierda
$d p \[ i - 1 \, j - 1 \]$, por lo que solo necesitamos considerar las
soluciones de la izquierda y de arriba. Esta situación es similar al
problema de la mochila ilimitada, lo que permite un recorrido directo.
El código es el siguiente:

```src
[file]{edit_distance}-[class]{}-[func]{edit_distance_dp_comp}
```
= Resumen
<resumen>
- La programación dinámica descompone problemas y mejora la eficiencia
  computacional evitando cálculos redundantes mediante el almacenamiento
  de soluciones de subproblemas.
- Sin considerar el tiempo, todos los problemas de programación dinámica
  se pueden resolver utilizando backtracking (búsqueda por fuerza
  bruta), pero el árbol de recursión tiene muchos subproblemas
  superpuestos, lo que resulta en una eficiencia muy baja. Al introducir
  una lista de memorización, es posible almacenar soluciones de todos
  los subproblemas calculados, asegurando que los subproblemas
  superpuestos se calculen solo una vez.
- La búsqueda memorizada es una solución recursiva de arriba hacia
  abajo, mientras que la programación dinámica corresponde a un enfoque
  iterativo de abajo hacia arriba, similar a "rellenar una tabla". Dado
  que el estado actual solo depende de ciertos estados locales, podemos
  eliminar una dimensión de la tabla dp para reducir la complejidad
  espacial.
- La descomposición de subproblemas es un enfoque algorítmico universal,
  que difiere en características entre divide y vencerás, programación
  dinámica y backtracking.
- Los problemas de programación dinámica tienen tres características
  principales: subproblemas superpuestos, subestructura óptima y
  ausencia de efectos secundarios.
- Si la solución óptima del problema original se puede construir a
  partir de las soluciones óptimas de sus subproblemas, tiene una
  subestructura óptima.
- La ausencia de efectos secundarios significa que el desarrollo futuro
  de un estado depende solo del estado actual y no de todos los estados
  pasados experimentados. Muchos problemas de optimización combinatoria
  no tienen esta propiedad y no se pueden resolver rápidamente
  utilizando programación dinámica.

#strong[Problema de la mochila]

- El problema de la mochila es uno de los problemas de programación
  dinámica más típicos, con variantes que incluyen la mochila 0-1, la
  mochila ilimitada y las mochilas múltiples.
- La definición de estado de la mochila 0-1 es el valor máximo en una
  mochila de capacidad $c$ con los primeros $i$ artículos. Basándose en
  las decisiones de no incluir o incluir un artículo en la mochila, se
  pueden identificar subestructuras óptimas y construir ecuaciones de
  transición de estado. En la optimización del espacio, dado que cada
  estado depende del estado directamente superior y superior izquierdo,
  la lista debe recorrerse en orden inverso para evitar sobrescribir el
  estado superior izquierdo.
- En el problema de la mochila ilimitada, no hay límite en el número de
  cada tipo de artículo que se puede elegir, por lo que la transición de
  estado para incluir artículos difiere de la mochila 0-1. Dado que el
  estado depende del estado directamente superior y a la izquierda, la
  optimización del espacio debe implicar un recorrido hacia adelante.
- El problema del cambio de monedas es una variante del problema de la
  mochila ilimitada, que pasa de buscar el valor "máximo" a buscar el
  número "mínimo" de monedas, por lo que la ecuación de transición de
  estado debe cambiar $max \( \)$ a $min \( \)$. De buscar "no exceder"
  la capacidad de la mochila a buscar exactamente la cantidad objetivo,
  por lo tanto, use $a m t + 1$ para representar la solución inválida de
  "no poder alcanzar la cantidad objetivo".
- El problema del cambio de monedas II pasa de buscar el "número mínimo
  de monedas" a buscar el "número de combinaciones de monedas",
  cambiando la ecuación de transición de estado en consecuencia de
  $min \( \)$ al operador de suma.

#strong[Problema de la distancia de edición]

- La distancia de edición (distancia de Levenshtein) mide la similitud
  entre dos cadenas, definida como el número mínimo de pasos de edición
  necesarios para cambiar una cadena en otra, con operaciones de edición
  que incluyen agregar, eliminar o reemplazar.
- La definición de estado para el problema de la distancia de edición es
  el número mínimo de pasos de edición necesarios para cambiar los
  primeros $i$ caracteres de $s$ en los primeros $j$ caracteres de $t$.
  Cuando $s \[ i \] eq.not t \[ j \]$, hay tres decisiones: agregar,
  eliminar, reemplazar, cada una con sus subproblemas residuales
  correspondientes. A partir de esto, se pueden identificar
  subestructuras óptimas y construir ecuaciones de transición de estado.
  Cuando $s \[ i \] = t \[ j \]$, no es necesaria la edición del
  carácter actual.
- En la distancia de edición, el estado depende del estado directamente
  superior, a la izquierda y superior izquierdo. Por lo tanto, después
  de la optimización del espacio, ni el recorrido hacia adelante ni el
  inverso pueden realizar correctamente las transiciones de estado. Para
  abordar esto, usamos una variable para almacenar temporalmente el
  estado superior izquierdo, lo que lo hace equivalente a la situación
  en el problema de la mochila ilimitada, lo que permite el recorrido
  hacia adelante después de la optimización del espacio.
= Codicioso
<codicioso>
#figure(image("es/docs/assets/covers/chapter_greedy.jpg"),
  caption: [
    Codicioso
  ]
)

!!! abstract

```
Los girasoles giran hacia el sol, buscando siempre el mayor crecimiento posible para sí mismos.

La estrategia codiciosa guía hacia la mejor respuesta paso a paso a través de rondas de elecciones simples.
```
= Algoritmos codiciosos
<algoritmos-codiciosos>
El algoritmo codicioso es un algoritmo común para resolver problemas de
optimización, que fundamentalmente implica tomar la decisión
aparentemente mejor en cada etapa de toma de decisiones del problema, es
decir, tomar decisiones localmente óptimas de forma codiciosa con la
esperanza de encontrar una solución globalmente óptima. Los algoritmos
codiciosos son concisos y eficientes, y se utilizan ampliamente en
muchos problemas prácticos.

Los algoritmos codiciosos y la programación dinámica se utilizan
comúnmente para resolver problemas de optimización. Comparten algunas
similitudes, como depender de la propiedad de la subestructura óptima,
pero operan de manera diferente.

- La programación dinámica considera todas las decisiones anteriores en
  la etapa de decisión actual y utiliza soluciones de subproblemas
  pasados para construir soluciones para el subproblema actual.
- Los algoritmos codiciosos no consideran decisiones pasadas; en cambio,
  proceden con elecciones codiciosas, reduciendo continuamente el
  alcance del problema hasta que se resuelve.

Primero, entendamos el principio de funcionamiento del algoritmo
codicioso a través del ejemplo del "cambio de monedas", que se ha
introducido en el capítulo "Problema de la mochila completa". Creo que
ya está familiarizado con él.

!!! question

```
Dadas $n$ tipos de monedas, donde la denominación del $i$-ésimo tipo de moneda es $coins[i - 1]$, y la cantidad objetivo es $amt$, con cada tipo de moneda disponible indefinidamente, ¿cuál es el número mínimo de monedas necesarias para alcanzar la cantidad objetivo? Si no es posible alcanzar la cantidad objetivo, devuelva $-1$.
```

La estrategia codiciosa adoptada en este problema se muestra en la
figura a continuación. Dada la cantidad objetivo, #strong[elegimos
codiciosamente la moneda que está más cerca y no es mayor que ella];,
siguiendo repetidamente este paso hasta que se cumpla la cantidad
objetivo.

#figure(image("es/docs/chapter_greedy/greedy_algorithm.assets/coin_change_greedy_strategy.png"),
  caption: [
    Estrategia codiciosa para el cambio de monedas
  ]
)

El código de implementación es el siguiente:

```src
[file]{coin_change_greedy}-[class]{}-[func]{coin_change_greedy}
```

Podría exclamar: ¡Qué limpio! El algoritmo codicioso resuelve el
problema del cambio de monedas en unas diez líneas de código.

== Ventajas y limitaciones de los algoritmos codiciosos
<ventajas-y-limitaciones-de-los-algoritmos-codiciosos>
#strong[Los algoritmos codiciosos no solo son sencillos y fáciles de
implementar, sino que también suelen ser muy eficientes];. En el código
anterior, si la denominación de moneda más pequeña es
$min \( c o i n s \)$, la elección codiciosa se repite como máximo
$a m t \/ min \( c o i n s \)$ veces, lo que da una complejidad temporal
de $O \( a m t \/ min \( c o i n s \) \)$. Esto es un orden de magnitud
menor que la complejidad temporal de la solución de programación
dinámica, que es $O \( n times a m t \)$.

Sin embargo, #strong[para algunas combinaciones de denominaciones de
monedas, los algoritmos codiciosos no pueden encontrar la solución
óptima];. La figura a continuación proporciona dos ejemplos.

- #strong[Ejemplo positivo
  $c o i n s = \[ 1 \, 5 \, 10 \, 20 \, 50 \, 100 \]$];: En esta
  combinación de monedas, dada cualquier cantidad, el algoritmo
  codicioso puede encontrar la solución óptima.
- #strong[Ejemplo negativo $c o i n s = \[ 1 \, 20 \, 50 \]$];:
  Supongamos que $a m t = 60$, el algoritmo codicioso solo puede
  encontrar la combinación $50 + 1 times 10$, totalizando 11 monedas,
  pero la programación dinámica puede encontrar la solución óptima de
  $20 + 20 + 20$, necesitando solo 3 monedas.
- #strong[Ejemplo negativo $c o i n s = \[ 1 \, 49 \, 50 \]$];:
  Supongamos que $a m t = 98$, el algoritmo codicioso solo puede
  encontrar la combinación $50 + 1 times 48$, totalizando 49 monedas,
  pero la programación dinámica puede encontrar la solución óptima de
  $49 + 49$, necesitando solo 2 monedas.

#figure(image("es/docs/chapter_greedy/greedy_algorithm.assets/coin_change_greedy_vs_dp.png"),
  caption: [
    Ejemplos donde los algoritmos codiciosos no encuentran la solución
    óptima
  ]
)

Esto significa que para el problema del cambio de monedas, los
algoritmos codiciosos no pueden garantizar encontrar la solución
globalmente óptima, y podrían encontrar una solución muy pobre. Son más
adecuados para la programación dinámica.

Generalmente, la idoneidad de los algoritmos codiciosos se divide en dos
categorías.

+ #strong[Garantizado para encontrar la solución óptima];: En estos
  casos, los algoritmos codiciosos suelen ser la mejor opción, ya que
  tienden a ser más eficientes que el backtracking o la programación
  dinámica.
+ #strong[Puede encontrar una solución casi óptima];: Los algoritmos
  codiciosos también son aplicables aquí. Para muchos problemas
  complejos, encontrar la solución óptima global es muy desafiante, y
  poder encontrar una solución subóptima de alta eficiencia también es
  muy loable.

== Características de los algoritmos codiciosos
<características-de-los-algoritmos-codiciosos>
Entonces, ¿qué tipo de problemas son adecuados para resolver con
algoritmos codiciosos? O más bien, ¿bajo qué condiciones pueden los
algoritmos codiciosos garantizar que encontrarán la solución óptima?

En comparación con la programación dinámica, los algoritmos codiciosos
tienen condiciones de uso más estrictas, centrándose principalmente en
dos propiedades del problema.

- #strong[Propiedad de elección codiciosa];: Solo cuando la elección
  localmente óptima siempre puede conducir a una solución globalmente
  óptima, los algoritmos codiciosos pueden garantizar la obtención de la
  solución óptima.
- #strong[Subestructura óptima];: La solución óptima al problema
  original contiene las soluciones óptimas a sus subproblemas.

La subestructura óptima ya se ha introducido en el capítulo
"Programación dinámica", por lo que no se discute más aquí. Es
importante tener en cuenta que algunos problemas no tienen una
subestructura óptima obvia, pero aún así se pueden resolver utilizando
algoritmos codiciosos.

Exploramos principalmente el método para determinar la propiedad de
elección codiciosa. Aunque su descripción parece simple, #strong[en la
práctica, probar la propiedad de elección codiciosa para muchos
problemas no es fácil];.

Por ejemplo, en el problema del cambio de monedas, aunque podemos citar
fácilmente contraejemplos para refutar la propiedad de elección
codiciosa, probarla es mucho más desafiante. Si se pregunta,
#strong[¿qué condiciones debe cumplir una combinación de monedas para
poder usar un algoritmo codicioso para encontrar la solución óptima para
cualquier cantidad];? A menudo tenemos que confiar en la intuición o en
ejemplos para dar una respuesta ambigua, ya que es difícil proporcionar
una prueba matemática rigurosa.

!!! quote

```
Un artículo presenta un algoritmo con una complejidad temporal de $O(n^3)$ para determinar si una combinación de monedas puede usar un algoritmo codicioso para encontrar la solución óptima para cualquier cantidad.

Pearson, D. A polynomial-time algorithm for the change-making problem[J]. Operations Research Letters, 2005, 33(3): 231-234.
```

== Pasos para resolver problemas con algoritmos codiciosos
<pasos-para-resolver-problemas-con-algoritmos-codiciosos>
El proceso de resolución de problemas codiciosos generalmente se puede
dividir en los siguientes tres pasos.

+ #strong[Análisis del problema];: Organizar y comprender las
  características del problema, incluyendo la definición del estado, los
  objetivos de optimización y las restricciones, etc. Este paso también
  está involucrado en el backtracking y la programación dinámica.
+ #strong[Determinar la estrategia codiciosa];: Determinar cómo tomar
  una decisión codiciosa en cada paso. Esta estrategia puede reducir la
  escala del problema en cada paso y finalmente resolver todo el
  problema.
+ #strong[Prueba de corrección];: Generalmente es necesario probar que
  el problema tiene tanto una propiedad de elección codiciosa como una
  subestructura óptima. Este paso puede requerir pruebas matemáticas,
  como inducción o reducción al absurdo.

Determinar la estrategia codiciosa es el paso central para resolver el
problema, pero puede que no sea fácil de implementar, principalmente por
las siguientes razones.

- #strong[Las estrategias codiciosas varían mucho entre diferentes
  problemas];. Para muchos problemas, la estrategia codiciosa es
  bastante sencilla, y podemos idearla a través de un pensamiento y
  intentos generales. Sin embargo, para algunos problemas complejos, la
  estrategia codiciosa puede ser muy elusiva, lo que es una verdadera
  prueba de la experiencia individual en la resolución de problemas y la
  capacidad algorítmica.
- #strong[Algunas estrategias codiciosas son bastante engañosas];.
  Cuando diseñamos con confianza una estrategia codiciosa, escribimos el
  código y lo enviamos a prueba, es muy posible que algunos casos de
  prueba no pasen. Esto se debe a que la estrategia codiciosa diseñada
  es solo "parcialmente correcta", como se describió anteriormente con
  el ejemplo del cambio de monedas.

Para garantizar la precisión, debemos proporcionar pruebas matemáticas
rigurosas para la estrategia codiciosa, #strong[generalmente
involucrando reducción al absurdo o inducción matemática];.

Sin embargo, probar la corrección puede no ser una tarea fácil. Si
estamos perdidos, generalmente optamos por depurar el código basándonos
en casos de prueba, modificando y verificando la estrategia codiciosa
paso a paso.

== Problemas típicos resueltos por algoritmos codiciosos
<problemas-típicos-resueltos-por-algoritmos-codiciosos>
Los algoritmos codiciosos se aplican a menudo a problemas de
optimización que satisfacen las propiedades de elección codiciosa y
subestructura óptima. A continuación se presentan algunos problemas
típicos de algoritmos codiciosos.

- #strong[Problema del cambio de monedas];: En algunas combinaciones de
  monedas, el algoritmo codicioso siempre proporciona la solución
  óptima.
- #strong[Problema de programación de intervalos];: Suponga que tiene
  varias tareas, cada una de las cuales tiene lugar durante un período
  de tiempo. Su objetivo es completar tantas tareas como sea posible. Si
  siempre elige la tarea que termina antes, entonces el algoritmo
  codicioso puede lograr la solución óptima.
- #strong[Problema de la mochila fraccionaria];: Dado un conjunto de
  artículos y una capacidad de carga, su objetivo es seleccionar un
  conjunto de artículos de tal manera que el peso total no exceda la
  capacidad de carga y el valor total se maximice. Si siempre elige el
  artículo con la mayor relación valor-peso (valor / peso), el algoritmo
  codicioso puede lograr la solución óptima en algunos casos.
- #strong[Problema de comercio de acciones];: Dado un conjunto de
  precios históricos de acciones, puede realizar múltiples operaciones,
  pero no puede volver a comprar hasta después de haber vendido si ya
  posee acciones. El objetivo es lograr el máximo beneficio.
- #strong[Codificación de Huffman];: La codificación de Huffman es un
  algoritmo codicioso utilizado para la compresión de datos sin
  pérdidas. Al construir un árbol de Huffman, siempre fusiona los dos
  nodos con la frecuencia más baja, lo que da como resultado un árbol de
  Huffman con la longitud de ruta ponderada mínima (longitud de
  codificación).
- #strong[Algoritmo de Dijkstra];: Es un algoritmo codicioso para
  resolver el problema del camino más corto desde un vértice fuente dado
  a todos los demás vértices.

\`\`\`
= Problema de la mochila fraccionaria
<problema-de-la-mochila-fraccionaria>
!!! question

```
Dados $n$ artículos, el peso del $i$-ésimo artículo es $wgt[i-1]$ y su valor es $val[i-1]$, y una mochila con una capacidad de $cap$. Cada artículo se puede elegir solo una vez, **pero se puede seleccionar una parte del artículo, con su valor calculado en función de la proporción del peso elegido**, ¿cuál es el valor máximo de los artículos en la mochila bajo la capacidad limitada? Un ejemplo se muestra en la figura a continuación.
```

#figure(image("es/docs/chapter_greedy/fractional_knapsack_problem.assets/fractional_knapsack_example.png"),
  caption: [
    Datos de ejemplo del problema de la mochila fraccionaria
  ]
)

El problema de la mochila fraccionaria es muy similar en general al
problema de la mochila 0-1, involucrando el artículo actual $i$ y la
capacidad $c$, con el objetivo de maximizar el valor dentro de la
capacidad limitada de la mochila.

La diferencia es que, en este problema, solo se puede elegir una parte
de un artículo. Como se muestra en la figura a continuación,
#strong[podemos dividir arbitrariamente los artículos y calcular el
valor correspondiente en función de la proporción del peso];.

+ Para el artículo $i$, su valor por unidad de peso es
  $v a l \[ i - 1 \] \/ w g t \[ i - 1 \]$, denominado valor unitario.
+ Supongamos que ponemos una parte del artículo $i$ con peso $w$ en la
  mochila, entonces el valor agregado a la mochila es
  $w times v a l \[ i - 1 \] \/ w g t \[ i - 1 \]$.

#figure(image("es/docs/chapter_greedy/fractional_knapsack_problem.assets/fractional_knapsack_unit_value.png"),
  caption: [
    Valor por unidad de peso del artículo
  ]
)

=== Determinación de la estrategia codiciosa
<determinación-de-la-estrategia-codiciosa>
Maximizar el valor total de los artículos en la mochila
#strong[esencialmente significa maximizar el valor por unidad de peso];.
De esto, se puede deducir la estrategia codiciosa que se muestra en la
figura a continuación.

+ Ordene los artículos por su valor unitario de mayor a menor.
+ Itere sobre todos los artículos, #strong[eligiendo codiciosamente el
  artículo con el valor unitario más alto en cada ronda];.
+ Si la capacidad restante de la mochila es insuficiente, use parte del
  artículo actual para llenar la mochila.

#figure(image("es/docs/chapter_greedy/fractional_knapsack_problem.assets/fractional_knapsack_greedy_strategy.png"),
  caption: [
    Estrategia codiciosa del problema de la mochila fraccionaria
  ]
)

=== Implementación del código
<implementación-del-código>
Hemos creado una clase `Item` para ordenar los artículos por su valor
unitario. Recorremos y tomamos decisiones codiciosas hasta que la
mochila esté llena, luego salimos y devolvemos la solución:

```src
[file]{fractional_knapsack}-[class]{}-[func]{fractional_knapsack}
```

Además de la ordenación, en el peor de los casos, es necesario recorrer
toda la lista de artículos, #strong[por lo que la complejidad temporal
es $O \( n \)$];, donde $n$ es el número de artículos.

Dado que se inicializa una lista de objetos `Item`, #strong[la
complejidad espacial es $O \( n \)$];.

=== Prueba de corrección
<prueba-de-corrección>
Usando la prueba por contradicción. Supongamos que el artículo $x$ tiene
el valor unitario más alto, y algún algoritmo produce un valor máximo
`res`, pero la solución no incluye el artículo $x$.

Ahora retire una unidad de peso de cualquier artículo de la mochila y
reemplácela con una unidad de peso del artículo $x$. Dado que el valor
unitario del artículo $x$ es el más alto, el valor total después del
reemplazo será definitivamente mayor que `res`. #strong[Esto contradice
la suposición de que `res` es la solución óptima, lo que demuestra que
la solución óptima debe incluir el artículo $x$];.

Para otros artículos en esta solución, también podemos construir la
contradicción anterior. En general, #strong[los artículos con mayor
valor unitario son siempre mejores opciones];, lo que demuestra que la
estrategia codiciosa es efectiva.

Como se muestra en la figura a continuación, si el peso del artículo y
el valor unitario se ven como los ejes horizontal y vertical de un
gráfico bidimensional respectivamente, el problema de la mochila
fraccionaria se puede transformar en "buscar el área más grande
encerrada dentro de un rango de eje horizontal limitado". Esta analogía
puede ayudarnos a comprender la efectividad de la estrategia codiciosa
desde una perspectiva geométrica.

#figure(image("es/docs/chapter_greedy/fractional_knapsack_problem.assets/fractional_knapsack_area_chart.png"),
  caption: [
    Representación geométrica del problema de la mochila fraccionaria
  ]
)
= Problema de la capacidad máxima
<problema-de-la-capacidad-máxima>
!!! question

```
Introduzca un arreglo $ht$, donde cada elemento representa la altura de una partición vertical. Dos particiones cualesquiera en el arreglo, junto con el espacio entre ellas, pueden formar un contenedor.

La capacidad del contenedor es el producto de la altura y el ancho (área), donde la altura está determinada por la partición más corta, y el ancho es la diferencia en los índices del arreglo entre las dos particiones.

Seleccione dos particiones en el arreglo que maximicen la capacidad del contenedor y devuelva esta capacidad máxima. Un ejemplo se muestra en la figura a continuación.
```

#figure(image("es/docs/chapter_greedy/max_capacity_problem.assets/max_capacity_example.png"),
  caption: [
    Datos de ejemplo para el problema de la capacidad máxima
  ]
)

El contenedor está formado por dos particiones cualesquiera, #strong[por
lo tanto, el estado de este problema se representa mediante los índices
de las dos particiones, denotados como $\[ i \, j \]$];.

Según el enunciado del problema, la capacidad es igual al producto de la
altura y el ancho, donde la altura está determinada por la partición más
corta, y el ancho es la diferencia en los índices del arreglo entre las
dos particiones. La fórmula para la capacidad $c a p \[ i \, j \]$ es:

$ c a p \[ i \, j \] = min \( h t \[ i \] \, h t \[ j \] \) times \( j - i \) $

Suponiendo que la longitud del arreglo es $n$, el número de
combinaciones de dos particiones (número total de estados) es
$C_n^2 = frac(n \( n - 1 \), 2)$. El enfoque más sencillo es
#strong[enumerar todos los estados posibles];, lo que resulta en una
complejidad temporal de $O \( n^2 \)$.

=== Determinación de una estrategia codiciosa
<determinación-de-una-estrategia-codiciosa>
Existe una solución más eficiente para este problema. Como se muestra en
la figura a continuación, seleccionamos un estado $\[ i \, j \]$ donde
los índices $i < j$ y la altura $h t \[ i \] < h t \[ j \]$, lo que
significa que $i$ es la partición más corta y $j$ es la más alta.

#figure(image("es/docs/chapter_greedy/max_capacity_problem.assets/max_capacity_initial_state.png"),
  caption: [
    Estado inicial
  ]
)

Como se muestra en la figura a continuación, #strong[si movemos la
partición más alta $j$ más cerca de la partición más corta $i$, la
capacidad definitivamente disminuirá];.

Esto se debe a que al mover la partición más alta $j$, el ancho $j - i$
definitivamente disminuye; y dado que la altura está determinada por la
partición más corta, la altura solo puede permanecer igual (si $i$ sigue
siendo la partición más corta) o disminuir (si la $j$ movida se
convierte en la partición más corta).

#figure(image("es/docs/chapter_greedy/max_capacity_problem.assets/max_capacity_moving_long_board.png"),
  caption: [
    Estado después de mover la partición más alta hacia adentro
  ]
)

Por el contrario, #strong[solo podemos aumentar la capacidad moviendo la
partición más corta $i$ hacia adentro];. Aunque el ancho definitivamente
disminuirá, #strong[la altura puede aumentar] (si la partición más corta
$i$ movida se vuelve más alta). Por ejemplo, en la figura a
continuación, el área aumenta después de mover la partición más corta.

#figure(image("es/docs/chapter_greedy/max_capacity_problem.assets/max_capacity_moving_short_board.png"),
  caption: [
    Estado después de mover la partición más corta hacia adentro
  ]
)

Esto nos lleva a la estrategia codiciosa para este problema: inicializar
dos punteros en los extremos del contenedor, y en cada ronda, mover el
puntero correspondiente a la partición más corta hacia adentro hasta que
los dos punteros se encuentren.

La figura a continuación ilustra la ejecución de la estrategia
codiciosa.

+ Inicialmente, los punteros $i$ y $j$ se colocan en los extremos del
  arreglo.
+ Calcule la capacidad del estado actual $c a p \[ i \, j \]$ y
  actualice la capacidad máxima.
+ Compare las alturas de las particiones $i$ y $j$, y mueva el puntero
  de la partición más corta hacia adentro un paso.
+ Repita los pasos `2.` y `3.` hasta que $i$ y $j$ se encuentren.

\=== "\<1\>"
#box(image("es/docs/chapter_greedy/max_capacity_problem.assets/max_capacity_greedy_step1.png"))

\=== "\<2\>"
#box(image("es/docs/chapter_greedy/max_capacity_problem.assets/max_capacity_greedy_step2.png"))

\=== "\<3\>"
#box(image("es/docs/chapter_greedy/max_capacity_problem.assets/max_capacity_greedy_step3.png"))

\=== "\<4\>"
#box(image("es/docs/chapter_greedy/max_capacity_problem.assets/max_capacity_greedy_step4.png"))

\=== "\<5\>"
#box(image("es/docs/chapter_greedy/max_capacity_problem.assets/max_capacity_greedy_step5.png"))

\=== "\<6\>"
#box(image("es/docs/chapter_greedy/max_capacity_problem.assets/max_capacity_greedy_step6.png"))

\=== "\<7\>"
#box(image("es/docs/chapter_greedy/max_capacity_problem.assets/max_capacity_greedy_step7.png"))

\=== "\<8\>"
#box(image("es/docs/chapter_greedy/max_capacity_problem.assets/max_capacity_greedy_step8.png"))

\=== "\<9\>"
#box(image("es/docs/chapter_greedy/max_capacity_problem.assets/max_capacity_greedy_step9.png"))

=== Implementación
<implementación>
El código se ejecuta en un bucle de $n$ veces como máximo, #strong[por
lo tanto, la complejidad temporal es $O \( n \)$];.

Las variables $i$, $j$ y $r e s$ utilizan una cantidad constante de
espacio extra, #strong[por lo tanto, la complejidad espacial es
$O \( 1 \)$];.

```src
[file]{max_capacity}-[class]{}-[func]{max_capacity}
```

=== Prueba de corrección
<prueba-de-corrección>
La razón por la que el método codicioso es más rápido que la enumeración
es que cada ronda de selección codiciosa "salta" algunos estados.

Por ejemplo, bajo el estado $c a p \[ i \, j \]$ donde $i$ es la
partición más corta y $j$ es la partición más alta, mover codiciosamente
la partición más corta $i$ hacia adentro un paso conduce a los estados
"saltados" que se muestran en la figura a continuación. #strong[Esto
significa que las capacidades de estos estados no se pueden verificar
más tarde];.

$ c a p \[ i \, i + 1 \] \, c a p \[ i \, i + 2 \] \, dots.h \, c a p \[ i \, j - 2 \] \, c a p \[ i \, j - 1 \] $

#figure(image("es/docs/chapter_greedy/max_capacity_problem.assets/max_capacity_skipped_states.png"),
  caption: [
    Estados saltados al mover la partición más corta
  ]
)

Se observa que #strong[estos estados saltados son en realidad todos los
estados donde la partición más alta $j$ se mueve hacia adentro];. Ya
hemos demostrado que mover la partición más alta hacia adentro
definitivamente disminuirá la capacidad. Por lo tanto, los estados
saltados no pueden ser la solución óptima, #strong[y saltarlos no
conduce a perder la solución óptima];.

El análisis muestra que la operación de mover la partición más corta es
"segura", y la estrategia codiciosa es efectiva.
= Problema del corte de producto máximo
<problema-del-corte-de-producto-máximo>
!!! question

```
Dado un entero positivo $n$, divídalo en al menos dos enteros positivos que sumen $n$, y encuentre el producto máximo de estos enteros, como se ilustra en la figura a continuación.
```

#figure(image("es/docs/chapter_greedy/max_product_cutting_problem.assets/max_product_cutting_definition.png"),
  caption: [
    Definición del problema del corte de producto máximo
  ]
)

Supongamos que dividimos $n$ en $m$ factores enteros, donde el $i$-ésimo
factor se denota como $n_i$, es decir,

$ n = sum_(i = 1)^m n_i $

El objetivo de este problema es encontrar el producto máximo de todos
los factores enteros, a saber,

$ max \( product_(i = 1)^m n_i \) $

Necesitamos considerar: ¿Qué tan grande debe ser el número de divisiones
$m$, y qué debe ser cada $n_i$?

=== Determinación de la estrategia codiciosa
<determinación-de-la-estrategia-codiciosa>
La experiencia sugiere que el producto de dos enteros suele ser mayor
que su suma. Supongamos que dividimos un factor de $2$ de $n$, entonces
su producto es $2 \( n - 2 \)$. Compare este producto con $n$:

$ 2 \( n - 2 \) & gt.eq n\
2 n - n - 4 & gt.eq 0\
n & gt.eq 4 $

Como se muestra en la figura a continuación, cuando $n gt.eq 4$, dividir
un $2$ aumenta el producto, #strong[lo que indica que los enteros
mayores o iguales a $4$ deben dividirse];.

#strong[Estrategia codiciosa uno];: Si el esquema de división incluye
factores $gt.eq 4$, deben dividirse aún más. La división final solo debe
incluir factores $1$, $2$ y $3$.

#figure(image("es/docs/chapter_greedy/max_product_cutting_problem.assets/max_product_cutting_greedy_infer1.png"),
  caption: [
    Aumento del producto debido a la división
  ]
)

A continuación, consideremos qué factor es óptimo. Entre los factores
$1$, $2$ y $3$, claramente $1$ es el peor, ya que
$1 times \( n - 1 \) < n$ siempre se cumple, lo que significa que
dividir un $1$ en realidad disminuye el producto.

Como se muestra en la figura a continuación, cuando $n = 6$,
$3 times 3 > 2 times 2 times 2$. #strong[Esto significa que dividir un
$3$ es mejor que dividir un $2$];.

#strong[Estrategia codiciosa dos];: En el esquema de división, debe
haber como máximo dos $2$. Porque tres $2$ siempre se pueden reemplazar
por dos $3$ para obtener un producto mayor.

#figure(image("es/docs/chapter_greedy/max_product_cutting_problem.assets/max_product_cutting_greedy_infer2.png"),
  caption: [
    Factores de división óptimos
  ]
)

De lo anterior, se pueden derivar las siguientes estrategias codiciosas.

+ Introduzca el entero $n$, divida continuamente el factor $3$ hasta que
  el resto sea $0$, $1$ o $2$.
+ Cuando el resto es $0$, significa que $n$ es un múltiplo de $3$, por
  lo que no se realiza ninguna acción adicional.
+ Cuando el resto es $2$, no continúe dividiendo, manténgalo.
+ Cuando el resto es $1$, dado que $2 times 2 > 1 times 3$, el último
  $3$ debe reemplazarse por $2$.

=== Implementación del código
<implementación-del-código>
Como se muestra en la figura a continuación, no necesitamos usar bucles
para dividir el entero, sino que podemos usar la operación de división
entera para obtener el número de $3$, $a$, y la operación de módulo para
obtener el resto, $b$, por lo tanto:

$ n = 3 a + b $

Tenga en cuenta que, para el caso límite donde $n lt.eq 3$, se debe
dividir un $1$, con un producto de $1 times \( n - 1 \)$.

```src
[file]{max_product_cutting}-[class]{}-[func]{max_product_cutting}
```

#figure(image("es/docs/chapter_greedy/max_product_cutting_problem.assets/max_product_cutting_greedy_calculation.png"),
  caption: [
    Método de cálculo del producto máximo después del corte
  ]
)

#strong[La complejidad temporal depende de la implementación de la
operación de potencia en el lenguaje de programación];. Para Python, las
funciones de cálculo de potencia comúnmente utilizadas son de tres
tipos:

- Tanto el operador `**` como la función `pow()` tienen una complejidad
  temporal de \$O(\\log\\unicode{x2061} a)\$.
- La función `math.pow()` llama internamente a la función `pow()` de la
  biblioteca del lenguaje C, realizando una exponenciación de punto
  flotante, con una complejidad temporal de $O \( 1 \)$.

Las variables $a$ y $b$ utilizan un espacio extra de tamaño constante,
#strong[por lo tanto, la complejidad espacial es $O \( 1 \)$];.

=== Prueba de corrección
<prueba-de-corrección>
Usando la prueba por contradicción, solo analice los casos donde
$n gt.eq 3$.

+ #strong[Todos los factores $lt.eq 3$];: Supongamos que el esquema de
  división óptimo incluye un factor $x gt.eq 4$, entonces
  definitivamente se puede dividir aún más en $2 \( x - 2 \)$,
  obteniendo un producto mayor. Esto contradice la suposición.
+ #strong[El esquema de división no contiene $1$];: Supongamos que el
  esquema de división óptimo incluye un factor de $1$, entonces
  definitivamente se puede fusionar en otro factor para obtener un
  producto mayor. Esto contradice la suposición.
+ #strong[El esquema de división contiene como máximo dos $2$];:
  Supongamos que el esquema de división óptimo incluye tres $2$,
  entonces definitivamente se pueden reemplazar por dos $3$, logrando un
  producto mayor. Esto contradice la suposición.

\`\`\`
= Resumen
<resumen>
- Los algoritmos codiciosos se utilizan a menudo para resolver problemas
  de optimización, donde el principio es tomar decisiones localmente
  óptimas en cada etapa de decisión para lograr una solución globalmente
  óptima.
- Los algoritmos codiciosos toman iterativamente una decisión codiciosa
  tras otra, transformando el problema en un subproblema más pequeño con
  cada ronda, hasta que el problema se resuelve.
- Los algoritmos codiciosos no solo son fáciles de implementar, sino que
  también tienen una alta eficiencia en la resolución de problemas. En
  comparación con la programación dinámica, los algoritmos codiciosos
  generalmente tienen una complejidad temporal menor.
- En el problema del cambio de monedas, los algoritmos codiciosos pueden
  garantizar la solución óptima para ciertas combinaciones de monedas;
  para otras, sin embargo, el algoritmo codicioso podría encontrar una
  solución muy pobre.
- Los problemas adecuados para soluciones de algoritmos codiciosos
  poseen dos propiedades principales: propiedad de elección codiciosa y
  subestructura óptima. La propiedad de elección codiciosa representa la
  efectividad de la estrategia codiciosa.
- Para algunos problemas complejos, probar la propiedad de elección
  codiciosa no es sencillo. Por el contrario, probar la invalidez suele
  ser más fácil, como con el problema del cambio de monedas.
- La resolución de problemas codiciosos consta principalmente de tres
  pasos: análisis del problema, determinación de la estrategia codiciosa
  y prueba de la corrección. Entre ellos, la determinación de la
  estrategia codiciosa es el paso clave, mientras que la prueba de la
  corrección a menudo plantea el desafío.
- El problema de la mochila fraccionaria se basa en el problema de la
  mochila 0-1 al permitir la selección de una parte de los artículos,
  por lo que se puede resolver utilizando un algoritmo codicioso. La
  corrección de la estrategia codiciosa se puede probar por
  contradicción.
- El problema de la capacidad máxima se puede resolver utilizando el
  método exhaustivo, con una complejidad temporal de $O \( n^2 \)$. Al
  diseñar una estrategia codiciosa, cada ronda mueve la tabla más corta
  hacia adentro, optimizando la complejidad temporal a $O \( n \)$.
- En el problema del producto máximo después del corte, deducimos dos
  estrategias codiciosas: los enteros $gt.eq 4$ deben seguir cortándose,
  siendo el factor de corte óptimo $3$. El código incluye operaciones de
  potencia, y la complejidad temporal depende del método de
  implementación de las operaciones de potencia, siendo generalmente
  $O \( 1 \)$ o $O \( log n \)$.
= Apéndice
<apéndice>
#figure(image("es/docs/assets/covers/chapter_appendix.jpg"),
  caption: [
    Apéndice
  ]
)
= Instalación
<instalación>
== Instalar IDE
<instalar-ide>
Recomendamos usar el ligero y de código abierto VS Code como su Entorno
de Desarrollo Integrado (IDE) local. Visite el
#link("https://code.visualstudio.com/")[sitio web oficial de VS Code] y
elija la versión de VS Code adecuada para su sistema operativo para
descargar e instalar.

#figure(image("es/docs/chapter_appendix/installation.assets/vscode_installation.png"),
  caption: [
    Descargar VS Code desde el sitio web oficial
  ]
)

VS Code tiene un potente ecosistema de extensiones, que soporta la
ejecución y depuración de la mayoría de los lenguajes de programación.
Por ejemplo, después de instalar el "Python Extension Pack", puede
depurar código Python. Los pasos de instalación se muestran en la figura
a continuación.

#figure(image("es/docs/chapter_appendix/installation.assets/vscode_extension_installation.png"),
  caption: [
    Instalar el paquete de extensiones de VS Code
  ]
)

== Instalar entornos de lenguaje
<instalar-entornos-de-lenguaje>
=== Entorno Python
<entorno-python>
+ Descargue e instale
  #link("https://docs.conda.io/en/latest/miniconda.html")[Miniconda3];,
  que requiere Python 3.10 o posterior.
+ En el marketplace de extensiones de VS Code, busque `python` e instale
  el Python Extension Pack.
+ (Opcional) Ingrese `pip install black` en la línea de comandos para
  instalar la herramienta de formato de código.

=== Entorno C/C++
<entorno-cc>
+ Los sistemas Windows necesitan instalar
  #link("https://sourceforge.net/projects/mingw-w64/files/")[MinGW]
  (#link("https://blog.csdn.net/qq_33698226/article/details/129031241")[Tutorial de configuración];);
  MacOS viene con Clang, por lo que no es necesaria la instalación.
+ En el marketplace de extensiones de VS Code, busque `c++` e instale el
  C/C++ Extension Pack.
+ (Opcional) Abra la página de Configuración, busque la opción de
  formato de código `Clang_format_fallback Style` y configúrela en
  `{ BasedOnStyle: Microsoft, BreakBeforeBraces: Attach }`.

=== Entorno Java
<entorno-java>
+ Descargue e instale #link("https://jdk.java.net/18/")[OpenJDK] (la
  versión debe ser \> JDK 9).
+ En el marketplace de extensiones de VS Code, busque `java` e instale
  el Extension Pack for Java.

=== Entorno C
<entorno-c>
+ Descargue e instale
  #link("https://dotnet.microsoft.com/en-us/download")[.Net 8.0];.
+ En el marketplace de extensiones de VS Code, busque `C# Dev Kit` e
  instale el C\# Dev Kit
  (#link("https://code.visualstudio.com/docs/csharp/get-started")[Tutorial de configuración];).
+ También puede usar Visual Studio
  (#link("https://learn.microsoft.com/zh-cn/visualstudio/install/install-visual-studio?view=vs-2022")[Tutorial de instalación];).

=== Entorno Go
<entorno-go>
+ Descargue e instale #link("https://go.dev/dl/")[go];.
+ En el marketplace de extensiones de VS Code, busque `go` e instale Go.
+ Presione `Ctrl + Shift + P` para abrir la barra de comandos, ingrese
  go, elija `Go: Install/Update Tools`, seleccione todo e instale.

=== Entorno Swift
<entorno-swift>
+ Descargue e instale #link("https://www.swift.org/download/")[Swift];.
+ En el marketplace de extensiones de VS Code, busque `swift` e instale
  #link("https://marketplace.visualstudio.com/items?itemName=sswg.swift-lang")[Swift for Visual Studio Code];.

=== Entorno JavaScript
<entorno-javascript>
+ Descargue e instale #link("https://nodejs.org/en/")[Node.js];.
+ (Opcional) En el marketplace de extensiones de VS Code, busque
  `Prettier` e instale la herramienta de formato de código.

=== Entorno TypeScript
<entorno-typescript>
+ Siga los mismos pasos de instalación que el entorno JavaScript.
+ Instale
  #link("https://github.com/privatenumber/tsx?tab=readme-ov-file#global-installation")[TypeScript Execute (tsx)];.
+ En el marketplace de extensiones de VS Code, busque `typescript` e
  instale
  #link("https://marketplace.visualstudio.com/items?itemName=yoavbls.pretty-ts-errors")[Pretty TypeScript Errors];.

=== Entorno Dart
<entorno-dart>
+ Descargue e instale #link("https://dart.dev/get-dart")[Dart];.
+ En el marketplace de extensiones de VS Code, busque `dart` e instale
  #link("https://marketplace.visualstudio.com/items?itemName=Dart-Code.dart-code")[Dart];.

=== Entorno Rust
<entorno-rust>
+ Descargue e instale
  #link("https://www.rust-lang.org/tools/install")[Rust];.
+ En el marketplace de extensiones de VS Code, busque `rust` e instale
  #link("https://marketplace.visualstudio.com/items?itemName=rust-lang.rust-analyzer")[rust-analyzer];.
= Contribución
<contribución>
Debido a las limitaciones del autor, algunas omisiones y errores son
inevitables en este libro. Si encuentra errores de ortografía, enlaces
rotos, contenido faltante, explicaciones poco claras o estructuras de
texto poco claras, por favor, ayúdenme a corregir el texto para
proporcionar a los lectores un mejor recurso de aprendizaje.

Los ID de GitHub de todos los
#link("https://github.com/krahets/hello-algo/graphs/contributors")[colaboradores]
se mostrarán en el repositorio, la web y las versiones en PDF de la
página de inicio de este libro para agradecerles sus contribuciones
desinteresadas a la comunidad de código abierto.

!!! success "El encanto del código abierto"

```
El intervalo entre dos impresiones de un libro en papel suele ser largo, lo que hace que las actualizaciones de contenido sean muy inconvenientes.

En este libro de código abierto, sin embargo, el ciclo de actualización de contenido se acorta a solo unos pocos días o incluso horas.
```

=== Ajuste fino del contenido
<ajuste-fino-del-contenido>
Como se muestra en la figura a continuación, hay un "icono de edición"
en la esquina superior derecha de cada página. Puede seguir estos pasos
para modificar texto o código.

+ Haga clic en el "icono de edición". Si se le pide que "bifurque este
  repositorio", acepte hacerlo.
+ Modifique el contenido del archivo fuente Markdown, verifique la
  precisión del contenido e intente mantener el formato consistente.
+ Rellene la descripción de la modificación en la parte inferior de la
  página, luego haga clic en el botón "Proponer cambio de archivo".
  Después de que la página se redirija, haga clic en el botón "Crear
  solicitud de extracción" para iniciar la solicitud de extracción.

#figure(image("es/docs/chapter_appendix/contribution.assets/edit_markdown.png"),
  caption: [
    Botón de edición de página
  ]
)

Las figuras no se pueden modificar directamente y requieren la creación
de un nuevo #link("https://github.com/krahets/hello-algo/issues")[Issue]
o un comentario para describir el problema. Volveremos a dibujar y
reemplazar las figuras lo antes posible.

=== Creación de contenido
<creación-de-contenido>
Si está interesado en participar en este proyecto de código abierto,
incluida la traducción de código a otros lenguajes de programación o la
expansión del contenido de los artículos, entonces debe implementarse el
siguiente flujo de trabajo de solicitud de extracción.

+ Inicie sesión en GitHub y bifurque el
  #link("https://github.com/krahets/hello-algo")[repositorio de código]
  de este libro a su cuenta personal.
+ Vaya a la página web de su repositorio bifurcado y use el comando
  `git clone` para clonar el repositorio en su máquina local.
+ Cree contenido localmente y realice pruebas completas para verificar
  la corrección del código.
+ Confirme los cambios realizados localmente, luego envíelos al
  repositorio remoto.
+ Actualice la página web del repositorio y haga clic en el botón "Crear
  solicitud de extracción" para iniciar la solicitud de extracción.

=== Despliegue de Docker
<despliegue-de-docker>
En el directorio raíz `hello-algo`, ejecute el siguiente script de
Docker para acceder al proyecto en `http://localhost:8000`:

```shell
docker-compose up -d
```

Use el siguiente comando para eliminar el despliegue:

```shell
docker-compose down
```
= Terminología
<terminología>
#figure(
  align(center)[#table(
    columns: (50%, 50%),
    align: (left,left,),
    table.header([Inglés], [Español],),
    table.hline(),
    [Abstract Data Type (ADT)], [Tipo de Dato Abstracto (TDA)],
    [Adaptive-sort], [Ordenamiento adaptativo],
    [Adjacency List], [Lista de adyacencia],
    [Adjacency Matrix], [Matriz de adyacencia],
    [Adjacent], [Adyacente],
    [Algorithm], [Algoritmo],
    [Array], [Arreglo],
    [Ascending Order], [Orden ascendente],
    [ASCII], [ASCII],
    [Asymptotic Complexity Analysis], [Análisis de complejidad
    asintótica],
    [Asymptotic Upper Bound], [Límite superior asintótico],
    [Average-case Time Complexity], [Complejidad temporal en el caso
    promedio],
    [AVL Tree], [Árbol AVL],
    [Backtracking], [Backtracking],
    [Balanced Binary Tree], [Árbol binario equilibrado],
    [Base Case], [Caso base],
    [Best-case Time Complexity], [Complejidad temporal en el mejor de
    los casos],
    [Big-O Notation], [Notación de O grande],
    [Binary Search], [Búsqueda binaria],
    [Binary Search Tree], [Árbol de búsqueda binaria],
    [Binary Tree], [Árbol binario],
    [Breadth-First Search (BFS)], [Búsqueda en amplitud (BFS)],
    [Brute-force], [Fuerza bruta],
    [Bucket Sort], [Ordenamiento por cubetas],
    [Cache], [Caché],
    [Cache Hit Rate], [Tasa de aciertos de caché],
    [Cache Line], [Línea de caché],
    [Cache Miss], [Fallo de caché],
    [Chaining], [Encadenamiento],
    [Child], [Hijo],
    [Circular Linked List], [Lista enlazada circular],
    [Circular Queue], [Cola circular],
    [Complete Binary Tree], [Árbol binario completo],
    [Complexity Analysis], [Análisis de complejidad],
    [Connected Component], [Componente conexo],
    [Connected Graph], [Grafo conexo],
    [Constant], [Constante],
    [Constructor], [Constructor],
    [Container], [Contenedor],
    [Counting Sort], [Ordenamiento por conteo],
    [Cycle], [Ciclo],
    [Data], [Dato],
    [Data Structure], [Estructura de datos],
    [Data Type], [Tipo de dato],
    [De-queue], [Desencolar],
    [Decision Tree], [Árbol de decisión],
    [Descending Order], [Orden descendente],
    [Depth], [Profundidad],
    [Depth-First Search (DFS)], [Búsqueda en profundidad (DFS)],
    [Dictionary], [Diccionario],
    [Directed Graph], [Grafo dirigido],
    [Disconnected Graph], [Grafo desconectado],
    [Divide and Conquer], [Divide y vencerás],
    [Double-ended Queue (Deque)], [Cola de doble extremo (Deque)],
    [Doubly Linked List], [Lista doblemente enlazada],
    [Dynamic Array], [Arreglo dinámico],
    [Dynamic Programming], [Programación dinámica],
    [Edge], [Arista],
    [En-queue], [Encolar],
    [Factorial], [Factorial],
    [Fibonacci Sequence], [Sucesión de Fibonacci],
    [First-In-First-Out (FIFO)], [Primero en entrar, primero en salir
    (FIFO)],
    [Floating Point], [Punto flotante],
    [Full Binary Tree], [Árbol binario lleno],
    [Function], [Función],
    [Graph], [Grafo],
    [Greedy Algorithm], [Algoritmo codicioso],
    [Hash], [Hash],
    [Hash Collision], [Colisión de hash],
    [Hash Function], [Función hash],
    [Hash Table], [Tabla hash],
    [Head], [Cabeza],
    [Heap], [Montículo],
    [Heapify], [Heapify],
    [Height], [Altura],
    [In-degree], [Grado de entrada],
    [In-order Traversal], [Recorrido en inorden],
    [Index], [Índice],
    [In-place], [In situ],
    [Integer], [Entero],
    [Iteration], [Iteración],
    [Key], [Clave],
    [Key-Value Pair], [Par clave-valor],
    [Last-In-First-Out (LIFO)], [Último en entrar, primero en salir
    (LIFO)],
    [Leaf], [Hoja],
    [Level], [Nivel],
    [Linear Probing], [Sondeo lineal],
    [Linear Search], [Búsqueda lineal],
    [Linked List], [Lista enlazada],
    [List], [Lista],
    [Loop], [Bucle],
    [Map], [Mapa],
    [Matrix], [Matriz],
    [Max Heap], [Montículo máximo],
    [Merge Sort], [Ordenamiento por mezcla],
    [Method], [Método],
    [Min Heap], [Montículo mínimo],
    [n-Queens Problem], [Problema de las n-reinas],
    [Node], [Nodo],
    [Object], [Objeto],
    [Open Addressing], [Direccionamiento abierto],
    [Optimal Substructure], [Subestructura óptima],
    [Out-degree], [Grado de salida],
    [Overflow], [Desbordamiento],
    [Parent], [Padre],
    [Partition], [Partición],
    [Path], [Ruta],
    [Peek], [Cima],
    [Perfect Binary Tree], [Árbol binario perfecto],
    [Permutation], [Permutación],
    [Pivot], [Pivote],
    [Pointer], [Puntero],
    [Pop], [Sacar],
    [Post-order Traversal], [Recorrido en postorden],
    [Pre-order Traversal], [Recorrido en preorden],
    [Prefix Sum], [Suma de prefijos],
    [Priority Queue], [Cola de prioridad],
    [Pruning], [Poda],
    [Push], [Empujar],
    [Quadratic Probing], [Sondeo cuadrático],
    [Queue], [Cola],
    [Quick Sort], [Ordenamiento rápido],
    [Radix Sort], [Ordenamiento por radix],
    [Recursion], [Recursión],
    [Red-Black Tree], [Árbol rojo-negro],
    [Reference], [Referencia],
    [Root], [Raíz],
    [Rotation], [Rotación],
    [Search], [Búsqueda],
    [Selection Sort], [Ordenamiento por selección],
    [Sentinel], [Centinela],
    [Shortest Path], [Ruta más corta],
    [Sibling], [Hermano],
    [Singly Linked List], [Lista enlazada simple],
    [Sort], [Ordenar],
    [Space Complexity], [Complejidad espacial],
    [Stack], [Pila],
    [Stable Sort], [Ordenamiento estable],
    [State], [Estado],
    [State Transition Equation], [Ecuación de transición de estado],
    [String], [Cadena],
    [Sub-array], [Subarreglo],
    [Sub-problem], [Subproblema],
    [Sub-sequence], [Subsecuencia],
    [Sub-set], [Subconjunto],
    [Sub-tree], [Subárbol],
    [Tail], [Cola],
    [Time Complexity], [Complejidad temporal],
    [Traversal], [Recorrido],
    [Tree], [Árbol],
    [Undirected Graph], [Grafo no dirigido],
    [Unstable Sort], [Ordenamiento inestable],
    [Value], [Valor],
    [Vertex], [Vértice],
    [Weight], [Peso],
    [Worst-case Time Complexity], [Complejidad temporal en el peor de
    los casos],
  )]
  , kind: table
  )
= Referencias
<referencias>
\[1\] Thomas H. Cormen, et al.~Introduction to Algorithms (3rd Edition).

\[2\] Aditya Bhargava. Grokking Algorithms: An Illustrated Guide for
Programmers and Other Curious People (1st Edition).

\[3\] Robert Sedgewick, et al.~Algorithms (4th Edition).

\[4\] Yan Weimin. Data Structures (C Language Version).

\[5\] Deng Junhui. Data Structures (C++ Language Version, Third
Edition).

\[6\] Mark Allen Weiss, translated by Chen Yue. Data Structures and
Algorithm Analysis in Java (Third Edition).

\[7\] Cheng Jie. Speaking of Data Structures.

\[8\] Wang Zheng. The Beauty of Data Structures and Algorithms.

\[9\] Gayle Laakmann McDowell. Cracking the Coding Interview: 189
Programming Questions and Solutions (6th Edition).

\[10\] Aston Zhang, et al.~Dive into Deep Learning.
