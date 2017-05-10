# escape=`
FROM microsoft/dotnet:2.0-sdk-nanoserver

SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]

RUN New-Item -Path \MusicStore\samples\MusicStore -Type Directory;

WORKDIR MusicStore

ADD . .

#CMD dotnet restore .\samples\MusicStore;`
#	dotnet build .\samples\MusicStore;`
#	Copy-Item C:\MusicStore\ -Destination c:\out -Recurse
	
CMD dotnet restore .\samples\MusicStore;`
	dotnet publish .\samples\MusicStore -o c:\out
		
	