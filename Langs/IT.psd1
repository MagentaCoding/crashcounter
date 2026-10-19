# File-ID: IT-PSD1-9330a6b1
# File-Version: 1.0.0

@{
    # Metadata
    FileID                      = 'IT-PSD1-9330a6b1'
    FileVersion                 = '1.0.0'

    # Language metadata
    LanguageCode                = 'IT'
    LanguageName                = 'Italiano'

    # Help
    HelpTitle                   = 'Crashpointingsystem v1.0.0'
    HelpAuthor                  = 'Autore: Alexander Gal'
    HelpUsage                   = 'Utilizzo:'
    HelpAddCrashSyntax          = '1. Add-Crash (-Software <Software> -Reason <Motivo> -Application <Programma> -Driver <Driver> -PowerLevel <Livello di potenza, ad es. Kernel> [-Points <Punti>]) (I parametri verranno richiesti interattivamente se non vengono specificati.)'
    HelpAddCrashDescription     = '   Aggiunge una nuova voce di arresto anomalo.'
    HelpSummarySyntax           = '2. Show-CrashSummary'
    HelpSummaryDescription      = '   Visualizza un riepilogo degli arresti anomali.'
    HelpExportSyntax            = '3. Export-CrashLog'
    HelpExportDescription       = '   Esporta il registro degli arresti anomali nei formati CSV e JSON.'
    HelpClearSyntax             = '4. Clear-CrashLog'
    HelpClearDescription        = '   Cancella il registro degli arresti anomali e crea una copia di backup.'
    HelpOpenFileSyntax          = '5. Open-File -File <Percorso del file> -Software <Software>'
    HelpOpenFileDescription     = '   Apre un file con il programma specificato.'

    # Crash entry output
    CrashAddedTitle             = 'Nuovo arresto anomalo aggiunto:'
    LabelSoftware               = 'Software'
    LabelReason                 = 'Motivo'
    LabelProgram                = 'Programma'
    LabelCausedBy               = 'Causato da'
    LabelPowerLevel             = 'Livello di potenza'
    LabelIntermediatePoints     = 'Punti intermedi'
    LabelCrashTax               = 'Imposta sugli arresti anomali'
    LabelTotalPoints            = 'Punti totali'
    PointsUnit                  = 'Punto/i'
    CrashTaxRate                = '19%'
    LogSeparator                = '==========================='

    # Crash summary
    SummaryTitle                = '----- Riepilogo degli arresti anomali -----'
    SummaryTotalCrashes         = 'Numero totale di arresti anomali'
    SummaryTotalPoints          = 'Punti totali'
    SummaryAverageCrashTax      = 'Imposta media sugli arresti anomali'
    SummaryLastCrash            = 'Ultimo arresto anomalo'
    SummaryFooter               = '----------------------------------'

    # Log and file errors
    ErrorNoLogFile              = 'Nessun file di registro trovato.'

    # Export
    ExportCompleted             = 'Esportazione completata:'
    ExportCsvLabel              = '→ CSV'
    ExportJsonLabel             = '→ JSON'

    # Clear log and backup
    BackupCreatedAt             = 'Copia di backup creata il'
    LogClearedSuccessfully      = 'Il file di registro è stato cancellato correttamente.'

    # Open file
    FileDoesNotExist            = "Il file specificato '{0}' non esiste."
    ProgramDoesNotExist         = "Il programma specificato '{0}' non esiste."
    FileOpenedMessage           = "File '{0}' aperto con '{1}'."

    # Log field labels
    LogDateTime                 = 'Data/Ora'
    LogSoftware                 = 'Software'
    LogReason                   = 'Motivo'
    LogProgram                  = 'Programma'
    LogCausedBy                 = 'Causato da'
    LogPowerLevel               = 'Livello di potenza'
    LogIntermediatePoints       = 'Punti intermedi'
    LogCrashTax                 = 'Imposta sugli arresti anomali'
    LogTotalPoints              = 'Punti totali'
}