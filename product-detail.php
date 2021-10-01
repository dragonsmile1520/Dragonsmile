<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<title>Product Detail</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div class="container-fluid">
<table width="600" border="0" align="center" class="table ffffff">
  <tr><td colspan="3" bgcolor="#CCCCCC" class="table-dark"><b>Product</b></td></tr>
  
<?php
//connect db
    include("conn.php");
	$p_id = $_GET['p_id']; //สร้างตัวแปร p_id เพื่อรับค่า
	
	$sql = "select * from product where p_id=$p_id";  //รับค่าตัวแปร p_id ที่ส่งมา
	$result = mysqli_query($conn, $sql);
	$row = mysqli_fetch_array($result);
	//แสดงรายละเอียด
	echo "<tr>";
  	echo "<td width='85' valign='top'><b>Title</b></td>";
    echo "<td width='279'>" . $row["p_name"] . "</td>";
    echo "<td width='100' rowspan='4'><img src='img/" . $row["p_pic"] . " ' width='150'></td>";
  	echo "</tr>";
  	echo "<tr>";
    echo "<td valign='top'><b>Detail</b></td>";
    echo "<td>" . $row["p_detail"] . "</td>";
  	echo "</tr>";
  	echo "<tr>";
    echo "<td valign='top'><b>Price</b></td>";
    echo "<td>" .number_format($row["p_price"],2) . "</td>";
  	echo "</tr>"; 
  	echo "<tr>";
    echo "<td colspan='2' align='center'>";
    echo "<a href='cart-order.php?p_id=$row[p_id]&act=add'> เพิ่มลงตะกร้าสินค้า </a>";
	echo "<a href='index.php'>กลับไปหน้ารายการสินค้า</a></td>";
    echo "</tr>";
?>
</table>
</div>
	
</div>

</body>
</html>