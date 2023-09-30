# csv2xml
<code>
<pre>

## csv2xml, version 2023-09-30-1

convert CSV or TSV files to "Excel xml files" using command line, 
or drag and drop CSV file to this program in Windows.

"Excel XML 2003 spreadsheet file" xml, can be used instead of Excel .xlsx file,
and can be opened and save in Excel.
(This type of xml is also known as SpreadsheetML)

You can open it in Excel, or Libre Office Calc program.

Can be used as an replacement for command line programs like csv2xlsx, csv2xls, 
csv2ods, csv2fods, or tsv2xml, tsv2ods, tsv2xlsx, tsv2xls ...

String delimiter ("") is not supported, so be careful when using , as column delimiter.
Tab separated file as in input file is recommended, if posssible. UTF-8.

Semicolon file as input is also suported.

OS: Windows.
Language: windows batch, powershell (for replacing utf-8)


## Downloand and installation: 
Right click [here](https://raw.githubusercontent.com/dbojan/csv2xml/main/csv2xml.bat)

## optional:
Start/run, enter shell:sendto
Create shortcut to csv2xml.bat in newly opened "send to folder". 
Drag csv2xml.bat to sendto folder using right mouse click. 
Select 'create shortcuts here'.
or download on [shell_open_sendto_folder.bat](https://raw.githubusercontent.com/dbojan/csv2xml/main/shell_open_sendto_folder.bat)


## Usage:
drag and drop csv or tsv to csv2xml.bat

if you created shortcut in sendto folder, you can:
right click on csv file, 
select send to, 
and pick csv2xml.bat

XML file will be created in the same folder as csv file.


Libre Office Calc can open xml, but cannot save it, it will offer to save in ods or xlsx format.


## changes
-0.98c
 & is no longer automatically removed. XML works fine in Excel.
 
-2023-09-30-1
 auto replace of < > ' " &


--
dbojan.github.io