Feature: Reposicion tarjeta [Perdida]
Como cliente que he perdido mi tarjeta 
quiero bloquear mi tarjeta permanentemente y obtener una nueva 
para poder seguir utilizandola.

Scenario: Registro de solicitud para reposición de tarjeta exitoso
Given Me encuentro logueado en la app
And Estoy en la seccion Actividades recientes
And Se hace tab en el boton Soporte
And Se carga la sección Soporte
And Se hace tab sobre el row Problemas con mi tarjeta
And Se muestra la opción Reposición de tarjeta
And Se hace tab sobre la opción Reposición de tarjeta
And Se muestra el cuadro de Dialogo con titulo ¿Quieres solicitar la reposicion de tu Tarjeta?
And se hace tab sobre el link Perdí mi tarjeta
And Se muestra la sección Reposición de tarjeta
And Se hace tab sobre el boton "ESTOY DE ACUERDO"
And Se muestra la sección Reposición de tarjeta
And Se ingresa los datos Dirección de envío
And Se ingresa los datos Información de Contacto
And Se ingresa los datos Preferencia de horario
And Se ingresa los datos Detalles adicionales
And Se hace tab en el boton "CONTINUAR"
And Se carga la sección Entrega tarjeta envío
And Se verifica los datos
And se hace tab en el bton "CONFIRMAR ENVÍO"
And Se carga pantalla ¡Todo listo!
When Se hace tab sobre el boton "ENVIAR SOLICITUD"
Then Se muestra sección Reporte de transacción


Scenario: Ingreso de datos en sección Reposición de Tarjeta - Falta Dirección de envio
Given Me encuentro en la sección Reposición de tarjeta
And Se desmarca la dirección de envio
And Se selecciona Información de Contacto
And Se selecciona Preferncia de horario
And No se registra Detalles adicionales
When Se hace tab en el boton "CONTINUAR" 
Then 


Scenario: Ingreso de datos en sección Reposición de Tarjeta -Información de Contacto
Given Me encuentro en la sección Reposición de tarjeta
And Se selecciona la dirección de envio
And Se desmarca Información de Contacto
And Se selecciona Preferncia de horario
And No se registra Detalles adicionales
When Se hace tab en el boton "CONTINUAR" 
Then 



