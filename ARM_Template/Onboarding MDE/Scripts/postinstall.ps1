New-Item -Path C:\temp -ItemType Directory -Force

Invoke-WebRequest https://raw.githubusercontent.com/Cmajda/Azure/master/ARM_Template/Temporaly/UI/allelement.json -outfile c:\temp\01.json
