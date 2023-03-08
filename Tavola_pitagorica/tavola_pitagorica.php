<?php
$rig=1;
$col=1;
$el=0;
for($rig=1; $rig<=10; $rig++){
    for($col=1; $col<=10; $col++){
        $el = $rig*$col; //ogni elemento è l' elemento riga per l' elemento colonna
        echo $el . "-";
    }
    echo "<br>";
}        
?>