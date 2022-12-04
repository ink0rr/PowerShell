Clear-Host

if ($env:TERM_PROGRAM -eq 'vscode') {
    oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/avit.omp.json" | Invoke-Expression
}
else {
    oh-my-posh init pwsh --config ~/Documents/WindowsPowerShell/theme.omp.json | Invoke-Expression
}

Function SU { 
    Start-Process wt -ArgumentList "nt -d ." -Verb RunAs
}
