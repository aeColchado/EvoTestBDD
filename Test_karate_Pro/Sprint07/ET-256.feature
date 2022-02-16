Feature: Visualizacion del cashback - estado de cuenta
    Como cliente 
    Deseo tener un lugar donde visualizar el cashback que he generado 
    Para saber que monto me he ganado

    Mostrar el monto de cashback en:
    Cuerpo del correo donde va adjuntado el estado de cuenta
    Dentro del cuerpo del PDF

Scenario: Visualización cashback en correo de notificación de Estado de Cuenta
    Given Cliente con movimientos cashback
    When Se envia el correo de notificación de estado de cuenta
    Then en el mensaje no debe visualizarse el texto "Felicitaciones este periodo ganaste en cashback RD$"

Scenario: Visualización cashback en correo de notificación de Estado de Cuenta cliente no tiene movimientos tipo cashback
    Given Cliente sin movimientos cashback
    When Se envia el correo de notificación de estado de cuenta
    Then en el mensaje no debe visualizarse el metextonsaje "Felicitaciones este priodo ganaste en cashback RD$"


Scenario: Visualización cashback en de Estado de Cuenta
    Given Cliente con movimientos cashback
    When Se visualiza el estado de cuenta
    Then en la sección Resumen de lo que paso en e periodo debe mostrarse el item Cahsback ganado
    And el monto debe ser la suma de sus movimientos tipo cashback

    
Scenario: Visualización cashback en de Estado de Cuenta cliente sin movimientos cashback
    Given Cliente sin movimientos cashback
    When Se visualiza el estado de cuenta
    Then en la sección Resumen de lo que paso en e periodo debe mostrarse el item Cahsback ganado
    And el monto debe ser 0.00


