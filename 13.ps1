################################
###### CALCULO DEL MÍNIMO ######
################################

$p=Get-Process;
$l=$p.length;
$min=$p[0].Id;

for ($i=0; $i -lt $l; $i++) 
{
    $id=$p[$i].Id;
    if($id -lt $min -or $min -eq 0) 
    {
        $min=$id;
    }    
}
write-host "El ID minimo es: $min";