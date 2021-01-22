New-Item -Path C:\temp -ItemType Directory -Force

Invoke-WebRequest https://raw.githubusercontent.com/Cmajda/Azure/master/ARM_Template/OnboardingMDE/Scripts/MdeManicaGP2019.cmd -outfile c:\temp\MdeManicaGP2019.cmd
Start-Process c:\temp\MdeManicaGP2019.cmd -Wait
