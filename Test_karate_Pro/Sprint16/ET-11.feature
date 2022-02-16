Feature: Ver score de comportamiento financiero
Como cliente 
Deseo ver un indicador de la salud de mis finanzas 
Para poder tomar mejores decisiones en relación con el uso de mi dinero

Indicadores de qué es un score:

Antes
Bueno [92-100] El experto
Medio (85 - 91)  El aprendiz
Regular (77 - 84) El ingenuo

Bueno [92-100] El experto
Medio [85 - 92)  El aprendiz
Regular [1 - 85) El ingenuo

¿que pasa si el puntaje es menor a 77?
Definir el score

Scenario: Visualización Salud Financiera
Given me encuentro autenticado en la app
And puntaje del indicador es <puntajeIndicador>
And me encuentro en la sección control de gastos
When se hace tab en la opcion, "Conoce tu indicador de salud Financiera"
Then se muestra la sección Salud Financiera
And el indicador marca la la categoria <scoreFinanciero>
And se muestra el mensaje <mensajeCard>

Examples:
| puntajeIndicador | scoreFinanciero | mensajeCard   |
| 100              | Bueno           | "El experto"  |
| 92               | Bueno           | "El experto"  |
| 91.99            | Medio           | "El aprendiz" |
| 85               | Medio           | "El aprendiz" |
| 84.99            | Regular         | "El ingenuo"  |
| 77               | Regular         | "El ingenuo"  |
| 76.99            | Undefined       | "Undefined"   |



Scenario: Muestra mes para reporte Comportamiento Financiero
Given me encuentro autenticado en la app
And me encuentro en la sección Control de gastos
When se hace tab sobre el combo mes
Then se muestra un layout con los 3 ultimos meses hacias atrás.


Scenario: Visualizar gastos de acuerdo al mes seleccionado
Given me encuentro autenticado en la app
And me encuentro en la sección Control de gastos
And se hace tab sobre el combo mes
And se muestra un ventana emergente con los 4 ultimos tres meses.
When se selecciona el mes
Then se carga los datos de dicho mes en la sección Control de gastos


Scenario: Visualizar leyenda de lo colores de Score financiero
Given me encuentro autenticado en al app
And me encuentro en la sección Salud Financiera
When se hace tab sobre el icono de información al lado del mensaje de nivel
Then se nuestra ventana emergente con la definición de cada nivel

Scenario: Visualizar ventana de como se calcula puntaje
Given me encuentro autenticado en al app
And me encuentro en la sección Salud Financiera
When se hace tab sobre el boton  "i ¿Cómo se cálcula?"
Then se nuestra ventana emergente ¿Cómo se cálcula?

Scenario: Visualizar Evo TIPS (NO)
Given me encuentro autenticado en al app
And me encuentro en la sección Salud Financiera
And se hace tab sobre el boton ¿Sabes realmente en que gastas tu dinero?
And se muestra popup con la el mensaje ¿Sabes realmente en que gastas tu dinero?
When se hace tab sobre el boton "NO"
Then se muestra sección Evo TIPS 
And se puede leer "Es momento de mejorar tus hábitos financieros"


Scenario: Visualizar Evo TIPS (SI)
Given me encuentro autenticado en al app
And me encuentro en la sección Salud Financiera
And se hace tab sobre el boton ¿Sabes realmente en que gastas tu dinero?
And se muestra popup con la el mensaje ¿Sabes realmente en que gastas tu dinero?
When se hace tab sobre el boton "SI"
Then se muestra sección Evo TIPS 
And se puede leer "¡Muy bien! Estas en el camino correcto"