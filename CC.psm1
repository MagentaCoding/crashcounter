# File-ID: CC-PSM1-1f00d664
# File-Version: 1.0.0

# Absturz-Punktesystem v1.0
# © Alexander Gal | All rights reserved.

# LANGUAGE FILE LOADING
$script:LanguageFile = Join-Path $PSScriptRoot 'Lang.psd1'

if (-not (Test-Path -LiteralPath $script:LanguageFile -PathType Leaf)) {
    throw "CrashCounter language file not found: $script:LanguageFile"
}

$script:Language = Import-PowerShellDataFile -Path $script:LanguageFile

# INTERNAL HELPERS

function Get-CCLogPath {
    return Join-Path $env:USERPROFILE 'Crashlog.txt'
}

function ConvertTo-CCNumber {
    param(
        [AllowNull()]
        [string]$Value
    )

    if ([string]::IsNullOrWhiteSpace($Value)) {
        return 0.0
    }

    $NormalizedValue = $Value.Trim() -replace ',', '.'
    $Number = 0.0

    if ([double]::TryParse(
        $NormalizedValue,
        [Globalization.NumberStyles]::Float,
        [Globalization.CultureInfo]::InvariantCulture,
        [ref]$Number
    )) {
        return $Number
    }

    return 0.0
}

function Get-CCLogEntries {
    $File = Get-CCLogPath

    if (-not (Test-Path -LiteralPath $File -PathType Leaf)) {
        return @()
    }

    $Content = Get-Content -LiteralPath $File -Raw -ErrorAction SilentlyContinue

    if ([string]::IsNullOrWhiteSpace($Content)) {
        return @()
    }

    $Separator = [string]$script:Language.LogSeparator

    if ([string]::IsNullOrWhiteSpace($Separator)) {
        $Separator = '==========================='
    }

    # Support the current separator and the legacy separator.
    $Entries = $Content -split (
        '(?:' + [regex]::Escape($Separator) +
        '|={10,})'
    )

    $LabelMap = @{
        DateTime = @($script:Language.LogDateTime, 'Datum/Zeit', 'Date/Time')
        Software = @($script:Language.LogSoftware, 'Software')
        Reason = @($script:Language.LogReason, 'Grund', 'Reason')
        Application = @($script:Language.LogProgram, 'Programm', 'Program', 'Application')
        Driver = @($script:Language.LogCausedBy, 'Verursacht durch', 'Caused by')
        PowerLevel = @($script:Language.LogPowerLevel, 'Kraftebene', 'Powerebene', 'Power level', 'PowerLevel')
        IntermediatePoints = @($script:Language.LogIntermediatePoints, 'Zwischenpunktzahl', 'Intermediate points')
        CrashTax = @($script:Language.LogCrashTax, 'Absturzsteuer (19%)', 'Absturzsteuer', 'Crash tax (19%)', 'Crash tax')
        TotalPoints = @($script:Language.LogTotalPoints, 'Gesamtpunktzahl', 'Total points')
    }

    $Results = @()

    foreach ($Entry in $Entries) {
        if ([string]::IsNullOrWhiteSpace($Entry)) {
            continue
        }

        $Values = @{}

        foreach ($Property in $LabelMap.Keys) {
            foreach ($Label in $LabelMap[$Property]) {
                if ([string]::IsNullOrWhiteSpace([string]$Label)) {
                    continue
                }

                $Pattern = '(?m)^\s*' +
                    [regex]::Escape([string]$Label) +
                    '\s*:\s*(.*?)\s*$'

                $Match = [regex]::Match($Entry, $Pattern)

                if ($Match.Success) {
                    $Values[$Property] = $Match.Groups[1].Value.Trim()
                    break
                }
            }
        }

        if (
            $Values.ContainsKey('Software') -or
            $Values.ContainsKey('DateTime') -or
            $Values.ContainsKey('TotalPoints')
        ) {
            $Intermediate = 0.0
            $CrashTaxValue = 0.0
            $Total = 0.0

            if ($Values.ContainsKey('IntermediatePoints')) {
                $Intermediate = ConvertTo-CCNumber $Values['IntermediatePoints']
            }

            if ($Values.ContainsKey('CrashTax')) {
                $CrashTaxValue = ConvertTo-CCNumber $Values['CrashTax']
            }

            if ($Values.ContainsKey('TotalPoints')) {
                $Total = ConvertTo-CCNumber $Values['TotalPoints']
            }

            $Results += [PSCustomObject]@{
                DateTime           = [string]$Values['DateTime']
                Software           = [string]$Values['Software']
                Reason             = [string]$Values['Reason']
                Application        = [string]$Values['Application']
                Driver             = [string]$Values['Driver']
                PowerLevel         = [string]$Values['PowerLevel']
                IntermediatePoints = $Intermediate
                CrashTax           = $CrashTaxValue
                TotalPoints        = $Total
                RawEntry           = $Entry.Trim()
            }
        }
    }

    return @($Results)
}

# Show-Help, for Help
function Show-Help {
    Write-Host $script:Language.HelpTitle -ForegroundColor Cyan
    Write-Host $script:Language.HelpAuthor -ForegroundColor Cyan
    Write-Host $script:Language.HelpUsage -ForegroundColor Yellow

    Write-Host $script:Language.HelpAddCrashSyntax -ForegroundColor White
    Write-Host $script:Language.HelpAddCrashDescription -ForegroundColor White

    Write-Host $script:Language.HelpSummarySyntax -ForegroundColor White
    Write-Host $script:Language.HelpSummaryDescription -ForegroundColor White

    Write-Host $script:Language.HelpExportSyntax -ForegroundColor White
    Write-Host $script:Language.HelpExportDescription -ForegroundColor White

    Write-Host $script:Language.HelpClearSyntax -ForegroundColor White
    Write-Host $script:Language.HelpClearDescription -ForegroundColor White

    Write-Host $script:Language.HelpOpenFileSyntax -ForegroundColor White
    Write-Host $script:Language.HelpOpenFileDescription -ForegroundColor White
}

# Add-Crash, if Windows encounters a BSOD
function Add-Crash {
    param(
        [Parameter(Mandatory = $true)]
        [string]$Software,

        [Parameter(Mandatory = $true)]
        [string]$Reason,

        [Parameter(Mandatory = $true)]
        [string]$Application,

        [Parameter(Mandatory = $true)]
        [string]$Driver,

        [Parameter(Mandatory = $true)]
        [string]$PowerLevel,

        [Parameter(Mandatory = $false)]
        [double]$Points = -1
    )

    $File = Get-CCLogPath
    $Entries = @(Get-CCLogEntries)

    $PreviousTotal = 0.0

    if ($Entries.Count -gt 0) {
        $PreviousTotal = [double]$Entries[-1].TotalPoints
    }

    $IntermediateTotal = [math]::Round(
        $PreviousTotal + $Points,
        2
    )

    $CrashTax = [math]::Round(
        $IntermediateTotal * 0.19,
        2
    )

    $TotalPoints = [math]::Round(
        $IntermediateTotal + $CrashTax,
        2
    )

    $Time = Get-Date -Format 'dd.MM.yyyy HH:mm:ss'

    Write-Host "[$Time] $($script:Language.CrashAddedTitle)" -ForegroundColor Cyan
    Write-Host "$($script:Language.LabelSoftware): $Software"
    Write-Host "$($script:Language.LabelReason): $Reason"
    Write-Host "$($script:Language.LabelProgram): $Application"
    Write-Host "$($script:Language.LabelCausedBy): $Driver"
    Write-Host "$($script:Language.LabelPowerLevel): $PowerLevel"
    Write-Host ''
    Write-Host "$($script:Language.LabelIntermediatePoints): $IntermediateTotal $($script:Language.PointsUnit)"
    Write-Host "$($script:Language.LabelCrashTax) ($($script:Language.CrashTaxRate)): $CrashTax"
    Write-Host "$($script:Language.LabelTotalPoints): $TotalPoints $($script:Language.PointsUnit)"
    Write-Host $script:Language.LogSeparator

    $Entry = @"
$($script:Language.LogDateTime): $Time
$($script:Language.LogSoftware): $Software
$($script:Language.LogReason): $Reason
$($script:Language.LogProgram): $Application
$($script:Language.LogCausedBy): $Driver
$($script:Language.LogPowerLevel): $PowerLevel

$($script:Language.LogIntermediatePoints): $IntermediateTotal $($script:Language.PointsUnit)
$($script:Language.LogCrashTax) ($($script:Language.CrashTaxRate)): $CrashTax
$($script:Language.LogTotalPoints): $TotalPoints $($script:Language.PointsUnit)
$($script:Language.LogSeparator)
"@

    Add-Content -LiteralPath $File -Value $Entry -Encoding utf8
}

# -----------------------------------
# ANALYSIS AND MANAGEMENT FUNCTIONS
# -----------------------------------

# Show-CrashSummary, for summary of your encountered crashes
function Show-CrashSummary {
    $Entries = @(Get-CCLogEntries)

    if ($Entries.Count -eq 0) {
        Write-Host $script:Language.ErrorNoLogFile -ForegroundColor Red
        return
    }

    $LastEntry = $Entries[-1]
    $TotalPoints = [double]$LastEntry.TotalPoints

    $AverageCrashTax = (
        $Entries |
        Measure-Object -Property CrashTax -Average
    ).Average

    if ($null -eq $AverageCrashTax) {
        $AverageCrashTax = 0
    }

    Write-Host $script:Language.SummaryTitle -ForegroundColor Yellow
    Write-Host "$($script:Language.SummaryTotalCrashes): $($Entries.Count)"
    Write-Host "$($script:Language.SummaryTotalPoints): $TotalPoints"
    Write-Host "$($script:Language.SummaryAverageCrashTax): $([math]::Round($AverageCrashTax, 2))"
    Write-Host ''
    Write-Host "$($script:Language.SummaryLastCrash):" -ForegroundColor Cyan
    Write-Host $LastEntry.RawEntry
    Write-Host $script:Language.SummaryFooter
}

# Export-CrashLog, if you wanna have it as CSV or JSON instead of an TXT only
function Export-CrashLog {
    $File = Get-CCLogPath

    if (-not (Test-Path -LiteralPath $File -PathType Leaf)) {
        Write-Host $script:Language.ErrorNoLogFile -ForegroundColor Red
        return
    }

    $Entries = @(Get-CCLogEntries)

    $CsvPath = Join-Path $env:USERPROFILE 'Crashlog.csv'
    $JsonPath = Join-Path $env:USERPROFILE 'Crashlog.json'

    $ExportData = @(
        foreach ($Entry in $Entries) {
            [PSCustomObject]@{
                DateTime           = $Entry.DateTime
                Software           = $Entry.Software
                Reason             = $Entry.Reason
                Application        = $Entry.Application
                Driver             = $Entry.Driver
                PowerLevel         = $Entry.PowerLevel
                IntermediatePoints = $Entry.IntermediatePoints
                CrashTax           = $Entry.CrashTax
                TotalPoints        = $Entry.TotalPoints
            }
        }
    )

    $ExportData |
        Export-Csv -LiteralPath $CsvPath -NoTypeInformation -Encoding utf8

    $ExportData |
        ConvertTo-Json -Depth 5 |
        Set-Content -LiteralPath $JsonPath -Encoding utf8

    Write-Host $script:Language.ExportCompleted -ForegroundColor Green
    Write-Host "$($script:Language.ExportCsvLabel): $CsvPath"
    Write-Host "$($script:Language.ExportJsonLabel): $JsonPath"
}

# Clear-CrashLog, OH NO, HE WANTS TO CLEAR THE EVIDENCE!
function Clear-CrashLog {
    $File = Get-CCLogPath

    if (-not (Test-Path -LiteralPath $File -PathType Leaf)) {
        Write-Host $script:Language.ErrorNoLogFile -ForegroundColor Red
        return
    }

    $BackupDirectory = Join-Path $env:USERPROFILE 'Crashlog_BACKUP'

    if (-not (Test-Path -LiteralPath $BackupDirectory -PathType Container)) {
        New-Item -Path $BackupDirectory -ItemType Directory -Force |
            Out-Null
    }

    $Timestamp = Get-Date -Format 'yyyyMMdd_HHmmss'
    $BackupPath = Join-Path $BackupDirectory "Crashlog_$Timestamp.txt"

    Copy-Item -LiteralPath $File -Destination $BackupPath -ErrorAction Stop
    Clear-Content -LiteralPath $File -ErrorAction Stop

    Write-Host (
        $script:Language.BackupCreatedAt -f $BackupPath
    ) -ForegroundColor Cyan

    Write-Host $script:Language.LogClearedSuccessfully -ForegroundColor Green
}

# Open-File, for opening a File
function Open-File {
    param(
        [Parameter(Mandatory = $true)]
        [string]$File,

        [Parameter(Mandatory = $true)]
        [string]$Programm
    )

    if (-not (Test-Path -LiteralPath $File -PathType Leaf)) {
        Write-Host $script:Language.FileDoesNotExist -ForegroundColor White -BackgroundColor Red
        return
    }

    if (-not (Test-Path -LiteralPath $Programm -PathType Leaf)) {
        Write-Host $script:Language.ProgramDoesNotExist -ForegroundColor White -BackgroundColor Red
        return
    }

    Start-Process -FilePath $Programm -ArgumentList ('"{0}"' -f $File)

    Write-Host (
        $script:Language.FileOpenedMessage -f $File, $Programm
    ) -ForegroundColor Green
}