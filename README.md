
# csv2xml
<code>
<pre>
 
## csv2xml, version v 0.98c

convert CSV or TSV files to "Excel xml files" using command line, 
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


## Installation: 
Click on zip file. Click on 'Download'
Extract content of zip file.

### optional:
Click on "shell_open_sendto_folder.bat"
Create shortcut to csv2xml.bat in newly opened "send to folder". 
Drag csv2xml.bat to sendto folder using right mouse click. 
Select 'create shortcuts here'.

## Usage:
drag and drop csv or tsv to csv2xml.bat

if you created shortcut in sendto folder, you can:
right click on csv file, 
select send to, 
and pick csv2xml.bat

XML file will be created in the same folder as csv file.

Libre Office Calc can open xml, but cannot save it, it will offer to save in ods or xlsx format.
It also has problem with ampersand &, so remove it using notepad if you plan to use it in Libe Office Calc.

## -changes in v 0.98c
 & is no longer automatically removed. XML works fine in Excel.

--
dbojan.github.io






