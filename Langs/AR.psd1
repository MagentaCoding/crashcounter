# File-ID: AR-PSD1-794e7660
# File-Version: 1.0.0

@{
    # Metadata
    FileID                      = 'AR-PSD1-794e7660'
    FileVersion                 = '1.0.0'

    # Language metadata
    LanguageCode                = 'AR'
    LanguageName                = 'العربية'

    # Help
    HelpTitle                   = 'Crashpointingsystem v1.0.0'
    HelpAuthor                  = 'المؤلف: Alexander Gal'
    HelpUsage                   = 'طريقة الاستخدام:'
    HelpAddCrashSyntax          = '1. Add-Crash (-Software <البرنامج> -Reason <السبب> -Application <التطبيق> -Driver <برنامج التشغيل> -PowerLevel <مستوى الطاقة، مثل Kernel> [-Points <النقاط>]) (إذا لم يتم تحديد المعلمات، فسيُطلب إدخالها تفاعليًا.)'
    HelpAddCrashDescription     = '   يضيف سجل تعطل جديدًا.'
    HelpSummarySyntax           = '2. Show-CrashSummary'
    HelpSummaryDescription      = '   يعرض ملخصًا لحالات التعطل.'
    HelpExportSyntax            = '3. Export-CrashLog'
    HelpExportDescription       = '   يصدّر سجل التعطل بتنسيقي CSV وJSON.'
    HelpClearSyntax             = '4. Clear-CrashLog'
    HelpClearDescription        = '   يمسح سجل التعطل وينشئ نسخة احتياطية.'
    HelpOpenFileSyntax          = '5. Open-File -File <مسار الملف> -Software <البرنامج>'
    HelpOpenFileDescription     = '   يفتح ملفًا باستخدام البرنامج المحدد.'

    # Crash entry output
    CrashAddedTitle             = 'تمت إضافة تعطل جديد:'
    LabelSoftware               = 'البرنامج'
    LabelReason                 = 'السبب'
    LabelProgram                = 'التطبيق'
    LabelCausedBy               = 'السبب المباشر'
    LabelPowerLevel             = 'مستوى الطاقة'
    LabelIntermediatePoints     = 'النقاط الوسيطة'
    LabelCrashTax               = 'ضريبة التعطل'
    LabelTotalPoints            = 'إجمالي النقاط'
    PointsUnit                  = 'نقطة/نقاط'
    CrashTaxRate                = '19%'
    LogSeparator                = '==========================='

    # Crash summary
    SummaryTitle                = '----- ملخص حالات التعطل -----'
    SummaryTotalCrashes         = 'إجمالي عدد حالات التعطل'
    SummaryTotalPoints          = 'إجمالي النقاط'
    SummaryAverageCrashTax      = 'متوسط ضريبة التعطل'
    SummaryLastCrash            = 'آخر تعطل'
    SummaryFooter               = '----------------------------------'

    # Log and file errors
    ErrorNoLogFile              = 'لم يتم العثور على ملف السجل.'

    # Export
    ExportCompleted             = 'اكتمل التصدير:'
    ExportCsvLabel              = '→ CSV'
    ExportJsonLabel             = '→ JSON'

    # Clear log and backup
    BackupCreatedAt             = 'تم إنشاء النسخة الاحتياطية في'
    LogClearedSuccessfully      = 'تم مسح ملف السجل بنجاح.'

    # Open file
    FileDoesNotExist            = "الملف المحدد '{0}' غير موجود."
    ProgramDoesNotExist         = "البرنامج المحدد '{0}' غير موجود."
    FileOpenedMessage           = "تم فتح الملف '{0}' باستخدام '{1}'."

    # Log field labels
    LogDateTime                 = 'التاريخ/الوقت'
    LogSoftware                 = 'البرنامج'
    LogReason                   = 'السبب'
    LogProgram                  = 'التطبيق'
    LogCausedBy                 = 'السبب المباشر'
    LogPowerLevel               = 'مستوى الطاقة'
    LogIntermediatePoints       = 'النقاط الوسيطة'
    LogCrashTax                 = 'ضريبة التعطل'
    LogTotalPoints              = 'إجمالي النقاط'
}