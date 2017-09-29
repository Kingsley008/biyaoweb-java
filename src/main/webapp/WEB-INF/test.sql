/* 投图 限制6张 */
CREATE  TABLE  sliders (
id int auto_increment primary key comment "主键",
productName  VARCHAR (100) comment "商品名称",
pageURL VARCHAR (100) comment "silderURL",
imgURL VARCHAR (100) comment  "imageURL")
ENGINE=InnoDB  DEFAULT CHARSET=utf8;

insert into sliders (id,productName, pageURL, imgURL) VALUES (1,NULL ,NULL ,'imgs/banner/banner1.jpg');
insert into sliders (id,productName, pageURL, imgURL) VALUES (2,NULL ,NULL ,'imgs/banner/banner2.jpg');
insert into sliders (id,productName, pageURL, imgURL) VALUES (3,NULL ,NULL ,'imgs/banner/banner3.jpg');
insert into sliders (id,productName, pageURL, imgURL) VALUES (4,NULL ,NULL ,'imgs/banner/banner4.jpg');
insert into sliders (id,productName, pageURL, imgURL) VALUES (5,NULL ,NULL ,'imgs/banner/banner5.jpg');
insert into sliders (id,productName, pageURL, imgURL) VALUES (6,NULL ,NULL ,'imgs/banner/banner6.jpg');

create table person(
id int auto_increment primary key comment "主键",
userName varchar(100) comment "用户名",
password varchar(100) comment "密码md5加密",
nickName varchar(50) comment "用户昵称",
userType tinyint(3) comment "类型，买家0，卖家1")
ENGINE=InnoDB  DEFAULT CHARSET=utf8;


drop table user;
/* 用户 */
create table user(
id int auto_increment primary key comment "主键",
phoneNumber varchar(100) comment "用户手机号",
password varchar(100) comment "密码md5加密",
trueName varchar(50) comment "用户真名",
address varchar(100) comment "用户地址")
ENGINE=InnoDB  DEFAULT CHARSET=utf8;


/* 测试数据 密码对应 reyub */
insert into `person` (`id`, `userName`, `password`, `nickName`, `userType`) values('1','buyer','37254660e226ea65ce6f1efd54233424','buyer','0');

DROP TABLE content;
/* 商品 */
create table content(
id int auto_increment primary key comment "主键",
name varchar(100) comment "产品名称",
produceDate INT comment"生产周期",
intro VARCHAR (100) comment "介绍",
catagory VARCHAR (100) comment "商品分类",
subCatagory VARCHAR (100) comment "子分类",
sizes VARCHAR(100) comment "型号;分割",
newicon int comment "1新品",
colors varchar(100) comment "可选颜色;分割",
price bigint  comment "当前价格",
icon varchar(300) comment "封面图片",
imgs VARCHAR (300) comment "全部的展示图片",
text varchar(20000) comment "详情页html内容"
)ENGINE=InnoDB  DEFAULT CHARSET=utf8;

/* 男装测试数据 */
INSERT INTO content (id, name ,produceDate ,intro, catagory,subCatagory, sizes, newicon, colors, price, icon, imgs, text) VALUES
 (0, "净色小肌理免烫衬衫3005",7,"纯棉免烫衬衫 抗皱性强 易打理","男装","衬衫",
 "38;39;40;41;42;43;44", "1","蓝色;白色",
 245,"imgs/show/show-small.jpg","imgs/product/p1.jpg;imgs/product/p2.jpg;imgs/product/p3.jpg;imgs/product/p4.jpg;imgs/product/p5.jpg",
NULL);


/* 女装测试的数据 */
INSERT INTO content (id, name,produceDate ,intro ,catagory,subCatagory, sizes, newicon, colors, price, icon, imgs, text) VALUES
 (0, "立体拼接口袋长款上衣",15,"一切如常便是生活真味","女装","上衣",
 "XS;S;M;L;XL", "1","黑色;白色",
 205,"imgs/show/show-small2.jpg","imgs/product/p6.jpg;imgs/product/p7.jpg;imgs/product/p8.jpg;imgs/product/p9.jpg;imgs/product/p10.jpg",
NULL);

select * from content where catagory="男装" and subCatagory = "衬衫";

/* 订单表 */

DROP TABLE trx;
create table trx(
id int auto_increment primary key comment "主键",
contentId int  comment "商品ID",
userId int comment "用户ID",
trueName VARCHAR (20),
address VARCHAR (100),
price int comment "购买价格",
color varchar(100) comment"颜色",
size varchar(100) comment"尺寸",
buyTime varchar(30) comment "购买时间",
buyNumber int comment"购买数量",
rank int comment "1:好评 ；2：中评3：差评" DEFAULT NULL,
comments varchar(1500) comment "评论内容" DEFAULT NULL,
icon VARCHAR (100),
productName VARCHAR (100)
)
ENGINE=InnoDB  DEFAULT CHARSET=utf8;

