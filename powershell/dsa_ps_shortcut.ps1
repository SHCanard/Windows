C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe "Start-Process powershell -Credential domain\account -ArgumentList '-noprofile -command &{Start-Process "mmc dsa.msc" -verb runas}'"
#Shortcut should be executed as administrator for this to work (Properties > Shortcut > Advanced)
