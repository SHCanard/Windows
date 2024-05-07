C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe "Start-Process powershell -Credential domain\user -ArgumentList '-noprofile -command &{Start-Process "mmc dsa.msc" -verb runas}'"
#Shortcut should be executed as administrator for this to work (Properties > Shortcut > Advanced)

#Alternative if the above does not work :
runas.exe /user:domain\user "cmd /c start \"\" mmc %SystemRoot%\system32\dsa.msc"
