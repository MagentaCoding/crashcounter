# File-ID: CC-PSD1-642808cd
# File-Version: 1.0.0

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

$IsAdmin = (
    [Security.Principal.WindowsPrincipal]::new(
        [Security.Principal.WindowsIdentity]::GetCurrent()
    )
).IsInRole(
    [Security.Principal.WindowsBuiltInRole]::Administrator
)

# Languages Functions
function ENGLISH {
    Write-Host 'Language “English” selected' -ForegroundColor Green
    Write-Host "Where would you like to have this function installed?" -ForegroundColor Cyan
    Write-Host "[1] C:\Users\<Username>\AppData\Local\Crashpointingsystem (Local User)" -ForegroundColor Cyan
    Write-Host "[2] C:\Program Files\Crashpointingsystem (All Users, if not only one user account exists)" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "Enter the number of the desired installation path: " -ForegroundColor Yellow -NoNewline
    $InstallationPath = Read-Host
    If ($InstallationPath -eq 1) {
        $InstallationPath = "$env:USERPROFILE\AppData\Local\Crashpointingsystem"
    } ElseIf ($InstallationPath -eq 2) {
        $InstallationPath = "C:\Program Files\Crashpointingsystem"
        If (-not $IsAdmin) {
            Write-Host "Administrator privileges are required to install for all users. Please run the script as an administrator." -ForegroundColor Red
            exit
        }
    } Else {
        Write-Host "Invalid input. Restart installation script." -ForegroundColor Red
        exit
    }
}
function DEUTSCH {
    Write-Host 'Sprache „Deutsch“ ausgewählt' -ForegroundColor Green
    Write-Host "Wo möchten sie diese Funktion installiert haben?" -ForegroundColor Cyan
    Write-Host "[1] C:\Users\<Benutzername>\AppData\Local\Crashpointingsystem (Lokaler Benutzer)" -ForegroundColor Cyan
    Write-Host "[2] C:\Program Files\Crashpointingsystem (Alle Benutzer, wenn nicht nur ein Benutzerkonto vorhanden ist)" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "Geben sie die Zahl des gewünschten Installationspfades ein: " -ForegroundColor Yellow -NoNewline
    $InstallationPath = Read-Host
    $InstallChoice = $InstallationPath
    If ($InstallationPath -eq 1) {
        $InstallationPath = "$env:USERPROFILE\AppData\Local\Crashpointingsystem"
    } ElseIf ($InstallationPath -eq 2) {
        $InstallationPath = "C:\Program Files\Crashpointingsystem"
        If (-not $IsAdmin) {
            Write-Host "Administrative Berechtigungen sind erforderlich, um die Funktion für alle Benutzer installieren zu können. Bitte führen Sie den Skript nochmal als Administrator aus." -ForegroundColor Red
            exit
        }
    } Else {
        Write-Host "Ungültige Eingabe. Starte das Installationsskript neu." -ForegroundColor Red
        exit
    }
    Write-Host "Der Ordner für die Installation wird nun erstellt..." -ForegroundColor Green
    New-Item -ItemType Directory -Path $InstallationPath -Force | Out-Null
    Write-Host "Der Ordner wurde erfolgreich erstellt: $InstallationPath" -ForegroundColor Green
    Write-Host "Die Funktion wird nun heruntergeladen..." -ForegroundColor Green
    Write-Host "Download-Server: crashcounter.magentaweb.de" -ForegroundColor Cyan
    Write-Host "Download-URL: https://crashcounter.magentaweb.de/CC.psd1" -ForegroundColor Cyan
    Write-Host "Lade herunter: CC.psd1 (PowerShell Modul Manifest)" -ForegroundColor Cyan
    try {
        Invoke-WebRequest -Uri "https://crashcounter.magentaweb.de/CC.psd1" -OutFile "$InstallationPath\CC.psd1"
    } catch {
        Write-Host "Beim Herunterladen des PowerShell Modul Manifests ist ein Fehler aufgetreten. Bite überprüfen sie ihre Internetverbindung und pausieren sie ggf. alle Steam-Downloads da diese die Browsingqualität bemerkbar beinflussen können." -ForegroundColor Red
        exit
    }
    Write-Host "Erfolgreich heruntergeladen: CC.psd1" -ForegroundColor Green
    Write-Host "Lade herunter: CC.psm1 (PowerShell Modul)" -ForegroundColor Cyan
    try {
        Invoke-WebRequest -Uri "https://crashcounter.magentaweb.de/CC.psm1" -OutFile "$InstallationPath\CC.psm1"
    } catch {
        Write-Host "Beim Herunterladen des PowerShell Moduls ist ein Fehler aufgetreten. Bite überprüfen sie ihre Internetverbindung und pausieren sie ggf. alle Steam-Downloads da diese die Browsingqualität bemerkbar beinflussen können." -ForegroundColor Red
        exit
    }
    Write-Host "Erfolgreich heruntergeladen: CC.psm1" -ForegroundColor Green
    Write-Host "Lade herunter: DE.psd1 (PowerShell Sprachdatei)" -ForegroundColor Cyan
    try {
        Invoke-WebRequest -Uri "https://crashcounter.magentaweb.de/DE.psd1" -OutFile "$InstallationPath\Lang.psd1"
    } catch {
        Write-Host "Beim Herunterladen der Deutschen Sprachdatei ist ein Fehler aufgetreten. Bite überprüfen sie ihre Internetverbindung und pausieren sie ggf. alle Steam-Downloads da diese die Browsingqualität bemerkbar beinflussen können." -ForegroundColor Red
        exit
    }
    Write-Host "Erfolgreich heruntergeladen: DE.psd1" -ForegroundColor Green
    Write-Host "Die Checksummen der Dateien werden nun überprüft..." -ForegroundColor Green
    Write-Host "Dies wird getan um die Sicherheit ihres Systemes zu gewährleisten indem so die Checksummen überprüft und kompromitierte Dateien erkannt werden können." -ForegroundColor Cyan
    Write-Host "Eine vollständige Sicherheitsgarantie durch die alleinige Prüfung der Checksummen kann jedoch nicht gewährleistet werden." -ForegroundColor Yellow
    Write-Host "Die Prüfsummen werden nun überprüft..." -ForegroundColor Green
    cd $InstallationPath
    Write-Host "-- Überprüfe Prüfsumme --" -ForegroundColor Cyan
    Write-Host "Datei: CC.psd1" -ForegroundColor Cyan
    Write-Host "Algorithmus: SHA1" -ForegroundColor Cyan

    sleep 5

    # CC.psd1 SHA1 Check
    $ApiUrl = "https://api.magentaweb.de/cc/checksum/SHA1/CC.psd1"
    $File = ".\CC.psd1"
    try {
        $ExpectedHash = (Invoke-WebRequest -Uri $ApiUrl -ErrorAction Stop).Content.Trim()
        $ActualHash = (Get-FileHash -LiteralPath $File -Algorithm SHA1).Hash

        if ($ActualHash -eq $ExpectedHash) {
            $HUGÜLTIG = "PASS"
            $TÜV11 = "PASS"
        }
        else {
            $HUGÜLTIG = "FAIL"
            $TÜV11 = "FAIL"
        }
    }
    catch {
        Write-Host "Fehler: $($_.Exception.Message)" -ForegroundColor Red
    }
    Write-Host "SHA1 Check Abgeschlossen"
    Write-Host "SHA1 $HUGÜLTIG"
    Write-Host "Erwartet: $ExpectedHash"
    Write-Host "Erhalten: $ActualHash"
    Write-Host "SHA1 --> SHA256"
    Write-Host "-- Überprüfe Prüfsumme --" -ForegroundColor Cyan
    Write-Host "Datei: CC.psd1" -ForegroundColor Cyan
    Write-Host "Algoritmus: SHA256" -ForegroundColor Cyan

    sleep 5

    # CC.psd1 SHA256 Check
    $ApiUrl = "https://api.magentaweb.de/cc/checksum/SHA256/CC.psd1"
    $File = ".\CC.psd1"
    try {
        $ExpectedHash = (Invoke-WebRequest -Uri $ApiUrl -ErrorAction Stop).Content.Trim()
        $ActualHash = (Get-FileHash -LiteralPath $File -Algorithm SHA256).Hash

        if ($ActualHash -eq $ExpectedHash) {
            $HUGÜLTIG = "PASS"
            $TÜV12 = "PASS"
        }
        else {
            $HUGÜLTIG = "FAIL"
            $TÜV12 = "FAIL"
        }
    }
    catch {
        Write-Host "Fehler: $($_.Exception.Message)" -ForegroundColor Red
    }
    Write-Host "SHA256 Check Abgeschlossen"
    Write-Host "SHA256 $HUGÜLTIG"
    Write-Host "Erwartet: $ExpectedHash"
    Write-Host "Erhalten: $ActualHash"
    Write-Host "SHA256 --> SHA512"
    Write-Host "-- Überprüfe Prüfsumme --" -ForegroundColor Cyan
    Write-Host "Datei: CC.psd1" -ForegroundColor Cyan
    Write-Host "Algoritmus: SHA512" -ForegroundColor Cyan

    sleep 5

    # CC.psd1 SHA512 Check
    $ApiUrl = "https://api.magentaweb.de/cc/checksum/SHA512/CC.psd1"
    $File = ".\CC.psd1"
    try {
        $ExpectedHash = (Invoke-WebRequest -Uri $ApiUrl -ErrorAction Stop).Content.Trim()
        $ActualHash = (Get-FileHash -LiteralPath $File -Algorithm SHA512).Hash

        if ($ActualHash -eq $ExpectedHash) {
            $HUGÜLTIG = "PASS"
            $TÜV13 = "PASS"
        }
        else {
            $HUGÜLTIG = "FAIL"
            $TÜV13 = "FAIL"
        }
    }
    catch {
        Write-Host "Fehler: $($_.Exception.Message)" -ForegroundColor Red
    }
    Write-Host "SHA512 Check Abgeschlossen"
    Write-Host "SHA512 CHECK: $HUGÜLTIG"
    Write-Host "Erwartet: $ExpectedHash"
    Write-Host "Erhalten: $ActualHash"
    Write-Host "SHA512 --> Check 1/3 Abgeschlossen"
    Write-Host "-- Überprüfe Prüfsumme --" -ForegroundColor Cyan
    Write-Host "Datei: CC.psm1" -ForegroundColor Cyan
    Write-Host "Algoritmus: SHA1" -ForegroundColor Cyan

    sleep 5

    # CC.psm1 SHA1 Check
    $ApiUrl = "https://api.magentaweb.de/cc/checksum/SHA1/CC.psm1"
    $File = ".\CC.psm1"
    try {
        $ExpectedHash = (Invoke-WebRequest -Uri $ApiUrl -ErrorAction Stop).Content.Trim()
        $ActualHash = (Get-FileHash -LiteralPath $File -Algorithm SHA1).Hash

        if ($ActualHash -eq $ExpectedHash) {
            $HUGÜLTIG = "PASS"
            $TÜV21 = "PASS"
        }
        else {
            $HUGÜLTIG = "FAIL"
            $TÜV21 = "FAIL"
        }
    }
    catch {
        Write-Host "Fehler: $($_.Exception.Message)" -ForegroundColor Red
    }
    Write-Host "SHA1 Check Abgeschlossen"
    Write-Host "SHA1 $HUGÜLTIG"
    Write-Host "Erwartet: $ExpectedHash"
    Write-Host "Erhalten: $ActualHash"
    Write-Host "SHA1 --> SHA256"
    Write-Host "-- Überprüfe Prüfsumme --" -ForegroundColor Cyan
    Write-Host "Datei: CC.psm1" -ForegroundColor Cyan
    Write-Host "Algoritmus: SHA256" -ForegroundColor Cyan

    sleep 5

    # CC.psm1 SHA256 Check
    $ApiUrl = "https://api.magentaweb.de/cc/checksum/SHA256/CC.psm1"
    $File = ".\CC.psm1"
    try {
        $ExpectedHash = (Invoke-WebRequest -Uri $ApiUrl -ErrorAction Stop).Content.Trim()
        $ActualHash = (Get-FileHash -LiteralPath $File -Algorithm SHA256).Hash

        if ($ActualHash -eq $ExpectedHash) {
            $HUGÜLTIG = "PASS"
            $TÜV22 = "PASS"
        }
        else {
            $HUGÜLTIG = "FAIL"
            $TÜV22 = "FAIL"
        }
    }
    catch {
        Write-Host "Fehler: $($_.Exception.Message)" -ForegroundColor Red
    }
    Write-Host "SHA256 Check Abgeschlossen"
    Write-Host "SHA256 $HUGÜLTIG"
    Write-Host "Erwartet: $ExpectedHash"
    Write-Host "Erhalten: $ActualHash"
    Write-Host "SHA256 --> SHA512"
    Write-Host "-- Überprüfe Prüfsumme --" -ForegroundColor Cyan
    Write-Host "Datei: CC.psm1" -ForegroundColor Cyan
    Write-Host "Algoritmus: SHA512" -ForegroundColor Cyan

    sleep 5

    # CC.psm1 SHA512 Check
    $ApiUrl = "https://api.magentaweb.de/cc/checksum/SHA512/CC.psm1"
    $File = ".\CC.psm1"
    try {
        $ExpectedHash = (Invoke-WebRequest -Uri $ApiUrl -ErrorAction Stop).Content.Trim()
        $ActualHash = (Get-FileHash -LiteralPath $File -Algorithm SHA512).Hash

        if ($ActualHash -eq $ExpectedHash) {
            $HUGÜLTIG = "PASS"
            $TÜV23 = "PASS"
        }
        else {
            $HUGÜLTIG = "FAIL"
            $TÜV23 = "FAIL"
        }
    }
    catch {
        Write-Host "Fehler: $($_.Exception.Message)" -ForegroundColor Red
    }
    Write-Host "SHA512 Check Abgeschlossen"
    Write-Host "SHA512 $HUGÜLTIG"
    Write-Host "Erwartet: $ExpectedHash"
    Write-Host "Erhalten: $ActualHash"
    Write-Host "SHA512 --> Check 2/3 Abgeschlossen"
    Write-Host "-- Überprüfe Prüfsumme --" -ForegroundColor Cyan
    Write-Host "Datei: Lang.psm1" -ForegroundColor Cyan
    Write-Host "Algoritmus: SHA1" -ForegroundColor Cyan


    # Lang.psd1 SHA1 Check
    $ApiUrl = "https://api.magentaweb.de/cc/checksum/SHA1/DE.psd1"
    $File = ".\Lang.psd1"
    try {
        $ExpectedHash = (Invoke-WebRequest -Uri $ApiUrl -ErrorAction Stop).Content.Trim()
        $ActualHash = (Get-FileHash -LiteralPath $File -Algorithm SHA1).Hash

        if ($ActualHash -eq $ExpectedHash) {
            $HUGÜLTIG = "PASS"
            $TÜV31 = "PASS"
        }
        else {
            $HUGÜLTIG = "FAIL"
            $TÜV31 = "FAIL"
        }
    }
    catch {
        Write-Host "Fehler: $($_.Exception.Message)" -ForegroundColor Red
    }
    Write-Host "SHA1 Check Abgeschlossen"
    Write-Host "SHA1 $HUGÜLTIG"
    Write-Host "Erwartet: $ExpectedHash"
    Write-Host "Erhalten: $ActualHash"
    Write-Host "SHA1 --> SHA256"
    Write-Host "-- Überprüfe Prüfsumme --" -ForegroundColor Cyan
    Write-Host "Datei: Lang.psm1" -ForegroundColor Cyan
    Write-Host "Algoritmus: SHA256" -ForegroundColor Cyan

    sleep 5

    # CC.psm1 SHA256 Check
    $ApiUrl = "https://api.magentaweb.de/cc/checksum/SHA256/DE.psd1"
    $File = ".\Lang.psd1"
    try {
        $ExpectedHash = (Invoke-WebRequest -Uri $ApiUrl -ErrorAction Stop).Content.Trim()
        $ActualHash = (Get-FileHash -LiteralPath $File -Algorithm SHA256).Hash

        if ($ActualHash -eq $ExpectedHash) {
            $HUGÜLTIG = "PASS"
            $TÜV32 = "PASS"
        }
        else {
            $HUGÜLTIG = "FAIL"
            $TÜV32 = "FAIL"
        }
    }
    catch {
        Write-Host "Fehler: $($_.Exception.Message)" -ForegroundColor Red
    }
    Write-Host "SHA256 Check Abgeschlossen"
    Write-Host "SHA256 $HUGÜLTIG"
    Write-Host "Erwartet: $ExpectedHash"
    Write-Host "Erhalten: $ActualHash"
    Write-Host "SHA256 --> SHA512"
    Write-Host "-- Überprüfe Prüfsumme --" -ForegroundColor Cyan
    Write-Host "Datei: CC.psd1" -ForegroundColor Cyan
    Write-Host "Algoritmus: SHA512" -ForegroundColor Cyan

    sleep 5

    # CC.psm1 SHA512 Check
    $ApiUrl = "https://api.magentaweb.de/cc/checksum/SHA512/DE.psd1"
    $File = ".\Lang.psd1"
    try {
        $ExpectedHash = (Invoke-WebRequest -Uri $ApiUrl -ErrorAction Stop).Content.Trim()
        $ActualHash = (Get-FileHash -LiteralPath $File -Algorithm SHA512).Hash

        if ($ActualHash -eq $ExpectedHash) {
            $HUGÜLTIG = "PASS"
            $TÜV33 = "PASS"
        }
        else {
            $HUGÜLTIG = "FAIL"
            $TÜV33 = "FAIL"
        }
    }
    catch {
        Write-Host "Fehler: $($_.Exception.Message)" -ForegroundColor Red
    }
    Write-Host "SHA512 Check Abgeschlossen"
    Write-Host "SHA512 $HUGÜLTIG"
    Write-Host "Erwartet: $ExpectedHash"
    Write-Host "Erhalten: $ActualHash"
    Write-Host "SHA512 --> Check 3/3 Abgeschlossen"
    Write-Host "-- Überprüfungsergebnisse --" -ForegroundColor Black -BackgroundColor Cyan
    Write-Host "CC.psd1:                    " -ForegroundColor Black -BackgroundColor Cyan
    Write-Host "  - SHA1:   $TÜV11          " -ForegroundColor Black -BackgroundColor Cyan
    Write-Host "  - SHA256: $TÜV12          " -ForegroundColor Black -BackgroundColor Cyan
    Write-Host "  - SHA512: $TÜV13          " -ForegroundColor Black -BackgroundColor Cyan
    Write-Host "CC.psm1:                    " -ForegroundColor Black -BackgroundColor Cyan
    Write-Host "  - SHA1:   $TÜV21          " -ForegroundColor Black -BackgroundColor Cyan
    Write-Host "  - SHA256: $TÜV22          " -ForegroundColor Black -BackgroundColor Cyan
    Write-Host "  - SHA512: $TÜV23          " -ForegroundColor Black -BackgroundColor Cyan
    Write-Host "Lang.psd1:                  " -ForegroundColor Black -BackgroundColor Cyan
    Write-Host "  - SHA1:   $TÜV31          " -ForegroundColor Black -BackgroundColor Cyan
    Write-Host "  - SHA256: $TÜV32          " -ForegroundColor Black -BackgroundColor Cyan
    Write-Host "  - SHA512: $TÜV33          " -ForegroundColor Black -BackgroundColor Cyan
    Write-Host ""
    Write-Host "Füge Modul/Funktion zu PowerShell hinzu..."
    if ($InstallChoice -eq 1) {
        $ModulePath = Join-Path $HOME "Documents\PowerShell\Modules\CrashCounter"

        New-Item -ItemType Directory -Path $ModulePath -Force | Out-Null

        Copy-Item ".\CC.psd1" $ModulePath
        Copy-Item ".\CC.psm1" $ModulePath
        Copy-Item ".\Lang.psd1" $ModulePath

        Import-Module (Join-Path $ModulePath "CC.psd1") -Force
        Write-Host "Lokale Modulinstallation (erfolgreich) abgeschlossen"
    } elseif ($InstallChoice -eq 2) {
        $ModulePath = Join-Path $env:ProgramFiles "WindowsPowerShell\Modules\CrashCounter"

        New-Item -ItemType Directory -Path $ModulePath -Force | Out-Null

        Copy-Item ".\CC.psd1" $ModulePath
        Copy-Item ".\CC.psm1" $ModulePath
        Copy-Item ".\Lang.psd1" $ModulePath

        Import-Module (Join-Path $ModulePath "CC.psd1") -Force
        Write-Host "Systemweite Modulinstallation (erfolgreich) abgeschlossen"
    }
    Write-Host ""
    Write-Host ""
    Write-Host "Vielen Dank das Sie dieses Installationsskript benutzt haben."
    Write-Host ""
    Write-Host "Mit freundlichen Grüßen,"
    Write-Host "- Alexander Gal"
    Write-Host "- MagentaStudio"

}
function FRANCAIS {
    Write-Host "Langue « Français » sélectionnée" -ForegroundColor Green
    Write-Host "Où souhaitez-vous que cette fonction soit installée ?" -ForegroundColor Cyan
    Write-Host "[1] C:\Users\<Nom d'utilisateur>\AppData\Local\Crashpointingsystem (Utilisateur local)" -ForegroundColor Cyan
    Write-Host "[2] C:\Program Files\Crashpointingsystem (Tous les utilisateurs, si un seul compte utilisateur n'existe pas)" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "Entrez le numéro du chemin d'installation souhaité : " -ForegroundColor Yellow -NoNewline
    $InstallationPath = Read-Host
    If ($InstallationPath -eq 1) {
        $InstallationPath = "$env:USERPROFILE\AppData\Local\Crashpointingsystem"
    } ElseIf ($InstallationPath -eq 2) {
        $InstallationPath = "C:\Program Files\Crashpointingsystem"
        If (-not $IsAdmin) {
            Write-Host "Des droits d'administrateur sont nécessaires pour pouvoir installer cette fonctionnalité pour tous les utilisateurs. Veuillez réexécuter le script en tant qu'administrateur." -ForegroundColor Red
            exit
        }
    } Else {
        Write-Host "Entrée invalide. Redémarrez le script d'installation." -ForegroundColor Red
        exit
    }
}
function ESPANOL {
    Write-Host "Se ha seleccionado el idioma «español»" -ForegroundColor Green
    Write-Host "¿Dónde le gustaría tener instalada esta función?" -ForegroundColor Cyan
    Write-Host "[1] C:\Users\<Nombre de usuario>\AppData\Local\Crashpointingsystem (Usuario local)" -ForegroundColor Cyan
    Write-Host "[2] C:\Program Files\Crashpointingsystem (Todos los usuarios, si no existe solo una cuenta de usuario)" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "Ingrese el número de la ruta de instalación deseada: " -ForegroundColor Yellow -NoNewline
    $InstallationPath = Read-Host
    If ($InstallationPath -eq 1) {
        $InstallationPath = "$env:USERPROFILE\AppData\Local\Crashpointingsystem"
    } ElseIf ($InstallationPath -eq 2) {
        $InstallationPath = "C:\Program Files\Crashpointingsystem"
        If (-not $IsAdmin) {
            Write-Host "Se necesitan permisos de administrador para poder instalar la función para todos los usuarios. Por favor, vuelve a ejecutar el script como administrador." -ForegroundColor Red
            exit
        }
    } Else {
        Write-Host "Entrée invalide. Redémarrez le script d'installation." -ForegroundColor Red
        exit
    }
}
function ITALIANO {
    Write-Host 'Lingua “italiano” selezionata' -ForegroundColor Green
    Write-Host "Dove vorresti avere questa funzione installata?" -ForegroundColor Cyan
    Write-Host "[1] C:\Users\<Nome utente>\AppData\Local\Crashpointingsystem (Utente locale)" -ForegroundColor Cyan
    Write-Host "[2] C:\Program Files\Crashpointingsystem (Tutti gli utenti, se non esiste solo un account utente)" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "Inserisci il numero del percorso di installazione desiderato: " -ForegroundColor Yellow -NoNewline
    $InstallationPath = Read-Host
    If ($InstallationPath -eq 1) {
        $InstallationPath = "$env:USERPROFILE\AppData\Local\Crashpointingsystem"
    } ElseIf ($InstallationPath -eq 2) {
        $InstallationPath = "C:\Program Files\Crashpointingsystem"
        If (-not $IsAdmin) {
            Write-Host "Sono necessari i privilegi di amministratore per poter installare la funzione per tutti gli utenti. Si prega di eseguire nuovamente lo script come amministratore." -ForegroundColor Red
            exit
        }
    } Else {
        Write-Host "Entrée invalide. Redémarrez le script d'installation." -ForegroundColor Red
        exit
    }
}
function PORTUGUES {
    Write-Host "Idioma «Português» selecionado" -ForegroundColor Green
    Write-Host "Onde você gostaria de ter esta função instalada?" -ForegroundColor Cyan
    Write-Host "[1] C:\Users\<Nome de usuário>\AppData\Local\Crashpointingsystem (Usuário local)" -ForegroundColor Cyan
    Write-Host "[2] C:\Program Files\Crashpointingsystem (Todos os usuários, se não existir apenas uma conta de usuário)" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "Digite o número do caminho de instalação desejado: " -ForegroundColor Yellow -NoNewline
    $InstallationPath = Read-Host
    If ($InstallationPath -eq 1) {
        $InstallationPath = "$env:USERPROFILE\AppData\Local\Crashpointingsystem"
    } ElseIf ($InstallationPath -eq 2) {
        $InstallationPath = "C:\Program Files\Crashpointingsystem"
        If (-not $IsAdmin) {
            Write-Host "São necessários privilégios de administrador para instalar a função para todos os usuários. Por favor, execute o script novamente como administrador." -ForegroundColor Red
            exit
        }
    } Else {
        Write-Host "Entrada inválida. Reinicie o script de instalação." -ForegroundColor Red
        exit
    }
}
function RUSSKIY {
    Write-Host "Выбран язык «русский»" -ForegroundColor Green
    Write-Host "Где вы хотели бы установить эту функцию?" -ForegroundColor Cyan
    Write-Host "[1] C:\Users\<Имя пользователя>\AppData\Local\Crashpointingsystem (Локальный пользователь)" -ForegroundColor Cyan
    Write-Host "[2] C:\Program Files\Crashpointingsystem (Все пользователи, если существует не только одна учетная запись пользователя)" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "Введите номер желаемого пути установки: " -ForegroundColor Yellow -NoNewline
    $InstallationPath = Read-Host
    If ($InstallationPath -eq 1) {
        $InstallationPath = "$env:USERPROFILE\AppData\Local\Crashpointingsystem"
    } ElseIf ($InstallationPath -eq 2) {
        $InstallationPath = "C:\Program Files\Crashpointingsystem"
        If (-not $IsAdmin) {
            Write-Host "Для установки функции для всех пользователей требуются права администратора. Пожалуйста, запустите скрипт снова от имени администратора." -ForegroundColor Red
            exit
        }
    } Else {
        Write-Host "Неверный ввод. Перезапустите сценарий установки." -ForegroundColor Red
        exit
    }
}
function NIPPON {
    Write-Host "言語「日本語」が選択されました" -ForegroundColor Green
    Write-Host "この機能をどこにインストールしますか？" -ForegroundColor Cyan
    Write-Host "[1] C:\Users\<ユーザー名>\AppData\Local\Crashpointingsystem (ローカルユーザー)" -ForegroundColor Cyan
    Write-Host "[2] C:\Program Files\Crashpointingsystem (すべてのユーザー、ユーザーアカウントが1つしか存在しない場合を除く)" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "希望するインストールパスの番号を入力してください: " -ForegroundColor Yellow -NoNewline
    $InstallationPath = Read-Host
    If ($InstallationPath -eq 1) {
        $InstallationPath = "$env:USERPROFILE\AppData\Local\Crashpointingsystem"
    } ElseIf ($InstallationPath -eq 2) {
        $InstallationPath = "C:\Program Files\Crashpointingsystem"
        If (-not $IsAdmin) {
            Write-Host "すべてのユーザーに機能をインストールするには、管理者権限が必要です。スクリプトを管理者として再実行してください。" -ForegroundColor Red
            exit
        }
    } Else {
        Write-Host "無効な入力。インストールスクリプトを再起動してください。" -ForegroundColor Red
        exit
    }
}
function HANGUGO {
    Write-Host "언어 '한국어'가 선택되었습니다" -ForegroundColor Green
    Write-Host "이 기능을 어디에 설치하시겠습니까?" -ForegroundColor Cyan
    Write-Host "[1] C:\Users\<사용자 이름>\AppData\Local\Crashpointingsystem (로컬 사용자)" -ForegroundColor Cyan
    Write-Host "[2] C:\Program Files\Crashpointingsystem (사용자 계정이 하나만 존재하지 않는 경우 모든 사용자)" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "원하는 설치 경로의 번호를 입력하세요: " -ForegroundColor Yellow -NoNewline
    $InstallationPath = Read-Host
    If ($InstallationPath -eq 1) {
        $InstallationPath = "$env:USERPROFILE\AppData\Local\Crashpointingsystem"
    } ElseIf ($InstallationPath -eq 2) {
        $InstallationPath = "C:\Program Files\Crashpointingsystem"
        If (-not $IsAdmin) {
            Write-Host "모든 사용자에게 기능을 설치하려면 관리자 권한이 필요합니다. 스크립트를 관리자 권한으로 다시 실행하십시오." -ForegroundColor Red
            exit
        }
    } Else {
        Write-Host "무효한 입력. 설치 스크립트를 재시작하세요." -ForegroundColor Red
        exit
    }
}
function ARABIC {
    Write-Host 'تم اختيار اللغة ”العربية“' -ForegroundColor Green
    Write-Host "أين ترغب في تثبيت هذه الوظيفة؟" -ForegroundColor Cyan
    Write-Host "[1] C:\Users\<اسم المستخدم>\AppData\Local\Crashpointingsystem (المستخدم المحلي)" -ForegroundColor Cyan
    Write-Host "[2] C:\Program Files\Crashpointingsystem (جميع المستخدمين، إذا لم يكن هناك سوى حساب مستخدم واحد)" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "أدخل رقم مسار التثبيت المطلوب: " -ForegroundColor Yellow -NoNewline
    $InstallationPath = Read-Host
    If ($InstallationPath -eq 1) {
        $InstallationPath = "$env:USERPROFILE\AppData\Local\Crashpointingsystem"
    } ElseIf ($InstallationPath -eq 2) {
        $InstallationPath = "C:\Program Files\Crashpointingsystem"
        If (-not $IsAdmin) {
            Write-Host "تتطلب أذونات المسؤول لتثبيت الوظيفة لجميع المستخدمين. يرجى إعادة تشغيل البرنامج النصي كمسؤول." -ForegroundColor Red
            exit
        }
    } Else {
        Write-Host "إدخال غير صالح. أعد تشغيل برنامج التثبيت." -ForegroundColor Red
        exit
    }
}
function HEBREW {
    Write-Host 'נבחרה השפה "עברית"' -ForegroundColor Green
    Write-Host "איפה תרצה להתקין את הפונקציה הזו?" -ForegroundColor Cyan
    Write-Host "[1] C:\Users\<שם משתמש>\AppData\Local\Crashpointingsystem (משתמש מקומי)" -ForegroundColor Cyan
    Write-Host "[2] C:\Program Files\Crashpointingsystem (כל המשתמשים, אם לא קיים חשבון משתמש אחד בלבד)" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "הזן את מספר נתיב ההתקנה הרצוי: " -ForegroundColor Yellow -NoNewline
    $InstallationPath = Read-Host
    If ($InstallationPath -eq 1) {
        $InstallationPath = "$env:USERPROFILE\AppData\Local\Crashpointingsystem"
    } ElseIf ($InstallationPath -eq 2) {
        $InstallationPath = "C:\Program Files\Crashpointingsystem"
        If (-not $IsAdmin) {
            Write-Host "דרושות הרשאות מנהל כדי להתקין את הפונקציה עבור כל המשתמשים. אנא הפעל מחדש את הסקריפט כמנהל." -ForegroundColor Red
            exit
        }
    } Else {
        Write-Host "קלט לא חוקי. הפעל מחדש את סקריפט ההתקנה." -ForegroundColor Red
        exit
    }
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
