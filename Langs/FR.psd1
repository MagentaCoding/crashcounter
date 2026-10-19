# File-ID: FR-PSD1-917972b8
# File-Version: 1.0.0

@{
    # Metadata
    FileID                      = 'FR-PSD1-917972b8'
    FileVersion                 = '1.0.0'

    # Language metadata
    LanguageCode                = 'FR'
    LanguageName                = 'Français'

    # Help
    HelpTitle                   = 'Crashpointingsystem v1.0.0'
    HelpAuthor                  = 'Auteur : Alexander Gal'
    HelpUsage                   = 'Uso:'
    HelpAddCrashSyntax          = "1. Add-Crash (-Software <logiciel> -Reason <motif> -Application <programme> -Driver <pilote> -PowerLevel <niveau de puissance, par exemple noyau> [-Points <points>]) (Il s'agit d'une interrogation interactive si aucun paramètre n'est ou n'a été spécifié.)"
    HelpAddCrashDescription     = '   Ajoute une nouvelle entrée relative à un plantage'
    HelpSummarySyntax           = '2. Show-CrashSummary'
    HelpSummaryDescription      = '   Affiche un récapitulatif des plantages'
    HelpExportSyntax            = '3. Export-CrashLog'
    HelpExportDescription       = '   Exporte le journal des plantages aux formats CSV et JSON'
    HelpClearSyntax             = '4. Clear-CrashLog'
    HelpClearDescription        = '   Efface le journal des plantages et crée une sauvegarde'
    HelpOpenFileSyntax          = '5. Open-File -File <File path> -Software <Software>'
    HelpOpenFileDescription     = '   Ouvre un fichier avec le programme indiqué'

    # Crash entry output
    CrashAddedTitle             = 'Nouvel accident ajouté :'
    LabelSoftware               = 'Logiciel'
    LabelReason                 = 'Motif'
    LabelProgram                = 'Programme'
    LabelCausedBy               = 'Causé par'
    LabelPowerLevel             = 'Niveau de puissance'
    LabelIntermediatePoints     = 'Sous-total'
    LabelCrashTax               = 'Taxe de crash'
    LabelTotalPoints            = 'Total'
    PointsUnit                  = 'Point(s)'
    CrashTaxRate                = '19%'
    LogSeparator                = '==========================='

    # Crash summary
    SummaryTitle                = "----- Résumé de l'accident -----"
    SummaryTotalCrashes         = 'Nombre total de crashes'
    SummaryTotalPoints          = 'Total'
    SummaryAverageCrashTax      = 'Taxe moyenne sur les faillites'
    SummaryLastCrash            = 'Dernier crash'
    SummaryFooter               = '----------------------------------'

    # Log and file errors
    ErrorNoLogFile              = "Aucun fichier journal n'a été trouvé"

    # Export
    ExportCompleted             = 'Exportation terminée :'
    ExportCsvLabel              = '→ CSV'
    ExportJsonLabel             = '→ JSON'

    # Clear log and backup
    BackupCreatedAt             = 'Sauvegarde créée le'
    LogClearedSuccessfully      = 'Le fichier journal a été effacé avec succès'

    # Open file
    FileDoesNotExist            = "Le fichier indiqué « {0} » n'existe pas"
    ProgramDoesNotExist         = "Le programme indiqué « {0} » n'existe pas"
    FileOpenedMessage           = "Le fichier « {0} » a été ouvert avec « {1} »"

    # Log field labels
    LogDateTime                 = 'Date/Heure'
    LogSoftware                 = 'Logiciel'
    LogReason                   = 'Motif'
    LogProgram                  = 'Programme'
    LogCausedBy                 = 'Causé par'
    LogPowerLevel               = 'Niveau de puissance'
    LogIntermediatePoints       = 'Sous-total'
    LogCrashTax                 = 'Taxe de crash'
    LogTotalPoints              = 'Total'
}
