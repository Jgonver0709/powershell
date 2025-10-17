####################################
###### ACUMULADOR DE PROCESOS ######
####################################

$s=0;
$p=Get-Process;
$l=$p.length;
for ($i=0; $i -lt $l; $i++) 
{
    $s=$s+1;
}
write-host "Número total de procesos: $s";


################################################
###### MOSTRAR LA PRIORIDAD DE UN PROCESO ######
################################################

#$n=Read-Host -Prompt "Introduce el nombre del proceso"
#$p=Get-Process;
#$l=$p.length;

#for ($i=0; $i -lt $l; $i++) {
#    if ($p[$i].ProcessName -eq $n) 
#    {
#        $prioridad = $p[$i].BasePriority;
#        write-host "La prioridad del proceso $n es $prioridad";
#        break;
#    }
#}

################################
###### CALCULO DEL MÁXIMO ######
################################
#$p=Get-Process;
#$l=$p.length;
#$max=$p[0].BasePriority;
#$proceso=$p[0].ProcessName;

#for ($i=0; $i -lt $l; $i++) 
#{
#    $id=$p[$i].BasePriority;
#    if($id -gt $max) 
#    {
#        $max=$id;
#        $proceso=$p[$i].ProcessName;
#    }    
#}
#write-host "El proceso $proceso tiene prioridad máxima con $max";


################################
###### CALCULO DEL MÁXIMO ######
################################
#$p=Get-Process;
#$l=$p.length;
#$max=$p[0].CPU;

#for ($i=0; $i -lt $l; $i++) 
#{
#    $id=$p[$i].CPU;
#    if($id -gt $max) 
#    {
#        $max=$id;
#        $proceso=$p[$i].ProcessName;
#    }    
#}
#write-host "El proceso $proceso tiene el tiempo máximo de CPU con $max segundos";