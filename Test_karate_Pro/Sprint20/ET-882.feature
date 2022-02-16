Feature: Estatus vincular cuenta para pago TC (Pull ACH)
Como cliente 
Deseo poder registrar una cuenta de otro banco 
Para realizar el pago de mi tarjeta evo.

Scenario Outline: Registro de Tarjeta con estado: <estadoVinculacion>
Given Me encuentro autenticado en la app
And Me encuentro en la sección Vincular tarjeta
And ingreso los datos
And el estado de la vinculación esta en <estadoVinculacion>
When se hace tab en el boton VINCULAR
Then se envia correo con el estado del proceso
And se muestra Notificaciones con alerta con el titulo: <tituloNotificacion>
And el mensaje de la notificación contiene el texto: <textoNotificacion>
And se hace tab sobre la alarta
And se vulve a cargar la sección Pagar tarjeta 
And se muestra el Estatus: <statusPagarTarjeta>


Examples:
|estadoVinculacion   |tituloNotificacion      |textoNotificacion                |statusPagarTarjeta|
|PENDIENTE           |"Vinculación de cuenta" |"estaen proceso de vinculación"  |"En proceso de vinculación"|
|VINCULADA           |"Cuenta vinculada"      |"ha sido vinculada exitosamente" |"Cuenta vinculada"|



Scenario: Registro de tarjeta con ERROR DE VINCULACIÓN
Given Me encuentro autenticado en la app
And Me encuentro en la sección Vincular tarjeta
And ingreso los datos
And el estado de la vinculación esta en ERROR DE VINCULACIÓN
When se hace tab en el boton VINCULAR
Then se envia correo con el estado del proceso
And se muestra Notificaciones con alerta con el titulo: "Algo paso con la vinculación"
And el mensaje de la notificación contiene el texto: "no se puede vincular la cuenta de ahorros"
And se carga la sección Vinculación cuenta
And se muesrtra el texto Algo paso con la vinculación
And se muestra el boton INTENTAR CON OTRA CUENTA
