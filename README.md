# PowerShell Helpers

Add this code block to the top of your PowerShell profile.
This is assuming you clone this repo to your GitHub folder.
Please adjust your path as necessary.

```

$GithubPath = [Environment]::GetFolderPath("MyDocuments") + "\Github\"
 . ($GithubPath + "\powershellHelpers\powershellHelpers.ps1")

```