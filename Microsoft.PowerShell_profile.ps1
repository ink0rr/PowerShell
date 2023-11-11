Clear-Host

if ($env:TERM_PROGRAM -eq 'vscode') {
    oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/avit.omp.json" | Invoke-Expression
}
else {
    $PROFILE_DIR = Split-Path $PROFILE -Parent
    oh-my-posh init pwsh --config "$PROFILE_DIR/theme.omp.json" | Invoke-Expression
}

Function SU { 
    Start-Process wt -ArgumentList "nt -d ." -Verb RunAs
}
