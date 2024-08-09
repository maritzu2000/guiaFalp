#### Proceso, transacciones y casos de uso
### Descripción General
En esta página se definirán los casos de uso de intercambio de datos, que son procesos generados por  intercambio de datos  desde repositorio externo  hacía el repositorio FALP y viceversa. Los casos de uso son los siguientes:


#### Caso 1: Guardar Documento de entrada/salida

* Diagrama
<br>

<div aling="center">
  {% include Caso1.svg %}
</div>
<br clear= "all"/>

<br>

* Detalle 
 * El sistema **Repositorio_externo** envia un documento de entrada/salida para ser guardados al **Repositorio_Falp**
 * El sistema **Repositorio_externo** envia un set de dataton que contiene:*Datos personales del paciente*,*Datos clínicos del paciente*
* El sistema **Repositorio_FALP** valida que los datos cumplan con estandar y los almacena.

* Recursos
  * Envío: Documento de datos personales y clínicos del paciente
  * Respuesta: Documento Guardado en el repositorio

* Operación: 
En esta sección se utiliza la operación  **POST**, la cual será implementada más adelante.

 
 


#### Caso 2: Leer Documento de entrada/salida
* Diagrama
<br>

<div aling="center">
  {% include Caso2.svg %}
</div>
<br clear= "all"/>

<br>

* Detalle 
 * El sistema **Repositorio_externo** envia un documento de entrada/salida para ser leído por el  **Repositorio_Falp**
 * El sistema **Repositorio_externo** envia un set de dataton que contiene:*Datos personales del paciente*,*Datos clínicos del paciente*
* El sistema **Repositorio_FALP** valida que los datos cumplan con estandar y los almacena.

* Recursos
  * Envío: Documento de datos personales y clínicos del paciente
  * Respuesta: Lectura de documento en el respositorio

* Operación: 
  Para el caso particular se usara la búsqueda de inclusión por medio de la identificación del paciente, condición asociados a este paciente y las fechas solicitadas correspondientes.
```
GET: {urlBase}/Composition?Patient:identifier={runPaciente}&date={gt|et|lt}
```



#### Caso 3 : Actualizar  Documento de entrada/salida

* Diagrama
<br>

<div aling="center">
  {% include Caso3.svg %}
</div>
<br clear= "all"/>

<br>

* Detalle 
 * El sistema **Repositorio_externo** envia un documento de entrada/salida para ser actualizado por el  **Repositorio_Falp**
 * El sistema **Repositorio_externo** envia un set de dataton que contiene:*Datos personales del paciente*,*Datos clínicos del paciente*,*Datos del procedimiento y profesional encargado de tal examen*
* El sistema **Repositorio_FALP** valida que los datos cumplan con estandar y los almacena para posteriormente ser enviados.

* Recursos
  * Envío: Documento de datos personales y clínicos del paciente
  * Respuesta: Actualización de Datos en el repositorio

* Operación: 
 En esta sección se utiliza la operación  **PUT**, la cual se implementará más adelante.


