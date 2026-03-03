# SPDX-FileCopyrightText: no
# SPDX-License-Identifier: CC0-1.0
# Strings for the Offline/Netinstall dialog. Source this from shellprocess-ask-install-type.
# Language is taken from $LANG (e.g. ro_RO.UTF-8, fr_FR.UTF-8). Add more locales as needed.

case "${LANG%%.*}" in
  ro)
    TITLE="Tip instalare"
    PROMPT="Cum doriți să instalați?"
    OPT_OFFLINE="Offline (doar conținutul din imagine)"
    OPT_NETINSTALL="Netinstall (pachete suplimentare de pe internet)"
    URL_TITLE="URL listă pachete"
    URL_PROMPT="Introduceți URL-ul către o listă de pachete (un pachet per linie):"
    TERMINAL_PROMPT="Tip instalare: 1 = Offline, 2 = Netinstall (pachete de pe internet)"
    TERMINAL_CHOICE="Alegere [1]: "
    TERMINAL_URL_PROMPT="URL listă pachete (un pachet per linie): "
    ;;
  fr)
    TITLE="Type d'installation"
    PROMPT="Comment souhaitez-vous installer ?"
    OPT_OFFLINE="Hors ligne (contenu de l'image uniquement)"
    OPT_NETINSTALL="Netinstall (paquets supplémentaires depuis Internet)"
    URL_TITLE="URL de la liste de paquets"
    URL_PROMPT="Entrez l'URL vers une liste de paquets (un paquet par ligne) :"
    TERMINAL_PROMPT="Type d'installation : 1 = Hors ligne, 2 = Netinstall (paquets depuis Internet)"
    TERMINAL_CHOICE="Choix [1] : "
    TERMINAL_URL_PROMPT="URL de la liste de paquets (un paquet par ligne) : "
    ;;
  de)
    TITLE="Installationstyp"
    PROMPT="Wie möchten Sie installieren?"
    OPT_OFFLINE="Offline (nur Inhalt des Abbilds)"
    OPT_NETINSTALL="Netinstall (zusätzliche Pakete aus dem Internet)"
    URL_TITLE="URL der Paketliste"
    URL_PROMPT="URL zu einer Paketliste eingeben (ein Paket pro Zeile):"
    TERMINAL_PROMPT="Installationstyp: 1 = Offline, 2 = Netinstall (Pakete aus dem Internet)"
    TERMINAL_CHOICE="Wahl [1]: "
    TERMINAL_URL_PROMPT="URL der Paketliste (ein Paket pro Zeile): "
    ;;
  es)
    TITLE="Tipo de instalación"
    PROMPT="¿Cómo desea instalar?"
    OPT_OFFLINE="Sin conexión (solo contenido de la imagen)"
    OPT_NETINSTALL="Netinstall (paquetes adicionales desde Internet)"
    URL_TITLE="URL de la lista de paquetes"
    URL_PROMPT="Introduzca la URL de una lista de paquetes (un paquete por línea):"
    TERMINAL_PROMPT="Tipo de instalación: 1 = Sin conexión, 2 = Netinstall (paquetes desde Internet)"
    TERMINAL_CHOICE="Elección [1]: "
    TERMINAL_URL_PROMPT="URL de la lista de paquetes (un paquete por línea): "
    ;;
  it)
    TITLE="Tipo di installazione"
    PROMPT="Come desideri installare?"
    OPT_OFFLINE="Offline (solo contenuto dell'immagine)"
    OPT_NETINSTALL="Netinstall (pacchetti aggiuntivi da Internet)"
    URL_TITLE="URL elenco pacchetti"
    URL_PROMPT="Inserisci l'URL di un elenco di pacchetti (uno per riga):"
    TERMINAL_PROMPT="Tipo di installazione: 1 = Offline, 2 = Netinstall (pacchetti da Internet)"
    TERMINAL_CHOICE="Scelta [1]: "
    TERMINAL_URL_PROMPT="URL elenco pacchetti (uno per riga): "
    ;;
  nl)
    TITLE="Installatietype"
    PROMPT="Hoe wilt u installeren?"
    OPT_OFFLINE="Offline (alleen inhoud van de image)"
    OPT_NETINSTALL="Netinstall (extra pakketten van internet)"
    URL_TITLE="URL pakketlijst"
    URL_PROMPT="Voer de URL in van een pakketlijst (één pakket per regel):"
    TERMINAL_PROMPT="Installatietype: 1 = Offline, 2 = Netinstall (pakketten van internet)"
    TERMINAL_CHOICE="Keuze [1]: "
    TERMINAL_URL_PROMPT="URL pakketlijst (één pakket per regel): "
    ;;
  ar)
    TITLE="نوع التثبيت"
    PROMPT="كيف تريد التثبيت؟"
    OPT_OFFLINE="غير متصل (محتويات الصورة فقط)"
    OPT_NETINSTALL="تثبيت الشبكة (حزم إضافية من الإنترنت)"
    URL_TITLE="رابط قائمة الحزم"
    URL_PROMPT="أدخل الرابط لقائمة حزم (حزمة واحدة في كل سطر):"
    TERMINAL_PROMPT="نوع التثبيت: 1 = غير متصل، 2 = تثبيت الشبكة (حزم من الإنترنت)"
    TERMINAL_CHOICE="اختيار [1]: "
    TERMINAL_URL_PROMPT="رابط قائمة الحزم (حزمة واحدة في كل سطر): "
    ;;
  eo)
    TITLE="Instalada tipo"
    PROMPT="Kiel vi volas instali?"
    OPT_OFFLINE="Senkonekte (nur enhavaĵo de la bildo)"
    OPT_NETINSTALL="Retinstalo (aldonaj pakaĵoj el interreto)"
    URL_TITLE="URL de pakaĵlista"
    URL_PROMPT="Enigu la URL al listo de pakaĵoj (unu pakaĵo po linio):"
    TERMINAL_PROMPT="Instalada tipo: 1 = Senkonekte, 2 = Retinstalo (pakaĵoj el interreto)"
    TERMINAL_CHOICE="Elekto [1]: "
    TERMINAL_URL_PROMPT="URL de pakaĵlista (unu pakaĵo po linio): "
    ;;
  *)
    # English (default)
    TITLE="Install type"
    PROMPT="How do you want to install?"
    OPT_OFFLINE="Offline (image contents only)"
    OPT_NETINSTALL="Netinstall (additional packages from the internet)"
    URL_TITLE="Package list URL"
    URL_PROMPT="Enter the URL to a package list (one package per line):"
    TERMINAL_PROMPT="Install type: 1 = Offline, 2 = Netinstall (packages from internet)"
    TERMINAL_CHOICE="Choice [1]: "
    TERMINAL_URL_PROMPT="Package list URL (one per line): "
    ;;
esac
