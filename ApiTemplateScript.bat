mkdir Eventor
cd Eventor

dotnet new sln -n Eventor


dotnet new classlib -n Eventor.Core  -f net6.0
dotnet new classlib -n Eventor.Infrastructure  -f net6.0
dotnet  new webapi -n Eventor.Api  -f net6.0


dotnet sln add Eventor.Core/Eventor.Core.csproj
dotnet sln add Eventor.Infrastructure/Eventor.Infrastructure.csproj
dotnet sln add Eventor.Api/Eventor.Api.csproj

dotnet add Eventor.Infrastructure/Eventor.Infrastructure.csproj reference Eventor.Core/Eventor.Core.csproj
dotnet add Eventor.Api/Eventor.Api.csproj reference Eventor.Core/Eventor.Core.csproj
dotnet add Eventor.Api/Eventor.Api.csproj reference Eventor.Infrastructure/Eventor.Infrastructure.csproj



cd Eventor.Core
mkdir Interfaces
mkdir Entities
cd ..

cd Eventor.Infrastructure
mkdir Data
mkdir Repositorios

dotnet add package Microsoft.EntityFrameworkCore -v 6.0.16
dotnet add package Microsoft.EntityFrameworkCore.Design -v 6.0.16
dotnet add package  Microsoft.EntityFrameworkCore.SqlServer -v 6.0.16
dotnet add package  Microsoft.EntityFrameworkCore.SqlServer -v 6.0.16
dotnet add package Microsoft.EntityFrameworkCore.Tools  -v 6.0.16
cd.. 


cd Eventor.Api
dotnet add package AutoMapper.Extensions.Microsoft.DependencyInjection -v 8.1.1
dotnet add package Swashbuckle.AspNetCore -v 6.2.3
dotnet add package Microsoft.AspNetCore.Mvc.Versioning.ApiExplorer -v 5.0.0
dotnet add package Microsoft.AspNetCore.Mvc.Versioning -v 5.0.0
dotnet add package Microsoft.AspNetCore.Mvc.NewtonsoftJson -v 5.0.15




