CLEAR MEMORY

ON ERROR DO ERROR.prg WITH ;
	ERROR( ), MESSAGE( ), MESSAGE(1), PROGRAM( ), LINENO( )

PUBLIC cPath, cDefa
cPath = SET('Default') + CURDIR() + 'Datos, '+ ;
	SET('Default') + CURDIR() + 'Interface, '+ ;
	SET('Default') + CURDIR() + 'USR'

cDefa = SET('Default') + SYS(2003)

****************  Permisos, versiones y configuración
PUBLIC cDerechoA, cLicenciaA, cSisName, cSisVer
cDerechoA = ""
cLicenciaA = ""
cSisName = "Pruebas de CV con Git y GitHub"
cSisVer = "0.0.x"
cCabeza = cSisName + ' ver. ' + cSisVer + ' - ' + cDerechoA
MODIFY WINDOW SCREEN TITLE cCabeza NOCLOSE
ZOOM WINDOW (cCabeza) MAX
****************

*!*		configuración
SET PATH TO (cPath)
SET DEFAULT TO (cDefa)
SET DATE TO DMY
SET DELETED ON
SET ESCAPE OFF
SET TALK OFF
SET CENTURY ON
SET REPROCESS TO 10	&& Para red

RESTORE FROM config.rep ADDITIVE 	&& Variables de configuración
*SET PROCEDURE TO utileria.prg		&& Procedimientos de utilería

*_SCREEN.PICTURE = 'claro10.jpg'

DO men_ini.mpr && Menú

*DO FORM inicio.scx  && Formulario de inicio
*DO FORM acceso.scx  && Formulario de acceso

READ EVENTS
