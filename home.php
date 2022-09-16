<?php
$conn = mysqli_connect('localhost', 'root', '', 'hmobie');
$result = mysqli_query($conn, "select * from phone");
$so = mysqli_num_rows($result);
$sotrang = ceil($so / 8);
$vitri = $sotrang - 1;
$sql = "select * from phone limit 0,8";
if (isset($_GET['id']) && $_GET['id'] !== null) {
  $id = $_GET['id'];
  $sql = "select * from phone limit $vitri,8";
}
$query = mysqli_query($conn, $sql);

?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css" />
  <link rel="stylesheet" href="main.css" />
  <title>SHOP PHONES</title>
</head>

<body>
  <?php if (isset($_SESSION['number'])) echo $_SESSION['number']; ?>
  <div class="container ">
    <?php include './components/header.php' ?>
    <?php

    if (mysqli_num_rows($query) > 0) {
    ?>
      <div class="row">
        <?php
        while ($row = mysqli_fetch_assoc($query)) { ?>
          <div class="col-lg-3 col-md-6 mb-3" style="height: 600px;">
            <div class="card h-80">
              <a href="#"><img class="card-img-top" src="<?php echo $row['src'] ?>" alt="" /></a>
              <div class="card-body" style="display: flex;
                        flex-direction: column;
                        justify-content: space-between;
                        height: 150px;">
                <h4 class="card-title">
                  <?php echo $row['name'] ?>
                </h4>
                <h5 class="cost"><?php echo $row['cost'] . " VND" ?></h5>
              </div>
              <form action="./components/update-product.php" method="post">
                <input type="hidden" name="src" value="<?php echo $row['src'] ?>">
                <input type="hidden" name="name" value="<?php echo $row['name'] ?>">
                <input type="number" name="quantity" placeholder="số lượng" style="border-radius: 5px; margin-bottom:8px;">
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
    <nav aria-label="...">
      <ul class="pagination pagination-lg">
        <?php
        $i = 1;
        while ($i <= $sotrang) { ?>
          <li class="page-item <?php if (!$id) {
                                  $id = 1;
                                }
                                echo ($id == $i)? 'active': '';
                                ?>"><a class="page-link" href="home.php?id=<?php echo $i ?>"><?php echo $i ?></a></li>

        <?php
          $i++;
        }
        ?>
      </ul>
    </nav>

  </div>
</body>

</html>