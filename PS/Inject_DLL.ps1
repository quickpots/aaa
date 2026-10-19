# Basic DLL Injection via powershell by QuickPots
clear-host
$host.ui.RawUI.WindowTitle = "Basic DLL Injection - discord.gg/undetectable"


Write-host @'
                                                                                            
     _____                          _   ____                            _             
    / ____|                        | | |  _ \                          (_)            
   | (___   ___ ___  _ __   ___  __| | | |_) |_   _ _ __   __ _ ___ ___ _ _ __   __ _ 
    \___ \ / __/ _ \| '_ \ / _ \/ _` | |  _ <| | | | '_ \ / _` / __/ __| | '_ \ / _` |
    ____) | (_| (_) | |_) |  __/ (_| | | |_) | |_| | |_) | (_| \__ \__ \ | | | | (_| |
   |_____/ \___\___/| .__/ \___|\__,_| |____/ \__, | .__/ \__,_|___/___/_|_| |_|\__, |
                    | |                        __/ | |                           __/ |
                    |_|                       |___/|_|                          |___/

'@ -ForegroundColor Blue


Write-host "Made by QuickPots" -ForegroundColor Yellow
Write-host "Looking for the best bypasses? check out Scoped Bypassing @ discord.gg/undetectable" -ForegroundColor Yellow
Write-Host ""
Write-Host "Enter Path to DLL:" -ForegroundColor Yellow
$dllpath = Read-host 
# Gets java process ID 
$javaprocessid = Get-Process javaw -ErrorAction SilentlyContinue
if (-not $javaprocessid) { $javaprocessid = Get-Process java -ErrorAction SilentlyContinue }

if ($javaprocessid) {
   Write-host ""
   Write-host "INFORMATION:" -ForegroundColor Yellow
   $javapid = ($javaprocessid).Id
    Write-host "PID: $javapid" -ForegroundColor Yellow
    Write-host "DLL: $dllpath" -ForegroundColor Yellow
    Write-host ""
    Write-host "Loading DLL into Minecraft..." -ForegroundColor Yellow  
    mavinject.exe $javapid /INJECTRUNNING $dllpath
    Write-host "Injected!" -ForegroundColor Green
    Write-Host "Press enter to exit..." -ForegroundColor Yellow
    Read-Host

} else {
    Write-Host "Minecraft wasn't found. try rerunning script after launching." -ForegroundColor Yellow
    Write-Host "Press enter to exit..." -ForegroundColor Yellow
    Read-Host
}


