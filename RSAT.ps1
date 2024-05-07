#
#    - Open gpedit.msc
#    - Go to Computer Configuration -> Administrative Templates -> System
#    - Open Specify settings for optional component installation and component repair
#    - Select Enabled
#    - Check Download repair content and optional features directly from Windows Updates instead of Windows Server Updates Services (WSUS)
#    - Run a gpupdate /force

gpupdate /force

# Set : [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate] "DoNotConnectToWindowsUpdateInternetLocations"=dword:00000000

Add-WindowsCapability -Online -Name Rsat.ActiveDirectory.DS-LDS.Tools~~~~0.0.1.0

Add-WindowsCapability -Online -Name Rsat.GroupPolicy.Management.Tools~~~~0.0.1.0

Get-WindowsCapability -Name RSAT* -Online | Select-Object -Property DisplayName, State
