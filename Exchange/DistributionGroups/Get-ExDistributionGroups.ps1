﻿<#
    .SYNOPSIS
        Connect to Microsoft Exchange Server and gets the Universal distribution groups
        Requirements 
        ScriptRunner Version 4.x or higher
    
    .DESCRIPTION  

    .NOTES
        This PowerShell script was developed and optimized for ScriptRunner. The use of the scripts requires ScriptRunner. 
        The customer or user is authorized to copy the script from the repository and use them in ScriptRunner. 
        The terms of use for ScriptRunner do not apply to this script. In particular, AppSphere AG assumes no liability for the function, 
        the use and the consequences of the use of this freely available script.
        PowerShell is a product of Microsoft Corporation. ScriptRunner is a product of AppSphere AG.
        © AppSphere AG
#>

param(
)

#Clear
    try{
        $res = Get-DistributionGroup  | Select-Object *
        
        if($null -ne $res){        
            if($SRXEnv) {
                $SRXEnv.ResultMessage = $res  
            }
            else{
                Write-Output $res
            }
        }
        else{
            if($SRXEnv) {
                $SRXEnv.ResultMessage = "No Universal distribution groups found"
            } 
            else{
                Write-Output  "No Universal distribution groups found"
            }
        }
    }
    Finally{
    
    }