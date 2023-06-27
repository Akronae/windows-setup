@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)

assoc .="Text Document"
assoc .svg="Text Document"
assoc .js="Text Document"
assoc .jsx="Text Document"
assoc .ts="Text Document"
assoc .tsx="Text Document"
assoc .html="Text Document"
assoc .xml="Text Document"
assoc .cs="Text Document"
assoc .css="Text Document"
assoc .less="Text Document"
assoc .sass="Text Document"
assoc .conf="Text Document"
assoc .local="Text Document"
assoc .development="Text Document"

ftype "Text Document"="c:\windows\system32\notepad.exe" "%1"

pause
