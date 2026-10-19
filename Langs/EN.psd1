# File-ID: EN-PSD1-38b9d799
# File-Version: 1.0.0

@{
    # Metadata
    FileID                      = 'EN-PSD1-38b9d799'
    FileVersion                 = '1.0.0'

    # Language metadata
    LanguageCode                = 'EN'
    LanguageName                = 'English'

    # Help
    HelpTitle                   = 'Crashpointingsystem v1.0.0'
    HelpAuthor                  = 'Author: Alexander Gal'
    HelpUsage                   = 'Usage:'
    HelpAddCrashSyntax          = '1. Add-Crash (-Software <Software> -Reason <Reason> -Application <Program> -Driver <Driver> -PowerLevel <Powerebene, z.B. Kernel> [-Points <Punkte>]) (Ist interaktive Abfrage, wenn Parameter nicht angegeben werden bzw. wurden)'
    HelpAddCrashDescription     = '   Adds a new crash entry.'
    HelpSummarySyntax           = '2. Show-CrashSummary'
    HelpSummaryDescription      = '   Displays a summary of the crashes.'
    HelpExportSyntax            = '3. Export-CrashLog'
    HelpExportDescription       = '   Exports the crash log in CSV and JSON formats.'
    HelpClearSyntax             = '4. Clear-CrashLog'
    HelpClearDescription        = '   Clears the crash log and creates a backup.'
    HelpOpenFileSyntax          = '5. Open-File -File <File path> -Software <Software>'
    HelpOpenFileDescription     = '   Opens a file with the specified program.'

    # Crash entry output
    CrashAddedTitle             = 'New crash added:'
    LabelSoftware               = 'Software'
    LabelReason                 = 'Reason'
    LabelProgram                = 'Program'
    LabelCausedBy               = 'Caused by'
    LabelPowerLevel             = 'Power level'
    LabelIntermediatePoints     = 'Intermediate points'
    LabelCrashTax               = 'Crash tax'
    LabelTotalPoints            = 'Total points'
    PointsUnit                  = 'Point(s)'
    CrashTaxRate                = '19%'
    LogSeparator                = '==========================='

    # Crash summary
    SummaryTitle                = '----- Crash Summary -----'
    SummaryTotalCrashes         = 'Total number of crashes'
    SummaryTotalPoints          = 'Total points'
    SummaryAverageCrashTax      = 'Average crash tax'
    SummaryLastCrash            = 'Last crash'
    SummaryFooter               = '----------------------------------'

    # Log and file errors
    ErrorNoLogFile              = 'No log file found.'

    # Export
    ExportCompleted             = 'Export completed:'
    ExportCsvLabel              = '→ CSV'
    ExportJsonLabel             = '→ JSON'

    # Clear log and backup
    BackupCreatedAt             = 'Backup created at'
    LogClearedSuccessfully      = 'Log file cleared successfully.'

    # Open file
    FileDoesNotExist            = "The specified file '{0}' does not exist."
    ProgramDoesNotExist         = "The specified program '{0}' does not exist."
    FileOpenedMessage           = "File '{0}' opened with '{1}'."

    # Log field labels
    LogDateTime                 = 'Date/Time'
    LogSoftware                 = 'Software'
    LogReason                   = 'Reason'
    LogProgram                  = 'Program'
    LogCausedBy                 = 'Caused by'
    LogPowerLevel               = 'Power level'
    LogIntermediatePoints       = 'Intermediate points'
    LogCrashTax                 = 'Crash tax'
    LogTotalPoints              = 'Total points'
}
