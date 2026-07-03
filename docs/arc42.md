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

**\<Diagrama o Tabla\>**

**\<optionally: Explanation of external domain interfaces\>**

## Contexto Técnico

**\<Diagrama o Tabla\>**

**\<Opcional: Explicación de las interfases técnicas\>**

**\<Mapeo de Entrada/Salida a canales\>**

# Estrategia de solución

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

# Requerimientos de Calidad

## Árbol de Calidad

## Escenarios de calidad

# Riesgos y deuda técnica

# Glosario

| Término         | Definición         |
|-----------------|--------------------|
| *\<Término-1\>* | *\<definicion-1\>* |
| *\<Término-2\>* | *\<definicion-2\>* |
