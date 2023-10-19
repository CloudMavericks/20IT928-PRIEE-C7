# Parameters
param ($Config = "Debug")

Write-Output "Selected Build Configuration: $Config"

# Initialize and update submodules
Write-Output "Initializing and updating submodules..."
git submodule update --init --recursive

# Restore projects
Write-Output "Restoring the Backend projects..."
dotnet restore ..\Velocity\src\Velocity.Backend\Velocity.Backend.csproj

# Build the projects
Write-Output "Building the Backend projects..."
dotnet build ..\Velocity\src\Velocity.Backend\Velocity.Backend.csproj --configuration $Config --no-restore
