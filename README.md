# Betlyn - App de Predicciones Deportivas con IA

Betlyn es una aplicación móvil desarrollada en **Dart + Flutter** cuyo
objetivo es **ayudar a los usuarios en sus apuestas deportivas**
mediante **predicciones generadas por inteligencia artificial**.\
La app ofrece estadísticas, fixtures, información por ligas/partidos y
predicciones basadas en modelos de IA que procesan múltiples variables
del encuentro.

Betlyn combina datos deportivos en tiempo real proporcionados por
**SportMonks API** con un motor de predicciones hecho con **Google
Gemini AI**, gestionando toda la lógica mediante una arquitectura limpia
con capas **Domain**, **Infrastructure** y **Presentation**.

------------------------------------------------------------------------

## 🚀 Características principales

-   📊 Predicciones deportivas generadas por IA (Google Gemini).
-   🏟️ Información detallada de partidos, temporadas, ligas, equipos y
    venues.
-   🔄 Fixtures actualizados en tiempo real usando SportMonks.
-   🎨 UI moderna en Flutter con navegación tipo Shell y Riverpod como
    gestor de estado.
-   🧩 Arquitectura modular y escalable (Domain / Infrastructure /
    Presentation).
-   ⚙️ Configuración mediante variables de entorno.

------------------------------------------------------------------------

## 📁 Estructura del proyecto

El proyecto está organizado de forma profesional y escalable:

    lib/
    ├── config/
    ├── domain/
    ├── infrastructure/
    ├── presentation/
    └── main.dart

------------------------------------------------------------------------

## 🔐 Requisitos para correr el proyecto

Antes de ejecutar la app debes configurar tus llaves en un archivo
`.env`.

### 1. Crea el archivo `.env` en la raíz:

    SPORTMONKS_TOKEN=tu_token_aqui
    GEMINI_API_KEY=tu_api_key_aqui

------------------------------------------------------------------------

## ▶️ Cómo correr Betlyn en tu entorno local

### 1. Instala dependencias

``` sh
flutter pub get
```

### 2. Verifica Flutter

``` sh
flutter doctor
```

### 3. Corre la app

``` sh
flutter run
```

------------------------------------------------------------------------

## 🧠 Arquitectura

-   **Domain**: entidades, repositorios y datasources abstractos
-   **Infrastructure**: datasources reales, models, mappers,
    repositorios concretos
-   **Presentation**: UI, providers, navegación y widgets

------------------------------------------------------------------------

## 🛠️ Tecnologías utilizadas

-   Flutter (Dart)
-   Riverpod 2.0
-   GoRouter
-   SportMonks API
-   Google Gemini API
-   Flutter Dotenv
-   Clean Architecture

------------------------------------------------------------------------

## 📄 Licencia

© 2025 --- Betlyn. Todos los derechos reservados.
