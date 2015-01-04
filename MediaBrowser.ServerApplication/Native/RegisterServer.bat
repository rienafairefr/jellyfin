rem %1 = udp server port
rem %2 = http server port

if [%1]==[] GOTO DONE

netsh advfirewall firewall delete rule name="Port %1" protocol=UDP localport=%1
netsh advfirewall firewall add rule name="Port %1" dir=in action=allow protocol=UDP localport=%1

if [%2]==[] GOTO DONE

netsh advfirewall firewall delete rule name="Port %2" protocol=TCP localport=%2
netsh advfirewall firewall add rule name="Port %2" dir=in action=allow protocol=TCP localport=%2


:DONE
Exit