
rem :: un ahcho y alto
rem :: echo off para que no imprima lo que hemos declarado 
rem :: un titulo para la ventana
rem :: un color amarillo 
mode 40, 3
@echo off 
title Abrir Programa
color e

rem :: Palabras reservadas:
rem :: e > Salir
rem :: g > Buscar en Google
rem :: h > help
rem :: r > Return
rem :: s > Shutdown -n
rem :: y > Buscar en YouTube

rem ::Matamos cualquer proceso de espera anterior
taskkill /FI "windowtitle eq WaitYev"

rem :: Llamamos a una funcion que cierra el buscador pasado un tiempo si no se ha usado
cd "./ext/"
start /min "" "wait.bat"

rem :: Ponemos una variable de inicio a la que volver
:inicio

rem :: Borramos cualquier cosa que hayamos tenido antes
cls
rem :: Declaramos una variable que se inicializara en el CMD
SET /p abrir=Abrir: 

rem :: Si está vacio vuelve al inicio
if "%abrir%" == "" (
    goto inicio
)

rem ::--------------------------------------Palabras Reservadas--------------------------------

if "%abrir%" == "c" (
    taskkill /FI "windowtitle eq WaitYev"
    start "" "C:\"
    exit
)

if "%abrir%" == "d" (
    taskkill /FI "windowtitle eq WaitYev"
    start "" "D:\"
    exit
)

if "%abrir%" == "e" (
    taskkill /FI "windowtitle eq WaitYev"
    exit
)

if "%abrir%" == "g" (
    cd "./ext"
    call google.bat
)

if "%abrir%" == "b" (
    cd "./ext"
    call google.bat
)

if "%abrir%" == "h" (
    cd "./ext/"
    start "" "help.bat"
)


if "%abrir%" == "s" (
    taskkill /FI "windowtitle eq WaitYev"
    Shutdown -h
    exit
)

if "%abrir%" == "y" (
    cd "./ext"
    call youtube.bat
)

rem ::--------------------------------------Abrir programas--------------------------------
echo "%abrir%" | find "ank" > nul
if %errorlevel%==0 (
    taskkill /FI "windowtitle eq WaitYev"
    rem :: Ponemos un "" string vacio para que se salga y abra el programa (ya que start interpreta el primer argumento entre comillas que encuentra como el título de la ventana para una nueva ventana de consola)
    start "" "C:\Program Files\Anki\anki.exe"
    start "" "C:\OneCommander-V3\OneCommander" "C:\Users\tjs_6\Google Drive\Anki    "
    exit
)

echo "%abrir%" | find "cal" > nul
if %errorlevel%==0  (
    taskkill /FI "windowtitle eq WaitYev"
    start https://calendar.google.com/calendar/u/0/r
    exit
)

echo "%abrir%" | find "dow" > nul
if %errorlevel%==0  (
    taskkill /FI "windowtitle eq WaitYev"
    Start "" "C:\Users\tjs_6\Downloads"
    exit
)
rem ::------------------Inicio Drive------------------

echo "%abrir%" | find "gdr" > nul
if %errorlevel%==0  (
    taskkill /FI "windowtitle eq WaitYev"
    Start "" "C:\Users\tjs_6\Google Drive (ecoledelanguesammari@gmail.com)"
    exit
)

echo "%abrir%" | find "hdr" > nul
if %errorlevel%==0  (
    taskkill /FI "windowtitle eq WaitYev"
    Start "" "C:\Users\tjs_6\Google Drive (hanna.surmesure@gmail.com)"
    exit
)

echo "%abrir%" | find "dri" > nul
if %errorlevel%==0  (
    taskkill /FI "windowtitle eq WaitYev"
    Start "" "C:\Users\tjs_6\Google Drive"
    exit
)


rem ::------------------Fin Drive---------------------
rem ::------------------Inicio Excel---------------------
echo "%abrir%" | find "com" > nul
if %errorlevel%==0  (
    taskkill /FI "windowtitle eq WaitYev"
    Start https://docs.google.com/spreadsheets/d/1r6PHHlSu_PWC1buC_a2BrAJcGG5bW1a3/edit#gid=171100823
    exit
)

echo "%abrir%" | find "css" > nul
if %errorlevel%==0  (
    taskkill /FI "windowtitle eq WaitYev"
    Start https://docs.google.com/spreadsheets/d/11kVc161seP5Ys_aF22SMsXvqaaCg5s86/edit#gid=183633618
    exit
)

echo "%abrir%" | find "html" > nul
if %errorlevel%==0  (
    taskkill /FI "windowtitle eq WaitYev"
    Start https://docs.google.com/spreadsheets/d/12SW7VivBv9cx_Z51wG1odqcbsbsbwWUO/edit#gid=1325168006
    exit
)

echo "%abrir%" | find "sql" > nul
if %errorlevel%==0  (
    taskkill /FI "windowtitle eq WaitYev"
    Start https://docs.google.com/spreadsheets/d/11oxGQxWI_ZmeEmvLYgFP29REgdjzyguZ/edit#gid=1325168006
    exit
)

echo "%abrir%" | find "sho" > nul
if %errorlevel%==0  (
    taskkill /FI "windowtitle eq WaitYev"
    Start https://docs.google.com/spreadsheets/d/1krHf2VXSnvdLnlFZSci7GqGllCAVHt0l/edit#gid=1726776373
    exit
)

echo "%abrir%" | find "pro" > nul
if %errorlevel%==0  (
    taskkill /FI "windowtitle eq WaitYev"
    Start https://docs.google.com/spreadsheets/d/1Bn3ZR8-llnDYVtMKRogvqHbwxnY7BOoN/edit#gid=171100823
    exit
)

echo "%abrir%" | find "tes" > nul
if %errorlevel%==0  (
    taskkill /FI "windowtitle eq WaitYev"
    Start https://docs.google.com/spreadsheets/d/1lhdCzHyBdZ3o2DpkotAq_riIG2g7UWlE/edit#gid=2059308576
    exit
)


rem ::------------------Fin Excel---------------------

echo "%abrir%" | find "cal" > nul
if %errorlevel%==0  (
    taskkill /FI "windowtitle eq WaitYev"
    start calc.exe
    exit
)

echo "%abrir%" | find "chr" > nul
if %errorlevel%==0  (
    taskkill /FI "windowtitle eq WaitYev"
    start chrome.exe
    exit
)

echo "%abrir%" | find "cmd" > nul
if %errorlevel%==0  (
    taskkill /FI "windowtitle eq WaitYev"
    start cmd /k cd C:\
    exit
)

echo "%abrir%" | find "cod" > nul
if %errorlevel%==0  (
    taskkill /FI "windowtitle eq WaitYev"
    Start ""  "C:\Users\tjs_6\AppData\Local\Programs\Microsoft VS Code\Code.exe"
    exit
)

echo "%abrir%" | find "fopenm" > nul
if %errorlevel%==0  (
    taskkill /FI "windowtitle eq WaitYev"
    Start "" "C:\Users\tjs_6\Google Drive\GitHub\OpenWindows"
    exit
)

echo "%abrir%" | find "git" > nul
if %errorlevel%==0  (
    taskkill /FI "windowtitle eq WaitYev"
    Start https://github.com/Yev94/
    exit
)

echo "%abrir%" | find "gma" > nul
if %errorlevel%==0  (
    taskkill /FI "windowtitle eq WaitYev"
    Start https://mail.google.com/mail/u/0/?tab=rm#inbox
    exit
)

echo "%abrir%" | find "hot" > nul
if %errorlevel%==0  (
    taskkill /FI "windowtitle eq WaitYev"
    Start https://outlook.live.com/mail/0/inbox
    exit
)

echo "%abrir%" | find "ig" > nul
if %errorlevel%==0  (
    taskkill /FI "windowtitle eq WaitYev"
    Start http://igformacion.online/course/view.php?id=89
    exit
)

echo "%abrir%" | find "kee" > nul
if %errorlevel%==0  (
    taskkill /FI "windowtitle eq WaitYev"
    Start https://keep.google.com/u/0/#home
    exit
)

echo "%abrir%" | find "kden" > nul
if %errorlevel%==0  (
    taskkill /FI "windowtitle eq WaitYev"
    Start "" "C:\Program Files\kdenlive\bin\kdenlive.exe"
    exit
)

echo "%abrir%" | find "hyt" > nul
if %errorlevel%==0  (
    taskkill /FI "windowtitle eq WaitYev"
    start https://www.youtube.com/feed/history
    exit
)

echo "%abrir%" | find "myt" > nul
if %errorlevel%==0  (
    taskkill /FI "windowtitle eq WaitYev"
    start https://www.youtube.com/playlist?list=PLuw5co6keDB7d-RA2R4nE9P5Hz8u8-OsJ
    exit
)

echo "%abrir%" | find "mus" > nul
if %errorlevel%==0  (
    taskkill /FI "windowtitle eq WaitYev"
    start https://www.youtube.com/playlist?list=PLuw5co6keDB7d-RA2R4nE9P5Hz8u8-OsJ
    exit
)

echo "%abrir%" | find "not" > nul
if %errorlevel%==0  (
    taskkill /FI "windowtitle eq WaitYev"
    start https://www.notion.so/To-Do-list-a227b1cf5ffc4720a5421ea6a418ed23
    exit
)

echo "%abrir%" | find "obs" > nul
if %errorlevel%==0  (
    taskkill /FI "windowtitle eq WaitYev"
    cd "C:\Program Files\obs-studio\bin\64bit"
    start obs64.exe
    exit
)

echo "%abrir%" | find "gra" > nul
if %errorlevel%==0  (
    taskkill /FI "windowtitle eq WaitYev"
    cd "C:\Program Files\obs-studio\bin\64bit"
    start obs64.exe
    exit
)

echo "%abrir%" | find "one" > nul
if %errorlevel%==0  (
    taskkill /FI "windowtitle eq WaitYev"
    Start "" "C:\OneCommander-V3\OneCommander"
    exit
)

echo "%abrir%" | find "openm" > nul
if %errorlevel%==0  (
    taskkill /FI "windowtitle eq WaitYev"
    Start "" "C:\Users\tjs_6\AppData\Local\Programs\Microsoft VS Code\Code.exe" "C:\Users\tjs_6\Google Drive\GitHub\OpenWindows"
    exit
)

echo "%abrir%" | find "pain" > nul
if %errorlevel%==0  (
    taskkill /FI "windowtitle eq WaitYev"
    Start "" "%windir%\system32\mspaint.exe"
    exit
)

echo "%abrir%" | find "php" > nul
if %errorlevel%==0  (
    taskkill /FI "windowtitle eq WaitYev"
    Start "" "./PHPShortCuts.exe"
    exit
)

echo "%abrir%" | find "ser" > nul
if %errorlevel%==0  (
    taskkill /FI "windowtitle eq WaitYev"
    Start "" "C:\xampp\htdocs"
    exit
)

echo "%abrir%" | find "sni" > nul
if %errorlevel%==0  (
    taskkill /FI "windowtitle eq WaitYev"
    Start "" "C:\Users\tjs_6\AppData\Local\Programs\Microsoft VS Code\Code.exe" "C:\Users\tjs_6\AppData\Roaming\Code\User\snippets"
    exit
)

echo "%abrir%" | find "tas" > nul
if %errorlevel%==0  (
    taskkill /FI "windowtitle eq WaitYev"
    taskmgr
    exit
)

echo "%abrir%" | find "tea" > nul
if %errorlevel%==0  (
    taskkill /FI "windowtitle eq WaitYev"
    C:\Users\tjs_6\AppData\Local\Microsoft\Teams\Update.exe --processStart "Teams.exe"
    exit
)

echo "%abrir%" | find "tel" > nul
if %errorlevel%==0  (
    taskkill /FI "windowtitle eq WaitYev"
    start "" "C:\Users\tjs_6\AppData\Roaming\Telegram Desktop\Telegram.exe
    exit
)

if "%abrir%" == "trin" (
    cd "./ext"
    call deepl.bat
)

if "%abrir%" == "tres" (
    cd "./ext"
    call deepl.bat
)

echo "%abrir%" | find "wha" > nul
if %errorlevel%==0  (
    taskkill /FI "windowtitle eq WaitYev"
    start "" "C:\Users\tjs_6\AppData\Local\WhatsApp\WhatsApp.exe"
    exit
)

echo "%abrir%" | find "xam" > nul
if %errorlevel%==0  (
    taskkill /FI "windowtitle eq WaitYev"
    Start "" "C:\xampp\xampp-control.exe"
    exit
)

echo "%abrir%" | find "yet" > nul
if %errorlevel%==0  (
    taskkill /FI "windowtitle eq WaitYev"
    Start "" "C:\Users\tjs_6\AppData\Local\Programs\Microsoft VS Code\Code.exe" "C:\Users\tjs_6\Google Drive\GitHub\yev.tech"
    exit
)

echo "%abrir%" | find "yt" > nul
if %errorlevel%==0  (
    taskkill /FI "windowtitle eq WaitYev"
    start https://www.youtube.com/feed/subscriptions
    exit
)

rem :: Todos los goto es mejor dejarlos par el final ya que los lee el CMD

goto inicio