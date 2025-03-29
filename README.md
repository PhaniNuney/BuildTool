# BuildTool

BuildTool is a Python utility that automates versioning for GitHub commits using semantic versioning (`vMAJOR.MINOR.PATCH.BUILD`). It automatically tags each commit and pushes the tag along with the commit.

## Features

- Automatic version management with semantic versioning
- Simple one-line installation
- Support for custom version numbers
- Cross-platform (macOS, Linux, Windows)

## Installation

### One-Line Installation (macOS/Linux)

```bash
curl -sSL https://raw.githubusercontent.com/yourusername/BuildTool/main/build | sudo python3 - install
```

### One-Line Installation (Windows PowerShell)

```powershell
powershell -Command "Invoke-WebRequest -Uri https://raw.githubusercontent.com/yourusername/BuildTool/main/build -OutFile build.py; python build.py install"
```

### Manual Installation

1. Download the script:
```bash
curl -O https://raw.githubusercontent.com/yourusername/BuildTool/main/build
```

2. Make it executable:
```bash
chmod +x build
```

3. Install it:
```bash
sudo ./build install
```

## Usage

### Basic Usage
After committing your changes, run the build tool to automatically tag and push:

```bash
git add <files>
git commit -m "your commit message"
build
```

This will:
- Check for existing version tags
- Increment the BUILD number
- Tag the commit
- Push the tag to GitHub

### Check Current Version

```bash
build version
```

### Set Custom Version

```bash
build 2.0.0
```

This will set the version to v2.0.0.0 (automatically appending the build number).

### Override Version Check

If you want to set a version that isn't higher than the current one:

```bash
build -o 1.5.0
```

### Update BuildTool

To update to the latest version of the build tool:

```bash
build update
```

### Check BuildTool Version

```bash
build -v
```

## Version Number Logic

- Starts at v1.0.0.0 if no tags exist
- If the latest commit has no tag, it bumps the BUILD version
- If a manual tag exists with a higher MAJOR.MINOR.PATCH, it uses that and appends .0 for BUILD
- Tags and pushes both the commit and the version to GitHub

Example:
- First commit → v1.0.0.0
- Next commits → v1.0.0.1, v1.0.0.2, etc.
- After manually setting v2.0.0, BuildTool will create v2.0.0.0, then v2.0.0.1, etc.
