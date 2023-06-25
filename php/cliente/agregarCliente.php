<?php

require_once '../config.php';

$valido['success']=array('success'=>false,'mensaje'=>"");

if($_POST){
    $nombre=$_POST['nombre'];
    $telefono=$_POST['telefono'];
    $municipio=$_POST['municipio'];

        $sqlInsertar="INSERT INTO cliente VALUES(NULL,'$nombre','$telefono','$municipio')";
        if($cx->query($sqlInsertar)===true){
            $valido['success']=true;
            $valido['mensaje']="SE GUARDO CORRECTAMENTE";
        }else{
            $valido['success']=false;
            $valido['mensaje']="ERROR NO SE GUARDO";
        } 
}else{
    $valido['success']=false;
    $valido['mensaje']="NO SE GUARDO";
}
echo json_encode($valido);
?>