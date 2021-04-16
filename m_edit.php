<?php
include_once('config.php');

// 判斷是否有表單送出
if (isset($_POST['submit'])) { 
  // update database
  $mid = $_POST['mid'];
  $moviename   = $_POST['moviename'];
  $movietype   = $_POST['movietype'];
  $director    = $_POST['director'];
  $producer    = $_POST['producer'];
  $releasetime = $_POST['releasetime'];
  $filmlength  = $_POST['filmlength'];
  $intro       = $_POST['intro'];

  try {

    $conn = new PDO("mysql:host=$servername;dbname=$database;charset=utf8", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  
    $sql = "UPDATE `movie` SET 
    `moviename`   = '$moviename',
    `movietype`   = '$movietype',
    `director`    = '$director',
    `producer`    = '$producer',
    `releasetime` = '$releasetime',
    `filmlength`  = '$filmlength',
    `intro`       = '$intro'
    WHERE `movie`.`mid` = '$mid';";

    $sth = $conn->prepare($sql);
    $sth->execute();

    $msg = "資料更新完成!";

  } catch(PDOException $e) {
    
    echo "無法連線 Connection failed: " . $e->getMessage();
  
  }

}

// 判斷是否有指定mid
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
        <h1 class="display-1">電影資料修改</h1>
        <?php
           if (isset($msg)) {
               echo '<p class="alert alert-success">'.$msg."</p>";
           }
        ?>
        <form action="" method="post">
            <div class="mb-3">
                <label for="moviename" class="form-label">電影名稱</label>
                <input type="text" class="form-control" id="moviename" name="moviename" value="<?php echo $d['moviename'];?>" required>
                <!-- <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div> -->
            </div>

            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="movietype" id="inlineRadio1" value="1"
                <?php if ($d['movietype']=='1') echo 'checked';?>>
                <label class="form-check-label" for="inlineRadio1">動畫片</label>
            </div>

            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="movietype" id="inlineRadio2" value="2"
                <?php if ($d['movietype']=='2') echo 'checked';?>>
                <label class="form-check-label" for="inlineRadio2">恐怖片</label>
            </div>

            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="movietype" id="inlineRadio3" value="3"
                <?php if ($d['movietype']=='3') echo 'checked';?>>
                <label class="form-check-label" for="inlineRadio3">喜劇片</label>
            </div>

            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="movietype" id="inlineRadio4" value="4"
                <?php if ($d['movietype']=='4') echo 'checked';?>>
                <label class="form-check-label" for="inlineRadio4">科幻片</label>
            </div>

            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="movietype" id="inlineRadio5" value="5"
                <?php if ($d['movietype']=='5') echo 'checked';?>>
                <label class="form-check-label" for="inlineRadio5">愛情片</label>
            </div>

            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="movietype" id="inlineRadio6" value="6"
                <?php if ($d['movietype']=='6') echo 'checked';?>>
                <label class="form-check-label" for="inlineRadio6">其他</label>
            </div>

            <div class="mb-3">
                <label for="director" class="form-label">導演</label>
                <input type="text" class="form-control" id="director" name="director" value="<?php echo $d['director'];?>" required>
            </div>

            <div class="mb-3">
                <label for="producer" class="form-label">製片商</label>
                <input type="text" class="form-control" id="producer" name="producer" value="<?php echo $d['producer'];?>" required>
            </div>

            <div class="mb-3">
                <label for="releasetime" class="form-label">上映時間</label>
                <input type="date" class="form-control" id="releasetime" name="releasetime" value="<?php echo $d['releasetime'];?>" required>
            </div>

            <div class="mb-3">
                <label for="filmlength" class="form-label">片長(分鐘)</label>
                <input type="number" class="form-control" id="filmlength" name="filmlength" value="<?php echo $d['filmlength'];?>" required>
            </div>

            <div class="mb-3">
                <label for="intro" class="form-label">介紹</label>
                <textarea class="form-control ckeditor" name="intro" id="intro" cols="80" rows="10">
                <?php echo $d['intro'];?>
                </textarea>
            </div>

            <div class="mb-3 form-check">
                <input type="checkbox" class="form-check-input" id="pubyn" name="pubyn">
                <label class="form-check-label" for="pubyn">是否公佈</label>
            </div>

            <div class="input-group mb-3">
                <label class="input-group-text" for="cover">上傳封面</label>
                <input type="file" class="form-control" id="cover" name="cover">
            </div>

            <input type="hidden" name="mid" value="<?php echo $d['mid']; ?>">
            <button type="submit" class="btn btn-primary" name="submit">確認修改</button>
        </form>
    </div>

  <?php include('footer.html'); ?>