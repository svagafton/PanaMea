@echo off

echo "Waiting for VPN connection..."

::check if DBED is available, when that happens the VPN should be connected
:loop
ping -n 1 64.129.255.13 >nul: 2>nul:
if not %errorlevel%==0 goto loop

echo "VPN Connected, changing routes."

route delete 192.168.1.0
route delete 192.168.2.0
route delete 192.168.3.0
route ADD 192.168.1.245 MASK 255.255.255.255 172.16.1.1 METRIC 100
route ADD 192.168.1.78 MASK 255.255.255.255   172.16.1.1 METRIC 100
route ADD 192.168.1.66 MASK 255.255.255.255   172.16.1.1 METRIC 100
route ADD 192.168.1.60 MASK 255.255.255.255   172.16.1.1 METRIC 100
route ADD 192.168.1.61 MASK 255.255.255.255   172.16.1.1 METRIC 100
route ADD 192.168.1.62 MASK 255.255.255.255   172.16.1.1 METRIC 100

echo "Done."