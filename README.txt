================================================================================
EJERCICIO2KARATE - GUIA DE EJECUCION DEL PROYECTO
================================================================================

DESCRIPCION:
El proyecto realiza pruebas funcionales automatizadas de la API Swagger Petstore
(https://petstore.swagger.io/) utilizando el framework Karate, con integracion 
de CI/CD mediante GitHub Actions.

================================================================================
REQUISITOS PREVIOS
================================================================================

1. Sistema Operativo: Windows, macOS o Linux
2. JDK: Versión 17 o superior
3. Git: Instalado y configurado
4. El proyecto incluye Gradle Wrapper, no requiere instalacion global

Nota: Asegurate de que la variable de entorno JAVA_HOME este configurada
correctamente y apunte a tu instalacion de JDK 17 o superior.

================================================================================
PASOS PARA EJECUTAR EL PROYECTO
================================================================================

PASO 1: CLONAR EL REPOSITORIO
------------------------------
Abre tu terminal/consola y ejecuta:

    git clone https://github.com/YoderRivadeneira/ejercicio2Karate
    cd ejercicio2Karate
asignar permisos:
    chmod +x ./gradlew

PASO 2: CONFIGURAR GRADLE WRAPPER (Importante)
-----------------------------------------------
Ejecuta el siguiente comando desde la raiz del proyecto:

    ./gradlew wrapper --gradle-version 7.6.1

En Windows utiliza:

    gradlew wrapper --gradle-version 7.6.1

PASO 3: INSTALAR DEPENDENCIAS
------------------------------
Construye el proyecto para verificar y descargar todas las dependencias:

    ./gradlew build

En Windows:

    gradlew build

Esto descargara todas las dependencias necesarias definidas en build.gradle.

PASO 4: EJECUTAR LAS PRUEBAS
----------------------------
Para ejecutar todas las pruebas del proyecto:

    ./gradlew test

En Windows:

    gradlew test

Para ejecutar un test especifico (runner de Karate):

    ./gradlew test --tests "devsu.petstore.karateRunner"

En Windows:

    gradlew test --tests "devsu.petstore.karateRunner"

Tambien puedes ejecutar directamente desde tu IDE seleccionando "Run" en el
archivo karateRunner.java ubicado en src/test/java/devsu/petstore/

PASO 5: REVISAR REPORTES GENERADOS
-----------------------------------
Despues de ejecutar las pruebas, se generan dos tipos de reportes:

a) Reporte HTML de Karate:
   Ubicacion: build/karate-reports/karate-summary.html
   Contiene: Detalles de escenarios, tiempos de ejecucion, resultados y 
             respuestas de API.

b) Reporte Gradle Standard:
   Ubicacion: build/reports/tests/test/index.html
   Contiene: Resumen agregado de pruebas y estado final.

Para ver los reportes, abre el archivo HTML en tu navegador.

================================================================================
ESTRUCTURA DEL PROYECTO
================================================================================

src/main/java/devsu/petstore/
    Main.java                   - Clase principal

src/test/java/devsu/petstore/
    features/                   - Escenarios de prueba en Karate (.feature)
    data/                       - Datos de prueba en JSON
    karateRunner.java           - Runner para ejecutar las pruebas

src/test/resources/
    karate-config.js            - Configuraciones globales de Karate

build.gradle                    - Definicion de dependencias y configuracion

================================================================================
ESCENARIOS DE PRUEBA INCLUIDOS
================================================================================

1. Agregar una nueva mascota a la tienda
2. Buscar mascota por ID
3. Actualizar nombre y estado de la mascota
4. Buscar mascota por estado
5. Eliminar la mascota (limpieza)

================================================================================
CI/CD CON GITHUB ACTIONS
================================================================================

El proyecto esta configurado con GitHub Actions para ejecutar automaticamente
las pruebas en cada push a la rama main.

Pasos para ver los resultados en GitHub:

1. Ve al repositorio en GitHub
2. Haz clic en la pestaña "Actions"
3. Selecciona la ejecucion mas reciente del workflow "Karate CI/CD"
4. Verifica el estado de ejecucion y los logs
5. Descarga el artefacto "karate-reports" para obtener los reportes

El workflow ejecuta automaticamente:
    - Setup de JDK 17
    - Cache de dependencias Gradle
    - Ejecucion de pruebas con "gradlew clean test"
    - Generacion de reportes
    - Carga de reportes como artefactos

================================================================================
SOLUCION DE PROBLEMAS
================================================================================

Problema: "gradlew: command not found" en macOS/Linux
Solucion: Asegurate de estar en el directorio del proyecto y ejecuta:
    chmod +x ./gradlew

Problema: "JAVA_HOME is not set"
Solucion: Configura JAVA_HOME en tu sistema operativo apuntando a tu JDK 17+

Problema: Las pruebas fallan por conexion
Solucion: Verifica que tengas conexion a internet y que 
    https://petstore.swagger.io/ sea accesible

Problema: Gradle download lento
Solucion: El proyecto usa cache de Gradle. La primera ejecucion tardara mas.
    Las siguientes seran mas rapidas.


