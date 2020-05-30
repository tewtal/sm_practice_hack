FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build-env
RUN apt-get update -yq && apt-get install nodejs npm cmake build-essential python3.7 -yq
RUN ln -s /usr/bin/python3.7 /usr/bin/python3

# Build asar
WORKDIR /asar
RUN curl -sSL "https://github.com/RPGHacker/asar/archive/v1.71.tar.gz" -o v1.71.tar.gz \
 && tar xfz v1.71.tar.gz \
 && cd asar-1.71 \
 && cmake src \
 && make

# Copy code into working folder
WORKDIR /app
COPY . ./

WORKDIR /app
RUN cp /asar/asar-1.71/asar/asar-standalone tools/asar \
  && chmod +x ./build.sh \
  && ./build.sh \
  && cp build/smhack20_sd2snes.ips /app/website/ClientApp/src/files/saveStatePatch.ips \
  && cp build/smhack20.ips /app/website/ClientApp/src/files/noSaveStatePatch.ips


# Build and publish .NET app
WORKDIR /app/website
RUN dotnet publish -c Release -o out

# Build runtime image
FROM mcr.microsoft.com/dotnet/core/aspnet:3.1
WORKDIR /app
COPY --from=build-env /app/website/out .
ENTRYPOINT ["dotnet", "SMPracticeHack.dll"]
