Feature: Consultar reclamaciones
Como cliente
Deseo visualizar el estatus de mi reclamación
Para saber los avances respecto a mi solicitud

Scenario: Visualizar solicitudes Registradas

Given Ingreso a la app con credenciales correctas
And Tengo solicitudes de ayuda registradas
And Hago click en la opción Soporte
And Se carga la pantalla Soporte
When Hago click en el boton Consulta de Reportes
Then Se carga la interfaz "Solicitudes de ayuda"
And Se muestra las solicitudes  en los últimos 90 dias
And Se muestran Ordenadoordenadas de la más reciente a la más  antigua 


Scenario: Visualizar detalle de solicitud

Given Ingreso a la app con credenciales correctas
And Tengo solicitudes de ayuda registradas
And Hago click en la opción Soporte
And Se carga la pantalla Soporte
And Hago click en el boton Consulta de Reportes
And Se carga la interfaz "Solicitudes de ayuda"
And Muestra las solicitudes registradas en los últimos 90 dias
When Hago click en el link Ver todas
Then Se muestra el detalle de la solicitud

Scenario: Visualizar Consulta de reporte sin solicitudes registradas

Given Ingreso a la app con credenciales correctas
But No tengo solicitudes de ayuda registradas
And Hago click en la opción Soporte
And Se carga la pantalla Soporte
When Hago click en el boton "Consulta de Reportes"
Then Se carga la interfaz "Solicitudes de ayuda"
And No mostrará registros   



