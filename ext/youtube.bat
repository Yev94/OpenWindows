@echo off
:ibuscar
cls
SET /p buscar=YouTube: 

taskkill /FI "windowtitle eq WaitYev"

rem :: Palabra reservada r para vovler al inicio
if "%buscar%" == "r" (
    goto inicio
)

rem :: Si está vacio vuelve al buscador
if "%buscar%" == "" (
    goto ibuscar
)

rem :: Reemplazamos los especios por un + ya que es la forma en la que se genera el link de la búsqueda
set buscar=%buscar: =+%
start https://www.youtube.com/results?search_query=%buscar%
exit