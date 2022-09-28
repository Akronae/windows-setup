@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)

assoc .=txtfile
assoc .svg=txtfile
assoc .js=txtfile
assoc .jsx=txtfile
assoc .ts=txtfile
assoc .tsx=txtfile
assoc .html=txtfile
assoc .xml=txtfile
assoc .cs=txtfile
assoc .css=txtfile
assoc .less=txtfile
assoc .sass=txtfile
assoc .conf=txtfile
assoc .local=txtfile
assoc .development=txtfile
pause
