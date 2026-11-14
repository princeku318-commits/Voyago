@echo off
title VOYAGO — Premium 3D Travel Agency Platform
echo ==========================================================
echo   VOYAGO — Discover Beyond Destinations
echo   Premium 3D Travel Agency Platform
echo ==========================================================
echo Starting REST API and Web Application on http://localhost:5000 ...

if exist "C:\Users\gmall\AppData\Roaming\Antigravity\bin\agy-node.cmd" (
    call "C:\Users\gmall\AppData\Roaming\Antigravity\bin\agy-node.cmd" "%~dp0server\server.js"
) else (
    node "%~dp0server\server.js"
)
pause
