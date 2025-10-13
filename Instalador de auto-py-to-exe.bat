@echo off
chcp 65001 >nul
title AUTO-PY-TO-EXE - GESTOR
color 1F

:menu
cls
echo.
echo ════════════════════════════════════════════════
echo        AUTO-PY-TO-EXE - PANEL DE CONTROL
echo ════════════════════════════════════════════════
echo.
echo  [1] INSTALAR (pip + menú contextual)
echo  [2] EJECUTAR (inicia automáticamente)
echo  [3] DESINSTALAR (pip + menú)
echo  [4] SALIR
echo.
echo ════════════════════════════════════════════════
set /p opcion="➜ Selecciona: "

if "%opcion%"=="1" goto instalar
if "%opcion%"=="2" goto ejecutar
if "%opcion%"=="3" goto desinstalar
if "%opcion%"=="4" goto salir
cls
echo.
echo ⚠ OPCION NO VALIDA
echo.
pause
goto menu

:instalar
cls
echo.
echo [INSTALANDO...]
echo ════════════════════════════════════════════════
echo.
echo ➜ Descargando paquetes de Python...
pip install auto-py-to-exe pyinstaller -q
if %errorlevel% neq 0 (
    echo.
    echo ✗ Error en la instalacion
    echo.
    pause
    goto menu
)
echo ✓ Paquetes instalados
echo.
echo ➜ Agregando al menú contextual...
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\auto-py-to-exe" /ve /d "auto-py-to-exe" /f >nul
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\auto-py-to-exe" /v "Icon" /d "C:\Script_clic_derecho\auto-py-to-exe\favicon.ico" /f >nul
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\auto-py-to-exe\command" /ve /d "cmd.exe /c start http://localhost:8080 ^& start /min cmd /c python -m auto_py_to_exe" /f >nul
echo ✓ Menú agregado
echo.
echo ════════════════════════════════════════════════
echo ✓ INSTALACION COMPLETA
echo ════════════════════════════════════════════════
echo.
pause
goto menu

:ejecutar
cls
echo.
echo [EJECUTANDO...]
echo ════════════════════════════════════════════════
echo.
echo ➜ Verificando actualizaciones...
pip install --upgrade auto-py-to-exe pyinstaller -q >nul 2>&1
echo ✓ Dependencias actualizadas
echo.
echo ➜ Iniciando aplicación...
start http://localhost:8080
start /min cmd /c "python -m auto_py_to_exe"
echo ✓ Aplicación en ejecución
echo.
echo ════════════════════════════════════════════════
echo La ventana se abrirá en tu navegador...
echo ════════════════════════════════════════════════
echo.
timeout /t 3 >nul
goto menu

:desinstalar
cls
echo.
echo [DESINSTALANDO...]
echo ════════════════════════════════════════════════
echo.
echo ➜ Eliminando del menú contextual...
reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\auto-py-to-exe" /f >nul 2>&1
echo ✓ Menú eliminado
echo.
echo ➜ Desinstalando paquetes...
pip uninstall auto-py-to-exe pyinstaller -y -q >nul 2>&1
echo ✓ Paquetes desinstalados
echo.
echo ════════════════════════════════════════════════
echo ✓ DESINSTALACION COMPLETA
echo ════════════════════════════════════════════════
echo.
pause
goto menu

:salir
cls
echo.
echo Hasta luego...
echo.
timeout /t 2 >nul
exit