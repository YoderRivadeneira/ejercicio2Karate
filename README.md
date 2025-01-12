# 🐾 Ejercicio2Karate - API de PetStore

Este proyecto realiza pruebas funcionales automatizadas de la API [Swagger Petstore](https://petstore.swagger.io/). El flujo implementado cubre las siguientes funcionalidades:

1. **Añadir una mascota a la tienda.**
2. **Consultar la mascota ingresada previamente (Búsqueda por ID).**
3. **Actualizar el nombre de la mascota y el estatus de la mascota a “sold”.**
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
./gradlew test --tests "nttdata.petstore.karateRunner"
```
o ejecutar directamente desde el IDE con la opción "Run"

![image](https://github.com/user-attachments/assets/85f28938-9aa6-4c31-91ad-7d949238d110)




📂 Estructura del Proyectocon 
```bash
src/
├── main/
│   └── java/
│       └── nttdata/
│           └── petstore/
│               └── Main.java         # Clase principal de main
├── test/  
│   └── java/
│       └── nttdata/
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

![image](https://github.com/user-attachments/assets/8d999ab2-4000-4533-8a13-aa70b05b80b8)

![image](https://github.com/user-attachments/assets/5fb1d163-ba8b-47bc-b3b2-b37be1228ae2)



Este archivo incluye:

```bash
Detalles de cada escenario ejecutado.
Tiempo de ejecución de cada paso.
Resultados de éxito/fallo.
Respuestas y errores encontrados.
```

Reporte estándar de Gradle

Adicionalmente, Gradle genera un reporte en:

```bash
build/reports/tests/test/index.html
```

![image](https://github.com/user-attachments/assets/a4e53ff1-4ad1-4bd5-913a-a175cd2e01c0)


Este reporte muestra:

```bash
Resumen de las pruebas ejecutadas.
Resultados agregados por clase.
Estado final de las pruebas.
```

🤖 Integración Continua (CI/CD)

El proyecto está configurado con GitHub Actions para ejecutar automáticamente las pruebas cada vez que se realiza un push al repositorio, además genera los resportes como artefactos para poder visualizarlos en cada CICD.

![image](https://github.com/user-attachments/assets/b8bc23bc-8456-4285-9207-65ec4f35e820)





Ruta para los reportes en GitHub Actions:

![image](https://github.com/user-attachments/assets/02dbb030-83bc-4a50-818a-7d1630f5d29d)

![image](https://github.com/user-attachments/assets/531afe84-5591-4354-8054-cfde4da99e7d)


```bash
Ve a la pestaña Actions en el repositorio.
Selecciona la ejecución más reciente.
Descarga el artefacto karate-reports que incluye el reporte generado.
```

📦 Datos de Prueba

Los datos de las pruebas se encuentran en archivos JSON dentro de la carpeta data. 

