@echo off
setlocal
cscript make_japanized_ROM.wsf %1 //nologo //Job:show_herder

set /p mode="One-seg入れますか？(Y/N) "


SET job=sc02e

if %mode%%job%==N%job% SET job=sc02e_no_one-seg

::cscript make_japanized_ROM.wsf %1 //nologo //Job:%job% /dbg:ON /dbg_gui:ON
cscript make_japanized_ROM.wsf %1 //nologo //Job:%job%

endlocal
pause

