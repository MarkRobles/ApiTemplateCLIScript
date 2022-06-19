mkdir CvCreator
cd CvCreator

dotnet new sln -n CvCreator


dotnet new classlib -n CvCreator.Core  -f net5.0
dotnet new classlib -n CvCreator.Infrastructure  -f net5.0
dotnet  new webapi -n CvCreator.Api  -f net5.0

dotnet sln add CvCreator.Core/CvCreator.Core.csproj
dotnet sln add CvCreator.Infrastructure/CvCreator.Infrastructure.csproj
dotnet sln add CvCreator.Api/CvCreator.Api.csproj

dotnet add CvCreator.Infrastructure/CvCreator.Infrastructure.csproj reference CvCreator.Core/CvCreator.Core.csproj
dotnet add CvCreator.Api/CvCreator.Api.csproj reference CvCreator.Core/CvCreator.Core.csproj
dotnet add CvCreator.Api/CvCreator.Api.csproj reference CvCreator.Infrastructure/CvCreator.Infrastructure.csproj



cd CvCreator.Core
mkdir Interfaces
mkdir Entities
cd ..

cd CvCreator.Infrastructure
mkdir Data
mkdir Repositorios

dotnet add package Microsoft.EntityFrameworkCore -v 5.0.17
dotnet add package Microsoft.EntityFrameworkCore.Design -v 5.0.17
dotnet add package  Microsoft.EntityFrameworkCore.SqlServer -v 5.0.17
dotnet add package  Microsoft.EntityFrameworkCore.SqlServer -v 5.0.17
dotnet add package Microsoft.EntityFrameworkCore.Tools  -v 5.0.17
cd.. 


cd CvCreator.Api
dotnet add package AutoMapper.Extensions.Microsoft.DependencyInjection -v 8.1.1
dotnet add package Swashbuckle.AspNetCore -v 6.2.3
dotnet add package Microsoft.AspNetCore.Mvc.Versioning.ApiExplorer -v 5.0.0
dotnet add package Microsoft.AspNetCore.Mvc.Versioning -v 5.0.0
dotnet add package Microsoft.AspNetCore.Mvc.NewtonsoftJson -v 5.0.15




