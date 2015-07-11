DROP TABLE forum_answer;

CREATE TABLE `forum_answer` (
  `question_id` int(4) NOT NULL AUTO_INCREMENT,
  `a_id` int(4) NOT NULL DEFAULT '0',
  `a_name` varchar(65) NOT NULL DEFAULT '',
  `a_email` varchar(65) NOT NULL DEFAULT '',
  `a_answer` longtext NOT NULL,
  `a_datetime` datetime NOT NULL,
  PRIMARY KEY (`question_id`),
  KEY `a_id` (`a_id`),
  CONSTRAINT `FK_forum_answer_forum_question` FOREIGN KEY (`a_id`) REFERENCES `forum_question` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

INSERT INTO forum_answer VALUES("1","33","asdf","a@yahoo.com","asdf","0000-00-00 00:00:00");
INSERT INTO forum_answer VALUES("6","33","yess","yes@yahoo.com","fasdfsadf","0000-00-00 00:00:00");
INSERT INTO forum_answer VALUES("7","33","yess","yes@yahoo.com","asdf sadf sdaf asdfdsfdsafasd fasd fasdf dfsfsdfdsafasdf asdf sdfasdfasdf asdf sadf sdaf asdfdsfdsafasd fasd fasdf dfsfsdfdsafasdf asdf sdfasdfasdf asdf sadf sdaf asdfdsfdsafasd fasd fasdf dfsfsdfdsafasdf asdf sdfasdfasdf asdf sadf sdaf asdfdsfdsafasd fasd fasdf dfsfsdfdsafasdf asdf sdfasdfasdf asdf sadf sdaf asdfdsfdsafasd fasd fasdf dfsfsdfdsafasdf asdf sdfasdfasdf asdf sadf sdaf asdfdsfdsafasd fasd fasdf dfsfsdfdsafasdf asdf sdfasdfasdf asdf sadf sdaf asdfdsfdsafasd fasd fasdf dfsfsdfdsafasdf asdf sdfasdfasdf asdf sadf sdaf asdfdsfdsafasd fasd fasdf dfsfsdfdsafasdf asdf sdfasdfasdf asdf sadf sdaf asdfdsfdsafasd fasd fasdf dfsfsdfdsafasdf asdf sdfasdfasdf","0000-00-00 00:00:00");
INSERT INTO forum_answer VALUES("8","33","yess","yes@yahoo.com","asdf sadf sdaf asdfdsfdsafasd fasd fasdf dfsfsdfdsafasdf asdf sdfasdfasdf asdf sadf sdaf asdfdsfdsafasd fasd fasdf dfsfsdfdsafasdf asdf sdfasdfasdf asdf sadf sdaf asdfdsfdsafasd fasd fasdf dfsfsdfdsafasdf asdf sdfasdfasdf asdf sadf sdaf asdfdsfdsafasd fasd fasdf dfsfsdfdsafasdf asdf sdfasdfasdf asdf sadf sdaf asdfdsfdsafasd fasd fasdf dfsfsdfdsafasdf asdf sdfasdfasdf asdf sadf sdaf asdfdsfdsafasd fasd fasdf dfsfsdfdsafasdf asdf sdfasdfasdf asdf sadf sdaf asdfdsfdsafasd fasd fasdf dfsfsdfdsafasdf asdf sdfasdfasdf asdf sadf sdaf asdfdsfdsafasd fasd fasdf dfsfsdfdsafasdf asdf sdfasdfasdf asdf sadf sdaf asdfdsfdsafasd fasd fasdf dfsfsdfdsafasdf asdf sdfasdfasdf","0000-00-00 00:00:00");
INSERT INTO forum_answer VALUES("9","33","asdff","asdfdff@yahoo.com","ffff","0000-00-00 00:00:00");
INSERT INTO forum_answer VALUES("10","33","iboy","jb@yahoo.com","Suggestion sample adfdfasdfasdf adf afasdfa fasdfsd addf adsf asf asf sdafdas dffjfjjak jkajkf klfj jakdj j kj kj kajdfkj is to hahaha asjsjdjf hehehe haha ","0000-00-00 00:00:00");
INSERT INTO forum_answer VALUES("11","35","jex","jex@yahoo.com","jexxxxxxxxx","0000-00-00 00:00:00");
INSERT INTO forum_answer VALUES("12","33","sample","sampleeeee@yahoo.com","asdfdsafasdfasdfasdfasdfasdfasdfasdfs","2014-01-31 10:43:28");
INSERT INTO forum_answer VALUES("13","33","again","again@yahoo.com","again\n","2014-01-31 10:46:31");
INSERT INTO forum_answer VALUES("14","35","sss","ss@yahoo.com","hhh","2014-02-05 12:20:19");
INSERT INTO forum_answer VALUES("15","35","dad","cha@g.com","dasdasd","2014-02-09 14:33:37");



DROP TABLE forum_question;

CREATE TABLE `forum_question` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `topic` varchar(255) NOT NULL DEFAULT '',
  `detail` varchar(500) NOT NULL,
  `name` varchar(65) NOT NULL DEFAULT '',
  `email` varchar(65) NOT NULL DEFAULT '',
  `datetime` datetime NOT NULL,
  `view` int(4) NOT NULL DEFAULT '0',
  `reply` int(4) NOT NULL DEFAULT '0',
  `confirmation` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

INSERT INTO forum_question VALUES("33","sample","sample","sample","sample@yahoo.com","2014-01-28 15:05:50","115","11","1");
INSERT INTO forum_question VALUES("34","topic1","topic123","JBMarbella","arnold815@ymail.com","2014-01-29 06:56:17","4","0","1");
INSERT INTO forum_question VALUES("35","sssssssssssss","ssssssssss","ssssssssssssss","sample@yahoo.com","2014-01-30 14:43:37","49","4","1");
INSERT INTO forum_question VALUES("37","asdf asdf asd","sadfda sadfasd","asdf saf sd","jex310@gmail.com","2014-02-02 11:35:03","0","0","0");
INSERT INTO forum_question VALUES("38","asdfa ","as df","asdf saf sd","jex310@gmail.com","2014-02-02 11:36:11","0","0","2");
INSERT INTO forum_question VALUES("39","sdasd","dsd","sdsd","charrysoria@gmail.com","2014-02-09 14:33:08","0","0","1");
INSERT INTO forum_question VALUES("40","hgkbh h gh","gjb hkg h hgkgh","gkhjh ghkg","g@gmail.com","2014-02-27 04:29:01","4","0","1");
INSERT INTO forum_question VALUES("41","ji fsd fsjdfskjd","dkaf asd","jj@yahoo.com","jex310@yahoo.com","2014-03-01 10:46:27","1","0","1");
INSERT INTO forum_question VALUES("42","dsaf asd ","sadf","asdfs","jex310@gmail.com","2014-03-02 13:08:18","0","0","1");
INSERT INTO forum_question VALUES("43","asdfsssssssssssssssssss","sadfsssssssssssssss","ssss","jex310@gmail.com","2014-03-02 13:14:43","0","0","1");
INSERT INTO forum_question VALUES("44","sampol","sdsdsdkj             sdsdsdkj             sdsdsdkj      \nsdsdsdkj             sdsdsdkj             sdsdsdkjsdsdsdkj             sdsdsdkj             sdsdsdkjsdsdsdkj             sdsdsdkj             sdsdsdkjsdsdsdkj             sdsdsdkj             sdsdsdkjsdsdsdkj             sdsdsdkj             sdsdsdkjsdsdsdkj             sdsdsdkj             sdsdsdkjsdsdsdkj             sdsdsdkj             sdsdsdkjsdsdsdkj             sdsdsdkj             sdsdsdkjsdsdsdkj             sdsdsdkj     a       ","charry","cha@gmail.com","2014-03-05 11:34:16","6","0","1");
INSERT INTO forum_question VALUES("45","ordinary","people","divina","cess11_vhine23@yahoo.com","2014-03-06 09:33:41","2","0","1");



DROP TABLE tbl_activity;

CREATE TABLE `tbl_activity` (
  `act_id` int(11) NOT NULL AUTO_INCREMENT,
  `act_desc` varchar(100) DEFAULT NULL,
  `act_by` int(11) DEFAULT NULL,
  `act_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`act_id`),
  KEY `act_datetime` (`act_datetime`),
  KEY `FK_tbl_activity_tbl_user` (`act_by`),
  CONSTRAINT `FK_tbl_activity_tbl_user` FOREIGN KEY (`act_by`) REFERENCES `tbl_user` (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1174 DEFAULT CHARSET=latin1;

INSERT INTO tbl_activity VALUES("1","fasdf fasdf fasdf fasdf fasdf fasdf fasdf fasdf fasdf ","1","2014-03-03 00:20:03");
INSERT INTO tbl_activity VALUES("2","View Audit Trails","1","2014-03-03 00:26:21");
INSERT INTO tbl_activity VALUES("3","View Backed-up System","1","2014-03-03 00:28:50");
INSERT INTO tbl_activity VALUES("4","View Audit Trails","1","2014-03-03 00:28:52");
INSERT INTO tbl_activity VALUES("5","Backed-up System","1","2014-03-03 00:29:05");
INSERT INTO tbl_activity VALUES("6","View Backed-up System","1","2014-03-03 00:29:05");
INSERT INTO tbl_activity VALUES("7","View Audit Trails","1","2014-03-03 00:29:06");
INSERT INTO tbl_activity VALUES("8","View Backed-up System","1","2014-03-03 00:29:54");
INSERT INTO tbl_activity VALUES("9","View Audit Trails","1","2014-03-03 00:30:00");
INSERT INTO tbl_activity VALUES("10","View Audit Trails","1","2014-03-03 00:30:22");
INSERT INTO tbl_activity VALUES("11","View Audit Trails","1","2014-03-03 00:31:15");
INSERT INTO tbl_activity VALUES("12","View Backed-up System","1","2014-03-03 00:38:53");
INSERT INTO tbl_activity VALUES("13","Viewed Audit Trails","1","2014-03-03 01:05:46");
INSERT INTO tbl_activity VALUES("14","Viewed List of Communication","1","2014-03-03 01:05:54");
INSERT INTO tbl_activity VALUES("15","Viewed Audit Trails","1","2014-03-03 01:05:58");
INSERT INTO tbl_activity VALUES("16","Viewed Audit Trails","1","2014-03-03 01:15:12");
INSERT INTO tbl_activity VALUES("17","Viewed Audit Trails","1","2014-03-03 01:15:21");
INSERT INTO tbl_activity VALUES("18","Viewed List of Communication","1","2014-03-03 01:15:30");
INSERT INTO tbl_activity VALUES("19","Viewed Communication List","1","2014-03-03 01:15:34");
INSERT INTO tbl_activity VALUES("20","View Communication ID: 2012 - 0001","1","2014-03-03 01:15:40");
INSERT INTO tbl_activity VALUES("21","Viewed Audit Trails","1","2014-03-03 01:15:44");
INSERT INTO tbl_activity VALUES("22","Viewed Audit Trails","1","2014-03-03 02:00:05");
INSERT INTO tbl_activity VALUES("23","Viewed Audit Trails","1","2014-03-03 02:01:50");
INSERT INTO tbl_activity VALUES("24","Searched Yearly Ordinance","1","2014-03-03 02:02:04");
INSERT INTO tbl_activity VALUES("25","Searched Yearly Ordinance","1","2014-03-03 02:02:14");
INSERT INTO tbl_activity VALUES("26","Searched Yearly Ordinance","1","2014-03-03 02:03:19");
INSERT INTO tbl_activity VALUES("27","Printed Yearly Ordinance of 1","1","2014-03-03 02:03:19");
INSERT INTO tbl_activity VALUES("28","Viewed Audit Trails","1","2014-03-03 02:03:22");
INSERT INTO tbl_activity VALUES("29","Searched Yearly Ordinance","1","2014-03-03 02:04:18");
INSERT INTO tbl_activity VALUES("30","Searched Yearly Ordinance of John Billy D. Marbella","1","2014-03-03 02:04:18");
INSERT INTO tbl_activity VALUES("31","Viewed Audit Trails","1","2014-03-03 02:04:24");
INSERT INTO tbl_activity VALUES("32","Printed Yearly Ordinance of John Billy D. Marbella","1","2014-03-03 02:05:16");
INSERT INTO tbl_activity VALUES("33","Searched Yearly Ordinance","1","2014-03-03 02:05:27");
INSERT INTO tbl_activity VALUES("34","Searched Yearly Ordinance","1","2014-03-03 02:05:30");
INSERT INTO tbl_activity VALUES("35","Searched Yearly Ordinance of John Billy D. Marbella for the year2020","1","2014-03-03 02:05:31");
INSERT INTO tbl_activity VALUES("36","Viewed Audit Trails","1","2014-03-03 02:05:35");
INSERT INTO tbl_activity VALUES("37","Viewed Audit Trails","1","2014-03-03 02:05:44");
INSERT INTO tbl_activity VALUES("38","Searched Authored Yearly Ordinance","1","2014-03-03 02:06:27");
INSERT INTO tbl_activity VALUES("39","Viewed Audit Trails","1","2014-03-03 02:06:32");
INSERT INTO tbl_activity VALUES("40","Viewed Audit Trails","1","2014-03-03 02:34:16");
INSERT INTO tbl_activity VALUES("41","Return to Homepage","1","2014-03-03 02:35:02");
INSERT INTO tbl_activity VALUES("42","Viewed Audit Trails","1","2014-03-03 02:35:05");
INSERT INTO tbl_activity VALUES("43","Viewed Audit Trails","1","2014-03-03 02:36:47");
INSERT INTO tbl_activity VALUES("44","Logged In","1","2014-03-03 09:28:20");
INSERT INTO tbl_activity VALUES("45","Return to Homepage","1","2014-03-03 09:28:25");
INSERT INTO tbl_activity VALUES("46","Viewed Audit Trails","1","2014-03-03 09:28:44");
INSERT INTO tbl_activity VALUES("47","View Backed-up System","1","2014-03-03 09:29:13");
INSERT INTO tbl_activity VALUES("48","Backed-up System","1","2014-03-03 09:29:25");
INSERT INTO tbl_activity VALUES("49","View Backed-up System","1","2014-03-03 09:29:30");
INSERT INTO tbl_activity VALUES("50","Logged In","1","2014-03-03 09:54:58");
INSERT INTO tbl_activity VALUES("51","Return to Homepage","1","2014-03-03 09:55:03");
INSERT INTO tbl_activity VALUES("52","Viewed List of Communication","1","2014-03-03 11:24:18");
INSERT INTO tbl_activity VALUES("53","Viewed Received Topics","1","2014-03-03 11:43:17");
INSERT INTO tbl_activity VALUES("54","Viewed Topic ID: 37","1","2014-03-03 11:43:22");
INSERT INTO tbl_activity VALUES("55","Viewed Statistical Report of Ordinance","1","2014-03-03 11:43:33");
INSERT INTO tbl_activity VALUES("56","Searched Statistical Resolution Report","1","2014-03-03 11:43:53");
INSERT INTO tbl_activity VALUES("57","Searched Fiscal Yearly Resolution Report","1","2014-03-03 11:43:58");
INSERT INTO tbl_activity VALUES("58","Searched Fiscal Yearly Resolution Report","1","2014-03-03 11:44:05");
INSERT INTO tbl_activity VALUES("59","Searched Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-03 11:44:05");
INSERT INTO tbl_activity VALUES("60","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-03 11:44:11");
INSERT INTO tbl_activity VALUES("61","Searched Fiscal Yearly Resolution Report","1","2014-03-03 11:45:31");
INSERT INTO tbl_activity VALUES("62","Viewed List of Communication","1","2014-03-03 11:45:38");
INSERT INTO tbl_activity VALUES("63","Viewed Archived Communication List","1","2014-03-03 11:45:42");
INSERT INTO tbl_activity VALUES("64","Viewed Communication for Referral List","1","2014-03-03 11:45:48");
INSERT INTO tbl_activity VALUES("65","Viewed Archived Referral List","1","2014-03-03 11:45:52");
INSERT INTO tbl_activity VALUES("66","Viewed Committee Meeting List for Ordinance","1","2014-03-03 11:46:01");
INSERT INTO tbl_activity VALUES("67","Viewed Ordinance List","1","2014-03-03 11:46:04");
INSERT INTO tbl_activity VALUES("68","Searched Monthly Committee Report per Committee","1","2014-03-03 11:46:26");
INSERT INTO tbl_activity VALUES("69","Viewed Monitor Ordinance List","1","2014-03-03 11:46:30");
INSERT INTO tbl_activity VALUES("70","Viewed Monitor Ordinance List","1","2014-03-03 11:46:46");
INSERT INTO tbl_activity VALUES("71","Viewed Monitor Ordinance List","1","2014-03-03 11:49:07");
INSERT INTO tbl_activity VALUES("72","Viewed Monitor Ordinance List","1","2014-03-03 11:50:11");
INSERT INTO tbl_activity VALUES("73","Viewed Monitor Ordinance List","1","2014-03-03 11:50:13");
INSERT INTO tbl_activity VALUES("74","Viewed Monitor Ordinance List","1","2014-03-03 11:50:26");
INSERT INTO tbl_activity VALUES("75","Downloaded Ordinance No. 0002 - 2014","1","2014-03-03 11:50:36");
INSERT INTO tbl_activity VALUES("76","Searched Monthly Committee Report per Committee","1","2014-03-03 11:50:57");
INSERT INTO tbl_activity VALUES("77","Viewed Monitor Ordinance List","1","2014-03-03 11:51:35");
INSERT INTO tbl_activity VALUES("78","Viewed Monitor Ordinance ID: 1","1","2014-03-03 11:51:40");
INSERT INTO tbl_activity VALUES("79","Viewed Monitor Ordinance ID: 1","1","2014-03-03 11:51:49");
INSERT INTO tbl_activity VALUES("80","Viewed Monitor Ordinance ID: 1","1","2014-03-03 11:51:59");
INSERT INTO tbl_activity VALUES("81","Downloaded Ordinance No. 0002 - 2014","1","2014-03-03 11:52:08");
INSERT INTO tbl_activity VALUES("82","Downloaded Monitor Ordinance Form","1","2014-03-03 11:52:10");
INSERT INTO tbl_activity VALUES("83","Viewed Monitor Ordinance List","1","2014-03-03 11:52:19");
INSERT INTO tbl_activity VALUES("84","Downloaded Ordinance No. 0002 - 2014","1","2014-03-03 11:52:23");
INSERT INTO tbl_activity VALUES("85","Viewed Monitor Ordinance ID: 1","1","2014-03-03 11:52:35");
INSERT INTO tbl_activity VALUES("86","Viewed List of Communication","1","2014-03-03 11:52:41");
INSERT INTO tbl_activity VALUES("87","Viewed Communication List","1","2014-03-03 11:52:44");
INSERT INTO tbl_activity VALUES("88","View Communication ID: 2012 - 0001","1","2014-03-03 11:52:48");
INSERT INTO tbl_activity VALUES("89","View Communication ID: 2014 - 0001","1","2014-03-03 11:52:53");
INSERT INTO tbl_activity VALUES("90","Downloaded Communication Letter","1","2014-03-03 11:52:57");
INSERT INTO tbl_activity VALUES("91","Downloaded Communication Letter","1","2014-03-03 11:53:01");
INSERT INTO tbl_activity VALUES("92","Viewed Communication List","1","2014-03-03 11:53:04");
INSERT INTO tbl_activity VALUES("93","Viewed Communication for Referral List","1","2014-03-03 11:53:44");
INSERT INTO tbl_activity VALUES("94","Viewed Audit Trails","1","2014-03-03 11:53:53");
INSERT INTO tbl_activity VALUES("95","Searched Monthly Committee Report per Committee","1","2014-03-03 11:54:04");
INSERT INTO tbl_activity VALUES("96","Viewed Monitor Ordinance List","1","2014-03-03 11:54:08");
INSERT INTO tbl_activity VALUES("97","Viewed Monitor Ordinance ID: 1","1","2014-03-03 11:54:16");
INSERT INTO tbl_activity VALUES("98","Viewed List of Communication","1","2014-03-03 11:55:27");
INSERT INTO tbl_activity VALUES("99","Logged In","1","2014-03-03 17:47:07");
INSERT INTO tbl_activity VALUES("100","Return to Homepage","1","2014-03-03 17:47:12");
INSERT INTO tbl_activity VALUES("101","View Backed-up System","1","2014-03-03 17:48:22");
INSERT INTO tbl_activity VALUES("102","View Backed-up System","1","2014-03-03 17:48:44");
INSERT INTO tbl_activity VALUES("103","View Backed-up System","1","2014-03-03 17:48:50");
INSERT INTO tbl_activity VALUES("104","View Backed-up System","1","2014-03-03 17:52:30");
INSERT INTO tbl_activity VALUES("105","Backed-up System","1","2014-03-03 17:52:57");
INSERT INTO tbl_activity VALUES("106","View Backed-up System","1","2014-03-03 17:52:57");
INSERT INTO tbl_activity VALUES("107","View Backed-up System","1","2014-03-04 17:56:09");
INSERT INTO tbl_activity VALUES("108","Backed-up System","1","2014-03-04 17:56:14");
INSERT INTO tbl_activity VALUES("109","View Backed-up System","1","2014-03-04 17:56:15");
INSERT INTO tbl_activity VALUES("110","Backed-up System","1","2014-03-05 17:56:37");
INSERT INTO tbl_activity VALUES("111","View Backed-up System","1","2014-03-05 17:56:38");
INSERT INTO tbl_activity VALUES("112","View Backed-up System","1","2014-03-05 17:57:22");
INSERT INTO tbl_activity VALUES("113","Viewed Received Topics","1","2014-03-05 18:34:21");
INSERT INTO tbl_activity VALUES("114","Viewed Topic ID: 44","1","2014-03-05 18:34:27");
INSERT INTO tbl_activity VALUES("115","Viewed Received Topics","1","2014-03-05 18:34:32");
INSERT INTO tbl_activity VALUES("116","Approved and Posted a Topic ID: 44","1","2014-03-05 18:34:41");
INSERT INTO tbl_activity VALUES("117","Viewed Received Topics","1","2014-03-05 18:34:42");
INSERT INTO tbl_activity VALUES("118","Return to Homepage","1","2014-03-05 18:38:01");
INSERT INTO tbl_activity VALUES("119","Logged In","1","2014-03-05 19:11:59");
INSERT INTO tbl_activity VALUES("120","Return to Homepage","1","2014-03-05 19:11:59");
INSERT INTO tbl_activity VALUES("121","Searched Monthly Committee Report per Committee","1","2014-03-05 19:15:29");
INSERT INTO tbl_activity VALUES("122","Viewed Monitor Ordinance List","1","2014-03-05 19:15:41");
INSERT INTO tbl_activity VALUES("123","Viewed Received Topics","1","2014-03-05 19:15:48");
INSERT INTO tbl_activity VALUES("124","Viewed Topic ID: 37","1","2014-03-05 19:15:53");
INSERT INTO tbl_activity VALUES("125","Searched Statistical Resolution Report","1","2014-03-05 19:16:07");
INSERT INTO tbl_activity VALUES("126","Viewed List of Communication","1","2014-03-05 19:16:49");
INSERT INTO tbl_activity VALUES("127","Added Another Communication","1","2014-03-05 19:17:39");
INSERT INTO tbl_activity VALUES("128","View Communication ID: 2014 - 0018","1","2014-03-05 19:17:39");
INSERT INTO tbl_activity VALUES("129","Viewed List of Communication","1","2014-03-05 19:17:43");
INSERT INTO tbl_activity VALUES("130","Assigned 2014 - 0018 To An Urgent Communication","1","2014-03-05 19:17:48");
INSERT INTO tbl_activity VALUES("131","Viewed List of Communication","1","2014-03-05 19:17:48");
INSERT INTO tbl_activity VALUES("132","Viewed Committee Meeting List for Resolution","1","2014-03-05 19:17:53");
INSERT INTO tbl_activity VALUES("133","Added Another Resolution","1","2014-03-05 19:18:26");
INSERT INTO tbl_activity VALUES("134","Viewed Resolution No. 0009 - 2014","1","2014-03-05 19:18:26");
INSERT INTO tbl_activity VALUES("135","Viewed Committee Meeting List for Resolution","1","2014-03-05 19:18:33");
INSERT INTO tbl_activity VALUES("136","Searched Statistical Resolution Report","1","2014-03-05 19:18:41");
INSERT INTO tbl_activity VALUES("137","Searched Statistical Resolution Report","1","2014-03-05 19:19:25");
INSERT INTO tbl_activity VALUES("138","Searched Statistical Resolution Report","1","2014-03-05 19:19:56");
INSERT INTO tbl_activity VALUES("139","Searched Fiscal Yearly Resolution Report","1","2014-03-05 19:20:03");
INSERT INTO tbl_activity VALUES("140","Searched Fiscal Yearly Resolution Report","1","2014-03-05 19:20:14");
INSERT INTO tbl_activity VALUES("141","Searched Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-05 19:20:14");
INSERT INTO tbl_activity VALUES("142","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-05 19:20:21");
INSERT INTO tbl_activity VALUES("143","Searched Fiscal Yearly Resolution Report","1","2014-03-05 19:20:41");
INSERT INTO tbl_activity VALUES("144","Searched Monthly Resolution Report","1","2014-03-05 19:21:18");
INSERT INTO tbl_activity VALUES("145","Searched Resolution History","1","2014-03-05 19:21:20");
INSERT INTO tbl_activity VALUES("146","Printed Resolution History of Resolution No. 0004 - 2014","1","2014-03-05 19:21:28");
INSERT INTO tbl_activity VALUES("147","Printed Resolution History of Resolution No. 0004 - 2014","1","2014-03-05 19:26:32");
INSERT INTO tbl_activity VALUES("148","Printed Resolution History of Resolution No. 0004 - 2014","1","2014-03-05 19:26:54");
INSERT INTO tbl_activity VALUES("149","Printed Resolution History of Resolution No. 0004 - 2014","1","2014-03-05 19:27:20");
INSERT INTO tbl_activity VALUES("150","Printed Resolution History of Resolution No. 0004 - 2014","1","2014-03-05 19:28:06");
INSERT INTO tbl_activity VALUES("151","Viewed Communication List","1","2014-03-05 19:28:31");
INSERT INTO tbl_activity VALUES("152","Viewed Archived Communication List","1","2014-03-05 19:28:36");
INSERT INTO tbl_activity VALUES("153","View Communication ID: 2014 - 0001","1","2014-03-05 19:29:07");
INSERT INTO tbl_activity VALUES("154","Downloaded Communication Letter","1","2014-03-05 19:29:11");
INSERT INTO tbl_activity VALUES("155","Searched Monthly Committee Report per Committee","1","2014-03-05 19:29:22");
INSERT INTO tbl_activity VALUES("156","Viewed Monitor Ordinance List","1","2014-03-05 19:29:27");
INSERT INTO tbl_activity VALUES("157","Viewed Received Topics","1","2014-03-05 19:39:01");
INSERT INTO tbl_activity VALUES("158","Viewed Topic ID: 37","1","2014-03-05 19:39:05");
INSERT INTO tbl_activity VALUES("159","Searched Statistical Resolution Report","1","2014-03-05 19:39:17");
INSERT INTO tbl_activity VALUES("160","Searched Fiscal Yearly Resolution Report","1","2014-03-05 19:39:32");
INSERT INTO tbl_activity VALUES("161","Searched Fiscal Yearly Resolution Report","1","2014-03-05 19:39:44");
INSERT INTO tbl_activity VALUES("162","Searched Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-05 19:39:45");
INSERT INTO tbl_activity VALUES("163","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-05 19:39:52");
INSERT INTO tbl_activity VALUES("164","Searched Fiscal Yearly Resolution Report","1","2014-03-05 19:40:10");
INSERT INTO tbl_activity VALUES("165","Searched Resolution History","1","2014-03-05 19:40:15");
INSERT INTO tbl_activity VALUES("166","Printed Resolution History of Resolution No. 0002 - 2014","1","2014-03-05 19:40:23");
INSERT INTO tbl_activity VALUES("167","Searched Resolution History","1","2014-03-05 19:40:46");
INSERT INTO tbl_activity VALUES("168","Viewed List of Communication","1","2014-03-05 19:40:55");
INSERT INTO tbl_activity VALUES("169","Viewed Archived Communication List","1","2014-03-05 19:40:58");
INSERT INTO tbl_activity VALUES("170","Retrieved Communication ID: 2014 - 0001","1","2014-03-05 19:41:09");
INSERT INTO tbl_activity VALUES("171","Viewed Archived Communication List","1","2014-03-05 19:41:15");
INSERT INTO tbl_activity VALUES("172","Viewed Archived Communication List","1","2014-03-05 19:41:15");
INSERT INTO tbl_activity VALUES("173","Viewed Committee Meeting List for Ordinance","1","2014-03-05 19:41:21");
INSERT INTO tbl_activity VALUES("174","Viewed Ordinance List","1","2014-03-05 19:41:25");
INSERT INTO tbl_activity VALUES("175","Searched Monthly Committee Report per Committee","1","2014-03-05 19:41:42");
INSERT INTO tbl_activity VALUES("176","Viewed Monitor Ordinance List","1","2014-03-05 19:41:47");
INSERT INTO tbl_activity VALUES("177","Viewed Monitor Ordinance ID: 1","1","2014-03-05 19:42:03");
INSERT INTO tbl_activity VALUES("178","Downloaded Monitor Ordinance Form","1","2014-03-05 19:42:07");
INSERT INTO tbl_activity VALUES("179","Downloaded Ordinance No. 0002 - 2014","1","2014-03-05 19:42:10");
INSERT INTO tbl_activity VALUES("180","Logged In","1","2014-03-06 07:57:57");
INSERT INTO tbl_activity VALUES("181","Return to Homepage","1","2014-03-06 07:58:03");
INSERT INTO tbl_activity VALUES("182","Searched Statistical Resolution Report","1","2014-03-06 07:58:36");
INSERT INTO tbl_activity VALUES("183","Searched Resolution History","1","2014-03-06 07:58:41");
INSERT INTO tbl_activity VALUES("184","Printed Resolution History of Resolution No. 0002 - 2014","1","2014-03-06 07:58:48");
INSERT INTO tbl_activity VALUES("185","Printed Resolution History of Resolution No. 0002 - 2014","1","2014-03-06 07:59:08");
INSERT INTO tbl_activity VALUES("186","Printed Resolution History of Resolution No. 0002 - 2014","1","2014-03-06 07:59:20");
INSERT INTO tbl_activity VALUES("187","Printed Resolution History of Resolution No. 0002 - 2014","1","2014-03-06 08:00:40");
INSERT INTO tbl_activity VALUES("188","Printed Resolution History of Resolution No. 0002 - 2014","1","2014-03-06 08:00:49");
INSERT INTO tbl_activity VALUES("189","Printed Resolution History of Resolution No. 0002 - 2014","1","2014-03-06 08:02:07");
INSERT INTO tbl_activity VALUES("190","Printed Resolution History of Resolution No. 0002 - 2014","1","2014-03-06 08:02:15");
INSERT INTO tbl_activity VALUES("191","Printed Resolution History of Resolution No. 0002 - 2014","1","2014-03-06 08:02:52");
INSERT INTO tbl_activity VALUES("192","Printed Resolution History of Resolution No. 0002 - 2014","1","2014-03-06 08:03:15");
INSERT INTO tbl_activity VALUES("193","Printed Resolution History of Resolution No. 0002 - 2014","1","2014-03-06 08:03:39");
INSERT INTO tbl_activity VALUES("194","Printed Resolution History of Resolution No. 0002 - 2014","1","2014-03-06 08:03:52");
INSERT INTO tbl_activity VALUES("195","Printed Resolution History of Resolution No. 0002 - 2014","1","2014-03-06 08:04:01");
INSERT INTO tbl_activity VALUES("196","Printed Resolution History of Resolution No. 0002 - 2014","1","2014-03-06 08:04:11");
INSERT INTO tbl_activity VALUES("197","Printed Resolution History of Resolution No. 0002 - 2014","1","2014-03-06 08:04:22");
INSERT INTO tbl_activity VALUES("198","Printed Resolution History of Resolution No. 0002 - 2014","1","2014-03-06 08:04:30");
INSERT INTO tbl_activity VALUES("199","Printed Resolution History of Resolution No. 0002 - 2014","1","2014-03-06 08:04:37");
INSERT INTO tbl_activity VALUES("200","Printed Resolution History of Resolution No. 0002 - 2014","1","2014-03-06 08:04:52");
INSERT INTO tbl_activity VALUES("201","Printed Resolution History of Resolution No. 0002 - 2014","1","2014-03-06 08:05:15");
INSERT INTO tbl_activity VALUES("202","Searched Resolution History","1","2014-03-06 08:07:19");
INSERT INTO tbl_activity VALUES("203","Searched Fiscal Yearly Resolution Report","1","2014-03-06 08:07:23");
INSERT INTO tbl_activity VALUES("204","Searched Fiscal Yearly Resolution Report","1","2014-03-06 08:07:29");
INSERT INTO tbl_activity VALUES("205","Searched Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:07:29");
INSERT INTO tbl_activity VALUES("206","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:07:32");
INSERT INTO tbl_activity VALUES("207","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:08:19");
INSERT INTO tbl_activity VALUES("208","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:08:30");
INSERT INTO tbl_activity VALUES("209","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:08:44");
INSERT INTO tbl_activity VALUES("210","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:08:57");
INSERT INTO tbl_activity VALUES("211","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:09:29");
INSERT INTO tbl_activity VALUES("212","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:09:42");
INSERT INTO tbl_activity VALUES("213","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:10:09");
INSERT INTO tbl_activity VALUES("214","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:11:15");
INSERT INTO tbl_activity VALUES("215","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:11:42");
INSERT INTO tbl_activity VALUES("216","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:11:53");
INSERT INTO tbl_activity VALUES("217","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:12:11");
INSERT INTO tbl_activity VALUES("218","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:12:32");
INSERT INTO tbl_activity VALUES("219","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:13:06");
INSERT INTO tbl_activity VALUES("220","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:13:28");
INSERT INTO tbl_activity VALUES("221","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:14:24");
INSERT INTO tbl_activity VALUES("222","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:14:45");
INSERT INTO tbl_activity VALUES("223","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:14:59");
INSERT INTO tbl_activity VALUES("224","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:15:13");
INSERT INTO tbl_activity VALUES("225","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:15:28");
INSERT INTO tbl_activity VALUES("226","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:15:39");
INSERT INTO tbl_activity VALUES("227","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:15:53");
INSERT INTO tbl_activity VALUES("228","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:16:16");
INSERT INTO tbl_activity VALUES("229","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:16:43");
INSERT INTO tbl_activity VALUES("230","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:17:40");
INSERT INTO tbl_activity VALUES("231","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:18:14");
INSERT INTO tbl_activity VALUES("232","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:18:34");
INSERT INTO tbl_activity VALUES("233","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:19:35");
INSERT INTO tbl_activity VALUES("234","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:20:08");
INSERT INTO tbl_activity VALUES("235","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:21:18");
INSERT INTO tbl_activity VALUES("236","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:21:46");
INSERT INTO tbl_activity VALUES("237","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:21:55");
INSERT INTO tbl_activity VALUES("238","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:22:34");
INSERT INTO tbl_activity VALUES("239","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:25:54");
INSERT INTO tbl_activity VALUES("240","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:26:17");
INSERT INTO tbl_activity VALUES("241","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:26:33");
INSERT INTO tbl_activity VALUES("242","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:27:11");
INSERT INTO tbl_activity VALUES("243","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:27:40");
INSERT INTO tbl_activity VALUES("244","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:29:45");
INSERT INTO tbl_activity VALUES("245","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:30:24");
INSERT INTO tbl_activity VALUES("246","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:30:36");
INSERT INTO tbl_activity VALUES("247","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:30:58");
INSERT INTO tbl_activity VALUES("248","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:31:32");
INSERT INTO tbl_activity VALUES("249","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:31:55");
INSERT INTO tbl_activity VALUES("250","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:32:12");
INSERT INTO tbl_activity VALUES("251","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:32:23");
INSERT INTO tbl_activity VALUES("252","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:32:55");
INSERT INTO tbl_activity VALUES("253","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:33:15");
INSERT INTO tbl_activity VALUES("254","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:33:35");
INSERT INTO tbl_activity VALUES("255","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:33:54");
INSERT INTO tbl_activity VALUES("256","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:34:01");
INSERT INTO tbl_activity VALUES("257","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:37:01");
INSERT INTO tbl_activity VALUES("258","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:37:11");
INSERT INTO tbl_activity VALUES("259","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:37:56");
INSERT INTO tbl_activity VALUES("260","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:39:40");
INSERT INTO tbl_activity VALUES("261","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:41:43");
INSERT INTO tbl_activity VALUES("262","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:42:30");
INSERT INTO tbl_activity VALUES("263","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:42:50");
INSERT INTO tbl_activity VALUES("264","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 08:43:04");
INSERT INTO tbl_activity VALUES("265","Logged In","1","2014-03-06 10:22:53");
INSERT INTO tbl_activity VALUES("266","Return to Homepage","1","2014-03-06 10:22:54");
INSERT INTO tbl_activity VALUES("267","Searched Statistical Resolution Report","1","2014-03-06 10:22:59");
INSERT INTO tbl_activity VALUES("268","Searched Fiscal Yearly Resolution Report","1","2014-03-06 10:23:06");
INSERT INTO tbl_activity VALUES("269","Searched Fiscal Yearly Resolution Report","1","2014-03-06 10:23:13");
INSERT INTO tbl_activity VALUES("270","Searched Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:23:13");
INSERT INTO tbl_activity VALUES("271","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:23:16");
INSERT INTO tbl_activity VALUES("272","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:23:39");
INSERT INTO tbl_activity VALUES("273","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:24:00");
INSERT INTO tbl_activity VALUES("274","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:26:43");
INSERT INTO tbl_activity VALUES("275","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:27:28");
INSERT INTO tbl_activity VALUES("276","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:28:44");
INSERT INTO tbl_activity VALUES("277","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:29:08");
INSERT INTO tbl_activity VALUES("278","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:29:45");
INSERT INTO tbl_activity VALUES("279","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:30:11");
INSERT INTO tbl_activity VALUES("280","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:30:28");
INSERT INTO tbl_activity VALUES("281","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:30:56");
INSERT INTO tbl_activity VALUES("282","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:31:26");
INSERT INTO tbl_activity VALUES("283","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:32:18");
INSERT INTO tbl_activity VALUES("284","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:32:43");
INSERT INTO tbl_activity VALUES("285","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:33:54");
INSERT INTO tbl_activity VALUES("286","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:35:36");
INSERT INTO tbl_activity VALUES("287","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:36:04");
INSERT INTO tbl_activity VALUES("288","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:36:24");
INSERT INTO tbl_activity VALUES("289","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:36:43");
INSERT INTO tbl_activity VALUES("290","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:36:58");
INSERT INTO tbl_activity VALUES("291","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:37:12");
INSERT INTO tbl_activity VALUES("292","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:38:39");
INSERT INTO tbl_activity VALUES("293","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:39:00");
INSERT INTO tbl_activity VALUES("294","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:39:51");
INSERT INTO tbl_activity VALUES("295","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:39:59");
INSERT INTO tbl_activity VALUES("296","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:40:25");
INSERT INTO tbl_activity VALUES("297","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:40:53");
INSERT INTO tbl_activity VALUES("298","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:41:09");
INSERT INTO tbl_activity VALUES("299","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:41:28");
INSERT INTO tbl_activity VALUES("300","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:41:37");
INSERT INTO tbl_activity VALUES("301","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:41:51");
INSERT INTO tbl_activity VALUES("302","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:42:43");
INSERT INTO tbl_activity VALUES("303","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:43:31");
INSERT INTO tbl_activity VALUES("304","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:43:53");
INSERT INTO tbl_activity VALUES("305","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:44:14");
INSERT INTO tbl_activity VALUES("306","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:44:46");
INSERT INTO tbl_activity VALUES("307","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:45:25");
INSERT INTO tbl_activity VALUES("308","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:45:43");
INSERT INTO tbl_activity VALUES("309","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:46:25");
INSERT INTO tbl_activity VALUES("310","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:46:59");
INSERT INTO tbl_activity VALUES("311","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:47:21");
INSERT INTO tbl_activity VALUES("312","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:48:47");
INSERT INTO tbl_activity VALUES("313","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:49:30");
INSERT INTO tbl_activity VALUES("314","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:49:54");
INSERT INTO tbl_activity VALUES("315","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:50:38");
INSERT INTO tbl_activity VALUES("316","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:51:50");
INSERT INTO tbl_activity VALUES("317","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:52:44");
INSERT INTO tbl_activity VALUES("318","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:56:11");
INSERT INTO tbl_activity VALUES("319","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:56:36");
INSERT INTO tbl_activity VALUES("320","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:56:55");
INSERT INTO tbl_activity VALUES("321","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:57:07");
INSERT INTO tbl_activity VALUES("322","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:57:41");
INSERT INTO tbl_activity VALUES("323","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:58:06");
INSERT INTO tbl_activity VALUES("324","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:58:34");
INSERT INTO tbl_activity VALUES("325","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:58:50");
INSERT INTO tbl_activity VALUES("326","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:59:45");
INSERT INTO tbl_activity VALUES("327","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 10:59:55");
INSERT INTO tbl_activity VALUES("328","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 11:00:22");
INSERT INTO tbl_activity VALUES("329","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 11:00:34");
INSERT INTO tbl_activity VALUES("330","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 11:01:26");
INSERT INTO tbl_activity VALUES("331","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 11:01:45");
INSERT INTO tbl_activity VALUES("332","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 11:01:55");
INSERT INTO tbl_activity VALUES("333","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 11:02:13");
INSERT INTO tbl_activity VALUES("334","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 11:04:00");
INSERT INTO tbl_activity VALUES("335","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 11:04:47");
INSERT INTO tbl_activity VALUES("336","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 11:05:09");
INSERT INTO tbl_activity VALUES("337","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 11:06:05");
INSERT INTO tbl_activity VALUES("338","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 11:12:34");
INSERT INTO tbl_activity VALUES("339","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 11:12:44");
INSERT INTO tbl_activity VALUES("340","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 11:13:00");
INSERT INTO tbl_activity VALUES("341","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 11:13:22");
INSERT INTO tbl_activity VALUES("342","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 11:14:12");
INSERT INTO tbl_activity VALUES("343","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 11:15:20");
INSERT INTO tbl_activity VALUES("344","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 11:16:42");
INSERT INTO tbl_activity VALUES("345","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 11:17:11");
INSERT INTO tbl_activity VALUES("346","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 11:17:17");
INSERT INTO tbl_activity VALUES("347","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 11:17:28");
INSERT INTO tbl_activity VALUES("348","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 11:18:09");
INSERT INTO tbl_activity VALUES("349","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 11:20:19");
INSERT INTO tbl_activity VALUES("350","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 11:20:43");
INSERT INTO tbl_activity VALUES("351","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 11:20:55");
INSERT INTO tbl_activity VALUES("352","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 11:21:14");
INSERT INTO tbl_activity VALUES("353","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 11:21:29");
INSERT INTO tbl_activity VALUES("354","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 11:22:10");
INSERT INTO tbl_activity VALUES("355","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 11:22:21");
INSERT INTO tbl_activity VALUES("356","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 11:23:18");
INSERT INTO tbl_activity VALUES("357","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 11:24:31");
INSERT INTO tbl_activity VALUES("358","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 11:24:45");
INSERT INTO tbl_activity VALUES("359","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 11:25:09");
INSERT INTO tbl_activity VALUES("360","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 11:25:56");
INSERT INTO tbl_activity VALUES("361","Searched Fiscal Yearly Resolution Report","1","2014-03-06 11:28:01");
INSERT INTO tbl_activity VALUES("362","Searched Yearly Authored Resolution","1","2014-03-06 11:28:05");
INSERT INTO tbl_activity VALUES("363","Searched Yearly Authored Resolution","1","2014-03-06 11:28:10");
INSERT INTO tbl_activity VALUES("364","Searched Yearly Authored Resolution of John Billy D. Marbella","1","2014-03-06 11:28:11");
INSERT INTO tbl_activity VALUES("365","Printed Yearly Authored Resolution of John Billy D. Marbella","1","2014-03-06 11:28:14");
INSERT INTO tbl_activity VALUES("366","Searched Yearly Authored Resolution","1","2014-03-06 11:29:20");
INSERT INTO tbl_activity VALUES("367","Searched Monthly Authored Resolution","1","2014-03-06 11:29:23");
INSERT INTO tbl_activity VALUES("368","Searched Monthly Authored Resolution","1","2014-03-06 11:29:31");
INSERT INTO tbl_activity VALUES("369","Searched Monthly Authored Resolution of John Billy D. Marbella","1","2014-03-06 11:29:31");
INSERT INTO tbl_activity VALUES("370","Printed Monthly Authored Resolution of John Billy D. Marbella","1","2014-03-06 11:29:35");
INSERT INTO tbl_activity VALUES("371","Printed Monthly Authored Resolution of John Billy D. Marbella","1","2014-03-06 11:30:35");
INSERT INTO tbl_activity VALUES("372","Printed Monthly Authored Resolution of John Billy D. Marbella","1","2014-03-06 11:31:04");
INSERT INTO tbl_activity VALUES("373","Searched Monthly Authored Resolution","1","2014-03-06 11:31:44");
INSERT INTO tbl_activity VALUES("374","Searched Yearly Authored Resolution","1","2014-03-06 11:31:48");
INSERT INTO tbl_activity VALUES("375","Searched Yearly Authored Resolution","1","2014-03-06 11:32:27");
INSERT INTO tbl_activity VALUES("376","Searched Yearly Authored Resolution of John Billy D. Marbella","1","2014-03-06 11:32:28");
INSERT INTO tbl_activity VALUES("377","Printed Yearly Authored Resolution of John Billy D. Marbella","1","2014-03-06 11:32:31");
INSERT INTO tbl_activity VALUES("378","Printed Yearly Authored Resolution of John Billy D. Marbella","1","2014-03-06 11:32:48");
INSERT INTO tbl_activity VALUES("379","Printed Yearly Authored Resolution of John Billy D. Marbella","1","2014-03-06 11:33:17");
INSERT INTO tbl_activity VALUES("380","Printed Yearly Authored Resolution of John Billy D. Marbella","1","2014-03-06 11:35:17");
INSERT INTO tbl_activity VALUES("381","Searched Yearly Authored Resolution","1","2014-03-06 11:35:47");
INSERT INTO tbl_activity VALUES("382","Searched Statistical Resolution Report","1","2014-03-06 11:35:51");
INSERT INTO tbl_activity VALUES("383","Searched Monthly Resolution Report","1","2014-03-06 11:35:57");
INSERT INTO tbl_activity VALUES("384","Searched Monthly Resolution Report","1","2014-03-06 11:36:08");
INSERT INTO tbl_activity VALUES("385","Searched 02 2014 Resolution Report","1","2014-03-06 11:36:08");
INSERT INTO tbl_activity VALUES("386","Printed2014-02 Resolution Report","1","2014-03-06 11:36:10");
INSERT INTO tbl_activity VALUES("387","Printed2014-02 Resolution Report","1","2014-03-06 11:36:47");
INSERT INTO tbl_activity VALUES("388","Printed2014-02 Resolution Report","1","2014-03-06 11:37:33");
INSERT INTO tbl_activity VALUES("389","Printed2014-02 Resolution Report","1","2014-03-06 11:38:49");
INSERT INTO tbl_activity VALUES("390","Printed2014-02 Resolution Report","1","2014-03-06 11:39:22");
INSERT INTO tbl_activity VALUES("391","Printed2014-02 Resolution Report","1","2014-03-06 11:39:50");
INSERT INTO tbl_activity VALUES("392","Searched Monthly Resolution Report","1","2014-03-06 11:40:36");
INSERT INTO tbl_activity VALUES("393","Searched Resolution History","1","2014-03-06 11:40:40");
INSERT INTO tbl_activity VALUES("394","Printed Resolution History of Resolution No. 0002 - 2014","1","2014-03-06 11:40:45");
INSERT INTO tbl_activity VALUES("395","Printed Resolution History of Resolution No. 0002 - 2014","1","2014-03-06 11:40:59");
INSERT INTO tbl_activity VALUES("396","Printed Resolution History of Resolution No. 0002 - 2014","1","2014-03-06 11:41:21");
INSERT INTO tbl_activity VALUES("397","Printed Resolution History of Resolution No. 0002 - 2014","1","2014-03-06 11:42:24");
INSERT INTO tbl_activity VALUES("398","Searched Authored Yearly Ordinance","1","2014-03-06 11:43:00");
INSERT INTO tbl_activity VALUES("399","Searched Authored Yearly Ordinance","1","2014-03-06 11:43:15");
INSERT INTO tbl_activity VALUES("400","Searched Yearly Ordinance of John Billy D. Marbella for the year 2014","1","2014-03-06 11:43:15");
INSERT INTO tbl_activity VALUES("401","Printed Yearly Ordinance of John Billy D. Marbella","1","2014-03-06 11:43:21");
INSERT INTO tbl_activity VALUES("402","Printed Yearly Ordinance of John Billy D. Marbella","1","2014-03-06 11:44:57");
INSERT INTO tbl_activity VALUES("403","Printed Yearly Ordinance of John Billy D. Marbella","1","2014-03-06 11:45:39");
INSERT INTO tbl_activity VALUES("404","Viewed Statistical Report of Ordinance","1","2014-03-06 11:46:55");
INSERT INTO tbl_activity VALUES("405","Searched Ordinance History","1","2014-03-06 11:47:01");
INSERT INTO tbl_activity VALUES("406","Printed Ordinance History Ordinance No. 0002 - 2014","1","2014-03-06 11:47:05");
INSERT INTO tbl_activity VALUES("407","Printed Ordinance History Ordinance No. 0002 - 2014","1","2014-03-06 11:47:53");
INSERT INTO tbl_activity VALUES("408","Searched Ordinance History","1","2014-03-06 11:48:19");
INSERT INTO tbl_activity VALUES("409","Searched Yearly Ordinance","1","2014-03-06 11:48:25");
INSERT INTO tbl_activity VALUES("410","Searched Yearly Ordinance","1","2014-03-06 11:48:41");
INSERT INTO tbl_activity VALUES("411","Printed Yearly Ordinance","1","2014-03-06 11:48:47");
INSERT INTO tbl_activity VALUES("412","Printed Yearly Ordinance","1","2014-03-06 11:49:51");
INSERT INTO tbl_activity VALUES("413","Printed Yearly Ordinance","1","2014-03-06 11:50:05");
INSERT INTO tbl_activity VALUES("414","Printed Yearly Ordinance","1","2014-03-06 11:50:39");
INSERT INTO tbl_activity VALUES("415","Printed Yearly Ordinance","1","2014-03-06 11:51:17");
INSERT INTO tbl_activity VALUES("416","Printed Yearly Ordinance","1","2014-03-06 11:52:07");
INSERT INTO tbl_activity VALUES("417","Printed Yearly Ordinance","1","2014-03-06 11:52:30");
INSERT INTO tbl_activity VALUES("418","Printed Yearly Ordinance","1","2014-03-06 11:52:39");
INSERT INTO tbl_activity VALUES("419","Printed Yearly Ordinance","1","2014-03-06 11:56:02");
INSERT INTO tbl_activity VALUES("420","Searched Yearly Ordinance","1","2014-03-06 11:56:07");
INSERT INTO tbl_activity VALUES("421","Searched Monthly Committee Report per Committee","1","2014-03-06 11:56:14");
INSERT INTO tbl_activity VALUES("422","Searched Monthly Committee Report per Committee","1","2014-03-06 11:56:21");
INSERT INTO tbl_activity VALUES("423","Searched Monthly Committe Report of Committee of Barangay Affairs","1","2014-03-06 11:56:21");
INSERT INTO tbl_activity VALUES("424","Searched Monthly Committee Report per Committee","1","2014-03-06 11:56:33");
INSERT INTO tbl_activity VALUES("425","Searched Monthly Committe Report of Committee of Communication and Information Technology","1","2014-03-06 11:56:33");
INSERT INTO tbl_activity VALUES("426","Printed Monthly Committee Report of Committee of Communication and Information Technology","1","2014-03-06 11:56:38");
INSERT INTO tbl_activity VALUES("427","Printed Monthly Committee Report of Committee of Communication and Information Technology","1","2014-03-06 11:56:56");
INSERT INTO tbl_activity VALUES("428","Printed Monthly Committee Report of Committee of Communication and Information Technology","1","2014-03-06 11:57:12");
INSERT INTO tbl_activity VALUES("429","Printed Monthly Committee Report of Committee of Communication and Information Technology","1","2014-03-06 11:57:48");
INSERT INTO tbl_activity VALUES("430","Printed Monthly Committee Report of Committee of Communication and Information Technology","1","2014-03-06 11:58:27");
INSERT INTO tbl_activity VALUES("431","Printed Monthly Committee Report of Committee of Communication and Information Technology","1","2014-03-06 11:58:57");
INSERT INTO tbl_activity VALUES("432","Printed Monthly Committee Report of Committee of Communication and Information Technology","1","2014-03-06 12:00:07");
INSERT INTO tbl_activity VALUES("433","Printed Monthly Committee Report of Committee of Communication and Information Technology","1","2014-03-06 12:02:03");
INSERT INTO tbl_activity VALUES("434","Searched Monthly Committee Report per Committee","1","2014-03-06 12:02:09");
INSERT INTO tbl_activity VALUES("435","Searched Yearly Committe Report per Committe","1","2014-03-06 12:02:13");
INSERT INTO tbl_activity VALUES("436","Searched Yearly Committe Report per Committe","1","2014-03-06 12:02:22");
INSERT INTO tbl_activity VALUES("437","Searched Yearly Committe Report of Committee of Communication and Information Technology","1","2014-03-06 12:02:22");
INSERT INTO tbl_activity VALUES("438","Searched Yearly Committe Report of Committee of Communication and Information Technology","1","2014-03-06 12:02:27");
INSERT INTO tbl_activity VALUES("439","Searched Yearly Committe Report per Committe","1","2014-03-06 12:03:00");
INSERT INTO tbl_activity VALUES("440","Viewed List of Communication","1","2014-03-06 13:31:43");
INSERT INTO tbl_activity VALUES("441","Logged In","1","2014-03-06 16:31:32");
INSERT INTO tbl_activity VALUES("442","Return to Homepage","1","2014-03-06 16:31:38");
INSERT INTO tbl_activity VALUES("443","Viewed Received Topics","1","2014-03-06 16:32:13");
INSERT INTO tbl_activity VALUES("444","Logged In","1","2014-03-06 16:33:54");
INSERT INTO tbl_activity VALUES("445","Return to Homepage","1","2014-03-06 16:33:54");
INSERT INTO tbl_activity VALUES("446","Viewed Received Topics","1","2014-03-06 16:34:13");
INSERT INTO tbl_activity VALUES("447","Logged In","2","2014-03-06 16:35:16");
INSERT INTO tbl_activity VALUES("448","Return to Homepage","2","2014-03-06 16:35:16");
INSERT INTO tbl_activity VALUES("449","Viewed Received Topics","1","2014-03-06 16:55:13");
INSERT INTO tbl_activity VALUES("450","Viewed Topic ID: 45","1","2014-03-06 16:55:19");
INSERT INTO tbl_activity VALUES("451","Searched Statistical Resolution Report","1","2014-03-06 16:55:37");
INSERT INTO tbl_activity VALUES("452","Searched Fiscal Yearly Resolution Report","1","2014-03-06 16:56:01");
INSERT INTO tbl_activity VALUES("453","Searched Fiscal Yearly Resolution Report","1","2014-03-06 16:56:13");
INSERT INTO tbl_activity VALUES("454","Searched Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-06 16:56:13");
INSERT INTO tbl_activity VALUES("455","Searched Fiscal Yearly Resolution Report","1","2014-03-06 16:56:23");
INSERT INTO tbl_activity VALUES("456","Searched Fiscal Yearly 2013 - 2014 Resolution Report","1","2014-03-06 16:56:23");
INSERT INTO tbl_activity VALUES("457","Printed Fiscal Yearly 2013 - 2014 Resolution Report","1","2014-03-06 16:56:28");
INSERT INTO tbl_activity VALUES("458","Viewed Communication List","1","2014-03-06 16:57:40");
INSERT INTO tbl_activity VALUES("459","Viewed Archived Communication List","1","2014-03-06 16:57:45");
INSERT INTO tbl_activity VALUES("460","Viewed Committee Meeting List for Ordinance","1","2014-03-06 16:58:12");
INSERT INTO tbl_activity VALUES("461","Viewed Ordinance List","1","2014-03-06 16:58:15");
INSERT INTO tbl_activity VALUES("462","Viewed Ordinance List","1","2014-03-06 16:58:29");
INSERT INTO tbl_activity VALUES("463","Searched Monthly Committee Report per Committee","1","2014-03-06 16:58:43");
INSERT INTO tbl_activity VALUES("464","Viewed Monitor Ordinance List","1","2014-03-06 16:58:46");
INSERT INTO tbl_activity VALUES("465","Viewed Monitor Ordinance ID: 1","1","2014-03-06 16:59:32");
INSERT INTO tbl_activity VALUES("466","Downloaded Ordinance No. 0002 - 2014","1","2014-03-06 16:59:36");
INSERT INTO tbl_activity VALUES("467","Downloaded Monitor Ordinance Form","1","2014-03-06 16:59:42");
INSERT INTO tbl_activity VALUES("468","Viewed Monitor Ordinance List","1","2014-03-06 17:00:00");
INSERT INTO tbl_activity VALUES("469","Logged In","1","2014-03-16 12:42:48");
INSERT INTO tbl_activity VALUES("470","Return to Homepage","1","2014-03-16 12:42:49");
INSERT INTO tbl_activity VALUES("471","View Backed-up System","1","2014-03-16 12:42:57");
INSERT INTO tbl_activity VALUES("472","Backed-up System","1","2014-03-16 12:43:02");
INSERT INTO tbl_activity VALUES("473","View Backed-up System","1","2014-03-16 12:43:02");
INSERT INTO tbl_activity VALUES("474","Backed-up System","1","2014-03-16 12:44:04");
INSERT INTO tbl_activity VALUES("475","View Backed-up System","1","2014-03-16 12:44:09");
INSERT INTO tbl_activity VALUES("476","View Backed-up System","1","2014-03-16 12:44:26");
INSERT INTO tbl_activity VALUES("477","Restored System","1","2014-03-26 08:06:19");
INSERT INTO tbl_activity VALUES("478","Viewed Backed-up System List","1","2014-03-26 08:06:20");
INSERT INTO tbl_activity VALUES("479","Viewed Backed-up System List","1","2014-03-26 08:15:32");
INSERT INTO tbl_activity VALUES("480","Viewed Backed-up System List","1","2014-03-26 08:15:43");
INSERT INTO tbl_activity VALUES("481","Downloaded Database File","1","2014-03-26 08:15:54");
INSERT INTO tbl_activity VALUES("482","Viewed Official List","1","2014-03-26 08:16:56");
INSERT INTO tbl_activity VALUES("483","Searched Monthly Committee Report per Committee","1","2014-03-26 08:17:20");
INSERT INTO tbl_activity VALUES("484","Viewed Tracking List of Communication","1","2014-03-26 08:17:24");
INSERT INTO tbl_activity VALUES("485","Viewed Monitor Ordinance List","1","2014-03-26 08:18:29");
INSERT INTO tbl_activity VALUES("486","Viewed Monitor Ordinance List","1","2014-03-26 08:20:00");
INSERT INTO tbl_activity VALUES("487","Viewed List of Communication","1","2014-03-26 08:20:42");
INSERT INTO tbl_activity VALUES("488","Viewed Communication List","1","2014-03-26 08:20:46");
INSERT INTO tbl_activity VALUES("489","Viewed Audit Trails","1","2014-03-26 08:20:58");
INSERT INTO tbl_activity VALUES("490","Viewed Audit Trails","1","2014-03-26 08:21:17");
INSERT INTO tbl_activity VALUES("491","Viewed Audit Trails","1","2014-03-26 08:21:20");
INSERT INTO tbl_activity VALUES("492","Viewed Audit Trails","1","2014-03-26 08:22:04");
INSERT INTO tbl_activity VALUES("493","Searched Monthly Committee Report per Committee","1","2014-03-26 08:25:39");
INSERT INTO tbl_activity VALUES("494","Viewed Agenda List","1","2014-03-26 08:25:43");
INSERT INTO tbl_activity VALUES("495","Viewed List of Communication","1","2014-03-26 08:25:58");
INSERT INTO tbl_activity VALUES("496","Viewed Communication for Referral List","1","2014-03-26 08:25:58");
INSERT INTO tbl_activity VALUES("497","Viewed List of Referrals for Committe Meeting","1","2014-03-26 08:26:33");
INSERT INTO tbl_activity VALUES("498","Viewed List of Referral for Committee Meeting","1","2014-03-26 08:27:16");
INSERT INTO tbl_activity VALUES("499","Viewed Committee Meeting List for Resolution","1","2014-03-26 08:27:20");
INSERT INTO tbl_activity VALUES("500","Viewed Committee Meeting List for Ordinance","1","2014-03-26 08:27:23");
INSERT INTO tbl_activity VALUES("501","Viewed List of Communication","1","2014-03-26 08:27:26");
INSERT INTO tbl_activity VALUES("502","Added Another Communication","1","2014-03-26 08:28:19");
INSERT INTO tbl_activity VALUES("503","View Communication ID: 2014 - 0019","1","2014-03-26 08:28:24");
INSERT INTO tbl_activity VALUES("504","Viewed List of Communication","1","2014-03-26 08:28:29");
INSERT INTO tbl_activity VALUES("505","Assigned 2014 - 0019 To An Urgent Communication","1","2014-03-26 08:28:35");
INSERT INTO tbl_activity VALUES("506","Viewed List of Communication","1","2014-03-26 08:28:40");
INSERT INTO tbl_activity VALUES("507","Viewed Communication for Referral List","1","2014-03-26 08:28:43");
INSERT INTO tbl_activity VALUES("508","Viewed Committee Meeting List for Resolution","1","2014-03-26 08:28:47");
INSERT INTO tbl_activity VALUES("509","Viewed Official List","1","2014-03-26 08:36:16");
INSERT INTO tbl_activity VALUES("510","Added Another Official","1","2014-03-26 01:41:30");
INSERT INTO tbl_activity VALUES("511","Viewed Official ID: ","1","2014-03-26 08:41:35");
INSERT INTO tbl_activity VALUES("512","Viewed Official List","1","2014-03-26 08:43:53");
INSERT INTO tbl_activity VALUES("513","Viewed Employee List","1","2014-03-26 08:43:58");
INSERT INTO tbl_activity VALUES("514","Viewed User List","1","2014-03-26 08:44:59");
INSERT INTO tbl_activity VALUES("515","Return to Homepage","1","2014-03-26 08:45:35");
INSERT INTO tbl_activity VALUES("516","Viewed User List","1","2014-03-26 08:45:43");
INSERT INTO tbl_activity VALUES("517","Viewed User List","1","2014-03-26 08:45:59");
INSERT INTO tbl_activity VALUES("518","Viewed User List","1","2014-03-26 08:46:51");
INSERT INTO tbl_activity VALUES("519","Viewed User List","1","2014-03-26 08:47:04");
INSERT INTO tbl_activity VALUES("520","Viewed User ID: admin","1","2014-03-26 08:48:08");
INSERT INTO tbl_activity VALUES("521","Viewed List of Communication","1","2014-03-26 08:50:16");
INSERT INTO tbl_activity VALUES("522","Viewed Communication List","1","2014-03-26 08:50:19");
INSERT INTO tbl_activity VALUES("523","Added Another Communication","1","2014-03-26 08:51:06");
INSERT INTO tbl_activity VALUES("524","View Communication ID: 2014 - 0020","1","2014-03-26 08:51:12");
INSERT INTO tbl_activity VALUES("525","Added Another Communication","1","2014-03-26 08:51:43");
INSERT INTO tbl_activity VALUES("526","View Communication ID: 2014 - 0021","1","2014-03-26 08:51:48");
INSERT INTO tbl_activity VALUES("527","Added Another Communication","1","2014-03-26 08:52:18");
INSERT INTO tbl_activity VALUES("528","View Communication ID: 2014 - 0022","1","2014-03-26 08:52:23");
INSERT INTO tbl_activity VALUES("529","Viewed List of Communication","1","2014-03-26 08:52:31");
INSERT INTO tbl_activity VALUES("530","Added Another Communication","1","2014-03-26 08:52:56");
INSERT INTO tbl_activity VALUES("531","View Communication ID: 2014 - 0023","1","2014-03-26 08:53:01");
INSERT INTO tbl_activity VALUES("532","Added Another Communication","1","2014-03-26 08:53:24");
INSERT INTO tbl_activity VALUES("533","View Communication ID: 2014 - 0024","1","2014-03-26 08:53:29");
INSERT INTO tbl_activity VALUES("534","Viewed Archived Communication List","1","2014-03-26 08:53:36");
INSERT INTO tbl_activity VALUES("535","Viewed List of Communication","1","2014-03-26 08:53:40");
INSERT INTO tbl_activity VALUES("536","Assigned 2014 - 0020 for Referral","1","2014-03-26 08:53:49");
INSERT INTO tbl_activity VALUES("537","Viewed List of Communication","1","2014-03-26 08:53:55");
INSERT INTO tbl_activity VALUES("538","Assigned 2014 - 0021 for Referral","1","2014-03-26 08:53:58");
INSERT INTO tbl_activity VALUES("539","Viewed List of Communication","1","2014-03-26 08:53:58");
INSERT INTO tbl_activity VALUES("540","Assigned 2014 - 0022 for Referral","1","2014-03-26 08:54:00");
INSERT INTO tbl_activity VALUES("541","Viewed List of Communication","1","2014-03-26 08:54:01");
INSERT INTO tbl_activity VALUES("542","Assigned 2014 - 0023 for Referral","1","2014-03-26 08:54:04");
INSERT INTO tbl_activity VALUES("543","Viewed List of Communication","1","2014-03-26 08:54:04");
INSERT INTO tbl_activity VALUES("544","Viewed Communication for Referral List","1","2014-03-26 08:54:07");
INSERT INTO tbl_activity VALUES("545","Added Another Referral","1","2014-03-26 08:54:30");
INSERT INTO tbl_activity VALUES("546","Viewed Referral ID: 47","1","2014-03-26 08:54:35");
INSERT INTO tbl_activity VALUES("547","Viewed Communication for Referral List","1","2014-03-26 08:54:38");
INSERT INTO tbl_activity VALUES("548","Added Another Referral","1","2014-03-26 08:55:42");
INSERT INTO tbl_activity VALUES("549","Viewed Referral ID: 48","1","2014-03-26 08:55:47");
INSERT INTO tbl_activity VALUES("550","Viewed Communication for Referral List","1","2014-03-26 08:55:52");
INSERT INTO tbl_activity VALUES("551","Added Another Referral","1","2014-03-26 08:57:00");
INSERT INTO tbl_activity VALUES("552","Viewed Referral ID: 49","1","2014-03-26 08:57:05");
INSERT INTO tbl_activity VALUES("553","Viewed Communication for Referral List","1","2014-03-26 08:57:09");
INSERT INTO tbl_activity VALUES("554","Added Another Referral","1","2014-03-26 08:57:41");
INSERT INTO tbl_activity VALUES("555","Viewed Referral ID: 50","1","2014-03-26 08:57:46");
INSERT INTO tbl_activity VALUES("556","Viewed List of Referrals for Committe Meeting","1","2014-03-26 08:57:51");
INSERT INTO tbl_activity VALUES("557","Added Another Committee Meeting","1","2014-03-26 08:58:12");
INSERT INTO tbl_activity VALUES("558","View Committee Meeting ID: 35","1","2014-03-26 08:58:17");
INSERT INTO tbl_activity VALUES("559","Viewed List of Referrals for Committe Meeting","1","2014-03-26 08:58:22");
INSERT INTO tbl_activity VALUES("560","Added Another Committee Meeting","1","2014-03-26 08:58:38");
INSERT INTO tbl_activity VALUES("561","View Committee Meeting ID: 36","1","2014-03-26 08:58:43");
INSERT INTO tbl_activity VALUES("562","Viewed List of Referrals for Committe Meeting","1","2014-03-26 08:58:46");
INSERT INTO tbl_activity VALUES("563","Added Another Committee Meeting","1","2014-03-26 08:59:14");
INSERT INTO tbl_activity VALUES("564","View Committee Meeting ID: 37","1","2014-03-26 08:59:19");
INSERT INTO tbl_activity VALUES("565","View Committee Meeting ID: 37","1","2014-03-26 08:59:31");
INSERT INTO tbl_activity VALUES("566","Assigned Date of Committee Report of Committe Meeting ID: 37","1","2014-03-26 08:59:31");
INSERT INTO tbl_activity VALUES("567","View Committee Meeting ID: 37","1","2014-03-26 08:59:37");
INSERT INTO tbl_activity VALUES("568","Viewed List of Referral for Committee Meeting","1","2014-03-26 08:59:41");
INSERT INTO tbl_activity VALUES("569","Added Another Committee Meeting","1","2014-03-26 08:59:59");
INSERT INTO tbl_activity VALUES("570","Viewed Committee Meeting ID: 20","1","2014-03-26 09:00:05");
INSERT INTO tbl_activity VALUES("571","Viewed List of Referral for Committee Meeting","1","2014-03-26 09:00:09");
INSERT INTO tbl_activity VALUES("572","Added Another Committee Meeting","1","2014-03-26 09:00:24");
INSERT INTO tbl_activity VALUES("573","Viewed Committee Meeting ID: 21","1","2014-03-26 09:00:29");
INSERT INTO tbl_activity VALUES("574","Viewed Committee Meeting ID: 21","1","2014-03-26 09:00:38");
INSERT INTO tbl_activity VALUES("575","Assigned Date of Committe Report of Committee Meeting ID: 21","1","2014-03-26 09:00:39");
INSERT INTO tbl_activity VALUES("576","Viewed Committee Meeting ID: 21","1","2014-03-26 09:00:44");
INSERT INTO tbl_activity VALUES("577","Viewed Committee Meeting List for Resolution","1","2014-03-26 09:00:49");
INSERT INTO tbl_activity VALUES("578","Added Another Resolution","1","2014-03-26 09:01:15");
INSERT INTO tbl_activity VALUES("579","Viewed Resolution No. 0009 - 2014","1","2014-03-26 09:01:20");
INSERT INTO tbl_activity VALUES("580","Viewed Committee Meeting List for Ordinance","1","2014-03-26 09:01:40");
INSERT INTO tbl_activity VALUES("581","Viewed List of Communication","1","2014-03-26 09:01:56");
INSERT INTO tbl_activity VALUES("582","Viewed User List","1","2014-03-26 09:08:00");
INSERT INTO tbl_activity VALUES("583","Viewed Origin List","1","2014-03-26 09:08:19");
INSERT INTO tbl_activity VALUES("584","Added Another Origin","1","2014-03-26 09:09:51");
INSERT INTO tbl_activity VALUES("585","Viewed Origin ID: 4","1","2014-03-26 09:09:56");
INSERT INTO tbl_activity VALUES("586","Viewed Origin List","1","2014-03-26 09:10:49");
INSERT INTO tbl_activity VALUES("587","Added Another Origin","1","2014-03-26 09:11:26");
INSERT INTO tbl_activity VALUES("588","Viewed Origin ID: 5","1","2014-03-26 09:11:31");
INSERT INTO tbl_activity VALUES("589","Added Another Origin","1","2014-03-26 09:12:30");
INSERT INTO tbl_activity VALUES("590","Viewed Origin ID: 6","1","2014-03-26 09:12:35");
INSERT INTO tbl_activity VALUES("591","Added Another Origin","1","2014-03-26 09:12:50");
INSERT INTO tbl_activity VALUES("592","Viewed Origin ID: 7","1","2014-03-26 09:12:55");
INSERT INTO tbl_activity VALUES("593","Added Another Origin","1","2014-03-26 09:13:16");
INSERT INTO tbl_activity VALUES("594","Viewed Origin ID: 8","1","2014-03-26 09:13:21");
INSERT INTO tbl_activity VALUES("595","Added Another Origin","1","2014-03-26 02:13:36");
INSERT INTO tbl_activity VALUES("596","Viewed Origin ID: ","1","2014-03-26 09:13:41");
INSERT INTO tbl_activity VALUES("597","Viewed Origin ID: ","1","2014-03-26 09:14:22");
INSERT INTO tbl_activity VALUES("598","Added Another Origin","1","2014-03-26 09:14:47");
INSERT INTO tbl_activity VALUES("599","Viewed Origin ID: 9","1","2014-03-26 09:14:52");
INSERT INTO tbl_activity VALUES("600","Added Another Origin","1","2014-03-26 09:15:12");
INSERT INTO tbl_activity VALUES("601","Viewed Origin ID: 10","1","2014-03-26 09:15:17");
INSERT INTO tbl_activity VALUES("602","Added Another Origin","1","2014-03-26 09:15:34");
INSERT INTO tbl_activity VALUES("603","Viewed Origin ID: 11","1","2014-03-26 09:15:39");
INSERT INTO tbl_activity VALUES("604","Added Another Origin","1","2014-03-26 09:15:55");
INSERT INTO tbl_activity VALUES("605","Viewed Origin ID: 12","1","2014-03-26 09:16:00");
INSERT INTO tbl_activity VALUES("606","Added Another Origin","1","2014-03-26 09:16:20");
INSERT INTO tbl_activity VALUES("607","Viewed Origin ID: 13","1","2014-03-26 09:16:25");
INSERT INTO tbl_activity VALUES("608","Viewed Origin List","1","2014-03-26 09:17:09");
INSERT INTO tbl_activity VALUES("609","Viewed Origin List","1","2014-03-26 09:17:13");
INSERT INTO tbl_activity VALUES("610","Viewed Origin List","1","2014-03-26 09:17:27");
INSERT INTO tbl_activity VALUES("611","Viewed Origin List","1","2014-03-26 09:17:30");
INSERT INTO tbl_activity VALUES("612","Added Another Origin","1","2014-03-26 09:17:48");
INSERT INTO tbl_activity VALUES("613","Viewed Origin ID: 14","1","2014-03-26 09:17:54");
INSERT INTO tbl_activity VALUES("614","Viewed Origin List","1","2014-03-26 09:18:16");
INSERT INTO tbl_activity VALUES("615","Added Another Origin","1","2014-03-26 09:18:39");
INSERT INTO tbl_activity VALUES("616","Viewed Origin ID: 15","1","2014-03-26 09:18:44");
INSERT INTO tbl_activity VALUES("617","Added Another Origin","1","2014-03-26 09:19:08");
INSERT INTO tbl_activity VALUES("618","Viewed Origin ID: 16","1","2014-03-26 09:19:14");
INSERT INTO tbl_activity VALUES("619","Added Another Origin","1","2014-03-26 09:19:27");
INSERT INTO tbl_activity VALUES("620","Viewed Origin ID: 17","1","2014-03-26 09:19:32");
INSERT INTO tbl_activity VALUES("621","Added Another Origin","1","2014-03-26 09:19:57");
INSERT INTO tbl_activity VALUES("622","Viewed Origin ID: 18","1","2014-03-26 09:20:03");
INSERT INTO tbl_activity VALUES("623","Added Another Origin","1","2014-03-26 09:20:20");
INSERT INTO tbl_activity VALUES("624","Viewed Origin ID: 19","1","2014-03-26 09:20:25");
INSERT INTO tbl_activity VALUES("625","Viewed Origin List","1","2014-03-26 09:20:28");
INSERT INTO tbl_activity VALUES("626","Viewed Origin List","1","2014-03-26 09:20:31");
INSERT INTO tbl_activity VALUES("627","Viewed Origin List","1","2014-03-26 09:20:46");
INSERT INTO tbl_activity VALUES("628","Viewed Category List","1","2014-03-26 09:21:33");
INSERT INTO tbl_activity VALUES("629","Added a Committee","1","2014-03-26 09:31:33");
INSERT INTO tbl_activity VALUES("630","Viewed Committee ID: 5","1","2014-03-26 09:31:38");
INSERT INTO tbl_activity VALUES("631","Added a Committee","1","2014-03-26 09:32:17");
INSERT INTO tbl_activity VALUES("632","Viewed Committee ID: 6","1","2014-03-26 09:32:22");
INSERT INTO tbl_activity VALUES("633","Added a Committee","1","2014-03-26 09:33:42");
INSERT INTO tbl_activity VALUES("634","Viewed Committee ID: 7","1","2014-03-26 09:33:47");
INSERT INTO tbl_activity VALUES("635","Added a Committee","1","2014-03-26 09:35:03");
INSERT INTO tbl_activity VALUES("636","Viewed Committee ID: 8","1","2014-03-26 09:35:08");
INSERT INTO tbl_activity VALUES("637","Added a Committee","1","2014-03-26 09:37:47");
INSERT INTO tbl_activity VALUES("638","Viewed Committee ID: 9","1","2014-03-26 09:37:52");
INSERT INTO tbl_activity VALUES("639","Added a Committee","1","2014-03-26 09:38:20");
INSERT INTO tbl_activity VALUES("640","Viewed Committee ID: 10","1","2014-03-26 09:38:25");
INSERT INTO tbl_activity VALUES("641","Added a Committee","1","2014-03-26 09:38:52");
INSERT INTO tbl_activity VALUES("642","Viewed Committee ID: 11","1","2014-03-26 09:38:58");
INSERT INTO tbl_activity VALUES("643","Added a Committee","1","2014-03-26 09:39:22");
INSERT INTO tbl_activity VALUES("644","Viewed Committee ID: 12","1","2014-03-26 09:39:28");
INSERT INTO tbl_activity VALUES("645","Added a Committee","1","2014-03-26 09:39:56");
INSERT INTO tbl_activity VALUES("646","Viewed Committee ID: 13","1","2014-03-26 09:40:01");
INSERT INTO tbl_activity VALUES("647","Added a Committee","1","2014-03-26 09:40:50");
INSERT INTO tbl_activity VALUES("648","Added a Committee","1","2014-03-26 09:41:13");
INSERT INTO tbl_activity VALUES("649","Added a Committee","1","2014-03-26 09:42:58");
INSERT INTO tbl_activity VALUES("650","Added a Committee","1","2014-03-26 09:43:22");
INSERT INTO tbl_activity VALUES("651","Added a Committee","1","2014-03-26 09:43:59");
INSERT INTO tbl_activity VALUES("652","Added a Committee","1","2014-03-26 09:44:24");
INSERT INTO tbl_activity VALUES("653","Added a Committee","1","2014-03-26 09:45:19");
INSERT INTO tbl_activity VALUES("654","Added a Committee","1","2014-03-26 09:48:00");
INSERT INTO tbl_activity VALUES("655","Viewed Category List","1","2014-03-26 09:48:10");
INSERT INTO tbl_activity VALUES("656","Viewed Category List","1","2014-03-26 09:48:15");
INSERT INTO tbl_activity VALUES("657","Added a Committee","1","2014-03-26 09:48:41");
INSERT INTO tbl_activity VALUES("658","Added a Committee","1","2014-03-26 09:49:05");
INSERT INTO tbl_activity VALUES("659","Added a Committee","1","2014-03-26 09:49:28");
INSERT INTO tbl_activity VALUES("660","Viewed Category List","1","2014-03-26 09:50:29");
INSERT INTO tbl_activity VALUES("661","Viewed Category List","1","2014-03-26 09:50:45");
INSERT INTO tbl_activity VALUES("662","Viewed Category List","1","2014-03-26 09:51:06");
INSERT INTO tbl_activity VALUES("663","Viewed Category List","1","2014-03-26 09:51:12");
INSERT INTO tbl_activity VALUES("664","Updated Committee ID: 4","1","2014-03-26 09:52:20");
INSERT INTO tbl_activity VALUES("665","Viewed Committee ID: 4","1","2014-03-26 09:52:25");
INSERT INTO tbl_activity VALUES("666","Viewed Category List","1","2014-03-26 09:52:38");
INSERT INTO tbl_activity VALUES("667","Viewed Audit Trails","1","2014-03-26 09:52:59");
INSERT INTO tbl_activity VALUES("668","Viewed Audit Trails","1","2014-03-26 09:53:28");
INSERT INTO tbl_activity VALUES("669","Viewed Audit Trails","1","2014-03-26 09:53:42");
INSERT INTO tbl_activity VALUES("670","Viewed User List","1","2014-03-26 09:54:01");
INSERT INTO tbl_activity VALUES("671","Viewed Backed-up System List","1","2014-03-26 09:54:07");
INSERT INTO tbl_activity VALUES("672","Backed-up System","1","2014-03-26 09:54:11");
INSERT INTO tbl_activity VALUES("673","Viewed Backed-up System List","1","2014-03-26 09:54:11");
INSERT INTO tbl_activity VALUES("674","Viewed Received Topics","1","2014-03-26 09:54:50");
INSERT INTO tbl_activity VALUES("675","Viewed Topic ID: 45","1","2014-03-26 09:54:54");
INSERT INTO tbl_activity VALUES("676","Viewed Topic ID: 45","1","2014-03-26 09:55:07");
INSERT INTO tbl_activity VALUES("677","Return to Homepage","1","2014-03-26 09:56:35");
INSERT INTO tbl_activity VALUES("678","Return to Homepage","1","2014-03-26 09:58:07");
INSERT INTO tbl_activity VALUES("679","Searched Statistical Resolution Report","1","2014-03-26 09:59:22");
INSERT INTO tbl_activity VALUES("680","Searched Resolution History","1","2014-03-26 09:59:35");
INSERT INTO tbl_activity VALUES("681","Printed Resolution History of Resolution No. 0002 - 2013","1","2014-03-26 09:59:42");
INSERT INTO tbl_activity VALUES("682","Searched Resolution History","1","2014-03-26 10:00:04");
INSERT INTO tbl_activity VALUES("683","Searched Statistical Resolution Report","1","2014-03-26 10:00:06");
INSERT INTO tbl_activity VALUES("684","Searched Fiscal Yearly Resolution Report","1","2014-03-26 10:00:13");
INSERT INTO tbl_activity VALUES("685","Searched Fiscal Yearly Resolution Report","1","2014-03-26 10:00:20");
INSERT INTO tbl_activity VALUES("686","Searched Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-26 10:00:21");
INSERT INTO tbl_activity VALUES("687","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-03-26 10:00:24");
INSERT INTO tbl_activity VALUES("688","Searched Fiscal Yearly Resolution Report","1","2014-03-26 10:01:06");
INSERT INTO tbl_activity VALUES("689","Searched Yearly Ordinance","1","2014-03-26 10:03:40");
INSERT INTO tbl_activity VALUES("690","Searched Yearly Ordinance","1","2014-03-26 10:07:13");
INSERT INTO tbl_activity VALUES("691","Searched Yearly Ordinance","1","2014-03-26 10:07:24");
INSERT INTO tbl_activity VALUES("692","Searched Fiscal Yearly 2014 - 2015 Ordinance Report","1","2014-03-26 10:07:24");
INSERT INTO tbl_activity VALUES("693","Searched Yearly Ordinance","1","2014-03-26 10:07:35");
INSERT INTO tbl_activity VALUES("694","Searched Fiscal Yearly 2019 - 2020 Ordinance Report","1","2014-03-26 10:07:35");
INSERT INTO tbl_activity VALUES("695","Searched Yearly Ordinance","1","2014-03-26 10:08:14");
INSERT INTO tbl_activity VALUES("696","Searched Fiscal Yearly 2019 - 2020 Ordinance Report","1","2014-03-26 10:08:14");
INSERT INTO tbl_activity VALUES("697","Searched Yearly Ordinance","1","2014-03-26 10:08:25");
INSERT INTO tbl_activity VALUES("698","Searched Fiscal Yearly 2015 - 2016 Ordinance Report","1","2014-03-26 10:08:25");
INSERT INTO tbl_activity VALUES("699","Searched Yearly Ordinance","1","2014-03-26 10:08:31");
INSERT INTO tbl_activity VALUES("700","Searched Fiscal Yearly 2014 - 2015 Ordinance Report","1","2014-03-26 10:08:31");
INSERT INTO tbl_activity VALUES("701","Printed Fiscal Yearly 2014 - 2015 Ordinance Report","1","2014-03-26 10:08:34");
INSERT INTO tbl_activity VALUES("702","Printed Fiscal Yearly 2014 - 2015 Ordinance Report","1","2014-03-26 10:09:41");
INSERT INTO tbl_activity VALUES("703","Printed Fiscal Yearly 2014 - 2015 Ordinance Report","1","2014-03-26 10:10:13");
INSERT INTO tbl_activity VALUES("704","Searched Monthly Resolution Report","1","2014-03-26 10:12:42");
INSERT INTO tbl_activity VALUES("705","Searched Monthly Resolution Report","1","2014-03-26 10:12:50");
INSERT INTO tbl_activity VALUES("706","Searched 03 2014 Resolution Report","1","2014-03-26 10:12:51");
INSERT INTO tbl_activity VALUES("707","Searched Monthly Resolution Report","1","2014-03-26 10:13:13");
INSERT INTO tbl_activity VALUES("708","Searched 02 2020 Resolution Report","1","2014-03-26 10:13:13");
INSERT INTO tbl_activity VALUES("709","Searched Monthly Resolution Report","1","2014-03-26 10:13:23");
INSERT INTO tbl_activity VALUES("710","Searched 02 2014 Resolution Report","1","2014-03-26 10:13:23");
INSERT INTO tbl_activity VALUES("711","Printed2014-02 Resolution Report","1","2014-03-26 10:13:26");
INSERT INTO tbl_activity VALUES("712","Printed2014-02 Resolution Report","1","2014-03-26 10:14:03");
INSERT INTO tbl_activity VALUES("713","Printed2014-02 Resolution Report","1","2014-03-26 10:14:22");
INSERT INTO tbl_activity VALUES("714","Printed2014-02 Resolution Report","1","2014-03-26 10:14:39");
INSERT INTO tbl_activity VALUES("715","Searched Fiscal Yearly Resolution Report","1","2014-03-26 10:20:52");
INSERT INTO tbl_activity VALUES("716","Searched Yearly Authored Resolution","1","2014-03-26 10:20:58");
INSERT INTO tbl_activity VALUES("717","Searched Yearly Authored Resolution","1","2014-03-26 10:21:06");
INSERT INTO tbl_activity VALUES("718","Searched Yearly Authored Resolution of John Billy D. Marbella","1","2014-03-26 10:21:06");
INSERT INTO tbl_activity VALUES("719","Printed Yearly Authored Resolution of John Billy D. Marbella","1","2014-03-26 10:21:09");
INSERT INTO tbl_activity VALUES("720","Printed Yearly Authored Resolution of John Billy D. Marbella","1","2014-03-26 10:21:52");
INSERT INTO tbl_activity VALUES("721","Printed Yearly Authored Resolution of John Billy D. Marbella","1","2014-03-26 10:22:12");
INSERT INTO tbl_activity VALUES("722","Printed Yearly Authored Resolution of John Billy D. Marbella","1","2014-03-26 10:22:46");
INSERT INTO tbl_activity VALUES("723","Printed Yearly Authored Resolution of John Billy D. Marbella","1","2014-03-26 10:23:21");
INSERT INTO tbl_activity VALUES("724","Searched Yearly Authored Resolution","1","2014-03-26 10:23:43");
INSERT INTO tbl_activity VALUES("725","Searched Yearly Authored Resolution","1","2014-03-26 10:23:49");
INSERT INTO tbl_activity VALUES("726","Searched Yearly Authored Resolution of John Billy D. Marbella","1","2014-03-26 10:23:49");
INSERT INTO tbl_activity VALUES("727","Printed Yearly Authored Resolution of John Billy D. Marbella","1","2014-03-26 10:23:52");
INSERT INTO tbl_activity VALUES("728","Printed Yearly Authored Resolution of John Billy D. Marbella","1","2014-03-26 10:24:09");
INSERT INTO tbl_activity VALUES("729","Printed Yearly Authored Resolution of John Billy D. Marbella","1","2014-03-26 10:24:25");
INSERT INTO tbl_activity VALUES("730","Printed Yearly Authored Resolution of John Billy D. Marbella","1","2014-03-26 10:24:41");
INSERT INTO tbl_activity VALUES("731","Printed Yearly Authored Resolution of John Billy D. Marbella","1","2014-03-26 10:24:49");
INSERT INTO tbl_activity VALUES("732","Printed Yearly Authored Resolution of John Billy D. Marbella","1","2014-03-26 10:24:58");
INSERT INTO tbl_activity VALUES("733","Printed Yearly Authored Resolution of John Billy D. Marbella","1","2014-03-26 10:25:33");
INSERT INTO tbl_activity VALUES("734","Printed Yearly Authored Resolution of John Billy D. Marbella","1","2014-03-26 10:25:51");
INSERT INTO tbl_activity VALUES("735","Printed Yearly Authored Resolution of John Billy D. Marbella","1","2014-03-26 10:26:09");
INSERT INTO tbl_activity VALUES("736","Printed Yearly Authored Resolution of John Billy D. Marbella","1","2014-03-26 10:26:51");
INSERT INTO tbl_activity VALUES("737","Searched Yearly Authored Resolution","1","2014-03-26 10:27:10");
INSERT INTO tbl_activity VALUES("738","Searched Monthly Authored Resolution","1","2014-03-26 10:27:13");
INSERT INTO tbl_activity VALUES("739","Searched Monthly Authored Resolution","1","2014-03-26 10:27:21");
INSERT INTO tbl_activity VALUES("740","Searched Monthly Authored Resolution of John Billy D. Marbella","1","2014-03-26 10:27:21");
INSERT INTO tbl_activity VALUES("741","Printed Monthly Authored Resolution of John Billy D. Marbella","1","2014-03-26 10:27:25");
INSERT INTO tbl_activity VALUES("742","Printed Monthly Authored Resolution of John Billy D. Marbella","1","2014-03-26 10:27:49");
INSERT INTO tbl_activity VALUES("743","Printed Monthly Authored Resolution of John Billy D. Marbella","1","2014-03-26 10:29:45");
INSERT INTO tbl_activity VALUES("744","Printed Monthly Authored Resolution of John Billy D. Marbella","1","2014-03-26 10:30:05");
INSERT INTO tbl_activity VALUES("745","Printed Monthly Authored Resolution of John Billy D. Marbella","1","2014-03-26 10:30:45");
INSERT INTO tbl_activity VALUES("746","Printed Monthly Authored Resolution of John Billy D. Marbella","1","2014-03-26 10:31:04");
INSERT INTO tbl_activity VALUES("747","Searched Fiscal Yearly Resolution Report","1","2014-03-26 10:32:24");
INSERT INTO tbl_activity VALUES("748","Searched Yearly Authored Resolution","1","2014-03-26 10:32:31");
INSERT INTO tbl_activity VALUES("749","Searched Yearly Authored Resolution","1","2014-03-26 10:32:37");
INSERT INTO tbl_activity VALUES("750","Searched Yearly Authored Resolution of John Billy D. Marbella","1","2014-03-26 10:32:37");
INSERT INTO tbl_activity VALUES("751","Printed Yearly Authored Resolution of John Billy D. Marbella","1","2014-03-26 10:32:40");
INSERT INTO tbl_activity VALUES("752","Printed Yearly Authored Resolution of John Billy D. Marbella","1","2014-03-26 10:33:04");
INSERT INTO tbl_activity VALUES("753","Searched Yearly Authored Resolution","1","2014-03-26 10:33:35");
INSERT INTO tbl_activity VALUES("754","Viewed List of Communication","1","2014-03-26 10:33:44");
INSERT INTO tbl_activity VALUES("755","Logged In","1","2014-04-18 16:06:15");
INSERT INTO tbl_activity VALUES("756","Return to Homepage","1","2014-04-18 16:06:16");
INSERT INTO tbl_activity VALUES("757","Viewed List of Communication","1","2014-04-18 16:06:32");
INSERT INTO tbl_activity VALUES("758","Viewed Communication List","1","2014-04-18 16:06:37");
INSERT INTO tbl_activity VALUES("759","Viewed Communication List","1","2014-04-18 16:07:16");
INSERT INTO tbl_activity VALUES("760","Viewed Communication for Referral List","1","2014-04-18 16:07:29");
INSERT INTO tbl_activity VALUES("761","Viewed Referral List","1","2014-04-18 16:07:34");
INSERT INTO tbl_activity VALUES("762","Viewed Referral List","1","2014-04-18 16:07:52");
INSERT INTO tbl_activity VALUES("763","Downloaded Indorsement Letter","1","2014-04-18 16:08:34");
INSERT INTO tbl_activity VALUES("764","Viewed Referral List","1","2014-04-18 16:08:37");
INSERT INTO tbl_activity VALUES("765","Downloaded Indorsement Letter","1","2014-04-18 16:08:41");
INSERT INTO tbl_activity VALUES("766","Viewed List of Referrals for Committe Meeting","1","2014-04-18 16:08:50");
INSERT INTO tbl_activity VALUES("767","Viewed Committee Meeting List","1","2014-04-18 16:08:53");
INSERT INTO tbl_activity VALUES("768","Viewed List of Referral for Committee Meeting","1","2014-04-18 16:09:05");
INSERT INTO tbl_activity VALUES("769","Viewed Committee Meeting List","1","2014-04-18 16:09:08");
INSERT INTO tbl_activity VALUES("770","Viewed Committee Meeting List","1","2014-04-18 16:09:27");
INSERT INTO tbl_activity VALUES("771","Viewed Committee Meeting List for Resolution","1","2014-04-18 16:09:39");
INSERT INTO tbl_activity VALUES("772","Viewed Resolution List","1","2014-04-18 16:09:42");
INSERT INTO tbl_activity VALUES("773","Downloaded Resolution No. 0002 - 2013 file","1","2014-04-18 16:09:51");
INSERT INTO tbl_activity VALUES("774","Viewed Resolution List","1","2014-04-18 16:10:38");
INSERT INTO tbl_activity VALUES("775","Viewed Resolution No. 0002 - 2013","1","2014-04-18 16:10:46");
INSERT INTO tbl_activity VALUES("776","Viewed Resolution List","1","2014-04-18 16:11:26");
INSERT INTO tbl_activity VALUES("777","Archived Resolution No. 0002 - 2013","1","2014-04-18 16:11:42");
INSERT INTO tbl_activity VALUES("778","Viewed Resolution List","1","2014-04-18 16:11:47");
INSERT INTO tbl_activity VALUES("779","Viewed Resolution List","1","2014-04-18 16:12:07");
INSERT INTO tbl_activity VALUES("780","Downloaded Resolution No. 0002 - 2014 file","1","2014-04-18 16:12:19");
INSERT INTO tbl_activity VALUES("781","Viewed Resolution List","1","2014-04-18 16:12:21");
INSERT INTO tbl_activity VALUES("782","Viewed Resolution No. 0002 - 2014","1","2014-04-18 16:12:53");
INSERT INTO tbl_activity VALUES("783","Downloaded Resolution No. 0002 - 2014 file","1","2014-04-18 16:13:15");
INSERT INTO tbl_activity VALUES("784","Viewed Resolution No. 0002 - 2014","1","2014-04-18 16:13:23");
INSERT INTO tbl_activity VALUES("785","Downloaded Resolution No. 0002 - 2014 file","1","2014-04-18 16:13:26");
INSERT INTO tbl_activity VALUES("786","Viewed Resolution No. 0002 - 2014","1","2014-04-18 16:13:45");
INSERT INTO tbl_activity VALUES("787","Downloaded Resolution No. 0002 - 2014 file","1","2014-04-18 16:13:48");
INSERT INTO tbl_activity VALUES("788","Viewed Resolution No. 0002 - 2014","1","2014-04-18 16:13:50");
INSERT INTO tbl_activity VALUES("789","Viewed Resolution List","1","2014-04-18 16:13:52");
INSERT INTO tbl_activity VALUES("790","Downloaded Resolution No. 0002 - 2014 file","1","2014-04-18 16:13:56");
INSERT INTO tbl_activity VALUES("791","Viewed Resolution List","1","2014-04-18 16:14:14");
INSERT INTO tbl_activity VALUES("792","Viewed Resolution No. 0002 - 2014","1","2014-04-18 16:14:19");
INSERT INTO tbl_activity VALUES("793","Viewed Resolution No. 0002 - 2014","1","2014-04-18 16:14:36");
INSERT INTO tbl_activity VALUES("794","Downloaded Resolution No. 0002 - 2014 file","1","2014-04-18 16:14:44");
INSERT INTO tbl_activity VALUES("795","Viewed Resolution No. 0002 - 2014","1","2014-04-18 16:14:46");
INSERT INTO tbl_activity VALUES("796","Downloaded Resolution No. 0002 - 2014 file","1","2014-04-18 16:14:51");
INSERT INTO tbl_activity VALUES("797","Viewed Resolution No. 0002 - 2014","1","2014-04-18 16:14:53");
INSERT INTO tbl_activity VALUES("798","Viewed Resolution No. 0002 - 2014","1","2014-04-18 16:15:16");
INSERT INTO tbl_activity VALUES("799","Downloaded Resolution No. 0002 - 2014 file","1","2014-04-18 16:15:19");
INSERT INTO tbl_activity VALUES("800","Viewed Resolution No. 0002 - 2014","1","2014-04-18 16:15:27");
INSERT INTO tbl_activity VALUES("801","Viewed Resolution List","1","2014-04-18 16:15:29");
INSERT INTO tbl_activity VALUES("802","Downloaded Resolution No. 0003 - 2014 file","1","2014-04-18 16:15:33");
INSERT INTO tbl_activity VALUES("803","Viewed Resolution List","1","2014-04-18 16:15:41");
INSERT INTO tbl_activity VALUES("804","Viewed Resolution No. 0003 - 2014","1","2014-04-18 16:15:46");
INSERT INTO tbl_activity VALUES("805","Viewed Resolution No. 0003 - 2014","1","2014-04-18 16:16:19");
INSERT INTO tbl_activity VALUES("806","Viewed Resolution No. 0003 - 2014","1","2014-04-18 16:16:23");
INSERT INTO tbl_activity VALUES("807","Viewed Resolution No. 0003 - 2014","1","2014-04-18 16:16:54");
INSERT INTO tbl_activity VALUES("808","Viewed Resolution No. 0003 - 2014","1","2014-04-18 16:17:33");
INSERT INTO tbl_activity VALUES("809","Downloaded Resolution No. 0003 - 2014 file","1","2014-04-18 16:17:36");
INSERT INTO tbl_activity VALUES("810","Viewed Resolution No. 0003 - 2014","1","2014-04-18 16:17:38");
INSERT INTO tbl_activity VALUES("811","Viewed Resolution List","1","2014-04-18 16:17:40");
INSERT INTO tbl_activity VALUES("812","Archived Resolution No. 0002 - 2014","1","2014-04-18 16:17:46");
INSERT INTO tbl_activity VALUES("813","Viewed Resolution List","1","2014-04-18 16:17:51");
INSERT INTO tbl_activity VALUES("814","Archived Resolution No. 0003 - 2014","1","2014-04-18 16:17:55");
INSERT INTO tbl_activity VALUES("815","Viewed Resolution List","1","2014-04-18 16:18:01");
INSERT INTO tbl_activity VALUES("816","Downloaded Resolution No. 0004 - 2014 file","1","2014-04-18 16:18:03");
INSERT INTO tbl_activity VALUES("817","Downloaded Resolution No. 0005 - 2014 file","1","2014-04-18 16:18:07");
INSERT INTO tbl_activity VALUES("818","Archived Resolution No. 0004 - 2014","1","2014-04-18 16:18:12");
INSERT INTO tbl_activity VALUES("819","Viewed Resolution List","1","2014-04-18 16:18:17");
INSERT INTO tbl_activity VALUES("820","Viewed Archived Resolution List","1","2014-04-18 16:18:20");
INSERT INTO tbl_activity VALUES("821","Viewed Resolution List","1","2014-04-18 16:18:53");
INSERT INTO tbl_activity VALUES("822","Viewed Committee Meeting List for Ordinance","1","2014-04-18 16:19:03");
INSERT INTO tbl_activity VALUES("823","Viewed Ordinance List","1","2014-04-18 16:19:14");
INSERT INTO tbl_activity VALUES("824","Downloaded Ordinance No. 0002 - 2014","1","2014-04-18 16:19:18");
INSERT INTO tbl_activity VALUES("825","Viewed Ordinance List","1","2014-04-18 16:19:47");
INSERT INTO tbl_activity VALUES("826","Viewed Archived Ordinance List","1","2014-04-18 16:20:06");
INSERT INTO tbl_activity VALUES("827","Viewed Ordinance List","1","2014-04-18 16:20:15");
INSERT INTO tbl_activity VALUES("828","Downloaded Ordinance No. 0002 - 2014","1","2014-04-18 16:20:18");
INSERT INTO tbl_activity VALUES("829","Archived Ordinance No. 0002 - 2014","1","2014-04-18 16:20:24");
INSERT INTO tbl_activity VALUES("830","Viewed Ordinance List","1","2014-04-18 16:20:29");
INSERT INTO tbl_activity VALUES("831","Downloaded Ordinance No. 0003 - 2014","1","2014-04-18 16:20:33");
INSERT INTO tbl_activity VALUES("832","Viewed List of Referrals for Committe Meeting","1","2014-04-18 16:20:42");
INSERT INTO tbl_activity VALUES("833","Viewed Committee Meeting List","1","2014-04-18 16:20:47");
INSERT INTO tbl_activity VALUES("834","Downloaded Committe Report File","1","2014-04-18 16:20:57");
INSERT INTO tbl_activity VALUES("835","Downloaded Committe Report File","1","2014-04-18 16:21:08");
INSERT INTO tbl_activity VALUES("836","Archived Committe Meeting ID: 24","1","2014-04-18 16:21:15");
INSERT INTO tbl_activity VALUES("837","Viewed Committee Meeting List","1","2014-04-18 16:21:20");
INSERT INTO tbl_activity VALUES("838","Archived Committe Meeting ID: 23","1","2014-04-18 16:21:26");
INSERT INTO tbl_activity VALUES("839","Viewed Committee Meeting List","1","2014-04-18 16:21:32");
INSERT INTO tbl_activity VALUES("840","Archived Committe Meeting ID: 22","1","2014-04-18 16:21:35");
INSERT INTO tbl_activity VALUES("841","Viewed Committee Meeting List","1","2014-04-18 16:21:41");
INSERT INTO tbl_activity VALUES("842","Downloaded Committe Report File","1","2014-04-18 16:21:43");
INSERT INTO tbl_activity VALUES("843","Viewed Committee Meeting List","1","2014-04-18 16:21:45");
INSERT INTO tbl_activity VALUES("844","Downloaded Committe Report File","1","2014-04-18 16:21:49");
INSERT INTO tbl_activity VALUES("845","Archived Committe Meeting ID: 29","1","2014-04-18 16:21:53");
INSERT INTO tbl_activity VALUES("846","Viewed Committee Meeting List","1","2014-04-18 16:21:59");
INSERT INTO tbl_activity VALUES("847","Downloaded Committe Report File","1","2014-04-18 16:22:03");
INSERT INTO tbl_activity VALUES("848","Downloaded Committe Report File","1","2014-04-18 16:22:07");
INSERT INTO tbl_activity VALUES("849","Archived Committe Meeting ID: 30","1","2014-04-18 16:22:25");
INSERT INTO tbl_activity VALUES("850","Viewed Committee Meeting List","1","2014-04-18 16:22:30");
INSERT INTO tbl_activity VALUES("851","Viewed Archived Committee Meetings","1","2014-04-18 16:22:38");
INSERT INTO tbl_activity VALUES("852","Downloaded Committe Report File","1","2014-04-18 16:22:45");
INSERT INTO tbl_activity VALUES("853","Viewed Communication for Referral List","1","2014-04-18 16:22:56");
INSERT INTO tbl_activity VALUES("854","Viewed Referral List","1","2014-04-18 16:23:00");
INSERT INTO tbl_activity VALUES("855","Downloaded Indorsement Letter","1","2014-04-18 16:23:04");
INSERT INTO tbl_activity VALUES("856","Downloaded Indorsement Letter","1","2014-04-18 16:23:10");
INSERT INTO tbl_activity VALUES("857","Viewed Referral List","1","2014-04-18 16:23:12");
INSERT INTO tbl_activity VALUES("858","Archived Referral ID: 39","1","2014-04-18 16:23:17");
INSERT INTO tbl_activity VALUES("859","Viewed Referral List","1","2014-04-18 16:23:23");
INSERT INTO tbl_activity VALUES("860","Downloaded Indorsement Letter","1","2014-04-18 16:23:27");
INSERT INTO tbl_activity VALUES("861","Viewed Referral List","1","2014-04-18 16:23:28");
INSERT INTO tbl_activity VALUES("862","Archived Referral ID: 40","1","2014-04-18 16:23:33");
INSERT INTO tbl_activity VALUES("863","Viewed Referral List","1","2014-04-18 16:23:38");
INSERT INTO tbl_activity VALUES("864","Downloaded Indorsement Letter","1","2014-04-18 16:23:42");
INSERT INTO tbl_activity VALUES("865","Archived Referral ID: 41","1","2014-04-18 16:23:47");
INSERT INTO tbl_activity VALUES("866","Viewed Referral List","1","2014-04-18 16:23:53");
INSERT INTO tbl_activity VALUES("867","Downloaded Indorsement Letter","1","2014-04-18 16:23:57");
INSERT INTO tbl_activity VALUES("868","Viewed List of Communication","1","2014-04-18 16:24:00");
INSERT INTO tbl_activity VALUES("869","Downloaded Communication Letter","1","2014-04-18 16:24:04");
INSERT INTO tbl_activity VALUES("870","Viewed Communication List","1","2014-04-18 16:24:06");
INSERT INTO tbl_activity VALUES("871","Downloaded Communication Letter","1","2014-04-18 16:24:10");
INSERT INTO tbl_activity VALUES("872","Viewed Communication List","1","2014-04-18 16:24:20");
INSERT INTO tbl_activity VALUES("873","Archived Communication ID: 2012 - 0001","1","2014-04-18 16:24:26");
INSERT INTO tbl_activity VALUES("874","Viewed Communication List","1","2014-04-18 16:24:31");
INSERT INTO tbl_activity VALUES("875","Downloaded Communication Letter","1","2014-04-18 16:24:33");
INSERT INTO tbl_activity VALUES("876","Archived Communication ID: 2014 - 0001","1","2014-04-18 16:24:39");
INSERT INTO tbl_activity VALUES("877","Viewed Communication List","1","2014-04-18 16:24:44");
INSERT INTO tbl_activity VALUES("878","Downloaded Communication Letter","1","2014-04-18 16:24:47");
INSERT INTO tbl_activity VALUES("879","Viewed Communication List","1","2014-04-18 16:24:50");
INSERT INTO tbl_activity VALUES("880","Archived Communication ID: 2014 - 0004","1","2014-04-18 16:24:55");
INSERT INTO tbl_activity VALUES("881","Viewed Communication List","1","2014-04-18 16:25:00");
INSERT INTO tbl_activity VALUES("882","Downloaded Communication Letter","1","2014-04-18 16:25:03");
INSERT INTO tbl_activity VALUES("883","Viewed Communication List","1","2014-04-18 16:25:05");
INSERT INTO tbl_activity VALUES("884","Archived Communication ID: 2014 - 0005","1","2014-04-18 16:25:11");
INSERT INTO tbl_activity VALUES("885","Viewed Communication List","1","2014-04-18 16:25:16");
INSERT INTO tbl_activity VALUES("886","Downloaded Communication Letter","1","2014-04-18 16:25:20");
INSERT INTO tbl_activity VALUES("887","Viewed Archived Communication List","1","2014-04-18 16:25:36");
INSERT INTO tbl_activity VALUES("888","Downloaded Communication Letter","1","2014-04-18 16:25:40");
INSERT INTO tbl_activity VALUES("889","Downloaded Communication Letter","1","2014-04-18 16:25:42");
INSERT INTO tbl_activity VALUES("890","Viewed Communication for Referral List","1","2014-04-18 16:25:52");
INSERT INTO tbl_activity VALUES("891","Viewed Archived Referral List","1","2014-04-18 16:25:55");
INSERT INTO tbl_activity VALUES("892","Viewed List of Referrals for Committe Meeting","1","2014-04-18 16:26:01");
INSERT INTO tbl_activity VALUES("893","Viewed Archived Committee Meetings","1","2014-04-18 16:26:05");
INSERT INTO tbl_activity VALUES("894","Viewed Archived Committee Meeting List","1","2014-04-18 16:26:12");
INSERT INTO tbl_activity VALUES("895","Viewed Committee Meeting List","1","2014-04-18 16:26:18");
INSERT INTO tbl_activity VALUES("896","Archived Committee Meeting ID: 11","1","2014-04-18 16:26:23");
INSERT INTO tbl_activity VALUES("897","Viewed Committee Meeting List","1","2014-04-18 16:26:29");
INSERT INTO tbl_activity VALUES("898","Archived Committee Meeting ID: 12","1","2014-04-18 16:26:33");
INSERT INTO tbl_activity VALUES("899","Viewed Committee Meeting List","1","2014-04-18 16:26:39");
INSERT INTO tbl_activity VALUES("900","Downloaded Committee Report File","1","2014-04-18 16:26:42");
INSERT INTO tbl_activity VALUES("901","Viewed Committee Meeting List","1","2014-04-18 16:28:02");
INSERT INTO tbl_activity VALUES("902","Downloaded Committe Report File","1","2014-04-18 16:28:06");
INSERT INTO tbl_activity VALUES("903","Viewed Committee Meeting List","1","2014-04-18 16:28:30");
INSERT INTO tbl_activity VALUES("904","Downloaded Committee Report File","1","2014-04-18 16:28:33");
INSERT INTO tbl_activity VALUES("905","Viewed Committee Meeting List","1","2014-04-18 16:29:26");
INSERT INTO tbl_activity VALUES("906","Downloaded Committee Report File","1","2014-04-18 16:29:31");
INSERT INTO tbl_activity VALUES("907","Viewed Committee Meeting List","1","2014-04-18 16:29:33");
INSERT INTO tbl_activity VALUES("908","Downloaded Committee Report File","1","2014-04-18 16:29:37");
INSERT INTO tbl_activity VALUES("909","Viewed Committee Meeting List","1","2014-04-18 16:29:39");
INSERT INTO tbl_activity VALUES("910","Downloaded Committee Report File","1","2014-04-18 16:29:43");
INSERT INTO tbl_activity VALUES("911","Downloaded Committee Report File","1","2014-04-18 16:29:52");
INSERT INTO tbl_activity VALUES("912","Viewed Committee Meeting List","1","2014-04-18 16:29:54");
INSERT INTO tbl_activity VALUES("913","Viewed Committee Meeting ID: 14","1","2014-04-18 16:30:09");
INSERT INTO tbl_activity VALUES("914","Downloaded Committee Report File","1","2014-04-18 16:30:12");
INSERT INTO tbl_activity VALUES("915","Viewed Committee Meeting ID: 14","1","2014-04-18 16:30:14");
INSERT INTO tbl_activity VALUES("916","Viewed Committee Meeting List","1","2014-04-18 16:30:34");
INSERT INTO tbl_activity VALUES("917","Downloaded Committee Report File","1","2014-04-18 16:30:42");
INSERT INTO tbl_activity VALUES("918","Viewed Committee Meeting List for Resolution","1","2014-04-18 16:30:55");
INSERT INTO tbl_activity VALUES("919","Viewed Archived Resolution List","1","2014-04-18 16:30:59");
INSERT INTO tbl_activity VALUES("920","Downloaded Resolution No. 0001 - 2014 file","1","2014-04-18 16:31:04");
INSERT INTO tbl_activity VALUES("921","Viewed Committee Meeting List for Resolution","1","2014-04-18 16:33:05");
INSERT INTO tbl_activity VALUES("922","Viewed Resolution List","1","2014-04-18 16:33:08");
INSERT INTO tbl_activity VALUES("923","Downloaded Resolution No. 0005 - 2014 file","1","2014-04-18 16:33:20");
INSERT INTO tbl_activity VALUES("924","Downloaded Resolution No. 0006 - 2014 file","1","2014-04-18 16:33:22");
INSERT INTO tbl_activity VALUES("925","Downloaded Resolution No. 0007 - 2014 file","1","2014-04-18 16:33:24");
INSERT INTO tbl_activity VALUES("926","Downloaded Resolution No. 0008 - 2014 file","1","2014-04-18 16:33:26");
INSERT INTO tbl_activity VALUES("927","Downloaded Resolution No. 0009 - 2011 file","1","2014-04-18 16:35:46");
INSERT INTO tbl_activity VALUES("928","Downloaded Resolution No. 0009 - 2012 file","1","2014-04-18 16:35:50");
INSERT INTO tbl_activity VALUES("929","Viewed Committee Meeting List for Resolution","1","2014-04-18 16:35:52");
INSERT INTO tbl_activity VALUES("930","Viewed Archived Resolution List","1","2014-04-18 16:35:54");
INSERT INTO tbl_activity VALUES("931","Viewed Archived Resolution List","1","2014-04-18 16:37:53");
INSERT INTO tbl_activity VALUES("932","Viewed Archived Resolution List","1","2014-04-18 16:38:04");
INSERT INTO tbl_activity VALUES("933","Viewed Resolution List","1","2014-04-18 16:38:08");
INSERT INTO tbl_activity VALUES("934","Viewed Resolution List","1","2014-04-18 16:38:12");
INSERT INTO tbl_activity VALUES("935","Downloaded Resolution No. 0009 - 2012 file","1","2014-04-18 16:38:14");
INSERT INTO tbl_activity VALUES("936","Viewed Resolution List","1","2014-04-18 16:39:15");
INSERT INTO tbl_activity VALUES("937","Viewed Resolution List","1","2014-04-18 16:39:25");
INSERT INTO tbl_activity VALUES("938","Downloaded Resolution No. 0009 - 2012 file","1","2014-04-18 16:40:32");
INSERT INTO tbl_activity VALUES("939","Viewed Archived Resolution List","1","2014-04-18 16:40:37");
INSERT INTO tbl_activity VALUES("940","Downloaded Resolution No. 0001 - 2013 file","1","2014-04-18 16:40:46");
INSERT INTO tbl_activity VALUES("941","Viewed Archived Resolution List","1","2014-04-18 16:40:53");
INSERT INTO tbl_activity VALUES("942","Viewed Archived Resolution List","1","2014-04-18 16:41:15");
INSERT INTO tbl_activity VALUES("943","Downloaded Resolution No. 0001 - 2013 file","1","2014-04-18 16:41:24");
INSERT INTO tbl_activity VALUES("944","Viewed Archived Resolution List","1","2014-04-18 16:41:34");
INSERT INTO tbl_activity VALUES("945","Viewed Resolution No. 0001 - 2013","1","2014-04-18 16:41:45");
INSERT INTO tbl_activity VALUES("946","Downloaded Resolution No. 0001 - 2013 file","1","2014-04-18 16:42:14");
INSERT INTO tbl_activity VALUES("947","Viewed Resolution No. 0001 - 2013","1","2014-04-18 16:42:43");
INSERT INTO tbl_activity VALUES("948","Downloaded Resolution No. 0001 - 2013 file","1","2014-04-18 16:42:59");
INSERT INTO tbl_activity VALUES("949","Downloaded Resolution No. 0001 - 2013 file","1","2014-04-18 16:43:05");
INSERT INTO tbl_activity VALUES("950","Viewed Resolution List","1","2014-04-18 16:43:47");
INSERT INTO tbl_activity VALUES("951","Downloaded Resolution No. 0007 - 2014 file","1","2014-04-18 16:43:55");
INSERT INTO tbl_activity VALUES("952","Downloaded Resolution No. 0008 - 2014 file","1","2014-04-18 16:43:57");
INSERT INTO tbl_activity VALUES("953","Downloaded Resolution No. 0009 - 2011 file","1","2014-04-18 16:43:58");
INSERT INTO tbl_activity VALUES("954","Downloaded Resolution No. 0009 - 2012 file","1","2014-04-18 16:44:02");
INSERT INTO tbl_activity VALUES("955","Downloaded Resolution No. 0009 - 2014 file","1","2014-04-18 16:44:04");
INSERT INTO tbl_activity VALUES("956","Viewed Archived Resolution List","1","2014-04-18 16:44:25");
INSERT INTO tbl_activity VALUES("957","Downloaded Resolution No. 0001 - 2013 file","1","2014-04-18 16:44:28");
INSERT INTO tbl_activity VALUES("958","Downloaded Resolution No. 0001 - 2014 file","1","2014-04-18 16:44:29");
INSERT INTO tbl_activity VALUES("959","Downloaded Resolution No. 0002 - 2013 file","1","2014-04-18 16:44:33");
INSERT INTO tbl_activity VALUES("960","Viewed Archived Resolution List","1","2014-04-18 16:45:45");
INSERT INTO tbl_activity VALUES("961","Downloaded Resolution No. 0002 - 2013 file","1","2014-04-18 16:45:54");
INSERT INTO tbl_activity VALUES("962","Viewed Communication for Referral List","1","2014-04-18 16:45:59");
INSERT INTO tbl_activity VALUES("963","Viewed Referral List","1","2014-04-18 16:46:04");
INSERT INTO tbl_activity VALUES("964","Viewed Referral List","1","2014-04-18 16:46:08");
INSERT INTO tbl_activity VALUES("965","Viewed Referral List","1","2014-04-18 16:46:12");
INSERT INTO tbl_activity VALUES("966","Viewed Referral List","1","2014-04-18 16:46:16");
INSERT INTO tbl_activity VALUES("967","Viewed Communication for Referral List","1","2014-04-18 16:46:18");
INSERT INTO tbl_activity VALUES("968","Viewed Communication for Referral List","1","2014-04-18 16:46:18");
INSERT INTO tbl_activity VALUES("969","Viewed Communication for Referral List","1","2014-04-18 16:46:19");
INSERT INTO tbl_activity VALUES("970","Viewed Communication for Referral List","1","2014-04-18 16:46:22");
INSERT INTO tbl_activity VALUES("971","Viewed List of Communication","1","2014-04-18 16:46:24");
INSERT INTO tbl_activity VALUES("972","Viewed Communication List","1","2014-04-18 16:46:28");
INSERT INTO tbl_activity VALUES("973","Viewed Communication List","1","2014-04-18 16:46:32");
INSERT INTO tbl_activity VALUES("974","Viewed Communication List","1","2014-04-18 16:46:36");
INSERT INTO tbl_activity VALUES("975","Viewed Communication List","1","2014-04-18 16:46:39");
INSERT INTO tbl_activity VALUES("976","Viewed Communication List","1","2014-04-18 16:46:43");
INSERT INTO tbl_activity VALUES("977","Downloaded Communication Letter","1","2014-04-18 16:46:53");
INSERT INTO tbl_activity VALUES("978","Viewed Audit Trails","1","2014-04-18 16:47:13");
INSERT INTO tbl_activity VALUES("979","Viewed Audit Trails","1","2014-04-18 16:47:27");
INSERT INTO tbl_activity VALUES("980","Viewed Audit Trails","1","2014-04-18 16:47:37");
INSERT INTO tbl_activity VALUES("981","Viewed Audit Trails","1","2014-04-18 16:47:46");
INSERT INTO tbl_activity VALUES("982","Viewed Backed-up System List","1","2014-04-18 16:48:07");
INSERT INTO tbl_activity VALUES("983","Downloaded Database File","1","2014-04-18 16:48:18");
INSERT INTO tbl_activity VALUES("984","Downloaded Database File","1","2014-04-18 16:48:21");
INSERT INTO tbl_activity VALUES("985","Viewed Backed-up System List","1","2014-04-18 17:00:16");
INSERT INTO tbl_activity VALUES("986","Backed-up System","1","2014-04-18 17:00:24");
INSERT INTO tbl_activity VALUES("987","Viewed Backed-up System List","1","2014-04-18 17:00:29");
INSERT INTO tbl_activity VALUES("988","Downloaded Database File","1","2014-04-18 17:00:41");
INSERT INTO tbl_activity VALUES("989","Searched Statistical Resolution Report","1","2014-04-18 17:00:55");
INSERT INTO tbl_activity VALUES("990","Searched Statistical Resolution Report","1","2014-04-18 17:08:58");
INSERT INTO tbl_activity VALUES("991","Searched Statistical Resolution Report","1","2014-04-18 17:09:22");
INSERT INTO tbl_activity VALUES("992","Searched Yearly Authored Resolution","1","2014-04-18 17:10:15");
INSERT INTO tbl_activity VALUES("993","Searched Yearly Authored Resolution","1","2014-04-18 17:10:30");
INSERT INTO tbl_activity VALUES("994","Searched Yearly Authored Resolution of John Billy D. Marbella","1","2014-04-18 17:10:30");
INSERT INTO tbl_activity VALUES("995","Searched Monthly Authored Resolution","1","2014-04-18 17:10:38");
INSERT INTO tbl_activity VALUES("996","Searched Monthly Authored Resolution","1","2014-04-18 17:10:50");
INSERT INTO tbl_activity VALUES("997","Searched Monthly Authored Resolution of John Billy D. Marbella","1","2014-04-18 17:10:50");
INSERT INTO tbl_activity VALUES("998","Searched Monthly Authored Resolution","1","2014-04-18 17:11:28");
INSERT INTO tbl_activity VALUES("999","Searched Monthly Authored Resolution of John Billy D. Marbella","1","2014-04-18 17:11:28");
INSERT INTO tbl_activity VALUES("1000","Printed Monthly Authored Resolution of John Billy D. Marbella","1","2014-04-18 17:11:35");
INSERT INTO tbl_activity VALUES("1001","Searched Monthly Authored Resolution","1","2014-04-18 17:11:51");
INSERT INTO tbl_activity VALUES("1002","Searched Yearly Authored Resolution","1","2014-04-18 17:12:10");
INSERT INTO tbl_activity VALUES("1003","Searched Monthly Authored Resolution","1","2014-04-18 17:12:24");
INSERT INTO tbl_activity VALUES("1004","Searched Statistical Resolution Report","1","2014-04-18 17:12:26");
INSERT INTO tbl_activity VALUES("1005","Searched Monthly Resolution Report","1","2014-04-18 17:12:32");
INSERT INTO tbl_activity VALUES("1006","Searched Monthly Resolution Report","1","2014-04-18 17:12:35");
INSERT INTO tbl_activity VALUES("1007","Searched 01 2020 Resolution Report","1","2014-04-18 17:12:36");
INSERT INTO tbl_activity VALUES("1008","Printed2020-01 Resolution Report","1","2014-04-18 17:12:38");
INSERT INTO tbl_activity VALUES("1009","Searched Monthly Resolution Report","1","2014-04-18 17:12:54");
INSERT INTO tbl_activity VALUES("1010","Searched Resolution History","1","2014-04-18 17:13:02");
INSERT INTO tbl_activity VALUES("1011","Searched Resolution History","1","2014-04-18 17:13:36");
INSERT INTO tbl_activity VALUES("1012","Printed Resolution History of Resolution No. 0009 - 2011","1","2014-04-18 17:13:39");
INSERT INTO tbl_activity VALUES("1013","Searched Resolution History","1","2014-04-18 17:14:05");
INSERT INTO tbl_activity VALUES("1014","Searched Fiscal Yearly Resolution Report","1","2014-04-18 17:14:10");
INSERT INTO tbl_activity VALUES("1015","Viewed Statistical Report of Ordinance","1","2014-04-18 17:14:42");
INSERT INTO tbl_activity VALUES("1016","Viewed List of Communication","1","2014-04-18 17:16:55");
INSERT INTO tbl_activity VALUES("1017","Viewed Communication List","1","2014-04-18 17:17:01");
INSERT INTO tbl_activity VALUES("1018","Viewed Employee List","1","2014-04-18 17:17:38");
INSERT INTO tbl_activity VALUES("1019","Viewed Committee Meeting List for Resolution","1","2014-04-18 17:17:52");
INSERT INTO tbl_activity VALUES("1020","Return to Homepage","1","2014-04-18 17:20:56");
INSERT INTO tbl_activity VALUES("1021","Return to Homepage","1","2014-04-18 17:21:22");
INSERT INTO tbl_activity VALUES("1022","Searched Statistical Resolution Report","1","2014-04-18 17:21:49");
INSERT INTO tbl_activity VALUES("1023","Viewed Received Topics","1","2014-04-18 17:22:09");
INSERT INTO tbl_activity VALUES("1024","Return to Homepage","1","2014-04-18 17:22:14");
INSERT INTO tbl_activity VALUES("1025","Logged In","1","2014-04-18 17:22:55");
INSERT INTO tbl_activity VALUES("1026","Return to Homepage","1","2014-04-18 17:23:01");
INSERT INTO tbl_activity VALUES("1027","Logged In","1","2014-04-18 17:23:02");
INSERT INTO tbl_activity VALUES("1028","Return to Homepage","1","2014-04-18 17:23:08");
INSERT INTO tbl_activity VALUES("1029","Logged In","1","2014-04-18 17:25:43");
INSERT INTO tbl_activity VALUES("1030","Return to Homepage","1","2014-04-18 17:25:48");
INSERT INTO tbl_activity VALUES("1031","Return to Homepage","1","2014-04-18 17:27:40");
INSERT INTO tbl_activity VALUES("1032","Return to Homepage","1","2014-04-18 17:28:52");
INSERT INTO tbl_activity VALUES("1033","Return to Homepage","1","2014-04-18 17:29:00");
INSERT INTO tbl_activity VALUES("1034","Return to Homepage","1","2014-04-18 17:32:42");
INSERT INTO tbl_activity VALUES("1035","Logged In","1","2014-04-18 17:32:47");
INSERT INTO tbl_activity VALUES("1036","Logged In","2","2014-04-18 17:34:18");
INSERT INTO tbl_activity VALUES("1037","Return to Homepage","2","2014-04-18 17:34:18");
INSERT INTO tbl_activity VALUES("1038","Logged Out","2","2014-04-18 17:34:27");
INSERT INTO tbl_activity VALUES("1039","Logged In","1","2014-04-18 17:34:54");
INSERT INTO tbl_activity VALUES("1040","Return to Homepage","1","2014-04-18 17:34:55");
INSERT INTO tbl_activity VALUES("1041","Viewed Audit Trails","1","2014-04-18 17:35:02");
INSERT INTO tbl_activity VALUES("1042","Return to Homepage","1","2014-04-18 17:35:24");
INSERT INTO tbl_activity VALUES("1043","Logged Out","1","2014-04-18 17:35:30");
INSERT INTO tbl_activity VALUES("1044","Logged In","1","2014-04-18 18:43:55");
INSERT INTO tbl_activity VALUES("1045","Return to Homepage","1","2014-04-18 18:44:00");
INSERT INTO tbl_activity VALUES("1046","Viewed List of Communication","1","2014-04-18 18:44:06");
INSERT INTO tbl_activity VALUES("1047","Viewed Communication for Referral List","1","2014-04-18 18:46:06");
INSERT INTO tbl_activity VALUES("1048","Viewed List of Communication","1","2014-04-18 18:46:17");
INSERT INTO tbl_activity VALUES("1049","Assigned 2014 - 0024 for Referral","1","2014-04-18 18:46:23");
INSERT INTO tbl_activity VALUES("1050","Viewed List of Communication","1","2014-04-18 18:46:29");
INSERT INTO tbl_activity VALUES("1051","Viewed Communication for Referral List","1","2014-04-18 18:46:31");
INSERT INTO tbl_activity VALUES("1052","Viewed List of Referral for Committee Meeting","1","2014-04-18 18:47:13");
INSERT INTO tbl_activity VALUES("1053","Viewed Committee Meeting List for Resolution","1","2014-04-18 18:47:53");
INSERT INTO tbl_activity VALUES("1054","Searched Statistical Resolution Report","1","2014-04-18 18:49:07");
INSERT INTO tbl_activity VALUES("1055","Searched Fiscal Yearly Resolution Report","1","2014-04-18 18:50:53");
INSERT INTO tbl_activity VALUES("1056","Searched Monthly Committee Report per Committee","1","2014-04-18 18:51:09");
INSERT INTO tbl_activity VALUES("1057","Viewed Monitor Ordinance List","1","2014-04-18 18:51:15");
INSERT INTO tbl_activity VALUES("1058","Searched Monthly Committee Report per Committee","1","2014-04-18 18:51:20");
INSERT INTO tbl_activity VALUES("1059","Viewed Tracking List of Communication","1","2014-04-18 18:51:23");
INSERT INTO tbl_activity VALUES("1060","Viewed Monitor Ordinance List","1","2014-04-18 18:52:00");
INSERT INTO tbl_activity VALUES("1061","Viewed Monitor Ordinance ID: 1","1","2014-04-18 18:52:22");
INSERT INTO tbl_activity VALUES("1062","Viewed Monitor Ordinance List","1","2014-04-18 18:53:27");
INSERT INTO tbl_activity VALUES("1063","Downloaded Ordinance No. 0002 - 2014","1","2014-04-18 18:53:37");
INSERT INTO tbl_activity VALUES("1064","Viewed Audit Trails","1","2014-04-18 18:54:26");
INSERT INTO tbl_activity VALUES("1065","Searched Monthly Committee Report per Committee","1","2014-04-18 18:56:20");
INSERT INTO tbl_activity VALUES("1066","Viewed Monitor Ordinance List","1","2014-04-18 18:56:24");
INSERT INTO tbl_activity VALUES("1067","Viewed Committee Meeting List for Resolution","1","2014-04-18 19:01:23");
INSERT INTO tbl_activity VALUES("1068","Viewed Resolution List","1","2014-04-18 19:01:26");
INSERT INTO tbl_activity VALUES("1069","Viewed Resolution List","1","2014-04-18 19:01:33");
INSERT INTO tbl_activity VALUES("1070","Viewed Resolution List","1","2014-04-18 19:01:38");
INSERT INTO tbl_activity VALUES("1071","Viewed Resolution List","1","2014-04-18 19:01:43");
INSERT INTO tbl_activity VALUES("1072","Viewed Resolution List","1","2014-04-18 19:01:50");
INSERT INTO tbl_activity VALUES("1073","Viewed Archived Resolution List","1","2014-04-18 19:02:00");
INSERT INTO tbl_activity VALUES("1074","Viewed Archived Resolution List","1","2014-04-18 19:02:05");
INSERT INTO tbl_activity VALUES("1075","Viewed Archived Resolution List","1","2014-04-18 19:02:10");
INSERT INTO tbl_activity VALUES("1076","Viewed Resolution List","1","2014-04-18 19:02:10");
INSERT INTO tbl_activity VALUES("1077","Downloaded Resolution No. 0009 - 2011 file","1","2014-04-18 19:02:59");
INSERT INTO tbl_activity VALUES("1078","Viewed Committee Meeting List for Resolution","1","2014-04-18 19:04:43");
INSERT INTO tbl_activity VALUES("1079","Viewed Resolution List","1","2014-04-18 19:04:51");
INSERT INTO tbl_activity VALUES("1080","Viewed Resolution List","1","2014-04-18 19:04:56");
INSERT INTO tbl_activity VALUES("1081","Updated Resolution No. 0009 - 2011","1","2014-04-18 19:05:18");
INSERT INTO tbl_activity VALUES("1082","Viewed Resolution No. 0009 - 2011","1","2014-04-18 19:05:23");
INSERT INTO tbl_activity VALUES("1083","Logged In","1","2014-04-21 13:24:27");
INSERT INTO tbl_activity VALUES("1084","Return to Homepage","1","2014-04-21 13:24:33");
INSERT INTO tbl_activity VALUES("1085","Logged Out","1","2014-04-21 13:25:37");
INSERT INTO tbl_activity VALUES("1086","Logged In","1","2014-04-21 13:38:44");
INSERT INTO tbl_activity VALUES("1087","Return to Homepage","1","2014-04-21 13:38:44");
INSERT INTO tbl_activity VALUES("1088","Viewed List of Communication","1","2014-04-21 13:38:50");
INSERT INTO tbl_activity VALUES("1089","Viewed Communication List","1","2014-04-21 13:39:02");
INSERT INTO tbl_activity VALUES("1090","Added Another Communication","1","2014-04-21 13:39:50");
INSERT INTO tbl_activity VALUES("1091","View Communication ID: 2014 - 0025","1","2014-04-21 13:39:50");
INSERT INTO tbl_activity VALUES("1092","Viewed List of Communication","1","2014-04-21 13:40:07");
INSERT INTO tbl_activity VALUES("1093","Assigned 2014 - 0025 for Referral","1","2014-04-21 13:41:02");
INSERT INTO tbl_activity VALUES("1094","Viewed List of Communication","1","2014-04-21 13:41:08");
INSERT INTO tbl_activity VALUES("1095","Viewed Communication List","1","2014-04-21 13:41:14");
INSERT INTO tbl_activity VALUES("1096","Archived Communication ID: 2014 - 0006","1","2014-04-21 13:41:28");
INSERT INTO tbl_activity VALUES("1097","Viewed Communication List","1","2014-04-21 13:41:34");
INSERT INTO tbl_activity VALUES("1098","Viewed Archived Communication List","1","2014-04-21 13:41:37");
INSERT INTO tbl_activity VALUES("1099","Downloaded Communication Letter","1","2014-04-21 13:41:46");
INSERT INTO tbl_activity VALUES("1100","Retrieved Communication ID: 2014 - 0006","1","2014-04-21 13:41:52");
INSERT INTO tbl_activity VALUES("1101","Viewed Archived Communication List","1","2014-04-21 13:41:58");
INSERT INTO tbl_activity VALUES("1102","Viewed Archived Communication List","1","2014-04-21 13:41:58");
INSERT INTO tbl_activity VALUES("1103","Viewed Communication for Referral List","1","2014-04-21 13:45:08");
INSERT INTO tbl_activity VALUES("1104","Added Another Referral","1","2014-04-21 13:46:12");
INSERT INTO tbl_activity VALUES("1105","Viewed Referral ID: 51","1","2014-04-21 13:46:17");
INSERT INTO tbl_activity VALUES("1106","Downloaded Indorsement Letter","1","2014-04-21 13:46:22");
INSERT INTO tbl_activity VALUES("1107","Viewed List of Referral for Committee Meeting","1","2014-04-21 13:46:56");
INSERT INTO tbl_activity VALUES("1108","Added Another Committee Meeting","1","2014-04-21 13:47:19");
INSERT INTO tbl_activity VALUES("1109","Viewed Committee Meeting ID: 22","1","2014-04-21 13:47:24");
INSERT INTO tbl_activity VALUES("1110","Viewed Committee Meeting ID: 22","1","2014-04-21 13:47:38");
INSERT INTO tbl_activity VALUES("1111","Assigned Date of Committe Report of Committee Meeting ID: 22","1","2014-04-21 13:47:38");
INSERT INTO tbl_activity VALUES("1112","Viewed Committee Meeting ID: 22","1","2014-04-21 13:47:44");
INSERT INTO tbl_activity VALUES("1113","Downloaded Committee Report File","1","2014-04-21 13:47:52");
INSERT INTO tbl_activity VALUES("1114","Viewed Committee Meeting List for Resolution","1","2014-04-21 13:47:56");
INSERT INTO tbl_activity VALUES("1115","Viewed List of Communication","1","2014-04-21 13:50:03");
INSERT INTO tbl_activity VALUES("1116","Added Another Communication","1","2014-04-21 13:57:26");
INSERT INTO tbl_activity VALUES("1117","View Communication ID: 2014 - 0026","1","2014-04-21 13:57:26");
INSERT INTO tbl_activity VALUES("1118","Downloaded Communication Letter","1","2014-04-21 13:57:52");
INSERT INTO tbl_activity VALUES("1119","Viewed List of Communication","1","2014-04-21 13:58:22");
INSERT INTO tbl_activity VALUES("1120","Assigned 2014 - 0026 for Referral","1","2014-04-21 13:59:19");
INSERT INTO tbl_activity VALUES("1121","Viewed List of Communication","1","2014-04-21 13:59:25");
INSERT INTO tbl_activity VALUES("1122","Viewed Communication for Referral List","1","2014-04-21 14:00:00");
INSERT INTO tbl_activity VALUES("1123","Added Another Referral","1","2014-04-21 14:01:05");
INSERT INTO tbl_activity VALUES("1124","Viewed Referral ID: 52","1","2014-04-21 14:01:11");
INSERT INTO tbl_activity VALUES("1125","Viewed List of Referral for Committee Meeting","1","2014-04-21 14:01:19");
INSERT INTO tbl_activity VALUES("1126","Added Another Committee Meeting","1","2014-04-21 14:01:35");
INSERT INTO tbl_activity VALUES("1127","Viewed Committee Meeting ID: 23","1","2014-04-21 14:01:41");
INSERT INTO tbl_activity VALUES("1128","Viewed Committee Meeting ID: 23","1","2014-04-21 14:01:59");
INSERT INTO tbl_activity VALUES("1129","Assigned Date of Committe Report of Committee Meeting ID: 23","1","2014-04-21 14:01:59");
INSERT INTO tbl_activity VALUES("1130","Viewed Committee Meeting ID: 23","1","2014-04-21 14:02:05");
INSERT INTO tbl_activity VALUES("1131","Viewed Committee Meeting List for Resolution","1","2014-04-21 14:02:37");
INSERT INTO tbl_activity VALUES("1132","Added Another Resolution","1","2014-04-21 14:05:08");
INSERT INTO tbl_activity VALUES("1133","Viewed Resolution No. 0010 - 2014","1","2014-04-21 14:05:08");
INSERT INTO tbl_activity VALUES("1134","Downloaded Resolution No. 0010 - 2014 file","1","2014-04-21 14:06:31");
INSERT INTO tbl_activity VALUES("1135","Viewed Resolution List","1","2014-04-21 14:06:35");
INSERT INTO tbl_activity VALUES("1136","Downloaded Resolution No. 0007 - 2014 file","1","2014-04-21 14:06:40");
INSERT INTO tbl_activity VALUES("1137","Searched Statistical Resolution Report","1","2014-04-21 14:08:05");
INSERT INTO tbl_activity VALUES("1138","Searched Resolution History","1","2014-04-21 14:08:15");
INSERT INTO tbl_activity VALUES("1139","Printed Resolution History of Resolution No. 0005 - 2014","1","2014-04-21 14:08:27");
INSERT INTO tbl_activity VALUES("1140","Searched Resolution History","1","2014-04-21 14:09:37");
INSERT INTO tbl_activity VALUES("1141","Searched Statistical Resolution Report","1","2014-04-21 14:09:39");
INSERT INTO tbl_activity VALUES("1142","Searched Resolution History","1","2014-04-21 14:09:43");
INSERT INTO tbl_activity VALUES("1143","Searched Monthly Resolution Report","1","2014-04-21 14:09:48");
INSERT INTO tbl_activity VALUES("1144","Searched Monthly Resolution Report","1","2014-04-21 14:09:59");
INSERT INTO tbl_activity VALUES("1145","Searched 02 2014 Resolution Report","1","2014-04-21 14:09:59");
INSERT INTO tbl_activity VALUES("1146","Printed2014-02 Resolution Report","1","2014-04-21 14:10:09");
INSERT INTO tbl_activity VALUES("1147","Searched Monthly Resolution Report","1","2014-04-21 14:10:50");
INSERT INTO tbl_activity VALUES("1148","Searched Resolution History","1","2014-04-21 14:10:50");
INSERT INTO tbl_activity VALUES("1149","Searched Fiscal Yearly Resolution Report","1","2014-04-21 14:10:55");
INSERT INTO tbl_activity VALUES("1150","Searched Fiscal Yearly Resolution Report","1","2014-04-21 14:11:05");
INSERT INTO tbl_activity VALUES("1151","Searched Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-04-21 14:11:05");
INSERT INTO tbl_activity VALUES("1152","Printed Fiscal Yearly 2014 - 2015 Resolution Report","1","2014-04-21 14:11:25");
INSERT INTO tbl_activity VALUES("1153","Searched Fiscal Yearly Resolution Report","1","2014-04-21 14:12:05");
INSERT INTO tbl_activity VALUES("1154","Searched Monthly Committee Report per Committee","1","2014-04-21 14:12:13");
INSERT INTO tbl_activity VALUES("1155","Viewed Tracking List of Communication","1","2014-04-21 14:12:16");
INSERT INTO tbl_activity VALUES("1156","Viewed Tracking List of Communication","1","2014-04-21 14:12:37");
INSERT INTO tbl_activity VALUES("1157","Viewed Committee Meeting List for Resolution","1","2014-04-21 14:17:24");
INSERT INTO tbl_activity VALUES("1158","Searched Monthly Committee Report per Committee","1","2014-04-21 14:18:57");
INSERT INTO tbl_activity VALUES("1159","Viewed Tracking List of Communication","1","2014-04-21 14:19:02");
INSERT INTO tbl_activity VALUES("1160","Viewed Monitor Ordinance List","1","2014-04-21 14:20:52");
INSERT INTO tbl_activity VALUES("1161","Viewed Monitor Ordinance ID: 1","1","2014-04-21 14:23:27");
INSERT INTO tbl_activity VALUES("1162","Searched Monthly Committee Report per Committee","1","2014-04-21 14:24:16");
INSERT INTO tbl_activity VALUES("1163","Searched Monthly Committee Report per Committee","1","2014-04-21 14:24:29");
INSERT INTO tbl_activity VALUES("1164","Searched Monthly Committe Report of Committee of Barangay Affairs","1","2014-04-21 14:24:29");
INSERT INTO tbl_activity VALUES("1165","Printed Monthly Committee Report of Committee of Barangay Affairs","1","2014-04-21 14:24:36");
INSERT INTO tbl_activity VALUES("1166","Searched Monthly Committee Report per Committee","1","2014-04-21 14:24:56");
INSERT INTO tbl_activity VALUES("1167","Viewed Agenda List","1","2014-04-21 14:25:02");
INSERT INTO tbl_activity VALUES("1168","Printed Agenda ID: 6","1","2014-04-21 14:27:06");
INSERT INTO tbl_activity VALUES("1169","Viewed Agenda List","1","2014-04-21 14:27:13");
INSERT INTO tbl_activity VALUES("1170","Printed Agenda ID: 7","1","2014-04-21 14:27:29");
INSERT INTO tbl_activity VALUES("1171","Viewed Agenda List","1","2014-04-21 14:27:36");
INSERT INTO tbl_activity VALUES("1172","Viewed Audit Trails","1","2014-04-21 14:28:02");
INSERT INTO tbl_activity VALUES("1173","Viewed Backed-up System List","1","2014-04-21 14:28:35");



DROP TABLE tbl_agency;

CREATE TABLE `tbl_agency` (
  `agency_id` int(11) NOT NULL AUTO_INCREMENT,
  `agency_name` varchar(100) NOT NULL,
  `shortname` varchar(10) DEFAULT NULL,
  `address` varchar(50) NOT NULL,
  `contact_person` varchar(50) NOT NULL,
  `contact_num` varchar(20) NOT NULL,
  PRIMARY KEY (`agency_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO tbl_agency VALUES("1","Municipality of Santol","Santol","La Union","Harold Apilado","09298114568");
INSERT INTO tbl_agency VALUES("2","Municipality of Balaoan","Balaoan","La Union","Jex Obejas","09081377984");
INSERT INTO tbl_agency VALUES("3","Municipality of Agoo","Agoo","La Union","John Billy Marbella","09474200233");
INSERT INTO tbl_agency VALUES("4","Municipality of Bauang","Bauang","La Union","Charry Soria","09208161456");



DROP TABLE tbl_agenda;

CREATE TABLE `tbl_agenda` (
  `agenda_id` int(10) NOT NULL AUTO_INCREMENT,
  `communications` varchar(50) DEFAULT NULL,
  `comm_reports` varchar(50) DEFAULT NULL,
  `session_no` int(10) NOT NULL,
  `session_type` int(10) NOT NULL,
  `sp_batch_no` int(10) NOT NULL,
  `session_time` time NOT NULL,
  `session_date` date NOT NULL,
  `confirmation` int(10) NOT NULL,
  PRIMARY KEY (`agenda_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO tbl_agenda VALUES("1","","","1","0","1","06:45:00","2014-02-05","1");
INSERT INTO tbl_agenda VALUES("2","","","12","0","12","07:00:00","2014-02-06","1");
INSERT INTO tbl_agenda VALUES("3","","","123","0","11","10:30:00","2014-02-06","1");
INSERT INTO tbl_agenda VALUES("4","","","22","0","22","11:15:00","2014-02-06","1");
INSERT INTO tbl_agenda VALUES("5","","","12333","0","1233","11:45:00","2014-02-13","0");
INSERT INTO tbl_agenda VALUES("6","","","33333","1","333","03:00:00","2014-02-12","0");
INSERT INTO tbl_agenda VALUES("7","","","777","1","7","15:30:00","2014-02-11","0");



DROP TABLE tbl_category;

CREATE TABLE `tbl_category` (
  `cat_id` int(10) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(100) NOT NULL,
  `shortname` varchar(50) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

INSERT INTO tbl_category VALUES("1","Memorandum of Agreement","MOA");
INSERT INTO tbl_category VALUES("2","Appointment","APPT");
INSERT INTO tbl_category VALUES("3","Memorandum of Understanding","MOU");
INSERT INTO tbl_category VALUES("4","Deed of Sale","DoS");
INSERT INTO tbl_category VALUES("5","Contract of Leave","CoL");
INSERT INTO tbl_category VALUES("6","Terminal Leave Benefit","TLB");
INSERT INTO tbl_category VALUES("7","Annual Budget","AB");
INSERT INTO tbl_category VALUES("8","Supplemental Budget","SB");
INSERT INTO tbl_category VALUES("9","Realingment","Realignment");
INSERT INTO tbl_category VALUES("10","Contract of Agreement","CoA");
INSERT INTO tbl_category VALUES("11","Authorization","Authorization");
INSERT INTO tbl_category VALUES("12","Salary Adjustment","SA");
INSERT INTO tbl_category VALUES("13","Supplemental AIP","SAIP");
INSERT INTO tbl_category VALUES("14","Contract of Service","CoS");
INSERT INTO tbl_category VALUES("15","Contract of Affiliation","CoAffi");
INSERT INTO tbl_category VALUES("16","Contract of Consultancy","CoC");
INSERT INTO tbl_category VALUES("17","Request Letter","RL");
INSERT INTO tbl_category VALUES("18","Provincial Supplemental Budget","PSB");
INSERT INTO tbl_category VALUES("19","Provincial Annual Budget","PAB");
INSERT INTO tbl_category VALUES("20","Municipal Ordinance","MO");
INSERT INTO tbl_category VALUES("21","Provincial Ordinance","PO");
INSERT INTO tbl_category VALUES("22","Municipal Resolution","MR");



DROP TABLE tbl_comm_meeting_ordi;

CREATE TABLE `tbl_comm_meeting_ordi` (
  `meeting_ordi_id` int(10) NOT NULL AUTO_INCREMENT,
  `ref_id` int(10) NOT NULL,
  `action_taken` int(10) NOT NULL,
  `date_meeting` date DEFAULT NULL,
  `public_hearing` date DEFAULT NULL,
  `comm_report` date DEFAULT NULL,
  `input_by` int(10) NOT NULL,
  `comm_meeting_stat` int(10) NOT NULL,
  `comm_rep_file` varchar(50) DEFAULT NULL,
  `ord_remark` int(10) NOT NULL,
  `archive` int(10) NOT NULL,
  PRIMARY KEY (`meeting_ordi_id`),
  KEY `ref_id` (`ref_id`),
  KEY `input_by` (`input_by`),
  CONSTRAINT `FK_tbl_comm_meeting_ordi_tbl_employee` FOREIGN KEY (`input_by`) REFERENCES `tbl_employee` (`emp_id`),
  CONSTRAINT `FK_tbl_comm_meeting_ordi_tbl_referral` FOREIGN KEY (`ref_id`) REFERENCES `tbl_referral` (`ref_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

INSERT INTO tbl_comm_meeting_ordi VALUES("22","40","0","2014-02-03","","","1","0","CR Laws 1a municipal ordinance no. 23-2013.pdf","0","1");
INSERT INTO tbl_comm_meeting_ordi VALUES("23","40","0","2014-02-04","","","1","0","CR Laws 1a municipal ordinance no. 23-2013.pdf","0","1");
INSERT INTO tbl_comm_meeting_ordi VALUES("24","40","1","2014-02-05","0000-00-00","2014-02-06","1","1","CR Laws 1a municipal ordinance no. 23-2013.pdf","1","1");
INSERT INTO tbl_comm_meeting_ordi VALUES("25","42","0","0000-00-00","2014-02-10","","1","0","03chapters_5-10.pdf","0","1");
INSERT INTO tbl_comm_meeting_ordi VALUES("26","42","1","0000-00-00","2014-02-12","2014-02-13","1","1","03chapters_5-10.pdf","1","1");
INSERT INTO tbl_comm_meeting_ordi VALUES("27","43","0","2014-02-13","0000-00-00","","1","0","D Ord no. 52 luna, LU.pdf","0","1");
INSERT INTO tbl_comm_meeting_ordi VALUES("28","43","0","2014-02-11","0000-00-00","","1","0","D Ord no. 52 luna, LU.pdf","0","1");
INSERT INTO tbl_comm_meeting_ordi VALUES("29","43","1","0000-00-00","2014-02-13","2014-02-13","1","1","D Ord no. 52 luna, LU.pdf","1","1");
INSERT INTO tbl_comm_meeting_ordi VALUES("30","44","0","2014-02-11","0000-00-00","","1","0","03chapters3-4.pdf","0","1");
INSERT INTO tbl_comm_meeting_ordi VALUES("31","44","1","0000-00-00","2014-02-12","2014-02-13","1","1","03chapters3-4.pdf","1","0");
INSERT INTO tbl_comm_meeting_ordi VALUES("32","45","0","2014-02-10","0000-00-00","","1","0","11.pdf","0","0");
INSERT INTO tbl_comm_meeting_ordi VALUES("33","45","1","2014-02-11","0000-00-00","2014-02-13","1","1","11.pdf","1","0");
INSERT INTO tbl_comm_meeting_ordi VALUES("34","46","1","2012-01-16","0000-00-00","2012-01-19","1","1","02chapter4-5_2.pdf","1","0");
INSERT INTO tbl_comm_meeting_ordi VALUES("35","49","0","2014-03-17","0000-00-00","","1","0","02chapter4-5 (1).pdf","0","0");
INSERT INTO tbl_comm_meeting_ordi VALUES("36","49","0","2014-03-18","0000-00-00","","1","0","02chapter4-5 (1).pdf","0","0");
INSERT INTO tbl_comm_meeting_ordi VALUES("37","49","1","0000-00-00","2014-03-19","2014-03-20","1","1","02chapter4-5 (1).pdf","0","0");



DROP TABLE tbl_comm_meeting_reso;

CREATE TABLE `tbl_comm_meeting_reso` (
  `meeting_reso_id` int(10) NOT NULL AUTO_INCREMENT,
  `ref_id` int(10) NOT NULL,
  `action_taken` int(10) NOT NULL,
  `date_meeting` date NOT NULL,
  `comm_report` date DEFAULT NULL,
  `input_by` int(10) NOT NULL,
  `comm_rep_file` varchar(50) DEFAULT NULL,
  `comm_meeting_stat` int(10) NOT NULL,
  `remark` int(11) NOT NULL,
  `archive` int(11) NOT NULL,
  PRIMARY KEY (`meeting_reso_id`),
  KEY `ref_id` (`ref_id`),
  KEY `input_by` (`input_by`),
  CONSTRAINT `FK_tbl_comm_meeting_reso_tbl_employee` FOREIGN KEY (`input_by`) REFERENCES `tbl_employee` (`emp_id`),
  CONSTRAINT `FK__tbl_referral` FOREIGN KEY (`ref_id`) REFERENCES `tbl_referral` (`ref_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

INSERT INTO tbl_comm_meeting_reso VALUES("11","38","0","2014-02-03","0000-00-00","1","A contract of service of Mr. Jose C. Basallo.pdf","0","0","1");
INSERT INTO tbl_comm_meeting_reso VALUES("12","38","0","2014-02-04","0000-00-00","1","A contract of service of Mr. Jose C. Basallo.pdf","0","0","1");
INSERT INTO tbl_comm_meeting_reso VALUES("13","38","1","2014-02-16","2014-02-06","1","A contract of service of Mr. Jose C. Basallo.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("14","39","0","2014-02-03","0000-00-00","1","B FY 13 GFSB No. 2 Rosario, LU.pdf","0","0","0");
INSERT INTO tbl_comm_meeting_reso VALUES("15","39","0","2014-02-04","0000-00-00","1","B FY 13 GFSB No. 2 Rosario, LU.pdf","0","0","0");
INSERT INTO tbl_comm_meeting_reso VALUES("16","39","1","2014-02-05","2014-02-06","1","B FY 13 GFSB No. 2 Rosario, LU.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("17","41","0","2014-02-10","0000-00-00","1","CR Laws 1a municipal ordinance no. 23-2013.pdf","0","0","0");
INSERT INTO tbl_comm_meeting_reso VALUES("18","41","0","2014-02-11","0000-00-00","1","CR Laws 1a municipal ordinance no. 23-2013.pdf","0","0","0");
INSERT INTO tbl_comm_meeting_reso VALUES("19","41","1","2014-02-12","2014-02-13","1","CR Laws 1a municipal ordinance no. 23-2013.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("20","47","0","2014-03-18","","1","02chapter4-5 (1).pdf","0","0","0");
INSERT INTO tbl_comm_meeting_reso VALUES("21","47","1","2014-03-19","2014-03-20","1","02chapter4-5 (1).pdf","1","0","0");
INSERT INTO tbl_comm_meeting_reso VALUES("22","51","1","2014-04-21","2014-04-24","1","02chapter4-5 (1) (1) (1).pdf","1","0","0");
INSERT INTO tbl_comm_meeting_reso VALUES("23","52","1","2014-04-21","2014-04-24","1","02chapter4-5 (1) (1) (1) (1) (1).pdf","1","1","0");



DROP TABLE tbl_committee;

CREATE TABLE `tbl_committee` (
  `comm_id` int(10) NOT NULL AUTO_INCREMENT,
  `comm_name` varchar(200) NOT NULL,
  `shortname` varchar(50) NOT NULL,
  `chairman` int(10) NOT NULL,
  `v_chairman` int(10) NOT NULL,
  `members` varchar(50) NOT NULL,
  PRIMARY KEY (`comm_id`),
  KEY `chairman` (`chairman`),
  KEY `v_chairman` (`v_chairman`),
  CONSTRAINT `FK__tbl_officials` FOREIGN KEY (`chairman`) REFERENCES `tbl_officials` (`off_id`),
  CONSTRAINT `FK__tbl_officials_2` FOREIGN KEY (`v_chairman`) REFERENCES `tbl_officials` (`off_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

INSERT INTO tbl_committee VALUES("1","Committee of Barangay Affairs","CBA","2","3","4");
INSERT INTO tbl_committee VALUES("2","Committee of Ways and Means","CWM","2","3","1");
INSERT INTO tbl_committee VALUES("3","Committee of Communication and Information Technology","CCIT","3","1","2");
INSERT INTO tbl_committee VALUES("4","Committee on Municipal Affairs and Boundary Disputes","CMABD","1","2","1,2,3");
INSERT INTO tbl_committee VALUES("5","Committee on Agriculture and Aquatic Resources","CAAC","2","2","1,2,3");
INSERT INTO tbl_committee VALUES("6","Committee on Civil Service and Human Resource Development","CCSHRD","1","3","1,2,3");
INSERT INTO tbl_committee VALUES("7","Committee on Cooperatives","CoC","2","3","1,2,3");
INSERT INTO tbl_committee VALUES("8","Committee on Disaster Preparedness Management and Relief Services","CDPMRS","1","2","1,2,3");
INSERT INTO tbl_committee VALUES("9","Committee on Education and Culture","CEC","1","3","1,2,3");
INSERT INTO tbl_committee VALUES("10","Committee on Environmental Protection, Human Ecology and Security and Energy","CEPHESE","1","2","1,2,3");
INSERT INTO tbl_committee VALUES("11","Committee on Ethics and Good Governance","CEGC","1","2","1,2,3");
INSERT INTO tbl_committee VALUES("12","Committee on Finance, Budget and Appropriations","CFBA","1","3","1,2,3");
INSERT INTO tbl_committee VALUES("13","Committee on Handicapped and Elderly","CHE","3","1","1,2,3");
INSERT INTO tbl_committee VALUES("14","Committee on Health and Sanitation and Population Control","CHSPC","3","2","1,2,3");
INSERT INTO tbl_committee VALUES("15","Committee on Justice and Human Rights","CJHR","2","3","1,2,3");
INSERT INTO tbl_committee VALUES("16","Committee on Labor and Employment","CLE","3","2","1,2,3");
INSERT INTO tbl_committee VALUES("17","Committee on Laws, Rules, Privileges","CLRP","3","2","1,2,3");
INSERT INTO tbl_committee VALUES("18","Committee on Non-Governmental Organizations and Indigenous Peoples","CNGOIP","3","1","1,2,3");
INSERT INTO tbl_committee VALUES("19","Committee on Peace and Order and Public Safety","CPOPS","2","1","1,2,3");
INSERT INTO tbl_committee VALUES("20","Committee on Public Works and Utilities","CPWU","2","1","1,2,3");
INSERT INTO tbl_committee VALUES("21","Committee on Social Services, Women and Family Welfare and Development and Responsible Parenthood and Poverty Alleviation","CSSWFWDRPPA","2","1","1,2,3");
INSERT INTO tbl_committee VALUES("22","Committee on Trade, Commerce and Industry","CTCI","2","1","1,2,3");
INSERT INTO tbl_committee VALUES("23","Committee on Transportation and Communication","CTC","2","1","1");
INSERT INTO tbl_committee VALUES("24","Committee on Youth and Sports Development","CYSD","3","1","1,2,3");



DROP TABLE tbl_communication;

CREATE TABLE `tbl_communication` (
  `ctrl_no` varchar(20) NOT NULL,
  `subject_matter` varchar(1000) NOT NULL,
  `date_received` date NOT NULL,
  `cat_id` int(10) NOT NULL,
  `orig_id` int(10) NOT NULL,
  `input_by` int(10) NOT NULL,
  `comm_letter` varchar(50) NOT NULL,
  `date_agenda` date NOT NULL,
  `type_comm` int(10) NOT NULL,
  `comm_stat` int(10) NOT NULL,
  `archive` int(10) NOT NULL,
  PRIMARY KEY (`ctrl_no`),
  KEY `orig_id` (`orig_id`),
  KEY `cat_id` (`cat_id`),
  KEY `input_by` (`input_by`),
  CONSTRAINT `FK_tbl_communication_tbl_category` FOREIGN KEY (`cat_id`) REFERENCES `tbl_category` (`cat_id`),
  CONSTRAINT `FK_tbl_communication_tbl_employee` FOREIGN KEY (`input_by`) REFERENCES `tbl_employee` (`emp_id`),
  CONSTRAINT `FK_tbl_communication_tbl_origin` FOREIGN KEY (`orig_id`) REFERENCES `tbl_origin` (`orig_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO tbl_communication VALUES("2012 - 0001","asdf asdf sdfddd dfa","2012-02-27","2","2","1","02chapter4-5_3 (1).pdf","2012-02-27","1","1","1");
INSERT INTO tbl_communication VALUES("2014 - 0001","Letter of Gov. Manuel C. Ortega respectfully requesting the Honorable __ (A)\nBody to authorize him, for and on behalf of the Provincial Government of La Union (PGLU), to enter into a Contract of Service with Mr. Jose C. Basallo as Governor’s Consultant on Indigenous Cultural Communities/Indigenous Peoples (IPs), 2nd District of La Union, for a period of one (1) month from December 01, 2013 to December 31, 2013 with a Consulting Fee of Twenty Thousand Pesos (Php 20,000.00) payable at the end of the month.\nThe Governor certifies the matter as urgent.","2014-01-27","14","2","1","A contract of service of Mr. Jose C. Basallo.pdf","2014-01-30","1","1","1");
INSERT INTO tbl_communication VALUES("2014 - 0002","Memorandum from the Provincial Budget Officer recommending________ (B)\napproval of FY 2013 General Fund Supplemental Budget No. 2, of Rosario, La Union.","2014-01-27","11","2","1","B FY 13 GFSB No. 2 Rosario, LU.pdf","2014-01-30","1","1","1");
INSERT INTO tbl_communication VALUES("2014 - 0003","Municipal Ordinance No. 101, S. 2013 of the Sangguniang Bayan of ____ (C)\nSudipen, La Union entitled: “An Ordinance Amending Section 8 Under Municipal Ordinance No. 70, S. 2007 Entitled “ An Ordinance Promulgating Rules And Regulations In The Operation Of Public Motorized Tricycle And Utility Motorized Tricycle And Utility Motorized Single Motor, Providing Penalties For Violation Thereof And For Other Purposes”.","2014-01-20","10","1","1","B FY 13 GFSB No. 2 Rosario, LU.pdf","2014-01-23","0","1","1");
INSERT INTO tbl_communication VALUES("2014 - 0004","Municipal Ordinance No. 52-2013 of the Sangguniang Bayan of Luna, ___ (D)\nLa Union entitled: “An Ordinance Regulating the Services of Mananabang (HILOT)”.","2014-01-13","2","2","1","C Ord No. 101 Sudipen, LU.pdf","2014-01-16","1","1","1");
INSERT INTO tbl_communication VALUES("2014 - 0005","Ordinance No. 161 of the Sangguniang Bayan of Aringay, La Union _____ (E)\nentitled: To Amend Sections 13,19 and 20 of Ordinance No. 151, “The Scholarship Program of the Municipality of Aringay, La Union”.","2014-01-27","21","1","1","E Ord 161 Aringay, LU.pdf","2014-01-30","1","1","1");
INSERT INTO tbl_communication VALUES("2014 - 0006","TESTING SAMPLE","2014-02-09","21","2","1","res 014-12.pdf","2014-02-13","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0007","Municipal Ordinance No. 101, S. 2013 of the Sangguniang Bayan of ____ (C)\nSudipen, La Union entitled: “An Ordinance Amending Section 8 Under Municipal Ordinance No. 70, S. 2007 Entitled “ An Ordinance Promulgating Rules And Regulations In The Operation Of Public Motorized Tricycle And Utility Motorized Tricycle And Utility Motorized Single Motor, Providing","2014-02-03","10","2","1","res 014-12.pdf","2014-02-06","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0008","committee meeting ordinances","2014-02-03","21","2","1","A contract of service of Mr. Jose C. Basallo.pdf","2014-02-06","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0009","supplemental budget","2014-02-10","8","3","1","CR Laws 1a municipal ordinance no. 23-2013.pdf","2014-02-13","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0010","annual budget","2014-02-11","7","3","1","CR Laws 1a municipal ordinance no. 23-2013.pdf","2014-02-13","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0011","contract of service","2014-02-12","14","1","1","CR Laws 1b municipal ordinance no. 24-2013.pdf","2014-02-13","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0012","supplemental budget aip","2014-02-12","13","2","1","CR Laws 1b municipal ordinance no. 24-2013.pdf","2014-02-13","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0013","provincial ordinance","2014-02-03","21","3","1","C Ord No. 101 Sudipen, LU.pdf","2014-02-06","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0014","prov. ordinances","2014-02-03","21","2","1","03chapters3-4.pdf","2014-02-06","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0015","ordinance date meeting only","2014-02-03","21","2","1","50-64.pdf","2014-02-06","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0016","adf asdf asdf asdf asdf asdf","2013-02-01","16","2","1","02chapter4-5_3 (1).pdf","2013-02-07","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0017","kjfg;ks j;fksad ;jfksadj f;klsdajf;lasdk jf;asdkf asd fsdaf sadfdsfdsfsd d fg fg fdg df gdfg","2012-01-10","21","2","1","02chapter4-5.pdf","2012-01-12","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0018","2011","2011-06-14","7","1","1","02chapter4-5 (1).pdf","2011-06-16","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0019","annual budget urgent","2014-03-19","7","1","1","02chapter4-5 (1).pdf","2014-03-20","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0020"," Ordinance No. 161 of the Sangguniang Bayan of Aringay, La Union _____ (E) entitled: To Amend Sections 13,19 and 20 of Ordinance No. 151, “The Scholarship Program of the Municipality of Aringay, La Union”.","2014-03-12","16","2","1","02chapter4-5 (1).pdf","2014-03-13","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0021","Ordinance No. 161 of the Sangguniang Bayan of Aringay, La Union _____ (E) entitled: To Amend Sections 13,19 and 20 of Ordinance No. 151, “The Scholarship Program of the Municipality of Aringay, La Union”.","2014-03-12","16","2","1","02chapter4-5 (1).pdf","2014-03-13","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0022","Ordinance No. 161 of the Sangguniang Bayan of Aringay, La Union _____ (E) entitled: To Amend Sections 13,19 and 20 of Ordinance No. 151, “The Scholarship Program of the Municipality of Aringay, La Union”.","2014-03-12","21","2","1","02chapter4-5 (1).pdf","2014-03-13","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0023","Ordinance No. 161 of the Sangguniang Bayan of Aringay, La Union _____ (E) entitled: To Amend Sections 13,19 and 20 of Ordinance No. 151, “The Scholarship Program of the Municipality of Aringay, La Union”.","2014-03-12","21","2","1","02chapter4-5 (1).pdf","2014-03-13","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0024","Ordinance No. 161 of the Sangguniang Bayan of Aringay, La Union _____ (E) entitled: To Amend Sections 13,19 and 20 of Ordinance No. 151, “The Scholarship Program of the Municipality of Aringay, La Union”.","2014-03-12","16","2","1","02chapter4-5 (2).pdf","2014-03-13","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0025","Municipal Ordinance No. 101, S. 2013 of the Sangguniang Bayan of ____ (C) Sudipen, La Union entitled: “An Ordinance Amending Section 8 Under Municipal Ordinance No. 70, S. 2007 Entitled “ An Ordinance Promulgating Rules And Regulations In The Operation Of Public Motorized Tricycle And Utility Motorized Tricycle And Utility Motorized Single Motor, Providing	","2014-04-14","20","14","1","02chapter4-5 (1) (1).pdf","2014-04-17","1","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0026","Resolution earnestly and respectfully requesting the provincial government headed by Hon. Governor Manuel C. Ortega and H. Vice Governor Aureo Augusto Q. Nisce to extend help and assistance deemed necessary for the operation of the la union special school for culture and the arts (LUSSCA)","2014-04-14","22","15","1","02chapter4-5 (1) (1) (1) (1).pdf","2014-04-17","1","1","0");



DROP TABLE tbl_department;

CREATE TABLE `tbl_department` (
  `dept_id` int(10) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(100) NOT NULL,
  `shortname` varchar(50) NOT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO tbl_department VALUES("1","Sangguniang Panlalawigan Office","SPO");



DROP TABLE tbl_employee;

CREATE TABLE `tbl_employee` (
  `emp_id` int(10) NOT NULL AUTO_INCREMENT,
  `emp_fname` varchar(50) NOT NULL,
  `emp_mname` varchar(50) NOT NULL,
  `emp_lname` varchar(50) NOT NULL,
  `position` int(10) NOT NULL,
  `dept_id` int(10) NOT NULL,
  `contact_num` int(20) DEFAULT NULL,
  `email_add` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `dept_id` (`dept_id`),
  KEY `position` (`position`),
  CONSTRAINT `FK_tbl_employee_tbl_department` FOREIGN KEY (`dept_id`) REFERENCES `tbl_department` (`dept_id`),
  CONSTRAINT `FK_tbl_employee_tbl_position` FOREIGN KEY (`position`) REFERENCES `tbl_position` (`pos_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

INSERT INTO tbl_employee VALUES("1","Alexander Jerome","Lopez","Obejas","6","1","2147483647","jex310@yahoo.com");
INSERT INTO tbl_employee VALUES("2","John Billy","Dagang","Marbella","2","1","2147483647","jb@yahoo.com");
INSERT INTO tbl_employee VALUES("3","Charmaine Mae","Perez","Soria","2","1","2147483647","charry@yahoo.com");
INSERT INTO tbl_employee VALUES("4","Mariz","Villanueva","Dacanay","2","1","2147483647","mariz@yahoo.com");
INSERT INTO tbl_employee VALUES("5","Christian","Tamayo","Ancheta","2","1","","");
INSERT INTO tbl_employee VALUES("6","Halord","Jak Ammo","Apilado","2","1","","");
INSERT INTO tbl_employee VALUES("7","Divina","Jak Ammo","Pis-ing","2","1","","");
INSERT INTO tbl_employee VALUES("8","Dale","Jak Ammo","Calderon","2","1","","");
INSERT INTO tbl_employee VALUES("9","Vergel Miguel","Jak Ammo","Ducusin","2","1","","");
INSERT INTO tbl_employee VALUES("10","Jiroh","Dagang","Marbella","2","1","","");
INSERT INTO tbl_employee VALUES("11","Po","Panda ","Kung Fu","2","1","","");
INSERT INTO tbl_employee VALUES("12","sample","sample","sample","3","1","955","fs@yahoo.com");
INSERT INTO tbl_employee VALUES("13","again","again","again","4","1","2147483647","fjh@yahoo.com");



DROP TABLE tbl_monitor_ord;

CREATE TABLE `tbl_monitor_ord` (
  `monitor_id` int(11) NOT NULL AUTO_INCREMENT,
  `ord_no` varchar(20) NOT NULL,
  `subj_matter` longtext NOT NULL,
  `agency_id` int(10) NOT NULL,
  `date_furnished` date NOT NULL,
  `action_taken` varchar(1000) NOT NULL,
  `status` int(10) NOT NULL,
  `problems_encountered` varchar(1000) DEFAULT NULL,
  `recommendation` varchar(1000) DEFAULT NULL,
  `date_received` date NOT NULL,
  `input_by` int(10) NOT NULL,
  `monitor_form` varchar(50) NOT NULL,
  `archive` int(10) NOT NULL,
  `last_updated` date NOT NULL,
  PRIMARY KEY (`monitor_id`),
  KEY `ord_no` (`ord_no`),
  KEY `agency_id` (`agency_id`),
  KEY `input_by` (`input_by`),
  CONSTRAINT `FK_tbl_track_ord_tbl_agency` FOREIGN KEY (`agency_id`) REFERENCES `tbl_agency` (`agency_id`),
  CONSTRAINT `FK_tbl_track_ord_tbl_employee` FOREIGN KEY (`input_by`) REFERENCES `tbl_employee` (`emp_id`),
  CONSTRAINT `FK_tbl_track_ord_tbl_ordinance` FOREIGN KEY (`ord_no`) REFERENCES `tbl_ordinance` (`ord_no`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO tbl_monitor_ord VALUES("1","0002 - 2014","ordinance date meeting only","1","2014-02-24","af","0","asd","adf","2014-02-24","1","02chapter4-5.pdf","0","2014-03-01");
INSERT INTO tbl_monitor_ord VALUES("2","0002 - 2014","asd fasd fadss fad fad f","2","2014-02-28","adsf asdf asdf asdf ad","0","a sdfa df","ad fasd f asdf asdf adsf","2014-02-28","1","02chapter4-5.pdf","0","2014-02-28");
INSERT INTO tbl_monitor_ord VALUES("3","0006 - 2012","kjfg;ks j;fksad ;jfksadj f;klsdajf;lasdk jf;asdkf asd fsdaf sadfdsfdsfsd d fg fg fdg df gdfg","1","2014-03-01","sf dafd fasd fa","1","svfdsf sdf adsf","assdf dsf asf","2014-03-01","1","02chapter4-5_2.pdf","0","2014-03-01");



DROP TABLE tbl_officials;

CREATE TABLE `tbl_officials` (
  `off_id` int(10) NOT NULL AUTO_INCREMENT,
  `emp_id` int(10) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  PRIMARY KEY (`off_id`),
  KEY `emp_id` (`emp_id`),
  CONSTRAINT `FK_tbl_officials_tbl_employee` FOREIGN KEY (`emp_id`) REFERENCES `tbl_employee` (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

INSERT INTO tbl_officials VALUES("1","2","2013-05-05","2016-05-05");
INSERT INTO tbl_officials VALUES("2","3","2013-05-05","2016-05-05");
INSERT INTO tbl_officials VALUES("3","4","2013-05-05","2016-05-05");
INSERT INTO tbl_officials VALUES("4","11","2010-06-22","2014-01-01");
INSERT INTO tbl_officials VALUES("5","6","2014-01-14","2014-01-22");
INSERT INTO tbl_officials VALUES("6","7","2013-12-29","2014-01-29");
INSERT INTO tbl_officials VALUES("7","8","2013-12-29","2014-02-07");
INSERT INTO tbl_officials VALUES("8","9","2013-12-29","2014-02-08");
INSERT INTO tbl_officials VALUES("9","10","2013-12-29","2014-02-06");
INSERT INTO tbl_officials VALUES("10","5","2013-12-29","2014-03-08");



DROP TABLE tbl_ordinance;

CREATE TABLE `tbl_ordinance` (
  `ord_no` varchar(20) NOT NULL,
  `meeting_ordi_id` int(10) NOT NULL,
  `subj_matter` varchar(1000) NOT NULL,
  `date_passed` date NOT NULL,
  `author` varchar(50) NOT NULL,
  `imp_agency` varchar(100) NOT NULL,
  `ordi_file` varchar(50) NOT NULL,
  `input_by` int(10) NOT NULL,
  `archive` int(10) NOT NULL,
  PRIMARY KEY (`ord_no`),
  KEY `meeting_ordi_id` (`meeting_ordi_id`),
  KEY `input_by` (`input_by`),
  CONSTRAINT `FK_tbl_ordinance_tbl_comm_meeting_ordi` FOREIGN KEY (`meeting_ordi_id`) REFERENCES `tbl_comm_meeting_ordi` (`meeting_ordi_id`),
  CONSTRAINT `FK_tbl_ordinance_tbl_employee` FOREIGN KEY (`input_by`) REFERENCES `tbl_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO tbl_ordinance VALUES("0001 - 2013","24","Ordinance No. 161 of the Sangguniang Bayan of Aringay, La Union _____ (E)\nentitled: To Amend Sections 13,19 and 20 of Ordinance No. 151, ?The Scholarship Program of the Municipality of Aringay, La Union?.","2014-02-06","1,2,3,10","1,2,3,4","CR Laws 1b municipal ordinance no. 24-2013.pdf","1","1");
INSERT INTO tbl_ordinance VALUES("0002 - 2014","33","ordinance date meeting only","2014-02-13","1,2,3,10","1","61-322-1-PB.pdf","1","1");
INSERT INTO tbl_ordinance VALUES("0003 - 2014","31","prov. ordinances","2014-02-13","1,2,3,10","1,2,3,4","50-64.pdf","1","0");
INSERT INTO tbl_ordinance VALUES("0004 - 2014","29","provincial ordinance","2014-02-13","1,2,3,10","1,2,3,4","03chapters_5-10.pdf","1","0");
INSERT INTO tbl_ordinance VALUES("0005 - 2014","26","committee meeting ordinances","2014-02-13","1,2,3,10","1,2,3,4","02chapter4-5_2.pdf","1","0");
INSERT INTO tbl_ordinance VALUES("0006 - 2012","34","kjfg;ks j;fksad ;jfksadj f;klsdajf;lasdk jf;asdkf asd fsdaf sadfdsfdsfsd d fg fg fdg df gdfg","2012-01-19","1,2,3,10","1,2,3,4","02chapter4-5.pdf","1","0");



DROP TABLE tbl_origin;

CREATE TABLE `tbl_origin` (
  `orig_id` int(11) NOT NULL AUTO_INCREMENT,
  `orig_name` varchar(100) NOT NULL,
  `shortname` varchar(50) DEFAULT NULL,
  `contact_person` varchar(100) NOT NULL,
  `contact_num` varchar(50) NOT NULL,
  PRIMARY KEY (`orig_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

INSERT INTO tbl_origin VALUES("1","Municipality of Balaoan","Balaoan","jex obejas","2147483647");
INSERT INTO tbl_origin VALUES("2","Municipality of Luna","Luna","John Billy Marbellla","2147483647");
INSERT INTO tbl_origin VALUES("3","Provincial Budget Officer","PBO","Juan Dela Cruz","2147483647");
INSERT INTO tbl_origin VALUES("4","Municipality of Bagulin","Bagulin","John Billy D. Marbella","0");
INSERT INTO tbl_origin VALUES("5","City of San Fernando","SFC","","");
INSERT INTO tbl_origin VALUES("6","Municipality of San Juan","San Juan","","");
INSERT INTO tbl_origin VALUES("7","Municipality of Pugo","Pugo","","");
INSERT INTO tbl_origin VALUES("8","Municipality of Bangar","Bangar","","");
INSERT INTO tbl_origin VALUES("9","Municipality of Caba","Caba","","");
INSERT INTO tbl_origin VALUES("10","Municipality of Tubao","Tubao","","");
INSERT INTO tbl_origin VALUES("11","Municipality of Sto. Tomas","Sto. Tomas","","");
INSERT INTO tbl_origin VALUES("12","Municipality of Aringay","Aringay","","");
INSERT INTO tbl_origin VALUES("13","Municipality of Bauang","Bauang","","");
INSERT INTO tbl_origin VALUES("14","Municipality of Sudipen","Sudipen","","");
INSERT INTO tbl_origin VALUES("15","Municipality of Santol","Santol","","");
INSERT INTO tbl_origin VALUES("16","Municipality of San Gabriel","San Gabriel","","");
INSERT INTO tbl_origin VALUES("17","Municipality of Rosario","Rosario","","");
INSERT INTO tbl_origin VALUES("18","Municipality of Naguillian","Naguillian","","");
INSERT INTO tbl_origin VALUES("19","Municipality of Bacnotan","Bacnotan","","");



DROP TABLE tbl_photo;

CREATE TABLE `tbl_photo` (
  `photo_id` int(10) NOT NULL AUTO_INCREMENT,
  `gallery_id` int(10) NOT NULL,
  `file` varchar(75) NOT NULL,
  `photo_details` varchar(100) NOT NULL,
  `photo_usage` int(10) NOT NULL,
  PRIMARY KEY (`photo_id`),
  KEY `gallery_id` (`gallery_id`),
  CONSTRAINT `FK_tbl_photo_tbl_photo_gallery` FOREIGN KEY (`gallery_id`) REFERENCES `tbl_photo_gallery` (`gallery_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE tbl_photo_gallery;

CREATE TABLE `tbl_photo_gallery` (
  `gallery_id` int(10) NOT NULL AUTO_INCREMENT,
  `gallery_name` int(100) NOT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`gallery_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE tbl_position;

CREATE TABLE `tbl_position` (
  `pos_id` int(10) NOT NULL AUTO_INCREMENT,
  `pos_name` varchar(50) NOT NULL,
  `shortname` varchar(10) NOT NULL,
  PRIMARY KEY (`pos_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO tbl_position VALUES("1","Vice Governor","VG");
INSERT INTO tbl_position VALUES("2","Board Member","BOKAL");
INSERT INTO tbl_position VALUES("3","Secretariat - Receiving","SCR - R");
INSERT INTO tbl_position VALUES("4","Secretariat - Referral","SCR - REF");
INSERT INTO tbl_position VALUES("5","Secretariat - Tracking","SCR - TRK");
INSERT INTO tbl_position VALUES("6","Secretariat - Board Member","SCR - BM");



DROP TABLE tbl_referral;

CREATE TABLE `tbl_referral` (
  `ref_id` int(10) NOT NULL AUTO_INCREMENT,
  `ctrl_no` varchar(20) NOT NULL,
  `date_referred` date NOT NULL,
  `lead_committee` int(10) NOT NULL,
  `joint_committee` varchar(50) DEFAULT NULL,
  `ind_letter` varchar(100) NOT NULL,
  `input_by` int(10) NOT NULL,
  `referral_stat` int(10) NOT NULL,
  `archive` int(11) NOT NULL,
  PRIMARY KEY (`ref_id`),
  KEY `ctrl_no` (`ctrl_no`),
  KEY `lead_committee` (`lead_committee`),
  KEY `input_by` (`input_by`),
  CONSTRAINT `FK__tbl_committee` FOREIGN KEY (`lead_committee`) REFERENCES `tbl_committee` (`comm_id`),
  CONSTRAINT `FK__tbl_communication` FOREIGN KEY (`ctrl_no`) REFERENCES `tbl_communication` (`ctrl_no`),
  CONSTRAINT `FK__tbl_employee` FOREIGN KEY (`input_by`) REFERENCES `tbl_employee` (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

INSERT INTO tbl_referral VALUES("38","2014 - 0001","2014-01-31","4","","A contract of service of Mr. Jose C. Basallo.pdf","1","1","0");
INSERT INTO tbl_referral VALUES("39","2014 - 0002","2014-01-31","1","","B FY 13 GFSB No. 2 Rosario, LU.pdf","1","1","1");
INSERT INTO tbl_referral VALUES("40","2014 - 0005","2014-01-31","3","1,4,3,2","C Ord No. 101 Sudipen, LU.pdf","1","1","1");
INSERT INTO tbl_referral VALUES("41","2014 - 0004","2014-01-31","4","1","res 014-12.pdf","1","1","1");
INSERT INTO tbl_referral VALUES("42","2014 - 0008","2014-02-07","4","1,4,3,2","D Ord no. 52 luna, LU.pdf","1","1","0");
INSERT INTO tbl_referral VALUES("43","2014 - 0013","2014-02-07","3","1,4,3,2","CR Laws 1a municipal ordinance no. 23-2013.pdf","1","1","0");
INSERT INTO tbl_referral VALUES("44","2014 - 0014","2014-02-14","3","4","11.pdf","1","1","0");
INSERT INTO tbl_referral VALUES("45","2014 - 0015","2014-02-07","3","4","11.pdf","1","1","0");
INSERT INTO tbl_referral VALUES("46","2014 - 0017","2012-01-13","3","1,4,3,2","02chapter4-5_2.pdf","1","1","0");
INSERT INTO tbl_referral VALUES("47","2014 - 0020","2014-03-14","4","1,4,3,2","02chapter4-5 (1).pdf","1","1","0");
INSERT INTO tbl_referral VALUES("48","2014 - 0021","2014-03-14","2","1","02chapter4-5 (1).pdf","1","0","0");
INSERT INTO tbl_referral VALUES("49","2014 - 0022","2014-03-14","3","1,4,3,2","02chapter4-5 (1).pdf","1","1","0");
INSERT INTO tbl_referral VALUES("50","2014 - 0023","2014-03-14","1","1,4","02chapter4-5 (2).pdf","1","0","0");
INSERT INTO tbl_referral VALUES("51","2014 - 0024","2014-04-18","1","","02chapter4-5 (1) (1).pdf","1","1","0");
INSERT INTO tbl_referral VALUES("52","2014 - 0026","2014-04-18","12","","02chapter4-5 (1) (1) (1) (1) (1).pdf","1","1","0");



DROP TABLE tbl_resolution;

CREATE TABLE `tbl_resolution` (
  `res_no` varchar(50) NOT NULL,
  `ctrl_no` varchar(50) NOT NULL,
  `subj_matter` varchar(1000) NOT NULL,
  `author` varchar(50) NOT NULL,
  `reso_file` varchar(50) NOT NULL,
  `input_by` int(10) NOT NULL,
  `date_passed` date NOT NULL,
  `archive` int(10) NOT NULL,
  PRIMARY KEY (`res_no`),
  KEY `input_by` (`input_by`),
  KEY `ctrl_no` (`ctrl_no`),
  CONSTRAINT `FK_tbl_resolution_tbl_employee` FOREIGN KEY (`input_by`) REFERENCES `tbl_employee` (`emp_id`),
  CONSTRAINT `FK_tbl_resolution_tbl_status` FOREIGN KEY (`ctrl_no`) REFERENCES `tbl_status` (`ctrl_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO tbl_resolution VALUES("0001 - 2013","2014 - 0012","supplemental budget aip","1,2,3,10","02chapter4-5_2 (1).pdf","1","2013-02-14","1");
INSERT INTO tbl_resolution VALUES("0001 - 2014","2014 - 0001","Letter of Gov. Manuel C. Ortega respectfully requesting the Honorable __ (A)\nBody to authorize him, for and on behalf of the Provincial Government of La Union (PGLU), to enter into a Contract of Service with Mr. Jose C. Basallo as Governor?s Consultant on Indigenous Cultural Communities","1,2,3,10","A contract of service of Mr. Jose C. Basallo.pdf","1","2014-02-06","1");
INSERT INTO tbl_resolution VALUES("0002 - 2013","2014 - 0016","adf asdf asdf asdf asdf asdf","1,2,3,10","02chapter4-5_2 (1).pdf","1","2013-02-07","1");
INSERT INTO tbl_resolution VALUES("0002 - 2014","2014 - 0003","Municipal Ordinance No. 101, S. 2013 of the Sangguniang Bayan of ____ (C)\nSudipen, La Union entitled: ?An Ordinance Amending Section 8 Under Municipal Ordinance No. 70, S. 2007 Entitled ? An Ordinance Promulgating Rules And Regulations In The Operation Of Public Motorized Tricycle And Utility Motorized Tricycle And Utility Motorized Single Motor, Providing Penalties For Violation Thereof And For Other Purposes?.aafdsfa","1,2,3,10","Ord 026-12 iloco code.pdf","1","2014-02-06","1");
INSERT INTO tbl_resolution VALUES("0003 - 2014","2014 - 0002","Memorandum from the Provincial Budget Officer recommending________ (B)\napproval of FY 2013 General Fund Supplemental Budget No. 2, of Rosario, La Union.","2","B FY 13 GFSB No. 2 Rosario, LU.pdf","3","2014-02-19","1");
INSERT INTO tbl_resolution VALUES("0004 - 2014","2014 - 0004","Municipal Ordinance No. 52-2013 of the Sangguniang Bayan of Luna, ___ (D)\nLa Union entitled: ?An Ordinance Regulating the Services of Mananabang (HILOT)?.","1,2,3,10","02chapter4-5_2.pdf","3","2014-02-14","1");
INSERT INTO tbl_resolution VALUES("0005 - 2014","2014 - 0007","Municipal Ordinance No. 101, S. 2013 of the Sangguniang Bayan of ____ (C)\nSudipen, La Union entitled: ?An Ordinance Amending Section 8 Under Municipal Ordinance No. 70, S. 2007 Entitled ? An Ordinance Promulgating Rules And Regulations In The Operation Of Public Motorized Tricycle And Utility Motorized Tricycle And Utility Motorized Single Motor, Providing","1,2,3,10","11.pdf","3","2014-02-13","0");
INSERT INTO tbl_resolution VALUES("0006 - 2014","2014 - 0009","supplemental budget","1,2,3,10","61-322-1-PB.pdf","3","2014-02-13","0");
INSERT INTO tbl_resolution VALUES("0007 - 2014","2014 - 0010","annual budget","1,2,3,10","11.pdf","3","2014-02-13","0");
INSERT INTO tbl_resolution VALUES("0008 - 2014","2014 - 0011","contract of service","1,2,3,10","11.pdf","3","2014-02-13","0");
INSERT INTO tbl_resolution VALUES("0009 - 2011","2014 - 0018","2011","1,2,3","02chapter4-5 (1).pdf","1","2011-06-23","0");
INSERT INTO tbl_resolution VALUES("0009 - 2012","2012 - 0001","asdf asdf sdfddd dfa","1,2,3,10","02chapter4-5.pdf","1","2012-02-27","0");
INSERT INTO tbl_resolution VALUES("0009 - 2014","2014 - 0019","annual budget urgent","1,2,3","02chapter4-5 (1).pdf","1","2014-03-20","0");
INSERT INTO tbl_resolution VALUES("0010 - 2014","2014 - 0026","Resolution earnestly and respectfully requesting the provincial government headed by Hon. Governor Manuel C. Ortega and H. Vice Governor Aureo Augusto Q. Nisce to extend help and assistance deemed necessary for the operation of the la union special school for culture and the arts (LUSSCA)","1,2,3","02chapter4-5 (1) (1) (1) (1) (1).pdf","1","2014-04-24","0");



DROP TABLE tbl_status;

CREATE TABLE `tbl_status` (
  `stat_id` int(10) NOT NULL AUTO_INCREMENT,
  `ctrl_no` varchar(20) NOT NULL,
  `comm_stat` int(10) NOT NULL DEFAULT '0',
  `referral_stat` int(10) NOT NULL DEFAULT '0',
  `comm_meeting_stat` int(10) NOT NULL DEFAULT '0',
  `remarks` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`stat_id`),
  KEY `ctrl_no` (`ctrl_no`),
  CONSTRAINT `FK_tbl_status_tbl_communication` FOREIGN KEY (`ctrl_no`) REFERENCES `tbl_communication` (`ctrl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;

INSERT INTO tbl_status VALUES("73","2014 - 0001","1","1","1","1");
INSERT INTO tbl_status VALUES("74","2014 - 0002","1","1","1","1");
INSERT INTO tbl_status VALUES("75","2014 - 0003","1","1","1","1");
INSERT INTO tbl_status VALUES("76","2014 - 0004","1","1","1","1");
INSERT INTO tbl_status VALUES("77","2014 - 0005","1","1","1","1");
INSERT INTO tbl_status VALUES("78","2014 - 0008","1","1","1","1");
INSERT INTO tbl_status VALUES("79","2014 - 0013","1","1","1","1");
INSERT INTO tbl_status VALUES("80","2014 - 0014","1","1","1","1");
INSERT INTO tbl_status VALUES("81","2014 - 0015","1","1","1","1");
INSERT INTO tbl_status VALUES("82","2014 - 0006","1","1","1","0");
INSERT INTO tbl_status VALUES("83","2014 - 0007","1","1","1","1");
INSERT INTO tbl_status VALUES("84","2014 - 0009","1","1","1","1");
INSERT INTO tbl_status VALUES("85","2014 - 0010","1","1","1","1");
INSERT INTO tbl_status VALUES("86","2014 - 0011","1","1","1","1");
INSERT INTO tbl_status VALUES("87","2014 - 0012","1","1","1","1");
INSERT INTO tbl_status VALUES("88","2014 - 0016","1","1","1","1");
INSERT INTO tbl_status VALUES("89","2014 - 0017","1","1","1","1");
INSERT INTO tbl_status VALUES("90","2012 - 0001","1","1","1","1");
INSERT INTO tbl_status VALUES("91","2014 - 0018","1","1","1","1");
INSERT INTO tbl_status VALUES("92","2014 - 0019","1","1","1","1");
INSERT INTO tbl_status VALUES("93","2014 - 0020","1","1","1","0");
INSERT INTO tbl_status VALUES("94","2014 - 0021","1","0","0","0");
INSERT INTO tbl_status VALUES("95","2014 - 0022","1","1","1","0");
INSERT INTO tbl_status VALUES("96","2014 - 0023","1","0","0","0");
INSERT INTO tbl_status VALUES("97","2014 - 0024","1","1","1","0");
INSERT INTO tbl_status VALUES("98","2014 - 0025","0","0","0","0");
INSERT INTO tbl_status VALUES("99","2014 - 0026","1","1","1","1");



DROP TABLE tbl_sysbackup;

CREATE TABLE `tbl_sysbackup` (
  `db_id` int(11) NOT NULL AUTO_INCREMENT,
  `db_name` varchar(50) DEFAULT NULL,
  `date_backed_up` datetime DEFAULT NULL,
  `backed_up_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`db_id`),
  KEY `backed_up_by` (`backed_up_by`),
  CONSTRAINT `FK__tbl_user` FOREIGN KEY (`backed_up_by`) REFERENCES `tbl_user` (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

INSERT INTO tbl_sysbackup VALUES("1","db-backup(2014-03-02).sql","2014-03-02 23:41:26","1");
INSERT INTO tbl_sysbackup VALUES("2","db-backup(2014-03-02).sql","2014-03-02 23:45:03","1");
INSERT INTO tbl_sysbackup VALUES("3","db-backup(2014-03-02).sql","2014-03-02 23:46:00","1");
INSERT INTO tbl_sysbackup VALUES("4","db-backup(2014-03-03).sql","2014-03-03 00:29:04","1");
INSERT INTO tbl_sysbackup VALUES("5","db-backup(2014-03-03).sql","2014-03-03 09:29:25","1");
INSERT INTO tbl_sysbackup VALUES("6","db-backup(2014-03-03).sql","2014-03-03 17:52:56","1");
INSERT INTO tbl_sysbackup VALUES("7","db-backup(2014-03-04).sql","2014-03-04 17:56:14","1");
INSERT INTO tbl_sysbackup VALUES("8","db-backup(2014-03-05).sql","2014-03-05 17:56:37","1");
INSERT INTO tbl_sysbackup VALUES("9","db-backup(2014-03-16).sql","2014-03-16 12:43:02","1");
INSERT INTO tbl_sysbackup VALUES("10","db-backup(2014-03-16).sql","2014-03-16 12:44:03","1");
INSERT INTO tbl_sysbackup VALUES("11","db-backup(2014-03-26).sql","2014-03-26 09:54:11","1");
INSERT INTO tbl_sysbackup VALUES("12","db-backup(2014-04-18).sql","2014-04-18 17:00:23","1");



DROP TABLE tbl_user;

CREATE TABLE `tbl_user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `emp_id` int(10) NOT NULL,
  `role` varchar(50) NOT NULL,
  `start_date` date NOT NULL,
  `exp_date` date NOT NULL,
  PRIMARY KEY (`username`),
  KEY `emp_id` (`emp_id`),
  CONSTRAINT `FK_tbl_user_tbl_employee` FOREIGN KEY (`emp_id`) REFERENCES `tbl_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO tbl_user VALUES("admin","21232f297a57a5a743894a0e4a801fc3","1","SCR-RC","2013-10-10","2013-10-10");
INSERT INTO tbl_user VALUES("bm secretary","889b2b111b4bc3adb722f0fcff480901","11","SCR-BOK","2013-10-10","2016-10-10");
INSERT INTO tbl_user VALUES("jex","21232f297a57a5a743894a0e4a801fc3","1","SYSAD","2013-10-10","2013-10-10");
INSERT INTO tbl_user VALUES("receiving","0639f5c0e2228ccdf3385f88f1579491","1","SCR-RC","2013-10-10","2016-10-10");
INSERT INTO tbl_user VALUES("receiving sec","0639f5c0e2228ccdf3385f88f1579491","2","SCR-RC","2013-10-10","2016-10-10");
INSERT INTO tbl_user VALUES("referral","cd9bcdcbf9ef392bb2bce89a7c150638","2","SCR-RF","2013-10-10","2016-10-10");
INSERT INTO tbl_user VALUES("sample","5e8ff9bf55ba3508199d22e984129be6","1","SCR-RC","2013-10-10","2013-10-10");
INSERT INTO tbl_user VALUES("tracking","1879966223c3e382e14c6524c84942f1","3","SCR-T","2013-10-10","2016-10-10");



