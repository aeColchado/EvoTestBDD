Feature: Ver gasto por categorías en Estado de Cuenta] - Incluir leyenda
Como cliente que usa de forma frecuenta la tarjeta de crédito 
quiero ver en mi estado de cuenta cómo me gasté mi dinero el último mes 
para poder controlar mis gastos el próximo

Incluir leyenda de categorias de gastos
Si el porciente de monto gastado es menor al 8%, no se debera mostrar el icono y porcentaje en la grafica.
Las categorias se deben mostrar de de izquieda a derecha, de mayor a menor tomando como base el monto


Scenario: Visualizar gastos en estado de cuenta mayores a 6%
Given Cliene con varios movimientos en el periodo
And 60% en Tecnología
And 14% en Transporte
And 10% en Mascotas
And 10% en Impuestos
When se visualiza el estado de cuenta
Then 60% en Tecnología
And 14% en Transporte
And 10% en Mascotas
And 10% en Impuestos 
And el resto no debe mostrarse en el estado de cuenta