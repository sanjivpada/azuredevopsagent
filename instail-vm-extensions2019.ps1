#Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

#Assign Packages to Install
$Packages = 'googlechrome',`
            'visualstudiocode',`
            'docker-for-windows',`
            'git',`
			'azure-cli',`
            'visualstudio2019community',`
            'visualstudio2019-workload-azure',`
            'visualstudio2019-workload-netweb'


#Install Packages
ForEach ($PackageName in $Packages)
{choco install $PackageName -y}

#Reboot
Restart-Computer