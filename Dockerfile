FROM mcr.microsoft.com/dotnet/core/aspnet:3.0
COPY website/bin/Release/netcoreapp3.0/publish/ app/
WORKDIR /app
ENTRYPOINT ["dotnet", "SMPracticeHack.dll"]
