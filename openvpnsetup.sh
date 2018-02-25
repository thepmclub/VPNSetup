#!/bin/bash
wget https://github.com/thepmclub/VPNSetup/blob/master/enigma2-plugin-extensions-vpnchanger_1.1.0_all.ipk?raw=true-O /tmp/enigma2-plugin-extensions-vpnchanger_1.1.0_all.ipk
opkg install /tmp/enigma2-plugin-extensions-vpnchanger_1.1.0_all.ipk
mv /usr/lib/enigma2/python/Plugins/Extensions/VpnChanger/plugin.py /usr/lib/enigma2/python/Plugins/Extensions/VpnChanger/plugin.py-org
wget https://raw.githubusercontent.com/thepmclub/VPNSetup/master/plugin.py -O /usr/lib/enigma2/python/Plugins/Extensions/VpnChanger/plugin.py
chmod 777 /usr/lib/enigma2/python/Plugins/Extensions/VpnChanger/plugin.py
opkg install openvpn
rm /usr/sbin/pmcvpnsetup
wget https://raw.githubusercontent.com/thepmclub/VPNSetup/master/pmcvpnsetup -O /usr/sbin/pmcvpnsetup
chmod 777 /usr/sbin/pmcvpnsetup
echo "Success, everything is installed properly"
