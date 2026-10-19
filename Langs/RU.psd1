# File-ID: RU-PSD1-a187c783
# File-Version: 1.0.0

@{
    # Metadata
    FileID                      = 'RU-PSD1-a187c783'
    FileVersion                 = '1.0.0'

    # Language metadata
    LanguageCode                = 'RU'
    LanguageName                = 'Русский'

    # Help
    HelpTitle                   = 'Crashpointingsystem v1.0.0'
    HelpAuthor                  = 'Автор: Alexander Gal'
    HelpUsage                   = 'Использование:'
    HelpAddCrashSyntax          = '1. Add-Crash (-Software <Программное обеспечение> -Reason <Причина> -Application <Программа> -Driver <Драйвер> -PowerLevel <Уровень мощности, например, Kernel> [-Points <Баллы>]) (Если параметры не указаны, они будут запрошены в интерактивном режиме.)'
    HelpAddCrashDescription     = '   Добавляет новую запись о сбое.'
    HelpSummarySyntax           = '2. Show-CrashSummary'
    HelpSummaryDescription      = '   Отображает сводку сбоев.'
    HelpExportSyntax            = '3. Export-CrashLog'
    HelpExportDescription       = '   Экспортирует журнал сбоев в форматах CSV и JSON.'
    HelpClearSyntax             = '4. Clear-CrashLog'
    HelpClearDescription        = '   Очищает журнал сбоев и создаёт резервную копию.'
    HelpOpenFileSyntax          = '5. Open-File -File <Путь к файлу> -Software <Программное обеспечение>'
    HelpOpenFileDescription     = '   Открывает файл с помощью указанной программы.'

    # Crash entry output
    CrashAddedTitle             = 'Добавлен новый сбой:'
    LabelSoftware               = 'Программное обеспечение'
    LabelReason                 = 'Причина'
    LabelProgram                = 'Программа'
    LabelCausedBy               = 'Вызвано'
    LabelPowerLevel             = 'Уровень мощности'
    LabelIntermediatePoints     = 'Промежуточные баллы'
    LabelCrashTax               = 'Налог на сбой'
    LabelTotalPoints            = 'Общее количество баллов'
    PointsUnit                  = 'Баллы'
    CrashTaxRate                = '19%'
    LogSeparator                = '==========================='

    # Crash summary
    SummaryTitle                = '----- Сводка сбоев -----'
    SummaryTotalCrashes         = 'Общее количество сбоев'
    SummaryTotalPoints          = 'Общее количество баллов'
    SummaryAverageCrashTax      = 'Средний налог на сбой'
    SummaryLastCrash            = 'Последний сбой'
    SummaryFooter               = '----------------------------------'

    # Log and file errors
    ErrorNoLogFile              = 'Файл журнала не найден.'

    # Export
    ExportCompleted             = 'Экспорт завершён:'
    ExportCsvLabel              = '→ CSV'
    ExportJsonLabel             = '→ JSON'

    # Clear log and backup
    BackupCreatedAt             = 'Резервная копия создана:'
    LogClearedSuccessfully      = 'Файл журнала успешно очищен.'

    # Open file
    FileDoesNotExist            = "Указанный файл '{0}' не существует."
    ProgramDoesNotExist         = "Указанная программа '{0}' не существует."
    FileOpenedMessage           = "Файл '{0}' открыт с помощью '{1}'."

    # Log field labels
    LogDateTime                 = 'Дата/время'
    LogSoftware                 = 'Программное обеспечение'
    LogReason                   = 'Причина'
    LogProgram                  = 'Программа'
    LogCausedBy                 = 'Вызвано'
    LogPowerLevel               = 'Уровень мощности'
    LogIntermediatePoints       = 'Промежуточные баллы'
    LogCrashTax                 = 'Налог на сбой'
    LogTotalPoints              = 'Общее количество баллов'
}