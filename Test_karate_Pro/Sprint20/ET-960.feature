Feature: Respuesta pago TC desde el APP (Pull ACH)
Como cliente 
Deseo tener una opcion in app 
Para realizar el pago de mi tarjeta
y consiste en mostrar el cliente la respuesta de su solicitud de pago


Scenario: Pago de tarjeta exitoso
Given me encuentro autenticado en la app
And realizo el pago de tarjeta
And se muestra la Notiicacion con el texto ¡Tu pago ha sido generado!
When se hace tab sobre la notificación
Then se carga la sección Comprobante de pago 
And se muestra el texto Tu pago a sido exitoso
And se hace tab en el boton FINALIZAR


Scenario: Pago de tarjeta ERRADO
Given me encuentro autenticado en la app
And realizo el pago de Tarjeta
And el proceso de pago no se llego a realizar por <motivoNoProceso>
And se muestra la Notiicacion con el texto ¡Tu pago NO ha sido generado!
When se hace tab sobre la notificación
Then se carga la sección Comprobante de pago 
And se muestra el texto No se pudo procesar el pago
And se muestra el motivo: <motivoNoProcesomensaje>
And se hace tab en el boton INTENTAR CON OTRA CUENTA



|motivoNoProceso        |motivoNoProcesomensaje                 |
|"fondos insufientes"   |"Tu cuenta tiene fondos insuficientes" |
|"cuenta bloqueda"      |"Tu cuenta esta bloqueada"             |
|"cuenta cerrada"       |"tu cuenta ha sido cerrada"            |
|"moneda errada"        |"¡Algo paso!"                          |
|"otro motivo"          |"¡Algo paso!"                          |