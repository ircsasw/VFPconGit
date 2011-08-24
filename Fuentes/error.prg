*!*	Para controlar errores en tiempo de prueba
PARAMETER merror, MESS, mess1, mprog, mlineno
resp = MESSAGEBOX('Número de error: ' + LTRIM(STR(merror))+CHR(13)+ ;
	'Mensaje de error: ' + MESS +CHR(13)+ ;
	'Línea de código con error: ' + mess1 +CHR(13)+ ;
	'Número de línea del error: ' + LTRIM(STR(mlineno)) +CHR(13)+ ;
	'Programa con error: ' + mprog +CHR(13), 1+16, 'ERROR!')
IF resp = 2 && CANCELAR
	do while txnlevel() > 0
		rollback
	enddo
*!*		QUIT
ENDIF
