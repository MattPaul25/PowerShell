
$address = 'U:/MSSQL11.MSSQLSERVER/MSSQL/Backup/SFTP_Clients/virpindmisdb01/encrypted'
cd $address

$oldFile = $address + '/SDM.BAK.Encrypted'
$newFile = $address + '/SDM.BAK'

If (Test-Path $newFile){
	Remove-Item $newFile
}

get-childitem | % { rename-item $_ "SDM.BAK.Encrypted"}
u:\sfile.exe ks-dec $oldFile $newFile

Remove-Item $oldFile