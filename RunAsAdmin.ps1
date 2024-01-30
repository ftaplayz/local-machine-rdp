#Requires -RunAsAdministrator
Invoke-WebRequest -uri https://github.com/stascorp/rdpwrap/releases/download/v1.6.2/RDPWrap-v1.6.2.zip -outfile rdpwrap.zip
Expand-Archive ./rdpwrap.zip
Remove-Item .\rdpwrap.zip 
Set-Location .\rdpwrap\
Start-Process .\install.bat -Wait 
Stop-Service termservice -Force
Invoke-WebRequest https://raw.githubusercontent.com/sebaxakerhtc/rdpwrap.ini/master/rdpwrap.ini -outfile "C:\Program Files\RDP Wrapper\rdpwrap.ini"
Start-Service termservice #
