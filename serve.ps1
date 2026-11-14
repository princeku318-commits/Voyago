# ==============================================================================
# VOYAGO — Premium 3D Travel Agency Platform Launcher
# Zero-dependency launcher using Node.js v24 & built-in HTTP server
# ==============================================================================

$port = 5000
$url = "http://localhost:$port"

Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host "  VOYAGO — Discover Beyond Destinations" -ForegroundColor Yellow
Write-Host "  Premium 3D Travel Agency Platform" -ForegroundColor White
Write-Host "==========================================================" -ForegroundColor Cyan

# Locate Node runner
$agyNode = "C:\Users\gmall\AppData\Roaming\Antigravity\bin\agy-node.cmd"
$nodeCmd = if (Test-Path $agyNode) { $agyNode } else { "node" }

$serverScript = Join-Path $PSScriptRoot "server\server.js"

Write-Host "Starting VOYAGO REST API & Web Server on port $port..." -ForegroundColor Green
Write-Host "Access the application at: $url" -ForegroundColor Cyan

# Launch server
& $nodeCmd $serverScript
