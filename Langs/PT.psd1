# File-ID: PT-PSD1-729cd751
# File-Version: 1.0.0

@{
    # Metadata
    FileID                      = 'PT-PSD1-729cd751'
    FileVersion                 = '1.0.0'

    # Language metadata
    LanguageCode                = 'PT'
    LanguageName                = 'Português'

    # Help
    HelpTitle                   = 'Crashpointingsystem v1.0.0'
    HelpAuthor                  = 'Autor: Alexander Gal'
    HelpUsage                   = 'Utilização:'
    HelpAddCrashSyntax          = '1. Add-Crash (-Software <Software> -Reason <Motivo> -Application <Programa> -Driver <Controlador> -PowerLevel <Nível de potência, por exemplo, Kernel> [-Points <Pontos>]) (Os parâmetros serão solicitados interativamente se não forem especificados.)'
    HelpAddCrashDescription     = '   Adiciona uma nova entrada de falha.'
    HelpSummarySyntax           = '2. Show-CrashSummary'
    HelpSummaryDescription      = '   Apresenta um resumo das falhas.'
    HelpExportSyntax            = '3. Export-CrashLog'
    HelpExportDescription       = '   Exporta o registo de falhas nos formatos CSV e JSON.'
    HelpClearSyntax             = '4. Clear-CrashLog'
    HelpClearDescription        = '   Limpa o registo de falhas e cria uma cópia de segurança.'
    HelpOpenFileSyntax          = '5. Open-File -File <Caminho do ficheiro> -Software <Software>'
    HelpOpenFileDescription     = '   Abre um ficheiro com o programa especificado.'

    # Crash entry output
    CrashAddedTitle             = 'Nova falha adicionada:'
    LabelSoftware               = 'Software'
    LabelReason                 = 'Motivo'
    LabelProgram                = 'Programa'
    LabelCausedBy               = 'Causado por'
    LabelPowerLevel             = 'Nível de potência'
    LabelIntermediatePoints     = 'Pontos intermédios'
    LabelCrashTax               = 'Imposto sobre falhas'
    LabelTotalPoints            = 'Pontos totais'
    PointsUnit                  = 'Ponto(s)'
    CrashTaxRate                = '19%'
    LogSeparator                = '==========================='

    # Crash summary
    SummaryTitle                = '----- Resumo das falhas -----'
    SummaryTotalCrashes         = 'Número total de falhas'
    SummaryTotalPoints          = 'Pontos totais'
    SummaryAverageCrashTax      = 'Imposto médio sobre falhas'
    SummaryLastCrash            = 'Última falha'
    SummaryFooter               = '----------------------------------'

    # Log and file errors
    ErrorNoLogFile              = 'Não foi encontrado nenhum ficheiro de registo.'

    # Export
    ExportCompleted             = 'Exportação concluída:'
    ExportCsvLabel              = '→ CSV'
    ExportJsonLabel             = '→ JSON'

    # Clear log and backup
    BackupCreatedAt             = 'Cópia de segurança criada em'
    LogClearedSuccessfully      = 'O ficheiro de registo foi limpo com sucesso.'

    # Open file
    FileDoesNotExist            = "O ficheiro especificado '{0}' não existe."
    ProgramDoesNotExist         = "O programa especificado '{0}' não existe."
    FileOpenedMessage           = "Ficheiro '{0}' aberto com '{1}'."

    # Log field labels
    LogDateTime                 = 'Data/Hora'
    LogSoftware                 = 'Software'
    LogReason                   = 'Motivo'
    LogProgram                  = 'Programa'
    LogCausedBy                 = 'Causado por'
    LogPowerLevel               = 'Nível de potência'
    LogIntermediatePoints       = 'Pontos intermédios'
    LogCrashTax                 = 'Imposto sobre falhas'
    LogTotalPoints              = 'Pontos totais'
}