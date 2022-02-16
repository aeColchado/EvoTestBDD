Feature: Asignar Spending Limit
Como cliente 
Quiero tener la capacidad de modificar el límite de mi tarjeta 
Para tener un mejor control de mis gastos
 
Scenario: Deslizar slider hacia los lados 
Given ingreso a la app 
And doy clic al botón "Ajustes"
And selecciono la opción "Ajustar límite"
When se visualiza el slider
And se desliza el puntero para la derecha o izquierda
Then el valor cambia en intervalos de RD1000
And se visualiza el monto seleccionado en miles en la parte superior del slider
 
Scenario: Visualizar slider de usuario sin consumo realizado 
Given no tengo consumos realizados
And tengo un crédito otorgado de RD15000
And ingreso a la app 
When voy a la opción "Ajustes"
And selecciono la opción "Ajustar límite"
Then se visualiza un slider con el valor mínimo en RD5000
And el valor máximo en RD15000
 
Scenario: Visualizar slider de usuario con consumo mayor a RD5000 
Given tengo consumos realizados por RD7000 
And tengo un crédito otorgado de RD15000
And ingreso a la app 
When doy clic al botón "Ajustes"
And selecciono la opción "Ajustar límite"
Then se visualiza un slider con el valor mínimo en RD7000
And el valor máximo en RD15000
 
Scenario: Ajustar límite de crédito, visualizar cambios en pantalla de ajustes 
Given ingreso a la app
And doy clic al botón "Ajustes"
And selecciono la opción "Ajustar límite"
When selecciono un valor dentro del rango
And doy clic al botón "Ajustar límite"
Then retrocede a la pantalla de ajustes
And muestra mensaje "TU LÍMITE HA SIDO CAMBIADO"
And se visualiza el monto seleccionado en la opción mostrada "Ajustar el límite"

Scenario: Ajustar límite de crédito, visualizar cambios en pantalla inicial 
Given ingreso a la app
And doy clic al botón "Ajustes"
And selecciono la opción "Ajustar límite"
When selecciono un valor dentro del rango
And doy clic al botón "Ajustar límite"
And voy a la pantalla inicial
Then se actualiza el valor del disponible
And se ajuste al porcentaje de acuerdo al nuevo límite



