$client_id=-join ((48..57) | Get-Random -Count 6 | % {[char]$_})
$hexified=[System.Text.Encoding]::ASCII.GetBytes($client_id)
$objWin32NAC = Get-WmiObject -Class Win32_NetworkAdapterConfiguration -namespace "root\CIMV2" -computername "." -Filter "IPEnabled = 'True' AND DHCPEnabled ='True'"
foreach ($objNACItem in $objWin32NAC)
{
$nic=($objNACItem.SettingID)
New-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\services\Tcpip\Parameters\Interfaces\$nic -Force -Name DhcpClientIdentifier -PropertyType Binary -Value ([byte[]]$hexified)
}
Write-Host $nic
Write-Host $hexified