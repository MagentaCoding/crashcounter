# Crashpointingsystem – Installer v1.0
# © Alexander Gal | All rights reserved.

Clear-Host
Write-Host "Hallo!" -ForegroundColor Cyan
sleep 1
Write-Host "Hello!" -ForegroundColor Cyan
sleep 1
Write-Host "Bonjour!" -ForegroundColor Cyan
sleep 1
Write-Host "Hola!" -ForegroundColor Cyan
sleep 1
Write-Host "Ciao!" -ForegroundColor Cyan
sleep 1
Write-Host "Olá!" -ForegroundColor Cyan
sleep 1
Write-Host "Привет!" -ForegroundColor Cyan
sleep 1
Write-Host "こんにちは!" -ForegroundColor Cyan
sleep 1
Write-Host "안녕하세요!" -ForegroundColor Cyan
sleep 1
Write-Host "مرحبا!" -ForegroundColor Cyan
sleep 1
Write-Host "שלום!" -ForegroundColor Cyan
sleep 3
Clear-Host

Write-Host "Please select the preferred installation language for this installation:" -ForegroundColor Green
Write-Host "[EN] English" -ForegroundColor Cyan
Write-Host "[DE] Deutsch" -ForegroundColor Cyan
Write-Host "[FR] Français" -ForegroundColor Cyan
Write-Host "[ES] Español" -ForegroundColor Cyan
Write-Host "[IT] Italiano" -ForegroundColor Cyan
Write-Host "[PT] Português" -ForegroundColor Cyan
Write-Host "[RU] Русский" -ForegroundColor Cyan
Write-Host "[JA] 日本語" -ForegroundColor Cyan
Write-Host "[KO] 한국어" -ForegroundColor Cyan
Write-Host "[AR] العربية" -ForegroundColor Cyan
Write-Host "[HE] עברית" -ForegroundColor Cyan
Write-Host ""
Write-Host "Enter the 2 letter language code as of the languages provided above" -ForegroundColor Yellow
Write-Host ""
Write-Host "Language Code: " -ForegroundColor Blue -NoNewline
$languageCode = Read-Host

# Languages Functions
function ENGLISH {
    Write-Host 'Language “English” selected' -ForegroundColor Green
}
function DEUTSCH {
    Write-Host 'Sprache „Deutsch“ ausgewählt' -ForegroundColor Green
    Write-Host ""
}
function FRANCAIS {
    Write-Host "Langue « Français » sélectionnée" -ForegroundColor Green
}
function ESPANOL {
    Write-Host "Se ha seleccionado el idioma «español»" -ForegroundColor Green
}
function ITALIANO {
    Write-Host 'Lingua “italiano” selezionata' -ForegroundColor Green
}
function PORTUGUES {
    Write-Host "Idioma «Português» selecionado" -ForegroundColor Green
}
function RUSSKIY {
    Write-Host "Выбран язык «русский»" -ForegroundColor Green
}
function NIPPON {
    Write-Host "言語「日本語」が選択されました" -ForegroundColor Green
}
function HANGUGO {
    Write-Host "언어 '한국어'가 선택되었습니다" -ForegroundColor Green
}
function ARABIC {
    Write-Host 'تم اختيار اللغة ”العربية“' -ForegroundColor Green
}
function HEBREW {
    Write-Host 'נבחרה השפה "עברית"' -ForegroundColor Green
}
function DEFAULTI {
    Write-Host "Aufgrund von neulich durchgeführten Ereignissen die durch Ihre Benutzerinteraktionen durchgeführt wurden, müssen wir aus dem Bundesministerium für Laufwerksbuchstaben, Benutzerprogramminstallationen und Dummheit ihnen leider mitteilen das diese Aktion bzw ihr eingegebener Sprachcode leider hier nicht unterschützt wird. Falls sie ein Leerzeichen (ASCII-Hex-Code 20) eingeben haben, würde ich ihnen Empfehlen den Sprachcode ihrer Sprache bzw einer der unterstützen Sprachen bzw Sprache einzugeben. Dies gilt auch dafür wenn sie einfach so Enter gedrückt haben. Für Schüler und Schülerinnen empfehlen wir in der Schule in Klassenarbeiten und/oder Tests mal die Aufgabenstellung zu lesen." -ForegroundColor Red
    Write-Host ""
    Write-Host "Mit freundlichen Grüßen," -ForegroundColor Red
    Write-Host "- Das Bundesministerium für Laufwerksbuchstaben, Benutzerprogramminstallationen und Dummheit" -ForegroundColor Red
    Write-Host "- Das MagentaStudio Team. 🖕" -ForegroundColor Magenta
    sleep 15
    Clear-Host
    Write-Host "Due to recent events triggered by your user interactions, we at the Federal Ministry of Drive Letters, User Program Installations, and Stupidity regret to inform you that this action—or rather, the language code you entered—is unfortunately not supported here. If you entered a space (ASCII hex code 20), I would recommend that you enter the language code for your language or one of the supported languages. This also applies if you simply pressed Enter. For students, we recommend reading the instructions carefully before taking class assignments and/or tests at school." -ForegroundColor Red
    Write-Host ""
    Write-Host "Sincerely," -ForegroundColor Red
    Write-Host "- The Federal Ministry of Drive Letters, User Program Installations, and Stupidity" -ForegroundColor Red
    Write-Host "- The MagentaStudio Team. 🖕" -ForegroundColor Magenta
    sleep 15
    Clear-Host
    Write-Host "En raison d'événements récents liés à vos interactions en tant qu'utilisateur, nous sommes malheureusement contraints, au nom du ministère fédéral des Lettres de lecteur, des installations de programmes utilisateur et de la bêtise, de vous informer que cette action ou le code de langue que vous avez saisi n'est malheureusement pas pris en charge ici. Si vous avez saisi un espace (code hexadécimal ASCII 20), je vous recommande de saisir le code de votre langue ou celui de l’une des langues prises en charge. Cela vaut également si vous avez simplement appuyé sur la touche Entrée. Pour les élèves, nous vous recommandons de lire attentivement les consignes des devoirs et/ou des contrôles à l’école." -ForegroundColor Red
    Write-Host ""
    Write-Host "Cordialement," -ForegroundColor Red
    Write-Host "- Le ministère fédéral des lettres de lecteur, des installations de programmes utilisateur et de la bêtise" -ForegroundColor Red
    Write-Host "- L'équipe MagentaStudio. 🖕" -ForegroundColor Magenta
    sleep 15
    Clear-Host
    Write-Host "Debido a una serie de sucesos ocurridos recientemente como consecuencia de las interacciones de los usuarios, desde el Ministerio Federal de Letras de Unidad, Instalaciones de Programas de Usuario y Estupidez nos vemos obligados a informarles de que, lamentablemente, esta acción o el código de idioma que han introducido no es compatible aquí. Si ha introducido un espacio (código hexadecimal ASCII 20), le recomiendo que introduzca el código de idioma de su lengua o de uno de los idiomas compatibles. Esto también se aplica si simplemente ha pulsado la tecla Intro. A los alumnos y alumnas les recomendamos que, en el colegio, lean las instrucciones de los trabajos de clase y/o exámenes." -ForegroundColor Red
    Write-Host ""
    Write-Host "Atentamente," -ForegroundColor Red
    Write-Host "- El Ministerio Federal de Letras de Unidad, Instalaciones de Programas de Usuario y Estupidez" -ForegroundColor Red
    Write-Host "- El equipo de MagentaStudio. 🖕" -ForegroundColor Magenta
    sleep 15
    Clear-Host
    Write-Host "A seguito di recenti eventi causati dalle interazioni degli utenti, il Ministero Federale delle Lettere di Unità, delle Installazioni di Programmi Utente e della Stupidità è purtroppo costretto a comunicare che questa azione, ovvero il codice lingua da voi inserito, non è supportata in questa sede. Se avete inserito uno spazio (codice esadecimale ASCII 20), vi consiglio di inserire il codice della vostra lingua o di una delle lingue supportate. Ciò vale anche nel caso in cui abbiate semplicemente premuto il tasto Invio. Agli studenti e alle studentesse consigliamo di leggere attentamente le istruzioni prima di svolgere i compiti in classe e/o i test a scuola." -ForegroundColor Red
    Write-Host ""
    Write-Host "Cordiali saluti," -ForegroundColor Red
    Write-Host "- Il Ministero Federale delle Lettere di Unità, delle Installazioni di Programmi Utente e della Stupidità" -ForegroundColor Red
    Write-Host "- Il team di MagentaStudio. 🖕" -ForegroundColor Magenta
    sleep 15
    Clear-Host
    Write-Host "Devido a eventos ocorridos recentemente, resultantes das interações dos utilizadores, temos, infelizmente, de informar, em nome do Ministério Federal das Letras de Unidade, Instalações de Programas de Utilizador e Estupidez, que esta ação, ou o código de idioma introduzido, não é, infelizmente, suportado aqui. Caso tenha introduzido um espaço (código hexadecimal ASCII 20), recomendo que introduza o código do seu idioma ou de um dos idiomas suportados. Isto também se aplica caso tenha simplesmente premido a tecla Enter. Aos alunos e alunas, recomendamos que, na escola, durante os trabalhos de casa e/ou testes, leiam primeiro as instruções da tarefa." -ForegroundColor Red
    Write-Host ""
    Write-Host "Atenciosamente," -ForegroundColor Red
    Write-Host "- O Ministério Federal das Letras de Unidade, Instalações de Programas de Utilizador e Estupidez" -ForegroundColor Red
    Write-Host "- A equipa MagentaStudio. 🖕" -ForegroundColor Magenta
    sleep 15
    Clear-Host
    Write-Host "В связи с недавними событиями, вызванными действиями пользователей, мы, Федеральное министерство букв дисков, установки пользовательских программ и глупости, вынуждены с сожалением сообщить вам, что данная операция, а именно введенный вами языковой код, к сожалению, здесь не поддерживается. Если вы ввели пробел (шестнадцатеричный код ASCII 20), я бы порекомендовал вам ввести код вашего языка или одного из поддерживаемых языков. Это также относится к случаям, когда вы просто нажали клавишу Enter. Учащимся мы рекомендуем в школе при выполнении контрольных работ и/или тестов сначала читать задание." -ForegroundColor Red
    Write-Host ""
    Write-Host "С уважением," -ForegroundColor Red
    Write-Host "- Федеральное министерство букв дисков, установки пользовательских программ и глупости" -ForegroundColor Red
    Write-Host "- Команда MagentaStudio. 🖕" -ForegroundColor Magenta
    sleep 15
    Clear-Host
    Write-Host "先日、ユーザーの操作によって発生した一連の事象を受け、連邦ドライブ文字・ユーザープログラムインストール・愚かさ省より、残念ながら、この操作、あるいはご入力いただいた言語コードは当システムではサポートされていないことをお知らせせざるを得ません。スペース（ASCII 16進コード 20）を入力された場合は、ご自身の言語、またはサポートされている言語のいずれかの言語コードを入力されることをお勧めします。これは、単に「Enter」キーを押しただけの場合にも当てはまります。生徒の皆様には、学校での定期試験やテストの際、問題文をよくお読みになることをお勧めします。" -ForegroundColor Red
    Write-Host ""
    Write-Host "敬具" -ForegroundColor Red
    Write-Host "- 連邦ドライブ文字・ユーザープログラムインストール・愚かさ省" -ForegroundColor Red
    Write-Host "- MagentaStudioチーム. 🖕" -ForegroundColor Magenta
    sleep 15
    Clear-Host
    Write-Host "최근 귀하의 사용자 상호작용으로 인해 발생한 일련의 사건들로 인해, 저희 ‘드라이브 문자, 사용자 프로그램 설치 및 어리석음 담당 연방부’에서는 안타깝게도 해당 작업 또는 귀하가 입력하신 언어 코드가 여기에서는 지원되지 않는다는 사실을 알려드립니다. 공백(ASCII 16진수 코드 20)을 입력하신 경우, 귀하의 언어 또는 지원되는 언어 중 하나의 언어 코드를 입력하시기를 권장합니다. 단순히 Enter 키를 누르신 경우에도 마찬가지입니다. 학생 여러분께서는 학교에서 치르는 기말고사나 시험 문제지를 꼼꼼히 읽어보시기 바랍니다." -ForegroundColor Red
    Write-Host ""
    Write-Host "진심으로," -ForegroundColor Red
    Write-Host "- 드라이브 문자, 사용자 프로그램 설치 및 어리석음 담당 연방부" -ForegroundColor Red
    Write-Host "- MagentaStudio 팀. 🖕" -ForegroundColor Magenta
    exit
}

# Language Switcher
switch ($languageCode) {
    "EN" { ENGLISH }
    "DE" { DEUTSCH }
    "FR" { FRANCAIS }
    "ES" { ESPANOL }
    "IT" { ITALIANO }
    "PT" { PORTUGUES }
    "RU" { RUSSKIY }
    "JA" { NIPPON }
    "KO" { HANGUGO }
    "AR" { ARABIC }
    "HE" { HEBREW }
    Default { DEFAULTI }
}
