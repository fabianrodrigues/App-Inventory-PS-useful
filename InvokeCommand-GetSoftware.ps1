

#  C:\temp\fslogix\x64\Release\FSLogixAppsSetup.exe

#$listofcomputernaems = "ZNEEVCSP16VC512"
$listofcomputernaems = get-content -Path $PSScriptRoot\computerlist.txt


foreach ($c in $listofcomputernaems) {
  write-host $c
  Invoke-Command -ComputerName $c -ScriptBlock {
   start-process -FilePath "C:\Temp\AppInventory\GetAppInventory.cmd" -wait 
   #dir c:\
 }
}

