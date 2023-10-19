# Parameters
param ($Config = "Debug")

Write-Output "Selected Build Configuration: $Config"

# Initialize and update submodules
Write-Output "Initializing and updating submodules..."
git submodule update --init --recursive

# Restore projects
Write-Output "Restoring the Frontend projects..."
dotnet restore ..\Velocity\src\Velocity.Frontend\Velocity.Frontend.csproj

# Build the projects
Write-Output "Building the Frontend projects..."
dotnet build ..\Velocity\src\Velocity.Frontend\Velocity.Frontend.csproj --configuration $Config --no-restore
