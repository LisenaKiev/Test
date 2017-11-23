$t=1
$p=15
$c=2
$array="1,3,6,9"
$d=$t+$p
foreach ( $q in $array)
{
    $c=$c+$q

    Write-Host $c
}