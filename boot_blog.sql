-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-02-16 08:21:09
-- 服务器版本： 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `boot_blog`
--

-- --------------------------------------------------------

--
-- 表的结构 `article`
--

CREATE TABLE `article` (
  `cid` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `header` varchar(800) DEFAULT NULL,
  `body` varchar(3000) DEFAULT NULL,
  `footer` varchar(1000) DEFAULT NULL,
  `c_img` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `c_img1` varchar(100) DEFAULT NULL,
  `c_img2` varchar(100) DEFAULT NULL,
  `year` smallint(6) DEFAULT NULL,
  `month` smallint(6) DEFAULT NULL,
  `day` smallint(6) DEFAULT NULL,
  `Hours` smallint(6) DEFAULT NULL,
  `minute` smallint(6) DEFAULT NULL,
  `second` smallint(6) DEFAULT NULL,
  `week` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `article`
--

INSERT INTO `article` (`cid`, `title`, `header`, `body`, `footer`, `c_img`, `type`, `num`, `c_img1`, `c_img2`, `year`, `month`, `day`, `Hours`, `minute`, `second`, `week`) VALUES
(4, '数据库中md5()函数的使用', 'md5,一种被广泛使用的密码散列函数，可以产生出一个128位（16字节）的散列值（hash value），用于确保信息传输完整一致,当用户的密码不想被任何人看到时，可以使用md5()的方式进行加密', '(1）、先举一个简单的栗子，当我们注册一个软件，或者某一个网站时，或者对银行卡的密码加密时，自己肯定不希望任何一个人知道自己的密码的，即便是后台的数据库中也不能直接将自己的密码显示出来，因为，如果后台的数据库中能够显示自己的密码，那，如果一些开发工作者心怀歹意，自己的信息还是有可能泄露出去的，那么，怎样使自己的密码，除了自己之外的任何人都不能知道呢？？<br>\r\n（2）1991年，Rivest开发出技术上更为趋近成熟的md5算法，它是一种，不可逆的字符串变换算法。<br>\r\n（3）对MD5算法简要的叙述可以为：MD5以512位分组来处理输入的信息，且每一分组又被划分为16个32位子分组，经过了一系列的处理后，算法的输出由四个32位分组组成，将这四个32位分组级联后将生成一个128位散列值。<br>\r\n（4）通过这种算法，可以将用户的密码进行加密，<br>\r\n（5）具体实现： 在mysql数据库有一个函数md5(\'\')<br>\r\n（6）sql语句“ SELECT id FROM xz_login WHERE uname = ? AND upwd = md5(?)”', '（1）小伙伴们，了解了，MD5的加密后，那么怎样提高MD5的加密效果呢，怎么防止自己的密码密码不被别人轻易的盗取呢？<br>\n（2）我们可以在设置密码是采用数字，字母，下划线的方式进行加密，确保自己账号的安全！！！', 'img/article_img/md4.jpg', 'mysql', 100, 'img/article_img/md5.jpg', 'img/article_img/md3.jpg', 2019, 2, 16, 10, 3, 42, 6),
(5, 'html5表单的新特新', 'h5中提供了新的表单控件，比如 calendar、date、time、email、url、search， rangeautocomplete\nautocomplete，autofocus，form，height 与 width，list，min 与 max，multiple，pattern (regexp)，placeholder，required，step\n', '(1)-datalist  	建议列表,配合input创建建议列表，当用户不清楚如果输入内容提供建议\r\n     <datalist id=\"list3\">     默认情况datalist不可见 \r\n      <option>xx</option>\r\n      <option>yy</option>\r\n     </datalist>\r\n     <input type=\"text\" list=\"list3\"/><br>\r\n(2)-progress 	进度条\r\n     显示一个进度条两种形式\r\n     <progress></progress>   左右晃动进度条\r\n (3)\"-meter   	刻度尺\r\n    meter min=\"最小值\" max=\"最大值\" low=\"下限\" high=\"上限\"\r\n    optimum=\"最佳值\" value=\"当前值\" \r\n    当前值离最佳值非常远   (红)危险\r\n    当前值离最佳值比较近   (黄)警告\r\n    当前值离最佳值非常近   (绿)正常>>\"\r\n(4)\"-output   	输出:语义标签,没有任何外观样式\r\n    外观同span\r\n    商品单价:￥3.50\r\n    购买数量:input type=\"number\" value=\"2\" /\r\n    小计:output￥3.50/output\"\r\n(5)新的属性 attr <input ? /\r\n    h4:id;class;name;value;style;readonly;checked\r\n    h5:\r\n     -autofocus:   自动获取输入焦点\r\n     -placeholder: 占位符\r\n     -form:       用于把输入域放置在form外部 \r\n     -multiple:    允许输入多值(用逗号分隔) email\r\n      a@a.com,b@b.com\r\n     -验证相关 \r\n      required:必填项，内容不能为空\r\n      minlength;maxlength: 最小字符串长度\r\n      min;max            数值最大值与最小值\r\n      pattern             输入正则表达式\r\n(6) h5:number;email;url;color;date;month;week\r\n', '更多相关资讯，请移步到，菜鸟教程，百度贴吧，xxx博客，还有更多的网站，小编已累，不想写了，往谅解！！！', ' img/article_img/from1.jpg', 'h5', 100, ' img/article_img/from2.jpg', ' img/article_img/from3.jpg', 2019, 2, 16, 14, 13, 5, 6),
(6, 'vue中的过滤器《filters》--time', '在Vue中 允许你自定义过滤器，可被用于一些常见的文本格式化。过滤器可以用在两个地方：双花括号插值和 v-bind 表达式。过滤器应该被添加在 JavaScript 表达式的尾部，由“管道”符号指示：', '\n《//创建一个日期的过滤器\nVue.filter(\"datetimeFilter\",function(val){\n  //创建日期对象\n  var date=new Date(val);\n  //获取年月日，时分秒，\n  var y=date.getFullYear(); \n  var m=date.getMonth() 1;\n  var d=date.getDate();\n  var h=date.getHours();\n  var mi=date.getMinutes();\n  var s=date.getSeconds();\n  //返回字符串y-m-d; h:mi:s\n  m<10', '在双花括号中 \n{{ message | capitalize }}\n在 `v-bind` 中 \n《div v-bind:id=\"rawId | formatId\" 》《/div》', ' img/article_img/filters1.jpg', 'vuejs', 100, ' img/article_img/filters2.jpg', ' img/article_img/filters3.jpg', 2019, 2, 16, 14, 38, 30, 6),
(7, '怎么理解JavaScript中的闭包', '（1）闭包:Scopes（压岁钱）《是既重用变量有保护变量不被篡改的一种编程方法》<br>\n（2）闭包：是一个特殊的作用域对象，也称”执行上下文”,是外层函数留给内层函数的专属作用域对象，专门用于为一个函数保护专属变量。<br>\n（3）、今后只要希望既重用变量，又保护变量不被篡改时，就要用闭包为一个函数保管专属的变量。<br>\n', '0、每次调用函数时，都会的临时创建函数作用域对象，所有函数都具有失忆症，但是闭包具有一个特殊的地方，内层函数有一个属性[[scopes]]，始终拴着自己可用的外层函数作用域，验证[[scopes]]，使用console.dir(外层函数将内层函数的返回值变量);(dir,是显示对象在内存中的结构，)\n	<br>1、不能用全局变量的原因：缺点：极易容易被篡改，占用内存空间，造成空间资源的浪费；\n优点：可以被重复使用，<br>\n	2、函数中的局部变量：	缺点：不可重用，因为函数具有失忆症，每个函数执行一次，曾经用的内存清0，当做什么都没有发生过，当你再次调用该函数时，结果和第一次调用函数的结果是一样的；优点：不会被篡改<br>\n	3、想要实现全局变量的重复使用，和局部变量的不会被篡改的功能------->《闭包三步曲》<br>\n		（1）定义外层函数，包裹要保护的内层函数和内层变量；<br>\n		（2）外层函数将内层函数返回到外部；<br>\n		（3）如果想用内部函数，在外部调用外层函数，生成内层函数，并保存在变量中，此时的变量就相当于内层函数，然后在调用内层函数。<br>\n	4、创建内层函数时，内层函数的[[scopes]]属性，始终拴着自己可用的外层函数作用域，<br> \n	5、父母的局部变量被留下来的原因是：孩子的[[scopes]]属性始终拉着父母不撒手；不能释放！！！<br>\n', '闭包，含苞待放的花朵，多好看呀，没事赏赏花花草草，心情还是蛮不错的哦！！！', 'img/article_img/bibao1.jpg', 'javascript', 100, 'img/article_img/bibao2.jpg', 'img/article_img/bibao3.jpg', 2019, 2, 16, 14, 55, 18, 6);

-- --------------------------------------------------------

--
-- 表的结构 `blog_use`
--

CREATE TABLE `blog_use` (
  `uid` int(11) NOT NULL,
  `email` varchar(64) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  `vs` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `blog_use`
--

INSERT INTO `blog_use` (`uid`, `email`, `upwd`, `vs`) VALUES
(1, '1541371309@qq.com', '123456', '111'),
(2, '1541371309@qq.com', '123123', '123'),
(3, '1541371309@qq.com', '123123', '123'),
(4, '1541371309@qq.com', '123123', '123'),
(5, '1541371309@qq.com', '123123', '123'),
(6, '1541371309@qq.com', '123456', '123'),
(7, '', '123456', ''),
(12, 'qqqqqqqqq', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `datas`
--

CREATE TABLE `datas` (
  `dalid` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `content` varchar(120) DEFAULT NULL,
  `img` varchar(30) DEFAULT NULL,
  `week` smallint(11) DEFAULT NULL,
  `year` smallint(6) DEFAULT NULL,
  `month` smallint(6) DEFAULT NULL,
  `day` smallint(6) DEFAULT NULL,
  `Hours` smallint(6) DEFAULT NULL,
  `minute` smallint(6) DEFAULT NULL,
  `second` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `datas`
--

INSERT INTO `datas` (`dalid`, `title`, `content`, `img`, `week`, `year`, `month`, `day`, `Hours`, `minute`, `second`) VALUES
(12, '慧慧', '灰灰是啥', '09.png', 2, 2019, 1, 29, 8, 41, 15),
(13, '可可是否', '咳咳咳咳', '09.png', 2, 2019, 1, 29, 8, 51, 53),
(14, '超总', '杀掉\n\n\n\n\n\n\n\n\n\n\n', '09.png', 2, 2019, 1, 29, 8, 54, 13),
(15, '下雪了', '冷死了', 'xue', 3, 2019, 1, 30, 19, 22, 52),
(16, '下雪了', '冷死了', 'xue', 3, 2019, 1, 30, 19, 23, 17);

-- --------------------------------------------------------

--
-- 表的结构 `ownback`
--

CREATE TABLE `ownback` (
  `ownlid` int(11) NOT NULL,
  `words` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ownback`
--

INSERT INTO `ownback` (`ownlid`, `words`) VALUES
(1, '2019/1/27回复用户信心'),
(2, '凉凉');

-- --------------------------------------------------------

--
-- 表的结构 `use_info`
--

CREATE TABLE `use_info` (
  `lid` int(11) NOT NULL,
  `words` varchar(150) DEFAULT NULL,
  `nowtime` datetime DEFAULT NULL,
  `week` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `use_info`
--

INSERT INTO `use_info` (`lid`, `words`, `nowtime`, `week`) VALUES
(2, 'qq', '2019-01-26 14:46:39', '6'),
(3, 'sss', '2019-01-26 14:54:37', '6'),
(4, 'ss', '2019-01-26 15:00:54', '6'),
(5, 'json', '2019-01-26 15:31:20', '6'),
(6, '难受', '2019-01-26 15:43:03', '6'),
(7, '2019/1/27回复用户信心', '2019-01-27 12:30:31', '0'),
(8, '站长回复信息太难了吧', '2019-01-27 13:58:46', '0'),
(9, '站长回复信息太难了吧', '2019-01-27 13:58:46', '0'),
(10, '今天周一，天气有雾霾，', '2019-01-28 19:58:05', '1'),
(11, '留言板', '2019-02-12 21:09:43', '2');

-- --------------------------------------------------------

--
-- 表的结构 `web`
--

CREATE TABLE `web` (
  `web_id` int(11) NOT NULL,
  `title` varchar(120) DEFAULT NULL,
  `content` varchar(200) DEFAULT NULL,
  `types` varchar(20) DEFAULT NULL,
  `img_url` varchar(120) DEFAULT NULL,
  `week` smallint(11) DEFAULT NULL,
  `year` smallint(6) DEFAULT NULL,
  `month` smallint(6) DEFAULT NULL,
  `day` smallint(6) DEFAULT NULL,
  `Hours` smallint(6) DEFAULT NULL,
  `minute` smallint(6) DEFAULT NULL,
  `second` tinyint(6) DEFAULT NULL,
  `href` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `web`
--

INSERT INTO `web` (`web_id`, `title`, `content`, `types`, `img_url`, `week`, `year`, `month`, `day`, `Hours`, `minute`, `second`, `href`) VALUES
(3, '数据库中md5()函数的使用', '当用户的密码不想被任何人看到时，可以使用md5()的方式进行加密', 'mysql', 'img/web_img/md5.jpg', 2, 2019, 2, 12, 12, 59, 43, 'http://127.0.0.1:3000/Article.html?cid=4'),
(4, 'html表单的新特新', 'h5中表单的新特性有date,month,emial,number,color,,,', 'h5', 'img/web_img/form.jpg', 2, 2019, 2, 12, 13, 38, 31, 'http://127.0.0.1:3000/Article.html?cid=5'),
(5, '深入vue中的过滤器《filters》', '在Vue中 允许你自定义过滤器，可被用于一些常见的文本格式化。过滤器可以用在两个地方：双花括号插值和 v-bind 表达式。过滤器应该被添加在 JavaScript 表达式的尾部，由“管道”符号指示：', 'vue', 'img/web_img/filters.jpg', 2, 2019, 2, 12, 13, 42, 22, 'http://127.0.0.1:3000/Article.html?cid=6'),
(6, '怎么理解JavaScript中的闭包', '是一个特殊的作用域对象，也称”执行上下文”,是外层函数留给内层函数的专属作用域对象，专门用于为一个函数保护专属变量。', 'JS', 'img/web_img/闭包.jpg', 2, 2019, 2, 12, 13, 44, 33, 'http://127.0.0.1:3000/Article.html?cid=7'),
(7, '添加购物车要注意的事项', '注意：nodejs是一种非阻塞的方式执行JavaScript语句的，不一定是先执行哪一条语句，，，', 'nodejs', 'img/web_img/购物车.jpg', 2, 2019, 2, 12, 13, 48, 41, 'http://127.0.0.1:3000/Article.html?cid=8'),
(8, 'H5中的video应用', 'video是一种新型的，并超越了flash的视频播放元素，其具备了相当完善的视频播放的功能，使用video标签，已经成为了，当今播放视频的一种潮流！！！', 'H5', 'img/web_img/video.jpg', 2, 2019, 2, 12, 19, 41, 11, 'http://127.0.0.1:3000/Article.html?cid=9');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `blog_use`
--
ALTER TABLE `blog_use`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `datas`
--
ALTER TABLE `datas`
  ADD PRIMARY KEY (`dalid`);

--
-- Indexes for table `ownback`
--
ALTER TABLE `ownback`
  ADD PRIMARY KEY (`ownlid`);

--
-- Indexes for table `use_info`
--
ALTER TABLE `use_info`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `web`
--
ALTER TABLE `web`
  ADD PRIMARY KEY (`web_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `article`
--
ALTER TABLE `article`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `blog_use`
--
ALTER TABLE `blog_use`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用表AUTO_INCREMENT `datas`
--
ALTER TABLE `datas`
  MODIFY `dalid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- 使用表AUTO_INCREMENT `ownback`
--
ALTER TABLE `ownback`
  MODIFY `ownlid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `use_info`
--
ALTER TABLE `use_info`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 使用表AUTO_INCREMENT `web`
--
ALTER TABLE `web`
  MODIFY `web_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
