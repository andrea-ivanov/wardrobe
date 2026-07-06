---
date: Enero 2023
title: Plantilla ![arc42](images/arc42-logo.png)
---

# 

**Acerca de arc42**

arc42, La plantilla de documentación para arquitectura de sistemas y de
software.

Por Dr. Gernot Starke, Dr. Peter Hruschka y otros contribuyentes.

Revisión de la plantilla: 7.0 ES (basada en asciidoc), Enero 2017

© Reconocemos que este documento utiliza material de la plantilla de
arquitectura arc42, <https://www.arc42.org>. Creada por Dr. Peter
Hruschka y Dr. Gernot Starke.

# Introducción y Metas

## Vista de Requerimientos

Crear una plataforma móvil que permita digitalizar prendas para formar un armario virtual, incorporar un motor de Inteligencia Artificial para análisis de colorimetría facial y generar automáticamente combinaciones de ropa (outfits) filtradas por estilos (informal, playero, elegante, etc.).

## Metas de Calidad

Alta usabilidad (interfaz intuitiva para subir fotos), bajo acoplamiento (separar la lógica de IA de la interfaz gráfica) y eficiencia de costes.

## Partes interesadas (Stakeholders)

| Rol/Nombre   | Contacto        | Expectativas        |
|--------------|-----------------|---------------------|
| *Yo como desarrollador/arquitecto* | *\<\>* | *Reforzar mis conocimientos en la materia* |
| *Usuario final* | *\<\>* | *Plataforma de organización de armario y recomendaciones de estilo satisfactorias* |

# Restricciones de la Arquitectura

| Número de restricción   | Descripción       |
|--------------|---------------------|
|RA1 | **Coste cero:** La arquitectura debe sostenerse sin costes de servidores dedicados, maximizando el uso de capas gratuitas (free tiers) en la nube o delegando el procesamiento intensivo al propio dispositivo móvil (Edge AI). |
|RA2| **Restricción legal:** El proyecto está protegido bajo la PolyForm Noncommercial License 1.0.0, lo que restringe estrictamente cualquier uso comercial o lucrativo del código fuente. |


# Alcance y Contexto del Sistema

## Contexto de Negocio

El sistema es una aplicación móvil (Armario Virtual) que interactúa con el **Usuario Final**. El usuario toma fotografías de sus prendas de ropa y el sistema, mediante Inteligencia Artificial en el dispositivo (Edge AI), extrae las características (color, estilo, categoría). El usuario también puede escanear su rostro para que el sistema analice su colorimetría. 
El sistema genera sugerencias de "outfits" basados en el estilo seleccionado (informal, playero, deportivo, etc.) y las características del usuario.

## Contexto Técnico

**\<Diagrama o Tabla\>**

**\<Opcional: Explicación de las interfases técnicas\>**

**\<Mapeo de Entrada/Salida a canales\>**

# Estrategia de solución

Adoptamos una arquitectura **Clean Architecture** orientada a características (Feature-First) para asegurar un bajo acoplamiento. Se utiliza el patrón **Service Locator (get_it)** para la inyección de dependencias y **Edge AI** (Modelos embebidos en el dispositivo) para la Inteligencia Artificial, reduciendo costes a 0 y maximizando la privacidad.

# Vista de Bloques

## Sistema General de Caja Blanca

***\<Diagrama general\>***

Motivación  
*\<Explicación en texto\>*

Bloques de construcción contenidos  
*\<Desripción de los bloques de construcción contenidos (Cajas
negras)\>*

Interfases importantes  
*\<Descripción de las interfases importantes\>*

### \<Caja Negra 1\>

*\<Propósito/Responsabilidad\>*

*\<Interfase(s)\>*

*\<(Opcional) Características de Calidad/Performance\>*

*\<(Opcional) Ubicación Archivo/Directorio\>*

*\<(Opcional) Requerimientos Satisfechos\>*

*\<(Opcional) Riesgos/Problemas/Incidentes Abiertos\>*

### \<Caja Negra 2\>

*\<plantilla de caja negra\>*

### \<Caja Negra N\>

*\<Plantilla de caja negra\>*

### \<Interfase 1\>

…​

### \<Interfase m\>

## Nivel 2

### Caja Blanca *\<bloque de construcción 1\>*

*\<plantilla de caja blanca\>*

### Caja Blanca *\<bloque de construcción 2\>*

*\<plantilla de caja blanca\>*

…​

### Caja Blanca *\<bloque de construcción m\>*

*\<plantilla de caja blanca\>*

## Nivel 3

### Caja Blanca \<\_bloque de construcción x.1\_\>

*\<plantilla de caja blanca\>*

### Caja Blanca \<\_bloque de construcción x.2\_\>

*\<plantilla de caja blanca\>*

### Caja Blanca \<\_bloque de construcción y.1\_\>

*\<plantilla de caja blanca\>*

# Vista de Ejecución

## \<Escenario de ejecución 1\>

- *\<Inserte un diagrama de ejecución o la descripción del escenario\>*

- *\<Inserte la descripción de aspectos notables de las interacciones
  entre los bloques de construcción mostrados en este diagrama.\>*

## \<Escenario de ejecución 2\>

## …​

## \<Escenario de ejecución n\>

# Vista de Despliegue

## Nivel de infraestructura 1

***\<Diagrama General\>***

Motivación  
*\<Explicación en forma textual\>*

Características de Calidad/Rendimiento  
*\<Explicación en forma textual\>*

Mapeo de los Bloques de Construcción a Infraestructura  
*\<Descripción del mapeo\>*

## Nivel de Infraestructura 2

### *\<Elemento de Infraestructura 1\>*

*\<diagrama + explicación\>*

### *\<Elemento de Infraestructura 2\>*

*\<diagrama + explicación\>*

…​

### *\<Elemento de Infraestructura n\>*

*\<diagrama + explicación\>*

# Conceptos Transversales (Cross-cutting)

## *\<Concepto 1\>*

*\<explicación\>*

## *\<Concepto 2\>*

*\<explicación\>*

…​

## *\<Concepto n\>*

*\<explicación\>*

# Decisiones de Diseño

| ID | Decisión | Alternativas consideradas | Justificación |
|----|----------|---------------------------|---------------|
| ADR-01 | Estrategia de IA: Edge AI (On-Device) | Procesamiento en la nube (Serverless + APIs externas). | Garantiza coste 0€ de mantenimiento, elimina la latencia de red y asegura la privacidad del usuario al no enviar imágenes biométricas a servidores externos. |
| ADR-02 | Stack Frontend: Flutter (Dart) | - | Rendimiento casi nativo, compilación multiplataforma (iOS/Android) y excelente soporte para IA On-Device (Edge AI). |
| ADR-03 | Inyección de Dependencias: Service Locator (get_it) | Provider, InheritedWidget. | Desacopla la creación de objetos de su uso globalmente y sin depender del contexto de Flutter, lo que facilita aplicar Clean Architecture. |
| ADR-04 | Base de Datos Local: Isar | SQLite, Hive. | Motor NoSQL ultrarrápido, ideal para consultas complejas y filtrado de ropa por color/estilo en milisegundos. |

# Requerimientos de Calidad

## Árbol de Calidad
1. **Privacidad:** (Alta) Las fotos del rostro y prendas del usuario nunca deben abandonar el dispositivo.
2. **Coste:** (Alta) El mantenimiento de infraestructura (servidores, API keys) debe ser 0€.
3. **Rendimiento:** (Media) La sugerencia de outfits y el análisis de la IA deben ser rápidos (idealmente menos de 2-3 segundos) para brindar una experiencia de usuario fluida.

## Escenarios de calidad
- **Escenario de Privacidad (Colorimetría):** Cuando el usuario escanea su rostro para extraer la colorimetría, la imagen de la cámara se procesa directamente en la memoria RAM y se descarta inmediatamente tras calcular los parámetros. Ninguna foto del rostro debe guardarse en el almacenamiento del dispositivo ni mucho menos en la nube.

# Riesgos y deuda técnica

- **Riesgo (Tamaño de la App):** El tamaño del binario de la aplicación (`.apk` / `.ipa`) puede crecer significativamente al tener que incluir embebidos los modelos de Inteligencia Artificial (TFLite u otros) localmente.
- **Riesgo (Dispositivos Antiguos):** Los teléfonos móviles de gama baja o muy antiguos podrían sufrir latencia excesiva o calentamiento al ejecutar los modelos de inferencia de IA.
- **Deuda Técnica (Sin Nube):** Al no contar (por ahora) con un backend de sincronización en la nube para ahorrar costes, si el usuario cambia de dispositivo o lo pierde, pierde su armario virtual. Se debería añadir funcionalidad de exportación local o backup a Google Drive / iCloud en el futuro.

# Glosario

| Término         | Definición         |
|-----------------|--------------------|
| **Colorimetría**| Análisis de los colores que más favorecen a una persona basándose en el contraste de su tono de piel, color de ojos y cabello. |
| **Edge AI**     | Inteligencia Artificial cuyos modelos se ejecutan en local, en el extremo (dispositivo móvil), en lugar de enviar datos a un servidor para procesarse. |
| **Service Locator**| Patrón de diseño donde un "localizador" (ej. `get_it`) se encarga de instanciar y proveer objetos globales ya configurados a cualquier parte del código que los pida. |
| **Clean Architecture**| Estilo arquitectónico (promulgado por Robert C. Martin) que propone la estricta separación de responsabilidades en capas concéntricas, asegurando que las reglas de negocio (Dominio) sean el centro inmutable del sistema. |
| **Isar**        | Motor de base de datos embebido NoSQL para Flutter, optimizado para alto rendimiento, consultas avanzadas y almacenamiento en disco de forma síncrona/asíncrona. |
