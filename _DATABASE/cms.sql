SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `yii_dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `dev_category`
--

CREATE TABLE IF NOT EXISTS `dev_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias_cat` varchar(255) NOT NULL,
  `position` varchar(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `dev_category`
--

INSERT INTO `dev_category` (`id`, `title`, `alias_cat`, `position`) VALUES
(1, 'Общая', '/', '2'),
(2, 'Статьи', 'articles', '2'),
(4, 'Информационная страница', 'content', '1');

-- --------------------------------------------------------

--
-- Table structure for table `dev_comments`
--

CREATE TABLE IF NOT EXISTS `dev_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `material_id` int(11) NOT NULL,
  `created` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_website` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

-- --------------------------------------------------------

--
-- Table structure for table `dev_content`
--

CREATE TABLE IF NOT EXISTS `dev_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `window_title` varchar(255) NOT NULL,
  `introtext` text,
  `content` text,
  `alias` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `uri` varchar(255) NOT NULL,
  `created` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `dev_content`
--

INSERT INTO `dev_content` (`id`, `title`, `window_title`, `introtext`, `content`, `alias`, `description`, `keywords`, `uri`, `created`, `status`, `category_id`) VALUES
(1, 'Yii  - The Fast, Secure and Professional PHP Framework ', '', '4', '<h2>Yii is a <a href="../../../performance/">high-performance</a> PHP framework best for developing Web 2.0 applications.</h2>', 'yii-framework.html', 'Опубликована', 'Опубликована', '/content/yii-framework.html', 345436440, 1, 4),
(2, 'Контакты', '', 'Адрес', '<p> Адрес: 123242, Россия, Москва, Большой Предтеченский переулок, д. ...</p>\r\n<p>Секретарь - Тел.: (499) 999-999-999,  Факс: (499) 9999-9999-9999 </p>', 'contacts', '', '', '/contacts', 1371715980, 1, 1),
(3, 'О нашей компании', '', '333', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n	tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n	quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n	consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n	cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n	proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>	', 'aboutus', '3333334545346', '46456457567', '/content/aboutus', 1371902918, 1, 4),
(4, 'Главная', '', '5', '<p>Контент главной страницы</p>\r\n<p>Показ  заголовка отключен в контроллере</p>', '/', '', '', '/', 1371905700, 1, 1),
(5, 'Продукция', '', '1', 'Проду́кция — термин, характеризующий результат производственной, хозяйственной деятельности. Представляет собой совокупность продуктов, явившихся результатом производства отдельного предприятия, отрасли промышленности', 'product', '', '', '/product', 1371922804, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dev_filescounter`
--

CREATE TABLE IF NOT EXISTS `dev_filescounter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL,
  `remote_addr` varchar(255) NOT NULL,
  `date` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `dev_settings`
--

CREATE TABLE IF NOT EXISTS `dev_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=134 ;

--
-- Dumping data for table `dev_settings`
--

INSERT INTO `dev_settings` (`id`, `option_name`, `option_value`) VALUES
(1, 'siteurl', 'http://yii-dev.loc'),
(2, 'sitename', 'Название сайта'),
(129, 'company_name', 'Моя компания'),
(5, 'admin_email', 'admin@admin'),
(132, 'slogan', 'Текст слогана'),
(133, 'social_text', 'Текст для заголовка в социальных кнопках'),
(130, 'add_to_title', 'Дополнение в заголовок'),
(131, 'charset', 'utf-8');

-- --------------------------------------------------------

--
-- Table structure for table `dev_statistic`
--

CREATE TABLE IF NOT EXISTS `dev_statistic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` text CHARACTER SET utf8,
  `date` int(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `dev_statistic`
--

INSERT INTO `dev_statistic` (`id`, `data`, `date`) VALUES
(1, '{"ip":"127.0.0.1","userAgent":"Mozilla\\/5.0 (X11; Ubuntu; Linux i686; rv:20.0) Gecko\\/20100101 Firefox\\/20.0","UrlReferrer":"","uri":"http:\\/\\/yii-dev.loc\\/"}', 1401528709),
(2, '{"ip":"127.0.0.1","userAgent":"Mozilla\\/5.0 (X11; Ubuntu; Linux i686; rv:20.0) Gecko\\/20100101 Firefox\\/20.0","UrlReferrer":"","uri":"http:\\/\\/yii-dev.loc\\/install"}', 1401528715),
(3, '{"ip":"127.0.0.1","userAgent":"Mozilla\\/5.0 (X11; Ubuntu; Linux i686; rv:20.0) Gecko\\/20100101 Firefox\\/20.0","UrlReferrer":"","uri":"http:\\/\\/yii-dev.loc\\/install"}', 1401528741),
(4, '{"ip":"127.0.0.1","userAgent":"Mozilla\\/5.0 (X11; Ubuntu; Linux i686; rv:20.0) Gecko\\/20100101 Firefox\\/20.0","UrlReferrer":"","uri":"http:\\/\\/yii-dev.loc\\/install"}', 1401528742),
(5, '{"ip":"127.0.0.1","userAgent":"Mozilla\\/5.0 (X11; Ubuntu; Linux i686; rv:20.0) Gecko\\/20100101 Firefox\\/20.0","UrlReferrer":"","uri":"http:\\/\\/yii-dev.loc\\/install"}', 1401528745),
(6, '{"ip":"127.0.0.1","userAgent":"Mozilla\\/5.0 (X11; Ubuntu; Linux i686; rv:20.0) Gecko\\/20100101 Firefox\\/20.0","UrlReferrer":"","uri":"http:\\/\\/yii-dev.loc\\/install"}', 1401528747),
(7, '{"ip":"127.0.0.1","userAgent":"Mozilla\\/5.0 (X11; Ubuntu; Linux i686; rv:20.0) Gecko\\/20100101 Firefox\\/20.0","UrlReferrer":"","uri":"http:\\/\\/yii-dev.loc\\/install"}', 1401528749),
(8, '{"ip":"127.0.0.1","userAgent":"Mozilla\\/5.0 (X11; Ubuntu; Linux i686; rv:20.0) Gecko\\/20100101 Firefox\\/20.0","UrlReferrer":"","uri":"http:\\/\\/yii-dev.loc\\/install"}', 1401528765),
(9, '{"ip":"127.0.0.1","userAgent":"Mozilla\\/5.0 (X11; Ubuntu; Linux i686; rv:20.0) Gecko\\/20100101 Firefox\\/20.0","UrlReferrer":"","uri":"http:\\/\\/yii-dev.loc\\/install"}', 1401528769),
(10, '{"ip":"127.0.0.1","userAgent":"Mozilla\\/5.0 (X11; Ubuntu; Linux i686; rv:20.0) Gecko\\/20100101 Firefox\\/20.0","UrlReferrer":"","uri":"http:\\/\\/yii-dev.loc\\/install"}', 1401528796),
(11, '{"ip":"127.0.0.1","userAgent":"Mozilla\\/5.0 (X11; Ubuntu; Linux i686; rv:20.0) Gecko\\/20100101 Firefox\\/20.0","UrlReferrer":"","uri":"http:\\/\\/yii-dev.loc\\/install"}', 1401528797),
(12, '{"ip":"127.0.0.1","userAgent":"Mozilla\\/5.0 (X11; Ubuntu; Linux i686; rv:20.0) Gecko\\/20100101 Firefox\\/20.0","UrlReferrer":"","uri":"http:\\/\\/yii-dev.loc\\/install"}', 1401528804),
(13, '{"ip":"127.0.0.1","userAgent":"Mozilla\\/5.0 (X11; Ubuntu; Linux i686; rv:20.0) Gecko\\/20100101 Firefox\\/20.0","UrlReferrer":"","uri":"http:\\/\\/yii-dev.loc\\/install"}', 1401528805),
(14, '{"ip":"127.0.0.1","userAgent":"Mozilla\\/5.0 (X11; Ubuntu; Linux i686; rv:20.0) Gecko\\/20100101 Firefox\\/20.0","UrlReferrer":"","uri":"http:\\/\\/yii-dev.loc\\/install"}', 1401528807),
(15, '{"ip":"127.0.0.1","userAgent":"Mozilla\\/5.0 (X11; Ubuntu; Linux i686; rv:20.0) Gecko\\/20100101 Firefox\\/20.0","UrlReferrer":"","uri":"http:\\/\\/yii-dev.loc\\/install"}', 1401528809),
(16, '{"ip":"127.0.0.1","userAgent":"Mozilla\\/5.0 (X11; Ubuntu; Linux i686; rv:20.0) Gecko\\/20100101 Firefox\\/20.0","UrlReferrer":"","uri":"http:\\/\\/yii-dev.loc\\/install"}', 1401528814),
(17, '{"ip":"127.0.0.1","userAgent":"Mozilla\\/5.0 (X11; Ubuntu; Linux i686; rv:20.0) Gecko\\/20100101 Firefox\\/20.0","UrlReferrer":"","uri":"http:\\/\\/yii-dev.loc\\/install\\/index"}', 1401528845),
(18, '{"ip":"127.0.0.1","userAgent":"Mozilla\\/5.0 (X11; Ubuntu; Linux i686; rv:20.0) Gecko\\/20100101 Firefox\\/20.0","UrlReferrer":"","uri":"http:\\/\\/yii-dev.loc\\/install\\/index"}', 1401528925),
(19, '{"ip":"127.0.0.1","userAgent":"Mozilla\\/5.0 (X11; Ubuntu; Linux i686; rv:20.0) Gecko\\/20100101 Firefox\\/20.0","UrlReferrer":"","uri":"http:\\/\\/yii-dev.loc\\/install\\/index"}', 1401528926),
(20, '{"ip":"127.0.0.1","userAgent":"Mozilla\\/5.0 (X11; Ubuntu; Linux i686; rv:20.0) Gecko\\/20100101 Firefox\\/20.0","UrlReferrer":"","uri":"http:\\/\\/yii-dev.loc\\/install\\/index"}', 1401528927),
(21, '{"ip":"127.0.0.1","userAgent":"Mozilla\\/5.0 (X11; Ubuntu; Linux i686; rv:20.0) Gecko\\/20100101 Firefox\\/20.0","UrlReferrer":"","uri":"http:\\/\\/yii-dev.loc\\/install\\/index"}', 1401528929),
(22, '{"ip":"127.0.0.1","userAgent":"Mozilla\\/5.0 (X11; Ubuntu; Linux i686; rv:20.0) Gecko\\/20100101 Firefox\\/20.0","UrlReferrer":"","uri":"http:\\/\\/yii-dev.loc\\/install\\/index"}', 1401528929),
(23, '{"ip":"127.0.0.1","userAgent":"Mozilla\\/5.0 (X11; Ubuntu; Linux i686; rv:20.0) Gecko\\/20100101 Firefox\\/20.0","UrlReferrer":"","uri":"http:\\/\\/yii-dev.loc\\/install\\/index"}', 1401528931),
(24, '{"ip":"127.0.0.1","userAgent":"Mozilla\\/5.0 (X11; Ubuntu; Linux i686; rv:20.0) Gecko\\/20100101 Firefox\\/20.0","UrlReferrer":"","uri":"http:\\/\\/yii-dev.loc\\/install\\/index"}', 1401528934),
(25, '{"ip":"127.0.0.1","userAgent":"Mozilla\\/5.0 (X11; Ubuntu; Linux i686; rv:20.0) Gecko\\/20100101 Firefox\\/20.0","UrlReferrer":"","uri":"http:\\/\\/yii-dev.loc\\/install\\/index"}', 1401528938),
(26, '{"ip":"127.0.0.1","userAgent":"Mozilla\\/5.0 (X11; Ubuntu; Linux i686; rv:20.0) Gecko\\/20100101 Firefox\\/20.0","UrlReferrer":"http:\\/\\/yii-dev.loc\\/install\\/index","uri":"http:\\/\\/yii-dev.loc\\/product"}', 1401528941),
(27, '{"ip":"127.0.0.1","userAgent":"Mozilla\\/5.0 (X11; Ubuntu; Linux i686; rv:20.0) Gecko\\/20100101 Firefox\\/20.0","UrlReferrer":"http:\\/\\/yii-dev.loc\\/product","uri":"http:\\/\\/yii-dev.loc\\/content\\/aboutus"}', 1401528942),
(28, '{"ip":"127.0.0.1","userAgent":"Mozilla\\/5.0 (X11; Ubuntu; Linux i686; rv:20.0) Gecko\\/20100101 Firefox\\/20.0","UrlReferrer":"","uri":"http:\\/\\/yii-dev.loc\\/install\\/run"}', 1401546091),
(29, '{"ip":"127.0.0.1","userAgent":"Mozilla\\/5.0 (X11; Ubuntu; Linux i686; rv:20.0) Gecko\\/20100101 Firefox\\/20.0","UrlReferrer":"","uri":"http:\\/\\/yii-dev.loc\\/install\\/run\\/index"}', 1401546096),
(30, '{"ip":"127.0.0.1","userAgent":"Mozilla\\/5.0 (X11; Ubuntu; Linux i686; rv:20.0) Gecko\\/20100101 Firefox\\/20.0","UrlReferrer":"","uri":"http:\\/\\/yii-dev.loc\\/install\\/run\\/index"}', 1401546185),
(31, '{"ip":"127.0.0.1","userAgent":"Mozilla\\/5.0 (X11; Ubuntu; Linux i686; rv:20.0) Gecko\\/20100101 Firefox\\/20.0","UrlReferrer":"","uri":"http:\\/\\/yii-dev.loc\\/install\\/run\\/index"}', 1401546186),
(32, '{"ip":"127.0.0.1","userAgent":"Mozilla\\/5.0 (X11; Ubuntu; Linux i686; rv:20.0) Gecko\\/20100101 Firefox\\/20.0","UrlReferrer":"","uri":"http:\\/\\/yii-dev.loc\\/install\\/run\\/index"}', 1401546188),
(33, '{"ip":"127.0.0.1","userAgent":"Mozilla\\/5.0 (X11; Ubuntu; Linux i686; rv:20.0) Gecko\\/20100101 Firefox\\/20.0","UrlReferrer":"","uri":"http:\\/\\/yii-dev.loc\\/install\\/"}', 1401546198);

-- --------------------------------------------------------

--
-- Table structure for table `dev_user`
--

CREATE TABLE IF NOT EXISTS `dev_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created` int(11) NOT NULL,
  `ban` tinyint(1) NOT NULL,
  `role` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `dev_user`
--

INSERT INTO `dev_user` (`id`, `username`, `password`, `created`, `ban`, `role`) VALUES
(1, 'admin', '0c7540eb7e65b553ec1ba6b20de79608', 465645767, 0, 5);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
