$DesktopPath = [Environment]::GetFolderPath("Desktop")
$UserPath = [Environment]::GetFolderPath("User")
$GithubPath = [Environment]::GetFolderPath("MyDocuments") + "\Github\"
function user { Set-Location $UserPath }
function desk { Set-Location $DesktopPath}
function github { Set-Location $GithubPath}
function hosts { vim "C:\Windows\System32\drivers\etc\hosts" }
function outy { shutdown /s /f /t 0 }
function edit { code $PROFILE }
function touch($filename) { Write-Output $null >> $filename }
remove-item alias:cd -force
function cd($target)
{
    if($target.EndsWith(".lnk"))
    {
        $sh = new-object -com wscript.shell
        $fullpath = resolve-path $target
        $targetpath = $sh.CreateShortcut($fullpath).TargetPath
        set-location $targetpath
    }
    else {
        set-location $target
    }
}