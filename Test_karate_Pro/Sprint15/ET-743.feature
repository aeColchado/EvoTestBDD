Feature: Confirmar transaccion consumo no reconocido (Transaccion chip no presente)
Como cliente
Deseo visualizar confirmación de reclamación
Para tener información de las transacciones informadas

Scenario: Visualizar confirmación de reclamación registrada previamente
Given Registre 1 transacciones para una reclamación exitosamente
And Me encuentro en la pantalla Reporte de transacción
When Hago click en el boton FINALIZAR
Then Se muestra la sección Actividades recientes
And la transacción registrada muestra la etiqueta "No reconocido"

Scenario: Visualizar confirmación de reclamación registrada previamente con varias transacciones
Given Registre 3 transacciones para una reclamación exitosamente
And Me encuentro en la pantalla Reporte de transacción
When Hago click en el boton FINALIZAR
Then Se muestra la sección Actividades recientes
And las transacciones registradas muestran la etiqueta "No reconocido"

Scenario: Visualización detalle de transacción registrada previamente en reclamación 
Given Registre 1 transacción para una reclamación exitosamente
And Me encuentro en la pantalla Reporte de transacción
And Hago click en el boton FINALIZAR
And Se muestra la sección Actividades recientes
And la transacción registrada muestra la etiqueta "No reconocido"
When hago click sobre la transacción
Then Se carga la pantalla Detalle de transacción
And  El boto REPORTAR TRANSACCION esta deshabilitado
And Se muetsra el mensaje "Esta transacción se encuentra reportada"

Scenario: Visualización detalle de transacción registrada previamente en reclamación 
Given Registre 3 transacciones para una reclamación exitosamente
And Me encuentro en la pantalla Reporte de transacción
And Hago click en el boton FINALIZAR
And Se muestra la sección Actividades recientes
And la transacción registrada muestra la etiqueta "No reconocido"
When hago click sobre la transacción
Then Se carga la pantalla Detalle de transacción
And  El boto REPORTAR TRANSACCION esta deshabilitado
And Se muetsra el mensaje "Esta transacción se encuentra reportada"