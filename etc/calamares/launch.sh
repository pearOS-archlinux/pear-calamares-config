#!/usr/bin/bash

DIR="/etc/calamares"
KERNEL=$(uname -r)
NETINSTALL_MARKER="/tmp/calamares-netinstall-url"

if [[ -d "/run/archiso/copytoram" ]]; then
	sudo sed -i -e 's|/run/archiso/bootmnt/arch/x86_64/airootfs.sfs|/run/archiso/copytoram/airootfs.sfs|g' "$DIR"/modules/unpackfs.conf
	sudo sed -i -e "s|/run/archiso/bootmnt/arch/boot/x86_64/vmlinuz-linux|/usr/lib/modules/$KERNEL/vmlinuz|g" "$DIR"/modules/unpackfs.conf
fi

# Alegere tip instalare: Offline (doar airootfs) sau Netinstall (listă pachete de pe internet)
rm -f "$NETINSTALL_MARKER"
if type zenity &>/dev/null; then
	MODE=$(zenity --list --title "Tip instalare" --text "Cum doriți să instalați?" --column "" "Offline (doar conținutul din imagine)" "Netinstall (pachete suplimentare de pe internet)" --height 220)
	if [[ "$MODE" == "Netinstall (pachete suplimentare de pe internet)" ]]; then
		URL=$(zenity --entry --title "URL listă pachete" --text "Introduceți URL-ul către o listă de pachete (un pachet per linie):" --width 500)
		[[ -n "$URL" ]] && echo "$URL" > "$NETINSTALL_MARKER"
	fi
elif type kdialog &>/dev/null; then
	MODE=$(kdialog --title "Tip instalare" --menu "Cum doriți să instalați?" "1" "Offline (doar conținutul din imagine)" "2" "Netinstall (pachete suplimentare de pe internet)")
	if [[ "$MODE" == "2" ]]; then
		URL=$(kdialog --title "URL listă pachete" --inputbox "Introduceți URL-ul către o listă de pachete (un pachet per linie):")
		[[ -n "$URL" ]] && echo "$URL" > "$NETINSTALL_MARKER"
	fi
else
	echo "Tip instalare: 1 = Offline, 2 = Netinstall (pachete de pe internet)"
	read -r -p "Alegere [1]: " MODE
	MODE=${MODE:-1}
	if [[ "$MODE" == "2" ]]; then
		read -r -p "URL listă pachete (un pachet per linie): " URL
		[[ -n "$URL" ]] && echo "$URL" > "$NETINSTALL_MARKER"
	fi
fi

sudo pkexec calamares -D8
