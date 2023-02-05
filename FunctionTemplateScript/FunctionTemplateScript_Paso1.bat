mkdir CV
cd CV

dotnet new sln -n CV


dotnet new classlib -n CV_Core
dotnet new classlib -n CV_Infrastructure
func init CV_Serverless --dotnet

