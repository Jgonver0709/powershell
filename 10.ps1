##############################
###### LECTURA FICHEROS ######
##############################

$readbuffer=Get-Content -Path "estilo.css"
$rutafichero="C:\xampp\htdocs\power\Index.html"
$p=Get-LocalUser
$l=$p.length
$cadena="<html><head><style>" + $readbuffer + "</style></head><body><center><table border='1'><tr><th>Nombre</th><th>Enabled</th></tr>"

for ($i=0; $i -lt $l; $i++)
{
    $cadena=$cadena + "<tr><td>" + $p[$i].Name + "</td><td>" + $($p[$i].Enabled) + "</td></tr>`n"
}
$cadena=$cadena + "</table></center></body></html>"

Set-Content -Path "$rutafichero" -Value $cadena