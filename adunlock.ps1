#----------------------------------------------
#region Import Assemblies
#----------------------------------------------
[void][Reflection.Assembly]::Load('System.Windows.Forms, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
[void][Reflection.Assembly]::Load('System.Data, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
[void][Reflection.Assembly]::Load('System.Drawing, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
#endregion Import Assemblies

####################################################################################################
### Begin: Script information ######################################################################
####################################################################################################

<#
.SYNOPSIS
    PowerShell GUI script to unlock an Active Directory user's account. 
.DESCRIPTION
    PowerShell GUI script to unlock an Active Directory user's account. 
.NOTES
    Author   : Lorenz Cahoy
#>

####################################################################################################
### End: Script information ########################################################################
####################################################################################################

####################################################################################################
### Begin: Main function ###########################################################################
####################################################################################################

#region function Main
function Main
{
<#
    .SYNOPSIS
        The Main function starts the project application.
    
    .PARAMETER Commandline
        $Commandline contains the complete argument string passed to the script packager executable.
    
    .NOTES
        Use this function to initialize your script and to call GUI forms.
		
#>	
	Param
	(
		[String]$Commandline
	)
	if ((Show-MainForm_psf) -eq 'OK')
	{
	}
	$global:ExitCode = 0 #Set the exit code for the Packager
}
#endregion

####################################################################################################
### End: Main function #############################################################################
####################################################################################################

#endregion Source: Startup.pss

#region Source: MainForm.psf
function Show-MainForm_psf
{
    $domain = @("GLW1HY11","BOX1HY11","ME30HY11","WER1HY11","FLE1HY11","CRO1HY11","ROW1HY11","DON1HY11","BOR2HY11","BAC1HY11","MEN2HY11","WAG1HY11","CAM1HY11","COG3HY11","RIC1HY11","SOY1HY11","HAM1HY11","HAS2HY11","ENH1HY11","COW1HY11","RES1HY11","POR1HY11","BLN1HY11","GEE2HY11","TRA1HY11","SWH1HY11","WOD1HY11","BAI1HY11","STK1HY11","PRA1HY11","RIN1HY11","GRE1HY11","TCO1HY11","STW1HY11","COR1HY11","ELT1HY11","DIA1HY11","FRA5HY11","BED4HY11","SOM1HY11","MON1HY11","ROB1HY11","BAY1HY11","MAV1HY11","WYN1HY11","NOR1HY11","ESS1HY11","BRU2HY11","CAP1HY11","TOR1HY11","INV1HY11","COM1HY11","FIT1HY11","YAW1HY11","HOR1HY11","ARA1HY11","SAL1HY11","CHT1HY11","MIL3HY11","MAS1HY11","KOM2HY11","COC1HY11","SPR1HY11","MOE1HY11","BEN1HY11","MOT1HY11","crg2hy11","COG2HY11","SUB1HY11","WIM2HY11","SUN1HY11","MNT1HY11","CSP1HY11","CAU1HY11","FOO1HY11","MAR1HY11","LAK1HY11","ORB1HY11","CAT1HY11","CEO1HY11","LAV1HY11","EPP2HY11","MOR1HY11","KYN1HY11","CRG1HY11","SOM4HY11","ESS3HY11","KYA1HY11","MAE1HY11","ALE1HY11","STN1HY11","KIL1HY11","PAK1HY11","KEI1HY11","DAN2HY11","CLA1HY11","BEL1HY11","BRU1HY11","BAN1HY11","RDU1HY11","GLW2HY11","EME1HY11","MOB1HY11","SHE1HY11","ROS1HY11","BED3HY11","PRS2HY11","LAR1HY11","ATT1HY11","MTW1HY11","CRA1HY11","CHU1HY11","MIK1HY11","SML1HY11","HEI1HY11","CW01VDC002","KER1HY11","WAL1HY11","SAR1HY11","CW01VDC003","ECH1HY11","GEE3HY11","SEY1HY11","OAK1HY11","FRH1HY11","WON1HY11","CHE1HY11","GIS1HY11","AVH1HY11","NAR1HY11","LIL1HY11","CW01VDC001","LEO1HY11","PRS1HY11","CAD1HY11","WRP1HY11","ME22HY11","PCWDC001","PCWDC002","PCWDC004","PCWDC003","PCWDC005","PCWDC006","BAT3HY11","PCWDC011","PCWDC010","NUN1DC01","MER1DC01","MOO3DC01","ALT1DC01","BAT1DC01","DAN1DC01","BED2DC01","BRO1DC01","FAW1DC01","FRA4DC01","KNO1DC01","MOW1DC01","GEE1DC01","WAB1DC01","WAN3DC01","KNO2DC01")

    # RUN SCRIPT AS ADMIN
    # if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }


	#----------------------------------------------
	#region Import the Assemblies
	#----------------------------------------------
	[void][reflection.assembly]::Load('System.Windows.Forms, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
	[void][reflection.assembly]::Load('System.Data, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
	[void][reflection.assembly]::Load('System.Drawing, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
	[void][reflection.assembly]::Load('System.Design, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
	#endregion Import Assemblies

	#----------------------------------------------
	#region Generated Form Objects
	#----------------------------------------------
	[System.Windows.Forms.Application]::EnableVisualStyles()
	$FormMain = New-Object 'System.Windows.Forms.Form'
	$GroupBoxMainOutput = New-Object 'System.Windows.Forms.GroupBox'
	$RichTextBoxMainOutput = New-Object 'System.Windows.Forms.RichTextBox'
	$GroupBoxMainUnlockAccount = New-Object 'System.Windows.Forms.GroupBox'
	$ButtonMainUnlockAccountUnlockAccount = New-Object 'System.Windows.Forms.Button'
	$ButtonMainUnlockAccountQueryLockStatus = New-Object 'System.Windows.Forms.Button'
	$GroupBoxMainUserName = New-Object 'System.Windows.Forms.GroupBox'
	$TextBoxMainUserName = New-Object 'System.Windows.Forms.TextBox'
	$MenuStripMain = New-Object 'System.Windows.Forms.MenuStrip'
	$ToolStripMenuItemMainFile = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$ToolStripMenuItemMainFileLog = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$ToolStripMenuItemMainFileAbout = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$ToolStripMenuItemMainFileExit = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$InitialFormWindowState = New-Object 'System.Windows.Forms.FormWindowState'
	#endregion Generated Form Objects

	#----------------------------------------------
	# User Generated Script
	#----------------------------------------------
	####################################################################################################
	### Begin: Main form ###############################################################################
	####################################################################################################
	
	$FormMain_Load =
	{
		# Create log file
		$SSALogFileTimeStamp = Get-Date -UFormat "%d%m%Y_%H%M%S"
		$global:SSALogFile = New-Item -ItemType File -Path "$PSScriptRoot\Log" -Name "SSA_ADUserUnlock_$SSALogFileTimeStamp.log" -Force
		# Set global ErrorActionPreference to Stop to ensure that error handling correctly works when using implicit remoting for the ActiveDirectory PowerShell module
		$global:ErrorActionPreference = "Stop"
		Add-SSAOutput -OutputText "Creating log file."
		if (Test-Path -Path $SSALogFile)
		{
			Add-SSAOutput -OutputText "Logfile $SSALogFile has been created."
		}
		else
		{
			Add-SSAOutput -OutputText "Logfile $SSALogFile could not be created."
		}
	}
	
	$FormMain_Shown =
	{
		Import-SSAActiveDirectoryModule
		if ($SSAActiveDirectoryModuleLoaded -eq $false)
		{
			[System.Windows.Forms.MessageBox]::Show("The ActiveDirectory PowerShell module could not be loaded. You can review the log for more details. Please restart the application to try again.", "Error", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
		}
	}


    
	
	$ToolStripMenuItemMainFileLog_Click =
	{
		Invoke-Item -Path $SSALogFile
	}
	
	
	$ToolStripMenuItemMainFileExit_Click =
	{
		$FormMain.Close()
	}
	
	$ButtonMainUnlockAccountQueryLockStatus_Click =
	{
		<# Add-SSAOutput -OutputText "Checking if ActiveDirectory PowerShell module is loaded."
		if ($SSAActiveDirectoryModuleLoaded -eq $true)
		{
			Add-SSAOutput -OutputText "ActiveDirectory PowerShell module is loaded."
			Get-SSAUserName
			if ($SSAUserName)
			{
				Add-SSAOutput -OutputText "Checking if user '$SSAUserName' is currently locked."
				try
				{
					$QueryADUser = Get-ADUser -Identity $SSAUserName -Properties LockedOut,lockoutTime -ErrorAction Stop
					if ($QueryADUser.LockedOut -eq $true)
					{
						$QueryADUserLockoutTime = [datetime]::FromFileTime($($QueryADUser.lockoutTime)).ToString('yyyy-MM-dd HH:mm:ss')
						Add-SSAOutput -OutputText "User '$SSAUserName' is currently locked (since $QueryADUserLockoutTime)."
					}
					else
					{
						Add-SSAOutput -OutputText "User '$SSAUserName' is currently not locked."
					}
				}
				catch [exception]
				{
					Add-SSAOutput -OutputText "$_"
				}
			}
			else
			{
				Add-SSAOutput -OutputText "UserName field is empty, please review your input."
			}
		}
		else
		{
			Add-SSAOutput -OutputText "ActiveDirectory PowerShell module is currently not loaded, cannot proceed with the request. Restart the application to attempt load the module."
		} #>
			Get-SSAUserName
			if ($SSAUserName)
			{
				Add-SSAOutput -OutputText "Checking if user '$SSAUserName' is currently locked."
				try
				{
					$QueryADUser = Get-ADUser -Identity $SSAUserName -Properties LockedOut, lockoutTime -ErrorAction Stop
					if ($QueryADUser.LockedOut -eq $true)
					{
						$QueryADUserLockoutTime = [datetime]::FromFileTime($($QueryADUser.lockoutTime)).ToString('dd-MM-yyyy HH:mm:ss')
						Add-SSAOutput -OutputText "User '$SSAUserName' is currently locked (since $QueryADUserLockoutTime)."
						Add-SSAOutput -OutputText "Attempting to unlock '$SSAUserName'."
						Unlock-ADAccount -Identity $SSAUserName -ErrorAction Stop
						$QueryADUser = Get-ADUser -Identity $SSAUserName -Properties LockedOut, lockoutTime -ErrorAction Stop
						if ($QueryADUser.LockedOut -eq $false)
						{
							Add-SSAOutput -OutputText "User '$SSAUserName' is now unlocked."
                            $newpwd = ConvertTo-SecureString -String "Monday1!" -AsPlainText -Force
                            Set-ADAccountPassword $SSAUserName -NewPassword $newpwd
                            Set-ADUser -Identity $SSAUserName -ChangePasswordAtLogon $true
                            Add-SSAOutput -OutputText "Password for '$SSAUserName' has been changed."
                            
						}
						else
						{
							Add-SSAOutput -OutputText "User '$SSAUserName' could not be unlocked."
						}
					}
					else
					{
					    Add-SSAOutput -OutputText "User '$SSAUserName' is now unlocked."
                        $newpwd = ConvertTo-SecureString -String "Monday1!" -AsPlainText -Force
                        Set-ADAccountPassword $SSAUserName -NewPassword $newpwd
                        Set-ADUser -Identity $SSAUserName -ChangePasswordAtLogon $true
                        Add-SSAOutput -OutputText "Password for '$SSAUserName' has been changed."
					}
				}
				catch [exception]
				{
					Add-SSAOutput -OutputText "$_"
				}
			}
			else
			{
				Add-SSAOutput -OutputText "UserName field is empty, please review your input."
			}

		
	}
	
	$ButtonMainUnlockAccountUnlockAccount_Click =
	{
		
		if ($SSAActiveDirectoryModuleLoaded -eq $true)
		{
			
			Get-SSAUserName
			if ($SSAUserName)
			{
				Add-SSAOutput -OutputText "Checking if user '$SSAUserName' is currently locked."
				try
				{
					$QueryADUser = Get-ADUser -Identity $SSAUserName -Properties LockedOut, lockoutTime -ErrorAction Stop
					if ($QueryADUser.LockedOut -eq $true)
					{
						$QueryADUserLockoutTime = [datetime]::FromFileTime($($QueryADUser.lockoutTime)).ToString('dd-MM-yyyy HH:mm:ss')
						Add-SSAOutput -OutputText "User '$SSAUserName' is currently locked (since $QueryADUserLockoutTime)."
						Add-SSAOutput -OutputText "Attempting to unlock '$SSAUserName'."
						Unlock-ADAccount -Identity $SSAUserName -ErrorAction Stop
						$QueryADUser = Get-ADUser -Identity $SSAUserName -Properties LockedOut, lockoutTime -ErrorAction Stop
						if ($QueryADUser.LockedOut -eq $false)
						{
							Add-SSAOutput -OutputText "User '$SSAUserName' is now unlocked."
						}
						else
						{
							Add-SSAOutput -OutputText "User '$SSAUserName' could not be unlocked."
						}
					}
					else
					{
						Add-SSAOutput -OutputText "User '$SSAUserName' is currently not locked."
                        Add-SSAOutput -OutputText "Unlocking $SSAUserName anyway..."
                        foreach ($domain in $domain) {
                        Unlock-ADAccount -Identity $SSAUserName -ErrorAction Stop
						$QueryADUser = Get-ADUser -Identity $SSAUserName -Properties LockedOut, lockoutTime -ErrorAction Stop -Server $domain
						if ($QueryADUser.LockedOut -eq $false)
						{
							Add-SSAOutput -OutputText "User '$SSAUserName' is now unlocked from $domain."
						}
						else
						{
							Add-SSAOutput -OutputText "User '$SSAUserName' could not be unlocked."
						} }
					}
				}
				catch [exception]
				{
					Add-SSAOutput -OutputText "$_"
				}
			}
			else
			{
				Add-SSAOutput -OutputText "UserName field is empty, please review your input."
			}
		}
		else
		{
			Add-SSAOutput -OutputText "ActiveDirectory PowerShell module is currently not loaded, cannot proceed with the request. Restart the application to attempt load the module."
		}
	}
	
	$RichTextBoxMainOutput_TextChanged =
	{
		$RichTextBoxMainOutput.SelectionStart = $RichTextBoxMainOutput.Text.Length
		$RichTextBoxMainOutput.ScrollToCaret()
	}
	
	####################################################################################################
	### End: Main form #################################################################################
	####################################################################################################
		# --End User Generated Script--
	#----------------------------------------------
	#region Generated Events
	#----------------------------------------------
	
	$Form_StateCorrection_Load=
	{
		#Correct the initial state of the form to prevent the .Net maximized form issue
		$FormMain.WindowState = $InitialFormWindowState
	}
	
	$Form_StoreValues_Closing=
	{
		#Store the control values
		$script:MainForm_RichTextBoxMainOutput = $RichTextBoxMainOutput.Text
		$script:MainForm_TextBoxMainUserName = $TextBoxMainUserName.Text
	}

	
	$Form_Cleanup_FormClosed=
	{
		#Remove all event handlers from the controls
		try
		{
			$RichTextBoxMainOutput.remove_TextChanged($RichTextBoxMainOutput_TextChanged)
			$ButtonMainUnlockAccountUnlockAccount.remove_Click($ButtonMainUnlockAccountUnlockAccount_Click)
			$ButtonMainUnlockAccountQueryLockStatus.remove_Click($ButtonMainUnlockAccountQueryLockStatus_Click)
			$FormMain.remove_Load($FormMain_Load)
			$FormMain.remove_Shown($FormMain_Shown)
			$ToolStripMenuItemMainFileLog.remove_Click($ToolStripMenuItemMainFileLog_Click)
			$ToolStripMenuItemMainFileAbout.remove_Click($ToolStripMenuItemMainFileAbout_Click)
			$ToolStripMenuItemMainFileExit.remove_Click($ToolStripMenuItemMainFileExit_Click)
			$FormMain.remove_Load($Form_StateCorrection_Load)
			$FormMain.remove_Closing($Form_StoreValues_Closing)
			$FormMain.remove_FormClosed($Form_Cleanup_FormClosed)
		}
		catch { Out-Null <# Prevent PSScriptAnalyzer warning #> }
	}
	#endregion Generated Events

	#----------------------------------------------
	#region Generated Form Code
	#----------------------------------------------
	$FormMain.SuspendLayout()
	$GroupBoxMainOutput.SuspendLayout()
	$GroupBoxMainUnlockAccount.SuspendLayout()
	$GroupBoxMainUserName.SuspendLayout()
	$MenuStripMain.SuspendLayout()
	#
	# FormMain
	#
	$FormMain.Controls.Add($GroupBoxMainOutput)
	$FormMain.Controls.Add($GroupBoxMainUnlockAccount)
	$FormMain.Controls.Add($GroupBoxMainUserName)
	$FormMain.Controls.Add($MenuStripMain)
	$FormMain.AutoScaleDimensions = '6, 13'
	$FormMain.AutoScaleMode = 'Font'
	$FormMain.ClientSize = '633, 298'
	$FormMain.MainMenuStrip = $MenuStripMain
	$FormMain.MinimumSize = '649, 337'
	$FormMain.Name = 'FormMain'
	$FormMain.StartPosition = 'CenterScreen'
	$FormMain.Text = 'ADUserUnlock v1.1'
	$FormMain.add_Load($FormMain_Load)
	$FormMain.add_Shown($FormMain_Shown)
	#
	# GroupBoxMainOutput
	#
	$GroupBoxMainOutput.Controls.Add($RichTextBoxMainOutput)
	$GroupBoxMainOutput.Anchor = 'Top, Bottom, Left, Right'
	$GroupBoxMainOutput.Location = '13, 89'
	$GroupBoxMainOutput.Name = 'GroupBoxMainOutput'
	$GroupBoxMainOutput.Size = '609, 199'
	$GroupBoxMainOutput.TabIndex = 3
	$GroupBoxMainOutput.TabStop = $False
	$GroupBoxMainOutput.Text = 'Output'
	#
	# RichTextBoxMainOutput
	#
	$RichTextBoxMainOutput.Anchor = 'Top, Bottom, Left, Right'
	$RichTextBoxMainOutput.Font = 'Consolas, 8.25pt'
	$RichTextBoxMainOutput.Location = '7, 19'
	$RichTextBoxMainOutput.Name = 'RichTextBoxMainOutput'
	$RichTextBoxMainOutput.ScrollBars = 'ForcedVertical'
	$RichTextBoxMainOutput.Size = '596, 174'
	$RichTextBoxMainOutput.TabIndex = 0
	$RichTextBoxMainOutput.Text = ''
	$RichTextBoxMainOutput.add_TextChanged($RichTextBoxMainOutput_TextChanged)
	#
	# GroupBoxMainUnlockAccount
	#
	$GroupBoxMainUnlockAccount.Controls.Add($ButtonMainUnlockAccountUnlockAccount)
	$GroupBoxMainUnlockAccount.Controls.Add($ButtonMainUnlockAccountQueryLockStatus)
	$GroupBoxMainUnlockAccount.Location = '320, 28'
	$GroupBoxMainUnlockAccount.Name = 'GroupBoxMainUnlockAccount'
	$GroupBoxMainUnlockAccount.Size = '302, 54'
	$GroupBoxMainUnlockAccount.TabIndex = 2
	$GroupBoxMainUnlockAccount.TabStop = $False
	$GroupBoxMainUnlockAccount.Text = 'Unlock Account'
	#
	# ButtonMainUnlockAccountUnlockAccount
	#
	$ButtonMainUnlockAccountUnlockAccount.Location = '7, 20'
	$ButtonMainUnlockAccountUnlockAccount.Name = 'ButtonMainUnlockAccountUnlockAccount'
	$ButtonMainUnlockAccountUnlockAccount.Size = '142, 23'
	$ButtonMainUnlockAccountUnlockAccount.TabIndex = 1
	$ButtonMainUnlockAccountUnlockAccount.Text = 'Unlock Account'
	$ButtonMainUnlockAccountUnlockAccount.UseVisualStyleBackColor = $True
	$ButtonMainUnlockAccountUnlockAccount.add_Click($ButtonMainUnlockAccountUnlockAccount_Click)
	#
	# ButtonMainUnlockAccountQueryLockStatus
	
	$ButtonMainUnlockAccountQueryLockStatus.Location = '154, 20'
	$ButtonMainUnlockAccountQueryLockStatus.Name = 'ButtonMainUnlockAccountQueryLockStatus'
	$ButtonMainUnlockAccountQueryLockStatus.Size = '141, 23'
	$ButtonMainUnlockAccountQueryLockStatus.TabIndex = 0
	$ButtonMainUnlockAccountQueryLockStatus.Text = 'Set default password'
	$ButtonMainUnlockAccountQueryLockStatus.UseVisualStyleBackColor = $True
	$ButtonMainUnlockAccountQueryLockStatus.add_Click($ButtonMainUnlockAccountQueryLockStatus_Click)
	#
	# GroupBoxMainUserName
	#
	$GroupBoxMainUserName.Controls.Add($TextBoxMainUserName)
	$GroupBoxMainUserName.Location = '13, 28'
	$GroupBoxMainUserName.Name = 'GroupBoxMainUserName'
	$GroupBoxMainUserName.Size = '300, 54'
	$GroupBoxMainUserName.TabIndex = 1
	$GroupBoxMainUserName.TabStop = $False
	$GroupBoxMainUserName.Text = 'Username'
	#
	# TextBoxMainUserName
	#
	$TextBoxMainUserName.Font = 'Consolas, 8.25pt'
	$TextBoxMainUserName.Location = '7, 20'
	$TextBoxMainUserName.Name = 'TextBoxMainUserName'
	$TextBoxMainUserName.Size = '287, 20'
	$TextBoxMainUserName.TabIndex = 0
	#
	# MenuStripMain
	#
	[void]$MenuStripMain.Items.Add($ToolStripMenuItemMainFile)
	$MenuStripMain.Location = '0, 0'
	$MenuStripMain.Name = 'MenuStripMain'
	$MenuStripMain.Size = '633, 24'
	$MenuStripMain.TabIndex = 0
	$MenuStripMain.Text = 'MenuStripMain'
	#
	# ToolStripMenuItemMainFile
	#
	[void]$ToolStripMenuItemMainFile.DropDownItems.Add($ToolStripMenuItemMainFileLog)
	[void]$ToolStripMenuItemMainFile.DropDownItems.Add($ToolStripMenuItemMainFileExit)
	$ToolStripMenuItemMainFile.Name = 'ToolStripMenuItemMainFile'
	$ToolStripMenuItemMainFile.Size = '37, 20'
	$ToolStripMenuItemMainFile.Text = 'File'
	#
	# ToolStripMenuItemMainFileLog
	#
	$ToolStripMenuItemMainFileLog.Name = 'ToolStripMenuItemMainFileLog'
	$ToolStripMenuItemMainFileLog.Size = '107, 22'
	$ToolStripMenuItemMainFileLog.Text = 'Log'
	$ToolStripMenuItemMainFileLog.add_Click($ToolStripMenuItemMainFileLog_Click)
	#
	# ToolStripMenuItemMainFileAbout
	#
	$ToolStripMenuItemMainFileAbout.Name = 'ToolStripMenuItemMainFileAbout'
	$ToolStripMenuItemMainFileAbout.Size = '107, 22'
	$ToolStripMenuItemMainFileAbout.Text = 'About'
	$ToolStripMenuItemMainFileAbout.add_Click($ToolStripMenuItemMainFileAbout_Click)
	#
	# ToolStripMenuItemMainFileExit
	#
	$ToolStripMenuItemMainFileExit.Name = 'ToolStripMenuItemMainFileExit'
	$ToolStripMenuItemMainFileExit.Size = '152, 22'
	$ToolStripMenuItemMainFileExit.Text = 'Exit'
	$ToolStripMenuItemMainFileExit.add_Click($ToolStripMenuItemMainFileExit_Click)
	$MenuStripMain.ResumeLayout()
	$GroupBoxMainUserName.ResumeLayout()
	$GroupBoxMainUnlockAccount.ResumeLayout()
	$GroupBoxMainOutput.ResumeLayout()
	$FormMain.ResumeLayout()
	#endregion Generated Form Code

	#----------------------------------------------

	#Save the initial state of the form
	$InitialFormWindowState = $FormMain.WindowState
	#Init the OnLoad event to correct the initial state of the form
	$FormMain.add_Load($Form_StateCorrection_Load)
	#Clean up the control events
	$FormMain.add_FormClosed($Form_Cleanup_FormClosed)
	#Store the control values when form is closing
	$FormMain.add_Closing($Form_StoreValues_Closing)
	#Show the Form
	return $FormMain.ShowDialog()

}
#endregion Source: MainForm.psf

#region Source: Globals.ps1
	####################################################################################################
	### Begin: Custom functions ########################################################################
	####################################################################################################
	
	#region function Add-SSAOutput
	function Add-SSAOutput
	{
		[CmdletBinding()]
		Param
		(
			[Parameter(
					   Mandatory = $true
					   )
			]
			$OutputText
		)
		Begin
		{
		}
		Process
		{
			$OutputDate = Get-Date -UFormat "%Y-%m-%d"
			$OutputTime = Get-Date -UFormat "%H:%M:%S"
			$RichTextBoxMainOutput.Text += "[$OutputDate][$OutputTime] $OutputText`n"
			Add-Content -Path $SSALogFile -Value "[$OutputDate][$OutputTime] $OutputText`n"
		}
		End
		{
		}
	}
	#endregion
	
	#region function Import-SSAActiveDirectoryModule
	function Import-SSAActiveDirectoryModule
	{
		[CmdletBinding()]
		Param
		(
		)
		Begin
		{
		}
		Process
		{
			Add-SSAOutput -OutputText "Loading ActiveDirectory PowerShell module."
			if ((Get-Module -name "ActiveDirectory") -eq $null)
			{
				Add-SSAOutput -OutputText "ActiveDirectory PowerShell module is currently not loaded."
				if (Get-Module -ListAvailable | Where-Object { $_.name -eq "ActiveDirectory" })
				{
					Add-SSAOutput -OutputText "ActiveDirectory PowerShell module is available, importing module."
					Import-Module -Name "ActiveDirectory"
					if ((Get-Module -name "ActiveDirectory") -eq $null)
					{
						Add-SSAOutput -OutputText "ActiveDirectory PowerShell module could not be loaded."
						$global:SSAActiveDirectoryModuleLoaded = $false
					}
					else
					{
						Add-SSAOutput -OutputText "ActiveDirectory PowerShell module has been loaded."
						$global:SSAActiveDirectoryModuleLoaded = $true
					}
				}
				else
				{
					Add-SSAOutput -OutputText "ActiveDirectory PowerShell module is not available on this computer, attempting to import it from a Domain Controller."
					try
					{
						$DomainDNSName = (Get-WmiObject -Class WIN32_ComputerSystem -ErrorAction Stop).Domain
						$DomainNetBiosName = (Get-WmiObject Win32_NTDomain -Filter "DnsForestName = '$((Get-WmiObject Win32_ComputerSystem).Domain)'" -ErrorAction Stop).DomainName
						$DomainControllerName = ((Get-WmiObject -Class WIN32_NTDomain -Filter "DomainName = '$DomainNetBiosName'" -ErrorAction Stop).DomainControllerName) -replace "\\", ""
						$DomainController = "$DomainControllerName.$DomainDNSName"
						$DomainControllerSession = New-PSSession -Computername $DomainController -ErrorAction Stop
						Invoke-Command -Command { Import-Module -Name "ActiveDirectory" } -Session $DomainControllerSession -ErrorAction Stop
						$ImportSession = Import-PSSession -Session $DomainControllerSession -Module ActiveDirectory -AllowClobber -ErrorAction Stop
						if ($ImportSession.Name)
						{
							Add-SSAOutput -OutputText "ActiveDirectory PowerShell module has been imported from Domain Controller $DomainController."
							$global:SSAActiveDirectoryModuleLoaded = $true
						}
					}
					catch
					{
						Add-SSAOutput -OutputText "ActiveDirectory PowerShell module could not be imported. Possible reasons are: This workstation is not joined to the Active Directory domain, PowerShell remoting towards the Domain Controller does not work or is not setup, the current user does not have appropriate rights to open a PowerShell session to the Domain Controller."
						$global:SSAActiveDirectoryModuleLoaded = $false
					}
				}
			}
			else
			{
				Add-SSAOutput -OutputText "ActiveDirectory PowerShell module is already loaded."
				$global:SSAActiveDirectoryModuleLoaded = $true
			}
		}
		End
		{
		}
	}
	#endregion
	
	#region function Get-SSAUserName
	function Get-SSAUserName
	{
		[CmdletBinding()]
		Param
		(
		)
		Begin
		{
		}
		Process
		{
			$global:SSAUserName = $TextBoxMainUserName.text
		}
		End
		{
		}
	}
	#endregion
	
	####################################################################################################
	### End: Custom functions ##########################################################################
	####################################################################################################
	
#endregion Source: Globals.ps1

#Start the application
Main ($CommandLine)
