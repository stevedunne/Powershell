
#from http://www.hanselman.com/blog/AwesomeVisualStudioCommandPromptAndPowerShellIconsWithOverlays.aspx

function Get-Batchfile ($file) {
    $cmd = "`"$file`" & set"
    cmd /c $cmd | Foreach-Object {
        $p, $v = $_.split('=')

    #    if( (get-item -path env:$p).Value -eq $v){
    #        write-host "$p is the same" 
    #    }
    #    else{

    #        write-host "Setting $p to $v"
            Set-Item -path env:$p -value $v
    #    }
    }

#    $commandList = @("INCLUDE", "PATH", "")
}
  
#function VsVars32($version = "10.0")
function VsVars()
{
 #   $key = "HKLM:SOFTWARE\Microsoft\VisualStudio\" + $version
 #   $VsKey = get-ItemProperty $key

 #   $VsInstallPath = [System.IO.Path]::GetDirectoryName($VsKey.InstallDir)
 #   $VsToolsDir = [System.IO.Path]::GetDirectoryName($VsInstallPath)
 #   $VsToolsDir = [System.IO.Path]::Combine($VsToolsDir, "Tools")
 #   $BatchFile = [System.IO.Path]::Combine($VsToolsDir, "vsvars32.bat")

 #   Get-Batchfile $BatchFile

    Get-Batchfile "C:\Program Files (x86)\Microsoft Visual Studio 12.0\Common7\Tools\vsvars32.bat"

 #  [System.Console]::Title = "Visual Studio " + $version + " Windows Powershell"
 #   //add a call to set-consoleicon as seen below...hm...!
}

VsVars

Write-host "VsVars"
Write-host " - Added VsVars to powershell env"