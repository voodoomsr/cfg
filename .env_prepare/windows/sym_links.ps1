rm $ENV:LOCALAPPDATA\nvim -force
cmd /c "mklink /D $ENV:LOCALAPPDATA\nvim $HOME\.config\nvim"
rm $PROFILE
cmd /c "mklink $PROFILE $HOME\.core_terminal\Microsoft.PowerShell_profile.ps1"
rm $HOME\.hyper.js
cmd /c "mklink $HOME\.hyper.js $HOME\.env_prepare\windows\.hyper.js"
rm C:\Users\Michael\AppData\Roaming\Oni\config.tsx
cmd /c "mklink $ENV:APPDATA\Oni\config.tsx $HOME\.env_prepare\windows\config.tsx

