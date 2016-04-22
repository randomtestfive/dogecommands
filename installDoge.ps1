Write-Host $PSScriptRoot;
if((Test-Path $profile) -eq $FALSE)
{
	Write-Host "creating profile...";
	New-Item -path $profile –type file –force;
	Write-Host "adding command...";
}
else
{
	Write-Host "profile exists";
	Write-Host "adding command...";
}
$content = (Get-Content $profile) -join "`n";
$commands = (Get-Content $PSScriptRoot\dogecommands.ps1) -join "`n";
if($content -match '#startdoge+[\s\S]+#enddoge')
{
	$content -replace '#startdoge+[\s\S]+#enddoge', $commands | Out-File $profile;
}
else
{
	Add-Content $profile $commands;
}
Write-Host "doge installed";
sleep 2;
