set /P delay=" Sleep in: " 

sleep %delay% && rundll32.exe powrprof.dll,SetSuspendState 0,1,0