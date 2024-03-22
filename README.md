# PROYECTO SQL CONJUNTO


## Tabla de Contenidos
1. Introducción
2. Tecnologías utilizadas
3. Proceso
4. Colaboradores


## 1. Introducción
En este repositorio hemos guardado el trabajo conjunto que hemos hecho entre alumnos de Fullstack y Data Science acerca de la creación y visualización de tablas con SQL y guardadas en una base de datos online.


## 2. Tecnologías utilizadas

Las distintas tecnologías que hemos aplicado en este proyecto son las siguientes:
1. Excalidraw
2. SQL
3. pgAdmin4
4. Render
5. Google.sheets


## 3. Proceso

 - En primer lugar, accedimos al portal **Render** para tener un servidor online gratuito que alojase nuestra base de datos. Nos registramos y obtuvimos una serie de credenciales que después nos hacían falta para poder enlazarlo con pgAdmin4.

 ** [Enlace a nuestro servidor de Render](https://dashboard.render.com/d/dpg-cntgrn6n7f5s73f925ig-a/info)

 - Seguidamente pasamos a configurar pgAdmin4 con las credenciales que nos aportó Render. Comprobamos que la conexión funcionaba al crear unas tablas cualquiera y, con toda la tecnología base ya controlada, pudimos pasarnos a idear el diagrama del modelo.

 - Para poder plasmar nuestra idea acerca de cómo establecer el número de tablas y la relación entre las mismas utilizamos la aplicación web **Excalidraw**. Se trata de una utilidad que nos permitía dibujar diagramas fácilmente, así que partiendo de los datos iniciales tanto de alumnos como de profesores que se nos ofrecieron como guía, ideamos un diagrama inicial que (tras mucho pensamiento y con el paso del tiempo y el avance del proyecto) obtuvo esta forma definitiva:

 ** [Enlace a nuestro Excalidraw](https://excalidraw.com/#json=mN1rgycLkXEr_LRrWNLWA,VOIjw2F-CyjCjskZPHJl6g)

 - Efectivamente, solo con el diagrama no fuimos capaces de obtener todos los distintos campos que creíamos que requerían las diferentes tablas, esto ya lo fuimos viendo poco a poco mientras incluíamos datos con las *queries* en **pgAdmin4**. Primeramente fuimos añadiendo las tablas que tenían menos elementos y estaban en las puntas para después irnos acercando a las tablas que compartían más conexiones y contenían más claves foráneas. 

 ![pgAdmin4](https://github.com/2Tucho/proyecto_conjunto_sql/assets/105043263/63e1748d-fc71-4aca-8f39-4bccd7f83bd4)

 - Comprobamos que las relaciones entre las tablas eran las correctas comprobando el ERD que nos facilitaba hacer la propia pgAdmin4 y nos centramos en la introducción de datos en cada una de ellas. Para facilitarnos la ingesta de valores con cada *insert* creamos primeramente tablas en **google.sheets**, sobre las cuales adaptamos las distintas columnas que teníamos ya en pgAdmin4 y les fuimos añadiendo información a las filas, de tal forma que con fórmulas creamos junto a cada fila justamente el diseño que nos hacía falta para añadirlo a los valores de pgAdmin4.

 ![excel para pgAdmin4](https://github.com/2Tucho/proyecto_conjunto_sql/assets/105043263/fd6e5743-6e70-4e0b-9172-4d9e94abb31b)

 - Con todos los datos ya añadidos a la base de datos, tan solo nos quedaba comprobar que el ERD era correcto y que las relaciones estaban bien construidas probando algunas sencillas *queries* con sus respectivos *inner join*. 

 ![image](https://github.com/2Tucho/proyecto_conjunto_sql/assets/105043263/863c5379-c3e3-4b3a-9712-00d6f295ae31)


## 4. Colaboradores 
En este proyecto hemos colaborado conjuntamente [Alberto González](https://github.com/2Tucho), estudiante de Full Stack, y de [Javier Calderón](https://github.com/JavierCalderon94), estudiante de Data Science.

