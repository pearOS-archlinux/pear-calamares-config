#!/usr/bin/bash

DIR="/etc/calamares"
KERNEL=$(uname -r)

if [[ -d "/run/archiso/copytoram" ]]; then
	sudo sed -i -e 's|/run/archiso/bootmnt/arch/x86_64/airootfs.sfs|/run/archiso/copytoram/airootfs.sfs|g' "$DIR"/modules/unpackfs.conf
fi

# Alege robust sursa kernel-ului (evită fișiere 0B / căi inexistente)
VMLINUX_CANDIDATES=(
	"/run/archiso/bootmnt/arch/boot/x86_64/vmlinuz-linux"
	"/run/archiso/bootmnt/boot/vmlinuz-linux"
	"/run/archiso/bootmnt/arch/boot/x86_64/vmlinuz"
	"/usr/lib/modules/$KERNEL/vmlinuz"
	"/usr/lib/modules/$KERNEL/vmlinuz-linux"
)

VMLINUX_SRC=""
for p in "${VMLINUX_CANDIDATES[@]}"; do
	if [[ -s "$p" ]]; then
		VMLINUX_SRC="$p"
		break
	fi
done

if [[ -n "$VMLINUX_SRC" ]]; then
	# Înlocuiește doar intrarea de kernel din unpackfs.conf
	sudo sed -i -E "s|source: \"[^\"]*/vmlinuz[^\"]*\"|source: \"$VMLINUX_SRC\"|g" "$DIR"/modules/unpackfs.conf
fi

# Alegerea Offline / Netinstall se face în Calamares (pas „Tip instalare” la începutul exec)
sudo pkexec calamares -D8
