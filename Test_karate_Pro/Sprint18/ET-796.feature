Feature:Envio formulario de reclamación al correo del cliente 
 

Scenario: Envio de relacmación al correo del cliente en PDF
Given Me encuentro autenticado en la app
And se acaba de registrar un Reporte e transacción sin errores
And se hace tab en el boton FINALIZAR
And se muestra Frame ¿desea recibir la reclamación?
Then se hace tab en ENVIAR AL CORREO
When se envia coreo con PFD adjunto

Scenario: Descarga de reclamaciones en PDF
Given Me encuentro autenticado en la app
And se acaba de registrar un Reporte e transacción sin errores
And se hace tab en el boton FINALIZAR
And se muestra Frame ¿desea r
ecibir la reclamación?
Then se hace tab en DESCARGAR EN PDF
When se descarga en el equipo el PFD

Scenario: Cerrar ventana sin eviar PDF
Given Me encuentro autenticado en la app
And se acaba de registrar un Reporte e transacción sin errores
And se hace tab en el boton FINALIZAR
And se muestra Frame ¿desea recibir la reclamación?
Then se hace tab en cerrar la pantalla
When se vuelve a la sección de actividades recientes
