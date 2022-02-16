Feature: [Botón consulta datos TC] Cambiar animación deslizar la TC

Scenario: Ver datos TC
    Given me encuentro autenticado en la app
    When hago tab sobre el boton Consultar datos TC
    Then se muestra los datos del cliente
    And se muestra los datos de la tarjeta
    