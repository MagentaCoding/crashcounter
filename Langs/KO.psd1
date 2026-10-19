# File-ID: KO-PSD1-6a0db216
# File-Version: 1.0.0

@{
    # Metadata
    FileID                      = 'KO-PSD1-6a0db216'
    FileVersion                 = '1.0.0'

    # Language metadata
    LanguageCode                = 'KO'
    LanguageName                = '한국어'

    # Help
    HelpTitle                   = 'Crashpointingsystem v1.0.0'
    HelpAuthor                  = '작성자: Alexander Gal'
    HelpUsage                   = '사용법:'
    HelpAddCrashSyntax          = '1. Add-Crash (-Software <소프트웨어> -Reason <원인> -Application <프로그램> -Driver <드라이버> -PowerLevel <전원 수준, 예: Kernel> [-Points <포인트>]) (매개변수를 지정하지 않으면 대화형으로 입력을 요청합니다.)'
    HelpAddCrashDescription     = '   새로운 충돌 기록을 추가합니다.'
    HelpSummarySyntax           = '2. Show-CrashSummary'
    HelpSummaryDescription      = '   충돌 요약을 표시합니다.'
    HelpExportSyntax            = '3. Export-CrashLog'
    HelpExportDescription       = '   충돌 로그를 CSV 및 JSON 형식으로 내보냅니다.'
    HelpClearSyntax             = '4. Clear-CrashLog'
    HelpClearDescription        = '   충돌 로그를 지우고 백업을 생성합니다.'
    HelpOpenFileSyntax          = '5. Open-File -File <파일 경로> -Software <소프트웨어>'
    HelpOpenFileDescription     = '   지정된 프로그램으로 파일을 엽니다.'

    # Crash entry output
    CrashAddedTitle             = '새 충돌 항목이 추가되었습니다:'
    LabelSoftware               = '소프트웨어'
    LabelReason                 = '원인'
    LabelProgram                = '프로그램'
    LabelCausedBy               = '발생 원인'
    LabelPowerLevel             = '전원 수준'
    LabelIntermediatePoints     = '중간 포인트'
    LabelCrashTax               = '충돌 세금'
    LabelTotalPoints            = '총 포인트'
    PointsUnit                  = '포인트'
    CrashTaxRate                = '19%'
    LogSeparator                = '==========================='

    # Crash summary
    SummaryTitle                = '----- 충돌 요약 -----'
    SummaryTotalCrashes         = '총 충돌 횟수'
    SummaryTotalPoints          = '총 포인트'
    SummaryAverageCrashTax      = '평균 충돌 세금'
    SummaryLastCrash            = '마지막 충돌'
    SummaryFooter               = '----------------------------------'

    # Log and file errors
    ErrorNoLogFile              = '로그 파일을 찾을 수 없습니다.'

    # Export
    ExportCompleted             = '내보내기가 완료되었습니다:'
    ExportCsvLabel              = '→ CSV'
    ExportJsonLabel             = '→ JSON'

    # Clear log and backup
    BackupCreatedAt             = '백업 생성 시간'
    LogClearedSuccessfully      = '로그 파일이 성공적으로 삭제되었습니다.'

    # Open file
    FileDoesNotExist            = "지정된 파일 '{0}'이(가) 존재하지 않습니다."
    ProgramDoesNotExist         = "지정된 프로그램 '{0}'이(가) 존재하지 않습니다."
    FileOpenedMessage           = "파일 '{0}'을(를) '{1}'(으)로 열었습니다."

    # Log field labels
    LogDateTime                 = '날짜/시간'
    LogSoftware                 = '소프트웨어'
    LogReason                   = '원인'
    LogProgram                  = '프로그램'
    LogCausedBy                 = '발생 원인'
    LogPowerLevel               = '전원 수준'
    LogIntermediatePoints       = '중간 포인트'
    LogCrashTax                 = '충돌 세금'
    LogTotalPoints              = '총 포인트'
}