Feature: Reportar cargo por mora e interes
Como cliente
Deseo saber el monto de los conceptos de MORA e INTERES
Para cuando tenga que realizar un pago

Scenario Outline: Reportar cargo <tipocargo>
Given me encuentro autenticado en la aplicación
And me encuentro en la sección Actividades Recientes
And tengo un cargo del tipo <tipocargo>
And veo el detalle de la rasacción
When se carga sección Detalla de transacción
Then se muestra el mensaje cargo por <tipocargo>
And se muestra el boton REPORTAR CARGO


|tipocargo|
|mora     |
|intereses|









