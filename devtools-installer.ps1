# Developer Tools Menu Installer Script for Windows
# Run this script as Administrator in PowerShell

function Install-ChocoPackage {
    param([string]$package)
    Write-Host "Installing $package via Chocolatey..."
    choco install $package -y --ignore-checksums
}

# Ensure Chocolatey is installed
if (-not (Get-Command choco -ErrorAction SilentlyContinue)) {
    Write-Host "Chocolatey not found. Installing Chocolatey..."
    Set-ExecutionPolicy Bypass -Scope Process -Force
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
    Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

$menu = @(
    @{Name="VS Code";            Action={Install-ChocoPackage "vscode"}},
    @{Name="Git";                Action={Install-ChocoPackage "git"}},
    @{Name="Node Version Manager (nvm)"; Action={Install-ChocoPackage "nvm"}},
    @{Name="MongoDB (Server)";   Action={Install-ChocoPackage "mongodb"}},
    @{Name="MongoDB Compass";    Action={Install-ChocoPackage "mongodb-compass"}},
    @{Name="Postman";            Action={Install-ChocoPackage "postman"}},
    @{Name="Notepad++";          Action={Install-ChocoPackage "notepadplusplus"}},
    @{Name="Google Chrome";      Action={Install-ChocoPackage "googlechrome"}},
    @{Name="Docker Desktop";     Action={Install-ChocoPackage "docker-desktop"}},
    @{Name="DBeaver";            Action={Install-ChocoPackage "dbeaver"}},
    @{Name="7zip";               Action={Install-ChocoPackage "7zip"}},
    @{Name="Fiddler";            Action={Install-ChocoPackage "fiddler"}},
    @{Name="Windows Terminal";   Action={Install-ChocoPackage "microsoft-windows-terminal"}},
    @{Name="Slack";              Action={Install-ChocoPackage "slack"}},
    @{Name="OpenJDK";            Action={Install-ChocoPackage "openjdk"}},
    @{Name="Python";             Action={Install-ChocoPackage "python"}},
    @{Name="PowerToys";          Action={Install-ChocoPackage "powertoys"}},
    @{Name="Paint.NET";          Action={Install-ChocoPackage "paint.net"}},
    @{Name="ShareX";             Action={Install-ChocoPackage "sharex"}},
    @{Name="oh-my-posh";         Action={Install-ChocoPackage "oh-my-posh"}},
    @{Name="Microsoft Teams";    Action={Install-ChocoPackage "msteams"}},
    @{Name="Bitvise SSH Client"; Action={Install-ChocoPackage "bitvise-ssh-client"}}
)

Write-Host "`n==== Developer Tools Installer Menu ===="
for ($i = 0; $i -lt $menu.Count; $i++) {
    Write-Host "[$($i+1)] $($menu[$i].Name)"
}
Write-Host "[A] Install ALL"
Write-Host "[Q] Quit"
Write-Host "======================================="

$selection = Read-Host "Enter your selections (e.g. 1,3,5 or A for all)"

if ($selection -eq "A" -or $selection -eq "a") {
    $choices = 1..$menu.Count
} elseif ($selection -eq "Q" -or $selection -eq "q") {
    Write-Host "Exiting installer."
    exit
} else {
    $choices = $selection -split "," | ForEach-Object { $_.Trim() } | Where-Object { $_ -match "^\d+$" } | ForEach-Object { [int]$_ }
    $choices = $choices | Where-Object { $_ -ge 1 -and $_ -le $menu.Count }
}

if ($choices.Count -eq 0) {
    Write-Host "No valid selections made. Exiting."
    exit
}

foreach ($choice in $choices) {
    $action = $menu[$choice-1].Action
    & $action
    Write-Host "`n--------------------------------------`n"
}

Write-Host "All selected installations complete!"