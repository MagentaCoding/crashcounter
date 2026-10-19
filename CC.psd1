# File-ID: CC-PSD1-7ebad733
# File-Version: 1.0.0

@{
    # Module identification
    RootModule        = 'CC.psm1'
    ModuleVersion     = '1.0.0'
    GUID              = 'a65c6697-a7ab-4714-b11a-c285936b012f'

    # Author information
    Author            = 'Alexander Gal'
    CompanyName       = 'MagentaStudio'
    Copyright         = '© Alexander Gal | All rights reserved.'
    Description       = 'Multilingual crash tracking and crash point management system.'

    # PowerShell compatibility
    PowerShellVersion = '5.1'

    # Public functions
    FunctionsToExport = @(
        'Show-Help'
        'Add-Crash'
        'Show-CrashSummary'
        'Export-CrashLog'
        'Clear-CrashLog'
        'Open-File'
    )

    # No cmdlets, variables or aliases exported
    CmdletsToExport   = @()
    VariablesToExport = @()
    AliasesToExport   = @()
}
