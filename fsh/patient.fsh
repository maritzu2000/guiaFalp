
Profile : Paciente 
Parent :  PacienteCl
Description: "Este es un perfil donde se encontrarán los datos personales del paciente"

* active 1..1
 
* name[NombreOficial]  1..1
   
  * family 1..1 
    

* identifier    1..1 
  
* birthDate  1..1
  
* extension contains SexoBiologico named sexoBiologico 1..1
 





