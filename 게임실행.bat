@echo off
cd /d "%~dp0"
start "LASTZONE server" powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0serve.ps1"
timeout /t 2 >nul
start "" http://localhost:8765/
