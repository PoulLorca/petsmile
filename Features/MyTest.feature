Feature: Realizacion de casos ingresando nombre de usuario y contraseña correctos
Scenario: Ingresar nombre de usuario y contraseña correctos.
Given Abrir Chrome
When ingresa Username "test" y Password "test"
Then inicia sesion

Scenario: ngresar nombre de usuario y contraseña incorrecto.
Given Abrir Chrome
When ingresa Username "asd" y Password "asdasd"
Then inicia sesion  
      
Scenario: Ingresar valores vacíos.
Given Abrir Chrome
When ingresa Username "" y Password ""
Then inicia sesion  