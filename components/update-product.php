<?php
if(isset($_POST['name'])&& $_POST['name']){
$name = $_POST['name'];
$quantity = $_POST['quantity'];
echo $name . $quantity;
$conn = mysqli_connect('localhost', 'root', '', 'hmobie');
$sql = "select * from cart where name = '$name'";
$query = mysqli_query($conn, $sql);
if ($query && mysqli_fetch_assoc($query)) {
    $sql1 = "update cart set quantity = '$quantity' where name= '$name'";
    $result = mysqli_query($conn,$sql1);
    if($result){
        header("location:./../home.php");
       
    }
    else{
        echo 'loi....';
    }
}
else{
    $sql2 = "insert into cart(name,quantity) values ('$name','$quantity')";
$result2 = mysqli_query($conn, $sql2);
if($result2){
    header("location:./../home.php");
}
else{ echo "loi...";}

}}
?>