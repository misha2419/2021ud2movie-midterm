<?php
include_once('config.php');

try {
  $conn = new PDO("mysql:host=$servername;dbname=$database;charset=utf8", $username, $password);
  
  // set the PDO error mode to exception
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

  if (isset($_GET['mid'])) {
      $mid = $_GET['mid'];
      $sql = "DELETE FROM `movie` WHERE `movie`.`mid` = ".$mid;
      $sth = $conn->prepare($sql);
      $sth->execute();
      
      // echo "$mid 資料刪除成功!";
      header("Location: mlist.php");

  } else {
      echo "必要要有主鍵才能刪除!";
  }


} catch(PDOException $e) {

  echo "無法連線 Connection failed: " . $e->getMessage();

}

$conn = null;
?>