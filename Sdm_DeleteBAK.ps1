$address = 'U:/MSSQL11.MSSQLSERVER/MSSQL/Backup/SFTP_Clients/virpindmisdb01/encrypted'
cd $address

$newFile = $address + '/SDM.BAK'

#deleting BAK file because no longer encrypted
If (Test-Path $newFile){
	Remove-Item $newFile
   }

#deleting log file due to size constraints
$logAddress = 'U:/MSSQL11.MSSQLSERVER/MSSQL/Backup/SDM_LogBackup'
If (Test-Path $logAddress){
	Remove-Item $logAddress
    }