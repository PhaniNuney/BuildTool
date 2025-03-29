# BuildTool

A lightweight, powerful CLI utility for automating semantic versioning in Git repositories.


## Overview

BuildTool simplifies version management with automatic semantic versioning for your Git projects. It uses a structured `vMAJOR.MINOR.PATCH.BUILD` format and handles the tagging and pushing process with minimal effort.

## Quick Start

### Installation

```bash
# Download the script
curl -O https://raw.githubusercontent.com/PhaniNuney/BuildTool/main/build

# Make it executable
chmod +x build

# Install it
sudo ./build install
```

### Basic Workflow

```bash
# Make your changes
git add .
git commit -m "Your commit message"

# Tag and push with BuildTool
build
```

That's it! BuildTool will automatically increment your version number and push the changes.

## Command Reference

| Command | Description |
|---------|-------------|
| `build` | Tag the latest commit and push it |
| `build version` | Display the current project version |
| `build -v` | Display the BuildTool version |
| `build X.Y.Z` | Set a specific version (e.g., `build 2.1.0`) |
| `build -o X.Y.Z` | Override version checks and force a specific version |
| `build update` | Update BuildTool to the latest version |
| `build install` | Install BuildTool to your system |

## How It Works

BuildTool uses this versioning scheme: `vMAJOR.MINOR.PATCH.BUILD`

- **MAJOR**: Significant changes, often with breaking changes
- **MINOR**: New features, non-breaking changes
- **PATCH**: Bug fixes and minor improvements
- **BUILD**: Automatically incremented with each build

The tool follows these rules:
1. First commit starts at `v1.0.0.0`
2. Each subsequent commit increments the BUILD number
3. Manual version changes can set a new MAJOR.MINOR.PATCH base
4. Version numbers must increase (unless using the override flag)
