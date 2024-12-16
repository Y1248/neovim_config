# C:\Users\renyu\Documents\PowerShell\
# New-Item -Path $PROFILE -Type File -Force
# Copy content of this file to $PROFILE (which is powershell's configuration file)
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/wopian.omp.json" | Invoke-Expression

Set-Alias -Name v -Value nvim
