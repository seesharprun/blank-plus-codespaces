FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build

WORKDIR /app

COPY . ./

RUN dotnet restore

RUN dotnet publish --configuration release --output out interface/app.interface.csproj

FROM mcr.microsoft.com/dotnet/runtime:7.0

WORKDIR /run

COPY --from=build /app/out .

ENTRYPOINT ["dotnet", "app.interface.dll"]