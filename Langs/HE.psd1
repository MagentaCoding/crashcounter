# File-ID: HE-PSD1-495e3d33
# File-Version: 1.0.0

@{
    # Metadata
    FileID                      = 'HE-PSD1-495e3d33'
    FileVersion                 = '1.0.0'

    # Language metadata
    LanguageCode                = 'HE'
    LanguageName                = 'עברית'

    # Help
    HelpTitle                   = 'Crashpointingsystem v1.0.0'
    HelpAuthor                  = 'מחבר: Alexander Gal'
    HelpUsage                   = 'שימוש:'
    HelpAddCrashSyntax          = '1. Add-Crash (-Software <תוכנה> -Reason <סיבה> -Application <יישום> -Driver <מנהל התקן> -PowerLevel <רמת הספק, לדוגמה Kernel> [-Points <נקודות>]) (אם הפרמטרים אינם מצוינים, תתבקש להזין אותם באופן אינטראקטיבי.)'
    HelpAddCrashDescription     = '   מוסיף רשומת קריסה חדשה.'
    HelpSummarySyntax           = '2. Show-CrashSummary'
    HelpSummaryDescription      = '   מציג סיכום של הקריסות.'
    HelpExportSyntax            = '3. Export-CrashLog'
    HelpExportDescription       = '   מייצא את יומן הקריסות בפורמטים CSV ו-JSON.'
    HelpClearSyntax             = '4. Clear-CrashLog'
    HelpClearDescription        = '   מנקה את יומן הקריסות ויוצר עותק גיבוי.'
    HelpOpenFileSyntax          = '5. Open-File -File <נתיב הקובץ> -Software <תוכנה>'
    HelpOpenFileDescription     = '   פותח קובץ באמצעות התוכנית שצוינה.'

    # Crash entry output
    CrashAddedTitle             = 'נוספה קריסה חדשה:'
    LabelSoftware               = 'תוכנה'
    LabelReason                 = 'סיבה'
    LabelProgram                = 'תוכנית'
    LabelCausedBy               = 'נגרם על ידי'
    LabelPowerLevel             = 'רמת הספק'
    LabelIntermediatePoints     = 'נקודות ביניים'
    LabelCrashTax               = 'מס קריסה'
    LabelTotalPoints            = 'סך הנקודות'
    PointsUnit                  = 'נקודה/נקודות'
    CrashTaxRate                = '19%'
    LogSeparator                = '==========================='

    # Crash summary
    SummaryTitle                = '----- סיכום קריסות -----'
    SummaryTotalCrashes         = 'מספר הקריסות הכולל'
    SummaryTotalPoints          = 'סך הנקודות'
    SummaryAverageCrashTax      = 'מס קריסה ממוצע'
    SummaryLastCrash            = 'הקריסה האחרונה'
    SummaryFooter               = '----------------------------------'

    # Log and file errors
    ErrorNoLogFile              = 'לא נמצא קובץ יומן.'

    # Export
    ExportCompleted             = 'הייצוא הושלם:'
    ExportCsvLabel              = '→ CSV'
    ExportJsonLabel             = '→ JSON'

    # Clear log and backup
    BackupCreatedAt             = 'עותק הגיבוי נוצר בתאריך'
    LogClearedSuccessfully      = 'קובץ היומן נוקה בהצלחה.'

    # Open file
    FileDoesNotExist            = "הקובץ שצוין '{0}' אינו קיים."
    ProgramDoesNotExist         = "התוכנית שצוינה '{0}' אינה קיימת."
    FileOpenedMessage           = "הקובץ '{0}' נפתח באמצעות '{1}'."

    # Log field labels
    LogDateTime                 = 'תאריך/שעה'
    LogSoftware                 = 'תוכנה'
    LogReason                   = 'סיבה'
    LogProgram                  = 'תוכנית'
    LogCausedBy                 = 'נגרם על ידי'
    LogPowerLevel               = 'רמת הספק'
    LogIntermediatePoints       = 'נקודות ביניים'
    LogCrashTax                 = 'מס קריסה'
    LogTotalPoints              = 'סך הנקודות'
}