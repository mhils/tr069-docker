#!/bin/sh
set -e
set -x

freecwmp set InternetGatewayDevice.ManagementServer.PeriodicInformInterval 60
freecwmp set InternetGatewayDevice.ManagementServer.PeriodicInformEnable 1 


#freecwmp set InternetGatewayDevice.ManagementServer.URL http://mitm:8081/
#freecwmp set InternetGatewayDevice.ManagementServer.Username freecwmp
#freecwmp set InternetGatewayDevice.ManagementServer.Password freecwmp
freecwmp set InternetGatewayDevice.ManagementServer.ConnectionRequestURL http://mitm:8081/connectionrequest
freecwmp set InternetGatewayDevice.ManagementServer.ConnectionRequestUsername freecwmp
freecwmp set InternetGatewayDevice.ManagementServer.ConnectionRequestPassword freecwmp

ubusd &
ubus listen &
freecwmpd -f
