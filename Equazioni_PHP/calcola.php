<html>
<body>    
<?php
$a=$_GET["a"];
$b=$_GET["b"];
$c=$_GET["c"];
$discriminante=pow($b,2)-4*$a*$c;

echo("Le soluzioni sono:<br>");
if ($discriminante > 0){ //radici reali distinte
    $x1= (-$b+sqrt($discriminante)/(2*($a)));
    $x2= (-$b-sqrt($discriminante)/(2*($a)));
    echo("Il discriminante è >0, le radici sono reali e distinte<br>");
    echo("x1=$x1   <br>   x2=$x2");
}
elseif ($discriminante == 0){ //radici reali e coincidenti
    $x1 = -$b/(2*$a);
    echo("Il discriminante è 0, le radici sono coincidenti<br>");
    echo("x1=x2=$x1");
}
else{ //radici complesse coniugate
    $re = -$b/(-2*$a);
    $i = sqrt(-$discriminante);
    echo("Il discriminante è <0, le radici sono complesse coniugate<br>");
    echo("$re" . "±i" . "$i");
}
$equation="";
?>
</body>
</html>