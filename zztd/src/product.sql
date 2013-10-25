
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `tbid` bigint(20) NOT NULL auto_increment COMMENT '产品编号',
  `name` varchar(20) default NULL COMMENT '产品名称',
  `describe` varchar(400) default NULL COMMENT '产品描述',
  `maxmoney` int(11) default '0' COMMENT '金额上限',
  `minmoney` int(11) default NULL COMMENT '金额下限',
  `maxlimit` int(11) default NULL COMMENT '最大期限',
  `minlimit` int(11) default NULL COMMENT '最小期限',
  `verifytime` varchar(60) default NULL COMMENT '审核时间',
  `maxrate` float default NULL COMMENT '最大年利率',
  `minrate` float default NULL COMMENT '最小年利率',
  `tendertime` varchar(40) default NULL COMMENT '投标时间',
  `replyway` varchar(40) default NULL COMMENT '还款方式',
  `fee` varchar(100) default NULL COMMENT '手续费',
  PRIMARY KEY  (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
