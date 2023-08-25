"..\..\nuget.exe" install packages.config -o ..\..\packages
"C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSBuild.exe" -t:build -p:Configuration=Release
