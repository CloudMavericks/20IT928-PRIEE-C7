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
echo Selected Launch Profile: %LaunchProfile%

:: Initialize and update submodules
echo Initializing and updating submodules...
git submodule update --init --recursive

:: Restore projects
echo Restoring the Frontend projects...
dotnet restore ..\Velocity.Frontend\Velocity.Frontend.sln

:: Build the projects
echo Building the Frontend projects...
dotnet build ..\Velocity.Frontend\Velocity.Frontend.sln --configuration %Config% --no-restore

:: Run the Windows Forms project
echo Running the Windows Forms project...
dotnet run --project ..\Velocity.Frontend\src\Velocity.Frontend\Velocity.Frontend.csproj --configuration %Config% --no-build --no-restore