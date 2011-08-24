* - Ejemplo de Control de versiones con Git y GitHub para
* - proyectos de Visual FoxPro
* - 
* - Arturo Ramos
* - www.ircsasoftware.com.mx
* - Cancún, México
* - Agosto, 2011.
* -

======
Inicio
======
Para poder hacer pruebas debo agregarte como colaborador, crea tu cuenta de GitHub y mandame tus datos a: ircsasw @ gmail . com


=============
Instrucciones
=============
Una vez dado de alta como colaborador sigue estas instrucciones para clonar el repositorio en tu computadora.

1. Baja Git para windows, el primero de la lista:
http://code.google.com/p/msysgit/downloads/list
Instalalo, sólo es siguiente, siguiente...

2. Despúes de instalar busca el programa Git Bash, es una consola de comandos del Git, ejecutalo

3. Tienes que crear una carpeta en donde quieras que el proyecto sea creado y donde Git va a sincronizar con el repositorio de GitHub, esto lo puedes hacer desde Git Bash o desde el explorador de forma normal. Si lo creas con Git Bash es como en DOS

mkdir VFPconGit
cd VFPconGit/

4. Desde Git Bash ve a esea carpeta (los comandos para ir a la carpeta son como los de la consola de comandos del DOS)

cd tu-carpeta/

o

cd c:
cd ruta-a/tu-carpeta/en-disco

5. Ya que estas en la carpeta tienes que clonar el repositorio

git clone https://ircsasw@github.com/ircsasw/VFPconGit.git

Lo que va después de git clone es la ubicación del repositorio en Git Hub.

Con esto ya tienes un clone del repositorio en tu computadora, si haces algun cambio y lo quieres subir, siémpre desde Git Bash utilizas

git add .
git commit -m "Descripcion o comentarios sobre los cambios que realizaste..."
git push

El primer comando agrega todos los archivos al commit, el segundo empaqueta los cambios y los identifica con un número de commit y un mensaje y el tercer comando sube y sincroniza ese cambio con los que estan en el repositorio de Git Hub

Si quieres obtener los cambios realizados por los demas colaboraadres, desde Git Bash utilizas

git pull

Siémpre trata de hacer un pull antes de hacer un push para que los posibles conflictos los administres desde tu computadora; igual trata de hacer push periodicamente sobre todo cuando hagas muchos cambios.


===========
El truco !!
===========

Los sistemas de control de versiones tienen problemas al manejar archivos binarios; ya que los formularios, librerías VCX, reportes, etcétera son en realidad tablas DBF (archivos binarios), es casi imposible llevar un control de cambios en ellos; el truco está en pasar todos estos archivos en archivos xml de texto plano para lo que utilizamos las aplicaciones de Christof Wollenhaupt, GENXML.app y GENCODE.app; la primera toma un proyecto de VFP y transforma todos los archivos como formularios, librerías, reportes, ... en archivos xml y la segunda regresa los archivos xml en su correspondiente formulario, reporte, librería, ...


============================
Guias, manuales, recursos...
============================

Control de versiones con git y github
-------------------------------------
http://www.slideshare.net/guest638090/control-de-versiones-con-git-y-github


Git community book
------------------
http://book.git-scm.com/index.html


Mini-tutorial Git
-----------------
Muy buena presentación que nos da una idea muy buena de lo que se puede hacer con Git
http://www.slideshare.net/gnrfan/minitutorial-de-git


Getting Started with Git and GitHub on Windows
----------------------------------------------
http://kylecordes.com/2008/git-windows-go


Un tutorial en PDF, medio traducido...
--------------------------------------
http://www.rodolinux.com.ar/docs/Tutorial-de-GIT-Editado.pdf


Uso de la Wiki de GitHub
------------------------
http://www.adictosaltrabajo.com/tutoriales/tutoriales.php?pagina=githubWiki


Primeros pasos con GitHub
-------------------------
http://www.adictosaltrabajo.com/tutoriales/tutoriales.php?pagina=githubFirstStepsUploadProject


An Illustrated Guide to Git on Windows
--------------------------------------
http://nathanj.github.com/gitguide/index.html


TortoiseGit The coolest Interface to (Git) Version Control
----------------------------------------------------------
http://code.google.com/p/tortoisegit/


Curso de Git y GitHub, Fundamentos e Instalación
------------------------------------------------
http://www.illasaron.com/html/content/01-curso-de-git-y-github-fundamentales-e-instalaci%C3%B3n


GitHub Help
-----------
http://help.github.com/win-set-up-git/


Instalar cliente de Git en Windows y conectarse a GitHub
--------------------------------------------------------
http://neurock.com/neurock_blog/2011/07/18/instalar-cliente-git-en-windows-y-conectarse-a-github/


TwoFox
------
Two-way text conversion for VFP files. GenXML converts form, class libraries, etc. into XML files that can easily be handled by version control systems like CVS and SubVersion. For VCX files GenXML generates one XML file for each class letting you create a history for each class and minimizing conflicts. GenCode converts these XML files back into binary files. 
http://foxpert.com/downloads.htm


VFP2Text
--------
Add-on for Beyond Compare that allows read-only comparisons of Microsoft Visual FoxPro files. 
http://www.pfsolutions-mi.com/dnn/Downloads/tabid/76/Default.aspx


scXML
-----
El proyecto SCXML trata principalmente de brindar una manera sencilla a los programadores VFP de poder usar un control de versiones con sus Formularios y librerías VCX.
http://fox.desdeguate.com/scxml/


WinMerge
--------
WinMerge is an Open Source differencing and merging tool for Windows. WinMerge can compare both folders and files, presenting differences in a visual text format that is easy to understand and handle.
http://winmerge.org/


Beyond Compare
--------------
Herramienta para comparar archivos y carpetas
http://www.scootersoftware.com/download.php


CVS, SubVersion and Visual FoxPro
---------------------------------
http://www.foxpert.com/docs/cvs.en.htm
