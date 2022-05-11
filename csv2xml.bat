


@echo off
rem echo 1=%1 2=%2

if [%1]==[] (
echo Usage: csv2xml input.csv "optional output file name.xml"
echo.
echo Or drag and drop csv or tsv file on csv2.xml.
echo.
echo v 0.98
echo.
echo Supported delimiters: tab, semicalon, pipe, and comma /no string delimiter!/. 
echo.
echo Ampersand will be replaced with space. Optionally, double quotes can be removed too.
echo.
echo Numbers will be displayed as strings. If you need autosum or formulas, you will need to convert them to numbers.
echo.
echo To change in excel, select them, click on yellow arrow and select convert to number
echo.
echo Depending on your regional settings, excel will decide if 1.1 and 1,1 are numbers of strings, after conversion.
echo.
echo In Libre Calc, copy them. In toolbar select Paste special, Character set: Unicode utf-8, Separator options: Separated by Tab, String delimiter: leave empty.
echo.
echo You will also need to set column width manually in Excel/Calc. Select all colums with data by clicking on column names a,b,c, double click on the line between a,b,c.
echo.
echo To remove pause at the end, remove pause at the end.
pause 
exit /b
)

set in=1file.html
set in=%~1
set out=%~1.xml
if not [%2]==[] set out=%~2
set temp=%~1.temp.txt

rem ,
rem default
set "separatortype=,"


rem tab
rem check if another separator exists
findstr /m /i /c:"	" "%in%" >Nul
rem found
rem 0 means found, 1 means not found
if %errorlevel%==0 (
set "separatortype=	"
goto foundit
)


rem pipe
rem check if another separator exists
findstr /m /i /c:"|" "%in%" >Nul
rem found
rem 0 means found, 1 means not found
if %errorlevel%==0 (
set "separatortype=\|"
goto foundit
)

rem ;
findstr /m /i /c:";" "%in%" >Nul
rem found
rem 0 means found, 1 means not found
if %errorlevel%==0 (
set "separatortype=;"
goto foundit
)


:foundit
echo separator detected="%separatortype%"
rem er=%errorlevel%-   

if exist "%out%" del "%out%"


set "line1=^<?xml version="1.0" encoding="utf-8"?^> ^<?mso-application progid="Excel.Sheet"?^>"
set "line2=^<Workbook xmlns="urn:schemas-microsoft-com:office:spreadsheet" xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns:ss="urn:schemas-microsoft-com:office:spreadsheet"^>"
set "line3=^<Worksheet ss:Name="Sheet1"^> ^<Table^>"
set "line3.1=^<Row^>^<Cell^> ^<Data ss:Type="String"^>"

set "line3.2=^</Data^>^</Cell^>^</Row^>"
set "line4=^</Table^> ^</Worksheet^>"
set "line5=^</Workbook^>"


echo %line1%>> "%out%"
echo %line2%>> "%out%"
echo %line3%>> "%out%"
echo %line3.1%>> "%out%"

rem append in to out file

rem use temp, because we need to replace newlines(crlf) with tags
type "%in%" > "%temp%"

rem remove quotes " , optional.
rem powershell -Command "(gc -encoding utf8 '%temp%')  -replace  '"\"', ''    | Set-Content -encoding utf8 '%temp%' "


set "comma=</Data></Cell> <Cell><Data ss:Type=\"String\">"
set "crlf=</Data></Cell></Row><Row><Cell><Data ss:Type=\"String\">"


powershell -Command "(gc -encoding utf8 '%temp%')  -replace  '&', ' '   -replace '%separatortype%' , '%comma%'     -join '%crlf%'    | Set-Content -encoding utf8 '%temp%' "

rem append temp to out
type "%temp%" >> "%out%"

del "%temp%"


rem add closing xml table tags

echo %line3.2%>> "%out%"
echo %line4%>> "%out%"
echo %line5%>> "%out%"

rem remove newline again for data not to be in newline
powershell -Command "(gc -encoding utf8 '%out%') -join ''    | Set-Content -encoding utf8 '%out%' "

echo converted "%in%" to "%out%"
pause


