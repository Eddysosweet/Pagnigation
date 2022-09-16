<?php 
if(isset($_POST['name']) && $_POST['name']){
    $name = $_POST['name'];
    $quantity = $_POST['quantity'];
$conn = mysqli_connect('localhost', 'root', '', 'hmobie');
$sql = "insert into cart(name,quantity) values ('$name','$quantity')";
$query = mysqli_query($conn, $sql);
if($query){
    header("location:./../home.php");
}
else echo "loi...";}
?>
