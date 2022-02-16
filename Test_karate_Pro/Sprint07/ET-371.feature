Feature: Recibir alerta de fecha de pago cercana
Como cliente 
Deseo recibir notificaciones al acercase mi fecha limite de pago 
Para evitar mora y cargos adicionales.

Scenario: Alerta de pago en el día programado
    Given La fecha de pago de tarjeta es hoy
    And El pago esta pendiente de abono
    When Se ejecuta el proceso de alertas
    Then Se muestra notificación con el texto "Es hora de pagar tu tarjeta"

Scenario: Alerta de pago en el día programado con pago ya abonado
    Given La fecha de pago de tarjeta es hoy
    And El pago ya fue abonado
    When Se ejecuta el proceso de alertas
    Then no se debe mostrar notificación de pago cercano.

Scenario: Alerta de pago 3 dias antes del día programado
    Given La fecha de pago de tarjeta es en 3 días
    And El pago esta pendiente de abono
    When Se ejecuta el proceso de alertas
    Then Se muestra notificación con el texto "te quedan 3 días para pagar"

Scenario: Alerta de pago 3 dias antes del día programado con pago ya abonado.
    Given La fecha de pago de tarjeta es en 3 días
    And El pago ya fue abonado
    When Se ejecuta el proceso de alertas
    Then no se debe mostrar notificación de pago cercano

Scenario: Redireccionamiento sobre Alerta de pago en el día programado
    Given La fecha de pago de tarjeta es hoy
    And El pago esta pendiente de abono
    And Se ejecuta el proceso de alertas
    And Se muestra notificación con el texto "Es hora de pagar tu tarjeta"
    When Se hace tab en el mensaje de alerta
    Then Se muestra la sección Pagar tu tarjeta
    And se carga el monto a pagar

Scenario: Redireccionamiento sobre Alerta de pago 3 dias antes del día programado
    Given La fecha de pago de tarjeta es en 3 días
    And El pago esta pendiente de abono
    And Se ejecuta el proceso de alertas
    And Se muestra notificación con el texto "Es hora de pagar tu tarjeta"
    When Se hace tab en el mensaje de alerta
    Then Se muestra la sección Pagar tu tarjeta
    And se carga el monto a pagar


