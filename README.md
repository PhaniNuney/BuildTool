# BuildTool

BuildTool is a shell script to automate versioning for GitHub commits using semantic versioning (`vMAJOR.MINOR.PATCH`). It automatically tags each commit and pushes the tag along with the commit.

## Usage

```bash
git add <files>
git commit -m "message"
build


•	Starts at v1.0.0 if no tags exist.
•	If the latest commit has no tag, it bumps the patch version.
•	If a manual tag exists with a higher major.minor, it uses that and bumps the patch.
•	Tags and pushes both the commit and the version to GitHub.

Example
	•	First commit → v1.0.0
	•	Next commits → v1.0.1, v1.0.2, etc.
	•	After manually tagging v2.0.0, BuildTool will create v2.0.1, v2.0.2, etc.

Check if BuildTool is installed with: build -version