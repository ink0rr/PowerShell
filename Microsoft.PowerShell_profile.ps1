Invoke-Expression (&starship init powershell)

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
