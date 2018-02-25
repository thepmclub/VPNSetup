#!/bin/bash
wget http://vpnsetup.the-pm.club/openvpn/enigma2-plugin-extensions-vpnchanger_1.1.0_all.ipk -O /tmp/enigma2-plugin-extensions-vpnchanger_1.1.0_all.ipk
opkg install /tmp/enigma2-plugin-extensions-vpnchanger_1.1.0_all.ipk
mv /usr/lib/enigma2/python/Plugins/Extensions/VpnChanger/plugin.py /usr/lib/enigma2/python/Plugins/Extensions/VpnChanger/plugin.py-org
wget http://vpnsetup.the-pm.club/openvpn/plugin.py -O /usr/lib/enigma2/python/Plugins/Extensions/VpnChanger/plugin.py
chmod 777 /usr/lib/enigma2/python/Plugins/Extensions/VpnChanger/plugin.py
opkg install openvpn
rm /usr/sbin/pmcvpnsetup
wget http://vpnsetup.the-pm.club/openvpn/pmcvpnsetup -O /usr/sbin/pmcvpnsetup
chmod 777 /usr/sbin/pmcvpnsetup
echo "Success, everything is installed properly"
