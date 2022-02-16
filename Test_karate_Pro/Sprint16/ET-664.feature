Feature: [Reclamaciones] - Reportar desacuerdo
Como cliente 
deseo reportar que está en desacuerdo con el decisión final de la reclamación
Para que el banco vuelva a revisar su caso


Scenario: Reportar reclamación sin archivos adjuntos
Given me encuentro autenticado en la app
And ingreso a la sección Soporte
And se hace tab en la opción Reportes y solicitudes
And se hace tab en la opción Reportes
And se muestra la sección Reportes con almenos un Registro
And se hace tab en el link Ver todas del Registro
And se carga la sección Detalle reporte
And se hace tab en la opción   NO ESTOY DE ACUERDO
And se carga la sección Reclamar respuesta
And se ingresa en el textbox "test001 validación datos"
And se hace tab sobre ENVIAR REVISIÓN
And se carga la pantalla reporte de transacciones
When se hace tab sobre el boton FINALIZAR
Then se carga la pantalla de Reportes
And se hace tab sobre el link Ver todas del registro al que se creo reclamación
And se carga la pantalla Detalle reporte
And se puede leer Detalle reclamo de respuesta

Scenario: Reportar reclamación sin datos adicionales
Given me encuentro autenticado en la app
And ingreso a la sección Soporte
And se hace tab en la opción Reportes y solicitudes
And se hace tab en la opción Reportes
And se muestra la sección Reportes con almenos un Registro
And se hace tab en el link Ver todas del Registro
And se carga la sección Detalle reporte
And se hace tab en la opción   NO ESTOY DE ACUERDO
And se carga la sección Reclamar respuesta
And se carga archivos de sustento
And se hace tab sobre ENVIAR REVISIÓN
And se carga la pantalla reporte de transacciones
When se hace tab sobre el boton FINALIZAR
Then se carga la pantalla de Reportes
And se hace tab sobre el link Ver todas del registro al que se creo reclamación
And se carga la pantalla Detalle reporte
And se puede leer Detalle reclamo de respuesta


Scenario: Reportar reclamación con datos adicionales y archivo adjunto
Given me encuentro autenticado en la app
And ingreso a la sección Soporte
And se hace tab en la opción Reportes y solicitudes
And se hace tab en la opción Reportes
And se muestra la sección Reportes con almenos un Registro
And se hace tab en el link Ver todas del Registro
And se carga la sección Detalle reporte
And se hace tab en la opción   NO ESTOY DE ACUERDO
And se carga la sección Reclamar respuesta
And se ingresa en el textbox "test002 validación datos"
And se carga archivos de sustento
And se hace tab sobre ENVIAR REVISIÓN
And se carga la pantalla reporte de transacciones
When se hace tab sobre el boton FINALIZAR
Then se carga la pantalla de Reportes
And se hace tab sobre el link Ver todas del registro al que se creo reclamación
And se carga la pantalla Detalle reporte
And se puede leer Detalle reclamo de respuesta


Scenario: Visualizar detalle de Registro de desacuerdo
Given se registro un desacuerdo sin Problemas
And nos encontramos en la pantalla Detalle de reporte
When se hace tab sobre el link ver todas del primer registro
Then se despliega el detalle del reclamo registrado
And se muetsra los movimientos reportados 
And se hace tab en el link ver menos 
And se encoge el acordeon detalle de la reclamación




