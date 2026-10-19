# File-ID: DE-PSD1-6b0be7a3
# File-Version: 1.0.0

@{
    # Metadata
    FileID                      = 'DE-PSD1-6b0be7a3'
    FileVersion                 = '1.0.0'

    # Language metadata
    LanguageCode                = 'DE'
    LanguageName                = 'Deutsch'

    # Help
    HelpTitle                   = 'Crashpointingsystem v1.0.0'
    HelpAuthor                  = 'Autor: Alexander Gal'
    HelpUsage                   = 'Verwendung:'
    HelpAddCrashSyntax          = '1. Add-Crash (-Software <Software> -Reason <Reason> -Application <Program> -Driver <Driver> -PowerLevel <Powerebene, z.B. Kernel> [-Points <Punkte>]) (Ist interaktive Abfrage, wenn Parameter nicht angegeben werden bzw. wurden)'
    HelpAddCrashDescription     = '   Fügt einen neuen Absturz hinzu.'
    HelpSummarySyntax           = '2. Show-CrashSummary'
    HelpSummaryDescription      = '   Zeigt eine Zusammenfassung der Abstürze an.'
    HelpExportSyntax            = '3. Export-CrashLog'
    HelpExportDescription       = '   Exportiert das Absturzlog in CSV und JSON.'
    HelpClearSyntax             = '4. Clear-CrashLog'
    HelpClearDescription        = '   Leert das Absturzlog und erstellt ein Backup.'
    HelpOpenFileSyntax          = '5. Open-File -File <Dateipfad> -Software <Software>'
    HelpOpenFileDescription     = '   Öffnet eine Datei mit dem angegebenen Software.'

    # Crash entry output
    CrashAddedTitle             = 'Neuer Absturz hinzugefügt:'
    LabelSoftware               = 'Software'
    LabelReason                 = 'Grund'
    LabelProgram                = 'Programm'
    LabelCausedBy               = 'Verursacht durch'
    LabelPowerLevel             = 'Kraftebene'
    LabelIntermediatePoints     = 'Zwischenpunktzahl'
    LabelCrashTax               = 'Absturzsteuer'
    LabelTotalPoints            = 'Gesamtpunktzahl'
    PointsUnit                  = 'Punkt(e)'
    CrashTaxRate                = '19%'
    LogSeparator                = '==========================='

    # Crash summary
    SummaryTitle                = '----- Crash-Zusammenfassung -----'
    SummaryTotalCrashes         = 'Gesamtanzahl der Abstürze'
    SummaryTotalPoints          = 'Gesamtpunktzahl'
    SummaryAverageCrashTax      = 'Durchschnittliche Absturzsteuer'
    SummaryLastCrash            = 'Letzter Absturz'
    SummaryFooter               = '----------------------------------'

    # Log and file errors
    ErrorNoLogFile              = 'Keine Logdatei gefunden.'

    # Export
    ExportCompleted             = 'Export abgeschlossen:'
    ExportCsvLabel              = '→ CSV'
    ExportJsonLabel             = '→ JSON'

    # Clear log and backup
    BackupCreatedAt             = 'Backup erstellt unter'
    LogClearedSuccessfully      = 'Logdatei erfolgreich geleert.'

    # Open file
    FileDoesNotExist            = "Die angegebene Datei '{0}' existiert nicht."
    ProgramDoesNotExist         = "Das angegebene Programm '{0}' existiert nicht."
    FileOpenedMessage           = "Datei '{0}' wurde mit '{1}' geöffnet."

    # Log field labels
    LogDateTime                 = 'Datum/Zeit'
    LogSoftware                 = 'Software'
    LogReason                   = 'Grund'
    LogProgram                  = 'Programm'
    LogCausedBy                 = 'Verursacht durch'
    LogPowerLevel               = 'Kraftebene'
    LogIntermediatePoints       = 'Zwischenpunktzahl'
    LogCrashTax                 = 'Absturzsteuer'
    LogTotalPoints              = 'Gesamtpunktzahl'
}
