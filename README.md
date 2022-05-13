<pre>
# csv2xml
csv2xml, convert csv or tsv files to xml files using command line, or drag and drop in windows.

Can be used as an replacement for csv2xlsx, csv2xls, csv2ods, csv2fods, or tsv2xml, tsv2ods, tsv2xlsx, tsv2xls ...

String delimiter ("") is not supported, so be careful when using , as column delimiter.

Convert csv comma separated file, or tsv tab separated file to "Excel XML 2003" spreadsheet file (also known as SpreadsheetML). 
Output file can be opened in Excel or Calc.
Semicolon file as input is also suported.

OS: Windows.
Language: windows batch, powershell (for replace utf-8)

Installation: click on .bat file in browser, select text, copy.
Open Notepad, paste, save as csv2xml.bat 
If windows ask to run, click on yes.

Libre Office Calc can open xml, but cannot save it, it will offer to save in ods or xlsx format.

Usage:
echo Usage: csv2xml input.csv "optional output file name.xml"
echo.
echo Or drag and drop csv or tsv file on csv2.xml.
echo.
echo v 0.98b1
echo.
echo Supported delimiters: tab, semicolon, pipe, and comma /no string delimiter!/. 
echo.
echo Ampersand will be replaced with empty space. Optionally double quotes can be removed too.
echo.
echo Numbers will be displayed as strings. If you need autosum or formulas, you will need to convert them to numbers.
echo.
echo To change in excel, select them, click on yellow arrow and select convert to number
echo.
echo Depending on your regional settings, excel will decide if 1.1 and 1,1 are numbers of strings, after conversion.
echo.
echo In Libre Calc, copy them. In toolbar select Paste special, Character set: Unicode utf-8, Separator options: Separated by Tab, String delimiter: leave empty.
echo.
echo You will also need to set column width manually in Excel/Calc. Select all columns with data by clicking on column names a,b,c, double click on the line between a,b,c.
echo.
echo To remove pause at the end, remove pause at the end.



written as preformated text, till github decides to respect newline ...
I am not going to add two spaces at the end of every line.





