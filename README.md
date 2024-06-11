# Fake Store Design System

El sistema de diseño Fake Store proporciona un conjunto coherente de componentes para desarrollar aplicaciones de comercio electrónico utilizando Flutter. Basado en el concepto de Atomic Design, este sistema ofrece una manera estructurada y escalable de construir y mantener interfaces de usuario consistentes y estéticamente agradables.

## Características Principales
- **Componentes Reutilizables:** Accede a una amplia gama de componentes reutilizables, desde botones y tarjetas hasta barras de navegación y diálogos, para construir fácilmente interfaces de usuario complejas.
- **Atomic Design:** Organiza los componentes en cinco niveles: átomos, moléculas, organismos, plantillas y páginas, siguiendo el enfoque de Atomic Design para una estructura modular y escalable.
- **Personalización Sencilla:** Personaliza los estilos y temas para adaptar el diseño a las necesidades específicas de tu aplicación, manteniendo al mismo tiempo la consistencia en toda la interfaz de usuario.
- **Documentación Integral:** Una documentación detallada y estructurada para facilitar la comprensión y el uso de cada componente, incluyendo ejemplos de código.

## Instalación
Para comenzar a utilizar el sistema de diseño Fake Store en tu aplicación Flutter, simplemente agrega `fake_store_ds` como una dependencia en tu archivo `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  fake_store_ds:
    git:
      url: https://github.com/chrisr04/fake_store_ds
      ref: v0.0.1
```

## Uso
A continuación, se muestra un ejemplo básico de cómo utilizar un componente del sistema de diseño Fake Store:

```dart
import 'package:flutter/material.dart';
import 'package:fake_store_ds/fake_store_ds.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fake Store App',
      theme: FakeTheme.light,
      home: Scaffold(
        appBar: FakeDefaultAppBar(
          title: 'Fake Store',
        ),
        body: Center(
          child: FakeButtonPrimary(
            onPressed: () {
              // Acción al presionar el botón
            },
            label: 'Comprar Ahora',
          ),
        ),
      ),
    );
  }
}
```
## Documentación
La documentación completa del sistema de diseño Fake Store se divide en los siguientes apartados:

- **Átomos:** Componentes indivisibles y básicos, como texto, iconos y botones.
- **Moléculas:** Componentes compuestos por varios átomos, como formularios y tarjetas de producto.
- **Organismos:** Componentes complejos que combinan moléculas para formar secciones reutilizables, como encabezados y pies de página.
- **Plantillas:** Diseños de página predefinidos que organizan los organismos en una estructura coherente, como la página de inicio y la página del producto.
- **Páginas:** Ejemplos completos de uso del sistema de diseño en aplicaciones reales, como la página de inicio de sesión y la página de búsqueda.

Consulta ejemplos completos ejecutando el showcase que se encuentra dentro del proyecto.

## Como ejecutar showcase

**Paso 1:**

Descarga o clona este repositorio con el siguiente link:

```
https://github.com/chrisr04/fake_store_ds.git
```

**Paso 2:**

Navega hacia la carpeta example que se encuentra dentro del proyecto

```
cd ./example
```

**Paso 3:**

Ejecuta el siguiente comando para descargar las dependencias necesarias

```
flutter pub get 
```

**Paso 4:**

Luego ejecuta el siguiente comando para levantar la aplicación, recuerda tener un emulador disponible en tu ordenador o en su defecto un dispositivo físico conectado

```
flutter run
```

## Demo

[Video de demostración](https://drive.google.com/file/d/1Z4O390tdldahesnj3wElfevTQzjn00jR/view?usp=sharing)