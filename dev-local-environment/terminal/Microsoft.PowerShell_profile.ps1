# Install-Module oh-my-posh -Scope CurrentUser
# [console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding
oh-my-posh init pwsh | Invoke-Expression
oh-my-posh init pwsh --config 'C:\Users\Crownie\Documents\PowerShell\paradox.omp.json' | Invoke-Expression
