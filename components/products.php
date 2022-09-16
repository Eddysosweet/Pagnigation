<?php
$conn = mysqli_connect('localhost', 'root', '', 'hmobie');
$sql = "select * from phone";
$query = mysqli_query($conn, $sql);
if (mysqli_num_rows($query) > 0) {
?>
    <div class="row">
        <?php
        while ($row = mysqli_fetch_assoc($query)) { ?>
            <div class="col-lg-3 col-md-6 mb-3" style="height: 600px;">
                <div class="card h-100">
                    <a href="#"><img class="card-img-top" src="<?php echo $row['src'] ?>" alt="" /></a>
                    <div class="card-body" style="display: flex;
                        flex-direction: column;
                        justify-content: space-between;
                        height: 150px;">
                        <h4 class="card-title">
                            <?php echo $row['name'] ?>
                        </h4>
                        <h5 class="cost"><?php echo $row['cost']." VND" ?></h5>
                    </div>
                    <form  action="./components/update-product.php" method="post">
                        <input type="hidden" name="src" value="<?php echo $row['src'] ?>">
                        <input type="hidden" name="name" value="<?php echo $row['name'] ?>">
                        <input type="number" name="quantity" placeholder="số lượng" style="border-radius: 5px; margin-bottom:10px;">
                        <input type="submit" class="btn btn-primary" value="Thêm vào giỏ hàng" />
                    </form>
                </div>
            </div>
        <?php
        } ?>
    </div>
<?php
}
?>