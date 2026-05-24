@echo off
chcp 65001 >nul
title Llama.cpp Launcher

echo ==========================================
echo   Llama.cpp Launcher - Starting...
echo ==========================================
echo.

:: Check Node.js
where node >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Node.js is not installed!
    echo Please install Node.js 18+ from https://nodejs.org
    pause
    exit /b 1
)

:: Set port
set PORT=3000

:: Start the server
echo Starting server on http://localhost:3000
echo Press Ctrl+C to stop the server
echo.
start http://localhost:3000
node server.js
pause
