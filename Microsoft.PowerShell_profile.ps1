Import-Module posh-git
oh-my-posh init pwsh --config "~/Documents/PowerShell/theme.omp.json" | Invoke-Expression

function repos {
	& cd C:\Repos
}

function edit {
	param (
		$Filename
	)

	& "C:/Program Files/Notepad++/notepad++.exe" $Filename
}

function which {
	param (
		$Command
	)
	
	if ($PSBoundParameters.ContainsKey('Command')) {
		Write-Host (Get-Module (Get-Command $Command).Source).Path
	}
}

function core {
	& cd C:\Repos\LeadCrumb\DC.Atlas\Core.Api
	& dotnet run
}

clear