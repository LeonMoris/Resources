add-printer -connectionname "\\server02\brother mfc-l3770cdw"

$MYPRINTER = "\\server02\brother mfc-l3770cdw" 
$PRINTERTMP = (Get-CimInstance -ClassName CIM_Printer | WHERE {$_.Name -eq $MYPRINTER}[0])
$PRINTERTMP | Invoke-CimMethod -MethodName SetDefaultPrinter | Out-Null
