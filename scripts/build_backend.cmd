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
dotnet restore ..\Velocity\src\Velocity.Backend\Velocity.Backend.csproj

:: Build the projects
echo Building the Backend projects...
dotnet build ..\Velocity\src\Velocity.Backend\Velocity.Backend.csproj --configuration %Config% --no-restore
