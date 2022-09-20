@echo off
echo Klutch's Serial Checker
echo -----------------------
title Klutch's Serial Checker
echo ===================
echo DISK NUMBER:
echo ===================
wmic diskdrive get serialnumber
echo ===================
echo MOTHERBOARD
echo ===================
wmic baseboard get serialnumber
echo ===================
echo SMBIOS
echo ===================
wmic path win32_computersystemproduct get uuid
echo ===================
echo GPU
echo ===================
wmic PATH Win32_VideoController GET Description, PNPDeviceID
echo ===================
echo RAM
echo ===================
wmic memorychip get serialnumber
echo ===================
echo BIOS
echo ===================
wmic csproduct get uuid
echo ===================
echo CPU
echo ===================
wmic cpu get processorid
echo ===================
echo MAC ADDRESS
echo ===================
wmic path Win32_NetworkAdapter where "PNPDeviceID like '%%PCI%%' AND NetConnectionStatus=2 AND AdapterTypeID='0'" get MacAddress
pause