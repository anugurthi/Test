
$sqlFiles=(Get-ChildItem savdssdf -Recurse).FullName

# Perform iteration to create the same file in each folder
foreach ($sqlFile in $Thisfile) {
    
    $userdata = Get-Content -Path $sqlFile
    $userdetails =$userdata.Split(" ")

    #Invoke-Sqlcmd -InputFile "C:\ScriptFolder\TestSqlCmd.sql" | Out-File -FilePath "C:\ScriptFolder\TestSqlCmd.rpt" Output sent to TestSqlCmd.rpt.

    Write-Host "UserName" $userdetails[0]
    Write-Host "password" $userdetails[1]
    Write-Host "numberofservers" $userdetails[2]
}
