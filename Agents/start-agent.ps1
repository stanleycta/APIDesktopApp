# This Cmdlet takes an integer value and use that to 
# start an agents service that is in a stopped state

function Start-Agent([int]$in_id)
{
    $name = "Online Agent"+ $in_id.ToString()
    if($(Get-Service -Name $name).Status -eq "stopped")
    {
        Start-Service -Name $name -Verbose
    }
    else 
    {
        Write-Host("The service is already running.")
    }
}