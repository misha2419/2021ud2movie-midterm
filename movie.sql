-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-04-13 20:15:57
-- 伺服器版本： 10.4.17-MariaDB
-- PHP 版本： 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `movie`
--

-- --------------------------------------------------------

--
-- 資料表結構 `movie`
--

CREATE TABLE `movie` (
  `mid` int(8) NOT NULL COMMENT '系統編碼',
  `moviename` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '電影名稱',
  `movietype` int(1) NOT NULL COMMENT '電影類型',
  `director` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '導演',
  `producer` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '製片商',
  `releasetime` date NOT NULL COMMENT '上映時間',
  `filmlength` int(6) NOT NULL COMMENT '片長(分鐘)',
  `intro` text COLLATE utf8_unicode_ci NOT NULL COMMENT '介紹'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `movie`
--

INSERT INTO `movie` (`mid`, `moviename`, `movietype`, `director`, `producer`, `releasetime`, `filmlength`, `intro`) VALUES
(2, '尋龍使者：拉雅', 1, '唐·霍爾', '華特迪士尼影業、華特迪士尼動畫工作室', '2021-03-05', 107, '<p>故事發生在一片奇幻國度「神龍國」（Kumandra），邪惡的莊魔（Druun）自古以來侵擾著人類，神龍們為保護人類紛紛遭莊魔石化，用最後的法力聚合成一枚龍珠，並賦予神龍西蘇（Sisu）驅散邪惡，而西蘇也在消滅莊魔後不知所蹤。大戰五百年後，各部落為爭奪龍珠互相交惡，龍心（Heart）部落的公主拉雅（Raya）跟父親班加酋長（Chief Benja）承擔捍衛龍珠的職責，班加酋長為了化解各族紛爭，決心與龍牙（Fang）、龍爪（Talon）、龍脊（Spine）、龍尾（Tail）四大族共享龍珠，邀請他們重組神龍國。和談慶典上，拉雅與龍牙族公主納瑪莉（Namaari）成為至交，帶領後者參觀龍珠的藏匿密室。然而，納瑪莉卻背叛拉雅，號召龍牙族人前來搶奪龍珠，其他部落知曉後加入混戰，造成龍珠不慎摔破，被封印百年的莊魔也傾巢而出，其他四族酋長趁亂各拿取一枚龍珠碎片逃之夭夭，而班加酋長在將最後一枚碎片託付給拉雅後，不幸被莊魔石化，悲痛的拉雅只好帶著犰狳夥伴圖圖（Tuk Tuk）開始尋找龍珠碎片與神龍西蘇的旅程。</p>\r\n\r\n<p><img alt=\"\" src=\"http://2021ud2.com/movie/elfinder/files/Raya%20Dragon.jpg\" style=\"height:370px; width:250px\" /></p>\r\n\r\n<p><img alt=\"yes\" src=\"http://2021ud2.com/movie/ckeditor/plugins/smiley/images/thumbs_up.png\" style=\"height:23px; width:23px\" title=\"yes\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(3, '哥吉拉大戰金剛', 4, '亞當·溫高德', '傳奇影業', '2021-03-31', 113, '<p><img alt=\"\" src=\"http://2021ud2.com/movie/elfinder/files/Godzilla_vs._Kong_poster.jpg\" style=\"height:384px; width:260px\" /></p>\r\n\r\n<p><a href=\"https://zh.wikipedia.org/wiki/%E9%87%91%E5%89%9B%EF%BC%9A%E9%AA%B7%E9%AB%8F%E5%B3%B6\" title=\"金剛：骷髏島\">1973年骷髏島探勘事件</a>過後的50多年，骷髏島的氣候巨變使島上的原住民伊維族幾乎全數罹難，只留下小孤女吉雅。與此同時，根據挖掘所發現的史前壁畫及後續研究，<a href=\"https://zh.wikipedia.org/wiki/%E5%90%9B%E4%B8%BB%E8%A8%88%E7%95%AB\" title=\"君主計畫\">君主組織</a>得知了<a href=\"https://zh.wikipedia.org/wiki/%E5%93%A5%E5%90%89%E6%8B%89\" title=\"哥吉拉\">哥吉拉</a>與<a href=\"https://zh.wikipedia.org/wiki/%E9%87%91%E5%89%9B_(%E6%80%AA%E7%8D%B8)\" title=\"金剛 (怪獸)\">金剛</a>的世仇，故此君主在骷髏島建立了基地以保護金剛。吉雅的養母，艾琳&middot;安德魯博士多年來一直試圖與金剛進行溝通但不果。自五年前的<a href=\"https://zh.wikipedia.org/wiki/%E5%93%A5%E5%90%89%E6%8B%89_II_%E6%80%AA%E7%8D%B8%E4%B9%8B%E7%8E%8B\" title=\"哥吉拉 II 怪獸之王\">泰坦混戰</a>後，哥吉拉與人類一直和平共處，但此刻卻多次襲擊高科技公司「頂極神經機械企業」（Apex）的工廠，一名潛入頂極臥底的播客柏尼&middot;海斯不僅目睹了過程，更意外地發現頂極似乎在秘密研製不明裝置。</p>\r\n'),
(10, '當男人戀愛時', 5, '殷振豪', '金盞花大影業', '2021-04-01', 115, '<p>《當男人戀愛時》劇情描述邱澤飾演的討債流氓，看似兇狠、實際上卻有顆柔軟的心，他在一次討債過程中對債主女兒許瑋甯一見鐘情，進而提出要用「塗鴉合約」，以吃飯、散步的方式來抵銷她們家的債務，這種吊兒啷噹的態度，簡直顛覆了許瑋甯的世界，兩人完全不對盤的個性，究竟會擦出怎麼樣的火花？</p>\r\n\r\n<p><img alt=\"\" src=\"http://2021ud2.com/movie/elfinder/files/%E7%95%B6%E7%94%B7%E4%BA%BA%E6%88%80%E6%84%9B%E6%99%82.jpg\" style=\"height:381px; width:267px\" /></p>\r\n'),
(11, '永生戰 Seobok', 4, '李勇周', 'Studio 101 、 CJ娛樂', '2021-04-12', 114, '<p>由<a href=\"http://search.atmovies.com.tw/S/SXZBYO2265/\" target=\"_self\">孔劉</a>飾演的特務，即將執行一項國家最高層級機密任務，保護足以摧毀人類的<a href=\"http://search.atmovies.com.tw/S/SDTSYV2614/\" target=\"_self\">朴寶劍</a>，但過程中卻遭遇各種不明勢力的猛烈追擊。<br />\r\n<br />\r\n《<a href=\"http://app2.atmovies.com.tw/film/fskr13316722/\" target=\"_self\">永生戰</a>》描述前情報局特務閔基憲（<a href=\"http://search.atmovies.com.tw/S/SXZBYO2265/\" target=\"_self\">孔劉</a>&nbsp;飾），偶然遇見擁有人類不死秘密的「永生人」徐福（<a href=\"http://search.atmovies.com.tw/S/SDTSYV2614/\" target=\"_self\">朴寶劍</a>&nbsp;飾），閔基憲的最後一場任務是誓死守護徐福到安全之地，途中想佔有永生人的龐大財團與各方惡勢力展開大規模獵殺，讓他們的逃亡過程捲入驚天動地的危險局面......。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://2021ud2.com/movie/elfinder/files/Seo_Bok.jpeg\" style=\"height:377px; width:264px\" /></p>\r\n'),
(12, '友你真好 Our Friend', 6, '加比里埃拉·考珀斯維特', ' Black Bear Pictures、 史考特自由製片公司、 STX娛樂', '2021-04-09', 126, '<p>★ 真人真事改編！三位好友，守護一生的友誼！<br />\r\n★ 爛番茄95％絕佳好評！感動超越《活個痛快》、《生命中的美好缺憾》！<br />\r\n★ 金獎影帝凱西艾佛列克，繼《海邊的曼徹斯特》再現精湛演出！<br />\r\n★「格雷女」達柯塔強生突破自我，詮釋堅強人妻、人母，奠定演技代表作！<br />\r\n★《追愛總動員》傑森席格重返大銀幕，動人詮釋好友無私情感！</p>\r\n\r\n<p>麥特（凱西艾佛列克飾演）與妻子妮可（達柯塔強生飾演），原本擁有幸福美滿的家庭生活，並育有兩個女兒。不過當妮可被診斷罹患癌症末期時，全家人的生活隨之變得煎熬。麥特不僅要兼顧工作，還要照顧病妻與兩個女兒，讓他的壓力也愈來愈大。</p>\r\n\r\n<p>在他瀕臨崩潰之際，夫妻倆最好的朋友丹恩（傑森席格飾演）主動想要給他們一些幫助。當丹恩發現這家人即使面對困境，仍然堅強不已時，他也決定將自己放在一旁，全心全力投入陪伴兩位好友。在這段與癌症搏鬥的路途中，丹恩無私又讓人動容的友情，也對這家人產生超乎預期的影響&hellip;。</p>\r\n\r\n<p><img alt=\"\" src=\"http://2021ud2.com/movie/elfinder/files/our%20friend.jpg\" style=\"height:371px; width:260px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(13, '無名弒 Nobody', 6, '伊利亞·奈舒勒', '87North Productions、八十二影業、奧登科克普羅維塞羅娛樂', '2021-03-26', 92, '<p>哈奇&middot;曼賽是一名「被忽視、沒人會多看他兩眼的郊區父親」。某夜，兩名小偷闖入家中行竊時，曼賽沒有做出反擊，這讓他的兒子對他感到失望，妻子也與自己漸行漸遠。曼賽逐漸地激起埋藏在心中壓抑的怒火，以暴力制裁那些在街區為非作歹的惡徒。但曼賽的過去也同時找上了自己，他和他的家人遭到了兇狠的俄羅斯毒梟的襲擊，對方誓言要向曼賽為過去的恩怨展開報復。<img alt=\"\" src=\"http://2021ud2.com/movie/elfinder/files/Nobody_Poster.jpg\" style=\"height:406px; width:257px\" /></p>\r\n'),
(14, '殺戮輪迴 Lucky', 2, '娜塔莎·克爾馬尼', '海樂影業', '2021-04-09', 83, '<p>★美國權威影評網站爛番茄93%超高分推薦<br />\r\n★美國西南偏南電影節SXSW極高讚賞，顫慄系殺戮電影<br />\r\n★媲美《明日邊界》X《忌日快樂》無止盡恐怖時間循環<br />\r\n★每天都要痛宰同位陌生男子! 戕害他人的百種方式! 惡作劇還是幻想!?<br />\r\n&nbsp;<br />\r\n一位作家發現自己受到神秘男子的威脅跟蹤，男子每晚都會跟蹤到自己家門。當她向丈夫告知，反而受到質疑精神出問題，她只好拿起利刃保護自己。某日她總算與神祕男正面對決，她錯手殺死該男子，沒想到屍體竟然憑空消失，隔天晚上該男子又再度出現。她將此事提報警方，卻因無證據難以受理；上網發文求援，則被認為是在炒作話題，出版社嗅到商機想將此事出版小說。神秘男子從未停止攻擊，結局更是超乎想像翻轉再翻轉...</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://2021ud2.com/movie/elfinder/files/lucky.jpg\" style=\"height:357px; width:250px\" /></p>\r\n'),
(15, '郵差', 5, '麥克瑞福', '甲上', '2021-04-09', 94, '<p>★奧斯卡金像獎最佳影片、最佳導演、最佳男主角、最佳原創音樂獎、最佳改編劇本獎等五項大獎提名！<br />\r\n★勇奪英國奧斯卡最佳外語片、最佳導演、最佳電影音樂三項大獎殊榮！<br />\r\n★義大利喜劇明星馬西莫驚豔全球雋永遺作《郵差》4K數位修復版經典重映！<br />\r\n★美國影史最賣座的外語片之一，橫掃全球逾二十項大獎<br />\r\n★繼《新天堂樂園》又一動人師徒情誼，郵差與詩人聶魯達以詩歌共譜友誼！<br />\r\n&nbsp;<br />\r\n每一次的對話　都是人生滋味<br />\r\n在美麗的義大利海島上，馬里奧(馬西莫特羅西飾)和島上的其他人不同，他不願成為漁夫而選擇當一名郵差，而他郵政服務的對象卻只有一個人，那就是島上唯一識字的居民，過著流放生涯的智利詩人&mdash;巴勃羅聶魯達(菲利浦諾瓦雷飾)。一封封信件的收送往返間，馬里奧在聶魯達文采的薰陶下，啟蒙了他對於「美」的感知，徹底改變了他的世界，他所看到的海洋、天空、雲雨等生活的日常都瀰漫著文學之美，而他和詩人之間的友誼也日漸滋長。當馬里奧愛上了島上一位酒館女侍，他請聶魯達指點他創作關於「愛」的詩句，藉此向自己的夢中情人表白&hellip;</p>\r\n\r\n<p><img alt=\"\" src=\"http://2021ud2.com/movie/elfinder/files/postino.jpg\" style=\"height:357px; width:250px\" /></p>\r\n'),
(16, '角頭–浪流連', 6, '姜瑞智', '威視股份有限公司', '2021-02-05', 120, '<p>《角頭》系列作品不斷警惕世人「今天公祭，明天忘記」、「歹路不可行」。而《角頭-浪流連》則以女性、愛情的角度切入，讓觀眾以不同的視角，卻更加看清這個混沌的角頭世界。<br />\r\n&nbsp;<br />\r\n阿慶：「人在江湖身不由己，沒想到連談戀愛都身不由己......」<br />\r\n&nbsp;<br />\r\n小淇：「愛上江湖人之後，才知道愛情可以這麼難、這麼苦。」<br />\r\n&nbsp;<br />\r\n《角頭-浪流連》故事描述阿慶（鄭人碩 飾演）在北館角頭大哥 仁哥的女兒滿月宴上，偶遇攝影師小淇（謝欣穎 飾演）進而衍生出一段相愛卻不能相守的愛情故事。<br />\r\n&nbsp;<br />\r\n身為角頭的阿慶遇到了小淇，原本水火不容的兩人，再一次次的爭吵中發現其實自己最在乎對方。阿慶與小淇相愛、相知、相惜、互相扶持，阿慶為小淇解決困難、小淇在阿慶事業遇到瓶頸時給予鼓勵。但就在此時湳沆的世界在背地裡陷害北館販毒，不僅讓北館深陷危機，仁哥與五虎們相繼誤解阿慶，小淇也因為阿慶受重傷。阿慶分身乏術，痛定思痛決定奮力一搏。</p>\r\n\r\n<p><img alt=\"\" src=\"http://2021ud2.com/movie/elfinder/files/gatau.jpg\" style=\"height:353px; width:250px\" /></p>\r\n'),
(17, '煙囪小鎮的普佩', 1, '廣田裕介', '車庫娛樂', '2021-04-01', 100, '<p>★ 獲選第44屆日本電影學院獎優秀動畫作品獎<br />\r\n★ 《惡童當街》《海獸之子》製作公司．STUDIO４℃最新電影力作<br />\r\n★ 改編自日本諧星西野亮廣創作繪本《煙囪小鎮的普佩》<br />\r\n★ 日本熱賣45萬本，感動全日本的動人繪本登上大銀幕<br />\r\n★ 「天才童星」蘆田愛菜、「NHK晨間劇男主角」窪田正孝一同展開冒險旅程<br />\r\n★ 獻給想要向前邁進的人們，充滿感動的冒險故事<br />\r\n★ 日本票房突破20億，超過百萬觀眾淚眼推薦<br />\r\n&nbsp;<br />\r\n一段深信「星星」存在的少年．魯必奇與垃圾人．普佩，為了守護希望與夢想的冒險故事。父親總是告訴魯必奇，在與世隔絕、煙霧迷漫的煙囪小鎮上空另一側有著「星星的存在」，為了找出「真相」，魯必奇與普佩展開一場大冒險。<br />\r\n&nbsp;<br />\r\n　《煙囪小鎮的普佩》由日本知名動畫工作室Studio 4oC打造，全片充滿了鼓舞人心的演出，及扣人心弦的音樂與音效。</p>\r\n\r\n<p><img alt=\"\" src=\"http://2021ud2.com/movie/elfinder/files/POChimneyTown.jpg\" style=\"height:357px; width:250px\" /></p>\r\n'),
(18, '鐵幕行動', 6, '多明尼克庫克', '車庫娛樂', '2021-04-09', 112, '<p>★ 《殺手保鑣》編劇改編震撼人心的真實事件<br />\r\n★ 繼《模仿遊戲》後，班奈狄克康柏拜區再演真實諜報戰<br />\r\n★ 解密古巴飛彈危機背後，不為人知的關鍵行動<br />\r\n★ 2020 日舞影展全球首映<br />\r\n&nbsp;<br />\r\n根據英國商人葛雷維爾韋恩(Greville Wynne)的真實故事改編。《鐵幕行動》描述葛雷維爾（班奈狄克康柏拜區 飾）在冷戰期間與蘇聯線人歐列格潘科夫斯基(Oleg Penkovsky)，暗中協助中情局滲透蘇聯的核子計畫，並提供了成功阻止古巴飛彈危機的重要情報。</p>\r\n\r\n<p><img alt=\"\" src=\"http://2021ud2.com/movie/elfinder/files/ironbark.jfif\" style=\"border-style:solid; border-width:2px; height:357px; width:250px\" /></p>\r\n'),
(19, '名偵探柯南：緋色的彈丸', 1, '青山剛昌', '普威爾國際股份有限公司', '2021-04-16', 110, '<p>★搭上日本奧運熱潮，一場突發事件將破壞世界最大體育祭典！<br />\r\n★真空超導新幹線！速度衝刺與爆破規模創下柯南系列電影新紀錄<br />\r\n★黑暗組織的陰謀、赤井秀一的秘密、FBI的高規格暗地搜查，有史以來最複雜&nbsp; &nbsp; &nbsp;的案件&hellip;&hellip;<br />\r\n★日本最強音樂才女「椎名林檎」引領東京事變，量身打造主題曲「永遠的不在場證明」<br />\r\n★日本人最後的心靈支柱，翻轉一切厄運，迎來希望與光明<br />\r\n★柯南和反派非常精彩的鬥智鬥勇<br />\r\n&nbsp;<br />\r\n世界最大的體育盛會「WSG -World Sports Games-」暌違多年將在東京舉辦。日本為盛大舉行開幕儀式，展現日本最尖端技術──世界首創最高時速1000km的「真空超電導新幹線」，在新名古屋站和東京之間開通！<br />\r\n&nbsp;<br />\r\n在世人目光的注視下，知名大會贊助商匯集的會場中，各大企業老闆光天化日下相繼被綁架。此時，卻發現赤井秀一竟在背地監視，並指揮FBI成員們的行動。同時，柯南想起15年前在美國波士頓發生的驚悚WSG連續綁架事件也是由FBI負責偵查，或許這一場事件，敵人就是自己人，然而各種證據顯示出的不在場證明，難以讓真相水落石出&hellip;&hellip;</p>\r\n\r\n<p><img alt=\"\" src=\"http://2021ud2.com/movie/elfinder/files/conan-bullet.jpg\" style=\"border-style:solid; border-width:1px; height:372px; width:250px\" /></p>\r\n'),
(20, '逆轉棋蹟 Fahim', 3, '皮耶馮索馬汀拉佛', '車庫娛樂', '2021-04-23', 0, '<p>★ 改編自「西洋棋棋聯大師」法辛穆罕默德人生故事<br />\r\n★ 走向世界的盡頭，只為達成夢想！<br />\r\n★ 2019 法國昂古萊姆法語電影節<br />\r\n★ 2019 德國漢堡國際電影節<br />\r\n★ 2019 華沙國際電影節<br />\r\n★ 2019 萊頓國際電影節<br />\r\n&nbsp;<br />\r\n年僅8歲的法辛已是西洋棋高手，然而，家鄉孟加拉卻不能為他的棋路帶來希望，因此，法辛的父親決定帶著兒子偷渡到法國，作為政治難民申請庇護，同時讓法辛接受西洋棋正式訓練；無奈居留申請被拒，父子倆只能流浪街頭，所幸他們遇見法國西洋棋頂級教練希梵，透過希梵的指導，法辛將一步步創造國際西洋棋界奇蹟！</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://2021ud2.com/movie/elfinder/files/Fahim.jpg\" style=\"border-style:solid; border-width:1px; height:357px; width:250px\" /></p>\r\n'),
(21, '一路鬧到底 Bad Trip', 3, '櫻井北尾', '獵戶座影業 、布隆創意', '2021-03-26', 84, '<p>克里斯&middot;凱瑞在佛羅里達州的小鎮上洗車，他在洗車場遇見自己心儀的高中同學瑪麗亞&middot;李，但因自己全身的衣物都被吸塵器吸走使他只能躲在車裡，瑪麗亞離開後，克里斯沒能得到對方的電話。克里斯的最好的朋友巴德&middot;馬龍在一間電腦商店工作，他的流氓姊姊崔娜前來要錢，在家軟禁的她解開了<a href=\"https://zh.wikipedia.org/w/index.php?title=%E9%9B%BB%E5%AD%90%E6%A8%99%E8%A8%98&amp;action=edit&amp;redlink=1\">電子標記</a>並搶了店裡的錢，再將一些錢塞給兩名顧客後開車離開。</p>\r\n\r\n<p>一年後，克里斯在冰沙店裡找到了新工作。當一名水管工進入克里斯的家時，克里斯從裝滿啤酒罐的浴缸中冒出來，得知自己遲到的他急忙衝出家門，一路惹了麻煩。瑪麗亞走進店裡與克里斯見面，並透露自己是<a href=\"https://zh.wikipedia.org/wiki/%E7%B4%90%E7%B4%84%E5%B8%82\" title=\"紐約市\">紐約市</a>美術展策展人。她邀請他去藝廊後，克里斯決定.....</p>\r\n\r\n<p><img alt=\"\" src=\"http://2021ud2.com/movie/elfinder/files/Bad_Trip_Poster.jpg\" style=\"height:381px; width:258px\" /></p>\r\n'),
(22, '女生要革命 Moxie', 3, '艾米·波勒', '紙風箏製片', '2021-03-03', 111, '<p>16歲的薇薇安（Vivian）與母親麗莎（Lisa）同住。她與好朋友克勞迪婭（Claudia）共上羅克波特高中（Rockport High School）。她在上戴維斯先生（Mr. Davies）的課時，注意到原本被稱為「矮子塞特」的同學塞特（Seth）在暑假過後更加迷人。戴維斯先生介紹新學生露西（Lucy）。接著他開始關於《<a href=\"https://zh.wikipedia.org/wiki/%E4%BA%86%E4%B8%8D%E8%B5%B7%E7%9A%84%E7%9B%96%E8%8C%A8%E6%AF%94\" title=\"大亨小傳\">大亨小傳</a>》的討論，露西批評這只是另一則有錢白人追不到女生感到悲傷的故事罷了，但遭到米切爾（Mitchell）擁護蓋茨比的言論打斷。</p>\r\n\r\n<p>之後，薇薇安目睹米切爾拿走露西的汽水，並吐口水進去。露西向校長雪莉（Shelly）舉報米切爾，但校長不想處罰他，並嘗試避免處於兩難境地.....</p>\r\n\r\n<p><img alt=\"\" src=\"http://2021ud2.com/movie/elfinder/files/Moxie_film_poster.png\" style=\"height:326px; width:220px\" /></p>\r\n'),
(23, '勝利號', 6, '趙成熙', 'Bidangil Pictures、德克斯特工作室', '2021-02-05', 136, '<p>是一部2021年<a href=\"https://zh.wikipedia.org/wiki/%E5%A4%A7%E9%9F%93%E6%B0%91%E5%9C%8B\" title=\"大韓民國\">韓國</a>太空冒險電影，故事的背景是2092年的未來，地球已成為一顆黯淡的星球，漸漸地荒涼以至人類無法居住，大型跨國公司UTS建立了類似地球的太空殖民地，這是人類進入太空衛星軌道的新家。除了選定的5％公民外，非公民要麼留在荒涼的地球上，要麼成為太空工作者。</p>\r\n\r\n<p>四個邊緣人駕駛著勝利號這艘宇宙飛船在漫無邊際的宇宙中打撈值錢的太空垃圾。在一次事件中發現一名小女孩，在意識到她可能是被宇宙警察通緝的大規模殺傷性武器機器人之後，四人決定以她換取贖金，然而卻在過程中發掘了許多驚天動地的秘密。</p>\r\n\r\n<p><img alt=\"\" src=\"http://2021ud2.com/movie/elfinder/files/Space_Sweepers_poster.png\" style=\"height:382px; width:258px\" /></p>\r\n'),
(24, '馬德里金庫盜數90分鐘 Way Down', 6, '豪梅·巴拿蓋魯', '海默', '2021-01-15', 118, '<p><a href=\"https://zh.wikipedia.org/wiki/%E8%A5%BF%E7%8F%AD%E7%89%99%E9%8A%80%E8%A1%8C\" title=\"西班牙銀行\">西班牙國家中央銀行</a>是全世界最難攻擊的銀行，團隊老大藝術鑑賞家華特（尼恩&middot;康尼翰 飾演）看上這個銀行內的寶藏，並找來理工天才湯姆（佛萊迪&middot;海默爾 飾演）破解金庫的祕密，闖進銀行的最深處。</p>\r\n\r\n<p>銀行內的寶藏僅僅保管十天。但執行計畫僅有90分鐘，也是<a href=\"https://zh.wikipedia.org/wiki/%E4%B8%96%E7%95%8C%E7%9B%83%E8%B6%B3%E7%90%83\" title=\"世界盃足球\">世界盃足球</a>決賽時間，團隊藉此侵入銀行。</p>\r\n\r\n<p><img alt=\"\" src=\"http://2021ud2.com/movie/elfinder/files/waydown.jpg\" style=\"height:357px; width:250px\" /></p>\r\n'),
(25, '弒樂園', 2, '凱文·路易士', '土星影業、JD娛樂、蘭達法爾娛樂', '2021-03-05', 88, '<p>電影講述一名沉默寡言的漂流者被誘騙清理一個廢棄的家庭娛樂中心，該中心內被擁有生命的八個電子吉祥物所侵擾。</p>\r\n\r\n<p>在<a href=\"https://zh.wikipedia.org/wiki/%E5%85%A7%E8%8F%AF%E9%81%94%E5%B7%9E\" title=\"內華達州\">內華達州</a>海耶斯維爾（Hayesville）的一個偏遠小鎮上，一名沉默寡言的漂流者同意在曾當紅一時的<a href=\"https://zh.wikipedia.org/w/index.php?title=%E5%AE%B6%E5%BA%AD%E5%A8%9B%E6%A8%82%E4%B8%AD%E5%BF%83&amp;action=edit&amp;redlink=1\">家庭娛樂中心</a>「威利奇幻樂園」擔任夜班管理員。然而，當中心內八個<a href=\"https://zh.wikipedia.org/w/index.php?title=%E9%9B%BB%E5%8B%95%E4%BA%BA%E5%81%B6&amp;action=edit&amp;redlink=1\">電動人偶</a>活了過來並企圖殺死他時，他的任務突然變成了為生存而進行的全面鬥爭。現在，他與一群闖入建築的青少年攜手合作，將被迫在一場絕望的比賽中捍衛自己，以活到第二天早晨。</p>\r\n\r\n<p><img alt=\"\" src=\"http://2021ud2.com/movie/elfinder/files/Willy%27s.jpg\" style=\"height:357px; width:250px\" /></p>\r\n'),
(26, '末日激戰 Outside the Wire', 4, '麥克·哈夫斯強', 'Automatik Entertainment 、42 Films、 Inspire Enterta', '2021-01-15', 115, '<p>故事發生於2036年，<a href=\"https://zh.wikipedia.org/wiki/%E6%9D%B1%E6%AD%90\" title=\"東歐\">東歐</a>烽煙四起，<a href=\"https://zh.wikipedia.org/wiki/%E7%BE%8E%E5%9C%8B\" title=\"美國\">美國</a>派遣美軍作為維和部隊駐守當地。一次在<a href=\"https://zh.wikipedia.org/wiki/%E7%83%8F%E5%85%8B%E8%98%AD\" title=\"烏克蘭\">烏克蘭</a>執行任務時，由<a href=\"https://zh.wikipedia.org/wiki/%E7%BE%8E%E5%9C%8B%E6%B5%B7%E8%BB%8D%E9%99%B8%E6%88%B0%E9%9A%8A\" title=\"美國海軍陸戰隊\">美國海軍陸戰隊</a>米勒士官長帶領的響尾蛇部隊與<a href=\"https://zh.wikipedia.org/w/index.php?title=%E5%85%8B%E6%8B%89%E6%96%AF%E5%B0%BC&amp;action=edit&amp;redlink=1\">克拉斯尼</a>反叛組織對壘，<a href=\"https://zh.wikipedia.org/wiki/%E7%BE%8E%E5%9C%8B%E7%A9%BA%E8%BB%8D\" title=\"美國空軍\">美國空軍</a>無人機駕駛員湯瑪斯&middot;哈柏中尉卻在部隊完全撤離前堅決發射導彈，導致兩名隊員喪生。事後，哈柏不覺得自己有錯，認為自己不但將反叛組織的據點和導彈發射器炸毀，更救下了部隊另外三十八人的性命，其長官拜頓認為哈柏只在螢幕上看著戰地畫面，根本沒有親身經歷過戰爭，遂將他調到前線。</p>\r\n\r\n<p>哈柏被派到烏克蘭的美軍軍營，並發現自己的新長官里歐上尉是名具有仿生身體的生物科技實驗體。里歐告訴哈柏他們要將一些疫苗送到達姆斯克難民營的醫院，並與線人會面，獲取有關克拉斯尼反叛組織首領維克特&middot;科沃的資訊。哈柏遂整理裝備準備出發，卻遭響尾蛇部隊成員把他拉到暗處痛毆，哈柏亦終於向他們道歉。</p>\r\n\r\n<p><img alt=\"\" src=\"http://2021ud2.com/movie/elfinder/files/OutsidetheWire.jpeg\" style=\"height:367px; width:255px\" /></p>\r\n'),
(27, '½的魔法 Onward', 1, '丹·斯坎倫', '華特迪士尼影業、皮克斯動畫工作室', '2020-05-22', 103, '<p>伊恩、巴利是一對精靈兄弟們，很小的時候便失去了父親，但在伊恩的16歲生日這天，他收到了一個很特別的禮物：他父親從前的魔杖以及一串魔咒，據說可以讓父親起死回生，但從未練習過的魔法技能，讓伊恩施魔法時出了差錯，只恢復了父親的一雙腿，於是兄弟倆踏上尋找魔法石的征途⋯⋯</p>\r\n\r\n<p><img alt=\"\" src=\"http://2021ud2.com/movie/elfinder/files/Onward_poster.jpg\" style=\"height:326px; width:220px\" /></p>\r\n'),
(28, '換人殺砍砍 Freaky', 2, '克里斯多福·B·藍登', '布倫屋製片公司', '2020-11-13', 101, '<p>四名美國高中生在一間擺設大量<a href=\"https://zh.wikipedia.org/wiki/%E8%97%9D%E8%A1%93%E5%93%81\" title=\"藝術品\">藝術品</a>的<a href=\"https://zh.wikipedia.org/wiki/%E5%88%AB%E5%A2%85\" title=\"別墅\">別墅</a>中把酒歡時，遭到當天從<a href=\"https://zh.wikipedia.org/wiki/%E7%B2%BE%E7%A5%9E%E7%97%85%E9%99%A2\" title=\"精神病院\">精神病院</a>逃脫的<a href=\"https://zh.wikipedia.org/wiki/%E9%80%A3%E7%92%B0%E6%AE%BA%E6%89%8B\" title=\"連環殺手\">連環殺手</a>「畢斯福屠夫」殘忍殺害，屠夫行兇後從現場隨手偷走一把名為「拉多拉」（La Dola）的神聖<a href=\"https://zh.wikipedia.org/wiki/%E5%8C%95%E9%A6%96\" title=\"匕首\">匕首</a>。隔天，在生活中飽受折磨的高中生米莉&middot;凱斯勒，在高中<a href=\"https://zh.wikipedia.org/wiki/%E6%A9%84%E6%AC%96%E7%90%83\" title=\"橄欖球\">橄欖球</a>賽中演完學校<a href=\"https://zh.wikipedia.org/wiki/%E5%90%89%E7%A5%A5%E7%89%A9\" title=\"吉祥物\">吉祥物</a>後，因母親卡蘿醉倒沒有赴約接她，使她一人留在空無一人的學校中。這時，屠夫盯上她而拿出匕首對她下手，一刀刺中米莉的左肩，然而屠夫的左肩上卻突然出現一模一樣的傷， 緊接著米莉當警察的姐姐夏琳及時趕到嚇跑屠夫、救下米莉。留在現場的匕首最終被扣為警方證物，警察同時開始全鎮搜捕屠夫。</p>\r\n\r\n<p>清晨，米莉和屠夫醒後突然發現他們一夜之間互換身體，不清楚是怎麼回事之下都前往高中...</p>\r\n\r\n<p><img alt=\"\" src=\"http://2021ud2.com/movie/elfinder/files/Freaky_Poster.jpg\" style=\"height:406px; width:257px\" /></p>\r\n'),
(29, '喬瑟與老虎、魚 JOSEE', 5, '金宗寬', '龍祥', '2020-12-11', 117, '<p>《喬瑟與老虎、魚》劇情描述在首爾郊外的小城裡，即將大學畢業的永碩〈南柱赫飾演〉，偶遇了一位不小心從輪椅上跌落的女孩〈韓志旼飾演〉，她在永碩的幫助下順利返家，並請他吃了簡單的一餐。男孩開始對這個自稱「喬瑟」的女孩產生好奇。自此以後他偶而會來喬瑟家吃免費的飯，並漸漸開始認識她，她熱愛閱讀且異常了解威士忌，常常向他講一些不知是真是假的故事，而愛情也慢慢在兩人之間展開。</p>\r\n\r\n<p><img alt=\"\" src=\"http://2021ud2.com/movie/elfinder/files/josee.jpg\" style=\"height:357px; width:250px\" /></p>\r\n');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`mid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `movie`
--
ALTER TABLE `movie`
  MODIFY `mid` int(8) NOT NULL AUTO_INCREMENT COMMENT '系統編碼', AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
