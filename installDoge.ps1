Write-Host $PSScriptRoot;
if((Test-Path $profile) -eq $FALSE)
{
	Write-Host "creating profile...";
	New-Item –type file –force $profile;
	Write-Host "adding command...";
	Get-Content $PSScriptRoot\dogecommands.ps1 | Add-Content $profile;
}
else
{
	Write-Host "profile exists";
	Add-Content $profile "`n`n";
	Get-Content $PSScriptRoot\dogecommands.ps1 | Add-Content $profile;
	Write-Host "adding command...";
}
Write-Host "doge installed";
sleep 2;