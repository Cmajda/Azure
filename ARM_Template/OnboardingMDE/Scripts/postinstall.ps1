New-Item -Path C:\temp -ItemType Directory -Force

Invoke-WebRequest https://raw.githubusercontent.com/Cmajda/Azure/master/ARM_Template/OnboardingMDE/Scripts/WindowsDefenderATPLocalOnboardingScript.cmd -outfile c:\temp\WindowsDefenderATPLocalOnboardingScript.cmd
Start-Process c:\temp\WindowsDefenderATPLocalOnboardingScript.cmd -Wait
