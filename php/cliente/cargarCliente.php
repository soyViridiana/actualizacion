<?php

require_once '../config.php';
header("Content-Type: text/html;charset-8");

$valido['success']=array('success'=>false,
'mensaje'=>"",
'clienteid'=>"",
'nombre'=>"",
'telefono'=>"",
'municipio'=>"");

if($_POST){
    $id=$_POST['clienteid'];
    $sql="SELECT * FROM cliente WHERE clienteid=$id";
    $resultado=$cx->query($sql);
    $row=$resultado->fetch_array();
    $valido['success']=true;
    $valido['mensaje']="SE ENCONTRO REGISTRO";
    $valido['clienteid']=$row[0];
    $valido['nombre']=$row[1];
    // $valido['ap']=$row[2];
    // $valido['am']=$row[3];
    $valido['telefono']=$row[2];
    $valido['municipio']=$row[3];



}else{
    $valido['success']=false;
    $valido['mensaje']="ERROR AL CARGAR CLIENTE";
}

$cx->close();
echo json_encode($valido);

?>
