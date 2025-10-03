##############################
####### BORAR FICHEROS #######
##############################

$fichero="listado.txt"
$buffer=get-content -path $fichero
$l=$buffer.length
Write-Host $l
for ($i=0; $i -lt $l; $i++)
{
    Stop-Process -name $buffer[$i]
    Write-Host "Cerrando: " $buffer[$i]
}