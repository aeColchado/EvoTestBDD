Feature: Pagar TC desde el APP (Pull ACH)
Como Cliente
Deseo pagar mi tarjeta desde la app
Pra cuando lo considere necesario.

Scenario Outline: Cliente con cuenta vinculada paga <tipoPago>
Given Me encuentro autenticado en la aplicación
And me encuentro en la sección Pagar tu tarjeta
And tengo una cuenta vinculada
And por default se tiene selecconado el tipo de pago Monto total
And selecciono tipo de pago <tipoPago>
When hago tab en el boton PAGAR
Then debe cargar la sección Pagar tarjeta
And debe mostrarse el mensaje Tu pago esta en proceso
And se cierra el mensaje
And Vuelve a la sección Pagar Tarjeta

Examples:
|tipoPago       |
|MontoTotal     |
|MontoFechaCorte|
|MontoMinimo    |

Scenario: Cliente con cuenta vinculada paga otro Monto
Given Me encuentro autenticado en la aplicación
And me encuentro en la sección Pagar tu tarjeta
And por default se tiene selecconado el tipo de pago Monto total
And selecciono tipo de pago Otro Monto
And Se muestra modal Otro monto
And se Registra un monto entre 0 y 1000
When hago tab en el boton PAGAR
Then debe mostrarse el mensaje Tu pago esta en proceso
And Vuelve a la sección Pagar Tarjeta

Scenario: Cliente sin cuenta vinculada intnta Pagar
Given Me encuentro autenticado en la aplicación
And me encuentro en la sección Pagar tu tarjeta
And por default se tiene selecconado el tipo de pago Monto total
And No tengo cuenta vinculada para el pago
When hago tab en el boton PAGAR
Then se muestra mensaje en Para pagar vincula tu cuenta de ahorros de cualquier banco




