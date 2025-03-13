<?php
$var1=$_POST['texto'];
$var2=$_POST['pass'];

echo $var1."".$var2;
$bd= new mysqli("localhost","root","","login");

if ($bd){
    echo "<br> si se conecto";
}else{
    echo "<br> no se conecto";
}
$query=mysqli_query($bd,"SELECT nombre, pass FROM usuarios;");

while($datos=mysqli_fetch_array($query)){
    if ($datos["nombre"]==$var1 && $datos["pass"]==$var2){
        echo "SI ESTA EN LA BASE DE DATOS";
    }
}

?>

