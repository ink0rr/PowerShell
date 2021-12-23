Clear-Host

if ($env:TERM_PROGRAM -eq 'vscode') {
    Set-PoshPrompt -Theme avit
}
else {
    Set-PoshPrompt -Theme ~/Documents/WindowsPowerShell/theme.omp.json
}

Function SU { 
    $dir = Get-Location
    Start-Process wt -ArgumentList "nt -d $dir" -Verb RunAs
    exit
}
