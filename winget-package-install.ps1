# Create a file named "winget.txt" in the same directory as this script.
# Write exact names for packages on each line.
# Ex: filename: winget.txt
# Microsoft.Edge
# Google.Chrome

Write-Host "Checking winget..."

Try{
	# Check if winget is already installed
	$er = (invoke-expression "winget -v") 2>&1
	if ($lastexitcode) {throw $er}
	Write-Host "winget is already installed."
}
Catch{
	# winget is not installed. Install it from the Github release
	Write-Host "winget is not found, installing it right now."
	
	$repo = "microsoft/winget-cli"
	$releases = "https://api.github.com/repos/$repo/releases"
	
	Write-Host "Determining latest release"
	$json = Invoke-WebRequest $releases
	$tag = ($json | ConvertFrom-Json)[0].tag_name
	$file = ($json | ConvertFrom-Json)[0].assets[0].name
	
	$download = "https://github.com/$repo/releases/download/$tag/$file"
	$output = $PSScriptRoot + "\winget-latest.appxbundle"
	Write-Host "Dowloading latest release"
	Invoke-WebRequest -Uri $download -OutFile $output
	
	Write-Host "Installing the package"
	Add-AppxPackage -Path $output
}
Finally {
	# Start installing the packages with winget
	Get-Content .\winget.txt | ForEach-Object {
		$prog = $_
		switch ($prog.IndexOf(‘;’)){
    			-1 {Break}
   		 	0 {return}
    			Default {$prog = $prog.substring(0, $prog.IndexOf(';'))}
    		}
		iex ("winget install -e " + $prog)
	}
	read-host “Install finished, Press ENTER to close...”
}