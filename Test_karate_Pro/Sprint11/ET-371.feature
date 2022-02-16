Feature: Recibir alerta ultima día de pago
Como cliente 
deseo recibir notificaciones al acercase mi fecha limite de pago 
para evitar mora y cargos adicionales

Scenario: Recibir alerta ultimo día de pago
Given estoy logueado en la app
When estoy en el último día de la fecha de pago
Then recibo notificación “Es hora de pagar tu tarjeta”

Scenario: Dar clic a la notificación de último día de pago, usuario logeado
Given estoy logueado en la app
And recibo notificación “Es hora de pagar tu tarjeta”
When doy clic a la notificación
Then me redirige a la pantalla de información de pago

Scenario: Dar clic a la notificación de último día de pago, usuario no logeado
Given estoy logueado en la app
And recibo notificación “Es hora de pagar tu tarjeta”
When doy clic a la notificación
Then me redirige al login de la app
When realizo el login
Then me redirige a la pantalla de información de pago

Scenario Recibir alerta 3 días antes del pago
Given estoy logueado en la app
When estoy a 3 día de la fecha de pago
Then recibo notificación “Te quedan 3 días para pagar”

Scenario Dar clic a la notificación de 3 días para el pago, usuario logeado
Given estoy logueado en la app
And recibo notificación “Te quedan 3 días para pagar”
When doy clic a la notificación
Then me redirige a la pantalla de información de pago

Scenario Dar clic a la notificación de 3 días para el pago, usuario no logeado
Given estoy logueado en la app
And recibo notificación “Te quedan 3 días para pagar”
When doy clic a la notificación
When realizo el login
Then me redirige a la pantalla de información de pago

 