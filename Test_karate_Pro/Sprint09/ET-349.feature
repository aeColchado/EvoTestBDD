Feature: Realizar onboarding al PFM
Como nuevo cliente 
Deseo entender para qué sirve la funcionalidad de PFM 
Para que pueda sacar máximo provecho a esto que me ofrece mi tarjeta


Scenario: Primera vez en control de Gatos pasar una a una las animaciones
Given me encuentro en la sección Actividades recientes
And es la primera vez que ingreso
And hago tab en la opcion Control de Gastos
And se muestra la primera ventana con animaciones
And tiene el texto "El Conocimiento da libertad"
When se hace tab en el boton > (siguiente)
Then se muestra la segunda ventana con animaciones
And tiene el texto "No hay nada que le guste"
When se hace tab en el boton > (Siguiente)
Then se carga la tercera ventana con animaciones
And tiene el texto "Evita sorpresas."
When se hace tab en el boton > (Siguiente)
Then se carga la sección Control de Gastos

Scenario: Primera vez en control de Gatos saltarse las animaciones
Given me encuentro en la sección Actividades recientes
And es la primera vez que ingreso
And hago tab en la opcion Control de Gastos
And se muestra la primera ventana con animaciones
When se hace tab en el boton SALTAR
Then se carga la sección Control de Gastos

Scenario: Segunda vez en Control de Gastos
Given me encuentro en la sección Actividades recientes
And es la segunda vez que ingreso
When hago tab en la opcion Control de Gastos
Then no se muestra animaciones
And se carga la seción Control de gastos