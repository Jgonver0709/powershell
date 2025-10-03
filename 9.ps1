##############################
###### LECTURA FICHEROS ######
##############################

$rutafichero="C:\xampp\htdocs\power\Index.html"
$p=Get-Process
$l=$p.length
$cadena="<html><body><center><table border='1'><tr><th>Nombre</th><th>ID</th></tr>"

for ($i=0; $i -lt $l; $i++)
{
    $cadena=$cadena + "<tr><td>" + $p[$i].ProcessName + "</td><td>" + $($p[$i].Id) + "</td></tr>`n"
}
$cadena=$cadena + "</table></center></body></html>"

Set-Content -Path "$rutafichero" -Value $cadena