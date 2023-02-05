cd  CV


dotnet sln add CV_Core/CV_Core.csproj
dotnet sln add CV_Infrastructure/CV_Infrastructure.csproj
dotnet sln add CV_Serverless/CV_Serverless.csproj



dotnet add CV_Infrastructure/CV_Infrastructure.csproj reference CV_Core/CV_Core.csproj
dotnet add CV_Serverless/CV_Serverless.csproj reference CV_Core/CV_Core.csproj
dotnet add CV_Serverless/CV_Serverless.csproj reference CV_Infrastructure/CV_Infrastructure.csproj



cd CV_Core
mkdir Entities
mkdir Interfaces
cd ..

cd CV_Infrastructure
mkdir Data
mkdir Repositories

dotnet add package Microsoft.EntityFrameworkCore -v 6.0.10
dotnet add package Microsoft.EntityFrameworkCore.Design -v 6.0.10
dotnet add package  Microsoft.EntityFrameworkCore.SqlServer -v 6.0.10
dotnet add package Microsoft.EntityFrameworkCore.Tools  -v 6.0.10
cd.. 


cd CV_Serverless

dotnet add package AutoMapper.Extensions.Microsoft.DependencyInjection -v 8.1.1
dotnet add package Microsoft.Azure.Functions.Extensions -v 1.1.0
dotnet add package Microsoft.Azure.WebJobs.Extensions.OpenApi -v 1.0.0
dotnet add package Newtonsoft.Json -v 11.0.2
dotnet add package  Microsoft.EntityFrameworkCore.SqlServer -v 6.0.10
dotnet add package  Microsoft.NET.Sdk.Functions -v 4.1.1


func new --name HttpExample --template "HTTP trigger" --authlevel "admin"


echo "HOLA"
PAUSE


