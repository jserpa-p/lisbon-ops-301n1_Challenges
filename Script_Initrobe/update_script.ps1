# Script purpose - This script enables automatic updates on a windows 10 endpoint 
# in order to mantain the computer secure and updated

# Set automatic updates to enabled
Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update' -Name 'AUOptions' -Value 4

# Restart the Windows Update service
Restart-Service -Name wuauserv