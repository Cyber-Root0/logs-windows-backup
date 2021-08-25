@echo off
echo              _ _,---._ 
echo           ,-','       `-.___ 
echo          /-;'               `._ 
echo         /\/          ._   _,'o \ 
echo        ( /\       _,--'\,','"`. ) 
echo         ^|\      ,'o     \'    //\ 
echo         ^|      \        /   ,--'""`-. 
echo         :       \_    _/ ,-'         `-._ 
echo          \        `--'  /                ) 
echo           `.  \`._    ,'     ________,','  Script de Logs do Windows ==) by: Cyber Root  Cyber Intelligence
echo             .--`     ,'  ,--` __\___,;' 
echo              \`.,-- ,' ,`_)--'  /`.,' 
echo               \^( ;  ^| ^| )      ^(`-/ 
echo                 `--'^| ^|^)       ^|-/ 
echo                   ^| ^| ^|        ^| ^| 
echo                   ^| ^| ^|,.,-.   ^| ^|_ 
echo                   ^| `./ /   )---`  ) 
echo                  _^|  /    ,',   ,-' 
echo                 ,'^|_(    /-^<._,' ^|--, 
echo                 ^|    `--'---.     \/ \ 
echo                 ^|          / \    /\  \ 
echo               ,-^---._     ^|  \  /  \  \ 
echo            ,-'        \----'   \/    \--`. 
echo           /            \              \   \
echo ===============================================================================================
echo Não se Preucupe Estamos Exportando os Logs pra Você!
pause
set BACKUP_PATH=c:\backup\logs
set datestr=%date%
set result=%datestr:/=-%

mkdir %BACKUP_PATH%\%result%

wevtutil epl System %BACKUP_PATH%/%result%/system.evtx
wevtutil epl Application %BACKUP_PATH%/%result%/application.evtx
wevtutil epl Security %BACKUP_PATH%/%result%/security.evtx

wevtutil clear-log Security
wevtutil clear-log Application
wevtutil clear-log System
msg %username% "Backup realizado com Sucesso"

