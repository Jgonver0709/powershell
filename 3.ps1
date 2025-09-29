####################################
#######	LISTADO DE PROCESOS	########
####################################

$p=get-process
#$m=$p[0].PM/(1024*1024)
$l=$p.length
#write-host $p[0].processName $m "MB"
for($i=0; $i -lt $l; $i++)
{
    if($p[$i].processName -eq "notepad")
    {
        $id=$p[$i].id
        kill $id
    }
}
