
# NAKFA Cyber Lab
# Windows Digital Forensic Collector
# Version: 1.0

$ErrorActionPreference = "Stop"
$Timestamp = Get-Date -Format "yyyyMMdd_HHmmss"
$Evidence = ".\Evidence_$Timestamp"

New-Item -ItemType Directory -Path $Evidence | Out-Null

$Artifacts = [ordered]@{
    SystemInfo = { Get-ComputerInfo }
    Processes  = { Get-Process }
    Network    = { Get-NetTCPConnection }
    Services   = { Get-Service }
    LocalUsers = { Get-LocalUser }
    DNSCache   = { Get-DnsClientCache }
    Startup    = {
        Get-CimInstance Win32_StartupCommand
    }
    SecurityLogs = {
        Get-WinEvent -LogName Security -MaxEvents 500
    }
}

foreach ($Item in $Artifacts.GetEnumerator()) {
    try {
        & $Item.Value |
            Export-Csv "$Evidence\$($Item.Key).csv" `
            -NoTypeInformation

        Write-Host "[+] Collected: $($Item.Key)" `
            -ForegroundColor Green
    }
    catch {
        Write-Warning "Collection failed: $($Item.Key)"
    }
}

Get-ChildItem $Evidence -File |
    Get-FileHash -Algorithm SHA256 |
    Export-Csv "$Evidence\HashManifest.csv" `
    -NoTypeInformation

Write-Host "[+] Evidence collection completed."
Write-Host "[+] Location: $Evidence"
