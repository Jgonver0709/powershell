#############################
##### BUSCAR UN PROCESO #####
#############################

param(
    $proceso
)
$f=0
$p=Get-Process
$l=$p.length
for ($i=0; $i -lt $l; $i++)
{
    if ($p[$i].ProcessName -eq $proceso)
    {
        $f=1
    }
}
 if ($f -eq 1)
    {Write-Host "Proceso "$proceso" encontrado"}
    else 
    {Write-Host "Proceso"$proceso" no encontrado"}

