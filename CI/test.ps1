
$sqlFiles=(Get-ChildItem -Path TestSQL -Recurse).FullName

# Perform iteration to create the same file in each folder
foreach ($sqlFile in $Thisfile) {
    
    $userdata = Get-Content -Path $sqlFile
    $userdetails =$userdata.Split(" ")

    #Invoke-Sqlcmd -InputFile "C:\ScriptFolder\TestSqlCmd.sql" | Out-File -FilePath "C:\ScriptFolder\TestSqlCmd.rpt" Output sent to TestSqlCmd.rpt.

    Write-Output "UserName" $userdetails[0]
    Write-Output "password" $userdetails[1]
    Write-Output "numberofservers" $userdetails[2]
}
