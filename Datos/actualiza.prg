********************************************************************************************
* ACTUALIZA.PRG
*
* Código que actualiza las bases de datos locales a la última versión disponible.
*
* Autor: Arturo Ramos
*
********************************************************************************************

ACTIVATE SCREEN 

SET SAFETY OFF 
SET TALK ON 
CLEAR 

CLOSE DATA ALL
CLOSE DATABASES ALL 
CLOSE TABLES ALL 

OPEN DATABASE vfpcongit
VALIDATE DATABASE

? "** ACTUALIZACIONES **"
? "==================================== Versión 0.0.1 (//)"
? "Actualizando: "