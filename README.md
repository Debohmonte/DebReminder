# DebReminder
DebReminder is a powerful and intuitive To-Do application designed for productivity enthusiasts. Built with SwiftUI, the app provides a seamless experience for managing tasks, tracking deadlines, and staying organized. The project utilizes SwiftData for persistent data storage and follows the MVVM architecture, ensuring a clean, maintainable, and scalable codebase.

## Features
### Core Features:
#### Task Management: 
Create, edit, and delete tasks effortlessly.
#### Recurring Tasks: 
Set tasks to repeat on specific days or intervals.
#### Priority Levels: 
Categorize tasks with priority indicators (e.g., High, Medium, Low).
#### Detailed Notes: 
Add comprehensive notes to tasks for better context.
#### Status Tracking:
Mark tasks as pending, in-progress, or completed.
## Interface:
#### Dynamic List View: 
Sort, filter, and search through tasks easily.
#### Calendar Integration:
Visualize tasks in a calendar layout, making it easy to see upcoming deadlines.
## Design & Experience:
#### Modern UI/UX: 
Designed with SwiftUI for a responsive and fluid interface.
#### Lightweight & Fast: 
Minimal footprint with high performance.
#### Customizable Task Views: 
Tailor the app to your workflow preferences.



# Project Structure
## Directory Organization
The project is structured to ensure modularity and clarity:

## Models:

**Todo.swift:** Represents the data model for tasks, encapsulating attributes like title, description, priority, due date, and recurrence.
Views:

**Task Management:**

**AddTaskView.swift:** The UI for adding new tasks with user-friendly input fields.

**EditTaskView.swift:** Enables editing task details, including notes and recurrence options.

**TaskRowView.swift:** Displays task details in a compact, interactive row format.


**Calendar:**

**CalendarView.swift:** A calendar interface to browse tasks by date.

**CalendarGridView.swift:** A helper view for rendering calendar cells dynamically.


**List:**

**ListView.swift:** The main task list view, featuring filtering and sorting options.

**ViewModel:**

**ListViewModel.swift:** Centralized logic for managing task data, interacting with the database, and updating the UI.

**Utilities:**

**Binding+Extensions.swift:** Custom bindings for advanced SwiftUI interactions.
**Date+Extensions.swift:** Helper methods for working with Date objects, including comparisons and formatting.



# Getting Started
## Prerequisites
**Xcode 14.0 or later** Ensure you have the latest version of Xcode installed.

**Swift 5.7 or later:** The project utilizes modern Swift features.

**macOS Monterey or later:** Required for SwiftData compatibility.

## Installation
**Clone the repository:**

git clone https://github.com/Debohmonte/DebReminder.git

**Open the project in Xcode:**

cd DebReminder

open DebReminder.xcodeproj

**Select a target device or simulator and build the project:**

Press Cmd + R to run the app.

# Usage

**1. Adding a Task**

Tap the "+" button to open the AddTaskView.

Fill in task details:

Title: Name your task.

Priority: Set its importance.

Recurrence: Choose repeating options if needed.

Notes: Add detailed notes to provide extra information.

Tap "Save" to create the task.


**2. Editing Tasks**

Swipe left on a task in the ListView and select "Edit."

Modify task details as required.

Save changes to update the task in the database.

**3. Calendar View**

Navigate to the Calendar tab to view tasks visually organized by date.

Tap on a date to see tasks scheduled for that day.

**4. Task Prioritization**

Use visual indicators (e.g., colors or icons) to quickly identify task urgency.

# Screenshots

<img width="568" alt="Screenshot 2024-11-19 at 5 07 37 PM" src="https://github.com/user-attachments/assets/1f781f35-f797-49be-850e-9803dcb479aa">

<img width="661" alt="Screenshot 2024-11-19 at 5 08 21 PM" src="https://github.com/user-attachments/assets/9421ce00-fd5b-44ae-9e53-35677cc100b0">

<img width="212" alt="Screenshot 2024-11-19 at 5 08 33 PM" src="https://github.com/user-attachments/assets/86afc778-da23-4ac0-83de-7b73c89c8382">

<img width="465" alt="Screenshot 2024-11-19 at 5 08 53 PM" src="https://github.com/user-attachments/assets/d3fd6d0c-330c-4e00-88c1-365892fc8032">

<img width="617" alt="Screenshot 2024-11-19 at 5 09 12 PM" src="https://github.com/user-attachments/assets/4b21eece-0440-431c-a5fc-2e7b0e425f69">



# Architecture
## MVVM (Model-View-ViewModel)

## The project adheres to the MVVM pattern:

**Model:** Represents the task data and business logic.

**View:** Handles UI rendering using SwiftUI.

**ViewModel:** Acts as the intermediary, managing state and logic between the Model and View.

## Data Persistence

The app uses SwiftData for seamless, lightweight data persistence.

## Roadmap

Future improvements to enhance the app:

 **Dark Mode:** Support for light and dark themes. 

 **Push Notifications:** Alert users of upcoming tasks.

 **Task Categories:** Organize tasks by projects or tags.

 **Data Export:** Enable exporting tasks to external formats (e.g., CSV, JSON).

 **Progress Tracker:** Visualize task completion rates.



# Contact
For feedback or inquiries, feel free to reach out:

----------------------------------------------------------------------------------ESPAÑOL---------------------------------------------------------------------------------------------------------------------------

# DebReminder
DebReminder es una aplicación de tareas pendiente potente e intuitiva diseñada para entusiastas de la productividad. Construida con SwiftUI, la aplicación proporciona una experiencia fluida para gestionar tareas, realizar un seguimiento de los plazos y mantenerse organizado. El proyecto utiliza SwiftData para el almacenamiento persistente de datos y sigue la arquitectura MVVM, asegurando un código limpio, mantenible y escalable.

## Características

### Funciones principales:
#### Gestión de tareas:
Crea, edita y elimina tareas fácilmente.
#### Tareas recurrentes:
Configura tareas para que se repitan en días o intervalos específicos.
#### Niveles de prioridad:
Clasifica las tareas con indicadores de prioridad (por ejemplo, Alta, Media, Baja).
#### Notas detalladas:
Agrega notas completas a las tareas para mayor contexto.
#### Seguimiento de estado:
Marca tareas como pendientes, en progreso o completadas.

### Interfaz:
#### Vista de lista dinámica:
Ordena, filtra y busca tareas fácilmente.
#### Integración de calendario:
Visualiza las tareas en un diseño de calendario para un mejor seguimiento de los plazos.


### Diseño y experiencia:
#### UI/UX moderno:
Diseñado con SwiftUI para una interfaz responsiva y fluida.
#### Ligero y rápido:
Huella mínima con alto rendimiento.
#### Vistas personalizables:
Adapta la aplicación a tus preferencias de flujo de trabajo.


# Estructura del proyecto
## Organización del directorio
**El proyecto está estructurado para garantizar modularidad y claridad:**

**Modelos:**
Todo.swift

Representa el modelo de datos para las tareas, encapsulando atributos como título, descripción, prioridad, fecha límite y recurrencia.

### Vistas:
#### Gestión de tareas:

**AddTaskView.swift**
La interfaz para agregar nuevas tareas con campos de entrada intuitivos.

**EditTaskView.swift**
Permite editar los detalles de las tareas, incluidas notas y opciones de recurrencia.

**TaskRowView.swift**
Muestra los detalles de las tareas en un formato de fila compacto e interactivo.

## Calendario:

**CalendarView.swift**
Interfaz de calendario para navegar por las tareas según la fecha.

**CalendarGridView.swift**
Vista auxiliar para renderizar dinámicamente las celdas del calendario.

## Lista:


**ListView.swift**
La vista principal de la lista de tareas, con opciones de filtrado y ordenamiento.

## Vista-modelo:
**ListViewModel.swift**
Lógica centralizada para gestionar datos de tareas, interactuar con la base de datos y actualizar la interfaz.

## Utilidades:
**Binding+Extensions.swift**
Extensiones personalizadas para interacciones avanzadas en SwiftUI.

**Date+Extensions.swift**
Métodos auxiliares para trabajar con objetos Date, incluyendo comparaciones y formateos.

# Primeros pasos
## Requisitos previos
Xcode 14.0 o posterior 

Asegúrate de tener la última versión de Xcode instalada. 

Swift 5.7 o posterior

El proyecto utiliza características modernas de Swift.

macOS Monterey o posterior

Requerido para compatibilidad con SwiftData.

**Instalación**

Clona el repositorio:

git clone https://github.com/Debohmonte/DebReminder.git

**Abre el proyecto en Xcode:**

cd DebReminder
open DebReminder.xcodeproj

**Selecciona un dispositivo o simulador y construye el proyecto:**

Presiona Cmd + R para ejecutar la aplicación.

# Uso

**1. Agregar una tarea**

Pulsa el botón "+" para abrir la vista AddTaskView.

Rellena los detalles de la tarea:

Título: Nombra tu tarea.

Prioridad: Establece su importancia.

Recurrencia: Elige opciones de repetición si es necesario.

Notas: Agrega notas detalladas para proporcionar información adicional.

Pulsa "Guardar" para crear la tarea.

**2. Editar tareas**

Desliza hacia la izquierda en una tarea dentro de la ListView y selecciona "Editar."

Modifica los detalles según sea necesario.

Guarda los cambios para actualizar la tarea en la base de datos.

**3. Vista de calendario**

Navega a la pestaña de Calendario para ver las tareas organizadas visualmente por fecha.

Pulsa una fecha para ver las tareas programadas para ese día.

**4. Priorización de tareas**

Utiliza indicadores visuales (por ejemplo, colores o íconos) para identificar rápidamente la urgencia de las tareas.

## Capturas de pantalla
<img width="568" alt="Screenshot 2024-11-19 at 5 07 37 PM" src="https://github.com/user-attachments/assets/1f781f35-f797-49be-850e-9803dcb479aa">

<img width="661" alt="Screenshot 2024-11-19 at 5 08 21 PM" src="https://github.com/user-attachments/assets/9421ce00-fd5b-44ae-9e53-35677cc100b0">

<img width="212" alt="Screenshot 2024-11-19 at 5 08 33 PM" src="https://github.com/user-attachments/assets/86afc778-da23-4ac0-83de-7b73c89c8382">

<img width="465" alt="Screenshot 2024-11-19 at 5 08 53 PM" src="https://github.com/user-attachments/assets/d3fd6d0c-330c-4e00-88c1-365892fc8032">

<img width="617" alt="Screenshot 2024-11-19 at 5 09 12 PM" src="https://github.com/user-attachments/assets/4b21eece-0440-431c-a5fc-2e7b0e425f69">



# Arquitectura
## MVVM (Modelo-Vista-Vista-Modelo)
## El proyecto sigue el patrón MVVM:

**Modelo:** Representa los datos de las tareas y la lógica empresarial. 

**Vista:** Maneja el renderizado de la interfaz de usuario utilizando SwiftUI.

**Vista-modelo:** Actúa como intermediario, gestionando el estado y la lógica entre el modelo y la vista.

# Persistencia de datos
La aplicación utiliza SwiftData para una persistencia de datos ligera y sin complicaciones.

Hoja de ruta

Mejoras futuras para la aplicación:

 **Modo oscuro:** Compatibilidad con temas claro y oscuro.

 **Notificaciones push:** Alertas para recordar tareas pendientes.

 **Categorías de tareas:** Organización de tareas por proyectos o etiquetas.

 **Exportación de datos:** Posibilidad de exportar tareas a formatos externos (por ejemplo, CSV, JSON).

 **Seguimiento de progreso:** Visualización de las tasas de finalización de tareas.

# Contacto

Para consultas o comentarios, contáctame:


## Authors

### Author: Debora Huilen Monteverde
### Email: debora.monteverde97@gmail.com
### GitHub: Debohmonte







