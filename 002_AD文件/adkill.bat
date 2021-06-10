 
:: 删除包含特定后缀的本bat目录下的所有文件
del *.bak /s
del *.htm /s
del *.sct /s
del *.map /s
del *.htm /s
del *.log /s
del *.OutJob /s
del *.SchDoc.Zip /s
del *.PcbDoc.Zip /s
del *.PcbLib.Zip /s
del *.PrjPcb.Zip /s
::删除.PrjPcbStructure 类型的无用文件
del *.PrjPcbStructure /s 
 
 
:: 删除包含特定字符的本bat目录下的所有无用子文件夹
for /f "delims=" %%a in ('dir /ad /b /s *History*')  do rd /s /q "%%~a" 
for /f "delims=" %%a in ('dir /ad /b /s *Logs*')  do rd /s /q "%%~a" 
for /f "delims=" %%a in ('dir /ad /b /s *Outputs*')  do rd /s /q "%%~a" 
pause
::exit