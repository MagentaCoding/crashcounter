# File-ID: JA-PSD1-5b29680e
# File-Version: 1.0.0

@{
    # Metadata
    FileID                      = 'JA-PSD1-5b29680e'
    FileVersion                 = '1.0.0'

    # Language metadata
    LanguageCode                = 'JA'
    LanguageName                = '日本語'

    # Help
    HelpTitle                   = 'Crashpointingsystem v1.0.0'
    HelpAuthor                  = '作成者: Alexander Gal'
    HelpUsage                   = '使用方法:'
    HelpAddCrashSyntax          = '1. Add-Crash (-Software <ソフトウェア> -Reason <理由> -Application <プログラム> -Driver <ドライバー> -PowerLevel <電源レベル、例: Kernel> [-Points <ポイント>]) (パラメーターが指定されていない場合は、対話形式で入力を求められます。)'
    HelpAddCrashDescription     = '   新しいクラッシュ記録を追加します。'
    HelpSummarySyntax           = '2. Show-CrashSummary'
    HelpSummaryDescription      = '   クラッシュの概要を表示します。'
    HelpExportSyntax            = '3. Export-CrashLog'
    HelpExportDescription       = '   クラッシュログをCSV形式およびJSON形式でエクスポートします。'
    HelpClearSyntax             = '4. Clear-CrashLog'
    HelpClearDescription        = '   クラッシュログを消去し、バックアップを作成します。'
    HelpOpenFileSyntax          = '5. Open-File -File <ファイルパス> -Software <ソフトウェア>'
    HelpOpenFileDescription     = '   指定したプログラムでファイルを開きます。'

    # Crash entry output
    CrashAddedTitle             = '新しいクラッシュを追加しました:'
    LabelSoftware               = 'ソフトウェア'
    LabelReason                 = '理由'
    LabelProgram                = 'プログラム'
    LabelCausedBy               = '原因'
    LabelPowerLevel             = '電源レベル'
    LabelIntermediatePoints     = '中間ポイント'
    LabelCrashTax               = 'クラッシュ税'
    LabelTotalPoints            = '合計ポイント'
    PointsUnit                  = 'ポイント'
    CrashTaxRate                = '19%'
    LogSeparator                = '==========================='

    # Crash summary
    SummaryTitle                = '----- クラッシュ概要 -----'
    SummaryTotalCrashes         = 'クラッシュ総数'
    SummaryTotalPoints          = '合計ポイント'
    SummaryAverageCrashTax      = '平均クラッシュ税'
    SummaryLastCrash            = '最後のクラッシュ'
    SummaryFooter               = '----------------------------------'

    # Log and file errors
    ErrorNoLogFile              = 'ログファイルが見つかりません。'

    # Export
    ExportCompleted             = 'エクスポートが完了しました:'
    ExportCsvLabel              = '→ CSV'
    ExportJsonLabel             = '→ JSON'

    # Clear log and backup
    BackupCreatedAt             = 'バックアップ作成日時'
    LogClearedSuccessfully      = 'ログファイルを正常に消去しました。'

    # Open file
    FileDoesNotExist            = "指定されたファイル '{0}' は存在しません。"
    ProgramDoesNotExist         = "指定されたプログラム '{0}' は存在しません。"
    FileOpenedMessage           = "ファイル '{0}' を '{1}' で開きました。"

    # Log field labels
    LogDateTime                 = '日時'
    LogSoftware                 = 'ソフトウェア'
    LogReason                   = '理由'
    LogProgram                  = 'プログラム'
    LogCausedBy                 = '原因'
    LogPowerLevel               = '電源レベル'
    LogIntermediatePoints       = '中間ポイント'
    LogCrashTax                 = 'クラッシュ税'
    LogTotalPoints              = '合計ポイント'
}