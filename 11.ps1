###############################
########## FUNCIONES ##########
###############################

#function mensaje {
#   param (
#        [string]$nombre = "Usuario"
#   )
#   write-host "Hola $nombre"
#}
#mensaje -nombre "Juan"
###########################################################################
#function suma {
#    param (
#        [int]$n1,
#        [int]$n2
#    )
#    $suma=$n1 + $n2
#    return $suma
#}
#$n1= Read-Host "Ingrese el primer numero"
#$n2= Read-Host "Ingrese el segundo numero"
#$resultado = suma -n1 $n1 -n2 $n2
#write-host "El resultado de la suma es: $resultado"
###########################################################
#function comparacion {
#    param (
#        [int]$n1,
#        [int]$n2
#    )
#    if ($n1 -gt $n2) {
#        return "$n1 es mayor que $n2"
#    } elseif ($n1 -lt $n2) {
#        return "$n1 es menor que $n2"
#    } else {
#        return "$n1 es igual a $n2"
#    }
#}
#$n1= Read-Host "Ingrese el primer numero"
#$n2= Read-Host "Ingrese el segundo numero" 
#$resultado = comparacion -n1 $n1 -n2 $n2
#write-host $resultado
###########################################################

function busca {
    param (
        [string]$nombre1
    )
    $contador=0
    $p=Get-Process
    foreach ($proceso in $p) 
    
    {
        $n=$proceso.ProcessName
        if ($n -eq $nombre1) {
            $contador++
        }
    }
    return $contador
}
$nombre= Read-Host -Prompt "Nombre del proceso a buscar"
$contador= busca -nombre1 $nombre
write-host "El proceso $nombre se esta ejecutando $contador veces."
###########################################################