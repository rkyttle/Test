$disk = Get-Disk | Where {($_.partitionstyle -like 'raw' -and $_.Number -like '2')}

$disk | 
Initialize-Disk -PartitionStyle MBR -PassThru |
New-Partition -UseMaximumSize -DriveLetter 'F' |
Format-Volume -FileSystem NTFS -NewFileSystemLabel 'DATA1' -Confirm:$false -Force