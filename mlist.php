<?php
include_once('config.php');

try {
  $conn = new PDO("mysql:host=$servername;dbname=$database;charset=utf8", $username, $password);
  
  // set the PDO error mode to exception
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

  $sql = "SELECT * FROM `movie` ORDER BY `movie`.`releasetime` DESC";
  $sth = $conn->prepare($sql);
  $sth->execute();
  $ds = $sth->fetchAll(PDO::FETCH_ASSOC);


  // print_r($ds);

  // foreach ($ds as $d) {
  // echo "電影名:" . $d['moviename'];
  //  echo "導演:" . $d['director'];
  //  echo "<hr>";
  // }

} catch(PDOException $e) {

  echo "無法連線 Connection failed: " . $e->getMessage();

}

$conn = null;
?>

<!-- html hearder part -->
<?php include('header.html'); ?>

  <div class="container" id="main">
  
  <table class="table">
    <tr>
      <th>電影名稱</th>
      <th>上映時間</th>
      <th>導演</th>
      <th>製片商</th>
      <th>片長(分鐘)</th>
      <th>類型</th>
      <th><a href="m_add.php">新增</a></th>
    </tr>
    <?php
        $btype = array('1'=>"動畫片", '2'=>'恐怖片', '3'=>'喜劇片', '4'=>'科幻片', '5'=>'愛情片', '6'=>'其他');

        foreach ($ds as $d){
          echo "<tr>";
          echo '<td><a href="m_show.php?mid=' . $d['mid'] . '">';
          echo  $d['moviename'] ."</a></td>";
          echo "<td>". $d['releasetime'] ."</td>";
          echo "<td>". $d['director'] ."</td>";
          echo "<td>". $d['producer'] ."</td>";
          echo "<td>". $d['filmlength'] ."</td>";
          echo "<td>". $btype[$d['movietype']] ."</td>";
          echo "<td>";
          echo '<a href="m_edit.php?mid='. $d['mid']. '">修改</a> ';
          echo '<a href="m_delete.php?mid='. $d['mid']. '" onclick="return confirm(\'確定要刪除這筆資料嗎?\');">刪除</a>';
          echo "</td>";
          echo "</tr>";
        }
    ?>    
  </table>

  </div>

 <?php include('footer.html'); ?>