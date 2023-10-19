@echo off

:: Parameters
set Config=Debug

:: Parse command-line arguments
for %%i in (%*) do (
    if "%%i"=="--config=Release" (
        set Config=Release
    )
)

echo Selected Build Configuration: %Config%

:: Initialize and update submodules
echo Initializing and updating submodules...
git submodule update --init --recursive

:: Restore projects
echo Restoring the Backend projects...
dotnet restore ..\Velocity.Backend\Velocity.Backend.sln

:: Build the projects
echo Building the Backend projects...
dotnet build ..\Velocity.Backend\Velocity.Backend.sln --configuration %Config% --no-restore

:: Run Backend project
echo Running the Backend project...
dotnet run --project ..\Velocity.Backend\src\Velocity.API\Velocity.API.csproj --configuration %Config% --no-build --no-restore
