
# Windows Forensic Collector

![PowerShell](https://img.shields.io/badge/PowerShell-5.1%2B-blue)
![Platform](https://img.shields.io/badge/Platform-Windows-blue)
![Category](https://img.shields.io/badge/Category-DFIR-red)
![License](https://img.shields.io/badge/License-MIT-green)

## Overview

A PowerShell-based digital forensic evidence collection
toolkit designed for Windows incident response, threat
hunting, and cybersecurity investigations.

Developed as part of the NAKFA Cyber Lab project.

## Key Features

- System information collection
- Running process enumeration
- Active network connection analysis
- Windows service enumeration
- Local user account investigation
- DNS cache collection
- Startup persistence artifact collection
- Windows Security event collection
- SHA-256 evidence integrity verification
- Automated CSV reporting
- Exception handling

## Requirements

- Windows 10 or Windows 11
- Windows PowerShell 5.1 or compatible PowerShell
- Administrator privileges recommended

## Usage

Open PowerShell as Administrator and execute:

```powershell
.\ForensicCollector.ps1
```

## Evidence Output

The script generates a timestamped evidence directory
containing:

| File | Purpose |
|---|---|
| SystemInfo.csv | System information |
| Processes.csv | Running processes |
| Network.csv | Network connections |
| Services.csv | Windows services |
| LocalUsers.csv | Local accounts |
| DNSCache.csv | DNS records |
| Startup.csv | Startup applications |
| SecurityLogs.csv | Security events |
| HashManifest.csv | SHA-256 evidence hashes |

## Security Applications

- Digital Forensics and Incident Response (DFIR)
- Security Operations Center (SOC)
- Endpoint investigation
- Threat hunting
- Evidence integrity verification
- Preliminary incident triage

## Limitations

This toolkit performs preliminary live evidence collection.
It is not a replacement for full forensic disk or memory
acquisition.

Live collection may affect system state. Evidence must
be handled according to authorized forensic procedures.

Lab validation is pending.

## Disclaimer

For authorized cybersecurity investigations, educational
purposes, and controlled laboratory environments only.

Never publish confidential evidence or sensitive logs.

## Author

Ngsnet G. Hawarya

M.S. Cybersecurity

NAKFA Cyber Lab

## License

MIT License
