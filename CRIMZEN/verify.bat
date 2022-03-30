color 4
if not exist \Resources (
set msgBoxArgs="& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Critical Folder not found: Resources', 'Crimzen');}"
)
if not exist \Resources\applets (
set msgBoxArgs="& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Critical Folder not found: Resources\applets', 'Crimzen');}"
)
if not exist \Resources\CSBXterm (
set msgBoxArgs="& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Critical Folder not found: Resources\CSBXterm', 'Crimzen');}"
)
if exist name.crm (
    FOR /F "tokens=* delims=" %%x in (name.crm) DO set user=%%x
) else (
    set /p user=Please enter your name:
    echo "%user%">> name.crm
)
