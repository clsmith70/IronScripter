<#
.ExternalHelp .\Help\Get-CountingChallenge.help.xml
#>
function Get-CountingChallenge {
    [cmdletbinding()]
    Param (
        [Parameter(Mandatory=$true)]
        [Alias("Begin","Iterator","LowerLimit","LowerBound")]
        [ValidateRange("Positive")]
        [int] $Start,

        [Parameter(Mandatory=$true)]
        [Alias("End","Limit","UpperLimit","UpperBound")]
        [ValidateRange("Positive")]
        [ValidateScript({$_ -ge ($Start * $Interval)})]
        [int] $Stop,

        [Parameter(Mandatory=$true)]
        [Alias("Step")]
        [ValidateRange(1,10)]
        [int] $Interval
    )

    Begin {
        # create variables for execution
        $Sum = 0
        $Count = 0
        $Average = 0
        $ValueList = @()
    }

    Process {
        for ($i = $Start; $i -le $Stop; $i += $Interval) {
            # add the current value to the variable
            $Sum += $i
            # increment the count for average calculation
            $Count++
            # add this value to the array
            $ValueList += $i
        }

        # calculate the average
        $Average = $Sum / $Count
    }

    End {
        $output = New-Object psobject
        Add-Member -InputObject $output -MemberType NoteProperty -Name Sum -Value $Sum
        Add-Member -InputObject $output -MemberType NoteProperty -Name Average -Value $Average
        Add-Member -InputObject $output -MemberType NoteProperty -Name DataSet -Value $ValueList

        Write-Output $output
    }
}