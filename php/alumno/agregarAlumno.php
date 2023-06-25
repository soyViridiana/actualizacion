<?php

require_once '../config.php';

$valido['success']=array('success'=>false,'mensaje'=>"");

if($_POST){
    $control=$_POST['control'];
    $nombre=$_POST['nombre'];
    $fecha=$_POST['fecha'];
    $grupo=$_POST['grupo'];
    $carrera=$_POST['carrera'];

        $sqlInsertar="INSERT INTO alumno VALUES(NULL,'$control','$nombre','$fecha','$grupo','$carrera')";
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