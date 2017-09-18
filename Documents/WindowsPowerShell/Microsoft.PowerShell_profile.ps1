﻿$Host.UI.RawUI.BackgroundColor = "Black";
# Load posh-git example profile
. "$HOME\scpro\posh-git\profile.example.ps1"
cd ~

# bins
$Env:Path += ";" + "$HOME\scpro\bin\elsewhere"

# proHotkeys
function config {
   iex "git --git-dir=$HOME/.cfg/ --work-tree=$HOME $($args -join ' ')"
}

#if(@(Get-Process -name ph -ErrorAction Ignore).Count -eq 0)
#{
#    cmd /c "start /D $HOME\scpro\ahk /REALTIME $HOME\scpro\ahk\ph.exe"
#}

function PSShutdown([switch]$shutdown, [switch]$reboot, [switch]$logoff, [switch]$standBy, [switch]$hibernate)
{
  if($shutdown)
  {
    %windir%\System32\shutdown.exe -s
  }
  if($reboot)
  {
    %windir%\System32\shutdown.exe -r
  }
  if($standBy)
  {
    %windir%\System32\rundll32.exe powrprof.dll,SetSuspendState Standby
  }
  if($logoff)
  {
    %windir%\System32\shutdown.exe -l
  }
  if($hibernate)
  {
    %windir%\System32\rundll32.exe powrprof.dll,SetSuspendState Hibernate
  }
}

function Get-Clipboard([switch] $Lines) {
	if($Lines) {
		$cmd = {
			Add-Type -Assembly PresentationCore
			[Windows.Clipboard]::GetText() -replace "`r", '' -split "`n"
		}
	} else {
		$cmd = {
			Add-Type -Assembly PresentationCore
			[Windows.Clipboard]::GetText()
		}
	}
	if([threading.thread]::CurrentThread.GetApartmentState() -eq 'MTA') {
		& powershell -Sta -Command $cmd
	} else {
		& $cmd
	}
}


function Set-Clipboard{
	param(
	    ## The input to send to the clipboard
	    [Parameter(ValueFromPipeline = $true)]
	    [object[]] $InputObject
	)

	begin
	{
	    Set-StrictMode -Version Latest
	    $objectsToProcess = @()
	}

	process
	{
	    ## Collect everything sent to the script either through
	    ## pipeline input, or direct input.
	    $objectsToProcess += $inputObject
	}

	end
	{
	    ## Launch a new instance of PowerShell in STA mode.
	    ## This lets us interact with the Windows clipboard.
	    $objectsToProcess | PowerShell -NoProfile -STA -Command {
	        Add-Type -Assembly PresentationCore

	        ## Convert the input objects to a string representation
	        $clipText = ($input | Out-String -Stream) -join "`r`n"

	        ## And finally set the clipboard text
	        [Windows.Clipboard]::SetText($clipText)
	    }
	}
}