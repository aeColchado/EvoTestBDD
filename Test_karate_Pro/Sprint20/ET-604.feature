Feature: Tarifario (Regulatorio)
Como cliente
Deseo tener un espacio donde poder consultar el tarifario de servicios y el contrato suscrito 
Para el momento de solicitar la tarjeta


Scenario: Cargar tarifario
Given me encuentro atenticado en la app
When hago tab en la sección tarifario
Then se carga el tarifario en formato PDF
And los datos que muestra son correspondientes al registro en bloqueda


Scenario: Primer envio de estado de cuenta
Given me encuentro autenticado en la app
And aun no genero el estado de cuenta
When genero mi primer estado de cuenta
And lo envio por correo electrónico
Then se debe generar un tarifario en PDF
And adjuntarse al correo junto al estado de cuenta