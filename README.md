Nota: Para visualizar de manera correcta todas las imágenes de este instructivo se recomienda estar logeado en github, ya que si se visualiza el readme sin estar logeado en git, puede ser que las imágenes no carguen correctamente.

## EL PROYECTO CUMPLE CON TODOS LOS REQUISITOS + UN PLUS QUE ES CI/CD CON GitHub Actions y Disponibilizacion con DOCKER.


# 🐾 Ejercicio2Karate - API de PetStore

Este proyecto realiza pruebas funcionales automatizadas de la API [Swagger Petstore](https://petstore.swagger.io/). El flujo implementado cubre las siguientes funcionalidades:

1. **Añadir una mascota a la tienda.**
2. **Consultar la mascota ingresada previamente (Búsqueda por ID).**
3. **Actualizar el nombre de la mascota y el estatus de la mascota a "sold".**
4. **Consultar la mascota modificada por estatus (Búsqueda por estatus).**
5. **Eliminar la mascota creada como parte de la limpieza final.**

## 📋 Prerequisitos

Antes de ejecutar el proyecto, asegúrate de cumplir con los siguientes requisitos:

- **Sistema Operativo**: Windows / macOS / Linux.
- **JDK**: Versión 17 o superior (configurado en la variable de entorno `JAVA_HOME`).
- **Gradle 7.6.1**: El proyecto incluye el gradle wrapper, no necesitas instalarlo globalmente.
- **Git**: Para clonar el repositorio. 

## 🚀 Instrucciones para configurar y ejecutar

### 1️⃣ Clonar el repositorio

```bash
git clone https://github.com/YoderRivadeneira/ejercicio2Karate
```
```bash
cd ejercicio2Karate

```
Configura el Gradle Wrapper a la versión 7.6.1:

Nota: Asegurate de ejecutar este comando en la ruta del proyecto, es decir en la terminal debes ubicarte en la ruta del proyecto.


```bash
./gradlew wrapper --gradle-version 7.6.1
```

2️⃣ Verificar las dependencias
Ejecuta el siguiente comando para instalar las dependencias y verificar la configuración:

```bash
./gradlew build
```


3️⃣ Ejecutar las pruebas
Ejecuta todas las pruebas del proyecto con:

```bash
./gradlew test
```

Si deseas ejecutar pruebas específicas, utiliza el runner definido en el proyecto:

```bash
./gradlew test --tests "devsu.petstore.karateRunner"
```
o ejecutar directamente desde el IDE con la opción "Run"

<img width="1409" height="859" alt="image" src="https://github.com/user-attachments/assets/f404784b-bc66-4a3e-b5e7-eda8b07071d7" />





📂 Estructura del Proyectocon 
```bash
src/
├── main/
│   └── java/
│       └── devsu/
│           └── petstore/
│               └── Main.java         # Clase principal de main
├── test/  
│   └── java/
│       └── devsu/
│           └── petstore/
│               ├── features/                # Escenarios de prueba escritos en Karate
│               ├── data/                    # Datos de prueba utilizados en las pruebas
│               ├── karateRunner.java        # Runner para ejecutar las pruebas
│   └── resources/
│       └── karate-config.js/                # Configuraciones globales para karate
└── build.gradle                             # Configuración del proyecto con dependencias


```


📑 Reportes Generados

Reporte HTML de Karate


Después de ejecutar las pruebas, puedes encontrar el reporte detallado en la carpeta:

```bash
build/karate-reports/karate-summary.html
```

<img width="1356" height="407" alt="image" src="https://github.com/user-attachments/assets/0ed180ef-be56-4bd6-bffe-09278eedf8df" />


![image](https://github.com/user-attachments/assets/5fb1d163-ba8b-47bc-b3b2-b37be1228ae2)



Este archivo incluye:

```bash
Detalles de cada escenario ejecutado.
Tiempo de ejecución de cada paso.
Resultados de éxito/fallo.
Respuestas y errores encontrados.
```
## ESCENARIOS

### AGREGAR UNA NUEVA MASCOTA

<img width="1358" height="525" alt="image" src="https://github.com/user-attachments/assets/51bdbc61-dbcc-4242-9cdd-4b36c3b9715c" />


### BUSCAR MASCOTA POR ID

<img width="1357" height="603" alt="image" src="https://github.com/user-attachments/assets/946852e4-5ab2-49a1-aa6a-386489255ed9" />

### ACTUALIZAR UNA MASCOTA EXISTENTE

<img width="1364" height="570" alt="image" src="https://github.com/user-attachments/assets/a9e68b1a-87f3-4150-865c-994bd44be0a0" />


### BUSCAR MASCOTA POR ESTADO

<img width="1359" height="511" alt="image" src="https://github.com/user-attachments/assets/27b1b856-da76-421a-8463-59fc9de5bb8e" />


### LIMPIEZA DE DATOS INSERTADOS DURANTE EL TEST

<img width="1350" height="611" alt="image" src="https://github.com/user-attachments/assets/0112ae1a-6c84-4cef-ae50-d51c62481524" />



Reporte estándar de Gradle

Adicionalmente, Gradle genera un reporte en:

```bash
build/reports/tests/test/index.html
```

<img width="950" height="580" alt="image" src="https://github.com/user-attachments/assets/db6a331e-1b8b-43fa-8f89-a1fce877b96a" />



Este reporte muestra:

```bash
Resumen de las pruebas ejecutadas.
Resultados agregados por clase.
Estado final de las pruebas.
```

## 🤖 Integración Continua (CI/CD)

El proyecto está configurado con GitHub Actions para ejecutar automáticamente las pruebas cada vez que se realiza un push al repositorio, además genera los resportes como artefactos para poder descargarlos y visualizarlos.

<img width="1578" height="739" alt="image" src="https://github.com/user-attachments/assets/cba6a9f7-b9e0-4ea5-922f-b7efc8aae286" />

<img width="756" height="312" alt="image" src="https://github.com/user-attachments/assets/ec37c5a3-bbaf-444c-9ae3-43d41916d2ab" />

<img width="1477" height="790" alt="image" src="https://github.com/user-attachments/assets/2cdae99e-2c55-4feb-94cc-628c2ea8178e" />

<img width="1500" height="825" alt="image" src="https://github.com/user-attachments/assets/78581ba4-357a-4640-a73c-a3bc9d64f2ef" />


Ruta para los reportes en GitHub Actions:

<img width="1505" height="422" alt="image" src="https://github.com/user-attachments/assets/0bbbc9a7-b788-47a3-ac71-e835deaea9c0" />

<img width="1497" height="751" alt="image" src="https://github.com/user-attachments/assets/a040233c-8bbe-4905-8e53-12b3a274f29a" />



```bash
Ve a la pestaña Actions en el repositorio.
Selecciona la ejecución más reciente.
Descarga el artefacto karate-reports que incluye el reporte generado.
```

📦 Datos de Prueba

Los datos de las pruebas se encuentran en archivos JSON dentro de la carpeta data. 


