#!/bin/bash

# Parameters
Config="Debug"

# Parse command-line arguments
while [[ $# -gt 0 ]]; do
    key="$1"
    case $key in
        --config=*)
            Config="${key#*=}"
            shift
            ;;
        *)
            # Unknown option
            echo "Unknown option: $1"
            exit 1
            ;;
    esac
done

echo "Selected Build Configuration: $Config"

# Initialize and update submodules
echo "Initializing and updating submodules..."
git submodule update --init --recursive

# Restore projects
echo "Restoring the Backend projects..."
dotnet restore ../Velocity/src/Velocity.Backend/Velocity.Backend.csproj

# Build the projects
echo "Building the Backend projects..."
dotnet build ../Velocity/src/Velocity.Backend/Velocity.Backend.csproj --configuration $Config --no-restore
