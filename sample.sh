  # Add post_install to autostart
  cp -r /usr/share/pearOS-installer/ /mnt/usr/share/
  cp -r /usr/share/pearOS-installer/general_bin/bin_post /mnt/usr/local/bin/bin_post
  chmod +x /mnt/usr/local/bin/bin_post

  echo "[Desktop Entry]" > /mnt/etc/skel/.config/autostart/xyz.pearos-post-install.desktop
  echo "Name=pearOS Post Install" >> /mnt/etc/skel/.config/autostart/xyz.pearos-post-install.desktop
  echo "Comment=Scripts for the after-install time" >> /mnt/etc/skel/.config/autostart/xyz.pearos-post-install.desktop
  echo "GenericName=PostInstall" >> /mnt/etc/skel/.config/autostart/xyz.pearos-post-install.desktop
  echo "Icon=nicec0re-logo" >> /mnt/etc/skel/.config/autostart/xyz.pearos-post-install.desktop
  echo "Categories=Utility;X-SuSE-DesktopUtility;" >> /mnt/etc/skel/.config/autostart/xyz.pearos-post-install.desktop
  echo "Exec=bash /usr/local/bin/bin_post" >> /mnt/etc/skel/.config/autostart/xyz.pearos-post-install.desktop
  echo "Terminal=false" >> /mnt/etc/skel/.config/autostart/xyz.pearos-post-install.desktop
  echo "Type=Application" >> /mnt/etc/skel/.config/autostart/xyz.pearos-post-install.desktop
  echo "X-DBUS-ServiceName=xyz.pearos-post-install" >> /mnt/etc/skel/.config/autostart/xyz.pearos-post-install.desktop
  echo "X-DBUS-StartupType=unique" >> /mnt/etc/skel/.config/autostart/xyz.pearos-post-install.desktop
  echo "X-KDE-PluginInfo-Author=Alexandru Balan" >> /mnt/etc/skel/.config/autostart/xyz.pearos-post-install.desktop
  echo "X-KDE-PluginInfo-Email=alxb421@gmail.com" >> /mnt/etc/skel/.config/autostart/xyz.pearos-post-install.desktop
  echo "X-KDE-PluginInfo-Version=22.03" >> /mnt/etc/skel/.config/autostart/xyz.pearos-post-install.desktop

  # Add "default" user to wheel and sudoers, and make the system not to ask sudo password for user 'default'
  arch-chroot /mnt useradd -m -g users -G wheel -s /bin/bash "default"
  arch-chroot /mnt chpasswd <<<"$USER_NAME:$user_passwd"
  arch-chroot /mnt usermod -aG wheel default
  # arch-chroot /mnt usermod -aG sudo default
  sed -i 's/# %wheel ALL=(ALL) ALL$/%wheel ALL=(ALL) ALL/' /mnt/etc/sudoers
  echo "default ALL=(ALL) NOPASSWD:ALL" >> /mnt/etc/sudoers