<?php
 $i = 1;
$conn = mysqli_connect('localhost', 'root', '', 'hmobie');
$sql = "select cart.id, cart.quantity, phone.name, phone.src, phone.cost  from cart inner join phone on cart.name = phone.name";
$query = mysqli_query($conn, $sql);
$list = [];
$total = 0;
if (mysqli_num_rows($query) > 0) {
    while($row = mysqli_fetch_assoc($query)){
        $list[]= $row;
    }
}
?>
<table style="text-align: center;" class="table">
    <thead>
        <tr >
            <th>STT</th>
            <th>Ảnh</th>
            <th>Tên SP</th>
            <th>Giá</th>
            <th>Số lượng</th>
            <th>Thành tiền</th>
        </tr>
    </thead>
    <tbody>
        <?php 
        foreach($list as $value){ 
           
            ?>
            <tr>
                <td><?php echo $i ?></td>
                <td><img src="<?php echo $value['src'] ?>" alt=""></td>
                <td><?php echo $value['name'] ?></td>
                <td><?php echo $value['cost'] ?></td>
                <td><input name="" type="number" style=" text-align:center ;width:50px" value="<?php echo $value['quantity'] ?>"></td>
                <td><?php echo $value['cost']*$value['quantity'] ?></td>
            </tr>
            <?php $total += $value['cost']*$value['quantity']; 
            $i += 1;
        }
        ?>
    </tbody>
    <tfoot>
        <tr>
            <th colspan="4">Tổng cộng</th>
            <th colspan="2"><?php echo $total ?></th>
        </tr>
    </tfoot>
</table>
