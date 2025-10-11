@echo off
title Simple Notes App
setlocal enabledelayedexpansion

set "NOTES_FILE=%~dp0notes.txt"

:menu
cls
echo ==============================
echo      🗒️  GHI CHU DON GIAN
echo ==============================
if exist "%NOTES_FILE%" (
    echo.
    echo Danh sach ghi chu:
    echo ------------------------------
    set /a i=0
    for /f "usebackq delims=" %%a in ("%NOTES_FILE%") do (
        set /a i+=1
        echo !i!. %%a
    )
) else (
    echo (Chua co ghi chu nao)
)
echo ------------------------------
echo.
echo [1] Them ghi chu moi
echo [2] Xoa ghi chu
echo [3] Xoa tat ca
echo [4] Thoat
echo.
set /p choice=Nhap lua chon (1-4): 

if "%choice%"=="1" goto add
if "%choice%"=="2" goto delete
if "%choice%"=="3" goto clearall
if "%choice%"=="4" goto end
goto menu

:add
cls
set /p note=Nhap noi dung ghi chu: 
if "%note%"=="" (
    echo ⚠️ Ghi chu khong duoc de trong.
    pause
    goto menu
)
echo %note%>>"%NOTES_FILE%"
echo ✅ Da them ghi chu.
pause
goto menu

:delete
if not exist "%NOTES_FILE%" (
    echo ⚠️ Chua co ghi chu nao de xoa.
    pause
    goto menu
)
cls
echo Danh sach ghi chu:
set /a i=0
for /f "usebackq delims=" %%a in ("%NOTES_FILE%") do (
    set /a i+=1
    echo !i!. %%a
)
echo.
set /p delnum=Nhap so thu tu ghi chu muon xoa: 
if "%delnum%"=="" goto menu

set /a i=0
(
for /f "usebackq delims=" %%a in ("%NOTES_FILE%") do (
    set /a i+=1
    if not "!i!"=="%delnum%" echo %%a
)
)> "%NOTES_FILE%.tmp"
move /y "%NOTES_FILE%.tmp" "%NOTES_FILE%" >nul
echo 🗑️ Da xoa ghi chu so %delnum%.
pause
goto menu

:clearall
cls
del "%NOTES_FILE%" >nul 2>&1
echo 🧹 Da xoa tat ca ghi chu.
pause
goto menu

:end
echo 👋 Tam biet!
exit /b
