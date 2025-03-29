# BuildTool

BuildTool is a shell script to automate versioning for GitHub commits using semantic versioning (`vMAJOR.MINOR.PATCH.BUILD`). It automatically tags each commit and pushes the tag along with the commit.

## Usage

```bash
git add <files>
git commit -m "message"
build


•	Starts at v1.0.0.0 if no tags exist.
•	If the latest commit has no tag, it bumps the patch version.
•	If a manual tag exists with a higher major.minor, it uses that and bumps the patch.
•	Tags and pushes both the commit and the version to GitHub.

Example
	•	First commit → v1.0.0.0
	•	Next commits → v1.0.0.1, v1.0.0.2, etc.
	•	After manually tagging v2.0.0.0, BuildTool will create v2.0.0.1, v2.0.0.2, etc.

Check if BuildTool is installed with: build -version

## Installation

To install the build tool, run the following command in your terminal:

```bash
curl -O https://raw.githubusercontent.com/yourusername/your-repo/main/install_build_tool.sh
chmod +x install_build_tool.sh
./install_build_tool.sh
```

## Updating

To update the build tool to the latest version, simply run:

```bash
build update
```
```

### Summary

- The build tool script handles versioning and updates.
- A shell script automates the installation and setup process.
- Users can easily install and update the tool with simple commands.

Feel free to adjust the repository URL and any other details as necessary! Let me know if you need further assistance or modifications!