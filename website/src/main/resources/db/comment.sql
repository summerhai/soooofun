/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : soooofun

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-05-17 19:56:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `c_id` char(21) NOT NULL,
  `c_f_id` char(21) NOT NULL,
  `c_content` varchar(20000) NOT NULL,
  `c_time` datetime NOT NULL,
  `c_user_id` char(21) NOT NULL,
  `c_user_name` varchar(255) NOT NULL,
  `c_user_avatar` varchar(255) NOT NULL,
  `c_user_level` int(3) NOT NULL,
  `c_floor` int(10) NOT NULL,
  `c_nice_num` int(10) NOT NULL,
  `c_available` smallint(1) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for fun_item
-- ----------------------------
DROP TABLE IF EXISTS `fun_item`;
CREATE TABLE `fun_item` (
  `f_id` char(21) NOT NULL,
  `f_title` varchar(255) DEFAULT NULL,
  `f_content` text NOT NULL,
  `f_publish_time` datetime NOT NULL,
  `f_publisher_id` char(21) NOT NULL,
  `f_publisher_name` varchar(255) NOT NULL,
  `f_has_image` smallint(1) NOT NULL,
  `f_class` varchar(255) NOT NULL,
  `f_tag` varchar(255) DEFAULT NULL,
  `f_nice_num` int(11) NOT NULL,
  `f_comment_num` int(11) NOT NULL,
  `f_score` double(8,2) NOT NULL,
  `f_collect_num` int(11) NOT NULL,
  `f_available` smallint(1) NOT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fun_item
-- ----------------------------
INSERT INTO `fun_item` VALUES ('f_0m0CATPHo4gnE8enuWQ', null, '<img src=\"http://localhost/content/201710290003.jpg \"/>', '2017-10-29 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_0plrAXiKuK6rlGHXp4S', null, '<img src=\"http://localhost/content/201710290006.jpg \"/>', '2017-10-29 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_0URnE4d10snVRqnXtaW', null, '<img src=\"http://localhost/content/201707280002.jpg \"/>', '2017-07-28 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_0ZHPBHBRiHsHijHX5L0', null, '有个问题困扰我很多年，向日葵跟着太阳转，从东边转到西边。那第二天早上是怎么回到东边的？一个猛甩头？那么让我们设想一下，当你在日出之际走过向日葵花海，几十万株向日葵突然就一个猛回头。吓得你从此生活不能自理。<br>', '2017-12-31 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_1lHdNjOtu8M4jcLFBpg', null, '赵东来：达康书记，我们接到在非洲卧底的冷锋报告，丁义珍现在非洲，我们请求抓捕。李达康：东来，这件事先不要声张，特别是别让省厅知道，就你和我一起去非洲，加上冷锋同志，三人逮捕丁义珍，这次行动就叫战狼2吧！', '2017-08-25 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '电影', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_1mVVS4qfjaok7soKtEO', '熊孩子', '<img src=\"http://localhost/content/201708050001.jpg \"/>', '2017-08-05 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '熊孩子', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_1tD6wak8l46tI2DnX7J', null, '朱元璋找了8个人，建立了大明王朝。马云找了18人，建立了全球最大的电子商务帝国。我今天找了3个人，输了八千多。', '2017-10-20 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_21rKWvGxxd8pDgUetQ2', null, '经本人长期研究，幼儿喝可乐确实会提高身体受到伤害的几率，部分幼儿甚至出现了哭闹不止的情况，以下是本人历时十年，观察大量真实案例，并利用采集到的大数据运用统计学原理分析整理总结所得到的一般性规律：<br><br><br><br><br><br><br>妈妈我要喝可乐<br>不行<br>我要喝我要喝我就要喝<br>那你去问问你爸让你喝不<br><br>爸爸，我要喝可乐<br>不行<br>我就要，我就要，我就要！<br>……<br>我就要，我就要，我就要！！！<br>pia pia pia，pia pia pia，pia pia pia<br>555555555555555555<br>还喝不喝？！<br>5555555再也不喝了，55555555……', '2017-08-05 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '感情', '对话', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_22W0njZm2hoyWDnJJVY', null, '一老头说：＂当日华山论剑，先是他用黯然销魂掌，破了我的七十二路空明拳；然后我改打降龙十八掌，却不防他伸开右手食指中指，竟是六脉神剑商阳剑和中冲剑并用，又胜我一筹。可见天下武功彼此克制，武学之道玄之又玄！＂<br>旁边老太太骂道：mb玩个石头剪子布都说得这般威风（来自微信用户bingo投稿）', '2017-11-17 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_2ifBu7TgdECA1XnTXP4', null, '悟空问八戒：我的金箍棒在哪里？ 八戒想了想：额，师兄，你的金箍棒就棒在很配你的发型', '2017-12-31 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '学校', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_3CMsMJyrmHfpLgl0cIL', null, '张无忌选择赵敏的三个理由：1，赵敏才貌双全，丝毫不逊于周芷若；2，赵敏聪明伶俐心地善良对爱情勇敢执着，虽说自己总是被赵敏调戏但是他也喜欢被动，又爱又恨才难忘；3，赵敏是少数民族，小孩高考可以加分。', '2017-07-28 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '武侠', '金庸', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_3frqjy1NplKtAfPFk1k', null, '校长：去年的大扫除是高一学生负责的，今年该轮到高二了。', '2017-08-18 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '学校', '高中', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_3KgPHhGyXhggOXSox8J', null, '<img src=\"http://localhost/content/201711050005.jpg \"/>', '2017-11-05 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_3LWy2mxxCIovyiqcHKW', null, '陪老婆回娘家吃饭，我聊起了打篮球的话题，说自己怎样过人，投篮……<br>丈母娘对老丈人说：“和你年轻时一样哈。”<br>我说：“爸，您以前也爱打篮球？”<br>老丈人：“我以前和你一样，吃饭时话多。”（来自Wx用户Search投稿）', '2017-11-05 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '感情', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_3NxoGDuZq5PgPvvHjn2', null, '听大表哥说他小时候是个结巴，后来治好了。。<br>问他怎么做到的，大表哥告诉我，他爸爸当年为了治他的结巴，也不知从哪找来的偏方:据说在打雷的一瞬间，狠狠地扇结巴的人一大嘴巴子，结巴就能好了……<br>我又问:“那治好了么？”<br>“当然没，不过我爸以为是扇嘴巴子的时机没掌握好，所以之后一打雷就扇我嘴巴子，我不想挨打就每天练习说话，结巴才治好的！', '2017-12-24 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_4D789fmqwIenULoiWNZ', null, '初从文，三年不中；改习武，校场发一矢，中鼓吏，逐之出；又从商，一遇骗，二遇盗，三遇匪；遂躬耕，一岁大旱，一岁大涝，一岁飞蝗；乃学医，有所成。自撰一良方，服之，卒。遂至地府，久候阎王升堂，不耐，问之，鬼卒曰：王阅足下卷宗，狂笑，休克于后堂，未醒……', '2017-12-31 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '其他', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_4nuuZAxl94umOprSMQt', null, '安全逃生演习，一朋友率先跑到楼下。看着烟雾缭绕的楼上，对楼上一千多人大喊：“各位同学，在下明教张无忌，若各位信得过我，就直接跳下来吧，我用乾坤大挪移接住你们！”', '2017-12-31 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '其他', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_4rJjwKW5SWgqJVlzCb2', null, '“欸，你知道超人为什么要穿紧身衣吗？”<br>我：“减小空气阻力？”<br>我朋友：“救人要紧。”', '2017-12-31 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_4wSyblNdsJcvXuyjw52', null, '我问爸爸:\"为什么我只有大伯，二伯，四叔，五叔?为什么没有三叔?我三叔呢?死了吗？\"<br>爸爸抬手一耳刮子给我抽懵了。', '2017-12-24 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_5bMgYs45i80mmUX219W', null, '一对母女的对话：<br>你都这么大了，怎么还找不到对象？<br>妈，别急，总有一个人在等我…..<br>阎王爷是吧', '2017-10-20 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_5DbhJnFhtI7BsWB2nIa', null, '某新闻标题：古力娜扎张翰…<br>评论：古力娜是谁？为什么要扎张翰？（和首页一起来自镔哥投稿）', '2017-11-05 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_5fQxmysDQ504X7vwxqF', null, '昨天去理发，<br>理发师：“你是做什么的”<br>我：“做网络维护的，你呢？”<br>理发师：“我理发的”<br>……', '2017-08-18 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', 'IT', '理发', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_5NFg1UDNKc1qOBk53o3', null, '到银行汇款，车临时停路边上。为了怕交警罚就把朋友留下看车，跟他说有查车的过来了告诉我一声，进去几分钟果然有交警来了，那个朋友风风火火地闯进银行大声吼到：大哥，警察来了，快走啊！尼玛，偌大的一个大厅几十号人，顷刻间寂静无声，然后人潮像洪水一样涌出银行，接着我就被五六个保安按在了地上...真他妈冤！不怕神一样的对手，就怕猪一样的队友！', '2017-10-13 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_65MNP6T6OjfnmfPMr0j', null, '一个帖子问道:姓张，麻烦大伙给儿子起个名字，最好带个“顺”字。<br>回复:张345678910JQKA。', '2017-12-17 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_6AIEmfWmyYa2YJMqoBU', null, '关羽走进饭馆对小二说:把你们店里上好的酒菜给我上来，要是不合老子胃口，就要了你的狗头”店小二立马跑厨房抱来一捆韭菜，于是小二死了。<br>', '2017-12-17 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_6DnqFKFEuppdAn5tC7t', null, '<img src=\"http://localhost/content/201712170002.jpg \"/>', '2017-12-17 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_6glNb4UJUsUi1puRrxa', null, '过年的时候把炮竹拆了，把火药均匀的洒在烟灰缸里。然后那天家里来了客人，抽烟。。。剩下的我就不多说了。我还活着。', '2017-08-05 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '过年，熊孩子', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_6I5OC4fua92d6VboqMs', null, '现在的人活得太累了，没有诗意。跟uber司机说我在一朵像小象的云下面等他，他居然骂我神经病。<img src=\"http://localhost/content/201707080001.jpg \"/>', '2017-07-08 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '租车', '0', '0', '2.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_6snTRjiHwvfmYNrk0ms', null, '小蚂蚁迷路找不到蚁窝，可着急了…恰巧看到它的朋友经过，于是大喊一声：＂哥们儿！＂<br>马上爬过去问路：＂你…你都如何回蚁窝？＂<br>它的朋友反问道：＂带…带着笑或是很沉默？＂', '2017-07-08 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '音乐', '蚂蚁，对话', '0', '0', '2.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_7GKDGlsP12Ec1tOQQFE', null, '正在码代码ing，医院回来的同事一脸的苦逼样子，问他怎么了？他回答：“得了类风湿性关节炎了，我怕会遗传给下一代啊“我一脸的问号：“谁说类风湿性关节炎能遗传的？“丫一脸诧异：“类不是继承的吗？“', '2017-08-25 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', 'IT', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_7I1qaakA66rDzsbezUH', null, '一个温州同学和一个长沙同学刚开学那天由于听不懂对方在说什么于是用英语顺利的完成介绍交流', '2017-12-31 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '其他', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_7iknUezjOVrp2xdpoMy', null, '某人被查出来有私生子，其回应道：因同情而捐精而已。其妻怒斥怎么捐的，他回答说：因信不过红十字会，就直接捐给本人了……', '2017-08-25 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '感情', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_7uBm4bs4OqJLqmNT6Lb', null, '<img src=\"http://localhost/content/201708250001.jpg \"/>', '2017-08-25 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_7vtHewq3YWYiURtFpCG', null, '大三暑假，送室友坐高铁，临上车前，我说“我去买几个橘子，你就站在此地，不要走动。”<br>室友愣了一下，说：“你他妈什么时候都不忘占我便宜。”', '2017-10-20 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '学校', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_81w13ZKhTQ9ydmC4Uvi', null, '一女生在学校门口撞见了自己父亲，她很诧异：“爸，你怎么来了？”<br>父亲把她拉到一边说：“你个不争气的东西，花钱让你来学校好好念书，你却跟别人把孩子都生了！你说，你对得起你妈吗？”<br>女生：“爸，我没有，你听谁说的？”<br>父亲：“还想瞒我！我和你妈都看见了，你在朋友圈里发的宝宝命苦，又发烧了，医生说要打针，吓坏宝宝了。我连夜就赶来了！快告诉我外孙在哪？带我去瞧瞧去！”', '2017-12-24 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '学校', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_89JFRPO4MbSVipia1nG', null, '最近天气变冷，温度达到几度，办公室有个同事居然穿短袖上班，领导问他：“你不怕冷吗？”他回道：“我连穷都不怕，还会怕冷吗？”', '2017-12-17 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_8dz9Tqv3Qn1IAGQcV6I', null, '<img src=\"http://localhost/content/201711050002.jpg \"/>', '2017-11-05 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_8K6u64QktwkcNhZq3xI', null, '昨天出去玩给雨淋了，今天一早去医院打点滴正在问诊一位年轻妈妈抱着一个小正太进了医院，正太天真说:麻麻，我们来干嘛？麻麻:打针啊~ 正太：干嘛要打针，针做错什么事了嘛？针不疼吗？ ………… 五分钟后正太开始咆哮：这是针打我~这是针打我…', '2017-10-07 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活，感情', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_8y0o5vzJU0euZ7C5tmU', null, '<img src=\"http://localhost/content/201711170002.jpg \"/>', '2017-11-17 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_9w1fVGdUIX5W53bTPsP', null, '几个小男孩凑了十几块钱想买玩具，但不知该买什么，其中一个提议道：“去买卫生巾吧！”众不解，问为什么？男孩说：“我也不太清楚，不过电视上说有了它，就可以爬山，滑水，打球，溜冰，而且快乐没烦恼。”', '2017-12-31 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_absvqI8u7BxwbX6448z', null, '<img src=\"http://localhost/content/201710200003.jpg \"/>', '2017-10-20 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_aCP41gFbaTwz5rHEN2A', null, '全冠清道:“乔峰,你身上的狼头刺青,便是你是契丹人的铁证。”乔峰一声冷笑:“这刺青是少室山下我的阿伯刺的。”全冠清一时语塞,喃喃道:“阿伯刺的……阿伯刺的……饿佛哥,喝一基科了摸呢,哦婆妻,日丝特……”', '2017-12-17 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '电视剧', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_ACyxtlcGRjMgnoiT8hP', null, '老大爷用海绵笔在广场地上写大字，我近前观看。大爷看了我一眼，提笔写了个“滚”。我心里不舒服，至于如此吗？我退后两步，这老头又写了个“滚”。我真生气了，抬腿一脚把他踢飞了。警察来问情况。老头说：“我正要写‘滚滚长江东逝水’，刚写俩字就被这精神病踢倒了。。。', '2017-07-08 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_aFJkZCWkKdgzvv7dOnO', null, '今天躺在床上听音乐，突然想起作业还有一大堆没写，我啪啪啪打了自己几巴掌，“听歌呢，乱想啥”', '2017-11-17 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '感情', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_ahUBIP6jKa1eTXEfBQZ', null, '<img src=\"http://localhost/content/201712240003.jpg \"/>', '2017-12-24 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_AMqCbqR1PNXstIwyyFS', null, '今天带蓝牙耳机上公交车，坐下后一模口袋，糟了，手机不见了！耳机还在播放音乐，那么说明手机还在周围，果然在另一个口袋找到了手机。', '2017-12-31 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_AydzZcA3aNsxvt71S4V', '大胆的提议', '<img src=\"http://localhost/content/201708110001.jpg \"/>', '2017-08-11 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_azwzUx5bfGUigcYPBur', null, '美国海军总部在1995年10月10日公布此通话记录<br>加拿大人员： 请你改变你的航向朝南15度以避免碰撞。<br>美国人员：建议你改变你的航向朝北15度以避免碰撞。<br>加拿大人员：不，你必须改变你的航向朝南15度以避免碰撞。<br>美国人员： 这是美国海军军舰舰长，我再说一次，改变你的航向。<br>加拿大人员：不，我再说一次，你要改变你的航向。<br>美国人员：这是美国海军林肯号航空母舰，美国大西洋舰队第二大舰船。我们与三艘驱逐舰。三艘巡洋舰及多艘支援舰只同行。我要求你改变你的航向朝北15度。 我再说一次。朝北15度。否则将采取反制措施以确保本舰的安全。<br>加拿大人员：这里是灯塔，你决定吧。', '2017-10-13 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '外国', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_b3PrxdlmUW7zueuvkX4', null, '<img src=\"http://localhost/content/201712310006.jpg \"/>', '2017-12-31 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_bfjuc1so5REmJ0cN4ml', null, '来自某歌曲评论：如果我开车听这首歌的话，只能给这首歌打88分，因为剩下的12分要留给交警。', '2017-12-17 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_BFQz8oKLCCXvt7YURYP', null, '一男子拿了便利店的巧克力拔腿就跑，跑至半路时又冒雨折回抢夺售货员的随身听。遂被抓获，后警察问小偷你为何偷了巧克力已经逃脱还要跑回来？小偷结结巴巴地说：“听。。。听说下雨天。。。巧。。。巧克力和音乐更配哦。”<br>', '2017-12-17 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_BG3IH7plzuQqVLxrym9', null, '<img src=\"http://localhost/content/201710290008.jpg \"/>', '2017-10-29 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_C1ZBsN1IthVkhQmZjeP', null, '从前有一只大鱼和一只小鱼。有一天 小鱼问大鱼：大～鱼～大～鱼～你～平～常～喜～欢～吃～什～么～丫。<br>大鱼说：我～喜～欢～吃～说～话～慢～的～小～鱼。<br>然后小鱼说：喔 酱紫 造了！', '2017-07-14 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '小鱼', '0', '0', '2.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_C6fnOD34Q5ji2KYOxjj', null, '<img src=\"http://localhost/content/201708050002.jpg \"/>', '2017-08-05 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_c8X3hOQLg2FAmcZ9Phc', null, '曹操带儿子曹冲拜访刘备。曹操走到门口大声喊道：“曹操携幼子前来拜访！”刘备：“哎呀。来就来嘛。还带什么水果嘛”', '2017-07-14 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '历史', '默认', '0', '0', '2.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_C9N8VDOki8uGaRU1JDr', '老师让画自己喜欢的人', '<img src=\"http://localhost/content/201710130004.jpg \"/>', '2017-10-13 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_CAxV6L4YgVOByKy1Jll', null, '初中班主任出了车祸，右手骨折，来上课的第一天还吊着石膏，进班的第一句话：“没想到吧？我杨过又回来了！”', '2017-12-31 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '学校', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_CDahimJGm5dou4pkObs', null, '十六岁那年，我妈：“你要是敢早恋我给你腿打折知道么？”<br>十七岁那年，我妈：“你整天跟你那个xx同学混一块，你俩是不是同性恋啊？”<br>十八岁那年，我妈：“你上大学之后再找对象知道么？”<br>十九岁那年，我妈：“大一老实点学业为重，以后有时间打扮再找对象知道么？”<br>二十岁那年，我妈：“你怎么还没有对象？你是不是社交障碍啊？”<br>二十一岁那年，我妈：“你要是……”<br>我：“等一下，这么多年了让我说一句。”<br><br><br><br><br><br><br><br>“我毕业就出家。”', '2017-09-08 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '感情', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_CeZkTnOKlWqqFEcT5ER', null, '刚开学，新老师推门而入，一巴掌拍在讲台上，冷眼看着我们，说：“我给你们说，我这个人从来不讲天理。”<br>班上的气氛一下变得有点凝重，过了一会，他表情一遍，说：“因为我教地理。”', '2017-10-29 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '学校', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_ciJEISyBdDvI7hq5CrC', null, '<img src=\"http://localhost/content/201711050006.gif \"/>', '2017-11-05 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_CMIpv5j3BgSdVqLGcH6', null, 'A君又一次坐黑车，被交警拦下，交警怀疑是黑车，司机连忙说：“我们俩是朋友，我知道他号码。”说着便打他手机，因为A坐过他车好几次，所以互相留过号码。这时A手机响了，他拿出来，交警一看，只见手机屏幕上显示“黑车司机”。', '2017-07-14 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '租车', '0', '0', '2.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_CUG2LOXi4x5XtK5caXR', null, '激烈的战争，鲜血涂地。一位将军躺在临时救护所的手术床上，医生紧张的操作着。而边上护士的表情越来越奇怪。突然，护士掏出刀，捅向了医生，全场人都震惊了，护士带着泪水说到：医生，对不起，我是卧底，我知道你对我很好，但是，我不能让你救他，不能再让他说一句话！医生捂着伤口颤抖着说那你捅他呀捅我干啥？！？？', '2017-10-13 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '历史', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_CUjUMYZOgLLk5Rb8zvK', null, '列宁去姨妈家做客，不小心碰倒一个花瓶，正好姨妈进来，看到地上的碎片，心疼的说：“碎了哦。”“晚安。”列宁懂事的回道。<br>', '2017-12-17 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_cVujA9AXwdd3WTBgBeC', '音乐评论', '<img src=\"http://localhost/content/201708110004.jpg \"/>', '2017-08-11 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '音乐', '评论', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_cXadtR0NRHiuAJ96eIf', null, '梦见高考，教育部搞活动，高考分满600减300，结果我考了599分，成了状元！', '2017-12-31 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '学校', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_dcNrj5GPPA4VdEhTK4N', '坚定的翻译', '<img src=\"http://localhost/content/201708180001.jpg \"/>', '2017-08-18 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '学校', '翻译', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_dfmBZ63arl1vNxFgDLb', null, '<img src=\"http://localhost/content/201712310004.jpg \"/>', '2017-12-31 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_dkgkqXya372y1RERCpc', null, '<img src=\"http://localhost/content/201712310005.jpg \"/>', '2017-12-31 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_DqIOMGhkGn5l2GxDkTN', null, '<img src=\"http://localhost/content/201707080002.jpg \"/>', '2017-07-08 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', 'IT', '默认', '0', '0', '2.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_e2tA304xT9NauPIHyue', null, '<img src=\"http://localhost/content/201709080001.jpg \"/>', '2017-09-08 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '学校', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_efn2dnTsjdyxefqV6q5', null, '<img src=\"http://localhost/content/201710200002.jpg \"/>', '2017-10-20 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_EFyaSuSEdz0nVhwYWYb', '一首短诗', '《吵架》<br>她生气了<br>夺门而出<br>我冲到楼下拦住她<br>把门夺了回来', '2017-07-28 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '感情', '短诗', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_fhPcLZgb6ndz1sPbutV', null, '老师这个职业吧，说的形象点就是每天带着学生在知识的海洋里畅游。畅游一段时间吧，你会发现：只有你一个人上岸了！！然后你还得返回，一个一个去；捞。有些吧，昨天捞上来，今天又掉下去了还得捞。在你喘息的时候，你会惊恐的发现：还！有！往！回！游！的！', '2017-10-20 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '学校', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_FkAynIMj0seW21jfZ1I', null, '看到这么多人在刷B站，我觉得有必要给那些小白普及一下网络知识，A站就是阿里巴巴（alibaba），B站就是百度（baidu）。以后千万别追着别人问B站了，显得自己无知。', '2017-07-14 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '科技', '默认', '0', '0', '2.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_fQQZrnYJi0XAp0uUgzg', null, '老妈下班带了一只烧鸡，我刚要准备吃，老妈说：“提前说好，你只能吃一块。”“啊？”我听了顿时很失落。老妈噗嗤一笑说：“傻瓜，逗你的。”老妈拿出一只鸡腿咬了一口说：“你一块都不许吃。”', '2017-10-07 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_fx27n15vRkvKZxMh6Ul', null, '<img src=\"http://localhost/content/201708180003.jpg \"/>', '2017-08-18 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_G00kjaVk2XLJ5MmdCFH', '音乐评论', '<img src=\"http://localhost/content/201707210006.jpg \"/>   <img src=\"http://localhost/content/201707210007.jpg \"/>', '2017-07-21 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '音乐', '评论', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_g2o2E0QyVSfvHGY74Hl', '论给猫咪剃毛的效果', '<img src=\"http://localhost/content/201710290004.jpg \"/>  <img src=\"http://localhost/content/201710290005.jpg \"/>', '2017-10-29 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_g7XMcMx49go2QtqLCTp', null, '<img src=\"http://localhost/content/201707140004.jpg \"/>', '2017-07-14 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '游戏', '默认', '0', '0', '2.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_gDiUhxzeGlHYrL5MEK5', null, '有一天，总监开车带我们集体去唱ktv，开着开着，突然！迎面跑来一只汪星人，我们当时就是一惊，还好总监及时踩住了刹车，那只汪星人竟然也刹住了！<br>于是我就大笑道：“哈哈，没想到狗也会刹车！”<br>后来我就不在那家公司干了。', '2017-12-31 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_GELiNAwqMbLiYEw3cGW', null, '历史老师：“我们来理一下抗日战争。首先是九一八事变，然后发生了什么？”<br>全班思考状，历史老师紧接着说道：“当然是陆振华带着依萍如萍从东北来到上海，遇到何书桓，然后有了情深深雨蒙蒙。”', '2017-10-29 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '学校', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_GfpIFrPTVhDXeNBP4Wb', null, '上午打LOL，正是激烈的时候，有一队友喊语音：“兄弟们对不起，我要回去上课了，再见。”<br>然后我们各种喷！“上个毛课啊，逃课没事的啦，打完再走嘛！”<br>然后那队友来了句：“我特么知道逃课没事，但是我特么的是老师啊！！”<br>我们沉默了。', '2017-12-24 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_gKkLJH7kN2HFnesh8li', null, '在上海的人应该都知道，上海的地铁站里会有警察检查身份证。我也被查过好几次。但是有一天，我突发奇想，想逗逗他们。那天，在人民广场地铁站，我转二号线的时候，一个警察示意我停下来，我带着惶恐的眼神，望了一下他，然后特么撒丫子就跑。他先是愣了一下，但是很快就追了上来，地铁里很多人围观，我很快被扑倒了，靠，脸重重的拍在了地板上，被手铐铐了起来！叫什么名字！我：xxxx。你跑什么？我：最近，我亚健康，医生建议我多跑步。他用逛精神病院的眼神看着我：我追你了，你还跑！我：我以为医生给了你同样的建议。', '2017-10-13 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_GRJHJJ3xo3RFcXlgYlO', null, '<img src=\"http://localhost/content/201711170007.jpg \"/> <img src=\"http://localhost/content/201711170008.jpg \"/>', '2017-11-17 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_gVZMU9leIu2LEQhve8Y', null, '有次去上课，走到教学楼门口被一位女生拦住问：“同学，某某学院的某教室怎么走？”我正好顺路，带她一起过去，路上她就告诉我，她老乡某某回家了，让她过来替上课的，balabala…。<br>我微笑点头应和，到了教室后门，她进去坐在最后一排，放好包包，整理一下头发，掏出手机放桌上，然后抬头看见了站在讲台上准备上课的老师——我。她当时的表情扭曲的极为精彩，打了一个电话之后默默的走了……', '2017-12-17 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '学校', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_gWIHGMZvaCeyN4bjR7P', null, '“我在思聪家里和马云谈生意”<br>“说人话”<br>“我在万达蹭Wi-Fi逛淘宝”', '2017-08-11 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_gyoSm6YCAqj3mqzgsUt', null, '公司开早会，领导在长篇大论，我昏昏欲睡。<br>突然，旁边的女同事用手指在我胸前猛戳。我一惊：干嘛？<br>女同事：看你进入待机状态了，我触一下屏。', '2017-12-24 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_H9J92vQZIN6pqLTRTp9', null, '养的小仓鼠生病了，不过没关系，家里有老鼠药，希望它吃过以后能好起来。', '2017-12-17 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_HiO2k9X6jObuZ832WDj', null, '军训时点名答到态度不端正被罚站墙根对着墙喊一百次‘到’。喊了一会墙塌了，伸进来一个卡车屁股，然后司机跳下车指着我鼻子‘你瞎指挥NMGB’', '2017-11-05 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '学校', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_HUPPdtJiMUdRrbcTfGX', null, '有个楚国人坐船过江，不小心把剑掉落江中，他急忙用刀在船上刻了起来。船夫奇怪地问道：“你这是干吗？” 那人答道：“剑是从这个地方掉落的，我做个记号到岸了好找。” 船夫说道：“我靠，那你至于凿那么大洞吗？都他妈漏了。”', '2017-08-25 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '历史', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_hy9Pl1ZLHEzQcip6C22', null, '地理老师高二没收了我的鬼吹灯，第二天来了以后订个黑眼圈问我：“晚上你看那个真的不会害怕吗？', '2017-11-17 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '学校', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_HYLIcwDWyVr8bc8kYxo', null, '丹妮莉丝夜半投宿，老妪：”门外是谁？”丹妮莉丝：”风暴降生丹妮莉丝，不焚者，弥林的女王，安达尔人，洛伊拿人和先民的女王，七国统治者暨全境守护者，大草海的卡丽熙，奴隶解放者，龙之母！”老妪：”走开走开！我这住不下这么多人！”', '2017-11-05 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '美剧', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_I2WLZbL6on0zsnGgeiS', null, '<img src=\"http://localhost/content/201712310002.jpg \"/>评论<img src=\"http://localhost/content/201712310003.jpg \"/>', '2017-12-31 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_I4BM8Emq6T7CkCZHqZd', null, '<img src=\"http://localhost/content/201712240001.jpg \"/>', '2017-12-24 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_i5cNxlljSC2VhLxaUWW', null, '面对群鬼汹汹，道士一边诵咒，一边用朱砂飞速在符箓上写下：“太上老君急急如律令！” 扔到半空，半天却没回应。道士拍拍脑袋，把符箓抓回来，用朱砂在“太上老君”前面又写了一个@', '2017-12-31 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '其他', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_IAX48F1a1VYr8tWLaXR', null, '有这么一对兄妹，妹妹经常从哥哥的小猪猪里拿钱出去和朋友们买买买。<br>哥哥很无奈。后来哥哥想了一个办法。<br>几天后，妹妹跑进哥哥的房间找小猪猪，但是哥哥原先放小猪猪的地方空着。妹妹很奇怪，开始在家里到处找。<br>最后妹妹终于在冰箱里找到了哥哥的存钱小猪猪。妹妹兴奋地打开小猪猪，发现里面只有一张纸条，纸条上有着这么一句话：<br>妹子啊，哥这么做就是想告诉你，哥的资金被冻结了。', '2017-12-24 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_iNaQWQGNUQAKjZYgfBL', '音乐评论', '<img src=\"http://localhost/content/201707210003.jpg \"/>', '2017-07-21 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '音乐', '评论', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_InPNeRR1TutzhK3oBK0', null, '去医院体检，医生拿着我的报告单说：幸亏你来的早啊。在我惊出一身冷汗的时候，医生不慌不忙的说：再晚点，我就下班了。。。', '2017-10-13 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_iSZXAYJljM50bvxyzw1', null, '超市结账时，一个大妈冲向一个柜台，一边招呼身后推车的大爷：“快来快来，这排就一个人......”同在那柜台排队的男人转身看了大妈一眼，大妈有对老头叫道：“弄错了弄错了，不止一个，这小伙子太胖刚全挡住了......”', '2017-07-21 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '超市', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_IVDaTfi1Up1I9Q0JQ3W', null, '有个哥们儿是奇葩，记得初中上学那会，中午午休的时候那哥们在厕所抽烟。哥们儿还有最后一口，他猛嘬了一下，突然教导主任进来了。看见我俩靠着窗户，问到：“你俩干嘛呢？”我惊慌了转头看向我的哥们，他的表现我至今难忘！他从鼻子里冒出了好多烟，说到：“我在生气。”', '2017-07-14 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '学校', '初中', '0', '0', '2.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_ivf6NhKoljo1gjv4SYv', '朋友说一天只吃一个饺子…', '<img src=\"http://localhost/content/201709080002.gif \"/>', '2017-09-08 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_iz2xcKaSsVBGaPU3wnm', null, '北方就要下雪了❄️是时候给大家普及一下雪花的科学知识了<br>雪花主要分三种<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>一种是勇闯天涯<br><br>一种是纯生<br><br>还有一种是麦香……', '2017-12-31 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_jBsPKIr4h8up8bpGXMB', null, '<img src=\"http://localhost/content/201707280001.jpg \"/>', '2017-07-28 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活，学校', '论文', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_JhPQTUtiT6zt7WmZigm', '网购奇遇', '<img src=\"http://localhost/content/201707140003.jpg \"/>', '2017-07-14 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '网购', '0', '0', '2.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_jJeH5QRYpyA4mXwcIvs', null, '北冥有鱼，其名为鲲，鲲之大，一锅炖不下。', '2017-12-31 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '其他', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_JJYa0QTCOC2zgkKu6Z0', '游乐园和水上游乐园的区别：', '游乐园：啊啊啊啊啊啊啊啊———啊啊啊哦哦哦哦哦卧槽卧槽卧槽卧槽卧槽卧槽卧槽卧槽卧槽卧槽啊啊啊啊啊啊啊啊！！<br>水上游乐园：啊啊啊啊…咕噜咕噜咕噜咕噜咕噜咳咳呸呸呸呸…啊啊啊咕噜咕噜咕噜咕噜咳咳咳咳呸呸呸呸噗噗噗呸………嗝…', '2017-07-08 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '2.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_JlvtMXOwRJbr9Fr5HOB', null, '排队买饭，前面是一个文文弱弱的女生，低头玩手机呢。我趁周围人不备，迅速窜到她前面，还故意甩了甩餐盘上的水，成功引起她注意。<br>女生：同学，你是不是插队了。<br>我：大妹子谢谢你！我已经一个月没跟女生说话了。', '2017-12-24 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_Jo7OYt40KJyepDmYD62', null, '<img src=\"http://localhost/content/201708050004.jpg \"/> 然后...<img src=\"http://localhost/content/201708050005.jpg \"/>', '2017-08-05 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '工作', '对话', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_JovGWFqm1NSwjAR8qCs', '音乐评论', '<img src=\"http://localhost/content/201710130001.jpg \"/>', '2017-10-13 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_jQhYKU8PtVyYY7t8cFW', null, '<img src=\"http://localhost/content/201712310008.jpg \"/>', '2017-12-31 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '其他', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_jreAozMQdKZjRsIr5o2', null, '“我胖了！”“我也胖了！”——两个瘦子。 “你瘦啦！”“你也瘦啦！”——两个胖子。', '2017-10-07 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_JV9OA4Fyu0yiN4KfkOm', null, '一男子在海边捡到盏神灯，踩扁后，丢进了蛇皮袋。', '2017-07-14 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '其他', '默认', '0', '0', '2.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_k0MlVMvWjTBS52jU3T2', null, '今天老板让我去别的公司收欠款，到那边写字楼出了电梯后，发现大门紧闭，人去屋空，连对方公司招牌也没了！我赶紧给老板打电话，报告这一情况。<br>最后，两边老板通了电话后，共同确认，是我走错楼层了。。。', '2017-12-31 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '工作', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_K3GA5SPcpUomtMwbiNm', null, '晚上十点多，从楼上传来一个女人的咆哮声：“什么关系？啊！什么关系？！说！到底什么关系？”<br>我那颗八卦的心疯狂的跳跃起来，趴到窗户上支起耳朵认真的听着下文。<br>女人继续气愤地喊到：“互为相反数啊！？！%￥#＆*……”<br>我默默的关上了窗户。。。', '2017-12-31 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_k82veXcApuoKOCSgWtm', null, '有个卖盾和矛的楚国人，夸他的盾说：“我的盾坚固无比，任何锋利的东西都穿不透它。”又夸耀自己的矛说：“我的矛锋利极了，什么坚固的东西都能刺穿。”路人问他：“用您的矛来刺您的盾，结果会怎么样呢？”那人不知道怎么回答。就走到路人跟前一矛将其扎死，说道：就TM你话多。', '2017-08-18 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '历史', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_KigMCPx758QeyzLtgct', null, '现在的人活得太累了，没有诗意。跟uber司机说我在一朵像小象的云下面等他，他居然骂我神经病。<img src=\"http://localhost/content/201707080001.jpg \"/>', '2017-07-08 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '租车', '0', '0', '2.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_KNYgkDCy7dBHIHsnErA', null, '<img src=\"http://localhost/content/201707280003.jpg \"/>', '2017-07-28 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_kOuJVuIDPEvoCw9J5Mk', null, '除夕夜，春晚主持人突然踉踉跄跄跑上台，惊慌失色道： 别他妈演了，外面有个毛脸雷公嘴的和尚打进来了…', '2017-12-17 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_kQjEdjQrNyHADZA8wGj', null, '孟婆舀了一勺汤，尝了一口满意地笑了…… 孟婆舀了一勺汤，尝了一口满意地笑了…… 孟婆舀了一勺汤，尝了一口满意地笑了…… 孟婆舀了一勺汤，尝了一口满意地笑了…… 孟婆舀了一勺汤，尝了一口满意地笑了……', '2017-07-08 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '其他', '默认', '0', '0', '2.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_l0QBHyFG9MOl6ruUdA9', null, '昨天和女朋友吵了一架，今天一早进会议室，当着所有领导同事的面，从电脑包里掏出了一个电磁炉', '2017-12-31 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_l634xtSBbLWczRLmLU4', null, '<img src=\"http://localhost/content/201710200004.jpg \"/>', '2017-10-20 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', 'IT', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_lhl2m4CXjCKtQhpX4Kn', null, '表白其实并不是一件好事<br>因为<br>显得手黑', '2017-08-11 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_Ln3KtN5muNUY4uMyhBj', null, '有次我回到停车场，发现车的保险杠和后灯都撞坏了，然后挡风玻璃的雨刷下面有张纸。上面写的是：<br>　我不小心刹车踩晚了，撞到你的车。<br>　当时有不少人看到了。<br>　他们以为我是在留我的联系方式。<br>　才怪。', '2017-10-13 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_LrSdR8biQCoqWOfUxMj', null, '大学毕业的时候，答辩看到一个致谢：“最后，要感谢我的女朋友，在我22年的生命中始终没有出现过，让我得以专心于学业，顺利完成毕业论文。”', '2017-07-21 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '学校', '大学，论文', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_lXIMQnuBrvMSnIqBGdb', null, '放学和同桌约LOL，他一手提着书包一手提着垃圾袋跑的那个欢啊，直到晚上回家才发现他是把书包给扔了。', '2017-07-28 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '学校', '小学，游戏', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_M2ttfRxPIpOif8uSlml', null, '半夜在书房赶稿。老婆又来了。<br>鉴于前几次深夜卧谈，我的智商被屡次吊打，于是我开门见山：“夫妻一场，这些年，我没有功劳也有苦劳，您有事直说。”<br>老婆微笑：“没事就不能给你按按肩？”<br>她开始给我按肩。<br>“我的手艺，跟水疗会所的小妹比，哪个好？”<br>（这个坑太简单，我会跳？）<br>“不知道，我没按过肩。”<br>“不按肩，那按哪里？”<br>“我是说我没去过那种地方。”<br>“那你打火机上的怎么印着什么什么休闲会所？” 她迅速把桌上的打火机捏在手里问我。<br>这个问题，我防不胜防。<br>我估计她早就看到了打火机，但她不直接问，而是从按肩开始切入话题。<br>温水煮青蛙，察言观色。<br>女人，可怕。<br>“打火机应该是李建军的，上次跟他吃饭顺手拿他的。没想到他是这种经常去会所的人。”<br>我也算是老江湖，凡是说不清的问题，我都把脏水泼在李建军身上。<br>老婆：“你跟李建军也算朋友吧？”<br>“当然。”<br>“李建军知道你这么坑他吗？”老婆伸出右手，亮出打火机，“这就是个普通火机，上面根本没写什么休闲会所。怎么变成李建军从会所拿的了？”<br>原来是诈我。<br>她根本就没看到那个打火机。<br>“这个…“我一时反应不过来。<br>“你长进了，撒谎不眨眼。”<br>“我也就随口说了一种可能性。”<br>“那你也不能坑人家李建军。他真的经常去那种会所？我告诉他老婆去。”<br>“没有，开玩笑的，他从来不去。”<br>“那就好，如果你身边有去这种地方的朋友，建议不要来往。”<br>我松了一口气：”当然。我就说嘛，咱们家怎么可能会出现这种打火机。“<br>“是吗？那，这个打火机又是哪里来的呢？” 她伸出左手，亮出一个打火机，上面赫然写着XX休闲会所。”<br>我彻底懵逼。<br>我先把朋友当挡箭牌，随后发现虚惊一场，接着又把朋友洗白。<br>当我以为危机已经结束，没想到才刚开始。<br>这局牌还没打，我已经扔掉了王炸。<br>有些坑，越填越深。那我只能不填。<br>还剩最后一招：死不承认。<br>“我不知道。”<br>“不知道？”老婆这句话带着杀气。<br>“你相信我会去那种地方吗？我花35块钱在咖啡店坐1个小时都觉得贵，又怎么舍得花几千块去做那5分钟的事？” 我自黑。<br>“过分了啊，夸自己也得有个限度，你哪有5分钟啊？”她补刀。<br>我点烟。沉默。<br>“你无权保持沉默。”<br>这时电话响了，是李建军。<br>“外放。“老婆说。<br>电话接通，李建军在电话里说：“我有个打火机不见了，上面写着XX休闲会所的，是不是在你那？”<br>我：“是是是。在我这里！”<br>李建军：“太好了，我还以为丢在我家里，如果被我老婆发现就惨了。”<br>我得意的看着老婆，我的眼神在说：看到了吧，这个打火机真的是李建军的！<br>李建军又说了一句：“咱们下次再去，千万别再拿店里的打火机。”<br>啪，电话挂了。<br>我知道，我也快挂了。', '2017-12-31 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_M4jAMUplkfmLcrkoMy4', null, '乌龟生病了，蜗牛说：你好好在家躺着，我去给你买药。<br>乌龟躺了一星期了，蜗牛还没回来，乌龟就急了：蜗牛太不够意思了！他肯定去别处玩了！<br>门外突然传来蜗牛的声音：你再骂我，我就TM的不去了', '2017-08-25 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_MDo8sBJgiOpjNKIOlig', null, '在学校犯错误，老师让把家长叫来，我说家长不在，舅舅可以吗？老师说行。于是第二天，我背着我三岁的舅舅踏上了不归路…', '2017-12-17 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '学校', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_mfztBCTUtIM7hGptaT0', null, '<img src=\"http://localhost/content/201711170004.jpg \"/>', '2017-11-17 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_MMj7uNjXXQSXkzt6iSn', '好好学习系列', '<img src=\"http://localhost/content/201707210004.jpg \"/>', '2017-07-21 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '学校', '高中', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_MSaKzUFYodNtZ1TySLL', null, '我妈最近被洗脑了，非得要我花三万块钱给买一个保健床。我仔细研究后从医学的原理解释给她听，可谓是有理有据，根本无法反驳。完事了我说：妈你明白了吗？我妈叹了一口气说：明白了，他们都是骗人的，说什么养儿防老真的是骗人的。', '2017-10-07 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '感情', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_MSEWjY37svvtAo2jBYh', null, '你让我滚，好，我滚了。但你要是想让我再滚回来，呵呵，没问题！', '2017-10-07 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_MtYEOpVxglE6cxgEq9y', null, '“大夫您好，您看我应该挂哪个科啊？““你哪不舒服？““我没有不舒服，健康得很”“那你哪科都不挂啊！”“谢谢您！”我就是明天要考试了，来听一句祝福。”', '2017-07-21 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '学校', '大学，挂科', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_n0q5JqaTbNrXOyzeVV2', null, 'A：你有时间简史吗？<br>B：神经病！！！我有时间也不捡屎！！', '2017-07-08 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '对话', '0', '0', '2.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_N3wETbR2DKwiUtw5nbl', null, '有一次小学考试填空：成也（），败也（），很多人包括我都填的风云。', '2017-07-28 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '学校', '小学，考试', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_n8lQFZhRzfEj6hR4c5e', null, '今天坐电梯，电梯上一个人打开一包巧克力，每个人分一个，没给我，我就伸手要了一个，他愣了一会给了我一个，到了5楼，他们都下了，我才知道他们原来都认识，哎呀卧槽！我竟然伸手要了一个！', '2017-12-17 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_n8ntsJMxnlhoI0mLeNY', null, '有一次爸爸的朋友们聚会，大家都带了老婆孩子。一大桌子人热热闹闹，还有好几个小朋友一起边吃边玩，本来开开心心的。<br>然后不知哪个叔叔，忽然提出来：<br>“你们这些小孩子，给大家一人表演一个节目吧！”<br>桌上其他长辈也开始附和这个提议，等着看我们这群小朋友表演。<br>我慌得不行，我根本没什么才艺吖，不会跳舞，唱歌也不好听，乐器什么的更别提了，就算会一两样也没法在饭桌上表演。<br>本来好好的心情一下子没了，而其他小朋友并不以为意。<br>第一个小朋友站起来，唱了一首歌，长辈们都夸他唱得真好。<br>第二个小朋友站起来，跳了一段舞，长辈们都夸她跳得真好。<br>第三个小朋友站起来，背诵了一首诗歌，长辈们都夸他真有知识。<br>接下来，大家都目光都转向了我。<br>轮到我了。<br>我一边站起来，一边在脑内快速检索着我能表演什么，小心脏扑通扑通跳。<br>扫视一下四周，几个小朋友都一脸骄傲地看着我，我爸妈也是满满期待的眼神。<br>我不能输！！！！！<br>忽然间，灵光一闪：<br>“接下来我给大家表演个节目——<br><br><br><br><br><br><br><br><br><br>吃肉！”<br>说完拿起筷子夹起了面前的一块肉，吃了。<br>再夹起一块，又吃了，再夹起一块……<br><br>几个小朋友的表情变了，<br>他们再也不骄傲了，<br>看着我快把肉吃完了，<br>一个个快急哭了都。<br><br>这还没完。<br><br>一个小朋友忽然喊了一声：<br>“柱柱这个不算！！”<br>啊？不算？我表演得这么卖力你说不算？！<br>长辈们居然也应和：<br>“柱柱你再表演一个别的。”<br>没办法，我只好在众目睽睽之下，<br><br><br><br><br><br><br><br>又做了一节眼保健操<br><br><br>吃完这顿饭回家以后，我爸天天逼我背诗。', '2017-09-08 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '感情，生活，工作', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_NcG2Bjr6Ie8lJWlPaNy', null, '前段时间去看三生三世十里桃花<br>其中有一段是男主女主亲密。看他们两个互相缠绕在一起，四瓣嘴唇紧紧贴着对方，享受着，渐渐衣衫滑落，露出雪白的肌肤，男主俯身一翻，女主被压在床上，恰到情意正浓之时。<br><br>安静的电影院里一个小男孩突然大叫一声<br><br>“为什么不让我看，又不恐怖！！！”', '2017-09-08 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '电影', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_NCq16GkH9eWzHdktnHe', null, '初中时候周杰伦是我偶像，当时我每本课本都写满了“周杰伦”的名字，有一次我爸翻了我的那些课本，然后眼角闪着泪光，语气深沉的对我说：孩子啊，如果是跟学习有关的书，爸爸给你买，不用每本都跟周杰伦借。', '2017-10-07 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '学校', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_nQOCY7YpK5YRmIT9PSy', null, 'A和B的车相撞。A下来看了看，觉得车没多大问题，说算了吧。B也笑着说没什么问题，顺手从车上取出一瓶二锅头。<br>B：大哥，车没什么大问题，喝点酒压压惊吧！A接过酒喝了一大口，递给B。<br>A：大哥，你也来点吧。<br>B：我不急，等警察来了看过以后我再喝。', '2017-08-18 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '交通', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_O4Zeiv4ApkxpxCNUYbV', null, '<img src=\"http://localhost/content/201707210005.jpg \"/>', '2017-07-21 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '快递', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_O9frbuBkIraAavLeD3w', null, '印度两摩托车相撞<br>70余人受伤', '2017-08-11 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '外国', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_OFW1okaZ7F6vYuiVNft', null, '天冷了，各位朋友开车前一定要注意鸣两下喇叭，不要压到车底下的小猫小狗，还有阿杜。', '2017-12-31 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '其他', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_oMKIXlLlR7NijnBlwPc', null, '请你仔细看这个“片”字，仔细看，认真看，是不是很像奥特曼打怪兽时候的样子。', '2017-07-08 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '其他', '默认', '0', '0', '2.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_oVEosmFYcY7owKBpUZO', null, '—“喜欢小动物吗？”<br>—“当然喜欢。”<br>—“喜欢到什么程度？”<br>—“这怎么说呢…顿顿都有吧！”', '2017-12-17 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_oYoSmtKcT1Cuqsz2gnG', null, '我有个同事，人特别的逗比。 <br>今年终于找到了男朋友，美国人。 <br>有一次公司聚餐的时候她带了男朋友一起参加。<br>聚餐开始之前，她对男朋友说，<br>“Jack，做个自我介绍”。 <br>她男朋友立即站了起来，像念书一样字正腔圆的说。<br>“大家好，我是帝国主义纸老虎，我叫Jack” <br>当场我们都笑趴了，我怀疑她男朋友自己都不知道说的是什么意思。<br>上个月她工资被扣了一半。 <br>因为她手机丢了，<br>心大，手机没有设置密码好像。<br>捡到手机的人打电话给了公司老板，<br>张口就说“你妈的手机我捡到了，来拿吧”。 <br>老板问为什么打电话给他，<br>那个人说手机通讯录里这个号码上写的是”儿子”。 <br>HHHH。。。', '2017-09-08 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '感情，生活，工作', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_oZNAYHjyEbaIUZu2bow', null, '冬天到了，教大家一个生活小窍门：大衣容易沾油污，一般洗衣液什么的很难洗干净，不少人为此感到头疼。<br>其实呢，不妨在洗的时候吃点头痛药，头就没那么疼了…', '2017-12-17 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_p2sGCwovRCY3H9C2pEN', null, '“你喜欢什么样的男人？”<br>“我喜欢笑起来会发光的男人。”<br>“你是说如来吗…”', '2017-12-17 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_pB0FW8gvv1EwvddOo89', null, '带女朋友去鬼屋，她被一个女鬼吓得尖叫着扑到我怀里，我说别哭啊，这是门口的镜子，咱们还没进去呢', '2017-10-07 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '感情', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_pJ5KDX9knNcXPXLVmhW', '音乐评论', '<img src=\"http://localhost/content/201707210002.jpg \"/>', '2017-07-21 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '音乐', '评论', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_PjTIf4g2dbhkVwMuVBs', null, '<img src=\"http://localhost/content/201711170001.jpg \"/>', '2017-11-17 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_Pq0sxkgIAVQkRXBX77y', null, '女朋友也是程序员，今天给我发过来一个问题：说这个bug咋解决。<br>我一看错误信息，应该是差一个jar包。<br>我就回答：这不是差一个包吗<br>女朋友说：你也知道差一个包啊<br>双十一要来了，我仿佛明白了什么。', '2017-11-17 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', 'IT', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_pQU3bRN9kD5Sy6Hq1B5', null, '有一天去小姨家作客，陪小妹妹弹琴，弹到一半她突然站起身来对我说了句「你好」，然后「噗」地放了个响屁。我就愣了，事后问小姨。小姨如是说：有一天我跟你妹妹在一起，她冷不丁放了个屁，我就说她「你倒是打声招呼啊」。从此，她放屁之前就记得说你好了。', '2017-12-17 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_pRJ7abVEBhmitXmfOod', null, '我想喝个烂醉之后再打个电话给你告诉你：我真的很喜欢你！真的离不开你！可惜老子根本喝不醉！ 哈哈哈！满上！满上！哈哈哈！给老子满上 ，哈哈哈哈哈哈哈！', '2017-12-17 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_psEqCWQ6vhTmO8FMSIx', null, '荆轲到了咸阳准备刺杀秦王，在秦王面前荆轲把一卷地图慢慢打开，藏在里面的一把匕首在最后露了出来，秦王一见惊的跳了起来，荆轲连忙抓起匕首，在桌面上刻了一个“早”字，从此再也没有迟到过。', '2017-10-07 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '历史', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_pZeEI9AvgojO7nViXjP', null, '过年在家里的时候<br>想去剃个头发<br>遭到以我妈为首的众亲戚极力反对<br>说是正月剃头死舅舅<br>我急眼了脱口而出<br>如果这样那沉香救母还学什么法术<br>正月里剃个头就把二郎神收拾了<br>众人一脸懵逼', '2017-11-17 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_QfhOoQKfIIfpa4aTXWF', null, '<img src=\"http://localhost/content/201711170003.jpg \"/>', '2017-11-17 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_qgrqSM7vBrnfBRkBNTE', null, '老板从办公室出来，冲着我们一群人问到，“印尼在哪里？”我这么优秀的员工当然不会放弃表现自己的机会，立刻回答到：“在东南亚啊！”这一瞬间真想为自己的机智点赞，但我看到老板脸抽搐了一下，正当我疑惑不解的时候，财务立马站起来说：“周总，印泥在我抽屉，我拿给你”', '2017-08-18 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '工作', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_QPouOnFuhfxmf0pFxeD', null, '一个人在家看书，突然有人敲门，他一开门，看到一只特别小个的蜗牛，蜗牛说：请问我可以进去休息一下吗？<br>那个人说：不行，然后一脚把蜗牛踹飞了。<br>过了五十年，这个人在家看书的时候门又响了，他一开门，是一只人脑袋那么大的蜗牛，蜗牛说：你他妈踹我干嘛！', '2017-07-08 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '蜗牛', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_QRB2d28hklWHiRBLKUO', null, '某日A参加了为期两个月的炒股大赛，开赛后由于一直没搞明白怎样进行买入和卖出，未进行一次成功的交易，今天比赛结束，最终A以收益率0的成绩获得冠军…', '2017-07-08 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '股票', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_qtOmbwxi9wVz6jWHItk', null, '有次期末考试，有道填空题，问李清照是___派的词人，lz实在不知道就写了个武当派，卷子发下来的时候老师说有个学生的答案必须得请他家长来看看，我想我完蛋了，结果是同桌被请家长了，因为他的答案是＂蛋黄派＂！', '2017-10-07 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '学校', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_QuRxj5QtyugUTApNlpR', null, '我爸打电话来问：你还好吧？我说：好啊怎么了？他说：我收到一条短信说儿子被绑架了，要在3天内凑够20万打过去不然就撕票。我安抚父亲道：爸，这些骗子短信太多了，你以后理都别理，什么时候收到的嘛？我爸：上个月。', '2017-08-25 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '感情', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_RBkQtbVzjmjmJh65nFN', '中国热', '<img src=\"http://localhost/content/201707140002.jpg \"/>', '2017-07-14 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '天气热', '0', '0', '2.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_Rbs8D9sW9hKnAxzf9Bi', null, '三年前我加入了一个300人的单身群，我们约好谁结婚了就退群，今天偶然发现我TM成群主了。', '2017-07-14 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '感情', '默认', '0', '0', '2.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_rUpUwJxFEyK4MBiKiGe', null, '<img src=\"http://localhost/content/201712310007.jpg \"/>', '2017-12-31 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_rX6MVUGYzGoGRWFNjjp', null, '<img src=\"http://localhost/content/201710130002.jpg \"/>', '2017-10-13 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_RxCHMvgcGKDsp8i6ZM5', null, '“老板，我昨天在你这里买的含羞草，回家之后碰它它怎么不合上叶子呢？”<br>“您好先生，您买的这盆含羞草可能不要脸。”', '2017-12-17 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_s2xBF8o2HmtxYS1yXTA', null, '<img src=\"http://localhost/content/201711050004.jpg \"/>', '2017-11-05 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_s4MB6bl6DMMHtEwaShc', null, '<img src=\"http://localhost/content/201710290001.jpg \"/>', '2017-10-29 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_s6QuCiUuzARPejmIt8u', null, '<img src=\"http://localhost/content/201711170005.jpg \"/> <img src=\"http://localhost/content/201711170006.jpg \"/>', '2017-11-17 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_SaJf5xjpFa3VPKaut8x', null, 'Q：一只兔子和一只跑得很快的乌龟赛跑，猜一猜谁赢拉？ <br>A：兔子~~ <br>Q：错~！是乌龟拉，前面有说是一只跑很快的乌龟，跑很快噢~~ <br>Q：兔子不甘心，又和一只戴了墨镜的乌龟比赛跑步，这次谁赢拉？ <br>A：恩。。兔子吧 <br>Q：错~~！那只乌龟把墨镜一摘，也！又是刚才那只跑很快的乌龟噢^O^', '2017-12-17 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_sAufisRkMx5g0Mn30CO', null, '<img src=\"http://localhost/content/201711050001.jpg \"/>', '2017-11-05 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_SBlBVFnJj1mmZzvc1G2', null, '<img src=\"http://localhost/content/201708050006.jpg \"/>', '2017-08-05 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '套路', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_SfAtXxdmLNF2b1DWiu4', null, '有个朋友追女朋友，每天早上一包心形饼干和牛奶，坚持不懈，有一天终于的手。一天早上他又带着心形饼干去看女朋友，女友就问：“你这饼干哪买的？我去了好多超市就是买不到这种形状的。”他自豪道：\"那当然找不到拉，这是我啃出来的！“', '2017-08-18 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '感情', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_SifLO1rJzO1iieuVeYM', null, '<img src=\"http://localhost/content/201712310001.jpg \"/>', '2017-12-31 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_SlyP65VDeHBLOEgGRtA', null, '老是点外卖，每次都同一个小哥送的。有一次，小哥递给鸡排饭后语重心长的对我说，我辞职了，你以后也少吃点，这两年我是看着你长肥的…', '2017-08-11 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '外卖', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_SQwPI6UwapvaHipBtWb', null, '<img src=\"http://localhost/content/201708050003.jpg \"/>', '2017-08-05 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '感情', '对话', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_SwsM1Haw1jz3LLtqA73', null, '现在的人活得太累了，没有诗意。跟uber司机说我在一朵像小象的云下面等他，他居然骂我神经病。<img src=\"http://localhost/content/201707080001.jpg \"/>', '2017-07-08 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '租车', '0', '0', '2.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_Tk35SQowTU9S0RA3BcF', null, '<img src=\"http://localhost/content/201708180002.jpg \"/>', '2017-08-18 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_tOCasc5sHjC9SUQWSYY', null, '<img src=\"http://localhost/content/201708110003.jpg \"/>', '2017-08-11 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', 'IT', '招聘', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_TwIoxU9s5IALEVu2UVC', null, '有一天，小金鱼游回了家，喊道<br>“妈妈妈妈，为什么负数会存在呢？”<br>只见金鱼妈妈放下了手里的工作，拿起了三根刚捉的小虫。<br>“别急，你看，我把三根小虫左右分成一根和两根，那么左边的小虫比右边的小虫少几根呢？”<br><br>“少一根。”小金鱼急忙回答道。<br><br>“那左边的小虫的左边有几根小虫呢？”<br><br>“没有小虫，所以是0根，”小金鱼回答道，“我知道了妈妈，你是想说0，1，2构成了等差数列吗？”<br><br>金鱼妈妈想了想说，“不，我想说，0，1，2是模3的剩余类。”<br><br>小金鱼说，“可是妈妈，这跟负数有什么关系呢？”<br><br>金鱼妈妈突然很慌张，“你怎么还记得你刚问了什么？！”', '2017-09-08 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_tz9gZD5aKPsvAAV5tGb', null, '地铁上有两个挨着的空座，我上去坐了一个，另一个被一对情侣中的女生坐了。结果女生拉着男朋友的手说:“我本来想让你坐我旁边的…”男生说:“乖，等她下去我就和你一起坐”OK，我非得坐到你俩先下车不可。', '2017-10-20 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_U5Szx1JHQyT3A1fdEUG', null, '小学三年级以前念的是蒙汉分班的学校，斗争非常激烈，课间摔起跤来汉族班都是靠我撑着才不会全军覆没。转学的时候填户口才知道自己其实是蒙古族，那是一个夏日午后，十岁的我体会了契丹人萧峰的痛。', '2017-12-31 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '学校', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_uC3bKK19wX3iXJLgepc', null, '一女生因上课迟到被罚操场跑圈，不料天下起雨，女生只得淋雨跑步。这是一个男生撑着伞到她身边一同跑步，并把伞移到女生头顶。女生认出男生已经在一旁注视她好久，瞬间脸就红了，低声不好意思说：“对不起，我有男朋友了……”男生低头沉思了一下，深情地对女生说：“要吗？这伞十块……..\"', '2017-08-05 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '学校', '高中', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_UD61O9TEuiqpwND4Aud', null, '<img src=\"http://localhost/content/201710200001.jpg \"/>', '2017-10-20 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_uKwYhvRNRQSS44xO45B', null, '刚才去餐厅吃饭,看到旁边桌来了一对男女，女生气冲冲地坐下说: “你说吧，你刚刚错在哪里了？” 男生一脸严肃地说：“你说的这是什么话！难道我没错就不能被你骂了吗？” 路人甲的我一脸震惊的看着那男的：”嗯？？？”', '2017-12-31 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '感情', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_uleytI760DEqJdnaVAp', null, '一天，克林顿的妻子希拉里被带去见上帝，她发现在上帝的客厅里挂着许多表，而且这些表有的走得快，有的走得慢。于是她就问上帝的仆人：“为何上帝要收集这么多表？而且这些表走得还不一样快？”上帝的仆人说道：“这些表代表着人的生命，世界上每一个人都有一块这样的表，如果他的外遇多，他的表走得就快，没有外遇表走得就慢。”<br>　　希拉里听完后向四周看了看又说道：“为何没看见我丈夫克林顿的表？”<br>　　上帝的仆人说：“你丈夫的表被上帝拿到办公室当电风扇去了！”', '2017-12-24 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_UpvfW5Frp4YQUJRHhG0', '见证一个家庭的诞生', '<img src=\"http://localhost/content/201710070001.jpg \"/>', '2017-10-07 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '游戏', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_uwzfl77hvY4cK23dOLR', null, '小时候，每次爸爸妈妈在我面前说完脏话，都会转身告诉我说那是英语。直到上学后，我永远不会忘记第一天上课的时候老师问的那句“谁会讲英语呀？”', '2017-08-25 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活，感情', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_Vb0hGng3vUiCmVIKXUW', null, '“吴先生，快递给你妈妈签收了噢！”<br>“嗯，知道了”<br>“顺便说一下，要不你把收件名改了呗，刚才跟你妈说吴日鸟的快递，你妈看我的眼神都变了…”<br>“大哥我叫吴鸣”', '2017-07-28 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '快递', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_veQC7txFalX9eTeIBM0', null, '今天一宿舍哥们吼：“我不是亲生的！”我们问为啥。宿舍哥们说：“我刚才进我妈空间需要密码，问题是我儿子名字叫什么，我输入自己的名字，结果显示密码错误。。<br>神回复：你家养狗吗，什么名字？', '2017-12-31 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '学校', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_VQ2X7j608TQPA3QbeN6', null, '化学老师：“你过来闻一下”<br>我：“好刺鼻啊”<br>化学老师：“嗯，这个液体有毒，以后不要闻了”', '2017-10-29 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '学校', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_VU8bF5awn2wnV3LT8ds', '音乐评论', '<img src=\"http://localhost/content/201707280005.jpg \"/>', '2017-07-28 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '音乐', '评论', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_WBFi4H1QWcKqiIL73mc', null, '去年清明，一家人去上坟，大姑家17岁的表弟突然抽抽了两下，然后低沉的笑了两声，说道：都来了，算你们还有点孝心。。。接着快速蹲下，拿起贡品就吃。二姑家15岁的表妹直接吓哭，大姑父率先反应过来，上去就给了表弟一鞭腿两耳光，那年的清明，细雨纷纷，大姑父愣是拦着上去劝的众亲戚，看着表弟流着泪磕完100个头才让他下山。。。。', '2017-08-25 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '熊孩子', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_WeFW8Z1f6FPuzin0UNE', null, '<img src=\"http://localhost/content/201711050003.jpg \"/>', '2017-11-05 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_WJUcdEDhdeOFm5ErP8r', '短诗', '<img src=\"http://localhost/content/201710290007.jpg \"/>', '2017-10-29 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_Wnr0Gjw2EvAyFP4kbwA', null, '<img src=\"http://localhost/content/201708110002.jpg \"/>', '2017-08-11 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', 'IT', '地铁', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_WrYtCjJGkILL1RRogsu', null, '<img src=\"http://localhost/content/201710130005.jpg \"/>   <img src=\"http://localhost/content/201710130006.jpg \"/>', '2017-10-13 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_wS3RsuquVCPukYHGtdj', null, '高铁上，一位中国大妈坐在一位外国小伙旁边。漫长的旅途百无聊赖，大妈正好也懂几句英文，于是就问外国小伙：“Do you know An Li?”正好小伙中文说的很好，听到这个问题马上激动地说：“知道知道，我是他的超级粉丝，他的电影我全都看过！”于是大妈跟小伙相谈甚欢，从“卧虎藏龙”到“断背山”，从“少年Pi的奇幻漂流”到“比利林恩的中场战事”，一直聊到小伙到站下车。<br>哦，对了，小伙下车前还从大妈这里买走了一千多块的安利产品。<img src=\"http://localhost/content/201707210001.jpg \"/>', '2017-07-21 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '电影', '李安，安利', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_WUs0Ko5H98yNrbFjFKl', null, '今天去公司面试，把简历递给面试官后，面试官很认真的看了一遍我的简历，问我：你的简历上写的你的特长是心算速度非常快，那我测验一下你。我说：好，尽管出题。面试官：189*123等于多少？我瞬间回复：120，面试官：你这算的根本不对啊，我看着他说：你就说算的快不快吧！', '2017-12-31 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '工作', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_Wxh4eswolwyi3YUcMeU', null, '那年成都公交车自燃，也是一个幸存者大爷，记者MM采访他<br>记者:车上有锤子吗？<br>大爷:有个锤子！<br>记者:有锤子为什么不砸呢？<br>大爷:有个锤子的锤子！', '2017-09-08 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '方言', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_x4O0lq2IjMp2Rgz5VLN', null, '在银行柜台工作，前几天比较空的时候，下午窗口没人。有个小孩儿趴在我柜台上玩笔，玩着玩着抬起头，伸手戳玻璃，眨着水汪汪的大眼睛问我：“你为什么被关起来了？”我笑着对他说：“因为姐姐不好好读书。”他瘪瘪嘴：“你骗人。”我说：“真的，没骗你。”他摇头，很认真的反驳我：“你就是骗人，你明明是阿姨。”（来自微信用户hongshunlee投稿）', '2017-11-17 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_xMh74y9d7DSMWJm6lZa', null, '从前有座山，山里有座庙，庙里有个老和尚，长得真是俏，俏也不争春，只把春来报，待到山花烂漫时，他在丛中笑。', '2017-12-31 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '感情', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_xsp6Wi5ICEeiomBZL8v', null, '妈妈对女儿说：“女儿啊，早上看到你发了条微博抱怨卡里没钱了，已给你转了。”“谢谢妈妈，可是钱怎么还没到账呢？”“什么到账？我是说已转发微博。”', '2017-07-21 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活，感情', '微博，母女', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_XWLtrbUJhpBSSjm48jf', null, 'A:“你怎么一直不接电话？如果你忙，记得给我一条短信好吗？”<br>“联系不上很让人担心你知道吗？”<br>“以后不要再这样了！”<br>B:“啊，对不起，刚才在开会没听见，你是？”<br>A:“我快递！！有你的包裹！！”<br>B:“......”', '2017-08-05 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '快递', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_XwuZtXvr9ALuNfyRGbS', null, '银角大王将宝葫芦倒置，喊了一声：“周鸿祎。” 周鸿祎应了一声，嗖地便被吸了进去。 银角大王查看时，里面除了周鸿祎，还有360杀毒，360压缩，360浏览器，360安全卫士，360游戏大厅等熙熙攘攘一干人。 银角大王惊讶道：“怎的来了这许多。” 宝葫芦开口言道：“我就只点了个‘下一步’。”<br>金角大王正要说话，看到一旁的李彦宏在笑，大怒，翻转宝葫芦正要喊，李彦宏嗖的一声钻进了宝葫芦，金角大王转过葫芦一看，里面除了李彦宏，还有百度贴吧，百度手机管家，百度浏览器，百度杀毒，百度输入法，百度外卖，百度安全中心，百度云，百度音乐，百度知道，百度百科……密密麻麻一干人，金角大王问怎么回事，宝葫芦开口道：“我什么都没干！”<br>银角大王领着宝葫芦去抓马化腾，只见马化腾也摸出一个葫芦，说道你那个是假的，我这个是真的。', '2017-12-31 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '其他', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_y3lpZ83xKMjophmYHMp', null, '一天见室友抽风了似的拿起水杯浇在了脸上，我正在凌乱中，结果这傻X来了一句擦喝水忘张嘴了…张嘴了…嘴了…', '2017-08-11 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '学校', '大学', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_Y3Uhm9PJeGpmDQUkGg2', '震惊！！', '<img src=\"http://localhost/content/201707280004.jpg \"/>', '2017-07-28 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', 'IT', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_yayEBsAF2QGOzROWvgZ', '音乐评论', '<img src=\"http://localhost/content/201710290002.jpg \"/>', '2017-10-29 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '音乐', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_YelPhK8Q0ZFsCCDLQeW', null, '<img src=\"http://localhost/content/201712170001.jpg \"/>', '2017-12-17 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_yeSA7Pcdjn3m2wCmKhe', null, '教大家如何挑西瓜，鉴别西瓜里有没有虫。首先你要去敲一敲那个西瓜 “梆梆绑！”<br><br>如果里边有虫子，虫子就会唱：咖喱给给', '2017-09-08 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_YMAZx9Y5vvUso86B0CX', null, '上大学的时候，寝室里两个男生比谁的脚更臭，一个男生说，我要是把鞋脱了，你们全都得跑，另一个男生说，我要是把鞋脱了，你们一个也别想跑。', '2017-12-17 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '学校', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_YPzZW2HkHBIYFh9DuGw', null, '<img src=\"http://localhost/content/201708110005.jpg \"/>', '2017-08-11 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '快递，短信', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_yQd0LfumjJBIFaIdGSO', '中国太热了要回非洲系列', '<img src=\"http://localhost/content/201707140001.jpg \"/>', '2017-07-14 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '天气热', '0', '0', '2.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_Z4RJVrKld0826iwn94r', null, '今晚上网，旺旺突然跳了出来窗口来对我说：“亲，我怀孕了”<br>哥顿时一惊，心说自己没闯什么祸吧？ <br>正发愣，那人又说：“明天去医院检查。” <br>心想你丫到底是谁，难道还要我陪你去检查，想讹我不成？<br>正琢磨着，那人又说：“只能后天给你发货了”。', '2017-12-24 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_Zdfid0fpnSxq9tKch6X', null, '一群工科男讨论毕业旅行，于是说到湘西凤凰，聊到沈从文和他的《边城》，这时某2货一脸困惑的说：“纳尼，沈从文还会C语言？”', '2017-08-25 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', 'IT', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_zNhnhH4Wo2bezNOAMUQ', null, '<img src=\"http://localhost/content/201712240002.jpg \"/>', '2017-12-24 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '生活', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_zob8tno2nYEmwo7Pnle', null, '<img src=\"http://localhost/content/201710130003.jpg \"/>', '2017-10-13 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '1', '学校', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_zQgG58tpQ2ME8UJmspu', null, '有一次喝媳妇去吃海鲜。<br>媳妇：“啊，好讨厌剥虾，这些虾都给你。”<br><br>我：“好嘞！”<br><br>媳妇：“剥完记得还我。”', '2017-09-08 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '感情', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_ZsqXTUBaZXupZbDhrnV', null, '刘备对赵云说：子龙啊，你看云长和翼德与大哥都结拜了，你也加入我们吧！ 赵云想了想，说：还是不要了，我觉得被别人叫赵四不符合我的气质……', '2017-08-05 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '历史', '默认', '0', '0', '3.00', '0', '1');
INSERT INTO `fun_item` VALUES ('f_Zt3MQ2oYF3ACJGfi0Lg', null, '刚在家跟我妈说起我小时候的事<br>我说，妈，有件让我一直很心塞<br>“小时候小伙伴给我吃了个柿子之后没擦嘴，你愣是以为我吃屎了把我吊起来打。”', '2017-12-31 09:00:00', 'u_98WXmFRyCEGurWnG2sM', 'admin', '-1', '生活', '默认', '0', '0', '3.00', '0', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` char(21) NOT NULL,
  `login_account` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `sex` char(4) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `phone_number` char(11) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `interest_area` varchar(255) DEFAULT NULL,
  `register_time` datetime NOT NULL,
  `last_login_time` datetime NOT NULL,
  `register_ip` char(15) DEFAULT NULL,
  `last_login_ip` char(15) DEFAULT NULL,
  `available` smallint(1) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `role` char(16) NOT NULL,
  `level` int(3) NOT NULL,
  `experience` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('u_98WXmFRyCEGurWnG2sM', 'admin', '23566be87f83b0b898b952b0e7c1391a', 'admin', null, null, null, null, null, null, '2018-04-30 15:54:14', '2018-04-30 15:54:16', null, null, '1', 'http://localhost/avatar.jpg', 'admin', '1', '0');

-- ----------------------------
-- Table structure for user_nice
-- ----------------------------
DROP TABLE IF EXISTS `user_nice`;
CREATE TABLE `user_nice` (
  `id` char(21) NOT NULL,
  `n_u_id` char(21) NOT NULL,
  `n_item_id` char(21) NOT NULL,
  `nice_type` smallint(1) NOT NULL,
  `nice_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_nice
-- ----------------------------
