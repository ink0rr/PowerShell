Clear-Host

if ($env:TERM_PROGRAM -eq 'vscode') {
    oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/avit.omp.json" | Invoke-Expression
}
else {
    $PROFILE_DIR = Split-Path $PROFILE -Parent
    oh-my-posh init pwsh --config "$PROFILE_DIR/theme.omp.json" | Invoke-Expression
}

function su { 
    Start-Process wt -ArgumentList "nt -d ." -Verb RunAs
}

function rimraf([string]$path) { 
    $confirm = Read-Host "Confirm delete (y/N)"
    if ($confirm -ne "y") { 
        Write-Host "Cancelled."
        return 
    }
    Remove-Item -Recurse -Force $path
    Write-Host "Deleted $path"
}
