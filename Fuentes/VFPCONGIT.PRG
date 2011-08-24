* *********************************************************
* *
* * 22/08/2011            VFPCONGIT.DBC            17:07:19
* *
* *********************************************************
* *
* * Descripci�n:
* * Este programa lo ha generado autom�ticamente GENDBC
* * Versi�n 2.26.67
* *
* *********************************************************


DisplayStatus([Creando base de datos...])
CLOSE DATA ALL
CREATE DATABASE 'VFPCONGIT.DBC'
DisplayStatus([Creando tabla USUARIOS...])
MakeTable_USUARIOS()
DisplayStatus([Terminado.])

FUNCTION MakeTable_USUARIOS
***** Configuraci�n de tabla para USUARIOS *****
CREATE TABLE 'USUARIOS.DBF' NAME 'USUARIOS' (IDUSUARIO I NOT NULL, ;
                       USUARIO C(20) NOT NULL, ;
                       CONTRASENA C(100) NOT NULL, ;
                       NOMBRE C(80) NOT NULL, ;
                       PERFIL I NOT NULL DEFAULT 1)

***** Crear cada �ndice para USUARIOS *****
SET COLLATE TO 'MACHINE'
ALTER TABLE 'USUARIOS' ADD PRIMARY KEY IDUSUARIO TAG IDUSUARIO

***** Cambiar propiedades para USUARIOS *****
DBSETPROP('USUARIOS.PERFIL', 'Field', 'DisplayClass', "Spinner")
ENDFUNC


FUNCTION DisplayStatus(lcMessage)
WAIT WINDOW NOWAIT lcMessage
ENDFUNC