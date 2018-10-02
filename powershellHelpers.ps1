# Get all of our paths set up.
$DesktopPath = [Environment]::GetFolderPath("Desktop")
$UserPath = [Environment]::GetFolderPath("User")
$GithubPath = [Environment]::GetFolderPath("MyDocuments") + "\Github\"
$GitlabPath = [Environment]::GetFolderPath("MyDocuments") + "\GitLab\"

# Shortcuts for zipping around easily.
function user { Set-Location $UserPath }
function desk { Set-Location $DesktopPath }
function github { Set-Location $GithubPath }

# Replace standard `cd` alias with one that can follow .lnk shortcuts.
Remove-Item alias:cd -force
function cd($target)
{
    if($target.EndsWith(".lnk"))
    {
        $sh = New-Object -com wscript.shell
        $fullpath = Resolve-Path $target
        $targetpath = $sh.CreateShortcut($fullpath).TargetPath
        Set-Location $targetpath
    }
    else
    {
        Set-Location $target
    }
}

# Tools and Features
function outy { shutdown /s /f /t 0 } # It's 5:00 somewhere.
function edit { code $PROFILE }
function hosts { vim "C:\Windows\System32\drivers\etc\hosts" }
function touch($filename) { Write-Output $null >> $filename }