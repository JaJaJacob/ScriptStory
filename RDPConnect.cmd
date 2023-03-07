reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\ /v ExcludedCredentialProviders /f

timeout 3

mstsc.exe /edit "C:\Users\admin\Desktop\Default.rdp"