-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 19, 2012 at 01:57 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pinpoint`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertising`
--

CREATE TABLE IF NOT EXISTS `advertising` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rate` text NOT NULL,
  `Details` text NOT NULL,
  `category` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `advertising_desc`
--

CREATE TABLE IF NOT EXISTS `advertising_desc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` int(11) NOT NULL,
  `icon` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `captcha`
--

CREATE TABLE IF NOT EXISTS `captcha` (
  `captcha_id` bigint(13) unsigned NOT NULL AUTO_INCREMENT,
  `captcha_time` int(10) unsigned NOT NULL,
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `word` varchar(20) NOT NULL,
  PRIMARY KEY (`captcha_id`),
  KEY `word` (`word`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=113 ;

--
-- Dumping data for table `captcha`
--

INSERT INTO `captcha` (`captcha_id`, `captcha_time`, `ip_address`, `word`) VALUES
(19, 1343891814, '127.0.0.1', 'RhSDE9iy'),
(20, 1343898902, '127.0.0.1', 'O2LmeOnr'),
(21, 1343898906, '127.0.0.1', 'Xuwty0A9'),
(22, 1343898907, '127.0.0.1', '2zIxi6f1'),
(23, 1351058085, '127.0.0.1', 'pgYUnsix'),
(24, 1351058231, '127.0.0.1', 'APZJ3MX'),
(25, 1351058238, '127.0.0.1', 'V9UR3AD'),
(26, 1352288448, '127.0.0.1', 'D2THE5G'),
(27, 1352288470, '127.0.0.1', '4NCY5S2'),
(28, 1352288471, '127.0.0.1', 'F84K6JU'),
(29, 1352288473, '127.0.0.1', 'RF593DQ'),
(30, 1355735824, '127.0.0.1', 'SF83MJY'),
(31, 1355735832, '127.0.0.1', '36CANK9'),
(32, 1355735842, '127.0.0.1', 'NQ8PMZU'),
(33, 1355746506, '127.0.0.1', 'AYDX62M'),
(34, 1355746521, '127.0.0.1', '4NHV7PJ'),
(35, 1355746556, '127.0.0.1', '9MCH2A4'),
(36, 1355746574, '127.0.0.1', 'G9BPKV6'),
(37, 1355746619, '127.0.0.1', 'H45VY32'),
(38, 1355746663, '127.0.0.1', 'U7H6SCX'),
(39, 1355746927, '127.0.0.1', 'GUKTN2E'),
(40, 1355747002, '127.0.0.1', 'H4N5RKU'),
(41, 1355747413, '127.0.0.1', '674NVJK'),
(42, 1355747443, '127.0.0.1', 'V6WEG43'),
(43, 1355747488, '127.0.0.1', 'PAB9MQZ'),
(44, 1355747544, '127.0.0.1', '97UNQCY'),
(45, 1355749256, '127.0.0.1', '8KHFGMT'),
(46, 1355751153, '127.0.0.1', 'UEB5W8N'),
(47, 1355751558, '127.0.0.1', 'UDAJNPZ'),
(48, 1355814819, '127.0.0.1', 'WR2YVJG'),
(49, 1355815769, '127.0.0.1', '5RNZCVK'),
(50, 1355815917, '127.0.0.1', 'WGA95MK'),
(51, 1355815937, '127.0.0.1', 'KQNCB6F'),
(52, 1355822633, '127.0.0.1', '625ZPMJ'),
(53, 1355822638, '127.0.0.1', '2H7GCSV'),
(54, 1355822642, '127.0.0.1', 'BRJ4PF8'),
(55, 1355824377, '127.0.0.1', 'E8QXSRB'),
(56, 1355831066, '127.0.0.1', 'DJFPN2V'),
(57, 1355831705, '127.0.0.1', 'US9D2EC'),
(58, 1355832799, '127.0.0.1', 'Y6U3WX7'),
(59, 1355834401, '127.0.0.1', 'JRFWMT4'),
(60, 1355834412, '127.0.0.1', 'W3QNTXV'),
(61, 1355834674, '127.0.0.1', 'UFGE325'),
(62, 1355835243, '127.0.0.1', 'WK5PEDU'),
(63, 1355836137, '127.0.0.1', 'MBFEA3Y'),
(64, 1355837952, '127.0.0.1', 'ZPU68SH'),
(65, 1355839706, '127.0.0.1', '9KEBQF3'),
(66, 1355840891, '127.0.0.1', 'ZGW5S2H'),
(67, 1355841650, '127.0.0.1', 'JZVE9MU'),
(68, 1355842667, '127.0.0.1', 'SZDNY2E'),
(69, 1355894839, '127.0.0.1', 'RUQH7E6'),
(70, 1355895157, '127.0.0.1', '8G9WKJU'),
(71, 1355895320, '127.0.0.1', '2RFMZP5'),
(72, 1355895608, '127.0.0.1', '5HDRSXJ'),
(73, 1355896060, '127.0.0.1', 'QJ69R7U'),
(74, 1355897181, '127.0.0.1', '38F7AXC'),
(75, 1355897920, '127.0.0.1', 'KBZASWV'),
(76, 1355897965, '127.0.0.1', 'VWHPSJY'),
(77, 1355900355, '127.0.0.1', 'B3S7TQ5'),
(78, 1355900439, '127.0.0.1', '64D7G5Q'),
(79, 1355900716, '127.0.0.1', 'JVSU9ZW'),
(80, 1355900845, '127.0.0.1', '6NTUZ3G'),
(81, 1355901148, '127.0.0.1', '76DK3E4'),
(82, 1355901956, '127.0.0.1', 'NP3YU67'),
(83, 1355902086, '127.0.0.1', 'ZTGK2HN'),
(84, 1355902672, '127.0.0.1', '9E52BCD'),
(85, 1355902780, '127.0.0.1', '92F3T6C'),
(86, 1355902896, '127.0.0.1', 'BDEG8AX'),
(87, 1355902995, '127.0.0.1', '62K47GH'),
(88, 1355903038, '127.0.0.1', 'TV47Y2U'),
(89, 1355903084, '127.0.0.1', 'HBFRVGP'),
(90, 1355903232, '127.0.0.1', '9YF4CZ2'),
(91, 1355903317, '127.0.0.1', 'NZ6FP93'),
(92, 1355904319, '127.0.0.1', 'M7WP6NX'),
(93, 1355904578, '127.0.0.1', 'JB3H9GD'),
(94, 1355904661, '127.0.0.1', '2JWBUCR'),
(95, 1355904787, '127.0.0.1', 'KBQ5YPM'),
(96, 1355904980, '127.0.0.1', '48CE7ZV'),
(97, 1355905102, '127.0.0.1', 'ZC39PTB'),
(98, 1355905142, '127.0.0.1', '2GSW8RQ'),
(99, 1355905434, '127.0.0.1', 'WMFKX2A'),
(100, 1355905543, '127.0.0.1', '7BPMENV'),
(101, 1355905583, '127.0.0.1', 'HE46WXA'),
(102, 1355905602, '127.0.0.1', 'NBS32MQ'),
(103, 1355905710, '127.0.0.1', '5ZNSJV3'),
(104, 1355905821, '127.0.0.1', 'V53H4XT'),
(105, 1355905872, '127.0.0.1', 'UCH765X'),
(106, 1355906409, '127.0.0.1', '3PZR6U7'),
(107, 1355918368, '127.0.0.1', 'WMPTUCN'),
(108, 1355921212, '127.0.0.1', '8PCJS5T'),
(109, 1355921235, '127.0.0.1', 'A76RWZX'),
(110, 1355924594, '127.0.0.1', '2GQKRSV'),
(111, 1355924768, '127.0.0.1', 'NTCQB2K'),
(112, 1355925059, '127.0.0.1', '85WD4NE');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE IF NOT EXISTS `content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `intro` text,
  `text` text NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `title`, `intro`, `text`, `url`) VALUES
(1, 'CPM Campaigns - Cost Per Thousand ', NULL, '<p>CPM is best suited for branding and awareness campaigns that do not require a &ldquo;click&rdquo; to be successful.</p>\r\n<p>CPM is also well suited for campaigns with such high click appeal that you would pay less than using the <a href="/pinpoint/advertising/cpc">CPC option</a>.&nbsp;<br /><br /></p>\r\n<p>Starting at $3.30 per 1,000 ad deliveries</p>\r\n<ul>\r\n<li>for campaigns that do not require precise <a href="/pinpoint/targeting-options">targeting</a> to be effective.</li>\r\n</ul>\r\n<p>The more you <a href="/pinpoint/targeting-options">target </a>your campaign to a precise audience or content type, the higher the CPM rate.&nbsp;</p>\r\n<p><span style="color: #efee0f; font-weight: bold;">Example: CPM - $3.30 | Budget - $330 = 100,000 Ad Deliveries</span></p>\r\n<p>Tell us about the product or service and who you want to reach, and we&rsquo;ll help you identify the most cost-effective <a href="/pinpoint/targeting-options">targeting option</a> available to reach your target audience.&nbsp;</p>', 'cpm'),
(2, 'CPC Campaigns - Cost Per Click ', NULL, '<p>CPC is best suited for campaigns intended to drive traffic to your website, blog or other digital content.</p>\r\n<p>Starting at $0.65 per click for lightly targeted campaigns.</p>\r\n<p>The more you <a href="/pinpoint/targeting-options">target</a> the campaign to a precise audience or content type, the higher the CPC rate.&nbsp;</p>\r\n<p>You only pay when your ad is clicked.&nbsp;</p>\r\n<p><span><span style="color: #efee0f; font-weight: bold;">Example: CPC - $0.65 | Budget - $325 = 500 Clicks</span></span></p>\r\n<p><strong>All CPC Campaigns must:</strong></p>\r\n<ul>\r\n<li>Create an expectation for what is on the destination page</li>\r\n<li>Have a clear call to action &ldquo;Click Here&rdquo;</li>\r\n<li>Deliver on the expectation created</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'cpc'),
(3, 'CPA Campaigns - Cost Per Acquisition ', NULL, '<p>CPA is best suited for targeted campaigns intended to result in an online-sale, to generate self-qualified sales leads, or to conduct an online survey.</p>\r\n<p>Starts at $3 per acquisition.</p>\r\n<div>\r\n<div>The customer clicks your ad which directs them to:</div>\r\n<div>\r\n<ul>\r\n<li>A form on a micro-page that we build for you, or</li>\r\n<li>A form / order / purchase page on your website.</li>\r\n</ul>\r\n</div>\r\n<div>You only pay when the form is successfully submitted.<br />&nbsp;</div>\r\n<div><span style="color: #efee0f; font-weight: bold;">Example: CPA - $3 | Budget - $300 = 100 Online Sales / Self Qualified Sales Leads / Completed Surveys</span></div>\r\n</div>\r\n<p>&nbsp;</p>', 'cpa'),
(4, 'Lockdown Campaigns - Exclusive Placement ', NULL, '<p>Lockdown campaigns provide advertisers exclusive placement on a particular page of content. They &nbsp;are best suited to advertisers that want their brand to be the <em><strong>ONLY</strong></em> &nbsp;ad to show in particular ad location on particular page(s) of content.</p>\r\n<div>\r\n<div>Starts at $50 per page/month<br />&nbsp;</div>\r\n<div>Usually a content page will have 2 or more ad positions. &nbsp;Only 1 ad position on any content page will be available for Lockdown Campaign placement.<br />&nbsp;</div>\r\n<div>The higher the average traffic on the page, the higher the monthly lockdown rate.<br />&nbsp;</div>\r\n<div>All lockdown campaigns require advance payment.</div>\r\n</div>', 'lockdown'),
(5, 'About PinPoint Africa Media ', NULL, '<p>\r\n	<br />\r\n	<br />\r\n	<strong><span style="color: #efee0f; \r\n">The Team</strong></span><br />\r\n	The staff and directors of PinPoint Africa Media all have one thing in common. &nbsp;We are passionate about online advertising, and its future in East Africa. &nbsp;Our talented crew have a wealth of online marketing experience that spans East Africa, The United States, India and Southern Europe.\r\n	&nbsp;<br />\r\n	&nbsp;</p>\r\n<div>\r\n	<div>\r\n		<strong><span style="color: #efee0f; ">The Mission</span></strong></div>\r\n	<div>\r\n		To professionally monetize the highest quality East African digital content, and provide advertisers with the most affordable, quantifiable and effective advertising solutions for reaching professional class East Africans.&nbsp;</div>\r\n</div>\r\n<div>\r\n	<div>\r\n		<br />\r\n		<br />\r\n		<strong><span style="color: #efee0f;  ">The Vision</span></strong></div>\r\n	<div>\r\n		PinPoint Africa Media &nbsp;is widely perceived as an essential component for any East African advertising campaign targeting the professional class.</div>\r\n</div>\r\n', 'about'),
(6, 'Banner Ad Examples', NULL, '<p>\r\n	PinPoint Africa Media excels at translating print and other ATL creative into highly interactive Flash banner ads and static image display ads.&nbsp; We provide creative services and interactive Flash ads development services ONLY for campaigns to be trafficked on the <a href="http://localhost/pinpoint/the-content-network">PinPoint Africa Media Digital Advertising Network</a>.&nbsp; Please see examples and rates below.</p>\r\n<p>\r\n	&nbsp;</p>\r\n<!--JavaScript Tag with group ID // Tag for network 1332: PinPoint Africa Media - Digital Content Network // Website: Bongo 5 // Page: Bongo 5 // Placement: Floating Footer (4066100) // created at: Oct 11, 2012 7:39:20 AM--><script language="javascript">\r\n<!--\r\nif (window.adgroupid == undefined) {\r\n	window.adgroupid = Math.round(Math.random() * 1000);\r\n}\r\ndocument.write(''<scr''+''ipt language="javascript1.1" src="http://adserver.adtech.de/addyn/3.0/1332/4066100/0/5311/ADTECH;loc=100;target=_blank;grp=''+window.adgroupid+'';misc=''+new Date().getTime()+''"></scri''+''pt>'');\r\n//-->\r\n</script><noscript><a href="http://adserver.adtech.de/adlink/3.0/1332/4066100/0/5311/ADTECH;loc=300" target="_blank"><img src="http://adserver.adtech.de/adserv/3.0/1332/4066100/0/5311/ADTECH;loc=300" border="0" width="675" height="50"></a></noscript><!-- End of JavaScript Tag -->', 'add-types'),
(7, 'Rich Media Ad Types & Sizes ', NULL, '<p>Rich Media Ads Are Created in Flash and Can:</p>\r\n<ul>\r\n<li>Contain complex Flash animation &amp; in-ad interaction</li>\r\n<li>Contain links to multiple different destination pages</li>\r\n<li>Contain video</li>\r\n</ul>\r\n<p>All Rich Media Ads Must be accompanied by a .jpg, .png or .gif display ad.</p>\r\n<ul>\r\n<li>This companion ad will display when the user does not have Flash, or does not have the correct version of Flash to support the ad.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>Due to bandwidth limitations in East Africa, Rich Media Ads are best characterized by file size and price.</p>\r\n<p>&nbsp;</p>\r\n<p>&amp;lt;50 Kb = Same Rate as Display Ads</p>\r\n<p>Only rich media ads &lt;50 Kb can be purchased on a CPC or CPA basis.</p>\r\n<p><a href="#">Examples of Rich Media Ads &lt;50 Kb</a></p>\r\n<p>&nbsp;</p>\r\n<p>51 &ndash; 400 Kb = $6.50 CPM<br />401 Kb &ndash; 1 Mb = $12 CPM<br />1.1 &ndash; 4 Mb = $17 CPM</p>\r\n<p><a href="#">Examples of Rich Media Ads &gt;50 Kb</a></p>', 'rich-media-ad-types-and-sizes'),
(8, 'The Content Network', NULL, '<p>PinPoint Africa Media coordinates ad sales, placement, trafficking and reporting for the following digital properties.</p>', 'the-contect-network'),
(9, 'Network Sites Footer', NULL, '<p style="text-align: center;"><strong>More Coming Soon!</strong></p>\r\n<p>If you would like to learn how your website, blog, digital newsletter, or other digital content can benefit from joining the PinPoint Africa Media network &gt; <a href="#">contact us</a>.</p>', 'network-sites-footer'),
(10, 'Targeting Options', NULL, '<p>The more you target your online campaign to reach your target audience, the more cost-effective your digital campaign will be.</p>', 'target-options-intro'),
(11, 'Targeting Options Content Top', NULL, '<p>There are a variety of ways to target your online campaign. &nbsp;Choose from the options below. &nbsp;In many cases you can combine targeting options to more precisely reach your target audience.</p>', 'target-options-content'),
(12, 'Targeting Options Content Bottom', NULL, '<p>You can target your ads differently on each site in the network, or you can target your ads across the entire network.</p>\r\n<p>Examples of Network-Wide Targeting Options</p>\r\n<ul>\r\n<li>Geo Targeting</li>\r\n<li>Tanzania IP Addresses Only</li>\r\n<li>Gender, Age or Education</li>\r\n<li>Tanzania Diaspora &ndash; Non East Africa IP address to Kiswahili language content, or Tanzania Job listings</li>\r\n</ul>', 'target-options-content-bottom'),
(13, 'Creative Services', NULL, '<p>PinPoint Africa Media provides creative services for network advertisers only. &nbsp;</p>', 'creative-services-intro'),
(14, 'Creative Services Content', NULL, '<p><br /><br />The following rates apply when:</p>\r\n<ul>\r\n<li>Ads will be trafficked on the PinPoint Africa Media &nbsp;Network.</li>\r\n<li>Advertiser provides all &nbsp;the individual elements to be utilized in the ad such as logo, images, special fonts, video clips etc.</li>\r\n</ul>', 'creative-services-content'),
(15, 'Contact PinPoint Africa Media', NULL, '<p>Tell us a bit about your marketing objectives and target audience and we&rsquo;ll help you put together a cost-effective online campaign.</p>', 'contact-pinpoint-africa-media'),
(16, 'Display Ad Types & Sizes', NULL, '<p>Display Ads Are Available in the following sizes:</p>', 'display-ads-types'),
(17, 'Examples of Rich Media Ads < 50 Kb ', NULL, '<p>Examples of Rich Media Ads &lt; 50 Kb</p>', 'rich-media-examples'),
(18, 'Ad Examples Content', NULL, '<p>\r\n	The Rates below include provision of up to 3 different ad sizes used throughout the Network<br />\r\n	&nbsp; &nbsp; &nbsp; &nbsp;(675 X 90 | 675 X 50 | 200 X 550).</p>\r\n<p>\r\n	If providing your own artwork, all banner ads must be &lt; 50 Kb.</p>\r\n<p>\r\n	&nbsp;</p>\r\n<div>\r\n	Animated Flash = $125 +VAT (240,000 TZS)</div>\r\n<div style="margin-left: 30px; ">\r\n	Add Multiple Outbound Links = &nbsp;$25 +VAT (40,000 TZS)</div>\r\n<div style="margin-left: 30px; ">\r\n	Add Expansion or Page Peel Reveal = $50 +VAT (80,000 TZS)</div>\r\n<div style="margin-left: 30px; ">\r\n	Add In-Ad Interactivity = $75 +VAT (120,000 TZS)</div>\r\n\r\n<div style="width: 250px; float: left; clear: none;">\r\n	<p>\r\n		<strong>Animated Flash with Page Peel Reveal</strong></p>\r\n	<!--JavaScript Tag with group ID // Tag for network 1332: PinPoint Africa Media - Digital Content Network // Website: PinPointAfricaMedia  // Page: Banner Ad Examples // Placement: Side Tower - Page Peel (4092789) // created at: Oct 24, 2012 10:27:28 AM--><script language="javascript">\r\n<!--\r\nif (window.adgroupid == undefined) {\r\n	window.adgroupid = Math.round(Math.random() * 1000);\r\n}\r\ndocument.write(''<scr''+''ipt language="javascript1.1" src="http://adserver.adtech.de/addyn/3.0/1332/4092789/0/1054/ADTECH;loc=100;target=_blank;grp=''+window.adgroupid+'';misc=''+new Date().getTime()+''"></scri''+''pt>'');\r\n//-->\r\n</script><noscript><a href="http://adserver.adtech.de/adlink/3.0/1332/4092789/0/1054/ADTECH;loc=300" target="_blank"><img src="http://adserver.adtech.de/adserv/3.0/1332/4092789/0/1054/ADTECH;loc=300" border="0" width="200" height="550"></a></noscript><!-- End of JavaScript Tag --></div>\r\n<div style="width: 250px; float: right; clear: none;">\r\n	<p>\r\n		<strong>Animated Flash with Expansion Reveal | In-Ad Interactivity | and Multiple Outbound Links</strong></p>\r\n	<!--JavaScript Tag with group ID // Tag for network 1332: PinPoint Africa Media - Digital Content Network // Website: PinPointAfricaMedia  // Page: Banner Ad Examples // Placement: Side Tower - Flash Expansion (4092795) // created at: Oct 24, 2012 10:27:28 AM--><script language="javascript">\r\n<!--\r\nif (window.adgroupid == undefined) {\r\n	window.adgroupid = Math.round(Math.random() * 1000);\r\n}\r\ndocument.write(''<scr''+''ipt language="javascript1.1" src="http://adserver.adtech.de/addyn/3.0/1332/4092795/0/1054/ADTECH;loc=100;target=_blank;grp=''+window.adgroupid+'';misc=''+new Date().getTime()+''"></scri''+''pt>'');\r\n//-->\r\n</script><noscript><a href="http://adserver.adtech.de/adlink/3.0/1332/4092795/0/1054/ADTECH;loc=300" target="_blank"><img src="http://adserver.adtech.de/adserv/3.0/1332/4092795/0/1054/ADTECH;loc=300" border="0" width="200" height="550"></a></noscript><!-- End of JavaScript Tag --></div>\r\n<div style="clear: both;">\r\n	&nbsp;</div>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<strong>Animated Flash with Multiple Outbound Links</strong></p>\r\n<!--JavaScript Tag with group ID // Tag for network 1332: PinPoint Africa Media - Digital Content Network // Website: PinPointAfricaMedia  // Page: Banner Ad Examples // Placement: Top Page - Animated Multiple Outbound (4092793) // created at: Oct 24, 2012 10:27:29 AM--><script language="javascript">\r\n<!--\r\nif (window.adgroupid == undefined) {\r\n	window.adgroupid = Math.round(Math.random() * 1000);\r\n}\r\ndocument.write(''<scr''+''ipt language="javascript1.1" src="http://adserver.adtech.de/addyn/3.0/1332/4092793/0/5206/ADTECH;loc=100;target=_blank;grp=''+window.adgroupid+'';misc=''+new Date().getTime()+''"></scri''+''pt>'');\r\n//-->\r\n</script><noscript><a href="http://adserver.adtech.de/adlink/3.0/1332/4092793/0/5206/ADTECH;loc=300" target="_blank"><img src="http://adserver.adtech.de/adserv/3.0/1332/4092793/0/5206/ADTECH;loc=300" border="0" width="675" height="90"></a></noscript><!-- End of JavaScript Tag -->\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<strong>Animated Flash with Expansion Reveal</strong></p>\r\n<!--JavaScript Tag with group ID // Tag for network 1332: PinPoint Africa Media - Digital Content Network // Website: PinPointAfricaMedia  // Page: Banner Ad Examples // Placement: Top Page - Animated Flash with Expansion Reveal (4092794) // created at: Oct 24, 2012 10:27:29 AM--><script language="javascript">\r\n<!--\r\nif (window.adgroupid == undefined) {\r\n	window.adgroupid = Math.round(Math.random() * 1000);\r\n}\r\ndocument.write(''<scr''+''ipt language="javascript1.1" src="http://adserver.adtech.de/addyn/3.0/1332/4092794/0/5206/ADTECH;loc=100;target=_blank;grp=''+window.adgroupid+'';misc=''+new Date().getTime()+''"></scri''+''pt>'');\r\n//-->\r\n</script><noscript><a href="http://adserver.adtech.de/adlink/3.0/1332/4092794/0/5206/ADTECH;loc=300" target="_blank"><img src="http://adserver.adtech.de/adserv/3.0/1332/4092794/0/5206/ADTECH;loc=300" border="0" width="675" height="90"></a></noscript><!-- End of JavaScript Tag -->\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<strong>Animated Flash with Expansion Reveal</strong></p>\r\n<div style="width: 675px; height:50px; overflow:visible">\r\n	<!--JavaScript Tag with group ID // Tag for network 1332: PinPoint Africa Media - Digital Content Network // Website: PinPointAfricaMedia  // Page: Banner Ad Examples // Placement: Floater - Animated Flash with Expansion Reveal (4092791) // created at: Oct 24, 2012 10:27:28 AM--><script language="javascript">\r\n<!--\r\nif (window.adgroupid == undefined) {\r\n	window.adgroupid = Math.round(Math.random() * 1000);\r\n}\r\ndocument.write(''<scr''+''ipt language="javascript1.1" src="http://adserver.adtech.de/addyn/3.0/1332/4092791/0/5311/ADTECH;loc=100;target=_blank;grp=''+window.adgroupid+'';misc=''+new Date().getTime()+''"></scri''+''pt>'');\r\n//-->\r\n</script><noscript><a href="http://adserver.adtech.de/adlink/3.0/1332/4092791/0/5311/ADTECH;loc=300" target="_blank"><img src="http://adserver.adtech.de/adserv/3.0/1332/4092791/0/5311/ADTECH;loc=300" border="0" width="675" height="50"></a></noscript><!-- End of JavaScript Tag --></div>\r\n<p>\r\n	&nbsp;</p>\r\n<div style="clear: both;">\r\n	&nbsp;</div>\r\n<div style="width: 250px; float: left; clear: none;">\r\n	<p>\r\n		<strong>Static Image Ad (JPG, PNG or GIF)<br />\r\n		= $100 +VAT (160,000 TZS)</strong></p>\r\n	<!--JavaScript Tag with group ID // Tag for network 1332: PinPoint Africa Media - Digital Content Network // Website: PinPointAfricaMedia  // Page: Banner Ad Examples // Placement: Side Tower - Static (4092792) // created at: Oct 24, 2012 10:27:28 AM--><script language="javascript">\r\n<!--\r\nif (window.adgroupid == undefined) {\r\n	window.adgroupid = Math.round(Math.random() * 1000);\r\n}\r\ndocument.write(''<scr''+''ipt language="javascript1.1" src="http://adserver.adtech.de/addyn/3.0/1332/4092792/0/1054/ADTECH;loc=100;target=_blank;grp=''+window.adgroupid+'';misc=''+new Date().getTime()+''"></scri''+''pt>'');\r\n//-->\r\n</script><noscript><a href="http://adserver.adtech.de/adlink/3.0/1332/4092792/0/1054/ADTECH;loc=300" target="_blank"><img src="http://adserver.adtech.de/adserv/3.0/1332/4092792/0/1054/ADTECH;loc=300" border="0" width="200" height="550"></a></noscript><!-- End of JavaScript Tag --></div>\r\n<div style="width: 250px; float: right; clear: none;">\r\n	<p>\r\n		<strong>Animated GIF Ad<br />\r\n		= $125 +VAT (200,000 TZS)</strong></p>\r\n	<!--JavaScript Tag with group ID // Tag for network 1332: PinPoint Africa Media - Digital Content Network // Website: PinPointAfricaMedia  // Page: Banner Ad Examples // Placement: Side Tower - Animated GIF (4092790) // created at: Oct 24, 2012 10:27:28 AM--><script language="javascript">\r\n<!--\r\nif (window.adgroupid == undefined) {\r\n	window.adgroupid = Math.round(Math.random() * 1000);\r\n}\r\ndocument.write(''<scr''+''ipt language="javascript1.1" src="http://adserver.adtech.de/addyn/3.0/1332/4092790/0/1054/ADTECH;loc=100;target=_blank;grp=''+window.adgroupid+'';misc=''+new Date().getTime()+''"></scri''+''pt>'');\r\n//-->\r\n</script><noscript><a href="http://adserver.adtech.de/adlink/3.0/1332/4092790/0/1054/ADTECH;loc=300" target="_blank"><img src="http://adserver.adtech.de/adserv/3.0/1332/4092790/0/1054/ADTECH;loc=300" border="0" width="200" height="550"></a></noscript><!-- End of JavaScript Tag --></div>\r\n<p>\r\n	&nbsp;</p>\r\n', 'ad-examples');

-- --------------------------------------------------------

--
-- Table structure for table `cpm_advertising_bundles`
--

CREATE TABLE IF NOT EXISTS `cpm_advertising_bundles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `cpm_advertising_bundles`
--

INSERT INTO `cpm_advertising_bundles` (`id`, `title`, `image`, `description`) VALUES
(1, 'Geographic Bundles', 'e43b5-world.png', '<ul>\r\n	<li>\r\n		East Africa Only = $1.45 CPM\r\n		<ul>\r\n			<li>\r\n				Site visitors whose IP address indicates an East African country.</li>\r\n		</ul>\r\n	</li>\r\n	<li>\r\n		<div>\r\n			Tanzania Only = $1.75 CPM</div>\r\n		<ul>\r\n			<li>\r\n				<div>\r\n					Site visitors whose IP address indicates Tanzania.</div>\r\n			</li>\r\n		</ul>\r\n	</li>\r\n	<li>\r\n		<div>\r\n			Tanzania Diaspora = $2.50 CPM</div>\r\n		<ul>\r\n			<li>\r\n				<div>\r\n					Site visitors whose IP address indicates a non-East African country, and who are visiting KiSwahili language sites, or &ldquo;Jobs &amp; Employment&rdquo; section on ZoomTanzania.</div>\r\n			</li>\r\n		</ul>\r\n	</li>\r\n	<li>\r\n		<div>\r\n			Other = on quote</div>\r\n		<ul>\r\n			<li>\r\n				<div>\r\n					Any country, or any group of countries.</div>\r\n			</li>\r\n		</ul>\r\n	</li>\r\n</ul>\r\n<p>\r\n	&nbsp;</p>\r\n'),
(2, 'Demographic Bundles', '624cd-gender.png', '<ul>\r\n	<li>\r\n		<div>\r\n			Gender Male = $2.00 CPM</div>\r\n		<ul>\r\n			<li>\r\n				<div>\r\n					Registered users of ZoomTanzania &amp; JamiiForums self-identify&nbsp;as male, and visitors to Shah Dauda sports blog.</div>\r\n			</li>\r\n		</ul>\r\n	</li>\r\n	<li>\r\n		<div>\r\n			Gender Female = $2.00 CPM</div>\r\n		<ul>\r\n			<li>\r\n				<div>\r\n					Registered users of ZoomTanzania &amp; JamiiForums who self-identify&nbsp;as female, and visitors to 8020Fasions and MamaZuri.</div>\r\n			</li>\r\n		</ul>\r\n	</li>\r\n	<li>\r\n		<div>\r\n			Specic Age Range = $2.25 CPM</div>\r\n		<ul>\r\n			<li>\r\n				<div>\r\n					Registered users of ZoomTanzania &amp; JamiiForums, who provide&nbsp;date of birth. Currently available on these 2 sites only.</div>\r\n			</li>\r\n		</ul>\r\n	</li>\r\n	<li>\r\n		<div>\r\n			Youth = $2.00 CPM</div>\r\n		<ul>\r\n			<li>\r\n				<div>\r\n					Registered users of ZoomTanzania &amp; JamiiForums under 35 years&nbsp;of age, and Bongo5, DJ Fetty and DJ Choka visitors.</div>\r\n			</li>\r\n		</ul>\r\n	</li>\r\n</ul>\r\n<p>\r\n	&nbsp;</p>\r\n'),
(3, 'Content Type Bundles', 'b0cd4-content.png', '<ul>\r\n	<li>\r\n		Entertainment = $1.75 CPM\r\n		<ul>\r\n			<li>\r\n				JamiiForums &ldquo;Entertainment&rdquo; &amp; ZoomTanzania &ldquo;Events &amp;&nbsp;Entertainment&rdquo; sections, &amp; Bongo5, DJ Fetty and DJ Choka.</li>\r\n		</ul>\r\n	</li>\r\n	<li>\r\n		<div>\r\n			Sports = $1.75 CPM</div>\r\n		<ul>\r\n			<li>\r\n				<div>\r\n					JamiiForums &ldquo;Sports&rdquo; section &amp; Shah Dauda visitors</div>\r\n			</li>\r\n		</ul>\r\n	</li>\r\n	<li>\r\n		<div>\r\n			Business = $2.00 CPM</div>\r\n		<ul>\r\n			<li>\r\n				<div>\r\n					JamiiForums &amp; ZoomTanzania &ldquo;Business&rdquo; sections</div>\r\n			</li>\r\n		</ul>\r\n	</li>\r\n	<li>\r\n		<div>\r\n			Job Seekers = $1.75 CPM</div>\r\n		<ul>\r\n			<li>\r\n				<div>\r\n					ZoomTanzania &ldquo;Jobs &amp; Employment&rdquo; section</div>\r\n			</li>\r\n		</ul>\r\n	</li>\r\n	<li>\r\n		<div>\r\n			Politics = $1.75 CPM</div>\r\n		<ul>\r\n			<li>\r\n				<div>\r\n					JamiiForums &ldquo;Politics&rdquo; section</div>\r\n			</li>\r\n		</ul>\r\n	</li>\r\n	<li>\r\n		<div>\r\n			Tourism = $2.50 CPM</div>\r\n		<ul>\r\n			<li>\r\n				<div>\r\n					ZoomTanzania &ldquo;Travel &amp; Tourism&rdquo; section</div>\r\n			</li>\r\n		</ul>\r\n	</li>\r\n</ul>\r\n<p>\r\n	&nbsp;</p>\r\n'),
(4, 'Date/Time Bundles', 'cbf51-calendar.png', '<ul>\r\n	<li>\r\n		Weekdays (M-F) Only = $1.55 CPM</li>\r\n	<li>\r\n		Weekends Only = $1.85 CPM</li>\r\n	<li>\r\n		Any 3 Days of Week = $2.15 CPM</li>\r\n	<li>\r\n		Any 1 Day of Week = $2.50 CPM</li>\r\n	<li>\r\n		Any 12 Hr. Period of Day = $1.65 CPM</li>\r\n	<li>\r\n		Any 6 Hr. Period of Day = $2.00 CPM</li>\r\n	<li>\r\n		Any 3 Hr. Period of Day = $2.50 CPM</li>\r\n</ul>\r\n'),
(5, 'Build Your Own Bundle', '14afe-custom.png', '<ul>\r\n	<li>\r\n		Choice of any 5 Sites = $1.50 CPM</li>\r\n	<li>\r\n		Choice of any 3 Sites = $1.85 CPM</li>\r\n	<li>\r\n		Choice of any 1 Site = On Quote Only</li>\r\n</ul>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `creative_services`
--

CREATE TABLE IF NOT EXISTS `creative_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `creative_services`
--

INSERT INTO `creative_services` (`id`, `title`, `text`) VALUES
(1, 'Display Ads', '<p><strong>Non Animated Jpg or Png:</strong></p>\r\n<ul>\r\n<li>$75 (one size)</li>\r\n<li>$40 (additional sizes)</li>\r\n</ul>\r\n<p><strong>Animated Gif:</strong></p>\r\n<ul>\r\n<li>$100 (one size)</li>\r\n<li>$50&nbsp;(additional sizes)</li>\r\n</ul>'),
(2, 'Rich Media Ads', '<p><strong>Expansion ads without animation:</strong></p>\r\n<ul>\r\n<li>$150</li>\r\n</ul>\r\n<p><strong>Expansion ads with flash animation:</strong></p>\r\n<ul>\r\n<li>$225</li>\r\n</ul>\r\n<p><strong>Fixed size flash animation:</strong></p>\r\n<ul>\r\n<li>$200</li>\r\n</ul>\r\n<p>&nbsp;</p>'),
(3, 'Ads With Video ', '<ul>\r\n<li>Quote provided after creative brief</li>\r\n</ul>'),
(4, 'Acquisition Form Page', '<p><strong>For CPA Campaigns</strong></p>\r\n<ul>\r\n<li>Starting at $250 (lead generation form)</li>\r\n<li>Quote provided after creative briefing for more complex forms.</li>\r\n</ul>');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `network_sites`
--

CREATE TABLE IF NOT EXISTS `network_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `network_sites`
--

INSERT INTO `network_sites` (`id`, `title`, `logo`, `text`, `url`) VALUES
(1, 'JamiiForums', '76a81-jamiilogo.jpg', '<p>\r\n	<a href="http://www.jamiiforums.com/" target="_blank">JamiiForums.com</a> is the most visited Kiswahili language website in the world. JamiiForums provides a discussion platform for the public to signal and discuss issues ignored by the mainstream media.</p>\r\n', 'http://www.jamiiforums.com'),
(2, 'ZoomTanzania', '13ca7-medium_color.png', '<p>\r\n	<a href="http://www.zoomtanzania.com/" target="_blank">ZoomTanzania.com</a> is the most visited English language website in Tanzania. &nbsp;Comprised of business directories, entertainment calendar, and a variety of classified sections, ZoomTanzania.com empowers people and drives business.</p>\r\n', 'http://www.zoomtanzania.com'),
(3, 'Shaffih Dauda', '9bfc8-SD-LOGO-opt.png', '<p>\r\n	<a href="http://www.shaffihdauda.com/">ShaffihDauda.com</a> is the most popular sports blog in Tanzania. &nbsp;Hosted by Clouds FM sports announcer Shaffih Dauda himself, this blog covers both Tanzanian and international sports.</p>\r\n', 'http://www.shaffihdauda.com/');

-- --------------------------------------------------------

--
-- Table structure for table `targeting_options`
--

CREATE TABLE IF NOT EXISTS `targeting_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `targeting_options`
--

INSERT INTO `targeting_options` (`id`, `title`, `text`) VALUES
(1, 'Geo-Targeting', '<ul>\r\n<li>By Country of visitor</li>\r\n<li>By Region (i.e. East Africa)</li>\r\n<li>By TZ City (limited)</li>\r\n</ul>\r\n<p>&nbsp;</p>'),
(2, 'Demographic Targeting', '<ul>\r\n<li>By Gender</li>\r\n<li>By Age</li>\r\n<li>By Education level</li>\r\n</ul>'),
(3, 'Content Targeting', '<ul>\r\n<li>By Sections of Content such as news, classifieds &amp; entertainment</li>\r\n<li>By Keywords such as Jobs, Automotive, IT, etc.</li>\r\n</ul>'),
(4, 'Device Targeting', '<ul>\r\n<li>Mobile phones</li>\r\n<li>A particular brand of phone</li>\r\n<li>Tablets</li>\r\n</ul>');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` int(10) unsigned NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(40) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `pledge` int(11) DEFAULT NULL,
  `tshirt` int(11) DEFAULT NULL,
  `rotary` int(11) NOT NULL DEFAULT '1',
  `age` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tshirt` (`tshirt`),
  KEY `pledge` (`pledge`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `pledge`, `tshirt`, `rotary`, `age`) VALUES
(10, 2130706433, 'terence@zoomtanzania.com', '5ac1dd321f76ceae306aab0a6128b5d6bd0aa9a7', NULL, 'terence@zoomtanzania.com', NULL, NULL, NULL, 1342148431, 1351064238, 1, 'Terence', 'Silonda', NULL, '0715556327', 1, 1, 0, ''),
(11, 2130706433, 'kirk@zoomtanzania.com', 'a0e0f38edfeb22550e6034001dbdb412dd3d8e63', NULL, 'kirk@zoomtanzania.com', NULL, NULL, NULL, 1342706934, 1355832146, 1, 'Kirk', 'Gillis', NULL, '+255123456', 1, 2, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE IF NOT EXISTS `users_groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(10, 10, 2),
(11, 11, 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
