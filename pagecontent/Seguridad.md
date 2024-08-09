#### ¿Qué es la Seguridad? 
Es la forma de protección de datos sensibles y vulnerables de usuarios en respuesta a riesgos y amenazas a lo que estos datos están expuestos constantemente.

#####  Pasos considerados para la Seguridad:  A continuación se describen los pasos necesarios para solicitar, validar y utilizar un token para acceder a los recursos FHIR de manera segura: 

######  1.Solicitud de una llave (Token) 
 El primer paso en el proceso de autenticación es la solicitud de un token. Esta solicitud generalmente se realiza mediante una petición HTTPS desde la aplicación cliente al servidor de autorización, proporcionando las credenciales necesarias (como el client ID y el client secret) para obtener el token.

######  2.Entrega de una llave que es un mensaje encriptado llamado acces token 
 El servidor de autorización valida las credenciales proporcionadas por el cliente y se la entrega una apigateway.

###### 3.Envío del recurso más la llave (Token) 
Con el token en mano, entra a la URL de la apigatewat, esta por medio de una función de token introspect evalua que el token entregado. Este encabezado suele tener el formaro Authorization : Bearer <acces token>.

###### 4.Envío del recurso más la llave 
La API FHIR recibe la solicitud junto con el token. Antes de procesar la solicitud, la API verifica la validez del token para asegurarse de que el cliente tiene los permisos necesarios para acceder al recurso solicitado.

###### 5.Respuesta sobre la correspondencia entre el token y el recurso 
La API FHIR valida el token y comprueba que los permisos incluidos en el token son suficientes para acceder al recurso solicitado. Si la validación es exitosa, la API responde positivamente, indicando que el token y el recurso corresponden entre sí.

###### 6.Manejo de tokens no válidos 
Si el token no es válido o no tiene los permisos necesarios para acceder al recurso, la API responde con un mensaje de error. La aplicación cliente debe manejar este error, informando al usuario que no tiene acceso y evitando que la solicitud progrese.

###### 7.Acceso al servidor FHIR con un token válido 
Si el token es válido y tiene los permisos necesarios, la API FHIR permite que la solicitud progrese y el recurso solicitado es accedido o modificado según corresponda. De esta manera, se asegura que solo los clientes autorizados pueden interactuar con el servidor FHIR.

** Este proceso de autenticación y autorización mediante tokens es crucial para mantener la seguridad y privacidad de los datos en un entorno FHIR, garantizando que solo usuarios y aplicaciones legítimas puedan acceder a los recursos FHIR.**


