
CREATE TABLE eye_bai(
  id INT PRIMARY KEY AUTO_INCREMENT,
  
  
  biaoti VARCHAR(225),
  title VARCHAR(225),
  sel  VARCHAR(225),
  img_url VARCHAR(225),
  nei VARCHAR(225)


);
INSERT INTO eye_bai VALUES(null,"近视手术","REFRACTIVE SURGERY","近视手术，欧美同步。<br>全国百城连锁，百万眼睛的共同选择。","img/index_p02.jpg","戴眼镜对很多近视患者来说是一件非常困扰的事情，不但影响颜值，还影响生活。因此许多人都想通过近视手术来摆脱眼镜，但是又有很多近视患者担心一件事情，近视手术会不会反弹?做完手术好视力可以保留多久?");
INSERT INTO eye_bai VALUES(null,"高度近视","HIGH MYOPIA","世界那么大，看得清才精彩。见证高度近视摘镜实例，体验高清视力矫正方案。","img/index_p03.jpg","　对高度近视来说，你要符合以下基本条件：1、没有圆锥角膜、眼底疾病、青光眼、重度弱视等眼病，眼睛健康；2、近视度数基本稳定，没有快速加深；3、已经成年，有接受手术的想法；4、没有其他不适条件，如未受控制的糖尿病、全身免疫系统疾病等。");
INSERT INTO eye_bai VALUES(null,"青少年近视防控","OPTOMETRY","近视不只是配镜，相同的度数，不同的矫正方式，控制度数增长的近视防控术。","img/index_p04.jpg","　对高度近视来说，你要符合以下基本条件：1、没有圆锥角膜、眼底疾病、青光眼、重度弱视等眼病，眼睛健康；2、近视度数基本稳定，没有快速加深；3、已经成年，有接受手术的想法；4、没有其他不适条件，如未受控制的糖尿病、全身免疫系统疾病等。");
INSERT INTO eye_bai VALUES(null,"白内障","CATARACT","焕晶白内障手术，无刀智能操作，开启视觉新时代，眼睛看见更看好。","img/index_p05.jpg","爱尔眼科是覆盖亚美欧三大洲的全球连锁眼科，引进欧美国家同步的白内障手术技术。先手术摘除已经浑浊的白内障晶状体，然后植入新的三焦点人工晶体。三焦点晶体含有人眼看远、中、近各处的三个焦点，不但可以治疗白内障，还可以模拟人眼的变焦能力，让人重新同步看清远中近三处物体，告别近视眼和老花眼。");
INSERT INTO eye_bai VALUES(null,"综合眼病","OTHER EYE DISEASES","青光眼,小儿斜视,眼整形,泪道疾病,角膜及眼表,统统不是问题","img/index_p07.jpg","　对高度近视来说，你要符合以下基本条件：1、没有圆锥角膜、眼底疾病、青光眼、重度弱视等眼病，眼正常情况下，人的健康泪液中不仅有水，还有睑板腺分泌的润滑油，这层油除了减小每次眨眼时眼皮和眼珠的摩擦外，还能维持眼球表面泪液的稳定。当睑板腺功能障碍时，引起脂质分泌不足，锁水功能下降导致泪液蒸发过多时，就会形成干眼。");
#轮播
CREATE TABLE eye_lun(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(225)
);
INSERT INTO eye_lun VALUES(null,"img/lun1.jpg");
INSERT INTO eye_lun VALUES(null,"img/lun2.jpg");
INSERT INTO eye_lun VALUES(null,"img/lun3.jpg");
INSERT INTO eye_lun VALUES(null,"img/lun4.jpg");
INSERT INTO eye_lun VALUES(null,"img/lun5.png");


#简介
CREATE TABLE eye_jiqi(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(225),
  title VARCHAR(225)

);
INSERT INTO eye_jiqi VALUES(null,"img/ji1.jpg","青光眼治疗仪器");
INSERT INTO eye_jiqi VALUES(null,"img/ji2.jpg","白内障手术中");
INSERT INTO eye_jiqi VALUES(null,"img/ji3.jpg","近视眼检查");
INSERT INTO eye_jiqi VALUES(null,"img/ji4.jpg","为老年人检查眼睛");
INSERT INTO eye_jiqi VALUES(null,"img/ji5.jpg","治疗近视机器");
INSERT INTO eye_jiqi VALUES(null,"img/ji6.jpg","为老年人检查眼睛");
INSERT INTO eye_jiqi VALUES(null,"img/ji7.jpg","治疗近视机器");
#案例
CREATE TABLE eye_anli(
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(225)

);
INSERT INTO eye_anli VALUES(null,"一位三甲医院职工的感慨：特别后悔没有早点做检查");
INSERT INTO eye_anli VALUES(null,"飞秒激光白内障手术:视不可挡");
INSERT INTO eye_anli VALUES(null,"白内障手术竟然这么快！");
INSERT INTO eye_anli VALUES(null,"仅2天时间，回国治疗白内障的华侨老人重见光明");
INSERT INTO eye_anli VALUES(null,"焕晶白内障手术后她说，好像回到了二十岁！");
INSERT INTO eye_anli VALUES(null,"植入三焦点人工晶体后他感叹：白内障手术真神奇！");
INSERT INTO eye_anli VALUES(null,"儿媳一做完就推荐我来了！");
INSERT INTO eye_anli VALUES(null,"76岁老人爱尔寻清记");
INSERT INTO eye_anli VALUES(null,"因白内障痛失画画乐趣，飞秒技术助她轻松重拾画笔");
INSERT INTO eye_anli VALUES(null,"夫妻同做白内障手术重见光明，携手相扶享幸福晚年生活");
INSERT INTO eye_anli VALUES(null,"突发难忍疼痛险失明，爱尔眼科全力以赴护他光明");
INSERT INTO eye_anli VALUES(null,"是新无级人工晶体让我重现清晰视界！");
INSERT INTO eye_anli VALUES(null,"85岁老人在爱尔喜获光明：这手术做得值！");
INSERT INTO eye_anli VALUES(null,"飞秒激光白内障手术，让光明不再是奢望");
INSERT INTO eye_anli VALUES(null,"深圳首位诺守光明援助项目受益者在爱尔眼科完成治疗");
INSERT INTO eye_anli VALUES(null,"焕晶白内障手术后，她直呼技术太先进！");
INSERT INTO eye_anli VALUES(null,"抱团去医院后，他们都这样说......");
INSERT INTO eye_anli VALUES(null,"36岁这一年，她终于看清了这个世界！");
INSERT INTO eye_anli VALUES(null,"91岁这一年，她终于重返光明！");
INSERT INTO eye_anli VALUES(null,"手术后，退伍老兵笑得像一个孩子");

#证件
CREATE TABLE eye_zhengjian(
  id INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(225),
  img_url VARCHAR(225)

);
INSERT INTO eye_zhengjian VALUES(null,"陈学国","img/7.jpg");
INSERT INTO eye_zhengjian VALUES(null,"王延武","img/9.jpg");
INSERT INTO eye_zhengjian VALUES(null,"陈鹏","img/12.jpg");
INSERT INTO eye_zhengjian VALUES(null,"王医生","img/1.jpg");

#名医
CREATE TABLE eye_mingyi(
  id INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(225),
  img_url VARCHAR(225),
  tel VARCHAR(255),
  tal VARCHAR(255)

);
INSERT INTO eye_mingyi VALUES(null,"陈学国","img/7.jpg","董事长",136455999999);
INSERT INTO eye_mingyi VALUES(null,"王彦斌","img/9.jpg","董事长",136455999999);
INSERT INTO eye_mingyi VALUES(null,"陈鹏","img/12.jpg","董事长",136455999999);
INSERT INTO eye_mingyi VALUES(null,"王医生","img/1.jpg","董事长",136455999999);
INSERT INTO eye_mingyi VALUES(null,"陈医生","img/1.jpg","董事长",136455999999);
INSERT INTO eye_mingyi VALUES(null,"陈阿萨德","img/7.jpg","董事长",136455999999);
INSERT INTO eye_mingyi VALUES(null,"陈as","img/9.jpg","董事长",136455999999);
INSERT INTO eye_mingyi VALUES(null,"陈是的","img/12.jpg","董事长",136455999999);
INSERT INTO eye_mingyi VALUES(null,"陈as","img/1.jpg","董事长",136455999999);
INSERT INTO eye_mingyi VALUES(null,"陈东方闪电","img/8.jpg","董事长",136455999999);
INSERT INTO eye_mingyi VALUES(null,"陈阿萨德","img/3.jpg","董事长",136455999999);
INSERT INTO eye_mingyi VALUES(null,"陈as","img/4.jpg","董事长",136455999999);
INSERT INTO eye_mingyi VALUES(null,"陈二","img/2.jpg","董事长",136455999999);
INSERT INTO eye_mingyi VALUES(null,"陈等分","img/7.jpg","董事长",136455999999);
#预约
CREATE TABLE eye_yuyue(
  id INT PRIMARY KEY AUTO_INCREMENT,
   uname VARCHAR(225),
  img_url VARCHAR(225),
  tel VARCHAR(255),
  tal VARCHAR(255),
  zhouyi VARCHAR(225),
  zhouer VARCHAR(225),
  zhousan VARCHAR(225),
  zhousi VARCHAR(225),
  zhouwu VARCHAR(225),
  zhouliu VARCHAR(225),
 zhouri VARCHAR(225)
);
INSERT INTO eye_yuyue VALUES(null,"陈学国","img/7.jpg","眼科博士后,河南省眼科专业委员会委员,河南省医学会医疗事故技术鉴定专家",136425569999,"预约",null,"预约",null,null,"预约",null);
INSERT INTO eye_yuyue VALUES(null,"王彦斌","img/9.jpg","眼科主任医师,擅长:眼底病,眼外伤,泪道疾病的诊断",1364556666,"预约",null,null,"预约",null,null,null);
INSERT INTO eye_yuyue VALUES(null,"王医生","img/1.jpg","有扎实的临床经验,从事眼科30年",136454444,"预约",null,null,null,"预约","预约",null);
INSERT INTO eye_yuyue VALUES(null,"陈鹏","img/12.jpg","郑州市眼科研究所所长,国际白内障医学委员会主任委员",1364559999,null,"预约",null,"预约",null,null,"预约");
#病状
CREATE TABLE eye_bingtai(
  id INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(225),
  img_url VARCHAR(225),
tel VARCHAR(225)
);
INSERT INTO eye_bingtai VALUES(null,"眼部SPA——针对各型干眼及视疲劳人群","img/zl01.jpg","仁和眼科推出眼部SPA疗法，一次治疗约20-30分钟，温和、轻松、舒适。");
INSERT INTO eye_bingtai VALUES(null,"睑板腺疏通及按摩术——针对脂质缺乏型干眼","img/zl02.jpg","仁和眼科引进Maskin睑板腺探针及按摩器，门诊治疗，舒适感强，每次治疗约30分钟， 4次为一疗程，不影响正常用眼及美观。");
INSERT INTO eye_bingtai VALUES(null,"泪道栓塞治疗术——适合重度干眼患者","img/zl03.jpg","仁和眼科采用美国SmartPlug等多种类型泪道栓塞治疗术，治疗全程约3-5分钟，安全性高，无痛，不影响正常用眼及美观。");

#注册uid,username,tel
CREATE TABLE eye_zhuce(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR(225),
  tel VARCHAR(225)
);
INSERT INTO eye_zhuce VALUES(null,"小明","123456789987654321");
#留言板
CREATE TABLE eye_liuyan(
  id INT PRIMARY KEY AUTO_INCREMENT,
  txt VARCHAR(225),
  sj VARCHAR(225)
);