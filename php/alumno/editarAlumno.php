<?php

require_once '../config.php';

$valido['success']=array('success'=>false,'mensaje'=>"");

if($_POST){
    $id=$_POST['alumnoid'];
    $control=$_POST['control'];
    $nombre=$_POST['nombre'];
    $fecha=$_POST['fecha'];
    $grupo=$_POST['grupo'];
    $carrera=$_POST['carrera'];
        $sqlEditar="UPDATE alumno SET 
        control='$control',
        nombre='$nombre',
        fecha='$fecha',
        grupo='$grupo',
        carrera='$carrera'
        WHERE alumnoid=$id";
        if($cx->query($sqlEditar)===true){
            $valido['success']=true;
            $valido['mensaje']="SE ACTUALIZO CORRECTAMENTE";
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