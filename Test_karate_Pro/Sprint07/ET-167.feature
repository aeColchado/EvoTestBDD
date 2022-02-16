Feature: Notificación COMPRA cashback
Como cliente 
Deseo recibir notificaciones correspondientes a la generación de cashback 
Para saber que monto me he ganado.

Scenario: Visualizar cashback en notificacion
Given Realice una compra
And La compra corresponde generar cashback
When Se muestra la notificación
Then En la notificación se muestra el texto "cashback es RD$"
    
Scenario: Compra que no genera cashback
Given Realice una compra
And La compra no corresponde generar cashback
When Se muestra la notificación
Then En la notificación no muestra el texto "cashback"





