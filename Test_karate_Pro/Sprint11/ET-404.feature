Feature:[Control de gastos] - Obtener Tips de Manejo de Finanzas
Como cliente 
deseo recibir tips sobre finanzas personales 
para que me motiven a tener un mejor manejo financiero.

Scenario: Obtener Tips de Manejo de Finanzas ‘Si’
Given estoy logueado en la app
When voy al menú "Control de gastos"
When se me muestra notificación ‘Sabes realmente en que gastas tu dinero’
And doy clic en la notificación ‘SI’
Then visualizo ‘Evo tips’ del pago de mi tarjeta en la aplicación EVO
And doy clic en la notificación ‘Entendido’
Then puedo visualizar que se checkca el tip como aceptado

 

Scenario: Obtener Tips de Manejo de Finanzas ‘No’
Given estoy logueado en la app
When voy al menú "Control de gastos"
When se me muestra notificación ‘Sabes realmente en que gastas tu dinero’
And doy clic en la notificación ‘No’
Then visualizo nuevamente la pantalla ‘Control de gastos’