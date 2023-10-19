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
echo Restoring the Frontend projects...
dotnet restore ..\Velocity\src\Velocity.Frontend\Velocity.Frontend.csproj

:: Build the projects
echo Building the Frontend projects...
dotnet build ..\Velocity\src\Velocity.Frontend\Velocity.Frontend.csproj --configuration %Config% --no-restore
