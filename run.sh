sudo apt update
sudo apt upgrade -y
sudo apt install libfuse2 -y
sudo apt install dbus notification-daemon -y
sudo apt install xdotool -y
cd /home/raspi
sudo wget -c https://s3.live.divera247.de/public/software/monitor/DIVERA247-Monitor-1.1.4-arm64.AppImage
mv DIVERA247-Monitor-1.1.4-arm64.AppImage Monitor.AppImage
sudo chmod a+x /DIVERA247-Monitor-1.1.4-arm64.AppImage

echo "[D-BUS Service]
Name=org.freedesktop.Notifications
Exec=/usr/lib/notification-daemon/notification-daemon" > /usr/share/dbus-1/services/org.freedesktop.Notifications.service

mkdir -p ~/.config/autostart

echo "[Desktop Entry]
Type=Application
Exec=/Pfad/Zum/Monitor.AppImage"
