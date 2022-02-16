Feature: Visualizar gastos por categorías - MVP
Como cliente 
Deseo entender en qué me estoy gastando mi dinero 
Para poder tomar mejores decisiones y administrarlo mejor.

Scenario: Visualización de gastos por categoria
Given Cliente con gastos registrados
And Se encuentra en la sección actividades recientes
When Ingresa a la opción de Control de gastos
Then Se muestra listado los gastos, ordenaos por monto
And Se muestra un grafico tipo aro, representando los gastos

Scenario: Visualización de gastos por categoría mismo monto
Given Cliente con gastos registrados
And Se encuentra en la sección actividades recientes
When Ingresa a la opción de Control de gastos
Then Se muestra listado los gastos, ordenaos por monto
And Se muetrsan ordenados alfabeticamente los gastos del mismo monto
And Se muestra un grafico tipo aro, representando los gastos

Scenario: Visualización de categorias cliente no presenta gastos
Given Cliente sin gastos registrados
And Se encuentra en la sección actividades recientes
When Ingresa a la opción de Control de gastos
Then Se muestra sección Control de gastos


