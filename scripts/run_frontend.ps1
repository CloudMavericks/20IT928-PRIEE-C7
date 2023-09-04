# Parameters
param ($Config = "Debug", $LaunchProfile = "Kestrel")

Write-Output "Selected Build Configuration: $Config"
Write-Output "Selected Launch Profile: $LaunchProfile"

# Initialize and update submodules
Write-Output "Initializing and updating submodules..."
git submodule update --init --recursive

# Restore projects
Write-Output "Restoring the Frontend projects..."
dotnet restore ..\Velocity.Frontend\Velocity.Frontend.sln

# Build the projects
Write-Output "Building the Frontend projects..."
dotnet build ..\Velocity.Frontend\Velocity.Frontend.sln --configuration $Config --no-restore

# Run the Windows Forms project
Write-Output "Running the Frontend project..."
dotnet run --project ..\Velocity.Frontend\src\Velocity.Frontend\Velocity.Frontend.csproj --configuration $Config --no-build --launch-profile $LaunchProfile