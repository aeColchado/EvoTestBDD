Feature: Configurar notificaciones
Como cliente 
Deseo tener la capacidad de habilitar y deshabilitar los diferentes tipos de notificaciones 
Para tener una mejor experiencia de uso

Scenario: Desactivación de notificaciones
Given Me encuentro la sección Mi perfil
And hago tab en la opción Configurar notificaciones
And se carga la sección Notificaciones
And se encuentra activa la opción de Notificaciones
When se desmarca la opción de Notificaciones
Then Se desmarca las notificaciones de Compras & Pagos
And se desmarca las notificaciones de Recodatorios

Scenario: Activación de Notificaciones
Given Me encuentro la sección Mi perfil
And hago tab en la opción Configurar notificaciones
And se carga la sección Notificaciones
And se encuentra desactivada la opción de Notificaciones
When se marca la opción de Notificaciones
Then Se marca las notificaciones de Compras & Pagos
And se marca las notificaciones de Recodatorios

Scenario: Desactivación de Notificaciones cuando hay algunas notificaciones activas
Given Me encuentro la sección Mi perfil
And hago tab en la opción Configurar notificaciones
And se carga la sección Notificaciones
And se encuentra activa la opción de Notificaciones
And se encuentra desmarcada las notificaciones de Compras & Pagos
And se encuentra marcada la opcion de Recordatorios
When se desmarca la opción de Notificaciones
Then se desmarca la opción de Recordatorios
And permanece desmarcada la opcion de Compras & Pagos


Scenario: Desactivar la Opcion de Correo Electronico de la sección Recordatorios
Given Me encunetro en la sección Notificaciones
And se encuentra macada la opción Notificaciones
And en la categoria Recordatorios se encuentra encuentra activa la opción de Correo Electrónico
And se encuentra inactiva la opción Notifificaciones
When se marca en la categoria Recordatorios la opción de Correo Electrónico
Then se deasctva la desactiva la opción de Correo Electronico
And permanece inactiva la opcion de Notificaciones




