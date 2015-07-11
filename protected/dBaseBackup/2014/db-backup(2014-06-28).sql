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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

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
INSERT INTO forum_answer VALUES("16","44","iboy","yobi@gmail.com","sdffasdfasdfasdf\nasdf\nads\nfd\nf\ndf\ndfdfdfd f    df df df df dfd","2014-04-21 09:30:35");
INSERT INTO forum_answer VALUES("17","45","jex","jex@yahoo.com","none","2014-04-29 09:32:34");
INSERT INTO forum_answer VALUES("18","46","yobi","yobi@yahoo.com","testingasdf asdf asdf asdfadsf adsfasdfasdfadsfdasfasdf ","2014-06-23 11:05:12");



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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

INSERT INTO forum_question VALUES("33","sample","sample","sample","sample@yahoo.com","2014-01-28 15:05:50","115","11","1");
INSERT INTO forum_question VALUES("34","topic1","topic123","JBMarbella","arnold815@ymail.com","2014-01-29 06:56:17","4","0","1");
INSERT INTO forum_question VALUES("35","sssssssssssss","ssssssssss","ssssssssssssss","sample@yahoo.com","2014-01-30 14:43:37","49","4","1");
INSERT INTO forum_question VALUES("37","asdf asdf asd","sadfda sadfasd","asdf saf sd","jex310@gmail.com","2014-02-02 11:35:03","0","0","1");
INSERT INTO forum_question VALUES("38","asdfa ","as df","asdf saf sd","jex310@gmail.com","2014-02-02 11:36:11","0","0","2");
INSERT INTO forum_question VALUES("39","sdasd","dsd","sdsd","charrysoria@gmail.com","2014-02-09 14:33:08","0","0","1");
INSERT INTO forum_question VALUES("40","hgkbh h gh","gjb hkg h hgkgh","gkhjh ghkg","g@gmail.com","2014-02-27 04:29:01","4","0","1");
INSERT INTO forum_question VALUES("41","ji fsd fsjdfskjd","dkaf asd","jj@yahoo.com","jex310@yahoo.com","2014-03-01 10:46:27","1","0","1");
INSERT INTO forum_question VALUES("42","dsaf asd ","sadf","asdfs","jex310@gmail.com","2014-03-02 13:08:18","0","0","1");
INSERT INTO forum_question VALUES("43","asdfsssssssssssssssssss","sadfsssssssssssssss","ssss","jex310@gmail.com","2014-03-02 13:14:43","2","0","1");
INSERT INTO forum_question VALUES("44","sampol","sdsdsdkj             sdsdsdkj             sdsdsdkj      \nsdsdsdkj             sdsdsdkj             sdsdsdkjsdsdsdkj             sdsdsdkj             sdsdsdkjsdsdsdkj             sdsdsdkj             sdsdsdkjsdsdsdkj             sdsdsdkj             sdsdsdkjsdsdsdkj             sdsdsdkj             sdsdsdkjsdsdsdkj             sdsdsdkj             sdsdsdkjsdsdsdkj             sdsdsdkj             sdsdsdkjsdsdsdkj             sdsdsdkj             sdsdsdkjsdsdsdkj             sdsdsdkj     a       ","charry","cha@gmail.com","2014-03-05 11:34:16","8","1","1");
INSERT INTO forum_question VALUES("45","ordinary","people","divina","cess11_vhine23@yahoo.com","2014-03-06 09:33:41","4","1","1");
INSERT INTO forum_question VALUES("46","created topic in forum","forum topics","lara","larageraldinbacer@yahoo.com","2014-04-21 08:33:27","2","1","1");
INSERT INTO forum_question VALUES("47","iloko code","awakdaldda","jex","jex310@gmail.com","2014-04-29 09:33:36","2","0","1");
INSERT INTO forum_question VALUES("48","topic ko ","topic mo","yobiboy","yobi@yahoo.com","2014-06-23 13:52:56","0","0","1");
INSERT INTO forum_question VALUES("49","eerror","error","s","yobi@yahoo.com","2014-06-23 14:01:45","0","0","2");
INSERT INTO forum_question VALUES("50","QWERTY1234","dsf","sdfff","yobi@yahoo.com","2014-06-23 14:08:28","0","0","1");
INSERT INTO forum_question VALUES("51","test","testtestest","tetst","yobi@yahoo.com","2014-06-23 14:14:31","0","0","2");
INSERT INTO forum_question VALUES("52","test","testing yobi gwapo","yobiboy","yobi@yahoo.com","2014-06-23 14:34:14","0","0","2");



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
) ENGINE=InnoDB AUTO_INCREMENT=283 DEFAULT CHARSET=latin1;

INSERT INTO tbl_activity VALUES("1","Return to Homepage","1","2014-06-28 13:20:32");
INSERT INTO tbl_activity VALUES("2","Viewed List of Communication","1","2014-06-28 13:20:36");
INSERT INTO tbl_activity VALUES("3","Viewed Referral List","1","2014-06-28 13:20:40");
INSERT INTO tbl_activity VALUES("4","Viewed List of Communication","1","2014-06-28 13:20:44");
INSERT INTO tbl_activity VALUES("5","Viewed Monitor Ordinance List","1","2014-06-28 13:21:45");
INSERT INTO tbl_activity VALUES("6","Viewed Resolution List","1","2014-06-28 13:21:48");
INSERT INTO tbl_activity VALUES("7","Viewed Ordinance List","1","2014-06-28 13:21:50");
INSERT INTO tbl_activity VALUES("8","Viewed Committee Meeting List","1","2014-06-28 13:21:53");
INSERT INTO tbl_activity VALUES("9","Viewed Committee Meeting List","1","2014-06-28 13:21:55");
INSERT INTO tbl_activity VALUES("10","Viewed Referral List","1","2014-06-28 13:21:57");
INSERT INTO tbl_activity VALUES("11","Searched Statistical Resolution Report","1","2014-06-28 13:21:59");
INSERT INTO tbl_activity VALUES("12","Viewed Statistical Report of Ordinance","1","2014-06-28 13:22:05");
INSERT INTO tbl_activity VALUES("13","Searched Monthly Committee Report per Committee","1","2014-06-28 13:22:08");
INSERT INTO tbl_activity VALUES("14","Viewed List of Communication","1","2014-06-28 13:22:20");
INSERT INTO tbl_activity VALUES("15","Added Another Communication","1","2014-06-28 13:31:23");
INSERT INTO tbl_activity VALUES("16","View Communication ID: 2014 - 0001","1","2014-06-28 13:31:24");
INSERT INTO tbl_activity VALUES("17","Viewed Communication List","1","2014-06-28 13:31:27");
INSERT INTO tbl_activity VALUES("18","Viewed List of Communication","1","2014-06-28 13:31:29");
INSERT INTO tbl_activity VALUES("19","Viewed Communication List","1","2014-06-28 13:31:32");
INSERT INTO tbl_activity VALUES("20","Viewed List of Communication","1","2014-06-28 13:31:37");
INSERT INTO tbl_activity VALUES("21","Assigned 2014 - 0001 for Referral","1","2014-06-28 13:31:41");
INSERT INTO tbl_activity VALUES("22","Viewed List of Communication","1","2014-06-28 13:31:42");
INSERT INTO tbl_activity VALUES("23","Logged Out","1","2014-06-28 13:31:44");
INSERT INTO tbl_activity VALUES("24","Logged In","2","2014-06-28 13:32:01");
INSERT INTO tbl_activity VALUES("25","Return to Homepage","2","2014-06-28 13:32:02");
INSERT INTO tbl_activity VALUES("26","Viewed Communication for Referral List","2","2014-06-28 13:32:04");
INSERT INTO tbl_activity VALUES("27","Viewed Communication for Referral List","2","2014-06-28 13:32:08");
INSERT INTO tbl_activity VALUES("28","Added Another Referral","2","2014-06-28 13:33:59");
INSERT INTO tbl_activity VALUES("29","Viewed Referral ID: 21","2","2014-06-28 13:33:59");
INSERT INTO tbl_activity VALUES("30","Viewed Referral List","2","2014-06-28 13:34:04");
INSERT INTO tbl_activity VALUES("31","Viewed Communication for Referral List","2","2014-06-28 13:34:07");
INSERT INTO tbl_activity VALUES("32","Viewed List of Referral for Committee Meeting","2","2014-06-28 13:34:09");
INSERT INTO tbl_activity VALUES("33","Viewed Committee Meeting List","2","2014-06-28 13:34:16");
INSERT INTO tbl_activity VALUES("34","Viewed List of Referral for Committee Meeting","2","2014-06-28 13:34:19");
INSERT INTO tbl_activity VALUES("35","Added Another Committee Meeting","2","2014-06-28 13:34:30");
INSERT INTO tbl_activity VALUES("36","Viewed Committee Meeting ID: 1","2","2014-06-28 13:34:30");
INSERT INTO tbl_activity VALUES("37","Viewed Committee Meeting List","2","2014-06-28 13:34:34");
INSERT INTO tbl_activity VALUES("38","Updated Committee Meeting ID: 1","2","2014-06-28 05:34:48");
INSERT INTO tbl_activity VALUES("39","Updated Committee Meeting ID: 1","2","2014-06-28 05:34:54");
INSERT INTO tbl_activity VALUES("40","Updated Committee Meeting ID: 1","2","2014-06-28 05:35:10");
INSERT INTO tbl_activity VALUES("41","Viewed Committee Meeting List","2","2014-06-28 13:35:55");
INSERT INTO tbl_activity VALUES("42","Viewed Committee Meeting ID: 1","2","2014-06-28 13:35:58");
INSERT INTO tbl_activity VALUES("43","Viewed List of Referral for Committee Meeting","2","2014-06-28 13:36:05");
INSERT INTO tbl_activity VALUES("44","Added Another Committee Meeting","2","2014-06-28 13:36:14");
INSERT INTO tbl_activity VALUES("45","Viewed Committee Meeting ID: 2","2","2014-06-28 13:36:14");
INSERT INTO tbl_activity VALUES("46","Viewed List of Referral for Committee Meeting","2","2014-06-28 13:36:18");
INSERT INTO tbl_activity VALUES("47","Viewed Committee Meeting List","2","2014-06-28 13:36:20");
INSERT INTO tbl_activity VALUES("48","Updated Committee Meeting ID: 2","2","2014-06-28 05:36:45");
INSERT INTO tbl_activity VALUES("49","Viewed List of Referral for Committee Meeting","2","2014-06-28 13:36:52");
INSERT INTO tbl_activity VALUES("50","Viewed Committee Meeting List","2","2014-06-28 13:36:55");
INSERT INTO tbl_activity VALUES("51","Viewed Committee Meeting ID: 2","2","2014-06-28 13:36:58");
INSERT INTO tbl_activity VALUES("52","Viewed Committee Meeting ID: 2","2","2014-06-28 13:37:07");
INSERT INTO tbl_activity VALUES("53","Assigned Date of Committe Report of Committee Meeting ID: 2","2","2014-06-28 13:37:08");
INSERT INTO tbl_activity VALUES("54","Viewed Committee Meeting ID: 2","2","2014-06-28 13:37:08");
INSERT INTO tbl_activity VALUES("55","Viewed List of Referral for Committee Meeting","2","2014-06-28 13:37:13");
INSERT INTO tbl_activity VALUES("56","Logged Out","2","2014-06-28 13:37:16");
INSERT INTO tbl_activity VALUES("57","Logged In","3","2014-06-28 13:37:23");
INSERT INTO tbl_activity VALUES("58","Return to Homepage","3","2014-06-28 13:37:23");
INSERT INTO tbl_activity VALUES("59","Viewed Committee Meeting List for Resolution","3","2014-06-28 13:37:26");
INSERT INTO tbl_activity VALUES("60","Added Another Resolution","3","2014-06-28 13:37:53");
INSERT INTO tbl_activity VALUES("61","Viewed Resolution No. 0001 - 2014","3","2014-06-28 13:37:54");
INSERT INTO tbl_activity VALUES("62","Viewed Resolution List","3","2014-06-28 13:37:57");
INSERT INTO tbl_activity VALUES("63","Viewed Committee Meeting List for Resolution","3","2014-06-28 13:38:01");
INSERT INTO tbl_activity VALUES("64","Viewed Committee Meeting List for Ordinance","3","2014-06-28 13:38:04");
INSERT INTO tbl_activity VALUES("65","Viewed Committee Meeting List for Resolution","3","2014-06-28 13:38:06");
INSERT INTO tbl_activity VALUES("66","Viewed Resolution List","3","2014-06-28 13:38:08");
INSERT INTO tbl_activity VALUES("67","Viewed Resolution No. 0001 - 2014","3","2014-06-28 13:38:11");
INSERT INTO tbl_activity VALUES("68","Viewed Monitor Ordinance List","3","2014-06-28 13:38:14");
INSERT INTO tbl_activity VALUES("69","Return to Homepage","3","2014-06-28 13:38:19");
INSERT INTO tbl_activity VALUES("70","Viewed Committee Meeting List","3","2014-06-28 13:38:22");
INSERT INTO tbl_activity VALUES("71","Viewed Committee Meeting List","3","2014-06-28 13:38:25");
INSERT INTO tbl_activity VALUES("72","Viewed Committee Meeting List","3","2014-06-28 13:38:28");
INSERT INTO tbl_activity VALUES("73","Downloaded Committee Report File","3","2014-06-28 13:38:33");
INSERT INTO tbl_activity VALUES("74","Return to Homepage","3","2014-06-28 13:39:00");
INSERT INTO tbl_activity VALUES("75","Return to Homepage","3","2014-06-28 13:39:08");
INSERT INTO tbl_activity VALUES("76","Viewed Committee Meeting List","3","2014-06-28 13:39:22");
INSERT INTO tbl_activity VALUES("77","Logged Out","3","2014-06-28 13:39:25");
INSERT INTO tbl_activity VALUES("78","Logged In","2","2014-06-28 13:42:19");
INSERT INTO tbl_activity VALUES("79","Return to Homepage","2","2014-06-28 13:42:19");
INSERT INTO tbl_activity VALUES("80","Viewed Communication for Referral List","2","2014-06-28 13:42:22");
INSERT INTO tbl_activity VALUES("81","Viewed Communication for Referral List","2","2014-06-28 13:42:25");
INSERT INTO tbl_activity VALUES("82","Viewed Referral List","2","2014-06-28 13:42:27");
INSERT INTO tbl_activity VALUES("83","Viewed List of Referrals for Committe Meeting","2","2014-06-28 13:42:30");
INSERT INTO tbl_activity VALUES("84","Viewed Communication for Referral List","2","2014-06-28 13:42:33");
INSERT INTO tbl_activity VALUES("85","Viewed Referral List","2","2014-06-28 13:42:35");
INSERT INTO tbl_activity VALUES("86","Viewed Referral ID: 21","2","2014-06-28 13:42:38");
INSERT INTO tbl_activity VALUES("87","Viewed Referral List","2","2014-06-28 13:42:48");
INSERT INTO tbl_activity VALUES("88","Viewed List of Referrals for Committe Meeting","2","2014-06-28 13:42:50");
INSERT INTO tbl_activity VALUES("89","Viewed List of Referral for Committee Meeting","2","2014-06-28 13:42:52");
INSERT INTO tbl_activity VALUES("90","Viewed Committee Meeting List","2","2014-06-28 13:42:54");
INSERT INTO tbl_activity VALUES("91","Updated Committee Meeting ID: 1","2","2014-06-28 05:43:06");
INSERT INTO tbl_activity VALUES("92","Updated Committee Meeting ID: 1","2","2014-06-28 05:47:27");
INSERT INTO tbl_activity VALUES("93","Viewed Communication for Referral List","2","2014-06-28 13:47:53");
INSERT INTO tbl_activity VALUES("94","Viewed Communication for Referral List","2","2014-06-28 13:47:59");
INSERT INTO tbl_activity VALUES("95","Viewed Referral List","2","2014-06-28 13:48:01");
INSERT INTO tbl_activity VALUES("96","Viewed Archived Referral List","2","2014-06-28 13:48:03");
INSERT INTO tbl_activity VALUES("97","Viewed Referral List","2","2014-06-28 13:48:05");
INSERT INTO tbl_activity VALUES("98","Viewed Communication for Referral List","2","2014-06-28 13:48:07");
INSERT INTO tbl_activity VALUES("99","Viewed Communication List","2","2014-06-28 13:48:09");
INSERT INTO tbl_activity VALUES("100","Viewed List of Referral for Committee Meeting","2","2014-06-28 13:48:25");
INSERT INTO tbl_activity VALUES("101","Viewed Committee Meeting List","2","2014-06-28 13:48:29");
INSERT INTO tbl_activity VALUES("102","Viewed Committee Meeting ID: 1","2","2014-06-28 13:48:31");
INSERT INTO tbl_activity VALUES("103","Updated Committee Meeting ID: 1","2","2014-06-28 05:48:52");
INSERT INTO tbl_activity VALUES("104","Viewed Communication for Referral List","2","2014-06-28 13:50:46");
INSERT INTO tbl_activity VALUES("105","Viewed List of Referrals for Committe Meeting","2","2014-06-28 13:50:49");
INSERT INTO tbl_activity VALUES("106","Viewed List of Referral for Committee Meeting","2","2014-06-28 13:50:51");
INSERT INTO tbl_activity VALUES("107","Viewed Committee Meeting List","2","2014-06-28 13:50:53");
INSERT INTO tbl_activity VALUES("108","Logged Out","2","2014-06-28 13:50:56");
INSERT INTO tbl_activity VALUES("109","Logged In","2","2014-06-28 13:51:20");
INSERT INTO tbl_activity VALUES("110","Return to Homepage","2","2014-06-28 13:51:21");
INSERT INTO tbl_activity VALUES("111","Viewed Communication for Referral List","2","2014-06-28 13:51:39");
INSERT INTO tbl_activity VALUES("112","Logged Out","2","2014-06-28 13:51:41");
INSERT INTO tbl_activity VALUES("113","Logged In","3","2014-06-28 13:51:50");
INSERT INTO tbl_activity VALUES("114","Return to Homepage","3","2014-06-28 13:51:51");
INSERT INTO tbl_activity VALUES("115","Viewed Committee Meeting List for Resolution","3","2014-06-28 13:51:58");
INSERT INTO tbl_activity VALUES("116","Viewed Resolution List","3","2014-06-28 13:52:01");
INSERT INTO tbl_activity VALUES("117","Viewed Resolution No. 0001 - 2014","3","2014-06-28 13:52:05");
INSERT INTO tbl_activity VALUES("118","Viewed Monitor Ordinance List","3","2014-06-28 13:52:08");
INSERT INTO tbl_activity VALUES("119","Viewed Monitor Ordinance List","3","2014-06-28 13:52:10");
INSERT INTO tbl_activity VALUES("120","Viewed Committee Meeting List for Resolution","3","2014-06-28 13:52:14");
INSERT INTO tbl_activity VALUES("121","Viewed Committee Meeting List for Resolution","3","2014-06-28 13:52:16");
INSERT INTO tbl_activity VALUES("122","Viewed Committee Meeting List for Resolution","3","2014-06-28 13:55:00");
INSERT INTO tbl_activity VALUES("123","Viewed Monitor Ordinance List","3","2014-06-28 13:55:03");
INSERT INTO tbl_activity VALUES("124","Viewed Communication List","3","2014-06-28 13:55:12");
INSERT INTO tbl_activity VALUES("125","Viewed Referral List","3","2014-06-28 13:55:15");
INSERT INTO tbl_activity VALUES("126","Searched Statistical Resolution Report","3","2014-06-28 13:57:58");
INSERT INTO tbl_activity VALUES("127","Searched Yearly Authored Resolution","3","2014-06-28 13:58:52");
INSERT INTO tbl_activity VALUES("128","Searched Monthly Authored Resolution","3","2014-06-28 13:58:56");
INSERT INTO tbl_activity VALUES("129","Searched Statistical Resolution Report","3","2014-06-28 13:58:59");
INSERT INTO tbl_activity VALUES("130","Searched Fiscal Yearly Resolution Report","3","2014-06-28 13:59:03");
INSERT INTO tbl_activity VALUES("131","Viewed Communication List","3","2014-06-28 14:01:05");
INSERT INTO tbl_activity VALUES("132","Logged Out","3","2014-06-28 14:01:10");
INSERT INTO tbl_activity VALUES("133","Logged In","1","2014-06-28 14:02:02");
INSERT INTO tbl_activity VALUES("134","Return to Homepage","1","2014-06-28 14:02:03");
INSERT INTO tbl_activity VALUES("135","Viewed List of Communication","1","2014-06-28 14:02:06");
INSERT INTO tbl_activity VALUES("136","Added Another Communication","1","2014-06-28 14:07:32");
INSERT INTO tbl_activity VALUES("137","View Communication ID: 2014 - 0002","1","2014-06-28 14:07:32");
INSERT INTO tbl_activity VALUES("138","Viewed Communication List","1","2014-06-28 14:07:35");
INSERT INTO tbl_activity VALUES("139","Viewed List of Communication","1","2014-06-28 14:07:38");
INSERT INTO tbl_activity VALUES("140","Viewed Communication List","1","2014-06-28 14:08:25");
INSERT INTO tbl_activity VALUES("141","Added Another Communication","1","2014-06-28 14:08:57");
INSERT INTO tbl_activity VALUES("142","View Communication ID: 2014 - 0003","1","2014-06-28 14:08:58");
INSERT INTO tbl_activity VALUES("143","Viewed Communication List","1","2014-06-28 14:09:01");
INSERT INTO tbl_activity VALUES("144","Viewed Communication List","1","2014-06-28 14:09:13");
INSERT INTO tbl_activity VALUES("145","Viewed Communication List","1","2014-06-28 14:09:15");
INSERT INTO tbl_activity VALUES("146","Viewed Communication List","1","2014-06-28 14:09:59");
INSERT INTO tbl_activity VALUES("147","Viewed Communication List","1","2014-06-28 14:10:54");
INSERT INTO tbl_activity VALUES("148","Downloaded Communication Letter","1","2014-06-28 14:11:08");
INSERT INTO tbl_activity VALUES("149","Viewed Communication List","1","2014-06-28 14:11:12");
INSERT INTO tbl_activity VALUES("150","Downloaded Communication Letter","1","2014-06-28 14:11:14");
INSERT INTO tbl_activity VALUES("151","Return to Homepage","1","2014-06-28 14:11:18");
INSERT INTO tbl_activity VALUES("152","Viewed List of Communication","1","2014-06-28 14:11:22");
INSERT INTO tbl_activity VALUES("153","Viewed Referral List","1","2014-06-28 14:15:10");
INSERT INTO tbl_activity VALUES("154","Logged Out","1","2014-06-28 14:15:12");
INSERT INTO tbl_activity VALUES("155","Logged In","1","2014-06-28 14:15:23");
INSERT INTO tbl_activity VALUES("156","Return to Homepage","1","2014-06-28 14:15:24");
INSERT INTO tbl_activity VALUES("157","Viewed List of Communication","1","2014-06-28 14:15:46");
INSERT INTO tbl_activity VALUES("158","Viewed Communication for Referral List","1","2014-06-28 14:15:49");
INSERT INTO tbl_activity VALUES("159","Viewed Referral List","1","2014-06-28 14:15:51");
INSERT INTO tbl_activity VALUES("160","Viewed Referral ID: 21","1","2014-06-28 14:15:54");
INSERT INTO tbl_activity VALUES("161","Viewed List of Referrals for Committe Meeting","1","2014-06-28 14:16:03");
INSERT INTO tbl_activity VALUES("162","Viewed Committee Meeting List","1","2014-06-28 14:16:05");
INSERT INTO tbl_activity VALUES("163","Viewed List of Referrals for Committe Meeting","1","2014-06-28 14:16:07");
INSERT INTO tbl_activity VALUES("164","Viewed List of Communication","1","2014-06-28 14:16:09");
INSERT INTO tbl_activity VALUES("165","Assigned 2014 - 0002 for Referral","1","2014-06-28 14:16:13");
INSERT INTO tbl_activity VALUES("166","Viewed List of Communication","1","2014-06-28 14:16:14");
INSERT INTO tbl_activity VALUES("167","Viewed Communication for Referral List","1","2014-06-28 14:16:16");
INSERT INTO tbl_activity VALUES("168","Added Another Referral","1","2014-06-28 14:16:33");
INSERT INTO tbl_activity VALUES("169","Viewed Referral ID: 22","1","2014-06-28 14:16:34");
INSERT INTO tbl_activity VALUES("170","Viewed Communication for Referral List","1","2014-06-28 14:16:40");
INSERT INTO tbl_activity VALUES("171","Viewed List of Referrals for Committe Meeting","1","2014-06-28 14:16:43");
INSERT INTO tbl_activity VALUES("172","Viewed List of Referral for Committee Meeting","1","2014-06-28 14:16:45");
INSERT INTO tbl_activity VALUES("173","Added Another Committee Meeting","1","2014-06-28 14:16:54");
INSERT INTO tbl_activity VALUES("174","Viewed Committee Meeting ID: 3","1","2014-06-28 14:16:54");
INSERT INTO tbl_activity VALUES("175","Updated Committee Meeting ID: 3","1","2014-06-28 06:17:06");
INSERT INTO tbl_activity VALUES("176","Updated Committee Meeting ID: 3","1","2014-06-28 06:23:24");
INSERT INTO tbl_activity VALUES("177","Viewed List of Communication","1","2014-06-28 14:24:33");
INSERT INTO tbl_activity VALUES("178","Viewed List of Communication","1","2014-06-28 14:24:33");
INSERT INTO tbl_activity VALUES("179","Added Another Communication","1","2014-06-28 14:25:14");
INSERT INTO tbl_activity VALUES("180","View Communication ID: 2014 - 0005","1","2014-06-28 14:25:15");
INSERT INTO tbl_activity VALUES("181","Viewed Communication List","1","2014-06-28 14:25:17");
INSERT INTO tbl_activity VALUES("182","Viewed List of Communication","1","2014-06-28 14:25:35");
INSERT INTO tbl_activity VALUES("183","Viewed Communication for Referral List","1","2014-06-28 14:25:39");
INSERT INTO tbl_activity VALUES("184","Viewed List of Communication","1","2014-06-28 14:25:40");
INSERT INTO tbl_activity VALUES("185","Viewed Communication List","1","2014-06-28 14:30:57");
INSERT INTO tbl_activity VALUES("186","Viewed Communication List","1","2014-06-28 14:31:01");
INSERT INTO tbl_activity VALUES("187","Viewed List of Communication","1","2014-06-28 14:31:04");
INSERT INTO tbl_activity VALUES("188","Viewed Communication for Referral List","1","2014-06-28 14:31:07");
INSERT INTO tbl_activity VALUES("189","Viewed List of Communication","1","2014-06-28 14:31:08");
INSERT INTO tbl_activity VALUES("190","Viewed Communication List","1","2014-06-28 14:32:00");
INSERT INTO tbl_activity VALUES("191","Viewed Communication List","1","2014-06-28 14:32:47");
INSERT INTO tbl_activity VALUES("192","Viewed Communication List","1","2014-06-28 14:33:25");
INSERT INTO tbl_activity VALUES("193","Viewed Communication List","1","2014-06-28 15:04:45");
INSERT INTO tbl_activity VALUES("194","Added Another Communication","1","2014-06-28 15:07:23");
INSERT INTO tbl_activity VALUES("195","View Communication ID: 2014 - 0006","1","2014-06-28 15:07:23");
INSERT INTO tbl_activity VALUES("196","Added Another Communication","1","2014-06-28 15:07:29");
INSERT INTO tbl_activity VALUES("197","View Communication ID: 2014 - 0007","1","2014-06-28 15:07:29");
INSERT INTO tbl_activity VALUES("198","Added Another Communication","1","2014-06-28 15:08:49");
INSERT INTO tbl_activity VALUES("199","View Communication ID: 1990 - 0001","1","2014-06-28 15:08:49");
INSERT INTO tbl_activity VALUES("200","Viewed Communication List","1","2014-06-28 15:08:56");
INSERT INTO tbl_activity VALUES("201","Return to Homepage","1","2014-06-28 15:09:11");
INSERT INTO tbl_activity VALUES("202","Return to Homepage","1","2014-06-28 15:09:13");
INSERT INTO tbl_activity VALUES("203","Return to Homepage","1","2014-06-28 15:09:22");
INSERT INTO tbl_activity VALUES("204","Viewed List of Communication","1","2014-06-28 15:09:40");
INSERT INTO tbl_activity VALUES("205","Viewed List of Communication","1","2014-06-28 15:11:54");
INSERT INTO tbl_activity VALUES("206","Viewed Communication List","1","2014-06-28 15:11:54");
INSERT INTO tbl_activity VALUES("207","Viewed Communication List","1","2014-06-28 15:13:53");
INSERT INTO tbl_activity VALUES("208","Viewed List of Communication","1","2014-06-28 15:14:46");
INSERT INTO tbl_activity VALUES("209","Assigned 1990 - 0001 for Referral","1","2014-06-28 15:14:53");
INSERT INTO tbl_activity VALUES("210","Viewed List of Communication","1","2014-06-28 15:14:53");
INSERT INTO tbl_activity VALUES("211","Viewed Communication for Referral List","1","2014-06-28 15:14:55");
INSERT INTO tbl_activity VALUES("212","Viewed List of Communication","1","2014-06-28 15:14:59");
INSERT INTO tbl_activity VALUES("213","Viewed Communication List","1","2014-06-28 15:15:01");
INSERT INTO tbl_activity VALUES("214","Viewed Communication for Referral List","1","2014-06-28 15:15:08");
INSERT INTO tbl_activity VALUES("215","Return to Homepage","1","2014-06-28 15:15:19");
INSERT INTO tbl_activity VALUES("216","Return to Homepage","1","2014-06-28 15:15:24");
INSERT INTO tbl_activity VALUES("217","Return to Homepage","1","2014-06-28 15:15:29");
INSERT INTO tbl_activity VALUES("218","Viewed List of Communication","1","2014-06-28 15:16:59");
INSERT INTO tbl_activity VALUES("219","Viewed Communication List","1","2014-06-28 15:17:03");
INSERT INTO tbl_activity VALUES("220","Viewed Origin List","1","2014-06-28 15:17:10");
INSERT INTO tbl_activity VALUES("221","Viewed Origin List","1","2014-06-28 15:17:18");
INSERT INTO tbl_activity VALUES("222","Viewed Origin List","1","2014-06-28 15:17:20");
INSERT INTO tbl_activity VALUES("223","Viewed Origin List","1","2014-06-28 15:17:21");
INSERT INTO tbl_activity VALUES("224","Return to Homepage","1","2014-06-28 15:17:24");
INSERT INTO tbl_activity VALUES("225","Added Another Communication","1","2014-06-28 15:29:59");
INSERT INTO tbl_activity VALUES("226","View Communication ID: 1990 - 0002","1","2014-06-28 15:29:59");
INSERT INTO tbl_activity VALUES("227","Viewed Communication List","1","2014-06-28 15:30:08");
INSERT INTO tbl_activity VALUES("228","Viewed List of Communication","1","2014-06-28 15:30:16");
INSERT INTO tbl_activity VALUES("229","Assigned 1990 - 0002 for Referral","1","2014-06-28 15:30:18");
INSERT INTO tbl_activity VALUES("230","Viewed List of Communication","1","2014-06-28 15:30:20");
INSERT INTO tbl_activity VALUES("231","Viewed Communication for Referral List","1","2014-06-28 15:30:21");
INSERT INTO tbl_activity VALUES("232","Viewed Communication for Referral List","1","2014-06-28 15:30:22");
INSERT INTO tbl_activity VALUES("233","Added Another Referral","1","2014-06-28 15:30:41");
INSERT INTO tbl_activity VALUES("234","Viewed Referral ID: 23","1","2014-06-28 15:30:42");
INSERT INTO tbl_activity VALUES("235","Viewed Referral List","1","2014-06-28 15:31:00");
INSERT INTO tbl_activity VALUES("236","Viewed Referral List","1","2014-06-28 15:31:05");
INSERT INTO tbl_activity VALUES("237","Viewed List of Referral for Committee Meeting","1","2014-06-28 15:31:08");
INSERT INTO tbl_activity VALUES("238","Viewed Committee Meeting List","1","2014-06-28 15:31:17");
INSERT INTO tbl_activity VALUES("239","Viewed Committee Meeting List","1","2014-06-28 15:31:23");
INSERT INTO tbl_activity VALUES("240","Viewed List of Referral for Committee Meeting","1","2014-06-28 15:31:25");
INSERT INTO tbl_activity VALUES("241","Added Another Committee Meeting","1","2014-06-28 15:31:33");
INSERT INTO tbl_activity VALUES("242","Viewed Committee Meeting ID: 4","1","2014-06-28 15:31:33");
INSERT INTO tbl_activity VALUES("243","Viewed Committee Meeting ID: 4","1","2014-06-28 15:31:44");
INSERT INTO tbl_activity VALUES("244","Assigned Date of Committe Report of Committee Meeting ID: 4","1","2014-06-28 15:31:44");
INSERT INTO tbl_activity VALUES("245","Viewed Committee Meeting ID: 4","1","2014-06-28 15:31:46");
INSERT INTO tbl_activity VALUES("246","Viewed Committee Meeting List for Resolution","1","2014-06-28 15:31:49");
INSERT INTO tbl_activity VALUES("247","Return to Homepage","1","2014-06-28 15:32:06");
INSERT INTO tbl_activity VALUES("248","Return to Homepage","1","2014-06-28 15:32:10");
INSERT INTO tbl_activity VALUES("249","Viewed Committee Meeting List for Resolution","1","2014-06-28 15:32:13");
INSERT INTO tbl_activity VALUES("250","Added Another Resolution","1","2014-06-28 15:33:22");
INSERT INTO tbl_activity VALUES("251","Viewed Resolution No. 0001 - 1990","1","2014-06-28 15:33:22");
INSERT INTO tbl_activity VALUES("252","Viewed Resolution List","1","2014-06-28 15:33:26");
INSERT INTO tbl_activity VALUES("253","Logged Out","1","2014-06-28 15:33:31");
INSERT INTO tbl_activity VALUES("254","Logged In","1","2014-06-28 15:48:25");
INSERT INTO tbl_activity VALUES("255","Return to Homepage","1","2014-06-28 15:48:26");
INSERT INTO tbl_activity VALUES("256","Viewed List of Communication","1","2014-06-28 15:48:31");
INSERT INTO tbl_activity VALUES("257","Return to Homepage","1","1990-06-23 15:51:51");
INSERT INTO tbl_activity VALUES("258","Viewed List of Communication","1","1990-06-23 15:52:07");
INSERT INTO tbl_activity VALUES("259","Return to Homepage","1","1990-06-23 15:52:09");
INSERT INTO tbl_activity VALUES("260","Return to Homepage","1","1990-06-23 15:57:32");
INSERT INTO tbl_activity VALUES("261","Return to Homepage","1","2014-06-28 15:59:40");
INSERT INTO tbl_activity VALUES("262","Viewed List of Communication","1","2014-06-28 16:03:57");
INSERT INTO tbl_activity VALUES("263","Viewed List of Referrals for Committe Meeting","1","2014-06-28 16:25:21");
INSERT INTO tbl_activity VALUES("264","Viewed Committee Meeting List for Resolution","1","2014-06-28 16:25:24");
INSERT INTO tbl_activity VALUES("265","Viewed Committee Meeting List for Ordinance","1","2014-06-28 16:25:27");
INSERT INTO tbl_activity VALUES("266","Viewed Ordinance List","1","2014-06-28 16:25:29");
INSERT INTO tbl_activity VALUES("267","Viewed Communication for Referral List","1","2014-06-28 16:25:32");
INSERT INTO tbl_activity VALUES("268","Viewed List of Referrals for Committe Meeting","1","2014-06-28 16:25:34");
INSERT INTO tbl_activity VALUES("269","Viewed List of Referral for Committee Meeting","1","2014-06-28 16:25:38");
INSERT INTO tbl_activity VALUES("270","Added Another Committee Meeting","1","2014-06-28 17:09:37");
INSERT INTO tbl_activity VALUES("271","Viewed Committee Meeting ID: 5","1","2014-06-28 17:09:38");
INSERT INTO tbl_activity VALUES("272","Viewed Committee Meeting ID: 5","1","2014-06-28 17:09:51");
INSERT INTO tbl_activity VALUES("273","Assigned Date of Committe Report of Committee Meeting ID: 5","1","2014-06-28 17:09:52");
INSERT INTO tbl_activity VALUES("274","Viewed Committee Meeting ID: 5","1","2014-06-28 17:09:53");
INSERT INTO tbl_activity VALUES("275","Viewed Committee Meeting List for Resolution","1","2014-06-28 17:09:57");
INSERT INTO tbl_activity VALUES("276","Viewed List of Communication","1","2014-06-28 17:10:01");
INSERT INTO tbl_activity VALUES("277","Viewed Communication for Referral List","1","2014-06-28 17:10:08");
INSERT INTO tbl_activity VALUES("278","Viewed List of Communication","1","2014-06-28 17:21:04");
INSERT INTO tbl_activity VALUES("279","Return to Homepage","1","2014-06-28 17:21:33");
INSERT INTO tbl_activity VALUES("280","Logged In","1","2014-06-28 18:44:02");
INSERT INTO tbl_activity VALUES("281","Return to Homepage","1","2014-06-28 18:44:03");
INSERT INTO tbl_activity VALUES("282","Viewed Backed-up System List","1","2014-06-28 18:44:11");



DROP TABLE tbl_agency;

CREATE TABLE `tbl_agency` (
  `agency_id` int(11) NOT NULL AUTO_INCREMENT,
  `agency_name` varchar(100) NOT NULL,
  `shortname` varchar(10) DEFAULT NULL,
  `address` varchar(50) NOT NULL,
  `contact_person` varchar(50) NOT NULL,
  `contact_num` varchar(20) NOT NULL,
  PRIMARY KEY (`agency_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

INSERT INTO tbl_agency VALUES("1","Municipality of Santol","Santol","La Union","Harold Apilado","09298114568");
INSERT INTO tbl_agency VALUES("2","Municipality of Balaoan","Balaoan","La Union","Jex Obejas","09081377984");
INSERT INTO tbl_agency VALUES("3","Municipality of Agoo","Agoo","La Union","John Billy Marbella","09474200233");
INSERT INTO tbl_agency VALUES("4","Municipality of Bauang","Bauang","La Union","Charry Soria","09208161456");
INSERT INTO tbl_agency VALUES("5","Municipality of Aringay","Aringay","La Union","Juan Dela Cruz","09298114568");
INSERT INTO tbl_agency VALUES("6","Municipality of Bacnotan","Bacnotan","La Union","Mariz Dacanay","09405687798");
INSERT INTO tbl_agency VALUES("7","Municipality of Bagulin","Bagulin","La Union","Ellen Mangaoang","09201668977");
INSERT INTO tbl_agency VALUES("8","Municipality of Bangar","Bangar","La Union","Russel Macuroy","09208161453");
INSERT INTO tbl_agency VALUES("9","Municipality of Burgos","Burgos","La Union","Peter Lapitan","");
INSERT INTO tbl_agency VALUES("10","Municipality of Caba","Caba","La Union","","");
INSERT INTO tbl_agency VALUES("11","Municipality of Luna","Luna","La Union","","");
INSERT INTO tbl_agency VALUES("12","Municipality of Naguillian","Naguillian","La Union","","");
INSERT INTO tbl_agency VALUES("13","Municipality of Pugo","Pugo","La Union","","");
INSERT INTO tbl_agency VALUES("14","Municipality of Rosario","Rosario","La Union","","");
INSERT INTO tbl_agency VALUES("15","Municipality of San Gabriel","San Gabrie","La Union","","");
INSERT INTO tbl_agency VALUES("16","Municipality of San Juan","San Juan","La Union","","");
INSERT INTO tbl_agency VALUES("17","Municipality of Sto. Tomas","Sto. Tomas","La Union","","");
INSERT INTO tbl_agency VALUES("18","Municipality of Sudipen","Sudipen","La Union","","");
INSERT INTO tbl_agency VALUES("19","Municipality of Tubao","Tubao","La Union","","");



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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO tbl_agenda VALUES("1","","","20","0","10","15:00:00","2014-05-01","0");



DROP TABLE tbl_category;

CREATE TABLE `tbl_category` (
  `cat_id` int(10) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(100) NOT NULL,
  `shortname` varchar(50) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

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
INSERT INTO tbl_category VALUES("23","Recommendation","Recommendation");
INSERT INTO tbl_category VALUES("24","Invitation","Invitation");
INSERT INTO tbl_category VALUES("25","Congratulation","Congratulation");
INSERT INTO tbl_category VALUES("26","Solicitation","Solicitation");



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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO tbl_comm_meeting_reso VALUES("1","21","0","2014-06-28","","2","","0","0","0");
INSERT INTO tbl_comm_meeting_reso VALUES("2","21","1","2014-06-28","2014-06-28","2","Resolution 433-2012.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("3","22","0","2014-06-28","","1","","0","0","0");
INSERT INTO tbl_comm_meeting_reso VALUES("4","23","1","2014-06-28","2014-06-28","1","Resolution 433-2012.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("5","22","1","2014-06-28","2014-06-28","1","Resolution 432-2012.pdf","1","0","0");



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

INSERT INTO tbl_committee VALUES("1","Committee of Barangay Affairs","CBA","12","5","7,9,11");
INSERT INTO tbl_committee VALUES("2","Committee of Ways and Means","CWM","2","3","1");
INSERT INTO tbl_committee VALUES("3","Committee of Communication and Information Technology","CCIT","3","1","2");
INSERT INTO tbl_committee VALUES("4","Committee on Municipal Affairs and Boundary Disputes","CMABD","1","2","1,2,3");
INSERT INTO tbl_committee VALUES("5","Committee on Agriculture and Aquatic Resources","CAAC","3","2","1,9,12");
INSERT INTO tbl_committee VALUES("6","Committee on Civil Service and Human Resource Development","CCSHRD","12","9","6,11,12");
INSERT INTO tbl_committee VALUES("7","Committee on Cooperatives","CoC","10","6","5,7,13");
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
  `comm_letter` varchar(75) NOT NULL,
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

INSERT INTO tbl_communication VALUES("","fddfff","2014-06-28","25","5","1","Resolution 433-2012.pdf","2014-06-28","2","0","0");
INSERT INTO tbl_communication VALUES("1990 - 0001","1990 inputs","1990-06-21","11","32","1","Resolution 433-2012.pdf","1990-06-21","1","1","0");
INSERT INTO tbl_communication VALUES("1990 - 0002","TESTING 1990","2014-06-28","21","18","1","Resolution 432-2012.pdf","2014-06-28","1","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0001","TESTING DELETED","2014-06-27","11","3","1","pds2005.pdf","2014-06-28","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0002","asdfasdfdsf","2014-06-28","15","5","1","Resolution 433-2012.pdf","2014-06-28","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0003","aaaaa","2014-06-28","2","5","1","pds2005.pdf","2014-06-28","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0004","ASDFASDFASDF","2014-06-28","16","20","1","Resolution 433-2012.pdf","2014-06-28","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0005","testtstestset","2014-06-27","21","5","1","Resolution 433-2012.pdf","2014-06-28","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0006","AYYYYYY","2014-06-28","11","31","1","Resolution 433-2012.pdf","2014-06-28","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0007","HAHAHA","2014-06-28","22","5","1","Resolution 433-2012.pdf","2014-06-28","2","0","0");



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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

INSERT INTO tbl_employee VALUES("1","Alexander Jerome","Lopez","Obejas","6","1","2147483647","jex310@yahoo.com");
INSERT INTO tbl_employee VALUES("2","Francisco \"Kit\"","C","Ortega","2","1","2147483647","jb@yahoo.com");
INSERT INTO tbl_employee VALUES("3","Jonathan Justo","A","Orros","2","1","2147483647","charry@yahoo.com");
INSERT INTO tbl_employee VALUES("4","Joaquin","C","Ostrea","2","1","2147483647","mariz@yahoo.com");
INSERT INTO tbl_employee VALUES("5","Reynaldo","M","Mosuela","2","1","","");
INSERT INTO tbl_employee VALUES("6","Victoria","L","Aragon","2","1","","");
INSERT INTO tbl_employee VALUES("7","Nancy Corazon","M","Bacurnay","2","1","","");
INSERT INTO tbl_employee VALUES("8","Robert Jr.","B","Madarang","2","1","","");
INSERT INTO tbl_employee VALUES("9","Christian","I","Rivera","2","1","","");
INSERT INTO tbl_employee VALUES("10","Ruperto, Jr.","A","Rillera","2","1","","");
INSERT INTO tbl_employee VALUES("11","Bellarmin, II","A","Flores","2","1","","");
INSERT INTO tbl_employee VALUES("12","Alfredo Pablo","R","Ortega","2","1","955","fs@yahoo.com");
INSERT INTO tbl_employee VALUES("13","Manuel \"Mannix\", Jr","R","Ortega","2","1","2147483647","fjh@yahoo.com");
INSERT INTO tbl_employee VALUES("15","Kenneth Paolo","C","Tereng","2","1","","");



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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE tbl_officials;

CREATE TABLE `tbl_officials` (
  `off_id` int(10) NOT NULL AUTO_INCREMENT,
  `emp_id` int(10) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  PRIMARY KEY (`off_id`),
  KEY `emp_id` (`emp_id`),
  CONSTRAINT `FK_tbl_officials_tbl_employee` FOREIGN KEY (`emp_id`) REFERENCES `tbl_employee` (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

INSERT INTO tbl_officials VALUES("1","2","2013-05-06","2016-05-06");
INSERT INTO tbl_officials VALUES("2","3","2013-05-06","2016-05-06");
INSERT INTO tbl_officials VALUES("3","4","2013-05-06","2016-05-06");
INSERT INTO tbl_officials VALUES("4","11","2013-05-06","2016-05-06");
INSERT INTO tbl_officials VALUES("5","6","2013-05-06","2016-05-06");
INSERT INTO tbl_officials VALUES("6","7","2013-05-06","2016-05-06");
INSERT INTO tbl_officials VALUES("7","8","2013-05-06","2016-05-06");
INSERT INTO tbl_officials VALUES("8","9","2013-05-06","2016-05-06");
INSERT INTO tbl_officials VALUES("9","10","2013-05-06","2016-05-06");
INSERT INTO tbl_officials VALUES("10","5","2013-05-06","2016-05-06");
INSERT INTO tbl_officials VALUES("11","12","2013-05-06","2016-05-06");
INSERT INTO tbl_officials VALUES("12","13","2013-05-06","2016-05-06");
INSERT INTO tbl_officials VALUES("13","15","2013-05-06","2016-05-06");



DROP TABLE tbl_ordinance;

CREATE TABLE `tbl_ordinance` (
  `ord_no` varchar(20) NOT NULL,
  `meeting_ordi_id` int(10) DEFAULT NULL,
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




DROP TABLE tbl_origin;

CREATE TABLE `tbl_origin` (
  `orig_id` int(11) NOT NULL AUTO_INCREMENT,
  `orig_name` varchar(100) NOT NULL,
  `shortname` varchar(50) DEFAULT NULL,
  `contact_person` varchar(100) NOT NULL,
  `contact_num` varchar(50) NOT NULL,
  PRIMARY KEY (`orig_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

INSERT INTO tbl_origin VALUES("1","Municipality of Balaoan","Balaoan","jex obejas","2147483647");
INSERT INTO tbl_origin VALUES("2","Municipality of Luna","Luna","John Billy Marbellla","2147483647");
INSERT INTO tbl_origin VALUES("3","Provincial Budget Office","PBO","Juan Dela Cruz","2147483647");
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
INSERT INTO tbl_origin VALUES("20","Gov. Manuel C. Ortega","Gov. MCO","","");
INSERT INTO tbl_origin VALUES("21","Provincial Information and Tourism Office","PITO","","");
INSERT INTO tbl_origin VALUES("22","Dr. GST","Dr. GST","","");
INSERT INTO tbl_origin VALUES("23","Municipality of Burgos","Burgos","","");
INSERT INTO tbl_origin VALUES("24","Human Resource Management Division","HRMD","","");
INSERT INTO tbl_origin VALUES("25","Office of the Provincial Governor","OPG","","");
INSERT INTO tbl_origin VALUES("26","Office of  the Provincial Administrator","OPA","","");
INSERT INTO tbl_origin VALUES("27","Municipality of Agoo","Agoo","","");
INSERT INTO tbl_origin VALUES("28","Hon. Christian Rivera","BM C Rivera","","");
INSERT INTO tbl_origin VALUES("29","VM Charlie Cirilito Juloya","VM CC Juloya","","");
INSERT INTO tbl_origin VALUES("31","Dir. Rowena C. Banzon","DepEd","","");
INSERT INTO tbl_origin VALUES("32","Bobby Valdriz","PLO","","");
INSERT INTO tbl_origin VALUES("33","BM Nancy Corazon Bacurnay","BM Bacurnay","","");



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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

INSERT INTO tbl_referral VALUES("21","2014 - 0001","2014-06-28","2","5","pds2005.pdf","2","1","0");
INSERT INTO tbl_referral VALUES("22","2014 - 0002","2014-06-28","7","6","Resolution 433-2012.pdf","1","1","0");
INSERT INTO tbl_referral VALUES("23","1990 - 0001","2014-06-28","2","3","Resolution 432-2012.pdf","1","1","0");



DROP TABLE tbl_resolution;

CREATE TABLE `tbl_resolution` (
  `res_no` varchar(50) NOT NULL,
  `ctrl_no` varchar(50) DEFAULT NULL,
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

INSERT INTO tbl_resolution VALUES("0001 - 1990","1990 - 0001","1990 inputs","5","Resolution 432-2012.pdf","1","2014-06-28","0");
INSERT INTO tbl_resolution VALUES("0001 - 2014","2014 - 0001","TESTING DELETED","1","pds2005.pdf","3","2014-06-28","0");



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
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=latin1;

INSERT INTO tbl_status VALUES("105","2014 - 0001","1","1","1","1");
INSERT INTO tbl_status VALUES("106","2014 - 0002","1","1","1","0");
INSERT INTO tbl_status VALUES("107","1990 - 0001","1","1","1","1");
INSERT INTO tbl_status VALUES("108","1990 - 0002","0","0","0","0");



DROP TABLE tbl_sysbackup;

CREATE TABLE `tbl_sysbackup` (
  `db_id` int(11) NOT NULL AUTO_INCREMENT,
  `db_name` varchar(50) DEFAULT NULL,
  `date_backed_up` datetime DEFAULT NULL,
  `backed_up_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`db_id`),
  KEY `backed_up_by` (`backed_up_by`),
  CONSTRAINT `FK__tbl_user` FOREIGN KEY (`backed_up_by`) REFERENCES `tbl_user` (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

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
INSERT INTO tbl_sysbackup VALUES("13","db-backup(2014-04-21).sql","2014-04-21 14:28:42","1");
INSERT INTO tbl_sysbackup VALUES("14","db-backup(2014-04-29).sql","2014-04-29 10:57:15","1");
INSERT INTO tbl_sysbackup VALUES("15","db-backup(2014-04-29).sql","2014-04-29 15:37:19","1");
INSERT INTO tbl_sysbackup VALUES("16","db-backup(2014-06-23).sql","2014-06-23 19:25:07","1");



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



