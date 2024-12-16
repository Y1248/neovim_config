# C:\Users\renyu\Documents\PowerShell\
# New-Item -Path $PROFILE -Type File -Force
# oh-my-posh init
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/wopian.omp.json" | Invoke-Expression

Set-Alias -Name v -Value nvim
