# PowerShell Helpers

Add this code block to the top of your PowerShell profile.
This is assuming you clone this repo to your GitHub folder.
Please adjust your path as necessary.

```

$GithubPath = [Environment]::GetFolderPath("MyDocuments") + "\Github\"
 . ($GithubPath + "\powershellHelpers\powershellHelpers.ps1")

```

These helpers assume you have VSCode installed as well as Vim. Feel free to change the editors where needed.