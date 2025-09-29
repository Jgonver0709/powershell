####################################
#######	CERRADO DE PROCESOS	########
####################################

$a=read-host -Prompt "Introduce ID del proceso"
$b=Read-Host -Prompt "Seguro que quieres cerrar el proceso(s/n)?"
if ($b -eq "s"){
kill $a 
}
