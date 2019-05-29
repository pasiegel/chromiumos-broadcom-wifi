sudo su
mount -o remount, rw /
sudo echo "blacklist b43" >> /etc/modprobe.d/blacklist.conf
sudo echo "blacklist b43legacy" >> /etc/modprobe.d/blacklist.conf
sudo echo "blacklist ssb" >> /etc/modprobe.d/blacklist.conf
sudo echo "blacklist bcma" >> /etc/modprobe.d/blacklist.conf
sudo echo "wl" >> /etc/modules
sudo touch /etc/modprobe.d/wl.conf
sudo echo "alias wlan0 wl" >> /etc/modprobe.d/wl.conf
cd /lib/modules/3.4.0/kernel/drivers/net/wireless/
wget http://chromium.arnoldthebat.co.uk/files/fw/lib/modules/3.4.0/kernel/drivers/net/wireless/wl.ko
sudo insmod /lib/modules/3.4.0/kernel/net/wireless/cfg80211.ko
sudo insmod /lib/modules/3.4.0/kernel/net/wireless/lib80211.ko
sudo insmod /lib/modules/3.4.0/kernel/net/wireless/lib80211_crypt_ccmp.ko
sudo insmod /lib/modules/3.4.0/kernel/net/wireless/lib80211_crypt_tkip.ko
sudo insmod /lib/modules/3.4.0/kernel/net/wireless/lib80211_crypt_wep.ko
sudo insmod /lib/modules/3.4.0/kernel/drivers/net/wireless/wl.ko
sudo depmod -a
