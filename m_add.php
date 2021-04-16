<?php
include_once('config.php');

if (isset($_POST["submit"])) {

    $moviename   = $_POST['moviename'];
    $movietype   = $_POST['movietype'];
    $director    = $_POST['director'];
    $producer    = $_POST['producer'];
    $releasetime = $_POST['releasetime'];
    $filmlength  = $_POST['filmlength'];
    $intro       = $_POST['intro'];

try {
  $conn = new PDO("mysql:host=$servername;dbname=$database;charset=utf8", $username, $password);
  
  // set the PDO error mode to exception
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

  $sql = "INSERT INTO `movie` (`mid`, `moviename`, `movietype`, `director`, `producer`, `releasetime`, `filmlength`, `intro`) VALUES (NULL, '$moviename', '$movietype', '$director', '$producer', '$releasetime', '$filmlength', '$intro');";
  $sth = $conn->prepare($sql);
  $sth->execute();

  $msg = "資料成功新增";

} catch(PDOException $e) {

  $msg = "無法新增資料 Connection failed: " . $e->getMessage();

}

$conn = null;
}
?>
<?php include('header.html'); ?>

    <div class="container" id="main">
        <h1 class="display-1">電影資料新增</h1>
        <?php
           if (isset($msg)) {
               echo '<p class="alert alert-success">'.$msg."</p>";
           }
        ?>
        <form action="" method="post">
            <div class="mb-3">
                <label for="moviename" class="form-label">電影名稱</label>
                <input type="text" class="form-control" id="moviename" name="moviename" placeholder="請輸入電影名稱" required>
                <!-- <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div> -->
            </div>

            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="movietype" id="inlineRadio1" value="1">
                <label class="form-check-label" for="inlineRadio1">動畫片</label>
            </div>

            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="movietype" id="inlineRadio2" value="2">
                <label class="form-check-label" for="inlineRadio2">恐怖片</label>
            </div>

            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="movietype" id="inlineRadio3" value="3">
                <label class="form-check-label" for="inlineRadio3">喜劇片</label>
            </div>

            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="movietype" id="inlineRadio4" value="4">
                <label class="form-check-label" for="inlineRadio4">科幻片</label>
            </div>

            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="movietype" id="inlineRadio5" value="5">
                <label class="form-check-label" for="inlineRadio5">愛情片</label>
            </div>

            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="movietype" id="inlineRadio6" value="6">
                <label class="form-check-label" for="inlineRadio6">其他</label>
            </div>

            <div class="mb-3">
                <label for="director" class="form-label">導演</label>
                <input type="text" class="form-control" id="director" name="director" placeholder="請輸入導演名字" required>
            </div>

            <div class="mb-3">
                <label for="producer" class="form-label">製片商</label>
                <input type="text" class="form-control" id="producer" name="producer" placeholder="請輸入製片單位" required>
            </div>

            <div class="mb-3">
                <label for="releasetime" class="form-label">上映時間</label>
                <input type="date" class="form-control" id="releasetime" name="releasetime" value="<?php echo date('Y-m-d'); ?>" required>
            </div>

            <div class="mb-3">
                <label for="filmlength" class="form-label">片長(分鐘)</label>
                <input type="number" class="form-control" id="filmlength" name="filmlength" placeholder="請輸入片長(請以分鐘為單位)" required>
            </div>

            <div class="mb-3">
                <label for="intro" class="form-label">介紹</label>
                <textarea class="form-control ckeditor" name="intro" id="intro" cols="80" rows="10"></textarea>
            </div>

            <div class="mb-3 form-check">
                <input type="checkbox" class="form-check-input" id="pubyn" name="pubyn">
                <label class="form-check-label" for="pubyn">是否公佈</label>
            </div>

            <div class="input-group mb-3">
                <label class="input-group-text" for="cover">上傳封面</label>
                <input type="file" class="form-control" id="cover" name="cover">
            </div>

            <button type="submit" class="btn btn-primary" name="submit">確認新增</button>
        </form>
    </div>

<?php include('footer.html'); ?>