Feature: Ver gasto por categorías en Estado de Cuenta
como cliente que usa de forma frecuenta la tarjeta de crédito 
quiero ver en mi estado de cuenta cómo me gasté mi dinero el último mes 
para poder controlar mis gastos el próximo

Scenario: Visualización de Categorias en Resumen de Estado de Cuenta.
Given Persona con varios movimientos
And movimientos en distntas categorias
When se visualiza el estado de cuenta
Then se muestran las 4 categorias con mayor consumo
And se muestran ordenados de mayor a menor de izquierda a derecha


