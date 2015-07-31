
$address = 'U:/MSSQL11.MSSQLSERVER/MSSQL/Backup/SFTP_Clients/sbkfisdb9/encrypted'
cd $address

$oldFile = $address + '/UniversalTool.BAK.Encrypted'
$newFile = $address + '/UniversalTool.BAK'

If (Test-Path $newFile){
	Remove-Item $newFile
}

get-childitem | % { rename-item $_ "UniversalTool.BAK.Encrypted"}
u:\sfile.exe ks-dec $oldFile $newFile

Remove-Item $oldFile