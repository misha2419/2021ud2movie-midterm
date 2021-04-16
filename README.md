# 資料庫重建步驟:

1. 建立資料庫與使用者
   - 資料庫: movie
   - 使用者: movie
   - 密碼: zxc369

2. 匯入 movie.sql 到 movie 資料庫

3. 下載php程式使用

# 檔案說明

- dblist.php - 列出 movie 資料表 的所有項目
- db_add.php - 新增 movie 資料表 單筆項目
- db_show.php - 顯示 movie 資料表 單筆詳細資料
- db_edit.php - 修改 movie 資料表 單筆資料
- db_delete.php - 刪除 movie 資料表的一筆項目
- config.php - 資料庫的設定
- header.html - 共同的頁首
- footer.html - 共同的頁尾
- dbtest - 測試資料庫是否可以連線
- index.html - 測試靜態網頁連線


# XAMPP 設定虛擬主機

- c:/windows/system32/drivers/etc/hosts

127.0.0.1 2021ud2.com
127.0.0.1 get.daum.net


- c:/xampp/apache/conf/extra/httpd-vhosts.conf

```
    <VirtualHost *:80>
        DocumentRoot "C:\xampp\htdocs"
        ServerName localhost
    </VirtualHost>
    
    <VirtualHost *:80>
        DocumentRoot "D:\1108211090\2021ud2"
        ServerName 2021ud2.com
    </VirtualHost>
    
    <Directory "D:\1108211090\2021ud2">
        Options Indexes FollowSymLinks Includes ExecCGI
        AllowOverride All
        Require all granted
    </Directory>
```

# 資料表欄位說明

## book fields:

 - 電影名:     文字(50)
 - 導演:       文字(50)
 - 製片商:     文字(50)
 - 上映時間:   日期
 - 片長(分鐘): 數字(6)
 - 介紹:       長文字

# SQL 語法

- 刪除一筆資料SQL指令

DELETE FROM `movie` WHERE `movie`.`mid` = 10

- 修改一筆資料SQL指令

UPDATE `movie` SET `intro` = '562525625' WHERE `movie`.`mid` = 9;