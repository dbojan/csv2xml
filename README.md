```
# csv2xml

csv2xml, convert CSV or TSV files to "Excel xml files" using command line, 
or drag and drop CSV file to this program in Windows.

"Excel XML 2003 spreadsheet file" xml, can be used instead of Excel .xlsx file,
and can be opened and save in Excel.
(This type of xml is also known as SpreadsheetML)

You can open it in Excel, or Libre Office Calc program.

Can be used as an replacement for command line programs like csv2xlsx, csv2xls, 
csv2ods, csv2fods, or tsv2xml, tsv2ods, tsv2xlsx, tsv2xls ...

String delimiter ("") is not supported, so be careful when using , as column delimiter.

Semicolon file as input is also suported.

OS: Windows.
Language: windows batch, powershell (for replace utf-8)

##
Installation: save the content of .bat file as csv2xml.bat in notepad.
Drag and drop csv files on it, to have it converted to Excel xml files.

Libre Office Calc can open xml, but cannot save it, it will offer to save in ods or xlsx format.
It also has problem with ampersand '&', so remove it using notepad if you plan to use it in Libe Office Calc.

version v 0.98c
-changes in v 0.98c
 & is no longer automatically removed. XML works fine in Excel
 
 







