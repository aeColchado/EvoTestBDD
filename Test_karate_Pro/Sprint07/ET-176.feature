Feature: Barra navegación menu Configuración
Como cliente
Deseo acceder a una barra de navegación
Para acceder a diferentes opciones de configuración


Scenario: Visualiza barra de navegación Mi Perfil
    Given Ingreso a la secion Actividades recientes
    And se visualiza en la parte inferior derecha Mi perfil
    When se hace click en la opción Mi perfil
    Then Se carga la sección Mi perfil
    And se muestra la opción Configurar notificaciones
    And se muestra la opción Modo de atenticación
    And se muestra la opción Información del producto
    And se muestra la opción desvincular dispositivo
    And se muestra la opción Invitar a un amigo
    And se muestra la opción Feedback
    And se muetsra la opción Soporte


Scenario: Funcionalidad boton Salir de seccion Mi perfil 
    Given Ingreso a la secion Actividades recientes
    And se visualiza en la parte inferior derecha Mi perfil
    And se hace click en la opción Mi perfil
    And Se carga la sección Mi perfil
    And se muestra la opción Configurar notificaciones
    And se muestra la opción Modo de atenticación
    And se muestra la opción Información del producto
    And se muestra la opción desvincular dispositivo
    And se muestra la opción Invitar a un amigo
    And se muestra la opción Feedback
    And se muetsra la opción Soporte
    When se hace click en el boton Salir
    Then se carga la sección Actividades Recientes




