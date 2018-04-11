

function Get-AgentInfo([int]$in_id, [string]$in_name)
{
    $name = "Scribe Online Agent"+$in_id.ToString()
    $agentService = Get-Service -Name $name | Get-Process | Select-Object *
    if(Test-Path $agentService.Path)
    {
        Write-Host("$($agentService | Out-String)")
    }
    else 
    {
        $name = "Scribe Online Agent"+" " +$in_id.ToString()
        $agentService = Get-Service -Name $name | Select-Object *
        Write-Host("$($agentService | Out-String)")
    }
}