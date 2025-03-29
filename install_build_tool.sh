#!/bin/bash

# Download the latest version of the build tool
echo "🔄 Downloading the latest version of the build tool..."
git clone https://github.com/yourusername/your-repo.git ~/Projects/BuildTool

# Navigate to the build tool directory
cd ~/Projects/BuildTool

# Run the initial setup
python3 build setup

# Inform the user
echo "✅ Build tool installed and set up successfully. You can now use 'build update' to update it."