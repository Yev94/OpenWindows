@echo off
setlocal enabledelayedexpansion
:ibuscar
if "%abrir%" == "trin" (
    goto ing
)

if "%abrir%" == "tres" (
    goto esp
)

::--------------------------------------Traducir al inglés--------------------------------
:ing
cls
SET /p buscar=Deepl: 

taskkill /FI "windowtitle eq WaitYev"

rem :: Palabra reservada r para vovler al inicio
if "%buscar%" == "r" (
    goto inicio
)

rem :: Si está vacio vuelve al buscador
if "%buscar%" == "" (
    goto ibuscar
)

rem :: Reemplazamos los especios por un %20 ya que es la forma en la que se genera el link de la búsqueda

set buscar=!buscar: =%%20!
start https://www.deepl.com/translator#es/en/%buscar%
exit

::--------------------------------------Traducir al español--------------------------------
:esp
cls
SET /p buscar=Deepl: 

taskkill /FI "windowtitle eq WaitYev"

rem :: Palabra reservada r para vovler al inicio
if "%buscar%" == "r" (
    goto inicio
)

rem :: Si está vacio vuelve al buscador
if "%buscar%" == "" (
    goto ibuscar
)

rem :: Reemplazamos los especios por un %20 ya que es la forma en la que se genera el link de la búsqueda

set buscar=!buscar: =%%20!
start https://www.deepl.com/translator#en/es/%buscar%
exit