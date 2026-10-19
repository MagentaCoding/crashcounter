# File-ID: ES-PSD1-191ef6d7
# File-Version: 1.0.0

@{
    # Metadata
    FileID                      = 'ES-PSD1-191ef6d7'
    FileVersion                 = '1.0.0'

    # Language metadata
    LanguageCode                = 'ES'
    LanguageName                = 'Español'

    # Help
    HelpTitle                   = 'Crashpointingsystem v1.0.0'
    HelpAuthor                  = 'Autor: Alexander Gal'
    HelpUsage                   = 'Uso:'
    HelpAddCrashSyntax          = '1. Add-Crash (-Software <Software> -Reason <Reason> -Application <Programa> -Driver <Controlador> -PowerLevel <Nivel de potencia, p. ej., Kernel> [-Points <Puntos>]) (Se solicitarán los parámetros de forma interactiva si no se especifican.)'
    HelpAddCrashDescription     = '   Añade una nueva entrada de fallo.'
    HelpSummarySyntax           = '2. Show-CrashSummary'
    HelpSummaryDescription      = '   Muestra un resumen de los fallos.'
    HelpExportSyntax            = '3. Export-CrashLog'
    HelpExportDescription       = '   Exporta el registro de fallos en formatos CSV y JSON.'
    HelpClearSyntax             = '4. Clear-CrashLog'
    HelpClearDescription        = '   Borra el registro de fallos y crea una copia de seguridad.'
    HelpOpenFileSyntax          = '5. Open-File -File <Ruta del archivo> -Software <Software>'
    HelpOpenFileDescription     = '   Abre un archivo con el programa especificado.'

    # Crash entry output
    CrashAddedTitle             = 'Nuevo fallo añadido:'
    LabelSoftware               = 'Software'
    LabelReason                 = 'Motivo'
    LabelProgram                = 'Programa'
    LabelCausedBy               = 'Causado por'
    LabelPowerLevel             = 'Nivel de potencia'
    LabelIntermediatePoints     = 'Puntos intermedios'
    LabelCrashTax               = 'Impuesto por fallo'
    LabelTotalPoints            = 'Puntos totales'
    PointsUnit                  = 'Punto(s)'
    CrashTaxRate                = '19%'
    LogSeparator                = '==========================='

    # Crash summary
    SummaryTitle                = '----- Resumen de fallos -----'
    SummaryTotalCrashes         = 'Número total de fallos'
    SummaryTotalPoints          = 'Puntos totales'
    SummaryAverageCrashTax      = 'Impuesto medio por fallo'
    SummaryLastCrash            = 'Último fallo'
    SummaryFooter               = '----------------------------------'

    # Log and file errors
    ErrorNoLogFile              = 'No se ha encontrado ningún archivo de registro.'

    # Export
    ExportCompleted             = 'Exportación completada:'
    ExportCsvLabel              = '→ CSV'
    ExportJsonLabel             = '→ JSON'

    # Clear log and backup
    BackupCreatedAt             = 'Copia de seguridad creada el'
    LogClearedSuccessfully      = 'El archivo de registro se ha borrado correctamente.'

    # Open file
    FileDoesNotExist            = "El archivo especificado '{0}' no existe."
    ProgramDoesNotExist         = "El programa especificado '{0}' no existe."
    FileOpenedMessage           = "Archivo '{0}' abierto con '{1}'."

    # Log field labels
    LogDateTime                 = 'Fecha/Hora'
    LogSoftware                 = 'Software'
    LogReason                   = 'Motivo'
    LogProgram                  = 'Programa'
    LogCausedBy                 = 'Causado por'
    LogPowerLevel               = 'Nivel de potencia'
    LogIntermediatePoints       = 'Puntos intermedios'
    LogCrashTax                 = 'Impuesto por fallo'
    LogTotalPoints              = 'Puntos totales'
}