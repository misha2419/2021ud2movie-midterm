<?php
include_once('config.php');

if (isset($_GET['mid']) && $_GET['mid']!='') {

    $mid = $_GET['mid'];
    try {
      $conn = new PDO("mysql:host=$servername;dbname=$database;charset=utf8", $username, $password);
      
      // set the PDO error mode to exception
      $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
      $sql = "SELECT * FROM `movie` WHERE `movie`.`mid`=".$mid;
      $sth = $conn->prepare($sql);
      $sth->execute();
      $ds = $sth->fetchAll(PDO::FETCH_ASSOC);
      $d = $ds[0];

      // print_r($d);
    
      // foreach ($ds as $d) {
      // echo "電影名:" . $d['moviename'];
      //  echo "導演:" . $d['director'];
      //  echo "<hr>";
      // }
    
    } catch(PDOException $e) {
    
      echo "無法連線 Connection failed: " . $e->getMessage();
    
    }
    
    $conn = null;

} else {

  header("Location: mlist.php");

}
?>
<?php include('header.html'); ?>

  <div class="container" id="main">
  <h1 class="text-center my-3">movie details</h1>
  <table class="table">
    <tr><th nowrap>上映時間</th><td><?php echo $d['releasetime'];?></td></tr>
    <tr><th>電影名稱</th><td><?php echo $d['moviename'];?></td>   </tr>
    <tr><th>導演</th><td><?php echo $d['director'];?></td></tr>
    <tr><th>製片商</th><td><?php echo $d['producer'];?></td></tr>
    <tr><th>片長(分鐘)</th><td><?php echo $d['filmlength'];?></td></tr>
    <tr><th>類型</th><td><?php echo $d['movietype'];?></td></tr>
    <tr><th>內容</th><td><?php echo $d['intro'];?></td></tr>
    </tr>
<?php
    $btype = array('1'=>"動畫片", '2'=>'恐怖片', '3'=>'喜劇片', '4'=>'科幻片', '5'=>'愛情片', '6'=>'其他');   
?>    
  </table>

  </div>

  <?php include('footer.html'); ?>