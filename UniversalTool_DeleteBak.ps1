#runs after the restore 
#deletes the flat file after the restoration happens so no non encrypted data is on there

$address = 'U:/MSSQL11.MSSQLSERVER/MSSQL/Backup/SFTP_Clients/sbkfisdb9/encrypted'

$newFile = $address + '/UniversalTool.BAK'

If (Test-Path $newFile){
	Remove-Item $newFile
}
