@echo off
COLOR 9F
@echo                                                                        
@echo      ##########################################################        
@echo      ##******************************************************##        
@echo      ##*  *Apocalypse* - Archivo de auto Inicio de Servidor *##         
@echo      ##******************************************************##        
@echo      ##########################################################        
@echo                                                                        
@echo       Las siguientes lineas Auto Iniciaran el servidor en caso         
@echo       de una caida, el cual hara que este autoinicie nuevamente        
@echo       Si utilizan Windows como servidor dedicado tendran que editar         
@echo       el Regedit para que este no quede en la opción de el programa    
@echo       ha dejado de funcionar, el ejemplo de como hacerlo es este:    
@echo     
@echo      HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Windows\ErrorMode
@echo
@echo      Luego ir esa direccion en nuestro ordenador ejecutando el comando
@echo      Regedit en Ejecutar y cambiar el valor de 0 (por defecto) a 2.
@echo      Seguidamente vamos a:
@echo  HKEY_CURRENT_USER\Software\Microsoft\Windows\Windows Error Reporting\DontShowUI
@echo      Y cambian el valor de 0 (por defecto) a 1.                               
@echo                                                  
@echo
@echo       Por favor no editar este archivo a menos que sepan               
@echo       lo que hagan. Gracias 
@echo                      
@echo                *ApocalypseCore 2013*                                   
@echo           Desarrollado por ApocalyseCoreTeam                           
@echo                                                                                                       
@echo                                                                        
@echo 
ECHO OFF 
CLS 
ECHO ApocalypseCore WoW Server Started %time:~0,5% %date:~1% 
:SERVERLOOP 
authserver.exe
ECHO ApocalypseCore Restarted %time:~0,5% %date:~1% 
ECHO. 
GOTO SERVERLOOP 
:END