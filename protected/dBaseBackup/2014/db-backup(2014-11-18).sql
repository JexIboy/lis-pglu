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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

INSERT INTO forum_answer VALUES("1","54","jiroh","jiroh@gmail.com","click communications, mag input ka, tapos papasok un sa communications for referral, tapos pag pnasa mo na sa referral, magnonotify un sa referral secretary, tapos iccommitee meeting , tapos pag nacommittee meeting na, papasok na sa legislative enactmens. tas pwede nang gawind resolution or ordinance. :) pwede nang matrack. ","2014-07-15 00:15:26");
INSERT INTO forum_answer VALUES("2","54","john billy","jbm@yahoo.com","TAMA SI JIROH JOY","2014-07-15 00:25:24");
INSERT INTO forum_answer VALUES("3","54","Jex Obejas","jex@yahoo.com","oo, basta may accoutn ang every secretariat user.heheh :)","2014-07-15 00:26:36");
INSERT INTO forum_answer VALUES("4","54","Yobiboy","yobi@yahoo.com","Thank you sa inyo! nakuha ko na po.hehehe","2014-07-15 00:26:59");
INSERT INTO forum_answer VALUES("5","55","iboy","iboy@yahoo.com","TEST REPLY","2014-08-04 08:11:33");
INSERT INTO forum_answer VALUES("6","56","YOBI","johnbillymarbella@gmail.com","Click mo ung resolution number maam, tapos magdodownload un. tas pwede mo na iprint.","2014-08-05 02:33:40");
INSERT INTO forum_answer VALUES("7","56","yobi","jb@gmail.com","Hindi pala pwde magdl ng file ang guest maam, Bm secretary pwde.","2014-08-05 02:35:36");
INSERT INTO forum_answer VALUES("8","57","iboy","johnbillymarbella@yahoo.com","testing yoohoo","2014-08-26 02:34:51");
INSERT INTO forum_answer VALUES("9","57","iboy","johnbillymarbella@yahoo.com","testing again","2014-08-26 04:37:05");
INSERT INTO forum_answer VALUES("10","57","juan de la cruz","johnbillymarbella@gmail.com","bakal na cruz","2014-08-27 03:47:47");
INSERT INTO forum_answer VALUES("11","57","coco martin","johnbillymarbella@gmail.com","coco lumber","2014-08-27 03:50:18");



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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

INSERT INTO forum_question VALUES("53","INPUTTING","PANO PO MAG INPUT SABAY SABAY?","IBOY","yobi@yahoo.com","2014-06-29 13:41:45","0","0","2");
INSERT INTO forum_question VALUES("54","inputting","pano mag input?","yobiboy","yobi@yahoo.com","2014-06-29 13:42:57","8","4","1");
INSERT INTO forum_question VALUES("55","TESTING TOPIC FROM MAAM LARA\'S PC","TESTING LANG ITO","MAAM LARA","lara@yahoo.com","2014-08-04 07:58:42","5","1","1");
INSERT INTO forum_question VALUES("56","paano mag  preint ng resolution fronm search?","sas","lara","larageraldinebacer@yahoo.com","2014-08-04 09:05:03","11","2","1");
INSERT INTO forum_question VALUES("57","Communication","why oh why","iboy","yobi@yahoo.com","2014-08-12 03:56:52","19","4","1");
INSERT INTO forum_question VALUES("58","Email Test YOBi","acheche","Danica JOy","Danica@yahoo.com","2014-11-06 05:55:33","0","0","1");



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
) ENGINE=InnoDB AUTO_INCREMENT=419 DEFAULT CHARSET=latin1;

INSERT INTO tbl_activity VALUES("1","Viewed Statistical Report of Ordinance","21","2014-11-17 16:24:13");
INSERT INTO tbl_activity VALUES("2","Searched Ordinance History","21","2014-11-17 16:24:16");
INSERT INTO tbl_activity VALUES("3","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:24:18");
INSERT INTO tbl_activity VALUES("4","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:24:30");
INSERT INTO tbl_activity VALUES("5","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:24:31");
INSERT INTO tbl_activity VALUES("6","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:24:32");
INSERT INTO tbl_activity VALUES("7","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:24:32");
INSERT INTO tbl_activity VALUES("8","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:24:32");
INSERT INTO tbl_activity VALUES("9","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:24:33");
INSERT INTO tbl_activity VALUES("10","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:25:01");
INSERT INTO tbl_activity VALUES("11","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:25:07");
INSERT INTO tbl_activity VALUES("12","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:25:08");
INSERT INTO tbl_activity VALUES("13","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:25:34");
INSERT INTO tbl_activity VALUES("14","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:25:58");
INSERT INTO tbl_activity VALUES("15","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:26:36");
INSERT INTO tbl_activity VALUES("16","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:26:38");
INSERT INTO tbl_activity VALUES("17","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:26:38");
INSERT INTO tbl_activity VALUES("18","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:26:56");
INSERT INTO tbl_activity VALUES("19","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:26:57");
INSERT INTO tbl_activity VALUES("20","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:27:09");
INSERT INTO tbl_activity VALUES("21","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:27:10");
INSERT INTO tbl_activity VALUES("22","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:28:04");
INSERT INTO tbl_activity VALUES("23","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:28:39");
INSERT INTO tbl_activity VALUES("24","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:28:48");
INSERT INTO tbl_activity VALUES("25","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:32:23");
INSERT INTO tbl_activity VALUES("26","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:32:46");
INSERT INTO tbl_activity VALUES("27","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:33:00");
INSERT INTO tbl_activity VALUES("28","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:33:07");
INSERT INTO tbl_activity VALUES("29","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:33:23");
INSERT INTO tbl_activity VALUES("30","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:35:07");
INSERT INTO tbl_activity VALUES("31","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:36:00");
INSERT INTO tbl_activity VALUES("32","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:36:14");
INSERT INTO tbl_activity VALUES("33","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:36:21");
INSERT INTO tbl_activity VALUES("34","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:36:35");
INSERT INTO tbl_activity VALUES("35","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:37:16");
INSERT INTO tbl_activity VALUES("36","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:41:05");
INSERT INTO tbl_activity VALUES("37","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:41:13");
INSERT INTO tbl_activity VALUES("38","Searched Ordinance History","21","2014-11-17 16:41:19");
INSERT INTO tbl_activity VALUES("39","Searched Ordinance History","21","2014-11-17 16:41:25");
INSERT INTO tbl_activity VALUES("40","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:41:26");
INSERT INTO tbl_activity VALUES("41","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:42:01");
INSERT INTO tbl_activity VALUES("42","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:42:07");
INSERT INTO tbl_activity VALUES("43","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:42:33");
INSERT INTO tbl_activity VALUES("44","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:42:59");
INSERT INTO tbl_activity VALUES("45","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:44:14");
INSERT INTO tbl_activity VALUES("46","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:44:51");
INSERT INTO tbl_activity VALUES("47","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:45:23");
INSERT INTO tbl_activity VALUES("48","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:46:28");
INSERT INTO tbl_activity VALUES("49","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:49:07");
INSERT INTO tbl_activity VALUES("50","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:49:23");
INSERT INTO tbl_activity VALUES("51","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:49:31");
INSERT INTO tbl_activity VALUES("52","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:49:51");
INSERT INTO tbl_activity VALUES("53","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:51:14");
INSERT INTO tbl_activity VALUES("54","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:51:42");
INSERT INTO tbl_activity VALUES("55","Searched Ordinance History","21","2014-11-17 16:51:56");
INSERT INTO tbl_activity VALUES("56","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:52:00");
INSERT INTO tbl_activity VALUES("57","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:53:15");
INSERT INTO tbl_activity VALUES("58","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:53:24");
INSERT INTO tbl_activity VALUES("59","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:53:36");
INSERT INTO tbl_activity VALUES("60","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:54:29");
INSERT INTO tbl_activity VALUES("61","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:54:52");
INSERT INTO tbl_activity VALUES("62","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:55:12");
INSERT INTO tbl_activity VALUES("63","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:55:22");
INSERT INTO tbl_activity VALUES("64","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:55:29");
INSERT INTO tbl_activity VALUES("65","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:55:36");
INSERT INTO tbl_activity VALUES("66","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:55:46");
INSERT INTO tbl_activity VALUES("67","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:55:55");
INSERT INTO tbl_activity VALUES("68","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:56:02");
INSERT INTO tbl_activity VALUES("69","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:56:10");
INSERT INTO tbl_activity VALUES("70","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:56:29");
INSERT INTO tbl_activity VALUES("71","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:56:38");
INSERT INTO tbl_activity VALUES("72","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:56:50");
INSERT INTO tbl_activity VALUES("73","Searched Ordinance History","21","2014-11-17 16:58:17");
INSERT INTO tbl_activity VALUES("74","Searched Ordinance History","21","2014-11-17 16:58:55");
INSERT INTO tbl_activity VALUES("75","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:58:57");
INSERT INTO tbl_activity VALUES("76","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:59:36");
INSERT INTO tbl_activity VALUES("77","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 16:59:44");
INSERT INTO tbl_activity VALUES("78","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-17 17:01:22");
INSERT INTO tbl_activity VALUES("79","Searched Ordinance History","21","2014-11-17 17:02:14");
INSERT INTO tbl_activity VALUES("80","Logged Out","21","2014-11-17 17:02:17");
INSERT INTO tbl_activity VALUES("81","Logged In","21","2014-11-18 08:20:30");
INSERT INTO tbl_activity VALUES("82","Return to Homepage","21","2014-11-18 08:20:31");
INSERT INTO tbl_activity VALUES("83","Viewed Statistical Report of Ordinance","21","2014-11-18 08:20:40");
INSERT INTO tbl_activity VALUES("84","Searched Ordinance History","21","2014-11-18 08:21:06");
INSERT INTO tbl_activity VALUES("85","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-18 08:21:10");
INSERT INTO tbl_activity VALUES("86","Logged In","21","2014-11-18 08:23:22");
INSERT INTO tbl_activity VALUES("87","Return to Homepage","21","2014-11-18 08:23:23");
INSERT INTO tbl_activity VALUES("88","Return to Homepage","21","2014-11-18 08:23:37");
INSERT INTO tbl_activity VALUES("89","Return to Homepage","21","2014-11-18 08:23:42");
INSERT INTO tbl_activity VALUES("90","Return to Homepage","21","2014-11-18 08:23:48");
INSERT INTO tbl_activity VALUES("91","Return to Homepage","21","2014-11-18 08:23:52");
INSERT INTO tbl_activity VALUES("92","Return to Homepage","21","2014-11-18 08:23:56");
INSERT INTO tbl_activity VALUES("93","Searched Ordinance History","21","2014-11-18 08:25:31");
INSERT INTO tbl_activity VALUES("94","Viewed List of Communication","21","2014-11-18 08:25:36");
INSERT INTO tbl_activity VALUES("95","Return to Homepage","21","2014-11-18 08:25:40");
INSERT INTO tbl_activity VALUES("96","Viewed List of Communication","21","2014-11-18 08:25:55");
INSERT INTO tbl_activity VALUES("97","Viewed Statistical Report of Ordinance","21","2014-11-18 08:26:48");
INSERT INTO tbl_activity VALUES("98","Searched Ordinance History","21","2014-11-18 08:26:51");
INSERT INTO tbl_activity VALUES("99","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-18 08:27:09");
INSERT INTO tbl_activity VALUES("100","Searched Ordinance History","21","2014-11-18 08:27:15");
INSERT INTO tbl_activity VALUES("101","Viewed List of Communication","21","2014-11-18 08:27:17");
INSERT INTO tbl_activity VALUES("102","Return to Homepage","21","2014-11-18 08:29:50");
INSERT INTO tbl_activity VALUES("103","Viewed Communication for Referral List","21","2014-11-18 08:30:53");
INSERT INTO tbl_activity VALUES("104","Viewed List of Communication","21","2014-11-18 08:31:06");
INSERT INTO tbl_activity VALUES("105","Viewed Communication for Referral List","21","2014-11-18 08:32:57");
INSERT INTO tbl_activity VALUES("106","Viewed List of Communication","21","2014-11-18 08:32:59");
INSERT INTO tbl_activity VALUES("107","Return to Homepage","21","2014-11-18 08:33:32");
INSERT INTO tbl_activity VALUES("108","Viewed List of Communication","21","2014-11-18 08:33:41");
INSERT INTO tbl_activity VALUES("109","Viewed Communication for Referral List","21","2014-11-18 08:33:43");
INSERT INTO tbl_activity VALUES("110","Return to Homepage","21","2014-11-18 08:33:46");
INSERT INTO tbl_activity VALUES("111","Viewed Communication for Referral List","21","2014-11-18 08:35:20");
INSERT INTO tbl_activity VALUES("112","Viewed List of Communication","21","2014-11-18 08:35:21");
INSERT INTO tbl_activity VALUES("113","Viewed Committee Meeting List for Resolution","21","2014-11-18 08:35:24");
INSERT INTO tbl_activity VALUES("114","Viewed Committee Meeting List for Ordinance","21","2014-11-18 08:35:32");
INSERT INTO tbl_activity VALUES("115","Viewed Ordinance List","21","2014-11-18 08:35:34");
INSERT INTO tbl_activity VALUES("116","Viewed Archived Ordinance List","21","2014-11-18 08:37:05");
INSERT INTO tbl_activity VALUES("117","Viewed Ordinance List","21","2014-11-18 08:37:07");
INSERT INTO tbl_activity VALUES("118","Viewed Communication for Referral List","21","2014-11-18 08:43:41");
INSERT INTO tbl_activity VALUES("119","Viewed List of Communication","21","2014-11-18 08:44:22");
INSERT INTO tbl_activity VALUES("120","Return to Homepage","21","2014-11-18 08:47:03");
INSERT INTO tbl_activity VALUES("121","Viewed List of Communication","21","2014-11-18 08:52:02");
INSERT INTO tbl_activity VALUES("122","Viewed Statistical Report of Ordinance","21","2014-11-18 08:53:18");
INSERT INTO tbl_activity VALUES("123","Searched Ordinance History","21","2014-11-18 08:53:22");
INSERT INTO tbl_activity VALUES("124","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-18 08:53:24");
INSERT INTO tbl_activity VALUES("125","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-18 08:55:19");
INSERT INTO tbl_activity VALUES("126","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-18 08:56:00");
INSERT INTO tbl_activity VALUES("127","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-18 08:58:24");
INSERT INTO tbl_activity VALUES("128","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-18 08:58:41");
INSERT INTO tbl_activity VALUES("129","Searched Ordinance History","21","2014-11-18 08:58:58");
INSERT INTO tbl_activity VALUES("130","Searched Ordinance History","21","2014-11-18 09:01:41");
INSERT INTO tbl_activity VALUES("131","Searched Statistical Resolution Report","21","2014-11-18 09:01:45");
INSERT INTO tbl_activity VALUES("132","Searched Resolution History","21","2014-11-18 09:01:49");
INSERT INTO tbl_activity VALUES("133","Searched Resolution History","21","2014-11-18 09:01:54");
INSERT INTO tbl_activity VALUES("134","Printed Resolution History of Resolution No. 001 - 1999","21","2014-11-18 09:01:57");
INSERT INTO tbl_activity VALUES("135","Printed Resolution History of Resolution No. 001 - 1999","21","2014-11-18 09:08:18");
INSERT INTO tbl_activity VALUES("136","Printed Resolution History of Resolution No. 001 - 1999","21","2014-11-18 09:08:39");
INSERT INTO tbl_activity VALUES("137","Printed Resolution History of Resolution No. 001 - 1999","21","2014-11-18 09:09:00");
INSERT INTO tbl_activity VALUES("138","Printed Resolution History of Resolution No. 001 - 1999","21","2014-11-18 09:09:07");
INSERT INTO tbl_activity VALUES("139","Printed Resolution History of Resolution No. 001 - 1999","21","2014-11-18 09:09:28");
INSERT INTO tbl_activity VALUES("140","Printed Resolution History of Resolution No. 001 - 1999","21","2014-11-18 09:09:39");
INSERT INTO tbl_activity VALUES("141","Printed Resolution History of Resolution No. 001 - 1999","21","2014-11-18 09:09:59");
INSERT INTO tbl_activity VALUES("142","Searched Resolution History","21","2014-11-18 09:10:03");
INSERT INTO tbl_activity VALUES("143","Searched Resolution History","21","2014-11-18 09:10:05");
INSERT INTO tbl_activity VALUES("144","Searched Resolution History","21","2014-11-18 09:11:05");
INSERT INTO tbl_activity VALUES("145","Printed Resolution History of Resolution No. 266 - 2014","21","2014-11-18 09:11:08");
INSERT INTO tbl_activity VALUES("146","Searched Resolution History","21","2014-11-18 09:11:19");
INSERT INTO tbl_activity VALUES("147","Viewed List of Communication","21","2014-11-18 09:11:22");
INSERT INTO tbl_activity VALUES("148","Viewed Communication for Referral List","21","2014-11-18 09:11:54");
INSERT INTO tbl_activity VALUES("149","Viewed List of Communication","21","2014-11-18 09:12:09");
INSERT INTO tbl_activity VALUES("150","Return to Homepage","21","2014-11-18 09:14:37");
INSERT INTO tbl_activity VALUES("151","Viewed List of Communication","21","2014-11-18 09:15:52");
INSERT INTO tbl_activity VALUES("152","Viewed Communication for Referral List","21","2014-11-18 09:16:29");
INSERT INTO tbl_activity VALUES("153","Viewed Committee Meeting List for Resolution","21","2014-11-18 09:16:32");
INSERT INTO tbl_activity VALUES("154","Viewed Committee Meeting List for Ordinance","21","2014-11-18 09:16:34");
INSERT INTO tbl_activity VALUES("155","Searched Statistical Resolution Report","21","2014-11-18 09:16:40");
INSERT INTO tbl_activity VALUES("156","Logged In","23","2014-11-18 09:19:20");
INSERT INTO tbl_activity VALUES("157","Return to Homepage","23","2014-11-18 09:19:20");
INSERT INTO tbl_activity VALUES("158","Viewed Statistical Report of Ordinance","23","2014-11-18 09:19:34");
INSERT INTO tbl_activity VALUES("159","Searched Ordinance History","23","2014-11-18 09:19:37");
INSERT INTO tbl_activity VALUES("160","Printed Ordinance History Ordinance No. 053 - 2014","23","2014-11-18 09:19:44");
INSERT INTO tbl_activity VALUES("161","Viewed Communication for Referral List","21","2014-11-18 09:45:54");
INSERT INTO tbl_activity VALUES("162","Return to Homepage","21","2014-11-18 09:46:04");
INSERT INTO tbl_activity VALUES("163","Return to Homepage","21","2014-11-18 10:22:25");
INSERT INTO tbl_activity VALUES("164","Return to Homepage","21","2014-11-18 10:22:40");
INSERT INTO tbl_activity VALUES("165","Viewed List of Referrals for Committe Meeting","21","2014-11-18 10:22:41");
INSERT INTO tbl_activity VALUES("166","Return to Homepage","21","2014-11-18 10:22:51");
INSERT INTO tbl_activity VALUES("167","Viewed Communication for Referral List","21","2014-11-18 10:23:06");
INSERT INTO tbl_activity VALUES("168","Viewed List of Communication","21","2014-11-18 10:23:08");
INSERT INTO tbl_activity VALUES("169","Viewed List of Communication","21","2014-11-18 10:23:20");
INSERT INTO tbl_activity VALUES("170","Return to Homepage","21","2014-11-18 10:23:43");
INSERT INTO tbl_activity VALUES("171","Return to Homepage","21","2014-11-18 10:23:46");
INSERT INTO tbl_activity VALUES("172","Return to Homepage","21","2014-11-18 10:23:48");
INSERT INTO tbl_activity VALUES("173","Return to Homepage","21","2014-11-18 10:23:51");
INSERT INTO tbl_activity VALUES("174","Viewed List of Communication","21","2014-11-18 10:23:52");
INSERT INTO tbl_activity VALUES("175","Return to Homepage","21","2014-11-18 10:23:54");
INSERT INTO tbl_activity VALUES("176","Return to Homepage","21","2014-11-18 10:23:57");
INSERT INTO tbl_activity VALUES("177","Return to Homepage","21","2014-11-18 10:23:59");
INSERT INTO tbl_activity VALUES("178","Return to Homepage","21","2014-11-18 10:24:01");
INSERT INTO tbl_activity VALUES("179","Return to Homepage","21","2014-11-18 10:24:04");
INSERT INTO tbl_activity VALUES("180","Viewed List of Communication","21","2014-11-18 10:24:06");
INSERT INTO tbl_activity VALUES("181","Viewed List of Communication","21","2014-11-18 10:24:17");
INSERT INTO tbl_activity VALUES("182","Return to Homepage","21","2014-11-18 10:24:27");
INSERT INTO tbl_activity VALUES("183","Viewed List of Communication","21","2014-11-18 10:24:29");
INSERT INTO tbl_activity VALUES("184","Return to Homepage","21","2014-11-18 10:24:31");
INSERT INTO tbl_activity VALUES("185","Return to Homepage","21","2014-11-18 10:24:33");
INSERT INTO tbl_activity VALUES("186","Return to Homepage","21","2014-11-18 10:24:35");
INSERT INTO tbl_activity VALUES("187","Return to Homepage","21","2014-11-18 10:24:38");
INSERT INTO tbl_activity VALUES("188","Viewed Statistical Report of Ordinance","21","2014-11-18 10:24:43");
INSERT INTO tbl_activity VALUES("189","Searched Ordinance History","21","2014-11-18 10:24:55");
INSERT INTO tbl_activity VALUES("190","Return to Homepage","21","2014-11-18 10:25:02");
INSERT INTO tbl_activity VALUES("191","Return to Homepage","21","2014-11-18 10:25:05");
INSERT INTO tbl_activity VALUES("192","Searched Yearly Ordinance","21","2014-11-18 10:25:08");
INSERT INTO tbl_activity VALUES("193","Return to Homepage","21","2014-11-18 10:25:16");
INSERT INTO tbl_activity VALUES("194","Return to Homepage","21","2014-11-18 10:25:22");
INSERT INTO tbl_activity VALUES("195","Viewed Committee Meeting List for Ordinance","21","2014-11-18 10:25:30");
INSERT INTO tbl_activity VALUES("196","Viewed List of Referrals for Committe Meeting","21","2014-11-18 10:25:37");
INSERT INTO tbl_activity VALUES("197","Viewed List of Communication","21","2014-11-18 10:26:30");
INSERT INTO tbl_activity VALUES("198","Viewed List of Communication","21","2014-11-18 10:26:30");
INSERT INTO tbl_activity VALUES("199","Viewed List of Communication","21","2014-11-18 10:26:45");
INSERT INTO tbl_activity VALUES("200","Added Another Resolution","21","2014-11-18 10:28:02");
INSERT INTO tbl_activity VALUES("201","Viewed Resolution No. 280 - 2008","21","2014-11-18 10:28:03");
INSERT INTO tbl_activity VALUES("202","Viewed Resolution List","21","2014-11-18 10:28:23");
INSERT INTO tbl_activity VALUES("203","Viewed Resolution List","21","2014-11-18 10:28:33");
INSERT INTO tbl_activity VALUES("204","Viewed Resolution No. 280 - 2008","21","2014-11-18 10:28:37");
INSERT INTO tbl_activity VALUES("205","Added Another Resolution","21","2014-11-18 10:31:30");
INSERT INTO tbl_activity VALUES("206","Viewed Resolution No. 281 - 2008","21","2014-11-18 10:31:30");
INSERT INTO tbl_activity VALUES("207","Added Another Resolution","21","2014-11-18 10:32:02");
INSERT INTO tbl_activity VALUES("208","Viewed Resolution No. 282 - 2008","21","2014-11-18 10:32:03");
INSERT INTO tbl_activity VALUES("209","Added Another Resolution","21","2014-11-18 10:32:39");
INSERT INTO tbl_activity VALUES("210","Viewed Resolution No. 283 - 2008","21","2014-11-18 10:32:39");
INSERT INTO tbl_activity VALUES("211","Added Another Resolution","21","2014-11-18 10:33:11");
INSERT INTO tbl_activity VALUES("212","Viewed Resolution No. 284 - 2008","21","2014-11-18 10:33:12");
INSERT INTO tbl_activity VALUES("213","Viewed Position List","21","2014-11-18 10:33:17");
INSERT INTO tbl_activity VALUES("214","Added Another Resolution","21","2014-11-18 10:33:45");
INSERT INTO tbl_activity VALUES("215","Viewed Resolution No. 285 - 2008","21","2014-11-18 10:33:45");
INSERT INTO tbl_activity VALUES("216","Added Another Resolution","21","2014-11-18 10:34:10");
INSERT INTO tbl_activity VALUES("217","Viewed Resolution No. 286 - 2008","21","2014-11-18 10:34:10");
INSERT INTO tbl_activity VALUES("218","Added Another Resolution","21","2014-11-18 10:34:41");
INSERT INTO tbl_activity VALUES("219","Viewed Resolution No. 287 - 2008","21","2014-11-18 10:34:42");
INSERT INTO tbl_activity VALUES("220","Viewed Committee Meeting List for Ordinance","21","2014-11-18 10:34:43");
INSERT INTO tbl_activity VALUES("221","Viewed List of Referrals for Committe Meeting","21","2014-11-18 10:34:57");
INSERT INTO tbl_activity VALUES("222","Viewed List of Referrals for Committe Meeting","21","2014-11-18 10:35:02");
INSERT INTO tbl_activity VALUES("223","Added Another Resolution","21","2014-11-18 10:35:24");
INSERT INTO tbl_activity VALUES("224","Viewed Resolution No. 288 - 2008","21","2014-11-18 10:35:25");
INSERT INTO tbl_activity VALUES("225","Added Another Resolution","21","2014-11-18 10:36:03");
INSERT INTO tbl_activity VALUES("226","Viewed Resolution No. 289 - 2008","21","2014-11-18 10:36:03");
INSERT INTO tbl_activity VALUES("227","Viewed Communication for Referral List","21","2014-11-18 10:36:09");
INSERT INTO tbl_activity VALUES("228","Viewed Communication for Referral List","21","2014-11-18 10:36:10");
INSERT INTO tbl_activity VALUES("229","Viewed List of Communication","21","2014-11-18 10:36:13");
INSERT INTO tbl_activity VALUES("230","Viewed Statistical Report of Ordinance","21","2014-11-18 10:36:33");
INSERT INTO tbl_activity VALUES("231","Added Another Resolution","21","2014-11-18 10:36:41");
INSERT INTO tbl_activity VALUES("232","Viewed Resolution No. 290 - 2008","21","2014-11-18 10:36:42");
INSERT INTO tbl_activity VALUES("233","Return to Homepage","23","2014-11-18 10:38:06");
INSERT INTO tbl_activity VALUES("234","Logged Out","23","2014-11-18 10:40:21");
INSERT INTO tbl_activity VALUES("235","Logged In","21","2014-11-18 10:40:29");
INSERT INTO tbl_activity VALUES("236","Return to Homepage","21","2014-11-18 10:40:29");
INSERT INTO tbl_activity VALUES("237","Viewed Committee Meeting List for Ordinance","21","2014-11-18 10:43:54");
INSERT INTO tbl_activity VALUES("238","Viewed List of Referrals for Committe Meeting","21","2014-11-18 10:44:04");
INSERT INTO tbl_activity VALUES("239","Viewed List of Referrals for Committe Meeting","21","2014-11-18 10:44:51");
INSERT INTO tbl_activity VALUES("240","Added Another Resolution","21","2014-11-18 10:44:54");
INSERT INTO tbl_activity VALUES("241","Viewed Resolution No. 291 - 2008","21","2014-11-18 10:44:54");
INSERT INTO tbl_activity VALUES("242","Added Another Resolution","21","2014-11-18 10:45:31");
INSERT INTO tbl_activity VALUES("243","Viewed Resolution No. 292 - 2008","21","2014-11-18 10:45:31");
INSERT INTO tbl_activity VALUES("244","Added Another Resolution","21","2014-11-18 10:46:12");
INSERT INTO tbl_activity VALUES("245","Viewed Resolution No. 293 - 2008","21","2014-11-18 10:46:13");
INSERT INTO tbl_activity VALUES("246","Added Another Committee Meeting","21","2014-11-18 10:46:18");
INSERT INTO tbl_activity VALUES("247","View Committee Meeting ID: 2","21","2014-11-18 10:46:18");
INSERT INTO tbl_activity VALUES("248","Added Another Resolution","21","2014-11-18 10:46:55");
INSERT INTO tbl_activity VALUES("249","Viewed Resolution No. 294 - 2008","21","2014-11-18 10:46:55");
INSERT INTO tbl_activity VALUES("250","View Committee Meeting ID: 2","21","2014-11-18 10:47:09");
INSERT INTO tbl_activity VALUES("251","Assigned Date of Committee Report of Committe Meeting ID: 2","21","2014-11-18 10:47:09");
INSERT INTO tbl_activity VALUES("252","View Committee Meeting ID: 2","21","2014-11-18 10:47:09");
INSERT INTO tbl_activity VALUES("253","Viewed Committee Meeting List for Ordinance","21","2014-11-18 10:47:14");
INSERT INTO tbl_activity VALUES("254","Added Another Resolution","21","2014-11-18 10:47:40");
INSERT INTO tbl_activity VALUES("255","Viewed Resolution No. 295 - 2008","21","2014-11-18 10:47:41");
INSERT INTO tbl_activity VALUES("256","Added Another Resolution","21","2014-11-18 10:48:18");
INSERT INTO tbl_activity VALUES("257","Viewed Resolution No. 296 - 2008","21","2014-11-18 10:48:18");
INSERT INTO tbl_activity VALUES("258","Added Another Resolution","21","2014-11-18 10:48:53");
INSERT INTO tbl_activity VALUES("259","Viewed Resolution No. 297 - 2008","21","2014-11-18 10:48:53");
INSERT INTO tbl_activity VALUES("260","Added Another Ordinance","21","2014-11-18 10:49:14");
INSERT INTO tbl_activity VALUES("261","Viewed Ordinance No. 061 - 2014","21","2014-11-18 10:49:15");
INSERT INTO tbl_activity VALUES("262","Viewed Committee Meeting List for Ordinance","21","2014-11-18 10:49:17");
INSERT INTO tbl_activity VALUES("263","Viewed Ordinance List","21","2014-11-18 10:49:19");
INSERT INTO tbl_activity VALUES("264","Added Another Resolution","21","2014-11-18 10:50:35");
INSERT INTO tbl_activity VALUES("265","Viewed Resolution No. 298 - 2008","21","2014-11-18 10:50:35");
INSERT INTO tbl_activity VALUES("266","Viewed Ordinance List","21","2014-11-18 10:50:44");
INSERT INTO tbl_activity VALUES("267","Viewed Statistical Report of Ordinance","21","2014-11-18 10:50:49");
INSERT INTO tbl_activity VALUES("268","Searched Ordinance History","21","2014-11-18 10:50:51");
INSERT INTO tbl_activity VALUES("269","Printed Ordinance History Ordinance No. 061 - 2014","21","2014-11-18 10:50:54");
INSERT INTO tbl_activity VALUES("270","Added Another Resolution","21","2014-11-18 10:51:11");
INSERT INTO tbl_activity VALUES("271","Viewed Resolution No. 299 - 2008","21","2014-11-18 10:51:11");
INSERT INTO tbl_activity VALUES("272","Added Another Resolution","21","2014-11-18 10:51:37");
INSERT INTO tbl_activity VALUES("273","Viewed Resolution No. 300 - 2008","21","2014-11-18 10:51:37");
INSERT INTO tbl_activity VALUES("274","Searched Ordinance History","21","2014-11-18 10:51:48");
INSERT INTO tbl_activity VALUES("275","Viewed Committee Meeting List for Ordinance","21","2014-11-18 10:51:52");
INSERT INTO tbl_activity VALUES("276","Viewed Ordinance List","21","2014-11-18 10:51:54");
INSERT INTO tbl_activity VALUES("277","Viewed Statistical Report of Ordinance","21","2014-11-18 10:52:07");
INSERT INTO tbl_activity VALUES("278","Added Another Resolution","21","2014-11-18 10:52:07");
INSERT INTO tbl_activity VALUES("279","Viewed Resolution No. 301 - 2008","21","2014-11-18 10:52:07");
INSERT INTO tbl_activity VALUES("280","Searched Ordinance History","21","2014-11-18 10:52:10");
INSERT INTO tbl_activity VALUES("281","Printed Ordinance History Ordinance No. 061 - 2014","21","2014-11-18 10:52:13");
INSERT INTO tbl_activity VALUES("282","Searched Ordinance History","21","2014-11-18 10:52:27");
INSERT INTO tbl_activity VALUES("283","Added Another Resolution","21","2014-11-18 10:52:42");
INSERT INTO tbl_activity VALUES("284","Viewed Resolution No. 302 - 2008","21","2014-11-18 10:52:42");
INSERT INTO tbl_activity VALUES("285","Searched Ordinance History","21","2014-11-18 10:52:57");
INSERT INTO tbl_activity VALUES("286","Printed Ordinance History Ordinance No. 061 - 2014","21","2014-11-18 10:52:59");
INSERT INTO tbl_activity VALUES("287","Added Another Resolution","21","2014-11-18 10:53:10");
INSERT INTO tbl_activity VALUES("288","Viewed Resolution No. 303 - 2008","21","2014-11-18 10:53:10");
INSERT INTO tbl_activity VALUES("289","Searched Ordinance History","21","2014-11-18 10:53:13");
INSERT INTO tbl_activity VALUES("290","Searched Ordinance History","21","2014-11-18 10:53:36");
INSERT INTO tbl_activity VALUES("291","Printed Ordinance History Ordinance No. 061 - 2014","21","2014-11-18 10:53:37");
INSERT INTO tbl_activity VALUES("292","Added Another Resolution","21","2014-11-18 10:53:39");
INSERT INTO tbl_activity VALUES("293","Viewed Resolution No. 304 - 2008","21","2014-11-18 10:53:39");
INSERT INTO tbl_activity VALUES("294","Added Another Resolution","21","2014-11-18 10:54:10");
INSERT INTO tbl_activity VALUES("295","Viewed Resolution No. 305 - 2008","21","2014-11-18 10:54:10");
INSERT INTO tbl_activity VALUES("296","Printed Ordinance History Ordinance No. 061 - 2014","21","2014-11-18 10:54:28");
INSERT INTO tbl_activity VALUES("297","Added Another Resolution","21","2014-11-18 10:54:44");
INSERT INTO tbl_activity VALUES("298","Viewed Resolution No. 306 - 2008","21","2014-11-18 10:54:45");
INSERT INTO tbl_activity VALUES("299","Added Another Resolution","21","2014-11-18 10:55:16");
INSERT INTO tbl_activity VALUES("300","Viewed Resolution No. 307 - 2008","21","2014-11-18 10:55:16");
INSERT INTO tbl_activity VALUES("301","Added Another Resolution","21","2014-11-18 10:55:44");
INSERT INTO tbl_activity VALUES("302","Viewed Resolution No. 308 - 2008","21","2014-11-18 10:55:44");
INSERT INTO tbl_activity VALUES("303","Added Another Resolution","21","2014-11-18 10:56:12");
INSERT INTO tbl_activity VALUES("304","Viewed Resolution No. 309 - 2008","21","2014-11-18 10:56:12");
INSERT INTO tbl_activity VALUES("305","Added Another Resolution","21","2014-11-18 10:56:46");
INSERT INTO tbl_activity VALUES("306","Viewed Resolution No. 310 - 2008","21","2014-11-18 10:56:47");
INSERT INTO tbl_activity VALUES("307","Added Another Resolution","21","2014-11-18 10:57:31");
INSERT INTO tbl_activity VALUES("308","Viewed Resolution No. 311 - 2008","21","2014-11-18 10:57:31");
INSERT INTO tbl_activity VALUES("309","Printed Ordinance History Ordinance No. 061 - 2014","21","2014-11-18 10:57:40");
INSERT INTO tbl_activity VALUES("310","Printed Ordinance History Ordinance No. 061 - 2014","21","2014-11-18 10:57:53");
INSERT INTO tbl_activity VALUES("311","Printed Ordinance History Ordinance No. 061 - 2014","21","2014-11-18 10:58:02");
INSERT INTO tbl_activity VALUES("312","Added Another Resolution","21","2014-11-18 10:58:10");
INSERT INTO tbl_activity VALUES("313","Viewed Resolution No. 312 - 2008","21","2014-11-18 10:58:10");
INSERT INTO tbl_activity VALUES("314","Printed Ordinance History Ordinance No. 061 - 2014","21","2014-11-18 10:58:38");
INSERT INTO tbl_activity VALUES("315","Printed Ordinance History Ordinance No. 061 - 2014","21","2014-11-18 10:58:49");
INSERT INTO tbl_activity VALUES("316","Added Another Resolution","21","2014-11-18 10:58:58");
INSERT INTO tbl_activity VALUES("317","Viewed Resolution No. 313 - 2008","21","2014-11-18 10:58:58");
INSERT INTO tbl_activity VALUES("318","Added Another Resolution","21","2014-11-18 10:59:45");
INSERT INTO tbl_activity VALUES("319","Viewed Resolution No. 314 - 2008","21","2014-11-18 10:59:45");
INSERT INTO tbl_activity VALUES("320","Viewed Position List","21","2014-11-18 10:59:48");
INSERT INTO tbl_activity VALUES("321","Searched Ordinance History","21","2014-11-18 11:00:25");
INSERT INTO tbl_activity VALUES("322","Return to Homepage","21","2014-11-18 11:00:29");
INSERT INTO tbl_activity VALUES("323","Added Another Resolution","21","2014-11-18 11:00:30");
INSERT INTO tbl_activity VALUES("324","Return to Homepage","21","2014-11-18 11:00:30");
INSERT INTO tbl_activity VALUES("325","Viewed Resolution No. 315 - 2008","21","2014-11-18 11:00:30");
INSERT INTO tbl_activity VALUES("326","Added Another Resolution","21","2014-11-18 11:01:34");
INSERT INTO tbl_activity VALUES("327","Viewed Resolution No. 316 - 2008","21","2014-11-18 11:01:34");
INSERT INTO tbl_activity VALUES("328","Return to Homepage","21","2014-11-18 11:02:15");
INSERT INTO tbl_activity VALUES("329","Viewed List of Communication","21","2014-11-18 11:02:30");
INSERT INTO tbl_activity VALUES("330","Added Another Resolution","21","2014-11-18 11:02:43");
INSERT INTO tbl_activity VALUES("331","Viewed Resolution No. 317 - 2008","21","2014-11-18 11:02:43");
INSERT INTO tbl_activity VALUES("332","Viewed Communication for Referral List","21","2014-11-18 11:03:09");
INSERT INTO tbl_activity VALUES("333","Viewed List of Communication","21","2014-11-18 11:03:13");
INSERT INTO tbl_activity VALUES("334","Return to Homepage","21","2014-11-18 11:03:15");
INSERT INTO tbl_activity VALUES("335","Return to Homepage","21","2014-11-18 11:04:15");
INSERT INTO tbl_activity VALUES("336","Viewed Statistical Report of Ordinance","21","2014-11-18 11:05:26");
INSERT INTO tbl_activity VALUES("337","Searched Yearly Ordinance","21","2014-11-18 11:05:30");
INSERT INTO tbl_activity VALUES("338","Searched Ordinance History","21","2014-11-18 11:05:31");
INSERT INTO tbl_activity VALUES("339","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-18 11:05:33");
INSERT INTO tbl_activity VALUES("340","Searched Ordinance History","21","2014-11-18 11:06:13");
INSERT INTO tbl_activity VALUES("341","Return to Homepage","21","2014-11-18 11:06:15");
INSERT INTO tbl_activity VALUES("342","Logged Out","21","2014-11-18 11:11:32");
INSERT INTO tbl_activity VALUES("343","Logged In","21","2014-11-18 11:12:51");
INSERT INTO tbl_activity VALUES("344","Return to Homepage","21","2014-11-18 11:12:51");
INSERT INTO tbl_activity VALUES("345","Viewed List of Communication","21","2014-11-18 11:13:12");
INSERT INTO tbl_activity VALUES("346","Viewed Committee Meeting List for Ordinance","21","2014-11-18 11:13:15");
INSERT INTO tbl_activity VALUES("347","Viewed Ordinance List","21","2014-11-18 11:13:16");
INSERT INTO tbl_activity VALUES("348","Viewed List of Referrals for Committe Meeting","21","2014-11-18 11:14:15");
INSERT INTO tbl_activity VALUES("349","Added Another Resolution","21","2014-11-18 11:41:08");
INSERT INTO tbl_activity VALUES("350","Viewed Resolution No. 318 - 2008","21","2014-11-18 11:41:08");
INSERT INTO tbl_activity VALUES("351","Added Another Resolution","21","2014-11-18 11:41:45");
INSERT INTO tbl_activity VALUES("352","Viewed Resolution No. 319 - 2008","21","2014-11-18 11:41:45");
INSERT INTO tbl_activity VALUES("353","Added Another Resolution","21","2014-11-18 11:42:37");
INSERT INTO tbl_activity VALUES("354","Viewed Resolution No. 320 - 2008","21","2014-11-18 11:42:37");
INSERT INTO tbl_activity VALUES("355","Viewed Committee Meeting List for Ordinance","21","2014-11-18 11:42:38");
INSERT INTO tbl_activity VALUES("356","Viewed List of Referrals for Committe Meeting","21","2014-11-18 11:42:46");
INSERT INTO tbl_activity VALUES("357","Viewed Communication for Referral List","21","2014-11-18 11:42:51");
INSERT INTO tbl_activity VALUES("358","Viewed Communication for Referral List","21","2014-11-18 11:42:57");
INSERT INTO tbl_activity VALUES("359","Viewed Statistical Report of Ordinance","21","2014-11-18 11:43:05");
INSERT INTO tbl_activity VALUES("360","Added Another Resolution","21","2014-11-18 11:43:09");
INSERT INTO tbl_activity VALUES("361","Viewed Resolution No. 321 - 2008","21","2014-11-18 11:43:09");
INSERT INTO tbl_activity VALUES("362","Added Another Resolution","21","2014-11-18 11:44:12");
INSERT INTO tbl_activity VALUES("363","Viewed Resolution No. 322 - 2008","21","2014-11-18 11:44:12");
INSERT INTO tbl_activity VALUES("364","Added Another Resolution","21","2014-11-18 11:44:57");
INSERT INTO tbl_activity VALUES("365","Viewed Resolution No. 323 - 2008","21","2014-11-18 11:44:57");
INSERT INTO tbl_activity VALUES("366","Added Another Resolution","21","2014-11-18 11:45:39");
INSERT INTO tbl_activity VALUES("367","Viewed Resolution No. 324 - 2008","21","2014-11-18 11:45:39");
INSERT INTO tbl_activity VALUES("368","Added Another Resolution","21","2014-11-18 11:46:21");
INSERT INTO tbl_activity VALUES("369","Viewed Resolution No. 325 - 2008","21","2014-11-18 11:46:21");
INSERT INTO tbl_activity VALUES("370","Viewed Committee Meeting List for Ordinance","21","2014-11-18 11:47:50");
INSERT INTO tbl_activity VALUES("371","Viewed Committee Meeting List for Ordinance","21","2014-11-18 11:47:52");
INSERT INTO tbl_activity VALUES("372","Viewed Ordinance List","21","2014-11-18 11:47:53");
INSERT INTO tbl_activity VALUES("373","Viewed Ordinance List","21","2014-11-18 11:47:56");
INSERT INTO tbl_activity VALUES("374","Viewed Statistical Report of Ordinance","21","2014-11-18 11:47:58");
INSERT INTO tbl_activity VALUES("375","Searched Ordinance History","21","2014-11-18 11:48:03");
INSERT INTO tbl_activity VALUES("376","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-18 11:48:15");
INSERT INTO tbl_activity VALUES("377","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-18 11:49:34");
INSERT INTO tbl_activity VALUES("378","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-18 11:49:53");
INSERT INTO tbl_activity VALUES("379","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-18 11:50:07");
INSERT INTO tbl_activity VALUES("380","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-18 11:50:16");
INSERT INTO tbl_activity VALUES("381","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-18 11:50:25");
INSERT INTO tbl_activity VALUES("382","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-18 11:50:32");
INSERT INTO tbl_activity VALUES("383","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-18 11:51:19");
INSERT INTO tbl_activity VALUES("384","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-18 11:51:40");
INSERT INTO tbl_activity VALUES("385","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-18 11:52:07");
INSERT INTO tbl_activity VALUES("386","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-18 11:52:15");
INSERT INTO tbl_activity VALUES("387","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-18 11:53:14");
INSERT INTO tbl_activity VALUES("388","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-18 11:56:26");
INSERT INTO tbl_activity VALUES("389","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-18 11:56:37");
INSERT INTO tbl_activity VALUES("390","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-18 11:56:53");
INSERT INTO tbl_activity VALUES("391","Searched Ordinance History","21","2014-11-18 11:57:07");
INSERT INTO tbl_activity VALUES("392","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-18 11:57:20");
INSERT INTO tbl_activity VALUES("393","Searched Ordinance History","21","2014-11-18 11:57:23");
INSERT INTO tbl_activity VALUES("394","Printed Ordinance History Ordinance No. 061 - 2014","21","2014-11-18 11:57:25");
INSERT INTO tbl_activity VALUES("395","Searched Ordinance History","21","2014-11-18 11:57:29");
INSERT INTO tbl_activity VALUES("396","Searched Ordinance History","21","2014-11-18 11:57:39");
INSERT INTO tbl_activity VALUES("397","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-18 11:57:41");
INSERT INTO tbl_activity VALUES("398","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-18 11:57:50");
INSERT INTO tbl_activity VALUES("399","Printed Ordinance History Ordinance No. 053 - 2014","21","2014-11-18 11:57:56");
INSERT INTO tbl_activity VALUES("400","Searched Ordinance History","21","2014-11-18 12:02:49");
INSERT INTO tbl_activity VALUES("401","Viewed List of Communication","21","2014-11-18 12:02:51");
INSERT INTO tbl_activity VALUES("402","Searched Monthly Committee Report per Committee","21","2014-11-18 12:02:57");
INSERT INTO tbl_activity VALUES("403","Viewed Monitor Ordinance List","21","2014-11-18 12:02:59");
INSERT INTO tbl_activity VALUES("404","Searched Monthly Committee Report per Committee","21","2014-11-18 12:03:04");
INSERT INTO tbl_activity VALUES("405","Viewed Tracking List of Communication","21","2014-11-18 12:03:06");
INSERT INTO tbl_activity VALUES("406","Searched Yearly Committe Report per Committe","21","2014-11-18 12:04:33");
INSERT INTO tbl_activity VALUES("407","Viewed Agenda List","21","2014-11-18 12:04:53");
INSERT INTO tbl_activity VALUES("408","Viewed Agenda ID: 1","21","2014-11-18 12:04:59");
INSERT INTO tbl_activity VALUES("409","Viewed Agenda List","21","2014-11-18 12:05:04");
INSERT INTO tbl_activity VALUES("410","Printed Agenda ID: 1","21","2014-11-18 12:05:10");
INSERT INTO tbl_activity VALUES("411","Viewed Agenda List","21","2014-11-18 12:05:14");
INSERT INTO tbl_activity VALUES("412","Viewed List of Communication","21","2014-11-18 12:05:17");
INSERT INTO tbl_activity VALUES("413","Viewed Communication for Referral List","21","2014-11-18 12:05:23");
INSERT INTO tbl_activity VALUES("414","Viewed List of Communication","21","2014-11-18 12:05:25");
INSERT INTO tbl_activity VALUES("415","Return to Homepage","21","2014-11-18 12:05:27");
INSERT INTO tbl_activity VALUES("416","Viewed List of Communication","21","2014-11-18 12:05:29");
INSERT INTO tbl_activity VALUES("417","Return to Homepage","21","2014-11-18 12:05:31");
INSERT INTO tbl_activity VALUES("418","Viewed Backed-up System List","21","2014-11-18 12:05:55");



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
  `comm_rep_file` varchar(100) DEFAULT NULL,
  `ord_remark` int(10) NOT NULL,
  `archive` int(10) NOT NULL,
  PRIMARY KEY (`meeting_ordi_id`),
  KEY `ref_id` (`ref_id`),
  KEY `input_by` (`input_by`),
  CONSTRAINT `FK_tbl_comm_meeting_ordi_tbl_employee` FOREIGN KEY (`input_by`) REFERENCES `tbl_employee` (`emp_id`),
  CONSTRAINT `FK_tbl_comm_meeting_ordi_tbl_referral` FOREIGN KEY (`ref_id`) REFERENCES `tbl_referral` (`ref_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO tbl_comm_meeting_ordi VALUES("1","16","1","2014-05-29","0000-00-00","2014-05-29","21","1"," comm rprt DRAFT ORDI 058-2014 TANDOK.pdf","1","0");
INSERT INTO tbl_comm_meeting_ordi VALUES("2","55","1","2014-07-09","0000-00-00","2014-07-09","21","1","comm rpt Draft Ordinance 059-2014 Rabies Control.pdf","1","0");



DROP TABLE tbl_comm_meeting_reso;

CREATE TABLE `tbl_comm_meeting_reso` (
  `meeting_reso_id` int(10) NOT NULL AUTO_INCREMENT,
  `ref_id` int(10) NOT NULL,
  `action_taken` int(10) NOT NULL,
  `date_meeting` date NOT NULL,
  `comm_report` date DEFAULT NULL,
  `input_by` int(10) NOT NULL,
  `comm_rep_file` varchar(100) DEFAULT NULL,
  `comm_meeting_stat` int(10) NOT NULL,
  `remark` int(11) NOT NULL,
  `archive` int(11) NOT NULL,
  PRIMARY KEY (`meeting_reso_id`),
  KEY `ref_id` (`ref_id`),
  KEY `input_by` (`input_by`),
  CONSTRAINT `FK__tbl_referral` FOREIGN KEY (`ref_id`) REFERENCES `tbl_referral` (`ref_id`),
  CONSTRAINT `FK_tbl_comm_meeting_reso_tbl_employee` FOREIGN KEY (`input_by`) REFERENCES `tbl_employee` (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=latin1;

INSERT INTO tbl_comm_meeting_reso VALUES("1","1","1","2014-01-09","0000-00-00","21","","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("2","2","1","2014-01-30","2014-01-30","21"," comm rprt Ord no 2012-096 SANTOL_001.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("3","3","1","2014-01-16","2014-01-16","21"," comm rprt Ord no 2012-102 SANTOL_001.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("4","4","1","2014-01-30","2014-01-30","21"," comm rprt Ord no 168 ARINGAY.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("5","5","1","2014-01-30","2014-01-30","21"," comm rprt MO no 24-2013 AGOO.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("6","6","1","2014-01-30","2014-01-30","21"," comm rprt MO no 25-2013 AGOO.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("7","7","1","2014-01-30","2014-01-30","21"," comm rprt MO no 27-2013 AGOO.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("8","8","1","2014-01-30","2014-01-30","21"," comm rprt MO no 29-2013 AGOO.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("9","9","1","2014-02-06","2014-02-06","21"," comm rprt MO 31-2013 NAGUILIAN.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("10","10","1","2014-02-06","2014-02-06","21"," comm rprt MO 98-2013 SUDIPEN.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("11","12","1","2014-03-20","2014-03-20","21"," comm rprt Ord No. 1-2014 SAN GABRIEL.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("12","11","1","2014-03-06","2014-03-06","21"," comm rprt LEDAC ELA.pdf","1","0","0");
INSERT INTO tbl_comm_meeting_reso VALUES("18","14","1","2014-04-15","2014-04-15","21"," comm rprt Ord no. 28-2013 NAGUILIAN.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("19","22","1","2014-05-29","2014-05-29","21"," comm rprt City Ord no 2014-01 SFC.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("20","21","1","2014-04-24","2014-04-24","21"," comm rprt Ord no 10, S 2013 NAGUILIAN.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("21","23","1","2014-07-03","2014-07-03","21"," comm rprt Ord no. 2014-112 PUGO.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("23","19","1","2014-01-23","2014-01-23","21","comm rprt  naguilian santol rosario.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("24","20","1","2014-01-23","2014-01-23","21","comm rprt  naguilian santol rosario.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("25","91","1","2014-07-01","2014-07-01","21"," comm rprt city ord no 2014-02 SFC.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("26","88","1","2014-02-06","2014-02-06","21"," comm rprt Ord no 2012-103 SANTOL.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("27","89","1","2014-02-06","2014-02-06","21"," comm rprt Ord no 2013-104 SANTOL.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("28","90","1","2014-04-03","2014-04-03","21"," comm rprt Ord no 480-2014 BACNOTAN.pdf","1","0","0");
INSERT INTO tbl_comm_meeting_reso VALUES("29","95","1","2014-07-08","2014-07-08","21"," comm rprt MO no. 169 ARINGAY.pdf","1","0","0");
INSERT INTO tbl_comm_meeting_reso VALUES("31","94","1","2014-02-27","2014-02-27","21"," comm rprt Ord no 109-2013 SANTOL.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("32","98","1","2014-05-08","2014-05-08","21"," comm rprt Ord no 4-2014 SAN GABRIE.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("33","71","1","2014-07-03","2014-07-03","21","comm rprt res no 489-2013 CamNort.pdf","1","0","0");
INSERT INTO tbl_comm_meeting_reso VALUES("34","24","1","2014-04-10","2014-04-10","21"," comm rprt Ord no 33, s 2013 Naguilian.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("35","25","1","2014-06-26","2014-06-26","21"," comm rprt MO no 03, s 2014 Balaoan.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("36","26","1","2014-06-26","2014-06-26","21"," comm rprt Res no. 18, s 2014 Balaoan.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("37","27","1","2014-01-17","2014-01-17","21"," comm rprt Ord no 2011-087 Santol.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("38","28","1","2014-01-17","2014-01-17","21"," comm rprt Ord no 13-2013 San Gabriel.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("39","29","1","2014-03-20","2014-03-20","21"," comm rprt MO 01-2014 San Juan.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("40","30","1","2014-06-19","2014-06-19","21"," comm rprt Ord 164 Aringay.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("41","31","1","2014-06-19","2014-06-19","21"," comm rprt MO No. 08-2014 Agoo.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("42","32","1","2014-01-24","2014-01-24","21","comm rprt Res no 82, s 2013 Bauang.pdf","1","0","0");
INSERT INTO tbl_comm_meeting_reso VALUES("43","33","1","2014-04-10","2014-04-10","21","comm rprt Ord no 02-2014 San Gabriel.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("50","34","1","2014-05-29","2014-05-29","21","comm rprt MO no BTN sto tomas.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("51","35","1","2014-06-26","2014-06-26","21","comm rprt city ord. 2014-03 SFC.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("52","36","1","2014-07-17","2014-07-17","21","comm rprt ltr of engr Elaydo DPWH.pdf","1","0","0");
INSERT INTO tbl_comm_meeting_reso VALUES("53","37","1","2014-07-14","2014-07-14","21","comm rprt Ord no 2014-001 Bangar.pdf","1","0","0");
INSERT INTO tbl_comm_meeting_reso VALUES("54","43","1","2014-07-24","2014-07-24","21"," comm rprt RES NO 2014-144 SFC.pdf","1","0","0");
INSERT INTO tbl_comm_meeting_reso VALUES("55","44","1","2014-03-31","2014-03-31","21","comm rprt unnum reso s 2014 SFC WMM.pdf","1","0","0");
INSERT INTO tbl_comm_meeting_reso VALUES("56","45","1","2014-04-04","2014-04-04","21","MO no 02-2014 Agoo.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("57","48","1","2014-02-06","2014-02-06","21","comm rprt Ord no 2011-085 Santol.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("58","49","1","2014-04-10","2014-04-10","21","comm rprt ord 108,109-2013 Pugo.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("59","50","1","2014-04-10","2014-04-10","21","comm rprt ord 108,109-2013 Pugo.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("60","52","1","2014-05-08","2014-05-08","21","comm rprt 482- 2014 Btn, 03-2014 SJ.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("61","53","1","2014-05-08","2014-05-08","21","comm rprt 482- 2014 Btn, 03-2014 SJ.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("62","54","1","2014-07-03","2014-07-03","21","comm rprt MO no 08-2014 San Juan.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("63","58","1","2014-02-03","2014-02-03","21","comm rprt ord no 20 2013 bauang.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("64","59","1","2014-03-05","2014-03-05","21","comm rprt MO no. 167-2013 Aringay.pdf","1","0","0");
INSERT INTO tbl_comm_meeting_reso VALUES("65","60","1","2014-03-21","2014-03-21","21","comm rprt MO no 01, s 2014 Balaoan.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("66","61","1","2014-05-09","2014-05-09","21","comm rprt Res no. 14, s 2014 Bagulin.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("67","63","1","2014-07-07","2014-07-07","21","comm rprt ltr of Mauro Libatique San Juan.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("68","68","1","2014-07-11","2014-07-11","21","comm rprt MO no 06-2014 Agoo.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("69","65","1","2014-07-11","2014-07-11","21","comm rprt ltr of Ramos and Flores right of way.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("70","70","1","2014-01-23","2014-01-23","21"," comm rprt ord no. 2011-083 Santol.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("71","69","1","2014-01-23","","21","","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("72","69","1","2014-01-23","2014-01-23","21","Unnum Memo 2014 cnfrmnt awrds 164th.pdf","1","0","0");
INSERT INTO tbl_comm_meeting_reso VALUES("73","73","1","2014-02-06","2014-02-06","21"," comm rprt Ord no 2011-084 Santol.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("74","74","1","2014-07-03","2014-07-03","21"," comm rprt MO no 42-2012 Luna.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("75","75","1","2014-04-03","2014-04-03","21"," comm rprt 13,14-2013 bauang 27-2013 Nag 42-2012 L","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("76","77","1","2014-04-03","2014-04-03","21"," comm rprt 13,14-2013 bauang 27-2013 Nag 42-2012 L","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("77","79","1","2014-05-22","2014-05-22","21"," comm rprt MO no 3, s 2014 San Juan.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("78","78","1","2014-04-24","2014-04-24","21"," comm rprt Draft Reso LACAP.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("79","81","1","2014-02-06","2014-02-06","21"," comm rprt ord 170 Aringay.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("80","82","1","2014-04-24","2014-04-24","21"," comm rprt draft reso Rogelio Singson DPWH.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("81","83","1","2014-07-10","2014-07-10","21"," comm rprt ltr of Theodore Sarmiento.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("82","84","1","2014-04-25","2014-04-25","21"," comm rprt Ord no 07,2013 Naguilian.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("83","99","1","2014-07-10","2014-07-10","21","comm rprt MO no. 07-2014 SAN JUAN.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("84","102","1","2014-07-08","2014-07-08","21"," comm rprt MO no 05-2014 San Juan.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("85","103","1","2014-07-09","2014-07-09","21","comm rprt MO no 04-2014 Agoo.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("86","104","1","2014-01-30","2014-01-30","21"," comm rprt Ord no 19,09,10-2013 Bauang.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("87","105","1","2014-04-30","2014-04-30","21"," comm rprt MO 2013-108 Santol.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("88","106","1","2014-05-29","2014-05-29","21"," comm rprt MO no 23 Naguilian.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("89","108","1","2014-04-30","2014-04-30","21"," comm rprt MO 102, s 2014 Sudipen.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("90","109","1","2014-07-24","2014-07-24","21"," comm rprt MO no 2013-19 Rev code Agoo.pdf","1","0","0");
INSERT INTO tbl_comm_meeting_reso VALUES("91","113","1","2014-01-16","2014-01-16","21","","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("92","114","1","2014-02-06","2014-02-06","21","Ltr of Charlie Juloya ARINGAY.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("93","46","1","2014-07-10","2014-07-10","21","comm rpt MO 06-2014 BsNs Estblshmnts SJ.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("94","47","1","2014-07-31","2014-07-31","21","comm rpt MO 09-2014 Senior Citizens Agoo.pdf","1","0","0");
INSERT INTO tbl_comm_meeting_reso VALUES("95","56","1","2014-07-09","2014-07-09","21","comm rpt Ordinance No. 113-2014 MO 2013-106 Pugo.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("96","57","1","2014-07-09","2014-07-09","21","comm rpt Ordinance No. 2014-114 Phil-health TrustFund Pugo.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("97","62","1","2014-07-24","2014-07-24","21","comm rpt CLUP Letter of Libatique.pdf","1","0","0");
INSERT INTO tbl_comm_meeting_reso VALUES("98","76","1","2014-08-28","2014-08-28","21","comm rpt MO No. 4 s. 2014 Carnival rides Bauang.pdf","1","0","0");
INSERT INTO tbl_comm_meeting_reso VALUES("99","115","1","2014-05-29","2014-05-29","21","comm rpt slry incrmnt DBM-DOH Jnt Crclar No. 1 2012.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("100","116","1","2014-06-26","2014-06-26","21","comm rpt salary step increment.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("101","117","1","2014-01-30","2014-01-30","21"," comm rprt ltr of Hon Charlie Juloya Aringay res. no. 001-2014.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("102","85","1","2014-07-10","2014-07-10","21","comm rpt Ord no 2014-111 Pugo Plan of action for infant.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("103","87","1","2014-07-31","2014-07-31","21","comm rpt MO no 20-2013 Naguilian Welfare Code.pdf","1","0","0");
INSERT INTO tbl_comm_meeting_reso VALUES("104","86","1","2014-07-10","2014-07-10","21","comm rpt MO no 07-2014 Agoo.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("105","118","1","2014-05-29","2014-05-29","21","comm rpt MO 23 SB Naguilian.pdf","1","0","0");
INSERT INTO tbl_comm_meeting_reso VALUES("106","119","1","2014-07-03","2014-07-03","21","0321 MO no 42, S 2012 LUNA.pdf","1","1","0");



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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

INSERT INTO tbl_committee VALUES("1","Committee of Barangay Affairs","CBA","12","5","7,9,11");
INSERT INTO tbl_committee VALUES("2","Committee of Ways and Means","CWM","2","3","1");
INSERT INTO tbl_committee VALUES("3","Committee of Computer and Information Technology","CCIT","3","1","2");
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
INSERT INTO tbl_committee VALUES("25","Committee on Housing, Land Use and Relocation","CHLUR","7","12","1,2,8");
INSERT INTO tbl_committee VALUES("26","Committee on Tourism and Sisterhood and International Relations","CTSIR","4","2","3,5,6");



DROP TABLE tbl_communication;

CREATE TABLE `tbl_communication` (
  `ctrl_no` varchar(20) NOT NULL,
  `subject_matter` varchar(1000) NOT NULL,
  `date_received` date NOT NULL,
  `cat_id` int(10) NOT NULL,
  `orig_id` int(10) NOT NULL,
  `input_by` int(10) NOT NULL,
  `comm_letter` varchar(100) NOT NULL,
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

INSERT INTO tbl_communication VALUES("2014 - 0001","ORDINANCE NO. 161,\nTO AMEND SECTIONS 13, 19 AND 20 OF ORDINANCE NO.\n151, \"THE SCHOLARSHIP PROGRAM OF THE\nMUNICIPALITY OF ARINGAY, LA UNION. \"","2014-01-02","20","12","21","Ord 161 Aringay Scholarship.pdf","2014-01-02","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0002","Submit SB # 4, involving an appropriation of P20M for the enactment of the required appropriation ordinance.","2014-01-03","8","20","21","A SB No. 4.pdf","2014-01-09","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0003","Recommend approval of the FY 2014 GF AB of Sto. Toma, La Union.","2013-12-26","7","3","21","A1 FY 2014 GFAB Sto Tomas.pdf","2014-01-02","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0004","Recommend approval of the FY 2014 GF SB #4 of Sudipen, La Union.","2013-12-27","8","3","21","A2 FY GFSB 4 Sudipen.pdf","2014-01-02","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0005","An Ord Authorizing the Proposed Borrowing of the Mun of Caba, Province of La Union in the amount of P8M to Fund the Expansion of Caba Memorial Park (P5M) & Construction of Legislative Bldg (P3M)","2013-12-27","8","9","21","C Res 77 Caba.pdf","2014-01-02","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0006","Recommend approval of the FY 2014 GF AB, of Tubao, La Union.","2014-01-06","7","3","21","B GFAB 2014 Tubao.pdf","2014-01-09","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0007","Ord # 19, s 2013, An Ord Amending Ord # 20, s 2008, Mun Revenue Code of Bauang, LU, Part Art # 22, Permit Fee for Zoning and Locational Clearance.","2014-01-06","8","13","21","C Ord No. 19 Bauang.pdf","2014-01-09","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0008","Ord # 20, s 2013, Res Enacting an Ord Reclassifying the Parcel of Land Registered Under the Name of Sps. Dominador&LiberataUntalasco with an area of 5,890 sq.m. Located at Brgy Bagbag, this Mun from Agricultural to Comm’l Classification.","2014-01-06","20","13","21","D Ord No. 20 Bauang.pdf","2014-01-09","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0009","Ord # 2011-083, Ord Institutionalizing the S-olace I-nner Peace L-ove A-tonement& W-orship (SILAW) – Moral Recovery Program (MRP) in All Gov’t Depts, Offices, Agencies and Gov’t-Owned & Controlled Corp thru the conduct of Recollection Called SILAW which Stands for Every Month of August of Every Year in the Mun of Santol, LU","2014-01-07","8","15","21","E Ord No. 2011-083 Santol.pdf","2014-01-09","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0010","Ord # 2011-084, Ord Establishing the Mayor’s Action Center 24 7 (MAC 24 7) in the Mun of Santol, LU","2014-01-07","8","15","21","F Ord No. 2011-084 Santol.pdf","2014-01-09","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0011","Ord # 2011-085, Ord Assuring the Continuity of Supplies for Family Planning Services in the Mun of Santol, LU, Calling for the Adopting of a Contraceptive Self-Reliance (CSR) Plan & Allocating Funds for Purpose Thereof.","2014-01-07","8","15","21","G Ord No. 2011-085 Santol.pdf","2014-01-09","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0012","Ord # 2011-087, Ord Enjoining the Office of the DepEd Dist Supervisor, School Administrators Both High School, Elememtary or Primary Levels & Gov’t-Owned and Controlled Corp. Gov Instrumentalities to Include the Singing of the Santol Hymn, Recitation of Santol Credo & Dancing of the Santol Mun Jingle in their Flag Raising Ceremonies, General Assemblies and all Other Special Gatherings and Festivities in the Municipality.","2014-01-07","20","15","21","H Ord No. 2011-087 Santol.pdf","2014-01-09","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0013","Ord # 2012-096, Ord Amending the Title of Ord # 2000-01 of the SB of Santol, LU Including Sec 1 of Said Ordinance.","2014-01-07","20","15","21","I Ord No. 2012-096 Santol.pdf","2014-01-09","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0014","Ord # 2012-102, An Ord Declaring the Month of June of Every Year as Dengue Awareness Month in the Mun of Santol & Appropriating Funds Therefor","2014-01-07","20","15","21","J Ord No. 2012-102 Santol.pdf","2014-01-09","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0015","Ord # 2012-103, An Ord Prohibiting the Unauthorized Manufacture, Production, Use and Sale of Uniforms & Other Paraphernalia that are of Exclusive Use of the Uniformed Personnel of the PNP and the AFP in the Mun of Santol, LU","2014-01-07","20","15","21","K Ord No. 2012-103 Santol.pdf","2014-01-09","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0016","Ord # 2013-104, Ord to Curtail the Sale, Rental, Transfer, Distribution, Manufacture and or Production of Pirated, Counterfeit or Fake Goods, Articles or Services, & for Other Services, & for Other Purposes","2014-01-07","20","15","21","L Ord No, 2013-104 Santol.pdf","2014-01-09","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0017","Ord # 2013-106, An Ord Requiring the Foodservice Industry within the Territorial Jurisdiction of the Mun of Santol, LU to Include ½ Cup Cooked Rice in their Menu.","2014-01-07","20","15","21","M Ord No. 2013-106 Santol.pdf","2014-01-09","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0018","Ord # 2013-108, Ord Amending Ord # 2010-082, known as the Revenue Code of Santol, LU, Part Chapter III, Mayor’s Permit Fees, Art B, Administrative Provision, Sec 5, Duration & Renewal of Permit","2014-01-07","20","15","21","N Ord 2013-108 Santol.pdf","2014-01-09","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0019","Ord # 2013-109, An Ord Creating the Santol Motorized Tricycle Franchising & Regulatory Board (SMTFRB), Providing for its Powers & Functions, & For Other Purposes","2014-01-07","20","15","21","O Ord 2013-109 Santol.pdf","2014-01-09","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0020","Ord # 13-2013, Ord Adopting the Lyrics & Music of the Composition of Mrs. Ildefonsa Q. Guinomma, Luna Dingayan& Pearl Dingayan as the Official Mun Hymn of the Mun of San Gabriel, LU","2014-01-07","20","16","21","P Ord No. 13-2013 San Gabriel.pdf","2014-01-09","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0021","Transmit Res # 82, s 2013, of the SB of Bauang, LU, supporting MDRRMC Res # 01 s 2014, Urging Concerned Agencies of the Gov’t, the PGLU, the DENR-EMB & DENR-MGB, & the DPWH & other agencies to immediately facilitate a coordinated & concrete action plan on preventive measures to address calamities in the Mun of Bauang","2014-01-08","22","13","21","Q Ord No. 82 Bauang.pdf","2014-01-09","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0022","Pammadayaw 2014\n\nDate Agenda - Jan. 9, 2014\nPITO - Recommend KAPUSO MO, JESSICA SOHO for ABEL & BASI Nominee.\nPITO - Recommend NAIMBAG NGA MORNING KAPAMILYA, for ABEL & BASI Nominee.\n\nDate Agenda - Jan. 22, 2014\nBM V Aragon- Nominate the Special Olympics – La Union for BASI AWARD\nBM J Ostrea Jr - Nominate FR. NOLAN R. NABUA, as LUSA\nOPAg - Nominate APOLONIO S. SITO, as LUSA\nBM NC Bacurnay - Nominate DR. LINDA H. LAUDENCIA as LUSA\nBM NC Bacurnay - Nominate GEN. ROLANDO PURUGGANAN as LUSA\nGeraldine Ortega - Nominate LA UNION MEDICAL SOCIETY as ABEL/BASI\n\nPD Delia Mingaracal, DTI - Nominate the ff as ENTREPINOY:\n1.	DOMINGO L. DINGAYAN, Dingayan’s Apiary\n2.	JANICE D. FLORENDO, Floredelz Knitted Garments\n\nBM R Mosuela - Nominate Atty. Benjamin P. Sapitula as LUSA\nBM NC Bacurnay- Nominate Gen Rolando R. Macusi as LUSA","2014-01-08","23","25","21","AGE01-22.14 special.pdf","2014-01-22","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0023","Recommend approval of the FY 2013 GF SB # 9, of Agoo, LU","2014-01-09","8","3","21","A3 FY 2013 GFSB No. 9 Agoo.pdf","2014-01-16","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0024","Recommend approval of the FY 2013 GF SB # 4, of Bagulin, LU","2014-01-09","8","3","21","A2 FY 2013 GFSB No. 4 Bagulin.pdf","2014-01-16","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0025","Recommend approval of the FY 2013 GF SB # 2, of Bacnotan, LU","2014-01-09","8","3","21","A1 FY 2013 GFAB No. 2 Bacnotan.pdf","2014-01-16","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0026","Ord #  168, An Ord Prohibiting Littering in Public Places w/n the Jurisdiction of the Mun of Aringay, LU & Other Related Acts & Providing Penalties for Violation Thereof","2014-01-09","20","12","21","C Ord No. 168 - Aringay.pdf","2014-01-16","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0027","Recommend approval of the FY 2014 GF AB, of Burgos, LU ","2014-01-10","7","3","21","A4 FY 2014 GFAB Burgos.pdf","2014-01-16","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0028","MO # 2, s 2013, Requiring the Foodservice Industry w/n the Territorial Jurisdiction of Rosario, LU to Include ½ Cup of Rice in their Menu & Providing Penalty to Violators Thereof","2014-01-10","20","17","21","D Municipal Ord. 2 s. 2013 Rosario.pdf","2014-01-16","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0029","Commutation of the TLB claim of MR. JESUS WILLIAM M. RAQUEPO, Prison Guard I, OPG, in the amount of P93,190.68","2014-01-13","6","24","21","B Terminal Leave Mr. Jesus William M. Raquepo.pdf","2014-01-16","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0030","Recommend approval of the FY 2014 GF AB of Sudipen, LU","2014-01-13","7","3","21","A5 FY 2014 GFAB Sudipen.pdf","2014-01-16","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0031","Resolution commending the Agoo Children’s Choir for Winning the Silver Diploma in the Recently Concluded International Choral Competition held at the CCP, Manila","2014-01-14","23","28","21","I Agoo children\'s choir.pdf","2014-01-16","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0032","Mun Ord # 24-2013, An Ord Amending the Title, Sec 1, Sec 2.b, 3, 4, 6.a, 6.e, 12.a, 13, 14, 16 of Mun Ord # 29-2012, An Ord Designating Denny’s Park in Consolacion, Agoo, LU as a Special Economic Zone & Prescribing Rates & Regulations on the Rental of Stalls w/ the Area.","2014-01-14","20","27","21","E Mun Ord No. 24-2013 Agoo.pdf","2014-01-16","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0033","Mun Ord # 25-2013, An Ord Mandating All Parents/Guardians of School Children ages 5 Yrs. Old & Above to Enroll in Basic Education in Any Learning Institution in the Mun of Agoo, LU","2014-01-14","20","27","21","F Mun Ord No. 25-2013 Agoo.pdf","2014-01-16","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0034","Mun Ord # 27-2013, An Ord Amending Sec 2.B, Sec 5, & 6 of Mun Ord # 13-2013, An Ord Prohibiting Any Fishing Activity w/n the 200 Meters Radius from the Existing Artificial Reefs in the Mun Waters of Agoo, LU & Providing Penalties for Violation Thereof”","2014-01-14","20","27","21","G Mun Ord No. 27-2013 Agoo.pdf","2014-01-16","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0035","Mun Ord # 29-2013, An Ord Amending Chapter 14, No. 2, 3, 4 & 10 of Mun Ord # 02A-2013, “An Ord Enacting the Code of General Ordinances of the Mun of Agoo, LU & for Other Purposes”","2014-01-14","20","27","21","H mun ord no. 29-2013 agoo.pdf","2014-01-16","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0036","Letter of reconsideration on their Mun Ord # 164, Anti-Truancy Ordinance","2014-01-16","17","12","21","Ord 161 Aringay Scholarship.pdf","2014-02-06","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0037","Letter of clarification on their Mun Ord # 161, Amending their Scholarship Ord","2014-01-16","17","12","21","Ord 161 Aringay Scholarship.pdf","2014-02-13","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0038","Recommend approval of the FY 2014 GF SB # 1, of Tubao, La Union.","2014-01-22","8","3","21","B2 FY 2014 GSFB No. 1 Tubao.pdf","2014-01-30","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0039","Recommend approval of the FY 2014 GF AB, of Aringay, La Union.","2014-01-22","7","3","21","B3 FY 2014 GFAB Aringay.pdf","2014-01-30","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0040","Recommend approval of the FY 2014 GF AB, of Balaoan, La Union.","2014-01-22","7","3","21","B4 FY 2014 GFAB Balaoan.pdf","2014-01-30","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0041","Recommend approval of the FY 2013 GF SB # 1, of Naguilian, La Union","2014-01-22","8","3","21","B1 FY 2013 GFSB No. 1 Naguilian.pdf","2014-01-30","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0042","Request to enter into a Contract of Agreement w/ Dr. Eric Piscawen as Visiting Consultant in Orthopedics at Balaoan Dist Hosp","2014-01-22","17","20","21","AGE01-22.14 special.pdf","2014-01-23","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0043","Request to authorize the payment of Accounts Payable in the amount of P7,106,760.87 to be charged to the Current Appropriations","2014-01-22","17","20","21","AGE01-22.14 special.pdf","2014-01-23","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0044","Request authority to renew the Contract of Consultancy Services of the ff effective Jan 2 to Dec 31, 2014","2014-01-22","17","20","21","AGE01-22.14 special.pdf","2014-01-23","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0045","Ord # 23, s 2013, An Ord Prescribing a Doctor’s Certification Fee on all Death Certificates Signed by the Mun Health Officer of the Mun of Naguilian & Issued by the Office of the Local Civil Registrar & amending for the Purpose Sec 133, Art B of the 2011 Mun Revenue Code of the Mun of Naguilian, La Union.","2014-01-23","20","18","21","D Mun Ord No. 23 Naguilian.pdf","2014-01-30","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0046","Ord # 24, s 2013, An Ord Prescribing Fees for the Annotation of Decrees of Adoption & Nullity of Marriage at the Local Civil Registry Office Amending for the Purpose Sec 133 of the Revenue Code of the Mun of Naguilian, Prov of La Union","2014-01-23","20","18","21","E Mun Ord No. 24 Naguilian.pdf","2014-01-30","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0047","Ord # 31, s 2013, An Ord Prohibiting the Use of Modified Mufflers, Sirens & Horns that Create & Generate Loud & Deafening Sound in Motorcycles and All Types of Vehicles that Ply the Streets & Thoroughfares w/n the Territorial Jurisdiction of the Mun of Naguilian, Prov of LU, and Imposing Penalties in Violation or Infringement Thereof and for Other Purposes","2014-01-23","20","18","21","G Ord No. 31 Naguilian.pdf","2014-01-30","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0048","Commutation of the TLB claim of MR. JEFFERSON G. DOCTOR, Laborer I, OPG, in the amt of P26,031.78","2014-01-23","6","24","21","C1 leave benefit Mr. Jefferson G. Doctor.pdf","2014-01-30","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0049","Request authority to enter into a MOA w/ MERCK SHARP & DOHME (IA) CORP, Makati City for the effective, efficient and innovative implementation of a model LGU Access Program for Pneumonia and Cervical Cancer (HPV) Vaccination Program ","2014-01-24","1","20","21","A MOA PGLU-MSD.pdf","2014-01-30","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0050","Mun Ord # 98, s 2013, Internal Rules of Procedure of the SB of Sudipen, La Union","2014-01-24","20","14","21","H Mun Ord No. 98 s. 2013 Sudipen.pdf","2014-01-30","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0051","Mun Ord # 102, s 2014, An Ord Enacting the Market Code of the Mun of Sudipen, La Union.","2014-01-24","20","14","21","I Mun Ord No. 102 s. 2014 Sudipen.pdf","2014-01-30","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0052","Ord # 169, Prohibiting the Operation of Motorcycles w/o Mufflers or Silencers w/n the Jurisdiction of the Mun of Aringay, La Union.","2014-01-27","20","12","21","J Ord No. 169 Aringay.pdf","2014-01-30","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0053","An Ord Setting the Guidelines & Policies in the Use of the Heavy Equipments Owned & Maintained by the Mun of Aringay, LU","2014-01-27","20","12","21","K Ord 170 Aringay.pdf","2014-01-30","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0054","Commutation of the TLB claim of MS. BRESILDA C. JUCAR, Admin Aide II, PHO, in the amt of P16,539.81","2014-01-27","6","24","21","C2 leave benefit Mrs. Bresilda C. Jucar.pdf","2014-01-30","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0055","Commutation of the TLB claim of MR. RIZALDO M. BENITEZ, Construction Man, OPE, in the amt of P33,013.06","2014-01-27","6","24","21","C3 leave benefit Mr. Rizaldo M. Benitez.pdf","2014-01-30","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0056","SP Camarines Norte, Res # 489-2013 - Support HB 242, An Act Lowering the Mandatory Retirement Age of Gov’t Employee Amending for the Purpose Sec 13(B) & 13(A) of RA 8291, GSIS Act of 1997, & for Other Purposes","2014-01-27","17","34","21","M Res 489-2013 SP Cam Norte Daet.pdf","2014-01-30","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0057","Addendum to Mun Ord # 2013-19, Revenue Code of the Mun of Agoo, La Union.","2014-01-30","17","27","21","G letter - Municipal Ord. No. 2013-19 agoo .pdf","2014-02-05","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0058","Request for the realignment of P10M under the share of RA 7171 for the purchase of add’l lot for the Farmer’s Multi-Purpose Center & Demo Farm.","2014-01-30","9","20","21","RESOLUTION 044-2014.pdf","2014-01-30","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0059","Request authority to enter into a MOA w/ the Mun Gov’t of Rosario, LU, in connection w/ the construction of Farmer’s Multi-Purpose Hall (Phase I) in Brgy. Bangar, Rosario, La Union","2014-01-30","1","20","21","RESOLUTION 043-2014.pdf","2014-01-30","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0060","Recommend approval of the FY 2014 GF AB, of Rosario, LU","2014-02-03","7","3","21","C FY 2014 GFAB Rosario.pdf","2014-02-06","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0061","Commutation of the TLB claim of MR. IGMIDIO A. PADILLA, Farm Worker II, OPVet, in the amt of P24,864.14","2014-02-03","6","24","21","D3 leave benefit Mr. Igmidio.pdf","2014-02-06","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0062","Commutation of the TLB claim of MS. CRESENCIA D. ISIBIDO, Farm Foreman, OPVet, in the amt of P294,886.37","2014-02-03","6","24","21","D2 leave benefit Ms Isibido.pdf","2014-02-06","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0063","Commutation of the TLB claim of HON. KENNETH PAOLO C. TERENG, SPM, OSP, in the amt of P267,659.96","2014-02-03","6","24","21","D1 leave benefit Hon Tereng.pdf","2014-02-06","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0064","Request to authorize the payment of Accounts Payable in the amt of P6,949,627.38 to be charged to the Current Appropriations","2014-02-05","17","20","21","A Let Gov payment of Accounts Payables.pdf","2014-02-06","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0065","SP Misamis Occidental, R # 271-13 - Request GSIS Board of Trustees to adopt strategies to adjust the interest rates of all GSIS Loan in order to make existing loan windows less burdensome to gov’t employees for the benefit of its members","2014-02-05","17","34","21","H Res 271-13 SP Misamis Occidental.pdf","2014-02-06","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0066","Request to enter into the Amended Deed of Donation w/ Partial Revocation of Donation w/ the CDA, donating a 450 sq.m. property at Aguila Rd., Sevilla, CFLU.","2014-02-05","17","20","21","B CDA.pdf","2014-02-06","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0067","Request to enter into a Contract of Agreement, w/ Dr. Carolyn B. Tabora, OB-GYNE.","2014-02-11","17","20","21","A COA with Dr. Carolyn B. Tabora.pdf","2014-02-13","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0068","Request authority to Renew the MOA/Contract of Affiliation of all concerned colleges, universities and schools of Nursing, Caregivers and Midwifery & other Vocational & Technical Institutions for the 5 District Hospitals, Dept and Offices of the Prov for SY 2014-2015","2014-02-11","17","20","21","B renew MOA of all colleges & universities.pdf","2014-02-13","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0069","Request to pass a Res to adjust the present salary Grade of Dr. Godofredo G. Garcia, Chief of Hospital II, NDH from SG 24-5 (P51,975/mo) to SG 25-5 (P56,133/m0) effective April 5, 2014","2014-02-11","17","20","21","C Dr. Godofredo G. Garcia.pdf","2014-02-13","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0070","Commutation of the TLB claim of MR. LEANDRO R. MUPAS, Admin Aide III, SP Office, in the amt of P27,870.83","2014-02-11","6","24","21","D6 leave benefit Mr. Leandro R. Mupas.pdf","2014-02-13","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0071","Request for the realignment of the amount of P3M & the use from the Item Peace & Order Initiative Fund from CY 2014 to Intelligence & Confidential Fund.","2014-02-13","9","20","21","A COA with Dr. Carolyn B. Tabora.pdf","2014-02-13","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0072","Ord # 167, An Ord Creating the Aringay Mun Housing Board, Defining Its Clearinghouse Functions Pursuant to EO # 708, s 2008, and for Other Purposes.","2014-02-13","20","12","21","H Ord No. 167 Aringay.pdf","2014-02-20","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0073","Commutation of the TLB claim of MR. AGAPITO A. BUADO, Admin Aide VI, RDH in the amt of P9,868.84","2014-02-13","6","24","21","G1 terminal leave Mr. Agapito A. Buado, Jr..pdf","2014-02-20","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0074","Commutation of the TLB claim of MR. CIRILO T. JARAVATA, Farm Worker I, OPVet, in the amt of P159,684.14","2014-02-13","6","24","21","G2 terminal leave Mr. Cirilo T. Jaravata.pdf","2014-02-20","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0075","Commutation of the TLB claim of MRS. FELICITAS B. MIAGA, Laundry Worker I, NDH in the amt of P129,364.54","2014-02-13","6","24","21","G4 terminal leave Mrs. Felicitas B. Miaga.pdf","2014-02-20","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0076","Commutation of the TLB claim of MS. ANNABELLE F. SAMONG, Admin Aide III, SP Office, in the amt of P63,543.64","2014-02-14","6","24","21","G3 terminal leave Ms. Annabelle F. Samong.pdf","2014-02-20","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0077","Endorse the Application for Accreditation of the Sultanate League of Northern Luzon","2014-02-17","17","20","21","I Accreditation Sultanate League.pdf","2014-02-20","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0078","Endorse the draft resolutions:\n\na.	Establishing a Local Legislative-Executive Dev’t Advisory Committee (LLEDAC)\nb.	Creating an ELA Oversight Committee & for Other Purposes\n","2014-02-19","17","20","21","C LEDAC ELA oversight committee.pdf","2014-02-20","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0079","Request to enter into a MOA w/ the Population Services Pilipinas, Inc, Marie Stopes Clinic, Urdaneta, Pangasinan in connection w/ the Population & Dev’t of the Province thru the Bilateral Tubal Ligation (BTL) for qualified and interested women of reproductive age.","2014-02-19","17","20","21","B MOA Population Services Pilipinas Inc (BTL).pdf","2014-02-20","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0080","Submit the consolidated CY 2014 Supplemental AIP from the different offices of the PGLU\n\na.	OPG\nb.	PGSO\nc.	PHO","2014-02-19","13","20","21","A CY 2014 SAIP OPG PGSO PHO.pdf","2014-02-20","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0081","Commutation of the TLB Claim of MS. PRISCA A. PATACSIL, Midwife II, NDH, in the amt of P367,269.83","2014-02-19","6","24","21","B terminal leave Mrs. Prisca A. Patacsil.pdf","2014-02-27","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0082","Recommend approval of the FY 2014 GF AB, of San Gabriel, LU","2014-02-21","7","3","21","A FY 2014 GFAB San Gabriel.pdf","2014-02-27","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0083","Recommend approval of the FY 2014 GF AB, of Santol, LU","2014-02-27","7","3","21","C FY 2014 GFAB Santol.pdf","2014-03-06","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0084","An Ord Establishing the Mun Birthing Clinic of Pugo, LU & Defining Its Functions, Operations & Administration","2014-02-28","20","7","21","D Ord 2013-108 Pugo - Birthing Clinic.pdf","2014-03-06","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0085","Ord # 2013-109, A Code Promulgating Policies and Measures for the Prevention & Control of HIV/AIDS in the Mun of Pugo, LU","2014-02-28","20","7","21","D Ord 2013-108 Pugo.pdf","2014-03-06","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0086","Request to enact a Board Res of Congratulations to Mr. Sephi Marz Gines Liclican in recognition of his outstanding achievement in the International Math Competition.","2014-03-04","25","20","21","A Urgent Ltr Gov request Res of Congratz.pdf","2014-03-06","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0087","Mun Ord # 01-2014, An Ord Requiring All Elem & HS Principals/Administrators in the Mun of San Juan to Hold an Info Campaign Not Shorter than 5 Minutes Every Mon After Flag Ceremony on How to Prevent Drug Abuse","2014-03-04","20","6","21","F Mun Ord 01-2014 San Juan.pdf","2014-03-06","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0088","Ord # 1-2014, An Ord Amending Ord # 10-2013, An Ord Regulating the Sale, Distribution, Display, Storage & Use of Firecrackers & Other Pyrotechnic Devices w/n the Jurisdiction of San Gabriel, LU","2014-03-05","20","16","21","H Ord No 1-2014 San Gabriel amend Ord 10-2013.pdf","2014-03-20","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0089","Ord # 2-2014, An Ord Amending the 2013 Env’t Code of the Mun of San Gabriel, LU","2014-03-05","20","16","21","I Ord No 2-2014 San Gabriel environment code.pdf","2014-03-20","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0090","Commutation of the TLB claim of MR. JOVENTINO M. NISPEROS, Admin Aide I, Balaoan Dist Hosp, in the amt of P193,518.45","2014-03-05","6","24","21","F1 Terminal Leave Mr Joventino M Nisperos.pdf","2014-03-20","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0091","Recommend approval of the FY 2014 GF SB # 1, of Agoo, LU","2014-03-05","8","3","21","E2 FY 2014 GFSB No. 1 Agoo.pdf","2014-03-20","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0092","Recommend approval of the FY 2014 GF SB # 1, of Balaoan, LU","2014-03-05","8","3","21","E1 FY 2014 GFAB No. 1 Balaoan.pdf","2014-03-20","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0093","Ord # 480, s 2014, Market Code of Bacnotan, LU (2014 Version)","2014-02-05","20","19","21","J Ord 480 s 2014 Bacnotan Market Code.pdf","2014-02-20","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0094","Ord # 481, s 2014, The Amended Env’t Code of Bacnotan, LU, s 2014","2014-03-05","20","19","21","K Ord 481 s 2014 Bacnotan envi code.pdf","2014-03-20","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0095","Request to charge P94,660.00 to the Current Appropriation CY 2014 for the purchase guns, (Capital Outlay) and Ammunitions (Supplies) under the OPG","2014-03-06","17","20","21","E2 FY 2014 GFSB No. 1 Agoo.pdf","2014-03-06","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0096","Letter of Gov. Manuel C. Ortega respectfully endorsing to the Hon.\nBody the Three-Year Provincial Commodity Investment Plan (PCIP)\nof the Province of La Union for 2014-2017","2014-03-10","17","20","21","A 3 yr Provl Com invsmnt pln 2014-2017.pdf","2014-03-20","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0097","Mun Ord # 42-2012, An Ord to Prohibit the Unauthorized Wearing of PNP/AFP Uniforms by any Individual who is not a Legitimate Member of the PNP/AFP w/n the Territorial Jurisdiction of the Mun of Luna, LU","2014-03-10","20","2","21","G Mun Ord 42-2012 Luna PNP-AFP Unioform.pdf","2014-03-20","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0098","Commutation of the TLB claim of MS. AURORA R. BENGSON, Admin Asst III, PLO, in the amt of P80,857.62","2014-03-13","6","24","21","F2 Terminal Leave Ms. Aurora R. Bengson.pdf","2014-03-20","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0099","Ord # 13, s 2013, An Ord Amending the 2002 Traffic Ord of the Mun of Bauang, LU, Part Art II – Parking, No Parking, Loading and Unloading Zones and Providing Add’l Provisions Thereto","2014-03-13","20","13","21","M Ord 14 s 2013 Bauang II,17, 11s2011.pdf","2014-03-20","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0100","Ord # 14, s 2013, An Ord Amending Art II, Sec 17 of Ord # 11, s 2011, “An Ord Amending Ord # 15, s 2008, An Ord Adopting a Comprehensive Transportation and Traffic Regulations for the Administration and Enforcement, Providing Penalties for Violation Thereof, and for the Repeal of All Ordinances in Conflict Therewith, for the Enforcement of the “No Left Turn Policy” and the ‘Modification of the Route of Traffic During Interment and & Providing Add’l Provisions Thereof”","2014-03-13","20","13","21","M Ord 14 s 2013 Bauang II,17, 11s2011.pdf","2014-03-20","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0101","Ord # 4, s 2014, An Ord Amending Ord # 2, s 2006, “An Ord Fixing the Operation of Carnival Amusement Shows and Carnival Rides by any Individual or Establishment to 60 Days & Establishing a Distance of not Less than 20 Lineal Meters from Schools w/n the Jurisdiction of the Mun of Bauang,” Part Sec 3 & Providing Add’l Provisions Thereof","2014-03-13","20","13","21","N Ord 4 s 2014 Bauang amend Ord 2 s 2006.pdf","2014-03-20","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0102","Mun Ord # 1, s 2014, Ord Governing the Sale, Use & Disposition of Burial Lots at the Newly Developed Area of the Mun Cemetery of the Mun of Balaoan, LU","2014-03-14","20","1","21","O Mun Ord 01 S 2014 Balaoan new Mun Cemetery.pdf","2014-03-20","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0103","Submit the draft of the IRRs of Prov’l Ord # 011-2010, An Ord Amending Ord # 005-1999, La Union Investment and Incentive Code (LUIIC) of 1999”","2014-03-19","23","20","21","B  Provl Ord 011-2010,  Ord 005-1999 LUIIC.pdf","2014-03-20","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0104","Request  to charge the amt of P18,160.23 to the Current Appropriation CY 2014 for the installation of Micro Mini Blinds at the Office of BM Reynaldo M. Mosuela under the MOE CY 2014 Appropriation of the SP","2014-03-19","17","20","21","C P18160-23 CY 2014 opis Atty Mosuela.pdf","2014-03-20","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0105","Request to pass a Res adjusting the present SG of MR. FRANCISCO D. VENTURA, Radiologic Technologist II, Rosario, Dist Hosp from SG 13/S-7 (P22,755/mo) to SG 14/S-7 (P24,461/mo) effective Feb 26, 2014","2014-03-19","17","20","21","D Mr Francisco D Ventura salary increment.pdf","2014-03-20","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0106","Ord # 10, s 2013, An Ord Requiring the Foodservice Industry w/n the Territorial Jurisdiction of the Mun of Naguilian, LU to Include ½ Cup of Cooked Rice in their Menu","2014-03-19","20","18","21","F Ord 10 s 2013 Naguilian half cooked rice.pdf","2014-03-27","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0107","Ord # 28, s 2013, An Ord Institutionalizing a Program on Awards and Incentives for the 37 Brgys in the Mun, Appropriating Funds Therefor and for other Purposes","2014-03-19","20","18","21","G Ord 28 s 2013 Naguilian  37 brgys.pdf","2014-03-27","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0108","Letter requesting to set aside Mun Tax Ord # 2013-9, of the SB of Agoo, LU","2014-03-20","17","27","21","K Pablo M Millanes Ord 2013-9 of Agoo.pdf","2014-03-27","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0109","Recommend approval of the FY 2014 GF AB, of CSF, LU","2014-03-20","7","3","21","C4 FY 2014 GFAB City of San Fernando.pdf","2014-03-27","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0110","Recommend approval of the FY 2014 GF AB, of Luna, LU","2014-03-20","7","2","21","C2 FY 2014 GFAB Luna.pdf","2014-03-27","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0111","Recommend approval of the FY 2014 GF AB, of San Juan, LU","2014-03-20","7","3","21","C3 FY 2014 GFAB San Juan.pdf","2014-03-27","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0112","Recommend approval of the FY 2014 GF SB # 1, of Sto. Tomas, LU","2014-03-20","8","3","21","C1 FY 2014 GFSB1 Sto Tomas.pdf","2014-03-27","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0113","Unnumbered Res, s 2014\n, Res Proposing a War Memorial Museum to pay tribute to the valor and bravery of the sons and daughters of the province who fought the invaders in the Asian Pacific War of 1941-45 to the preserve the peace, freedom and democratic institution","2014-03-24","22","5","21","JC Gvmnt Retirees Association of SFC La Union.pdf","2014-03-27","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0114","Request to amend Res # 355-2013 as regards the lot to be leased to the FA from 664.65 to 1,248 sq.m.","2014-03-24","17","20","21","A Urgent Res 355-2013 1248 sq m DA.pdf","2014-03-27","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0115","Recommend approval of the FY 2014 GF SB # 2, of Balaoan, LU","2014-03-28","8","3","21","C1 FY 2014 GFSB 2 Balaoan .pdf","2014-04-03","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0116","Recommend Approval of the FY 2014 GF AB, of Bauang, La Union.","2014-03-28","7","3","21","C2 FY 2014 GFAB Bauang.pdf","2014-04-03","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0117","Mun Ord # 02-2014, An Ord Institutionalizing the Granting of an Award of Recognition to the Centenarian Sr. Citizens of the Mun of Agoo, LU","2014-03-31","20","27","21","G Mun Ord 02-2014 award of recog Agoo.pdf","2014-04-03","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0118","Enjoining all municipalities/city of the Prov of La Union to come up w/ their own Localized Anti-Crime Action Plan (LACAP)","2014-04-02","24","35","21","F DRaft RESOLUTION LACAP.pdf","2014-04-03","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0119","Ord # 33, s 2013, An Ord Requiring the Brgys in the Mun of Naguilian, LU to Install Flood Gauge/s in Flood Prone Areas","2014-04-02","20","18","21","H Ord 33 Series 2013 Naguilian prone areas.pdf","2014-04-03","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0120","Request to enter into a MOA w/ the Commission of Population (POPCOM) Region I in connection w/ the donation of 1 unit complete set of computer w/ printer for the data base management and other population-related activities of the PGLU.","2014-04-02","17","20","21","A MOA POPCOM 1 Unit Computer w printer.pdf","2014-04-03","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0121","Submit the consolidated CY 2014 Supplemental AIP of the following offices for consideration:\n\na.	Office of the Prov’l Assessor\nb.	Office of the Prov’l Governor\n","2014-04-02","13","20","21","B CY 2014 Supplemental AIP Assessor n OPG.pdf","2014-04-03","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0122","Ord # 2014-110, Regulating the Use of a Modified Muffler or “WabWab” w/n the Mun of Pugo, LU","2014-04-03","20","7","21","C Ord 2014 110 Pugo La Union.pdf","2014-04-10","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0123","Endorse the 5-yr Prov’l Disaster Risk Reduction and Management (PDRRMC/DRReaM) CY 2014-2018","2014-04-03","23","20","21","A Ltr of Gov MOA BFAR-RF01 Urgent.pdf","2014-04-03","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0124","Request to allow him to charge the wages and other benefits of casual employees against the appropriation of vacant positions of offices where they are detailed","2014-04-03","17","20","21","Ltr of Gov wages employees CY 2014.pdf","2014-04-03","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0125","Request to pass a resolution commending the TESDA Champions during the 15th Regional Skills Competition, to wit:\n\na.	Jeffrey V. Sagud, Gold, Restaurant Service\nb.	Benesse M. Ancheta, Gold, Graphic Design\nc.	Bryan Adam P. Maglambayan, Gold, Electrical Installation\nd.	Dennis V. Lachuan, Gold, Automobile Technology\ne.	Jevanry L. Juan, Gold, Hairdressing\nf.	Angelica G. Marzo, Silver, Caring\n","2014-04-03","17","20","21","Ltr of Gov 15th rgl Skills Cmpttion winners.pdf","2014-04-03","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0126","Endorse the letter of DionyMamaril, CES, Jail Chief Superintendent & OIC, BJMP regarding the proposed HB Nos. 2217 & 2732 pertaining to the proposed amendment of Sec 61, Chapter V, of RA 6975 transferring the supervision and control of Prov’l Jails under the prov’l gov’t to the BJMP","2014-04-03","23","20","21","Ltf of Gov propsoed house bill nos 2217 n 2732.pdf","2014-04-03","1","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0127","Request authority to enter into a MOA w/ BFAR RFOI I, the Mun of Sto. Tomas & the Small Fisheries Asso. Of Casantaan, the Mun of Bacnotan & the Pandan Fishermen Asso, the Mun of San Juan and the Taboc Fishermen Asso., the Mun of Bauang and the Bauang Fishing Group Consumers Coop, the Mun of Bangar and the Mindoro FisherfolkAsso., the Mun of Balaoan & the ParaoirFisherfolkAsso. in connection w/ the grant of Payao projects and their respective beneficiaries intended for the implementation of fishery programs and projects in the province.","2014-04-07","17","20","21","A Ltr of Gov MOA BFAR-RF01 Urgent.pdf","2014-04-10","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0128","Ord # 164, The Anti-Truancy Ord for Elem & H/S Students in Aringay, LU","2014-04-10","20","12","21","B Ord 164 Anti-Truancy Aringay La Union.pdf","2014-04-15","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0129","Mun Ord # 02-2014, Comprehensive Smoke Free Ord of the Mun of the Mun of San Juan, La Union.","2014-04-10","20","6","21","A Mun Ord 02-2014 Cmprhnsve Smoke-Free SJ, LU.pdf","2014-04-15","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0130","Mun Ord # 01-2014, Traffic Management Code of the Municipality of Bagulin.","2014-04-11","20","4","21","C Mun Ord 01-2014 Traffic mgmt Code Bagulin LU.pdf","2014-04-15","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0131","Letter of Governor Manuel C. Ortega respectfully requesting the \nHonorable Body to kindly review for adoption the attached 10-year Provincial Solid Waste Management Plan CY 2014-2023 approved by the Provincial Solid Waste Management Board (PSWMB) on 23 January 2014. This plan is vital and necessary in our major environment program detailed planning and implementation for effective preservation, protection of public health, conservation of our environment, life and natural resources.","2014-04-14","17","20","21","B1 10 Yr Prvcl Solid Waste Mgmt Plan 2014-2023.pdf","2014-04-24","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0132","Request Sec. Rogelio L. Singson, DPWH, to cause the immediate repair of the damaged portions of the AmburayanRiver Dike Part. at Brgys. Ma. Cristina West, Ma. Cristina East and Gen. Prim West, all of the Mun of Bangar, LU","2014-04-14","17","36","21","CR1 Public Draft Res DPWH.pdf","2014-04-30","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0133","Request authority to enter into a MOA w/ BFAR RFO I, DMMMSU IF, the Mun of Rosario, LU and Brgy. RabonCluster of Seaweed Growers in connection w/ the implementation of Seaweed Dev’t Program for the implementation of fishery programs and projects in the area.","2014-04-15","17","20","21","A MOA (DMMSU-IF) (BFAR-RFOI).pdf","2014-04-24","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0134","Mun Ord # 03-2014, An Ord Imposing Restriction of Entry to Non-Duly Certified Butchers at the Mun Slaughterhouse.","2014-04-15","20","6","21","E Mun Ord 03-2014 Mun San Juan.pdf","2014-04-24","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0135","Ord # 482, s 2014, Ord Amending Ord # 480, s 2013, Ord Creating the Mun HIV/AIDS Council.","2014-04-16","20","19","21","F Ord 482 Series 2014 Bacnotan La Union.pdf","2014-04-24","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0136","Res # 14, s 2014, Giving full authority to Hon. Ferdinand Tumbaga, Mun Mayor, to donate 400 sq.m. from the lot owned by the Mun of Bagulin, LU to the PNP to be utilized in the construction of a “Type C” Police Station of this municipality (Basis SP Res # 123-2008)","2014-04-21","22","4","21","D Res 14 Series 2014 Mun Bagulin .pdf","2014-04-24","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0137","Ord # 07, s 2013, An Ord Institutionalizing the Pre-Marriage Counselling Program of the Mun of Naguilian, LU, Providing its Policy, Guidelines and Other Purposes (Amendment Sec 6(a) and (b) Pre Marriage Counselling Fee)","2014-04-21","20","18","21","J Ord 07 s 2013 Res214-2013 Mun Naguillian.pdf","2014-04-24","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0138","Ord # 23, s 2013, An Ord Prescribing a Doctor’s Certification Fee on All Death Certificates Signed by the Mun Health Officer of the Mun of Naguilian and Issued by the Office of the Local Civil Registrar and amending for the Purpose Sec 133, Article B of the 2011 Mun Revenue Code of the Mun of Naguilian, LU ","2014-04-21","20","18","21","H Ord 23 S 2013 and Ord 24-2013  Naguilian.pdf","2014-04-24","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0139","Ord # 24, s 2013, An Ord Prescribing Fees for the Annotation of Decrees of Adoption and Nullity of Marriage at the Local Civil Registry Office Amending for the Purpose Section 133 of the Revenue Code of the Mun of Naguilian, Prov of LU ","2014-04-21","20","18","21","I Mun Ord 24 Series 2013 Mun Naguilian.pdf","2014-04-24","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0140","Res # 64, s 2013, Request the SP, Prov of LU to Declare the Balecbec-Basca Rd as an Extension of the Naguilian-Caba Prov’l Rd","2014-04-21","22","18","21","G Res 64 Series 2013 Mun Naguilian .pdf","2014-04-24","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0141","Mun Ord # 03-2014, An Ord Imposing Penalty to Vendors from Selling Double Dead Meat (Bocha), Hot Meat and Spoiled Meat to Consuming Public.","2014-04-22","20","6","21","E Mun Ord 03-2014 Mun San Juan.pdf","2014-04-24","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0142","Request for the amendment of Section10 of SP Ordinance No.3-94 from the P50T to P1M appropriation intended for the promotion of voluntary blood ","2014-04-23","21","20","21","C Amend SP Ord 3-94  .pdf","2014-04-24","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0143"," Mun Ord# 02 S.2014, Ord Establishing a simplified Business Permit  and Licensing Process in the Municipality of Balaoan, La Union","2014-04-23","20","1","21","E Mun Ord 02 S 2014 Balaoan La Union.pdf","2014-04-30","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0144","Recommend approval of the FY 2014 GF AB, of Bagulin, LU","2014-04-24","7","3","21","D1 FY 2014 GFAB Bagulin.pdf","2014-04-30","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0145","Recommend approval of the FY 2014 GF AB, of Pugo, LU","2014-04-24","7","3","21","D2 FY 2014 GFAB Pugo.pdf","2014-04-30","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0146","Recommend approval of the FY 2014 GF SB # 1, of Sudipen, La Union.","2014-04-24","8","3","21","D3 FY 2014 GFSB 1 Sudipen.pdf","2014-04-30","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0147","Recommend approval of the FY 2014 GF SB # 2, of Agoo, La Union.","2014-04-25","8","3","21","FY 2014 GFSB 2 Agoo.pdf","2014-04-30","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0148","Joint Affidavit Complaint against SBM Renato Laquisan, San Gabriel, La union.","2014-04-25","17","16","21","G Joint Affidavit Complaint.pdf","2014-04-30","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0149","Request authority to enter into a MOA w/ DPWH, 2ndEng’g Dist, 1stEng’g Dist in connection w/ the implementation of the Special Local Road Fund (SLRF) w/ funding under the MVUC Special Local Road Fund ","2014-04-28","17","20","21","B Ltr of Gov DPWH SLRF.pdf","2014-04-30","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0150","Request for the transfer of the position Asst Prov’l Gov;t Dept Head under the Prov’l Legal Office and its corresponding appropriation to the Office of the Prov’l Acct.","2014-04-28","17","20","21","A Ltr of Gov Request Transfer Assitant.pdf","2014-04-30","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0151","Invitation to the Local Tour Guide Training Course on May 12-23, 2014 from 8-5 at the PPA w/c is designed to create a pool of DOT-accredited local tour guides in the province","2014-04-28","24","20","21","C Ltr of Gov Local Guide Training Course.pdf","2014-04-30","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0152","Mun Ord # 4-2014, An Ord Granting Franchise of Tricycle-for-Hire to Qualified Applicants & Regulating their Operations w/n the Mun of San Gabriel, LU","2014-04-28","20","16","21","F Ord 4-2014 San Gabriel tricycle.pdf","2014-04-30","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0153","Request to enter into a MOA w/ DTI Prov’l Office re: grant of F/A amounting P950,000.00 under the agency’s shared Service Facility (SSF) Program as add’l equipment of the LU Honeybee Center ","2014-04-30","17","20","21","A Ltr of Gov Request Transfer Assitant.pdf","2014-04-30","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0154","Request approval of the amount of P15,200.00 incurred by BM Nancy Corazon Bacurnay during the 4th Quarter Regular Nat’l Council of PBMLP to the current appropriations CY 2014 under the Travelling & Registration Fee of the SP Office","2014-04-30","17","20","21","A Ltr of Gov Request Transfer Assitant.pdf","2014-04-30","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0155","Commutation of the TLB claim of MRS. ERLINDA C. OSTREA, Nurse IV, Balaoan Dist Hosp, in the amount of P351,421.04\n\nCommutation of the TLB claim of MR. ERNESTO F. BAUTISTA, Sanitation Inspector I, PHO, in the amount of P192,727.53\n","2014-01-17","6","24","21","A1 leave benifit Mrs. Erlinda C. Ostrea.pdf","2014-01-23","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0156","Commutation of the TLB claim of MR. PAUL ANTHONY FLORES, Prison Guard I, OPG, in the amt of P59,381.97","2014-05-08","6","24","21","E Terminal Leave Paul Anthony Flores.pdf","2014-05-15","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0157","Recommend approval of the FY 2014 GF SB # 1, of Bagulin, LU","2014-05-09","8","3","21","D1 FY 2014 GFSB 1 Bagulin.pdf","2014-05-15","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0158","Recommend approval of the FY 2014 GF SB # 1, of Pugo, La Union.","2014-05-09","8","3","21","D2 FY 2014 GFSB 1 Pugo.pdf","2014-05-15","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0159","Request to pass a Resolution adjusting the present Salary Step to one step higher of the salary of the ff RDH employees, effective Jan 1, 2014, to wit:\n\na.	Milagros F. Estabillo – Nurse I\nb.	Alexander N. Flores – Admin Off V\nc.	Anna Lorraine A. Rebadavia – Med Tech I\n","2014-05-14","17","20","21","F Request Salary Increment.pdf","2014-05-15","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0160","Mauro Libatique, PPDC - Forward the CLUP and Zoning Ord of the Mun of Bangar, LU for CY 2013-2022","2014-05-14","17","34","21","G CLUP  ZO Mun of Bangar La Union CY 2013-2022.pdf","2014-05-15","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0161","Letter of Governor Manuel C. Ortega respectfully submitting to the\nHonorable members Supplemental Budget No. 1 involving a Total Appropriation of P25,015,792.00 for the enactment of the required appropriation ordinance.","2014-05-14","8","20","21","MIN05-08.14.pdf","2014-05-15","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0162","Commutation of the TLB claim of MR. PAULUS O. FOLLOSCO, Laborer I, OVG, in the amt of P10,317.43","2014-05-14","6","24","21","C Terminal Leave Paulus O Follosco.pdf","2014-05-22","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0163","City Ord # 2014-01, An Ord Amending City Ord # 2013-01, An Ord Requiring the Foodservice Industry w/n the Territorial Jurisdiction of the CSF, LU to Include ½ Cup of Cooked Rice in their Menu","2014-05-14","20","5","21","D City Ord 2014-01 CSFLU.pdf","2014-05-22","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0164","City Ord # 2014-02, An Ord Prohibiting the Use, Sale, Distribution and Advertisement of Cigarettes and other Tobacco Products in Certain Places, Imposing Penalties for Violations Thereof, and Providing Funds Therefor, and for Other Purposes and Repealing City Ord # 2011-05, An Ord Regulating Smoking in the CSF and Providing Penalties for Violation Thereof","2014-05-14","20","5","21","E City Ord 2014-02 CSFLU.pdf","2014-05-22","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0165","Draft Ordinance No. 058-2014 entitled: \"An Act Prohibiting the Practice of “Tandok” in Treating Animal Bites within the Territorial Jurisdiction of the Province and Providing Penalties for Violation Thereof.\"","2014-05-21","21","36","21","H Draft Ord. No. 058-2014.pdf","2014-05-22","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0166","Mun Ord # 05-2014, An Ord Requiring Owners of Hotels and Resorts to Install Placards Informing the Foreign and Local Tourists that Night Swimming is Banned from 6PM to 6AM and Warning in the Hazards of Swimming Under the Influence of Liquor","2014-05-21","20","6","21","F Mun Ord No 05-2014 San Juan La Union.pdf","2014-05-22","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0167","Request the enactment of a Res for the granting of salary step increment to qualified employees for CY 2014","2014-05-26","17","20","21","B Ltr Gov Step Increment for CY 2014.pdf","2014-05-29","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0168","Dr. Mauro Libatique, Jr, PPDC - Forward the CLUP/Zoning Ord of the Mun of San Juan, LU for CY 2013-2022","2014-05-26","23","34","21","C CLUP & Zoning Ordinance of SJ.pdf","2014-05-29","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0169","Request authority to enter into an Implementation Management Agreement (IMA) w/ DA in connection w/ the implementation of the sub-project of the PRDP","2014-05-27","17","20","21","A Ltr Gov PRDP IMA URGENT.pdf","2014-05-29","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0170","City Ord # 2014-03, An Ord Regulating the Use of Plastic and Styrofoam in the City of San Fernando and Providing Penalties for Violations Thereof","2014-05-27","20","5","21","D City Ord 2014-03 SFLU.pdf","2014-05-29","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0171","Mun Ord # 50, s 2014, Municipal Comprehensive Zoning Ord of Burgos, La Union.","2014-05-28","20","23","21","G Mun Ord 50 s 2014 Burgos Cmprhnsve Zoning.pdf","2014-06-05","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0172","Recommend approval of the FY 2014 GF SB # 2, of Tubao, LU","2014-05-28","8","3","21","A1 FY 2014 GFSB no 2 Tubao LU.pdf","2014-06-05","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0173","Ord Providing for the Creation of the Prov\'l Rabies Control Committee in the Prov of LU Defining its Functions and for Other Purposes","2014-05-28","21","35","21","M Draft Ordinance No 057-2014 anti rabies.pdf","2014-06-19","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0174","Mun Ord # 06-2014, An Ord Prohibiting Business Establishments in the Mun of San Juan, LU to Charge any Fee to Sr. Citizens, PWD’s and Expectant Mothers for the Use of Restrooms or CRs and Providing Penalties for Violation Hereof.","2014-05-29","20","6","21","F Mun Ord No 06-2014.pdf","2014-06-05","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0175","Ord # 2, s 2014, An Ord Promoting 100% Smoke-Free Env’t, Tobacco Advertisement Ban and Access Restriction of Tobacco Products in Rosario, LU & Imposing Penalties for Violations Thereof and for Other Purposes.","2014-05-30","20","17","21","C Ord No 2 CS 2014 Rosario.pdf","2014-06-05","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0176","Ord # 2014-111, An Ord Adopting the Implementation of the Nat’l Plan of Action Plan for Infant and Young Child Feeding in the Mun of Pugo, La Union.","2014-05-30","20","7","21","D Ord No 2014-111.pdf","2014-06-05","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0177","Ord # 2014-112, Establishing the Mun Abattoir of Pugo, LU and Prescribing Policies for the Management and Operation Thereof, and Regulating the Sale of Meat and Meat Products for Public Consumption, Imposition of Fees and Charges and Imposing Penalties in Violation Thereof.","2014-05-30","20","7","21","E Ord No 2014-112 Pugo.pdf","2014-06-05","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0178","Recommend approval of the FY 2014 GF AB, of Caba, La Union.","2014-05-30","7","3","21","A4 FY 2014 GFAB Caba LU.pdf","2014-06-05","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0179","Recommend approval of the FY 2014 GF SB # 2, of Pugo, La Union.","2014-05-30","8","3","21","A2 FY 2014 GFSB No 2 Pugo LU.pdf","2014-06-05","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0180","Recommend approval of the FY 2014 GF SB # 2, of Sudipen, La Union.","2014-05-30","8","3","21","A3 FY 2014 GFSB No 2 Sudipen LU.pdf","2014-06-05","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0181","Commutation of the TLB claim of MR. ARNOLD CASTANEDA, Revenue Collection Clerk I, PTO, in the amt of P66,780.92.\nCommutation of the TLB claim of MR. BEN DUCUSION, Admin Aide I, PTO, in the amt of P259,481.48.\nCommutation of the TLB claim of MR. GABRIEL C. FLORES, Prison Guard I, OPG, in the amt of P174,927.09.\n","2014-06-04","6","24","21","B1 TL Mr. Arnold L. Castañeda.pdf","2014-06-05","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0182","Inform that the Metro Agoo Waterworks Inc. will soon establish a water system thereat thereby entailing excavation works in the main thoroughfares and brgy feeder roads in Tubao & Agoo.","2014-06-06","23","27","21","J Ltr Hon Sandra Y. Eriguel Agoo MAWI.pdf","2014-06-11","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0183","Recommend approval of the FY 2014 GF SB # 1, of Bangar, La Union.","2014-06-06","8","3","21","A1 FY 2014 GFSB1 Bangar.pdf","2014-06-11","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0184","Recommend approval of the FY 2014 GF SB # 1, of Luna, La Union.","2014-06-06","8","3","21","A2 FY 2014 GFSB1 Luna.pdf","2014-06-11","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0185","Commutation of the TLB claim of MR. FRANCISCO VENTURA, Radiologic Technologist II, RDH, I the amt of P438,873.01.\n\nCommutation of the TLB claim of DR. GODOFREDO GARCIA, COH, NDH, in the amt of P958,931.04\n","2014-06-06","6","24","21","B1 TL Dr. Godofredo G. Garcia.pdf","2014-06-11","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0186","Mun Ord # 07-2014, An Ord Mandating the Establishment of a Brgy Violence Against Women and their Children Desk in the 49 Brgys of Agoo, La Union.","2014-06-10","20","27","21","C Mun Ord No 07-2014 Agoo Women Desk.pdf","2014-06-11","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0187","Mun Ord # 08-2014, An Ord Amending the Title, Sec 4 & 5 of Mun Ord # 25-2013 as an Ord Mandating All Parents/Guardians in Agoo to Enroll Their Children Ages 5 Yrs. Old & Above in Basic Education in Any Learning Institution w/n the Mun of Agoo, LU","2014-06-10","20","27","21","D Mun Ord No 08-2014 Agoo Amend Ord 25-13.pdf","2014-06-11","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0188","Romeo Ramos/\nFlorenda Flores - Request an advise/proper action to solve the problem of the selling of one Pedro Flores to Ms Cristina Ordinado at Pindangan Access Rd, San Fernando City.","2014-06-10","17","34","21","E Pindangan Road, Parian .pdf","2014-06-11","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0189","Indorse the application of NORTESURLU and PITA for the support through a resolution of the SP on the possible exemption from LTFRB’S Office Order No. 2014-126 particularly sub-paragraph (b) thereof .","2014-06-10","26","36","21","L NORTESURLU PITA.pdf","2014-06-19","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0190","Mun Ord # 07-2014, An Ord Increasing the Number of Tricycle Franchise to 1000 Units, as Amended Furthermore.","2014-06-11","20","6","21","E Mun Ord No 07-2014 San Juan.pdf","2014-06-19","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0191","Mun Ord # 08-2014, An Ord Imposing Penalty to Vendors from Selling Double Meat (Bocha), Hot Meat and Spoiled Meat to Consuming Public, As Amended.","2014-06-11","20","6","21","F Mun Ord No 08-2014 San Juan.pdf","2014-06-19","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0192","Mun Ord # 09-2014, San Juan Public Utility Tricycle Ordinance.","2014-06-11","20","6","21","G Mun Ord No 09-2014 San Juan.pdf","2014-06-19","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0193","Proposed Amendments of Prov’l Tax Ord # 001-2008 (Revised Revenue Code of LU)","2014-06-11","17","20","21","A PAPT Ord No 001-2008 RRC of LU.pdf","2014-06-19","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0194","Mun Ord # 03, s 2014, An Ord Enacting a Forced/Pre-Emptive Evacuation Policy of the Mun of Balaoan, LU During Times of Calamity/Disaster","2014-06-11","20","1","21","H Mun Ord No 3 S 2014 Balaoan.pdf","2014-06-19","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0195","Res # 18, s 2014, Res Creating the Local Disaster Risk and Reduction Management Office Under the Office of the Mun Mayor and the Corresponding Permanent Positions to Complement the Office.","2014-06-11","22","1","21","J Res No 18 S 2014 Balaoan.pdf","2014-06-19","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0196","R # 14-144, Approve the amended SAIP for CY 2014 embodying additional programs/projects of the City gov’t of San Fernando for 2014.","2014-06-13","22","5","21","K Res 14-144 San Fernando City .pdf","2014-06-19","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0197","Mun Ord # 42-2012, An Ord to Prohibit the Unauthorized Wearing of PNP/AFP Uniforms by any Individual who is not a Legitimate Member of the PNP/AFP w/n the Territorial Jurisdiction of the Mun of Luna, La union.","2014-06-13","20","2","21","I Mun Ord No 42-2012 Luna.pdf","2014-06-19","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0198","Recommend approval of the FY 2014 GF SB # 2, of Bagulin, La Union.","2014-06-13","8","3","21","C1 FY 2014 GFSB 2 Bagulin.pdf","2014-06-19","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0199","Recommend approval of the FY 2014 GF SB # 3, of Bagulin, LU","2014-06-13","8","3","21","C2 FY 2014 GFSB 3 Bagulin.pdf","2014-06-19","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0200","Recommend approval of the FY 2014 GF SB # 4, of Bagulin, La Union.","2014-06-13","8","3","21","C3 FY 2014 GFSB 4 Bagulin.pdf","2014-06-19","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0201","Ord # 20, s 2013, An Ord Providing for the Implementing Rules and Regulations of Ord # 2005-14, Otherwise Known as an Ord Enacting the Children’s Protection & Welfare Code in the Mun of Naguilian, Prov of La Union.","2014-06-16","20","18","21","G Ord 20 S 2013 Naguilian.pdf","2014-06-26","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0202","City Ord # 2014-04, An Ord Amending City Ord # 2003-007, Otherwise Known as An Ord Providing for a Comprehensive Solid Waste Mgt. in the CSF & for other Purposes.","2014-06-19","20","5","21","D City Ord 2014-04 San Fernando.pdf","2014-06-26","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0203","Ord # 103, s 2014, An Ord Streamlining the Business Permit and Licensing System of the Mun of Sudipen, La Union.","2014-06-20","20","14","21","C Mun Ord 103 S 2014 Sudipen.pdf","2014-06-26","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0204","Submit SB # 1, of the Economic Enterprise involving an appropriation of P428,123.66.","2014-06-23","8","20","21","B Ltr Gov SB No1 Economic Enterprise.pdf","2014-06-26","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0205","Mun Ord # 09-2014, An Ord Amending Art IV, Sec 10 & Art XIII, Sec 32 of Mun Ord # 17-2013, An Ord Promulgating the rules and Regulations for the Protection and Welfare of Sr. Citizens in the Mun of Agoo, La Union.”","2014-06-24","20","27","21","E Mun Ord 09-2014 Agoo .pdf","2014-06-26","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0206","Ord # 2014-0111, An Ord Revising the Zoning Regulations of the Mun of Santol & Providing for the Administration, Enforcement and Amendment Thereof and for the Repeal of all Ordinances in Conflict Therewith.","2014-06-24","20","15","21","F Ord 2014-0111 Revised Zoning Santol.pdf","2014-06-26","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0207","Ord # 07, s 2014, An Ord Institutionalizing the Mun Identification System in the Mun of Naguilian, Providing Guidelines in the Implementation of the System, and Appropriating Funds Therefor.","2014-06-24","20","18","21","H Ord 07 S 2014 Naguilian.pdf","2014-06-26","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0208","Draft Ord # 060-2014, Requiring all Business Establishments within the Territorial Jurisdiction of the Province of LU to Set-up and Install CCTV system, Providing Penalties Thereof, and for Other Purposes.","2014-06-25","21","35","21","J Draft Ord 060-2014 CCTV.pdf","2014-06-26","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0209","Draft Ord # 061-2014, Amending the Title, Sec 1, Sec 2, Sec 3 & Sec 4, Sec 5, Sec 8, Sec 9, Sec 10, Sec 13, Sec 14 & Sec 15 of SP Ord # 030-2012","2014-06-25","21","37","21","K Draft Ord No. 061-2014 SP Ord No 030-2012.pdf","2014-06-26","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0210","Recommend approval of the FY 2014 GF AB, of Bacnotan, La Union.","2014-06-26","7","3","21","C FY 2014 GFAB Bacnotan.pdf","2014-07-03","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0211","Ord # 2014-113, Amending Certain Provisions of Mun Ord # 2013-106, Otherwise Known as the Health & Sanitation Code of Pugo, La Union.","2014-06-26","20","7","21","D Ord 2014-113 Pugo Amend Ord 2013-106.pdf","2014-07-03","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0212","Ord # 2014-114, Creating and Maintaining a PHILHEALTH TRUST Fund from the Proceeds of the Primary Care Benefit (PCB I) to be Provided by the PHILHEALTH Corp for the Qualified Beneficiaries and Dependents Enrolled under the Sponsored Program (SP), Overseas Workers Program (OWP), and Organized Groups (OG) Enlisted by the RHU","2014-06-26","20","7","21","E Ord 2014-114 Pugo PCB 1.pdf","2014-07-03","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0213","Ord # 2014-001, An Ord Enacting the Mun Env’t Code of the Mun of Bangar, La Union.","2014-06-27","20","8","21","F Ord 2014-001 Bangar Environmental Code.pdf","2014-07-03","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0214","Engr. Ray Elaydo DPWH - Indorse approval of the request of MSFWD for the excavation along Manila North Rd from crossing Gov Ortega Ave. to corner Ancheta St., SFLU, for the construction of 2040 linear meter ","2014-06-30","17","34","21","K Ltr Engr Rey Elaydo DPWH.pdf","2014-07-03","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0215","Theodore Sarmiento, VP for Legal & Corporate Affairs Thunderbird Resorts - Authorization to Lay Underground Pipe Along Don Joaquin Ortega Avenue.","2014-06-30","11","34","21","L Ltr Authorization of (TPHRI) The Property.pdf","2014-07-03","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0216","Letter of Mr. Mauro A. Libatique, Jr., Ph.D., PPDC - Forward the CLUP/Zoning Ord of the Mun of Santol, LU for CY 2013-2022.","2014-06-30","17","34","21","J Ltr 1 PPDC CLUP Santol.pdf","2014-07-03","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0217","Mun Ord # 06-2014, An Ord Designating the Alluvium in Sta. Rita Central and Sta. Rita West, Agoo, LU as an Eco-Tourism Park to be Called the Agoo Eco-Fun World and Prescribing Rates and Regulations of its Operation.","2014-07-01","20","27","21","G Mun Ord 04-2014 Agoo Alluvium.pdf","2014-07-03","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0218","Mun Ord # 06-2014, An Ord Granting the Authority to Mayor Sandra Eriguel to Institute Expropriation Proceedings on Lot Nos. 823, 832, and 834 Registered in the Names of Alicia Panes, Simeon Padilla Sr.,/Naguilian Rural Bank and Eusebio and AdelinaAsprer, Respectively, located at Brgy. Consolacion for the Expansion of the Road right of Way for Don EufemioEriguel Memorial Nat’l H/S (DEFEMNHS), Agoo, La Union.","2014-07-01","20","27","21","H Mun Ord 06-2014 Agoo Granting Authority.pdf","2014-07-03","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0219","Mun Ord # 11-2014, An Ord Amending Sec 14B.02, Sec 14C.02, Sec 14D.01, Sec 14K.02 of Mun Ord # 02A-2013, An Ord enacting the Code of General Ordinances of the Mun of Agoo, La Union and for other Purposes.","2014-07-01","20","27","21","I Mun Ord 11-2014 Agoo Amend Code Gen Ord.pdf","2014-07-03","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0220","Draft Ord # 062-2014, An Ord Institutionalizing the \"LU Product Branding and Labelling Program\" to Promote the Identity and Raise the Quality and Marketability of La Union Made Products.","2014-07-01","21","38","21","M Draft Ord 062-2014 LU.pdf","2014-07-03","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0221","Request to enter into a MOA w/ BFAR – Region I, the Mun of Bacnotan and the Baroro Fishermen Asso.. Relative to the grant of 2 units of Payao Project to the association in line w/ the fishery program of the province.","2014-07-02","17","20","21","A Ltr Gov Urgent MOA BFAR Bacnotan.pdf","2014-07-03","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0222","Request to enter into a Contract of Consultancy Service w/ Mr. Marc Christopher R. Ortega as Consultant of the Office of the Governor on Disaster Risk Reduction and Management Affairs effective July 1, 2014 to December 31, 2014 w/ a consultancy fee of P20,000.00.","2014-07-02","17","20","21","B Ltr Gov Consultant Marc Ortega.pdf","2014-07-03","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0223","Request the Municipal/City Mayors of the Prov ofLU to Install CCTV in Flood and Accident Prone Areas & w/n the Premises of Schools, Marketplaces and Other Public Establishments and Strategic Areas in their Respective Municipalities/City","2014-07-02","17","38","21","C FY 2014 GFAB Bacnotan.pdf","2014-07-03","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0224","Recommend approval of the FY 2014 GF SB # 1, of San Gabriel, La Union.","2014-07-03","8","3","21","D2 FY 2014 GFSB 1 San Gabriel .pdf","2014-07-10","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0225","Recommend approval of the FY 2014 GF SB # 3, of Agoo, La Union.","2014-07-03","8","3","21","D1 FY 2014 GFSB 3 Agoo .pdf","2014-07-10","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0226","Commutation of the TLB Claim of MR. EDMUNDO M. STA. MONICA, Admin Aide IV, OPG, in the amt of P47,574.87","2014-07-04","6","24","21","E1 TL Mr. Edmindo M. Sta. Monica, Jr..pdf","2014-07-10","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0227","Request to enter into a Contract of Lease (COL), w/ the Nat’l Commission on Indigenous Peoples (NCIP) in connection w/ the lot owned by the PGLU at the sub-regional gov’t center along Aguila Rd., for the construction of the NCIP regional office bldg.","2014-07-07","17","20","21","A Ltr Gov Contract Of Lease (NCIP).pdf","2014-07-10","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0228","Recommend approval of the FY 2014 GF SB # 1, of CSF, La Union.","2014-07-08","8","3","21","D3 FY 2014 GFS Budget No.1 of CSF.pdf","2014-07-10","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0229","Submit the consolidated CY 2015 Supplemental AIP of the ff offices of the PGLU:\n\na.	OPG\nb.	SP\nc.	Balaoan Dist Hosp\n","2014-07-08","13","20","21","B Ltr Gov CY-2014 Supplemental AIP.pdf","2014-07-10","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0230","Letter of reconsideration for Mun Ord # 33, s 2013, “An Ord Requiring the Brgys in the Mun of Naguilian, LU to Install Flood Gauge/s in Flood Prone Areas”","2014-07-08","17","18","21","H Ord 33 S 2013 Naguilian.pdf","2014-07-10","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0231","Commutation of the TLB claim of MS. DANICA DANA RIMANDO, Laborer I, PITO, in the amt of P5,439.79.","2014-07-09","6","24","21","E2 TL Ms. Danica Dana M. Rimando.pdf","2014-07-10","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0232","Mun Ord # 51, s 2014, An Ord Regulating the Establishment and Operation of Computer Shops in the Mun of Burgos, La Union.","2014-07-11","20","23","21","A Mun Ord 51-2014 Burgos Computer Shops.pdf","2014-07-17","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0233","An Ord Amending Ord # 003, s 1997 (as Amended by Ord # 006, s 1999), An Ord Prohibiting the Selling and/or dispensing of Liquor and Other Intoxicating Drinks Beyond 8:00 PM to 4:00 AM w/n the Jurisdiction of the Mun of Burgos, La Union.","2014-07-11","20","23","21","B Mun Ord 52-2014 Burgos amend Ord 003 s 1997.pdf","2014-07-17","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0234","Ord # 483, Ord Amending Ord # 482, s 2014, Ord Creating the Mun HIV/AIDS Council of Bacnotan, La Union.","2014-07-14","20","19","21","C Ord 483 S 2014 Bacnotan.pdf","2014-07-17","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0235","Ord # 484, Ord Amending Ord # 480, s 2014, “Market Code of Bacnotan, LU (2014 Version)”","2014-07-14","20","19","21","D Ord 484 S 2014 Bacnotan.pdf","2014-07-17","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0236","Request authority to enter into a MOA w/ SLC, UCC, DMMMSU, Lorma Colleges, St. John Bosco College, AMA Computer College, LUCST and other requesting colleges, universities and tertiary schools re: OJT/Practicum in the different departments, hospitals and offices of the PGLU.","2014-01-22","1","20","21","RESOLUTION 020-2014.pdf","2014-01-23","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0237","Amending Rabies Control Ord","2014-07-16","20","14","22","C Mun Ord No 104 S 2014.pdf","2014-07-24","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0238","An Ord Enacting the Tourism Code of Sudipen, LU","2014-07-16","20","14","22","D Mun Ord No 105 S 2014.pdf","2014-07-24","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0239","An Ord Amending Ord # 15, s 1995, otherwise known as the Liquor Ban of the Municipality","2014-07-16","20","14","22","E Mun Ord No 106 S 2014.pdf","2014-07-24","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0240","Ord on Liquor Ban for Minors","2014-07-22","20","14","22","F Mun Ord No 107 S 2014.pdf","2014-07-24","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0241","An Ord Enacting the Investment and Incentive Code of the Mun of Sudipen, LU","2014-07-22","20","14","22","F Mun Ord No 107 S 2014.pdf","2014-07-24","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0242","Amending Ord # 4-2014, An Ord Granting Franchise of Tricycle-For-Hire to Qualified Applicants & Regulating their Operations w/n the Mun of San Gabriel, LU","2014-07-18","20","16","22","H Ord No 5-2014 San Gabriel.pdf","2014-07-24","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0243","Request the Municipal/City Mayor of the Prov of LU to Provide a “Pagtimbangan ti Umili” (Timbangan ng Bayan) in Public Markets of their Respective Municipalities/City","2014-07-22","17","38","22","I Draft Res 257-2014 Timbangan ng Bayan.pdf","2014-07-24","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0244","Submit SB # 2, involving a total appropriation of P25M for the enactment of the required AO","2014-07-15","8","20","21","RESOLUTION 157-2014.pdf","2014-07-17","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0245","Commutation of the TLB claim of MRS. MARIGUA PICAR, Agriculturist I, OPAg in the amt of P281,117.50","2014-07-25","6","26","22","A TL Marigua L Picar OPAg P281,117-50.pdf","2014-07-31","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0246","An Ord Requiring Owners of Buildings and Other Structures Covered by Tax Declarations w/n the Territorial Jurisdiction of the Mun of Naguilian, LU to Post a Real property Sticker w/n their Property, Imposing Penalties to Violators Thereof and for Other Purposes","2014-07-24","20","18","22","B Ord 25 S 2013 Nag post Rl Prty Sticker.pdf","2014-07-31","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0247","An Ord Requiring the Setting Up and Installation of CCTV system in Certain Business Establishments w/n the Territorial Jurisdiction of the Mun of Naguilian, Prov of LU, Providing Penalties in Violation or Infringement Thereof, and for Other Purposes","2014-07-24","20","18","22","C Ord 26 S 2013 Naguilian install CCTV.pdf","2014-07-31","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0248","An Ord Prohibiting the Use of Modified Mufflers, Sirens and Horns that Create and Generate Loud and Deafening Sound in Motorcycles and All Types of Vehicles that Ply the Streets and Thoroughfares w/n the Territorial Jurisdiction of the Mun of Naguilian, Prov of LU and Imposing Penalties in Violation or Infringement Thereof and for Other Purposes","2014-07-24","20","18","22","D Ord 31 S 2013 Naguilian Mod. Mufflers.pdf","2014-07-31","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0249","An Ord Requiring All Drivers and Riders/Passengers of Motorcycles, Scooters, Moped and Other Types of Motorcycles to Wear Protective Helmets w/ Transparent Visor While Driving and Plying Along Streets and Thoroughfares w/n the Territorial Jurisdiction of the Mun of Naguilian, Prov of LU, and Imposing Penalties in Violation or Infringement Thereof and for Other Purposes","2014-07-24","20","18","22","E Ord 32 S 2013 Naguilian Protective Helmets.pdf","2014-07-31","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0250","An Ord Institutionalizing the Program on Awards and Incentives for Service Excellence in the Mun of Naguilian, LU, Appropriating Funds Therefor and for Other Purposes","2014-07-24","20","18","22","F Ord 06 S 2014 Nag. Awards and Incentives.pdf","2014-07-31","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0251","An Ord Creating /Establishing the Persons w/ Disabilities Affairs (PDAO) in the Mun of Naguilian, LU & Providing Appropriate Funds Therefore","2014-07-24","20","18","22","G Ord 10 S 2014 Naguilian Creation of PDAO.pdf","2014-07-31","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0252","An Ord Institutionalizing the Establishment and Maintenance of a Desk for Cases on Violence Against Women and their Children (VAWC) in Every Brgy in the Mun of Naguilian, LU","2014-07-24","20","18","22","H Ord 13 S 2014 Naguilian Desk for VAWC.pdf","2014-07-31","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0253","An Ord Providing for the Dev’t, Management and Observation of the Fisheries and Aquatic Resources of the Mun of Bagulin, LU","2014-07-28","20","4","22","I Mun. Ord 2-2014 Bagulin .pdf","2014-07-31","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0254","An Ord to Establish the Local Disaster Risk Reduction Management Office (LDRRMO) of the Mun of Luna, Prov of LU and other Purposes Thereof","2014-07-25","20","2","22","J Mun Ord 54-2014 Luna LDRRMO.pdf","2014-07-31","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0255","Commutation of the TLB claim of MR. YVES E. GACAYAN in the amt of P13,212.76\n","2014-08-06","6","24","22","A1 Terminal Leave of Yves Gacayan.pdf","2014-08-07","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0256","Commutation of the TLB claim of MR. JOSE V. DOROTEA in the amt of P143,293.97\n\n","2014-08-06","6","24","22","A3 Terminal Leave of Jose Doroteo.pdf","2014-08-07","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0257","Commutation of the TLB claim of MR. SAMUEL F. DELIZO in the amt of P1,250,546.13\n","2014-08-06","6","24","22","A2 Terminal Leave of Mr. Samuel Delizo.pdf","2014-08-07","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0258","An Ord to Create & Organize the Naguilian Watershed Forest Reserve (NWFR) Mgt Team, Providing its Functions, Appropriating Funds Therefor and for Other Purposes","2014-08-04","20","18","22","B Ord 14 S 2014 Naguilian.pdf","2014-08-07","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0259","An Ord Prescribing Endorsement Fees for Civil Registry documents Endorsed by the Local Civil Registry Office of the Mun of Naguilian, LU to the Nat’l Statistics Office, Amending for the Purpose Sec 133 of the Revenue Code of the Mun of Naguilian, LU","2014-08-04","20","18","22","C Ord 36 S 2013 Naguilian.pdf","2014-08-07","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0260","An Ord Providing for the Promotion of Breastfeeding in the Mun of San Juan","2014-07-31","20","6","22","D Mun Ord 10-2014 San Juan.pdf","2014-08-07","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0261","Ord Creating & Maintaining a PHILHEALTH Trust Fund from the Proceeds of the Primary Care Benefit 1 (PCB1) to be Provided by the PHILHEALTH Insurance Corp for the Qualified Beneficiaries and Dependents Enrolled under the Sponsored Program (SP), Overseas Workers Program (OWP) and organized Groups (OG) Enlisted by the RHU","2014-08-05","20","15","22","E Ord 2014-112 Santol.pdf","2014-08-07","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0262","Request the PGLU thru the SP to construct a drainage along the Marcos Avenue, San Benito Sur","2014-07-31","22","12","22","F Resolution 2014-107 Aringay.pdf","2014-08-07","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0263","Request to enter into an Implementation Management Agreement (IMA) w/ DA and the Prov of LU Mango Industry Asso., Inc. (PLUMIA, Inc) for the Enterprise Investment Agrrement (EIA) in connection w/ the implementation of the sub-project of the PRDP- the Green Carabao Mango Prdxn and Marketing Enterprise under the I-REAP Component of the PRDP","2014-08-07","17","20","22","B Ltr Gov. Realignment of RA 7171.pdf","2014-08-14","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0264","Request for the realignment of P4M under RA 7171 for the ff:\n\na.	Agricultural Equipment Assistance Program                   P2,500,000.00\nb.	Farmer’s Technology and Livelihood Dev’t Center           1,500,000.00\n","2014-08-07","17","20","22","B Ltr Gov. Realignment of RA 7171.pdf","2014-08-14","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0265","Endorse the approval of the TOPPLU CY 2014 Awardees","2014-08-07","17","20","22","C Ltr Gov. Endorsement of TOPPLU 2014.pdf","2014-08-14","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0266","Recommend approval of the FY 2014 GF SB # 3, of Sudipen, LU","2014-08-07","8","3","22","D FY 2014 GFSB 3 Sudipen.pdf","2014-08-14","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0267","An Ord Amending Ord # 5, s 2011, Res Enacting an Ord Prohibiting the Use of Plastic Bags on Dry Goods, Regulating Its Use on Wet Goods and Providing Penalties Thereof","2014-08-11","20","13","22","F Ordinance 10 S 2014 Bauang.pdf","2014-08-14","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0268","The Scholarship Program of the Mun of Aringay, LU as Amended","2014-08-11","20","12","22","G Ordinance 172 Aringay Scholarship Program.pdf","2014-08-14","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0269","An Ord Prohibiting the Use of Mobile or Cellular Phones to Engage in a Call or to Send or Read Text Messages While Driving any Type of Motor Vehicle Along Streets and Thoroughfares w/n the Territorial Jurisdiction of the Mun of Naguilian, Prov of LU ad Imposing Penalties in Violation or Infringement Thereof and for Other Purposes","2014-08-11","20","18","22","H Ord 02 S 2014 Nag. CP while driving.pdf","2014-08-14","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0270","Request for the realignment of P3M under RA 7171 for the Agricultural Equipment Assistance Program","2014-08-15","17","20","22","A Ltr Gov.Virgina Tabacco.pdf","2014-08-19","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0271","Commutation of the TLB claim of MR. FELIPE BALLESTEROS, Watchman I, OPG in the amt of P202,044.59","2014-08-18","6","24","22","B Terminal Leave Mr. Ballesteros.pdf","2014-08-19","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0272","Authorize Mayor Pablo C. Ortega to enter into a MOU w/ PHIVOLCS, the UP, the Prov of LU & Brgy Nagyubuyuban on the testing of an Early Warning system Protocol for the Dev’t and Deployment of Early Warning system for Deep-Seated Catastrophic Landslides and Slope Failures (DEWS-L) Program","2014-08-14","22","5","22","C Resolution 14-162 City of San Fernando.pdf","2014-08-19","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0273","An Ord Requiring All Elem and H/S Principals/Administrators in the Mun of San Juan to Hold an Info Campaign for the 15 Minutes Every Monday After the Flag Raising Ceremony on How to Prevent Abuse, As Amended","2014-08-12","20","6","22","D Mun Ord 11-2014 San Juan.pdf","2014-08-19","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0274","Solicit support to the proposed HB 4438, “An Act Allowing LGUs to suspend the mandatory wearing of motorcycle helmets amending for the purpose RA No. 10054, otherwise known as the Motorcycle Helmet Act of 2009","2014-08-15","26","34","22","E Resolution 725 Zamboanga.pdf","2014-08-19","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0275","Request Pres PNOY/ the Inter-Agency Committee Overseeing Electrification Program and Projects of Distribution utilities in the Phils Created under MC No. 65 signed by Exec Sec Paquito Ochoa, Jr. to exercise all powers and authority to intervene in the settlement of the problems of Davao del Note Electric Coop (DANECO), Inc.","2014-08-15","17","34","22","F Resolution 390 Davao Del Norte.pdf","2014-08-19","2","0","0");



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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

INSERT INTO tbl_employee VALUES("1","Alexander Jerome","Lopez","Obejas","6","1","2147483647","jex310@yahoo.com");
INSERT INTO tbl_employee VALUES("2","Francisco \"Kit\"","C","Ortega","2","1","2147483647","jb@yahoo.com");
INSERT INTO tbl_employee VALUES("3","Jonathan Justo","A","Orros","2","1","2147483647","charry@yahoo.com");
INSERT INTO tbl_employee VALUES("4","Joaquin","C","Ostrea","2","1","2147483647","mariz@yahoo.com");
INSERT INTO tbl_employee VALUES("5","Reynaldo","M","Mosuela","2","1","","");
INSERT INTO tbl_employee VALUES("6","Victoria","L","Aragon","2","1","","");
INSERT INTO tbl_employee VALUES("7","Nancy Corazon","M","Bacurnay","2","1","","");
INSERT INTO tbl_employee VALUES("8","Robert","B","Madarang, Jr.","2","1","","");
INSERT INTO tbl_employee VALUES("9","Christian","I","Rivera","2","1","","");
INSERT INTO tbl_employee VALUES("10","Ruperto","A","Rillera, Jr.","2","1","","");
INSERT INTO tbl_employee VALUES("11","Bellarmin","A","Flores, II","2","1","","");
INSERT INTO tbl_employee VALUES("12","Alfredo Pablo","R","Ortega","2","1","955","fs@yahoo.com");
INSERT INTO tbl_employee VALUES("13","Manuel \"Mannix\"","R","Ortega, Jr","2","1","2147483647","fjh@yahoo.com");
INSERT INTO tbl_employee VALUES("15","Kenneth Paolo","C","Tereng","2","1","","");
INSERT INTO tbl_employee VALUES("20","Reynaldo","M","Mosuela","2","1","2147483647","Reynaldo@gmail.com");
INSERT INTO tbl_employee VALUES("21","John Billy","Dagang","Marbella","6","1","2147483647","johnbillymarbella@gmail.com");
INSERT INTO tbl_employee VALUES("22","Teodora Vivian","D.","Rimando","3","1","","");
INSERT INTO tbl_employee VALUES("23","Lara Geraldine","D.","Bacer","5","1","","");
INSERT INTO tbl_employee VALUES("24","Rhea Matilde","A.","Ballesteros","4","1","","");
INSERT INTO tbl_employee VALUES("25","Maritess","D.","Dumaguin","4","1","","");
INSERT INTO tbl_employee VALUES("26","Jose Maria \"Pepe\"","C.","Ortega","2","1","","");
INSERT INTO tbl_employee VALUES("27","Henry","B.","Balbin","2","1","","");
INSERT INTO tbl_employee VALUES("28","Rolando","V.","Rivera","2","1","","");
INSERT INTO tbl_employee VALUES("29","Henry","A.","Bacurnay, Jr.","2","1","","");
INSERT INTO tbl_employee VALUES("30","Augusto Aureo","Q","Nisce","2","1","","");
INSERT INTO tbl_employee VALUES("31","Natividad","A","Ledda","2","1","","");
INSERT INTO tbl_employee VALUES("32","Gerardo","A.","Viloria","2","1","","");
INSERT INTO tbl_employee VALUES("33","Francisco Emmanuel","R.","Ortega III","2","1","","");
INSERT INTO tbl_employee VALUES("34","Al-Fred","O.","Concepcion","2","1","","");
INSERT INTO tbl_employee VALUES("35","Carlos","N.","Ortega","2","1","","");
INSERT INTO tbl_employee VALUES("36","Hilario Justino","F.","Morales","2","1","","");
INSERT INTO tbl_employee VALUES("37","Socorro","B.","Zarate-Escalante","2","1","","");
INSERT INTO tbl_employee VALUES("38","Henry","A.","Bacurnay, Jr.","2","1","","");
INSERT INTO tbl_employee VALUES("39","Ruperto","A.","Rillera, Jr.","2","1","","");
INSERT INTO tbl_employee VALUES("40","Pablo","C.","Ortega","2","1","","");
INSERT INTO tbl_employee VALUES("41","Jane","T.","Flores","2","1","","");
INSERT INTO tbl_employee VALUES("42","Mario Eduardo","C.","Ortega","2","1","","");
INSERT INTO tbl_employee VALUES("43","Rachel","D","Simon","2","1","","");
INSERT INTO tbl_employee VALUES("44","Pablo","M.","Olarte","2","1","","");
INSERT INTO tbl_employee VALUES("45","Hermenegildo","A.","Gualberto","2","1","","");
INSERT INTO tbl_employee VALUES("46","Chester","R.","Bambico","2","1","","");
INSERT INTO tbl_employee VALUES("47","Pedro","F.","Ofiana, Jr.","2","1","","");
INSERT INTO tbl_employee VALUES("48","Reynaldo","V.","Dulay","2","1","","");
INSERT INTO tbl_employee VALUES("49","Placido","O.","Garcia III","2","1","","");
INSERT INTO tbl_employee VALUES("50","Rufino Lito","L.","Fontanilla","2","1","","");



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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

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
INSERT INTO tbl_officials VALUES("17","20","1995-01-01","2007-01-01");
INSERT INTO tbl_officials VALUES("18","26","2010-01-01","2013-01-01");
INSERT INTO tbl_officials VALUES("19","27","2010-01-01","2013-01-01");
INSERT INTO tbl_officials VALUES("20","28","1995-01-01","2013-01-01");
INSERT INTO tbl_officials VALUES("21","29","1995-01-01","2013-01-01");
INSERT INTO tbl_officials VALUES("22","32","1995-01-01","1999-12-31");
INSERT INTO tbl_officials VALUES("23","33","1995-01-01","1999-12-01");
INSERT INTO tbl_officials VALUES("24","34","1995-01-01","1999-11-30");
INSERT INTO tbl_officials VALUES("25","35","1995-01-01","1999-12-31");
INSERT INTO tbl_officials VALUES("26","36","1995-01-01","1999-12-31");
INSERT INTO tbl_officials VALUES("27","37","1995-01-01","1999-12-31");
INSERT INTO tbl_officials VALUES("28","40","1995-01-01","1999-12-31");
INSERT INTO tbl_officials VALUES("29","41","1995-01-01","1999-12-31");
INSERT INTO tbl_officials VALUES("30","42","1995-01-01","1999-12-31");
INSERT INTO tbl_officials VALUES("31","44","2010-01-01","2013-12-31");
INSERT INTO tbl_officials VALUES("32","45","2010-01-01","2013-12-31");
INSERT INTO tbl_officials VALUES("33","46","2010-01-01","2013-12-31");
INSERT INTO tbl_officials VALUES("34","47","2005-01-01","2008-12-31");
INSERT INTO tbl_officials VALUES("35","48","2005-01-01","2008-12-31");
INSERT INTO tbl_officials VALUES("36","49","2005-01-01","2008-12-31");
INSERT INTO tbl_officials VALUES("37","50","2005-01-01","2008-12-31");



DROP TABLE tbl_ordinance;

CREATE TABLE `tbl_ordinance` (
  `ord_no` varchar(20) NOT NULL,
  `meeting_ordi_id` int(10) DEFAULT NULL,
  `subj_matter` varchar(1000) NOT NULL,
  `firstreading` date NOT NULL,
  `secondreading` date NOT NULL,
  `thirdreading` date NOT NULL,
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

INSERT INTO tbl_ordinance VALUES("053 - 2014","1"," \"An Act Prohibiting the Practice of \"Tandok\" in Treating Animal Bites within the Territorial Jurisdiction of the Province and Providing Penalties for Violation Thereof.\"","2014-06-05","2014-06-11","2014-06-19","2014-06-19","1,2,3,4,5,6,7,8,9,10,11,12","1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19","ORDINANCE 053-2014 TANDOK.pdf","23","0");
INSERT INTO tbl_ordinance VALUES("061 - 2014","2","Ord Providing for the Creation of the Prov\'l Rabies Control Committee in the Prov of LU Defining its Functions and for Other Purposes","2014-07-31","2014-08-07","2014-08-14","2014-08-14","3","1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19","ORDINANCE 061-2014 RABIES CONTROL COM.pdf","21","0");



DROP TABLE tbl_origin;

CREATE TABLE `tbl_origin` (
  `orig_id` int(11) NOT NULL AUTO_INCREMENT,
  `orig_name` varchar(100) NOT NULL,
  `shortname` varchar(50) DEFAULT NULL,
  `contact_person` varchar(100) NOT NULL,
  `contact_num` varchar(50) NOT NULL,
  PRIMARY KEY (`orig_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

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
INSERT INTO tbl_origin VALUES("34","Others","others","","");
INSERT INTO tbl_origin VALUES("35","BM Joaquin C. Ostrea","JCO","","");
INSERT INTO tbl_origin VALUES("36","BM Reynaldo M. Mosuela","RMM","","");
INSERT INTO tbl_origin VALUES("37","Francisco \"Kit\" C. Ortega","F Ortega","","");
INSERT INTO tbl_origin VALUES("38","BM Ruperto, Jr. A. Rillera","R. Rillera","","");



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
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=latin1;

INSERT INTO tbl_referral VALUES("1","2014 - 0003","2014-01-02","12","","F Executive Orders 2014 of Agoo.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("2","2014 - 0013","2014-01-10","17","","0110 ord 2012-096 SANTOL.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("3","2014 - 0014","2014-01-10","17","14","0110 ord 2012-102 SANTOL.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("4","2014 - 0026","2014-01-16","17","10","0116 ord 168 Aringay.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("5","2014 - 0032","2014-01-16","17","2,22","0116 ord 24-2013 AGOO.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("6","2014 - 0033","2014-01-16","17","9,21","0116 MO 25-2013 AGOO.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("7","2014 - 0034","2014-01-16","17","5","0116 MO 27-2013 AGOO.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("8","2014 - 0035","2014-01-16","17","","0116 MO 29-2013 AGOO.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("9","2014 - 0047","2014-02-03","17","23","0203 MO 31-2013 naguilian.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("10","2014 - 0050","2014-02-03","17","","0203 MO 98-2013 SUDIPEN.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("11","2014 - 0078","2014-02-21","17","","0221 LLEDAC and ELA.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("12","2014 - 0088","2014-03-21","17","","0321 ord 01-2014 San Grabriel.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("13","2014 - 0103","2014-03-26","17","22","0326 draft of IRRs prov ordi 011-2010.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("14","2014 - 0107","2014-03-31","17","1","0331 Ord. 28-2013 NAGUILIAN.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("15","2014 - 0140","2014-04-25","17","20","0425 Res. 64-2013 NAGUILIAN.pdf","21","0","0");
INSERT INTO tbl_referral VALUES("16","2014 - 0165","2014-05-23","17","14","0523 MO 058-2014 Draft Ord.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("17","2014 - 0207","2014-06-26","17","6","0704 MO 07-2014 Naguilian.pdf","21","0","0");
INSERT INTO tbl_referral VALUES("18","2014 - 0219","2014-07-04","17","","0704 MO 11-2014 Agoo.pdf","21","0","0");
INSERT INTO tbl_referral VALUES("19","2014 - 0017","2014-01-10","5","17,22","0110 Ord no 106, S 2013 SANTOL.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("20","2014 - 0028","2014-01-16","5","17,22","0116 Ord no 2, CS 2013 ROSARIO.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("21","2014 - 0106","2014-03-31","5","17,22","0331 Ord no 10, S 2013 NAGUILIAN.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("22","2014 - 0163","2014-05-23","5","17,22","0523 City ord no 2014-01 SFC.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("23","2014 - 0177","2014-06-06","5","2,17,20,22","0606 Ord no 2014-112 PUGO.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("24","2014 - 0119","2014-04-14","8","1,17","0304 Ord no 33, S 2013 NAGUILIAN.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("25","2014 - 0194","2014-06-23","8","17,19","0623 MO ord 03,S 2014 BALAOAN.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("26","2014 - 0195","2014-06-23","8","6,17","0623 Res no 18, S 2014 BALAOAN.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("27","2014 - 0012","2014-01-10","9","17","0110 Ord no 2011-087 SANTOL.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("28","2014 - 0020","2014-01-10","9","17","0110 Ord no 13-2013 SAN GABRIEL.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("29","2014 - 0087","2014-03-07","9","17","0307 MO no 01-2014 SAN JUAN.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("30","2014 - 0128","2014-04-15","9","17","0415 Ord no 164 ARINGAY.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("31","2014 - 0187","2014-06-16","9","17","0616 MO no 08-2014 AGOO.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("32","2014 - 0021","2014-01-10","10","8,17","0110 Res no. 82 S 2013 Bauang.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("33","2014 - 0089","2014-03-21","10","17","0321   Ord No. 02-2014 San Gabriel.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("34","2014 - 0094","2014-03-21","10","17","0321   Ord No. 481-2014 Bacnotan.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("35","2014 - 0170","2014-06-02","10","17,22","0602  city ordi 2014-03 SFC.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("36","2014 - 0214","2014-07-04","10","17,20","0604 ltr of Elaydo DPWH.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("37","2014 - 0213","2014-07-04","10","17","0604 Ord No. 2014-001 Bangar.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("38","2014 - 0202","2014-06-27","10","14,17","0627 city ord 2014-04 SFC.pdf","21","0","0");
INSERT INTO tbl_referral VALUES("39","2014 - 0209","2014-06-30","10","17","0630  draft ordi 061-2014 la union.pdf","21","0","0");
INSERT INTO tbl_referral VALUES("40","2014 - 0004","2014-01-02","12","","0102  AB Sto tomas, SB Sudipen.pdf","21","0","0");
INSERT INTO tbl_referral VALUES("41","2014 - 0155","2014-01-23","12","","0123 TLB ostrea and bautista.pdf","21","0","0");
INSERT INTO tbl_referral VALUES("42","2014 - 0125","2014-04-04","12","","0404 ltr of Gov Champions cash incentives.pdf","21","0","0");
INSERT INTO tbl_referral VALUES("43","2014 - 0196","2014-06-23","12","17","0623 RES NO. 2014-144 SFC.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("44","2014 - 0113","2014-03-31","13","17","0331 Unnumbered Reso S 2014 SFC  War Memorial Museum.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("45","2014 - 0117","2014-04-04","13","12,17","0604 MO no 02-2014 AGOO.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("46","2014 - 0174","2014-06-06","13","17,22","0606 MO no 06-2014 SAN JUAN.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("47","2014 - 0205","2014-06-30","13","17","0630 MO no 09-2014 AGOO.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("48","2014 - 0011","2014-01-10","14","21","0110 Ord no. 2011-085 SANTOL .pdf","21","1","0");
INSERT INTO tbl_referral VALUES("49","2014 - 0084","2014-03-07","14","17","0307 ord no. 2013-108 & 2013-109 PUGO.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("50","2014 - 0085","2014-03-07","14","17","0307 ord no. 2013-108 & 2013-109 PUGO.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("51","2014 - 0129","2014-04-15","14","17","0415 Ord no. 02-2014 SAN JUAN.pdf","21","0","0");
INSERT INTO tbl_referral VALUES("52","2014 - 0135","2014-04-25","14","17","0425 Ord no. 482-2014 BACNOTAN.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("53","2014 - 0141","2014-04-25","14","17,22","0425 MO. no 03-2014 SAN JUAN.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("54","2014 - 0191","2014-06-23","14","17,22","0623 MO. no 08-2014 SAN JUAN.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("55","2014 - 0173","2014-06-30","14","5,17","0630 Draft Ordi no. 059-2014 LA UNION.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("56","2014 - 0211","2014-07-04","14","17","0704 Ord no. 113-2014 PUGO.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("57","2014 - 0212","2014-07-04","14","12,17","0704 Ord no. 2014-114 PUGO.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("58","2014 - 0008","2014-01-10","25","17","0110 Ord no. 20 embodied in res. no 69-2013 BAUANG.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("59","2014 - 0072","2014-02-21","25","17","0221 Ord no. 167 ARINGAY.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("60","2014 - 0102","2014-03-21","25","17","0321 MO. ord no 01 s 2014 BALAOAN.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("61","2014 - 0136","2014-04-25","25","17","0425 Res no 14, s 2014 Bagulin.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("62","2014 - 0160","2014-05-16","25","","0516 ltr of Libatique CLUP Bangar.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("63","2014 - 0168","2014-06-02","25","5,8,10","0602 ltr of Libatique CLUP San Juan.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("64","2014 - 0171","2014-06-06","25","17","0606 MO. 50 s 2014 Burgos.pdf","21","0","0");
INSERT INTO tbl_referral VALUES("65","2014 - 0188","2014-06-16","25","17","0616 Ltr of Mr. Romeo Ramos and Florenda Flores.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("66","2014 - 0206","2014-06-30","25","17","0630 Ord. No. 2014-0111 Santol.pdf","21","0","0");
INSERT INTO tbl_referral VALUES("67","2014 - 0216","2014-07-04","25","17","0704 ltr of Mr. Mauro Libatique CLUP Santol.pdf","21","0","0");
INSERT INTO tbl_referral VALUES("68","2014 - 0218","2014-07-04","25","17","0704 MO 06-2014 Agoo.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("69","2014 - 0022","2014-01-22","6","","0122 Pammadayaw basi award and Entrepinoy.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("70","2014 - 0009","2014-01-10","6","","0110  Ord no . SANTOL.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("71","2014 - 0056","2014-02-03","16","17","0203 Res. No. 489-2013 CAMARINES NORTE spptng HB 242.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("72","2014 - 0077","2014-02-21","18","","0221 ltr of Gov Sultanate League of Northern Luzon.pdf","21","0","0");
INSERT INTO tbl_referral VALUES("73","2014 - 0010","2014-01-10","19","8","0110 Ord no. 2011-084 SANTOL.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("74","2014 - 0097","2014-03-21","19","17","0321 MO no 42, S 2012 LUNA.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("75","2014 - 0099","2014-03-21","19","17","0321 Ord no 13, S 2013 BAUANG.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("76","2014 - 0101","2014-03-21","19","17","0321 Ord no 4, S 2014 BAUANG.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("77","2014 - 0100","2014-03-21","19","17","0321 Ord no 14, S 2013 BAUANG.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("78","2014 - 0118","2014-04-04","19","17","0404 Draft Resolution LACAP.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("79","2014 - 0134","2014-04-25","19","14,17","0425 MO no 03, S 2014 SAN JUAN.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("80","2014 - 0208","2014-06-30","19","17,22","0630 Draft Ord no 060-2014 CCTV.pdf","21","0","0");
INSERT INTO tbl_referral VALUES("81","2014 - 0053","2014-02-03","20","17","0203 Ord no. 170 ARINGAY.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("82","2014 - 0132","2014-04-15","20","","0415 Draft Reso Rogelio SIngson DPWH.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("83","2014 - 0215","2014-07-04","20","10,17","0704 Ltr of Theodore Sarmiento TPHRI.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("84","2014 - 0137","2014-04-25","21","12,17","0425 Ord no 07, S 2013 NAGUILIAN.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("85","2014 - 0176","2014-06-06","21","14,17","0606 Ord no 2014-111 PUGO.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("86","2014 - 0186","2014-06-16","21","1,17","0616 MO no 07-2014 AGOO.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("87","2014 - 0201","2014-06-30","21","17,24","0630 MO no 20, S 2013 NAGUILIAN.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("88","2014 - 0015","2014-01-10","22","17,19","0110 Ord. no. 2012-103 SANTOL.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("89","2014 - 0016","2014-01-10","22","17","0110 Ord. no. 2013-104 SANTOL.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("90","2014 - 0093","2014-03-21","22","2,17","0321 Ord no. 480-2014 BACNOTAN.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("91","2014 - 0164","2014-05-23","22","14,17","0523 city ord no 2014-02 SFC.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("92","2014 - 0175","2014-06-06","22","5,10,14,17","0606 Ord no 2, cs 2014 ROSARIO.pdf","21","0","0");
INSERT INTO tbl_referral VALUES("93","2014 - 0220","2014-07-03","22","17","0703 Draft Ordi No. 062-2014 LA UNION.pdf","21","0","0");
INSERT INTO tbl_referral VALUES("94","2014 - 0019","2014-01-10","23","","0110 Ord no 2013-109 SANTOL.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("95","2014 - 0052","2014-02-03","23","17","0203 MO no 169 ARINGAY.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("96","2014 - 0122","2014-04-10","23","17","0410 Ord. no. 2014-110 PUGO.pdf","21","0","0");
INSERT INTO tbl_referral VALUES("97","2014 - 0130","2014-04-15","23","17","0415 MO no. 1-2014 BAGULIN.pdf","21","0","0");
INSERT INTO tbl_referral VALUES("98","2014 - 0152","2014-05-02","23","17","0502 Ord no. 4-2014 SAN GABRIEL.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("99","2014 - 0190","2014-06-23","23","17","0623 MO no. 07-2014 SAN JUAN.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("100","2014 - 0192","2014-06-23","23","17,20","0623 MO no. 09-2014 SAN JUAN.pdf","21","0","0");
INSERT INTO tbl_referral VALUES("101","2014 - 0151","2014-05-02","26","12,17","0502 ltr of Gov. PGLU DOT RO1 training.pdf","21","0","0");
INSERT INTO tbl_referral VALUES("102","2014 - 0166","2014-05-23","26","17,19,22","0523 MO. no. 05-2014 SAN JUAN.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("103","2014 - 0217","2014-07-04","26","10,25,17","0704 MO. no. 04-2014 AGOO.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("104","2014 - 0007","2014-01-10","2","17","0110 ord no 19-2013 BAUANG and ORD no 108-2013 SANTOL.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("105","2014 - 0018","2014-01-10","2","17","0110 ord no 19-2013 BAUANG and ORD no 108-2013 SANTOL.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("106","2014 - 0045","2014-02-03","2","17","0203 MO 23-2013 and 24-2013 NAGUILIAN MO 102-2014 SUDIPEN.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("107","2014 - 0046","2014-02-03","2","17","0203 MO 23-2013 and 24-2013 NAGUILIAN MO 102-2014 SUDIPEN.pdf","21","0","0");
INSERT INTO tbl_referral VALUES("108","2014 - 0051","2014-02-03","2","17","0203 MO 23-2013 and 24-2013 NAGUILIAN MO 102-2014 SUDIPEN.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("109","2014 - 0057","2014-02-06","2","17","0206 ltr of Vice Mayor Balbin addndum MO 2013-19.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("110","2014 - 0143","2014-05-02","2","17,22","0502 MO no 02, S 2014 BALAOAN.pdf","21","0","0");
INSERT INTO tbl_referral VALUES("111","2014 - 0193","2014-06-23","2","17,22","0623 Ltr of Gov. Prov. Tax ord no 001-2008 .pdf","21","0","0");
INSERT INTO tbl_referral VALUES("112","2014 - 0203","2014-06-26","2","17,22","0626 MO no 103, S 2014 SUDIPEN.pdf","21","0","0");
INSERT INTO tbl_referral VALUES("113","2014 - 0005","2014-01-02","17","","0102 res no 77-2013 CABA.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("114","2014 - 0036","2014-01-30","17","","0123 letter of charlie cirilito.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("115","2014 - 0159","2014-05-16","12","","0516 ltr of gov. DBM-DOH circular no. 1 s 2012.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("116","2014 - 0167","2014-06-02","12","6","0602 csc-dbm jc no. 1-2003.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("117","2014 - 0037","2014-01-23","17","","0123 letter of charlie cirilito.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("118","2014 - 0138","2014-02-03","2","17","0203 MO 23-2013 and 24-2013 NAGUILIAN MO 102-2014 SUDIPEN.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("119","2014 - 0197","2014-06-23","19","17","0321 MO no 42, S 2012 LUNA.pdf","21","1","0");



DROP TABLE tbl_resolution;

CREATE TABLE `tbl_resolution` (
  `res_no` varchar(50) NOT NULL,
  `ctrl_no` varchar(50) DEFAULT NULL,
  `subj_matter` varchar(3000) NOT NULL,
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

INSERT INTO tbl_resolution VALUES("001 - 1999","","RESOLVED, as it is hereby resolved, that FY 1998 General Fund Supplemental Budget No. 2, of San Gabriel, La Union, be it declared operative in part, subject however, to the usual accounting and auditing rules and regulations and other limitations set forth by law, attention being invited to the recommendation of the Provincial Budget Officer in his Memorandum dated 28 December 1998.","20","RESOLUTION NO.001-99.pdf","21","1999-01-07","0");
INSERT INTO tbl_resolution VALUES("001 - 2007","","Approve FY 2006 GF SB # 7, of Pugo, LU ","2","RESOLUTION NO. 001-2007.pdf","21","2007-01-04","0");
INSERT INTO tbl_resolution VALUES("001 - 2008","","MOA w/ DILG, Central Office in connection with the proposed Implementation of the Region I “117” Emergency Call Center","2","RESOLUTION NO. 001-2008.pdf","21","2008-01-03","0");
INSERT INTO tbl_resolution VALUES("001 - 2010","","Approve GF AB 2010 of Bangar, LU","2","Resolution 001-2010.pdf","21","2010-01-07","0");
INSERT INTO tbl_resolution VALUES("001 - 2011","","MOA w/ ABONOPartylist in connection w/ the donation of priority drugs & medicines for the PGLU’s ORB","1,7,10","Resolution 001-2011.pdf","21","2011-01-06","0");
INSERT INTO tbl_resolution VALUES("001 - 2012","","Approve the CY 2012 Supplemental Annual Investment Program (AIP) of the Office of the SP.","1","Resolution 001-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("001 - 2013","","RESOLVED, as it is hereby resolved, that Appropriation Ordinance No. 48-2012, of the Sangguniang Bayan of Agoo, La Union, approving the FY 2012 General Fund Supplemental Budget No. 11, of that municipality, be declared operative and given force and effect, subject, however, to the usual accounting and auditing rules and regulations, the policy of the office concerned, and other limitations set forth by law, attention being invited to the recommendation of the Provincial Budget officer in her Memorandum dded December 27,2012.","1,7,9,18,20","RES 001-2013 A.O. 48-2012 AGOO.pdf","21","2013-01-03","0");
INSERT INTO tbl_resolution VALUES("002 - 1999","","RESOLVED, as it is hereby resolved, that FY 1998 General Fund Supplemental Budget No. 01-J, of Bauang, La Union, be declared operative in part, subject however, to the usual accounting and auditing rules and regulations and other limitations set forth by law, attention being invited to the recommendation of the Provincial Budget Officer in his Memorandum dated 28 December 1998.","20","RESOLUTION NO.002-99.pdf","21","1999-01-07","0");
INSERT INTO tbl_resolution VALUES("002 - 2007","","Approve FY 2006 GF SB # 6, of Sudipen, LU ","2","RESOLUTION NO. 002-2007.pdf","21","2007-01-04","0");
INSERT INTO tbl_resolution VALUES("002 - 2008","","Condole w/the late SBM Lolita Abat, San Juan, LU","1","RESOLUTION NO. 002-2008.pdf","21","2008-01-03","0");
INSERT INTO tbl_resolution VALUES("002 - 2010","","Approve GF SB # 6, of Luna, LU","2","Resolution 002-2010.pdf","21","2010-01-07","0");
INSERT INTO tbl_resolution VALUES("002 - 2011","","Congratulate officialdom of Santol, LU, for garnering the seal of Good Housekeeping for Local Govt’s by DILG","1,5,18","Resolution 002-2011.pdf","21","2011-01-06","0");
INSERT INTO tbl_resolution VALUES("002 - 2012","","Approve FY 2011 GF SB #5, of the SB of San Juan, La Union.","1","Resolution 002-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("002 - 2013","","Approve Mun Ord # 93, s 2012, of the SB of Sudipen, LU, “An Ord Promulgating a Sustainable Anti-Dengue Program of Sudipen & Appropriating Funds Therefore”","18","RES 002-2013 MUN ORD. 93 2012 SUDIPEN.pdf","21","2013-01-03","0");
INSERT INTO tbl_resolution VALUES("002 - 2014","2014 - 0002","Submit SB # 4, involving an appropriation of P20M for the enactment of the required appropriation ordinance.","1","RESOLUTION 002-2014.pdf","21","2014-01-09","0");
INSERT INTO tbl_resolution VALUES("002A- 2008","","Realign P3.M and the use of the same from the item Peace and Order Initiative Fund of the province for CY 2008 to Intelligence Fund","2","RESOLUTION NO. 002A-2008.pdf","21","2008-01-03","0");
INSERT INTO tbl_resolution VALUES("003 - 1999","","RESOLVED, as it is hereby resolved, that FY 1998 General Fund Supplemental Budget No. 02, of Burgos, La Union, be declared operative in part, subject however, to the usual accounting and auditing rules and regulations and other limitations set forth by law, attention being invited to the recommendation of the Provincial Budget Officer in his Memorandum dated 05 January 1999.","20","RESOLUTION NO.003-99.pdf","21","1999-01-07","0");
INSERT INTO tbl_resolution VALUES("003 - 2007","","Approve FY 2006 GF SB # 2, of Sto. Tomas, LU ","2","RESOLUTION NO. 003-2007.pdf","21","2007-01-04","0");
INSERT INTO tbl_resolution VALUES("003 - 2008","","Renew the Contract of Service of Ms. Eugenia Alunday as Contractual Pharmacy Aide at Naguilian District Hospital ","20","RESOLUTION NO. 003-2008.pdf","21","2008-01-17","0");
INSERT INTO tbl_resolution VALUES("003 - 2010","","Approve GF SB # 7, of Luna, LU","2","Resolution 003-2010.pdf","21","2010-01-07","0");
INSERT INTO tbl_resolution VALUES("003 - 2011","","Create AD Hoc Committee to screen awardees for the 2011 Conferment of Awards","1","Resolution 003-2011.pdf","21","2011-01-06","0");
INSERT INTO tbl_resolution VALUES("003 - 2012","","Return City Ord # 2011-05 of the SP of  SFC, LU “An Ord Regulating Smoking in the City of San Fdo, LU & Providing Penalties for the Violation”","10","Resolution 003-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("003 - 2013","","Return Ord # 21, s 2012, of the SB of Naguilian, LU, “An Ord Enacting the Health & Sanitation Code of the Mun of Naguilian, LU & Providing Penalties to Violation Thereof”.","1,7,10,18,20","RES 003-2013 ORD 21 2012 NAGUILIAN.pdf","21","2013-01-03","0");
INSERT INTO tbl_resolution VALUES("003 - 2014","2014 - 0006","Recommend approval of the FY 2014 GF AB, of Tubao, La Union.","1","RESOLUTION 003-2014.pdf","21","2014-01-09","0");
INSERT INTO tbl_resolution VALUES("004 - 1999","","RESOLVED, as it is hereby resolved, to authorize the Hon. Provincial Governor Justo O. Orros Jr., for and in behalf of the Provincial Government of La Union, to enter into a Memorandum of Agreement with Mr. Rizalito Etrata in connection with the maintenance and/or repair of the Radio Repeater System of the Provincial Government installed at Mt. Sto. Tomas, Tuba, Benguet.\n\nRESOLVED further, to finished a copy of this Resolution to Mr. Rizalito Etrata, maintenance person, Mr. Sto. Tomas, Tuba, Benguet, for his information and guidance.","29","RESOLUTION NO.004-99.pdf","21","1999-01-14","0");
INSERT INTO tbl_resolution VALUES("004 - 2007","","Approve FY 2006 GF SB # 4, of Bagulin, LU ","2","RESOLUTION NO. 004-2007.pdf","21","2007-01-04","0");
INSERT INTO tbl_resolution VALUES("004 - 2008","","Renew the Contract of Service of Ms. Olivia Nelmida as Contractual Accounting Clerk, Mr. Beverly Quiaño as Contractual Pharmacy Aide and Ms. Perlita Sito as Contractual Pharmacist at Bacnotan District Hospital ","20","RESOLUTION NO. 004-2008.pdf","21","2008-01-17","0");
INSERT INTO tbl_resolution VALUES("004 - 2010","","Approve GF SB # 6, of Rosario, LU","2","Resolution 004-2010.pdf","21","2010-01-07","0");
INSERT INTO tbl_resolution VALUES("004 - 2011","","Request Pres. Benigno Simeon Aquino III to issue a Proclamation for a Special Non-Working Holiday on March 2, 2011","1,3,5,7,9,10,11,12,13,18,19,20,21","Resolution 004-2011.pdf","21","2011-01-06","0");
INSERT INTO tbl_resolution VALUES("004 - 2012","","Approve City Ord # 2011-06 of the SP of  SFC, LU, “An Ord Institutionalizing The Disaster Management & Resiliency System in the City of San Fdo & Providing Funds Thereof”","10","Resolution 004-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("004 - 2013","","Approve Mun Ord # 46-2012, of the SB of Agoo, LU, “An Ord Amending Sec 21 of Mun Ord # 26-2012, An Ord for the Prevention & Control of STD/HIV/AIDS in the Mun of Agoo, LU”.","18","RES 004-2013 ORD 46 2012 AGOO STD HIV.pdf","21","2013-01-03","0");
INSERT INTO tbl_resolution VALUES("005 - 1999","","Approve Ord # 6, of the SB of Santol, LU, Otherwise Known as the Revenue Code of 1998 of Santol, LU, Enacted Pursuant to the Provisions of RA 7160, Otherwise Known as the LGC of 1991, and its IRR and Amending/Repealing Tax Ordinances Inconsistent Herewith","24","RESOLUTION NO.005-99.pdf","21","1999-01-14","0");
INSERT INTO tbl_resolution VALUES("005 - 2007","","Approve FY 2006 GF SB # 4, of Santol, LU  ","2","RESOLUTION NO. 005-2007.pdf","21","2007-01-04","0");
INSERT INTO tbl_resolution VALUES("005 - 2008","","MOA with Macabato Baro a Namnama Multi-Purpose Coop; Bawanta Multi-Purpose Coop; Salincob Multi-Purpose Coop; San Fermin ARB Multi-Purpose Coop; Catdungan Multi-Purpose Coop and San Jose Multi-Purpose Coop relative to the implementation of the Fertilizer Loan Assistance for Yellow Corn Production Enhancement Program of the PGLU thru the Office of the Provincial Agriculturist","20","RESOLUTION NO. 005-2008.pdf","21","2008-01-17","0");
INSERT INTO tbl_resolution VALUES("005 - 2010","","Approve GF SB # 6, of Sto. Tomas, LU","2","Resolution 005-2010.pdf","21","2010-01-07","0");
INSERT INTO tbl_resolution VALUES("005 - 2011","","Contract of Service w/ Dr. Melissa Diaz, as Visiting Consultant on Pediatrics at Balaoan District Hosp","1","Resolution 005-2011.pdf","21","2011-01-06","0");
INSERT INTO tbl_resolution VALUES("005 - 2012","","Approve City Ord # 2011-07, of the SP of SFC, LU, “An Ord Ordaining the Consolidation of All Rules, Regulations & Ord in the Use, Operation, Maintenance& Issuance of Franchises of Motorized Tricycles for Hire & Private Motorized Tricycles in the SFC, LU & Repealing all Ord Inconsistent Herewith”","10","Resolution 005-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("005 - 2013","","Approve the CY 2013 Supplemental Annual Investment (AIP) for the purchase of ORT Community Multi-Purpose Coop properties.","1,7,10,11","RES 005-2013 AIP PURCHASE OF ORT.pdf","21","2013-01-10","0");
INSERT INTO tbl_resolution VALUES("006 - 1999","","Approve Mun Ord # 7-98, emb. in Res. No. 28-98, of the SB of San Juan, LU, Authorizing the Reclassification of the Agricultural Land of Mr. Sabino Padua Covered by Tax Declaration No. 93-040-18292, Located at Brgy. Talogtog, San Juan, LU, Into a Residential Land","24","RESOLUTION NO.006-99.pdf","21","1999-01-14","0");
INSERT INTO tbl_resolution VALUES("006 - 2007","","Approve FY 2006 GF SB # 4, of Burgos, LU ","2","RESOLUTION NO. 006-2007.pdf","21","2007-01-04","0");
INSERT INTO tbl_resolution VALUES("006 - 2008","","Approve the proposed programming of the share of the Province of La Union from RA 7171 in the amount of P19,979,949","1","RESOLUTION NO. 006-2008.pdf","21","2008-01-17","0");
INSERT INTO tbl_resolution VALUES("006 - 2010","","Renew Contract of Consultancy to the OPG of the ff:\n\na.	Engr. Pablo Salanga\nb.	Atty. Gerardo A. Viloria, Sr\nc.	Mr. Floresto C. Sayangda\nd.	Dr. Manuel R. Borja\ne.	Col. Roberto C. Ortega, Sr\nf.	Mr. Jose L. Macusi\ng.	Mr. Justiniano A. Arzadon\nh.	Mr. Edgar B. Ferido\ni.	Judge Joven F. Costales\n","1,5,7,18,20","Resolution 006-2010.pdf","21","2010-01-14","0");
INSERT INTO tbl_resolution VALUES("006 - 2011","","Condole w/ Brgy. Kgd. CezarBambico, Brgy. Bariquir, Naguilian, LU","9","Resolution 006-2011.pdf","21","2011-01-06","0");
INSERT INTO tbl_resolution VALUES("006 - 2012","","Approve City Ord # 2011-12 of the SP of SFC, LU “An Ord Requiring the Standing At Attention & Singing of the Phil Nat’l Anthem”","10","Resolution 006-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("006 - 2013","","MOA with the Coop Bank of LU, Agoo, LU, to offer its services part. Salary loan to permanent employees & officials of the PGLU.","1,7","RES 006-2013 MOA CBLU.pdf","21","2013-01-10","0");
INSERT INTO tbl_resolution VALUES("006 - 2014","2014 - 0025","Recommend approval of the FY 2013 GF SB # 2, of Bacnotan, LU","1","RESOLUTION 006-2014.pdf","21","2014-01-16","0");
INSERT INTO tbl_resolution VALUES("007 - 1999","","Approve Res # 30, of the SB of Bagulin, LU, Revising the Revenue Ordinance of that Municipality","24","RESOLUTION NO.007-99.pdf","21","1999-01-14","0");
INSERT INTO tbl_resolution VALUES("007 - 2007","","Renew the Contract of Services of Ms. Jane Castillo as Contractual Nurse/Pharmacy Aide at the Naguilian  District Hospital ","34","RESOLUTION NO. 007-2007.pdf","21","2007-01-11","0");
INSERT INTO tbl_resolution VALUES("007 - 2008","","Approve the salary adjustment of Ms. Roselily Agtarap, Administrative Officer V, Provincial Health Office, from SG 18, Step 5 to SG 19, Step 5 or one grade higher of her present salary ","18","RESOLUTION NO. 007-2008.pdf","21","2008-01-17","0");
INSERT INTO tbl_resolution VALUES("007 - 2010","","General Authority to the Governor to renew the MOA/Contract of Affiliation of all Colleges, Universities, and Schools or Nursing, Caregivers and Midwifery","1,5,18,31","Resolution 007-2010.pdf","21","2010-01-14","0");
INSERT INTO tbl_resolution VALUES("007 - 2011","","Organize the Local Health Account (LHA) Team &the estimation & use of LHAs in the province","1,18","Resolution 007-2011.pdf","21","2011-01-13","0");
INSERT INTO tbl_resolution VALUES("007 - 2012","","Return City Ord #2011-13 of the SP of the SFC, LU, “An Ord Regulating the Sale, Serving and Drinking of Liquor in Places of Entertainment, Business Establishments & Public Places, &Providing Penalties for Violation Thereof, & Repealing City Ord #2010-013”","10","Resolution 007-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("007 - 2013","","MOA w/ Phil Nuclear Research Institute under DOST re: subscription of the Optically Stimulated Luminescent (OSL) Dosimeter Personnel Monitoring Service by the Bacnotan Dist Hospital.","1,7,10,20","RES 007-2013 MOA WITH PNRI.pdf","21","2013-01-10","0");
INSERT INTO tbl_resolution VALUES("007 - 2014","2014 - 0024","Recommend approval of the FY 2013 GF SB # 4, of Bagulin, LU","1","RESOLUTION 007-2014.pdf","21","2014-01-16","0");
INSERT INTO tbl_resolution VALUES("008 - 1999","","Return Mun Ord # 08-98, of the SB of Balaoan, LU, Instituting the Re-classification, Re-assessment and the Valuation of Real Properties Based on their Actual Use","24","RESOLUTION NO.008-99.pdf","21","1999-01-14","0");
INSERT INTO tbl_resolution VALUES("008 - 2007","","MOA w/ theDA-RFU-I, DMMMSU, Bureau of Plant Industry – National Seed Quality Control Service Region I (BPI-NSQCS I), Phil. Rice Research Institute (PHILRICE), Agricultural Training Institute – Regional Training Inc (ATI-RTC), La Union Seed Producers Multi-Purpose Coop. Inc. (LUSPMPCI) and the Municipal Governments of Aringay, Naguilian, San Juan, Caba and Bacnotan, LU, relative to the Hybrid Rice Seed Production Project for pilot implementation","22","RESOLUTION NO. 008-2007.pdf","21","2007-01-11","0");
INSERT INTO tbl_resolution VALUES("008 - 2008","","Convey the gratitude to the Kansas City Surgical and Medical Team, USA, for selflessly sharing their expertise and services to the people of La Union","3","RESOLUTION NO. 008-2008.pdf","21","2008-01-17","0");
INSERT INTO tbl_resolution VALUES("008 - 2010","","Realign P800,000.00 to Multi-Purpose Halls and Irrigation System projects","1,3,18","Resolution 008-2010.pdf","21","2010-01-14","0");
INSERT INTO tbl_resolution VALUES("008 - 2011","","Approve FY 2011 GF AB of Bangar, LU","11","Resolution 008-2011.pdf","21","2011-01-13","0");
INSERT INTO tbl_resolution VALUES("008 - 2012","","Approve City Ord # 2011-14 of the SP of the SFC, LU, “An Ord Prescribing the Rules & Regulations in the Operation of Baratillos, Flea Market, Night Markets, Trade Fairs & Other Seasonal Businesses in the City”","10","Resolution 008-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("008 - 2013","","Renew Contract of Consultancy of:\n\n1.	Eng’r Pablo A. Salanga, Infra Dev’t Affairs\n2.	Atty. Gerardo A. Viloria Sr, Legal Dev’t Affairs\n3.	Mr. Floresto C. Sayangda, Local Gov’t Dev’t Affairs, 1st Dist\n4.	Mr. Jose L. Macusi, Indigenous Peoples Dev’t Affairs\n5.	Mr. Justiniano A. Arzadon, Brgy Affairs\n6.	Judge Joven F. Costales, Sr. Citizens Dev’t Affairs\n7.	Dr. Jose C. Ostrea, Health, Sanitation, Env’t & Population Dev’t Affairs\n8.	Mr. Carlito V. dela Cruz, Tourism, Trade & Industry Dev’t Affairs\n9.	Eng’r Elmo B. Fama, Electrical Power Dev’t\n10.	Mr. Firth McEachern, Local Language Planning, Multilingual Services & Education Dev’t\n11.	Ms. Imelda C. Asiaten, Cultural & Music Dev’t\n12.	Ms. Laura-Amelie Riavitz, Marine Resources Dev’t\n","11,12,19","RES 008-2013 CONSULTANCY SERVICE.pdf","21","2013-01-10","0");
INSERT INTO tbl_resolution VALUES("008 - 2014","2014 - 0023","Recommend approval of the FY 2013 GF SB # 9, of Agoo, LU","1","RESOLUTION 008-2014.pdf","21","2014-01-16","0");
INSERT INTO tbl_resolution VALUES("009 - 1999","","Note Res # 98-093, of the SB of Pugo, LU, Authorizing the Operation of the Pugo Sports Complex During Fridays Starting on November 20, 1998 to January 29, 1999 to Raise Revenues for the Commemoration of the Founding Anniversary & Patronal Town Fiesta of the Municipality","24","RESOLUTION NO.009-99.pdf","21","1999-01-14","0");
INSERT INTO tbl_resolution VALUES("009 - 2007","","Condole w/ SBM Jose “Peping” Ramirez, Balaoan","22","RESOLUTION NO. 009-2007.pdf","21","2007-01-11","0");
INSERT INTO tbl_resolution VALUES("009 - 2008","","Adopt Sen. Francis “Chiz” G. Escudero as son of the province of La Union","1","","21","2008-01-24","0");
INSERT INTO tbl_resolution VALUES("009 - 2010","","Approve FY 2010 GF AB,  of Sto. Tomas, LU","2","Resolution 009-2010.pdf","21","2010-01-14","0");
INSERT INTO tbl_resolution VALUES("009 - 2011","","Approve Ord # 001-2010, of the SB of Bangar, LU, An Ord Enacting the Bangar Investment & Incentive Code","10","Resolution 009-2011.pdf","21","2011-01-13","0");
INSERT INTO tbl_resolution VALUES("009 - 2012","","Approve Mun Ord # 02-2011 of the SB of San Gabriel, LU, “An Ord Amending, Consolidating & Codifying All Laws of Rules Relative to the Operation of Land Transportation & Regulating the Use of Streets, Roads & Avenues w/n the Said Municipality &Providing Fines &Penalties for Every Violation Thereof”","10","Resolution 009-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("009 - 2013","","Approve FY 2012 GF SB # 10, of Bagulin, La Union.","1","RES 009-2013 .pdf","21","2013-01-10","0");
INSERT INTO tbl_resolution VALUES("009 - 2014","2014 - 0027","Recommend approval of the FY 2014 GF AB, of Burgos, LU ","1","RESOLUTION 009-2014.pdf","21","2014-01-16","0");
INSERT INTO tbl_resolution VALUES("010 - 1999","","Support HB # 3613, An Act Granting the SP the Power to Conduct Inquiries in Aid of Legislation, Issue Subpoena Testificandum and Duces Tecum, and to Punish for Contempt Any Person who Refuses to Obey Such Process, Amending for the Purpose Sec. 468 of Ra 7160, Otherwise Known as the LGC of 1991","24","RESOLUTION NO.010-99.pdf","21","1999-01-14","0");
INSERT INTO tbl_resolution VALUES("010 - 2007","","Condole w/ the late Rosario Concepcion Ostrea, Balaoan","22","RESOLUTION NO. 010-2007.pdf","21","2007-01-11","0");
INSERT INTO tbl_resolution VALUES("010 - 2008","","Adopt Sen. Loren B. Legarda as daughter of the province of La Union","1","RESOLUTION NO. 010-2008.pdf","21","2008-01-24","0");
INSERT INTO tbl_resolution VALUES("010 - 2010","","Approve FY 2009 GF SB # 7, of Pugo, LU","2","Resolution 010-2010.pdf","21","2010-01-14","0");
INSERT INTO tbl_resolution VALUES("010 - 2011","","Approve Mun Ord # 16-2010, of the SB of San Juan, LU, The San Juan LU Investment & Incentive Code","10","Resolution 010-2011.pdf","21","2011-01-13","0");
INSERT INTO tbl_resolution VALUES("010 - 2012","","Approve Mun Ord # 24-2011 of the SB of Agoo, LU, “The Comprehensive Anti-Smoking Ord of Agoo, LU”","10","Resolution 010-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("010 - 2013","","Approve FY 2012 GF SB # 2, of Santol, La Union.","1","RES 010-2013 .pdf","21","2013-01-10","0");
INSERT INTO tbl_resolution VALUES("010 - 2014","2014 - 0030","Recommend approval of the FY 2014 GF AB of Sudipen, LU","1","RESOLUTION 010-2014.pdf","21","2014-01-16","0");
INSERT INTO tbl_resolution VALUES("011 - 1999","","Return Ord # 98-07, of the SB of Naguilian, LU, Amending Certain Provisions of Ordinance No. 92-51 (As Amended Otherwise Known As the MCH Franchise Ordinance of that Municipality)","24","RESOLUTION NO.011-99.pdf","21","1999-01-14","0");
INSERT INTO tbl_resolution VALUES("011 - 2007","","Approve Ord # 2006-54 of the SB of Santol, LU, “An Ord Providing for the Protection of Municipal Waters and All its Resources and Providing Penalties for Violations Thereof”","10","RESOLUTION NO. 011-2007.pdf","21","2007-01-18","0");
INSERT INTO tbl_resolution VALUES("011 - 2008","","MOA with the Population Services Phils. Inc. Marie Stopes Clinic in connection with the Family Planning Program of the province","18","RESOLUTION NO. 011-2008.pdf","21","2008-01-24","0");
INSERT INTO tbl_resolution VALUES("011 - 2010","","MOA w/ the Automobile Association of the Phils. – Lakbay Inc. (AAP-LAKBAY, INC) to develop a Provincial Travel and Motoring de Tour Trip Planner","1","Resolution 011-2010.pdf","21","2010-01-21","0");
INSERT INTO tbl_resolution VALUES("011 - 2011","","Approve Mun Ord # 32, s 2010, of the SB of Burgos, LU, Ord Repealing Mun Ord # 005-98 (Ord Prohibiting the Sale of Liquor During Market Days (Sat) from 1:00 PM to 4:00 AM w/n the Jurisdiction of New Poblacion&Bilis, Burgos, LU, w/ Certain Exceptions)","10","Resolution 011-2011.pdf","21","2011-01-13","0");
INSERT INTO tbl_resolution VALUES("011 - 2012","","Approve Mun Ord # 33-2011 of the SB of Agoo, LU, An Ord Amending Sec 7, Items 2 & 5 of Mun Ord # 24-2011,”The Comprehensive Anti-Smoking Ord of Agoo, LU”","10","Resolution 011-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("011 - 2013","","Approve FY 2012 GF SB # 2, of Sto. Tomas, La Union.","1","RES 011-2013 .pdf","21","2013-01-10","0");
INSERT INTO tbl_resolution VALUES("012 - 1999","","Return Ord # 98-19, of the SB of Naguilian, LU, Amending Ord # 96-35 Otherwise Known as the Traffic Code of the Municipality of Naguilian, LU, Imposing Penalties for Violation Thereof & for Other Purposes","24","RESOLUTION NO.012-99.pdf","21","1999-01-14","0");
INSERT INTO tbl_resolution VALUES("012 - 2007","","Approve Ord # 2006-53 of the SB of Santol, LU, “An OrdProviding for the Prevention and Control of Avian Influenza Within the Jurisdiction of Santol, LU”","10","RESOLUTION NO. 012-2007.pdf","21","2007-01-18","0");
INSERT INTO tbl_resolution VALUES("012 - 2008","","Approve the renewal of the Provincial Government’s Loan of P20 M with the Development Bank of the Phils. (DBP) for another one (1) year","1","RESOLUTION NO. 012-2008.pdf","21","2008-01-24","0");
INSERT INTO tbl_resolution VALUES("012 - 2010","","Condole w/ Press Secretary Cerge M. Remonde","6,31","Resolution 012-2010.pdf","21","2010-01-21","0");
INSERT INTO tbl_resolution VALUES("012 - 2011","","Return Mun Ord # 22-2010, of the SB of San Juan, LU, An Ord Banning Motor Vehicles from Parking Along the Road Shoulders of Manila North Road","10","Resolution 012-2011.pdf","21","2011-01-13","0");
INSERT INTO tbl_resolution VALUES("012 - 2012","","Approve FY 2012 GF AB of Naguilian, La Union.","1","Resolution 012-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("012 - 2013","","Approve FY 2012 GF SB # 3, of Pugo, La Union.","1","RES 012-2013 .pdf","21","2013-01-10","0");
INSERT INTO tbl_resolution VALUES("012 - 2014","2014 - 0031","Resolution commending the Agoo Children?s Choir for Winning the Silver Diploma in the Recently Concluded International Choral Competition held at the CCP, Manila","8","RESOLUTION 012-2014.pdf","21","2014-01-16","0");
INSERT INTO tbl_resolution VALUES("013 - 1999","","Dismiss Admin Case # 4-96, entitled: Hilario Jaravata vs. SBM Ramon Lopez, Tubao, LU","22","RESOLUTION NO.013-99.pdf","21","1999-01-14","0");
INSERT INTO tbl_resolution VALUES("013 - 2007","","MOAw/ the DOH-CHD pertaining to the assignment or detail of Medical specialist II to extend technical assistance at the La Union Medical Center, Agoo, LU","18","RESOLUTION NO. 013-2007.pdf","21","2007-01-25","0");
INSERT INTO tbl_resolution VALUES("013 - 2008","","Create the Permanent Committee on Public Auction of the PGLU","1","RESOLUTION NO. 013-2008.pdf","21","2008-01-24","0");
INSERT INTO tbl_resolution VALUES("013 - 2010","","Welcome PC Supt Constante Davis Azares as the new PNP RD","1","Resolution 013-2010.pdf","21","2010-01-21","0");
INSERT INTO tbl_resolution VALUES("013 - 2011","","Approve City Ord # 2010-014, of the SP of the City of San Fernando, LU, An Ord Amending Chapter 16 of the Sanitation Code of the City of San Fernando","18","Resolution 013-2011.pdf","21","2011-01-13","0");
INSERT INTO tbl_resolution VALUES("013 - 2012","","Approve  FY 2011 GF SB #3 of Santol, La Union.","1","Resolution 013-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("013 - 2013","","Approve FY 2012 GF SB # 4, of Pugo, La Union.","1","RES 013-2013 .pdf","21","2013-01-10","0");
INSERT INTO tbl_resolution VALUES("013 - 2014","2014 - 0005","An Ord Authorizing the Proposed Borrowing of the Mun of Caba, Province of La Union in the amount of P8M to Fund the Expansion of Caba Memorial Park (P5M) & Construction of Legislative Bldg (P3M)","10","RESOLUTION 013-2014_001.pdf","21","2014-01-16","0");
INSERT INTO tbl_resolution VALUES("014 - 1999","","Dismiss Admin Case # 4-96, entitled: Hilario Jaravata vs. SBM Ramon Lopez, Tubao, LU","22","RESOLUTION NO.014-99.pdf","21","1999-01-14","0");
INSERT INTO tbl_resolution VALUES("014 - 2007","","Renew the Contract of Services of Ms. SheilalynJulaton as Contractual Accounting Clerk and Ms. PerlitaSito as Contractual Pharmacy Aide to the Bacnotan District Hospital","18","RESOLUTION NO. 014-2007.pdf","21","2007-01-25","0");
INSERT INTO tbl_resolution VALUES("014 - 2008","","Engage the services of MM Lazaro & Associates Law Office to represent the SP of LU and the Provincial Treasurer in SPL Civil Case No. 65-BG, entitled: BPPC, Petitioner vs. SP of the Province of LU and the Provincial Treasurer, Respondents, filed before RTC Branch 33, Bauang, LUfor Indirect Contempt","1","RESOLUTION NO. 014-2008.pdf","21","2008-01-24","0");
INSERT INTO tbl_resolution VALUES("014 - 2010","","Thank PGMA, Speaker Prospero Nograles, Senate Pres. Juan Ponce Enrile in enacting12%  exemption on Senior Citizens ","31","Resolution 014-2010.pdf","21","2010-01-21","0");
INSERT INTO tbl_resolution VALUES("014 - 2011","","Realign P2,410,000.00 (per SP Res # 193-2010) to the improvement of prov’l roads drainage system along Ancheta& Ortega Sts.","1,18","Resolution 014-2011.pdf","21","2011-01-13","0");
INSERT INTO tbl_resolution VALUES("014 - 2012","","Approve FY 2011 GF SB #4 of Balaoan, La Union. ","1","Resolution 014-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("014 - 2013","","Approve FY 2013 GF AB, of Burgos, La Union.","1","RES 014-2013 .pdf","21","2013-01-10","0");
INSERT INTO tbl_resolution VALUES("015 - 1999","","Dismiss Admin Case # 3-97, entitled: Olivia Leones vs. SBM Francisco Fontanilla, et.al., Bacnotan, LU","22","RESOLUTION NO.015-99.pdf","21","1999-01-14","0");
INSERT INTO tbl_resolution VALUES("015 - 2007","","Approve the application of and accredit MACABATOBARO A NAMNAMA as NGO","19","RESOLUTION NO. 015-2007.pdf","21","2007-01-25","0");
INSERT INTO tbl_resolution VALUES("015 - 2008","","MOA w/ DENR, DENR-Mines and Geoscience Bureau (DENR-MGB), DENR-Environmental Management Bureau (DENR-EMB), DWPH-LUED, Municipality of Sudipen and Bangar, LU in connection with the dredging of the Amburayan River at Sudipen and Bangar, LU ","1","RESOLUTION NO. 015-2008.pdf","21","2008-01-31","0");
INSERT INTO tbl_resolution VALUES("015 - 2010","","Approve FY 2010 GF AB, of Sudipen, LU","18","Resolution 015-2010.pdf","21","2010-01-28","0");
INSERT INTO tbl_resolution VALUES("015 - 2011","","MOA w/ Basic Needs Services (BNS) Phils, Inc. in connection w/ its proposed technical assistance in the preparation of Feasibility Study, detailed process design, engineering design, implementation plan of Decentralized Waste Water Treatment System (DEWATS) for district hospitals ","1,10,18","Resolution 015-2011.pdf","21","2011-01-13","0");
INSERT INTO tbl_resolution VALUES("015 - 2012","","Approve FY 2011 GF SB #3 of Bauang, La Union.","1","Resolution 015-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("015 - 2013","","Approve FY 2013 GF AB, of San Juan, La Union.","1","RES 015-2013 .pdf","21","2013-01-10","0");
INSERT INTO tbl_resolution VALUES("016 - 1999","","Dismiss Admin Case # 01-98, entitled: Lydia Floresca vs. VM Ceferino Argueza, Naguilian, LU","22","RESOLUTION NO.016-99.pdf","21","1999-01-14","0");
INSERT INTO tbl_resolution VALUES("016 - 2007","","Condole w/ SK Chairman AngelitoCasil, Calumbaya, Bauang","35","RESOLUTION NO. 016-2007.pdf","21","2007-01-25","0");
INSERT INTO tbl_resolution VALUES("016 - 2008","","MOA with the University of Baguio, Baguio City pertaining to the On-The-Job Training Practicum of UB Nursing students at the Rosario District Hospital (RDH) 2007-2008","18","RESOLUTION NO. 016-2008.pdf","21","2008-01-31","0");
INSERT INTO tbl_resolution VALUES("016 - 2010","","Approve FY 2010 GF SB # 1, of Naguilian, LU","18","Resolution 016-2010.pdf","21","2010-01-28","0");
INSERT INTO tbl_resolution VALUES("016 - 2011","","MOA w/ NEDA in connection w/ the implementation of the joint project: “Integrating Disaster Risk Reduction & Climate Change Adoption (DRR/CCA) in Local Dev’t Planning & Decision-Making Processes”","11,18","Resolution 016-2011.pdf","21","2011-01-20","0");
INSERT INTO tbl_resolution VALUES("016 - 2012","","Approve FY 2011 GF SB #4 of Bauang, La Union.","1","Resolution 016-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("016 - 2013","","Condole with the bereaved family of Brgy. Captain Felino H. Gorospe, Brgy. Dallipaoen, Naguilian, La Union.","9,20","RES 016-2013 condolence gorospe.pdf","21","2013-01-10","0");
INSERT INTO tbl_resolution VALUES("017 - 1999","","Congratulate MGen Willie C. Florendo as the Commanding General of the AFP","26","RESOLUTION NO.017-99.pdf","21","1999-01-14","0");
INSERT INTO tbl_resolution VALUES("017 - 2007","","Condole w /former OIC-Mayor Jose Diaz, Aringay ","34","RESOLUTION NO. 017-2007.pdf","21","2007-01-25","0");
INSERT INTO tbl_resolution VALUES("017 - 2008","","Request PGMA to declare March 3, 2008 as Non-Working Holiday in the Province ","31","RESOLUTION NO. 017-2008.pdf","21","2008-01-31","0");
INSERT INTO tbl_resolution VALUES("017 - 2010","","Approve FY 2010 GF SB # 1, of Sudipen, LU","18","Resolution 017-2010.pdf","21","2010-01-28","0");
INSERT INTO tbl_resolution VALUES("017 - 2011","","Negotiate w/ Marilou Mejia, Josephine Ferreras, Fernando Gapasin, Nestor Gapasin& Sandy Gapasin of Sevilla, CSF, LU for the acquisition of a portion of their lot including the affected portion of their 2-storey residential house standing therein ","7,10,18","Resolution 017-2011.pdf","21","2011-01-20","0");
INSERT INTO tbl_resolution VALUES("017 - 2012","","Approve FY 2011 GF SB #7 of Agoo, La Union.","1","Resolution 017-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("017 - 2013","","Approve Ord # 7-2012, of the SB of San Gabriel, La Union “Ord Regulating the Use of Plastic Bags in Comm’l Establishment in the Mun of San Gabriel, LU & Providing Penalties for Violation Thereof”","1,7,17","RES 017-2013.pdf","21","2013-01-10","0");
INSERT INTO tbl_resolution VALUES("018 - 1999","","Approve FY 1998 GF SB # 3, of Bacnotan, La Union","27","RESOLUTION NO.018-99.pdf","21","1999-01-14","0");
INSERT INTO tbl_resolution VALUES("018 - 2007","","Condole w/ formerSBMCasimiroBoado, Jr. Pugo","19","RESOLUTION NO. 018-2007.pdf","21","2007-01-25","0");
INSERT INTO tbl_resolution VALUES("018 - 2008","","Approve FY 2007 GF SB # 7, of CSF, LU ","2","RESOLUTION NO. 018-2008.pdf","21","2008-01-31","0");
INSERT INTO tbl_resolution VALUES("018 - 2010","","Approve FY 2010 GF AB, of Rosario, LU","18","Resolution 018-2010.pdf","21","2010-01-28","0");
INSERT INTO tbl_resolution VALUES("018 - 2011","","Approve FY 2010 GF SB # 1, of Naguilian, LU","20","Resolution 018-2011.pdf","21","2011-01-20","0");
INSERT INTO tbl_resolution VALUES("018 - 2012","","Approve FY 2011 GF SB #1 of Naguilian, La Union.","1","Resolution 018-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("018 - 2013","","Condole with the bereaved family of Brgy. Captain Luciano E. Caluza, Brgy. Ballay, Bauang, La Union.","7","RES 018-2013.pdf","21","2013-01-10","0");
INSERT INTO tbl_resolution VALUES("018 - 2014","2014 - 0043","Request to authorize the payment of Accounts Payable in the amount of P7,106,760.87 to be charged to the Current Appropriations","1,7,8,10","RESOLUTION 018-2014_001.pdf","21","2014-01-23","0");
INSERT INTO tbl_resolution VALUES("019 - 1999","","Approve FY 1998 GF SB # 5, of Agoo, LU","27","RESOLUTION NO.019-99.pdf","21","1999-01-14","0");
INSERT INTO tbl_resolution VALUES("019 - 2007","","Create the AD-HOC Committee on Awards to study/screen and recommend to the SP the nominees for the Saranay Award, Diego Silang Award, La Union Service Award, Abel and Basi Awards and Entrepinoy Award","19","RESOLUTION NO. 019-2007.pdf","21","2007-01-25","0");
INSERT INTO tbl_resolution VALUES("019 - 2008","","Approve FY 2007 GF SB # 8, of CSF, LU ","2","RESOLUTION NO. 019-2008.pdf","21","2008-01-31","0");
INSERT INTO tbl_resolution VALUES("019 - 2010","","Confirm and approve the ff:\n\nSARANAY AWARD\n1.	Dr. Geoffrey S. Tilan\n\nLA UNION SERVICE AWARD\n1.	Hon. Bellarmin A. Flores\n2.	Hon. Robert P. de Guzman\n3.	Hon. Severino C. Carbonell\n4.	Dr. Victorio C. Palabay\n5.	Mr. Orlando F. Marquez, Sr\n6.	Dr. Jose C. Ostrea\n","19","Resolution 019-2010.pdf","21","2010-01-28","0");
INSERT INTO tbl_resolution VALUES("019 - 2011","","Approve FY 2010 GF SB # 13 of Bauang, LU","20","Resolution 019-2011.pdf","21","2011-01-20","0");
INSERT INTO tbl_resolution VALUES("019 - 2012","","Renew contract of Consultancy Services of the ff effective Jan. 2,2012 to Dec 31,2012\n\n1.	Gerardo A. Viloria\n2.	Firth McEachern\n3.	Manuel R.Borja\n4.	Justiniano A.  Arzadon\n5.	Joven F. Costales\n6.	Violeta L. Balbin\n7.	Jose L. Macusi\n8.	Carlito V. dela Cruz\n9.	Bellarmin A. Flores II\n10.	Mario A. Lacsamana\n11.	Jose C. Ostrea\n12.	Pablo A. Salanga\n13.	Floresto C. Sayangda\n14.	Roberto C. Ortega  ","1","Resolution 019-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("019 - 2013","","MOA with DOH re: 2012 Maternal Newborn Child Health & Nutrition (MNCHN).","1,5,20","RES 019-2013.pdf","21","2013-01-17","0");
INSERT INTO tbl_resolution VALUES("019 - 2014","2014 - 0042","Request to enter into a Contract of Agreement w/ Dr. Eric Piscawen as Visiting Consultant in Orthopedics at Balaoan Dist Hospital.","4","RESOLUTION 019-2014.pdf","21","2014-01-23","0");
INSERT INTO tbl_resolution VALUES("020 - 1999","","Approve FY 1998 GF SB # 2, of Sudipen, LU","27","RESOLUTION NO.020-99.pdf","21","1999-01-14","0");
INSERT INTO tbl_resolution VALUES("020 - 2007","","Approve programming of RA 7171 in the amount of P51,135,426 ","2","RESOLUTION NO. 020-2007.pdf","21","2007-02-01","0");
INSERT INTO tbl_resolution VALUES("020 - 2008","","Approve FY 2007 GF SB # 9, of CSF, LU ","2","RESOLUTION NO. 020-2008.pdf","21","2008-01-31","0");
INSERT INTO tbl_resolution VALUES("020 - 2010","","Confirm and approve the ff:\n\nSPECIAL AWARD\n     OUTSTANDING ENTREPINOY OF LA UNION\n1.	Cooperative Bank of La Union\n2.	Iving’s Handicraft\n3.	Lucina Weaving Industry\n4.	Arcadio B. dela Cruz\n\nSPECIAL AWARD\n1.	Avelino A. Lomboy\n","19","Resolution 020-2010.pdf","21","2010-01-28","0");
INSERT INTO tbl_resolution VALUES("020 - 2011","","Congratulate Hon. SixtoBrillantes on his appointment as the new Chairman of COMELEC","21","Resolution 020-2011.pdf","21","2011-01-20","0");
INSERT INTO tbl_resolution VALUES("020 - 2012","","Renew Contract of Service, w/ Engr. Elmo B. Fama as PGLU’s Professional Electrical Eng’r ","1","Resolution 020-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("020 - 2013","","Approve FY 2012 GF SB # 3, of the City of San Fernando, La Union.","1,5,7,9,11,20","RES 020-2013.pdf","21","2013-01-17","0");
INSERT INTO tbl_resolution VALUES("020 - 2014","2014 - 0236","Request authority to enter into a MOA w/ SLC, UCC, DMMMSU, Lorma Colleges, St. John Bosco College, AMA Computer College, LUCST and other requesting colleges, universities and tertiary schools re: OJT/Practicum in the different departments, hospitals and offices of the PGLU.","4","RESOLUTION 020-2014.pdf","21","2014-01-23","0");
INSERT INTO tbl_resolution VALUES("021 - 1999","","Approve FY 1998 GF SB # 2, of Sto. Tomas, LU","27","RESOLUTION NO.021-99.pdf","21","1999-01-14","0");
INSERT INTO tbl_resolution VALUES("021 - 2007","","MOA w/ the DMMMSU, Cong. Manuel Ortega, 1st District and the La Union Beekeepers Development Coop. Inc. (LUBDCO) relative to the expansion of the Provincial Apiculture Program and Construction of the La Union Apiculture Development and Processing Center","10","RESOLUTION NO. 021-2007.pdf","21","2007-02-01","0");
INSERT INTO tbl_resolution VALUES("021 - 2008","","Approve FY 2007 GF SB # 3, of Bacnotan, LU","2","RESOLUTION NO. 021-2008.pdf","21","2008-01-31","0");
INSERT INTO tbl_resolution VALUES("021 - 2010","","Confirm and approve the ff:\n\nLA UNION SERVICE AWARD\n1.	Hon. Jonathan Justo A. Orros\n2.	Hon. Hermenegildo A. Gualberto\n3.	Hon. George B. Pinzon\n4.	Hon. SalcedoA.Tumbaga\n5.	Ms. Joy Josette L. Lachica\n6.	Ms. DariaMingaracal\n7.	Mr. Ranilo P. Ipac\n8.	Judge Ferdinand A. Fe\n9.	Dr. Mauro A. LibatiqueJr\n\nDIEGO SILANG AWARD\n1.	Dr. Eduardo C. Janairo\n2.	PC Supt Ramon V. Gatan\n3.	Pros. Danilo C. Bumacod\n\nBASI AWARD\n1.	Municipal Government of Agoo, LU\n2.	INC – Ecclesiastical District of LU\n","18","Resolution 021-2010.pdf","21","2010-01-28","0");
INSERT INTO tbl_resolution VALUES("021 - 2011","","Favorably endorse conversion of Rosario-Tubao Rd, Naguilian-Caba Rd, Agoo-Sto. Tomas-Tubao Rd and Naguilian-Bagulin Rd into a National Road","7,18,20","Resolution 021-2011.pdf","21","2011-01-20","0");
INSERT INTO tbl_resolution VALUES("021 - 2012","","Return Mun Ord #04, s 2011 of the SB of Sto Tomas, LU, “Revised Revenue Code of the Mun of Sto Tomas, Prov of LU”","20","Resolution 021-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("021 - 2013","","Approve FY 2012 GF SB # 4, of the City of San Fernando, La Union.","1,5,7,9,11,20","RES 021-2013.pdf","21","2013-01-17","0");
INSERT INTO tbl_resolution VALUES("021 - 2014","2014 - 0044","Request authority to renew the Contract of Consultancy Services of the ff effective Jan 2 to Dec 31, 2014","4","RESOLUTION 021-2014.pdf","21","2014-01-23","0");
INSERT INTO tbl_resolution VALUES("022 - 1999","","Approve FY 1998 GF AB, of Balaoan, LU","27","RESOLUTION NO.022-99.pdf","21","1999-01-14","0");
INSERT INTO tbl_resolution VALUES("022 - 2007","","Grant a General and Continuing/Authority to Renew the MOA/Contract of Affiliation of all concerned colleges, universities and schools of Nursing, Caregivers and Midwifery who have entered/executed a MOA/Contract of Affiliation with the PGLU to the 5 District Hospitals of the province for SY 2007-2008","10,22","RESOLUTION NO. 022-2007.pdf","21","2007-02-01","0");
INSERT INTO tbl_resolution VALUES("022 - 2008","","Approve FY 2007 GF SB # 4, of Bacnotan, LU","2","RESOLUTION NO. 022-2008.pdf","21","2008-01-31","0");
INSERT INTO tbl_resolution VALUES("022 - 2010","","MOA w/ DA RFU in connection with the fund transfer of the 3rd tranche amounting to P2.5 M in support to the Apiculture Program","3,18,20","Resolution 022-2010.pdf","21","2010-02-04","0");
INSERT INTO tbl_resolution VALUES("022 - 2011","","Approve Res # 115, s 2010, of the SB of Luna, LU, Authorizing Mayor Victor Marvin Marron to Execute Appropriate Action Securing the rights of the Mun of Luna Over Its Patrimonial Property Located at the South of the St. Catherine of Alexandra Catholic Church, Luna, LU","17","Resolution 022-2011.pdf","21","2011-01-20","0");
INSERT INTO tbl_resolution VALUES("022 - 2012","","Approve Mun Ord #31-2011 of the SB of San Juan, La Union “An Ord Prescribing Prices of Meat Sold at San Juan Public Market”","20","Resolution 022-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("022 - 2013","","Approve FY 2012 GF SB # 5, of the Pugo, La Union.","1,5,7,9,11,20","RES 022-2013.pdf","21","2013-01-17","0");
INSERT INTO tbl_resolution VALUES("023 - 1999","","AO amounting P4,556,767.28 of the General Fund for SB # 7","20","RESOLUTION NO.023-99.pdf","21","1999-01-14","0");
INSERT INTO tbl_resolution VALUES("023 - 2007","","To approve Ord # 07, S. 2006 of the SB of Rosario, LU, entitled: “An Ord Banning Junk Shop Operators/Buyers of Junk Items/Materials from Buying Usable Items”","10","RESOLUTION NO. 023-2007.pdf","21","2007-02-01","0");
INSERT INTO tbl_resolution VALUES("023 - 2008","","Approve FY 2007 GF SB # 5, of Bacnotan, LU","2","RESOLUTION NO. 023-2008.pdf","21","2008-01-31","0");
INSERT INTO tbl_resolution VALUES("023 - 2010","","Support Res # 136, s 2009 of the SP of Laguna, on Anti-Child Pornography Act","1,18,20","Resolution 023-2010.pdf","21","2010-02-04","0");
INSERT INTO tbl_resolution VALUES("023 - 2011","","Approve Mun Ord # 19-2010, of the SB of San Juan, LU, “An Ord Imposing Limit in the Issuance of the Number of Tricycle Franchise, as amended further”","9","Resolution 023-2011.pdf","21","2011-01-20","0");
INSERT INTO tbl_resolution VALUES("023 - 2012","","Approve Mun Ord #05, s 2011, of the SB of Sto Tomas, LU, “An Ord Enacting the Market Code of Sto Tomas, LU”","20","Resolution 023-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("023 - 2013","","Propose for the adoption of Rules of Procedure of Manual of Admin Investigation Procedure in the Investigation/Hearing of Admin Cases against Elective Local Officials before the SP.","5,9,10","RES 023-2013.pdf","21","2013-01-17","0");
INSERT INTO tbl_resolution VALUES("023 - 2014","2014 - 0049","Letter of Gov. Manuel C. Ortega respectfully requesting the Honorable Body to authorize him to enter into a MOA with MERK SHARP and DOHME (L.A.) CORPORATION, Makati City to be represented by its President and Managing Director, DR. BEAVER R. TAMESIS,  for the effective, efficient and innovative implementation of a model LGU Access Program for Pneumonia and Cervical Cancer (HPV) Vaccination Program using quality and trustworthy products","4,5,9","RESOLUTION 023-2014.pdf","21","2014-01-30","0");
INSERT INTO tbl_resolution VALUES("024 - 1999","","Salary AO for Adjustment of DGMH employees","20","RESOLUTION NO.024-99.pdf","21","1999-01-21","0");
INSERT INTO tbl_resolution VALUES("024 - 2007","","To approve MunOrd # 23-2006 of the SB of San Juan, LU, “An Ord Prohibiting Anybody to Squat W/n the Surfing Dev’t Area”","10","RESOLUTION NO. 024-2007.pdf","21","2007-02-01","0");
INSERT INTO tbl_resolution VALUES("024 - 2008","","Approve FY 2007 GF SB # 6, of Bacnotan, LU ","2","","21","2008-01-31","0");
INSERT INTO tbl_resolution VALUES("024 - 2010","","Participate in the Monetization Program of the League of Native and Burley Tobacco Growing LGUs, Inc and authorize Gov. to sign the Subscription Agreement with respect to its share in the P6.3 B incremental revenue from the Excise Tax","20","Resolution 024-2010.pdf","21","2010-02-04","0");
INSERT INTO tbl_resolution VALUES("024 - 2011","","ESCROW AGREEMENT w/ 1590 Energy Corp. ","18","Resolution 024-2011.pdf","21","2011-01-20","0");
INSERT INTO tbl_resolution VALUES("024 - 2012","","Approve Ord #12, s 2011 of the SB of Bauang, La Union, “An Ord Imposing Fees on the Availment of Services, Use of Facilities, Including the Provision of Medicines & supplies at the Doña Corazon Campos Ortega Lying-in, Maternity, Geriatric& Therapeutic Center of the Mun of Bauang, La Union”","20","Resolution 024-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("024 - 2013","","Condole with the bereaved family of Ex-Councilor Sabino Z. Dacanay, Tubao.","7","RES 024-2013.pdf","21","2013-01-17","0");
INSERT INTO tbl_resolution VALUES("024 - 2014","2014 - 0041","Recommend approval of the FY 2013 GF SB # 1, of Naguilian, La Union","11","RESOLUTION 024-2014.pdf","21","2014-01-30","0");
INSERT INTO tbl_resolution VALUES("025 - 1999","","Amortization Schedule at Sagayad Resettlement ","20","RESOLUTION NO.025-99.pdf","21","1999-01-21","0");
INSERT INTO tbl_resolution VALUES("025 - 2007","","Approve FY 2007 GF AB, of Burgos, LU","20","RESOLUTION NO. 025-2007.pdf","21","2007-02-08","0");
INSERT INTO tbl_resolution VALUES("025 - 2008","","Approve FY 2007 GF SB # 2, of Balaoan, LU ","2","RESOLUTION NO. 025-2008.pdf","21","2008-01-31","0");
INSERT INTO tbl_resolution VALUES("025 - 2010","","Approve FY 2010 GF AB, of Luna, LU","1","Resolution 025-2010.pdf","21","2010-02-11","0");
INSERT INTO tbl_resolution VALUES("025 - 2011","","Condole w/ Mr. Abraham Estigoy, Bauang, LU ","1,18","Resolution 025-2011.pdf","21","2011-01-20","0");
INSERT INTO tbl_resolution VALUES("025 - 2012","","Approve Mun Ord #01-2011 of the SB of Bagulin, La Union, “Revenue Code of the Mun of Bagulin, Province of La Union”","20","Resolution 025-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("025 - 2013","","Condole with the bereaved family of Ex-BC Renato A. Nieva, Agoo, La Union.","20","RES 025-2013.pdf","21","2014-01-17","0");
INSERT INTO tbl_resolution VALUES("025 - 2014","2014 - 0038","Recommend approval of the FY 2014 GF SB # 1, of Tubao, La Union.","11","RESOLUTION 025-2014.pdf","21","2014-01-30","0");
INSERT INTO tbl_resolution VALUES("026 - 1999","","AO for Salary Adjustment of DGMH employees","20","RESOLUTION NO.026-99.pdf","21","1999-01-21","0");
INSERT INTO tbl_resolution VALUES("026 - 2007","","Approve FY 2007 GF AB, of Agoo, LU ","20","RESOLUTION NO. 026-2007.pdf","21","2007-02-08","0");
INSERT INTO tbl_resolution VALUES("026 - 2008","","Approve FY 2007 GF SB # 6, of Luna, LU ","2","RESOLUTION NO. 026-2008.pdf","21","2008-01-31","0");
INSERT INTO tbl_resolution VALUES("026 - 2010","","Approve FY 2010 GF AB, of Burgos, LU","1","Resolution 026-2010.pdf","21","2010-02-11","0");
INSERT INTO tbl_resolution VALUES("026 - 2011","","Condole w/ Dr. Gerardo Ortega, Puerto Princesa","20","Resolution 026-2011.pdf","21","2011-01-27","0");
INSERT INTO tbl_resolution VALUES("026 - 2012","","Approve Ord # 2010-02 of the SB of Caba, La Union “An Ord Adopting #2010 Revenue Code of the Mun of Caba, La Union”","20","Resolution 026-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("026 - 2013","","MOA with DA RFU for the establishment of “Organic Demo & Training Farms”.","1,5,7,17","RES 026-2013.pdf","21","2013-01-24","0");
INSERT INTO tbl_resolution VALUES("026 - 2014","2014 - 0039","Recommend approval of the FY 2014 GF AB, of Aringay, La Union.","11","RESOLUTION 026-2014.pdf","21","2014-01-30","0");
INSERT INTO tbl_resolution VALUES("027 - 1999","","Authorize Prov’l Treasurer to pay retirement claim of Mrs. Agripina Tilan, PHO","20","RESOLUTION NO.028-99.pdf","21","1999-01-21","0");
INSERT INTO tbl_resolution VALUES("027 - 2007","","Approve FY 2007 GF AB, of Sudipen, LU ","20","RESOLUTION NO. 027-2007.pdf","21","2007-02-08","0");
INSERT INTO tbl_resolution VALUES("027 - 2008","","Approve FY 2007 GF SB # 7, of Luna, LU ","2","RESOLUTION NO. 027-2008.pdf","21","2008-01-31","0");
INSERT INTO tbl_resolution VALUES("027 - 2010","","Approve FY 2010 GF SB # 2, of Naguilian, LU","1","Resolution 027-2010.pdf","21","2010-02-11","0");
INSERT INTO tbl_resolution VALUES("027 - 2011","","SARANAY AWARDEES:\n\n1.	Hon. Francisco Emmanuel R. Ortega III\n2.	H.E. Erlinda F. Basilio\n3.	Brig Gen Romulo M. Bambao\n4.	Brig Gen George de Jesus\n\nDIEGO SILANG AWARDEES:\n1.	PSupt Orlando M. Mabutas\n2.	P SSupt Ramon O. Purugganan\n3.	Ms. Frances Diane Arender\n4.	Dir. Corazon Guray\n\nLUSA AWARDEES:\n1.	Dir. Manuel C. Ano\n2.	Dr. Hazel A. Balbido\n3.	Ms. Catherine E. Franco\n4.	Dir. Valeriano V. Lopez, Jr\n5.	Dir. Bienvenida L. Ragucos\n6.	Dr. Francisco A. Valdez\n7.	Hon. Chester C. Bambico\n\nBASI AWARDEES:\n1.	La Union Vibrant Women’s Inc. (LUVWI) &Folklorikoti La Union\n2.	Municipality of Santol, LU\n3.	GungloDagitiMannuratngaIlokanoiti La Union (GUMIL)\n4.	Ocean Deep\n","20","Resolution 027-2011.pdf","21","2011-01-27","0");
INSERT INTO tbl_resolution VALUES("027 - 2012","","2ndAmendment to Contract to Sell between 1590 Energy.","1","Resolution 027-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("027 - 2013","","MOA with SLC, UCC, DMMMSU, LORMA COLLEGES, ST. JOHN BOSCO, AMA COMPUTER COLLEGE, LUCST, & other requesting colleges, universities & tertiary schools for the accommodation of their students to undergo OJT/practicum in the different departments of the PGLU.","5,6,10,18","RES 027-2013.pdf","21","2013-01-24","0");
INSERT INTO tbl_resolution VALUES("027 - 2014","2014 - 0040","Recommend approval of the FY 2014 GF AB, of Balaoan, La Union.","11","RESOLUTION 027-2014.pdf","21","2014-01-30","0");
INSERT INTO tbl_resolution VALUES("028 - 1999","","Set aside P68,764.00 to pay Supplies and Materials of SP Office","20","RESOLUTION NO.028-99.pdf","21","1999-01-21","0");
INSERT INTO tbl_resolution VALUES("028 - 2007","","Approve FY 2006 GF AB, of San Juan, LU","20","RESOLUTION NO. 028-2007.pdf","21","2007-02-08","0");
INSERT INTO tbl_resolution VALUES("028 - 2008","","Approve FY 2007 GF SB # 8, of CSF, LU ","2","RESOLUTION NO. 028-2008.pdf","21","2008-01-31","0");
INSERT INTO tbl_resolution VALUES("028 - 2010","","Contract of Lease w/ the North Shore Center for Developmentally Appropriate Education, Inc., for lease of the office space at Mabanag Hall","1,18","Resolution 028-2010.pdf","21","2010-02-11","0");
INSERT INTO tbl_resolution VALUES("028 - 2011","","Approve City Ord # 2010-005, of the SP of the City of San Fernando, LU, “An Ord Providing for the Rules & Regulations Governing the Establishment, Operation & Maintenance of All Tourism-Oriented & Tourism-Related Businesses in the City of San Fernando & Prescribing Penalties for Violations Thereof”","19","Resolution 028-2011.pdf","21","2011-01-27","0");
INSERT INTO tbl_resolution VALUES("028 - 2012","","Request Pres Benigno S. Aquino III, to declare March 2, 2012 as a holiday.","1","Resolution 028-2012.pdf","21","2012-01-12","0");
INSERT INTO tbl_resolution VALUES("028 - 2013","","Approve FY 2013 GF AB of Tubao, La Union.","1","RES 28-2013.pdf","21","2013-01-24","0");
INSERT INTO tbl_resolution VALUES("028 - 2014","2014 - 0003","Recommend approval of the FY 2014 GF AB of Sto. Toma, La Union.","11","RESOLUTION 028-2014.pdf","23","2014-01-30","0");
INSERT INTO tbl_resolution VALUES("029 - 1999","","AO amounting P268,642.37 for Terminal Leave Pay ","20","RESOLUTION NO.029-99.pdf","21","1999-01-21","0");
INSERT INTO tbl_resolution VALUES("029 - 2007","","Approve FY 2007 GF AB, of San Gabriel, LU ","20","RESOLUTION NO. 029-2007.pdf","21","2007-02-08","0");
INSERT INTO tbl_resolution VALUES("029 - 2008","","Approve FY 2007 GF SB # 2, of San Juan, LU ","2","RESOLUTION NO. 029-2008.pdf","21","2008-01-31","0");
INSERT INTO tbl_resolution VALUES("029 - 2010","","Contract of Lease w/ Mr. Raymund V. Boado, in connection w/ his desire to lease the hospital canteen at RDH","1,18","Resolution 029-2010.pdf","21","2010-02-11","0");
INSERT INTO tbl_resolution VALUES("029 - 2011","","Approve Mun Ord # 19A-2010, of the SB of Agoo, LU, “An Ord Amending Sec 14 of Mun Ord # 19-2010, An Ord Enacting the Rules & Regulations Covering Anti-Narcotics & Drug Abuse in the Mun of Agoo, LU”","18","Resolution 029-2011.pdf","21","2011-01-27","0");
INSERT INTO tbl_resolution VALUES("029 - 2012","","Approve FY 2012 GF AB of the SB of Burgos, La Union.","20","Resolution 029-2012.pdf","21","2012-01-12","0");
INSERT INTO tbl_resolution VALUES("029 - 2013","","Approve FY 2013 GF AB of Bangar, La Union.","1","RES 29-2013.pdf","21","2013-01-24","0");
INSERT INTO tbl_resolution VALUES("030 - 1999","","Approve 1998 GF SB # 01-H, of Bauang, LU","20","RESOLUTION NO.030-99.pdf","21","1999-01-21","0");
INSERT INTO tbl_resolution VALUES("030 - 2007","","Approve FY 2006 GF SB # 4, of Caba, LU ","20","RESOLUTION NO. 030-2007.pdf","21","2007-02-08","0");
INSERT INTO tbl_resolution VALUES("030 - 2008","","Approve FY 2007 GF SB # 3, of San Juan, LU ","2","RESOLUTION NO. 030-2008.pdf","21","2008-01-31","0");
INSERT INTO tbl_resolution VALUES("030 - 2010","","Return  Ord # 02-2009, of the SB of San Gabriel, LU, entitled: “An Ord Regulating the Construction/Installation of Cellular Sites in the Municipality of San Gabriel, LU”","20","Resolution 030-2010.pdf","21","2010-02-11","0");
INSERT INTO tbl_resolution VALUES("030 - 2011","","Approve EO # 013-2010, of Mayor Joy P. Merin, “Reorganizing the Mun Health Board of Bangar, LU”","18","Resolution 030-2011.pdf","21","2011-01-27","0");
INSERT INTO tbl_resolution VALUES("030 - 2012","","Support HB # 4505 filed by Manila representative Theresa Bonoan-David to provide add’l 1 % levy on real property tax","20","Resolution 030-2012.pdf","21","2012-01-12","0");
INSERT INTO tbl_resolution VALUES("030 - 2013","","Congratulate & commend winners & coaches of the PNG & set aside P39,000.00 as their incentives.","12,18,20","RES 30-2013.pdf","21","2013-01-24","0");
INSERT INTO tbl_resolution VALUES("030 - 2014","2014 - 0020","Ord # 13-2013, Ord Adopting the Lyrics & Music of the Composition of Mrs. Ildefonsa Q. Guinomma, Luna Dingayan& Pearl Dingayan as the Official Mun Hymn of the Mun of San Gabriel, LU","9","RESOLUTION 030-2014.pdf","21","2014-01-30","0");
INSERT INTO tbl_resolution VALUES("031 - 1999","","Approve 1999 GF AB, of Bangar, LU","20","RESOLUTION NO.031-99.pdf","21","1999-01-21","0");
INSERT INTO tbl_resolution VALUES("031 - 2007","","To approve Ord # 08, S. 2006 of the SB of Rosario, LU, entitled: “An Ord Adopting and Institutionalizing the 3K as the Priority & Continuing Program of the Municipal Gov’t of Rosario, LU”","10","RESOLUTION NO. 031-2007.pdf","21","2007-02-08","0");
INSERT INTO tbl_resolution VALUES("031 - 2008","","Approve FY 2007 GF SB # 5, of Sudipen, LU ","2","RESOLUTION NO. 031-2008.pdf","21","2008-01-31","0");
INSERT INTO tbl_resolution VALUES("031 - 2010","","Approve Ord # 025, s 2009, of the SB of Burgos, LU, entitled: “An Ord Amending Sec. 6, letter C of Municipal Ord # 089-2005, & for Other Purposes”","20","Resolution 031-2010.pdf","21","2010-02-11","0");
INSERT INTO tbl_resolution VALUES("031 - 2011","","Approve EO # 010-2010, of Mayor Joy P. Merin, “ Organizing the Mun Disaster Risk Reduction & Management Council (MDRRMC) & Defining its Functions Pursuant to RA 10121”","18","Resolution 031-2011.pdf","21","2011-01-27","0");
INSERT INTO tbl_resolution VALUES("031 - 2012","","Grant the excavation along the shoulder & carriageway of Poro Rd, K0269+600 for the laying of Fiber optic cable for Closed Circuit Television (CCTV) at the PilipinasShell Petroleum Corporation located at Poro, Sn Fdo, La Union.","1","Resolution 031-2012.pdf","21","2012-01-12","0");
INSERT INTO tbl_resolution VALUES("031 - 2013","","Condole with the bereaved family of Mr. Bibiano P. Viluan.","1","RES 31-2013.pdf","21","2013-01-24","0");
INSERT INTO tbl_resolution VALUES("031 - 2014","2014 - 0012","Ord # 2011-087, Ord Enjoining the Office of the DepEd Dist Supervisor, School Administrators Both High School, Elememtary or Primary Levels & Gov?t-Owned and Controlled Corp. Gov Instrumentalities to Include the Singing of the Santol Hymn, Recitation of Santol Credo & Dancing of the Santol Mun Jingle in their Flag Raising Ceremonies, General Assemblies and all Other Special Gatherings and Festivities in the Municipality.","6","RESOLUTION 031-2014.pdf","21","2014-01-30","0");
INSERT INTO tbl_resolution VALUES("032 - 1999","","Approve 1999 GF AB, of Sudipen, LU","20","RESOLUTION NO.032-99.pdf","21","1999-01-21","0");
INSERT INTO tbl_resolution VALUES("032 - 2007","","To approve Ord # 09, S. 2006 of the SB of Rosario, LU, entitled: “An OrdAmending Sec 2 of Ord # 15, s. 1975”","10","RESOLUTION NO. 032-2007.pdf","21","2007-02-08","0");
INSERT INTO tbl_resolution VALUES("032 - 2008","","Approve FY 2007 GF SB # 6, of Sudipen, LU ","2","RESOLUTION NO. 032-2008.pdf","21","2008-01-31","0");
INSERT INTO tbl_resolution VALUES("032 - 2010","","Approve Mun Ord # 35-2009, of the SB of Luna, LU, entitled: “An Ord Enacting the New Traffic Rules & Regulations on All Streets in the Municipality of Luna, LU, Providing Penalties for Violations & Imposing Fee and Charges Thereof” ","20","Resolution 032-2010.pdf","21","2010-02-11","0");
INSERT INTO tbl_resolution VALUES("032 - 2011","","Express strong support for the amendment or revision of the 1987 Constitution thru any constitutional means preferably thru a Constitutional Convention","10","Resolution 032-2011.pdf","21","2011-01-27","0");
INSERT INTO tbl_resolution VALUES("032 - 2012","","Condole with the bereaved family of the late Mr. Anastacio A. Viloria, Jr., ","3","Resolution 032-2012.pdf","21","2012-01-12","0");
INSERT INTO tbl_resolution VALUES("032 - 2013","","Appoint BM Nancy Corazon M. Bacurnay as Chairperson of the Committee on Justice & Human Rights and the Vice Chairmanship & Membership vacated by BM Henry Bacurnay.","10","RES 32-2013.pdf","21","2013-01-24","0");
INSERT INTO tbl_resolution VALUES("033 - 1999","","Approve 1998 GF SB # 1, of San Juan, LU","20","RESOLUTION NO.033-99.pdf","21","1999-01-21","0");
INSERT INTO tbl_resolution VALUES("033 - 2007","","An AO appropriating P36,135,893.20 for SB # 01, of the GF","20","RESOLUTION NO. 033-2007.pdf","21","2007-02-15","0");
INSERT INTO tbl_resolution VALUES("033 - 2008","","Approve FY 2007 GF SB # 7, of Sudipen, LU ","2","RESOLUTION NO. 033-2008.pdf","21","2008-01-31","0");
INSERT INTO tbl_resolution VALUES("033 - 2010","","Approve Ord # 466, of the SB of Bacnotan, LU, entitled: “An Ord Enacting the Senior Citizens Code of the Municipality of Bacnotan, LU”","20","Resolution 033-2010.pdf","21","2010-02-11","0");
INSERT INTO tbl_resolution VALUES("033 - 2011","","Amend SP Res # 275-2010","9","Resolution 033-2011.pdf","21","2011-01-27","0");
INSERT INTO tbl_resolution VALUES("033 - 2012","","Approve FY 2011 GF SB # 3, of the CSF, La Union.","1","Resolution 033-2012.pdf","21","2012-01-19","0");
INSERT INTO tbl_resolution VALUES("033 - 2013","","Charge P1,798.62 in the CY 2013 appropriation to the Office of the Governor as payment of the Nov 2012 telephone bill at the Prov’l Prosecutor’s Office.","1,5,6,20","RES 33-2013.pdf","21","2013-01-24","0");
INSERT INTO tbl_resolution VALUES("034 - 1999","","Set aside P120,000.00 for expenses to be incurred on the Centennial of Malolos Congress and Proclamation of First Phil. Republic","20","RESOLUTION NO.034-99.pdf","21","1999-01-21","0");
INSERT INTO tbl_resolution VALUES("034 - 2007","","Authorize Gov. Victor Ortega to hire one (1) Contractual Dentist for Rosario District Hospital","18","RESOLUTION NO. 034-2007.pdf","21","2007-02-15","0");
INSERT INTO tbl_resolution VALUES("034 - 2008","","Approve FY 2007 GF SB # 4, of Agoo, LU ","2","RESOLUTION NO. 034-2008.pdf","21","2008-01-31","0");
INSERT INTO tbl_resolution VALUES("034 - 2010","","Return  Ord # 001-2009, of the SB of Bangar, LU, entitled: “An Ord Promulgating the Rules & Regulations for the Protection & Welfare of Senior Citizens in the Municipality of Bangar, LU”","20","Resolution 034-2010.pdf","21","2010-02-11","0");
INSERT INTO tbl_resolution VALUES("034 - 2012","","Approve FY 2011 GF SB # 4, of the CSF, La Union.","1","Resolution 034-2012.pdf","21","2012-01-19","0");
INSERT INTO tbl_resolution VALUES("034 - 2013","","Charge P4,110.42 in the current appropriation CY 2013 to the MOE-969 of the Office of the Governor as payment for the service rendered by Ms. Connie Marie C. Balbuena, Job Order detailed at the LUMC for Dec 3-31, 2012","1,5,7,10","RES 34-2013.pdf","21","2013-01-31","0");
INSERT INTO tbl_resolution VALUES("035 - 1999","","Commend Hon. Salvador Laurel, Chairman, Phil. Centennial Commission in making the centennial celebration of Phil. Independence a success","26","RESOLUTION NO.035-99.pdf","21","1999-01-21","0");
INSERT INTO tbl_resolution VALUES("035 - 2007","","Confirm and approve the nominees for the following Awards:\n\nSARANAY\n1.	P/C Supt LeopoldoBataoil\n\nLA UNION SERVICE AWARD\n1.	Hon. JovenCostales\n2.	Ms. Carlota Ader\n3.	Mr. Rodolfo Panay\n4.	Engr. CamiloTabora\n5.	Ms. Dory Almonte-Decena\n6.	Ms. Imelda Coloma Asiaten\n7.	Mr. Lhenvil John Paneda\n\nDIEGO SILANG AWARD\n1.	P/Sr Supt Franklin Jesus Bucayu\n2.	Dir. Martin Valera\n3.	Dir. Myrna Macatangay\n\nBASI AWARD\n1.	Barangay Lingsat\n2.	Girl Scouts of the Philippines\n3.	Boy Scouts of the Philippines\n4.	Sangguniang Panlungsod, CSF, LU\n5.	Sangguniang Bayan, Bacnotan, LU\n6.	Sangguniang Bayan Santol, La Union\n7.	Department of Trade and Industry RO I\n\nABEL AWARD\n1.	La Union Circle of Hawaii\n","2","RESOLUTION NO. 035-2007.pdf","21","2007-02-15","0");
INSERT INTO tbl_resolution VALUES("035 - 2008","","Approve FY 2007 GF SB # 5, of Agoo, LU ","2","RESOLUTION NO. 035-2008.pdf","21","2008-01-31","0");
INSERT INTO tbl_resolution VALUES("035 - 2010","","Approve Mun Ord # 76, s 2009, of the SB of Sudipen, LU, entitled: “An Ord Enacting the Municipal Environment Code of the Municipality of Sudipen, LU”","20","Resolution 035-2010.pdf","21","2010-02-11","0");
INSERT INTO tbl_resolution VALUES("035 - 2011","","Condemn brutal killing of BC Froilan P. Florendo, Sr., Bariquir, Naguilian, LU\n","3,5,7,9,12,13,17,18,19,20","Resolution 035-2011.pdf","21","2011-01-27","0");
INSERT INTO tbl_resolution VALUES("035 - 2012","","Approve FY 2012 GF AB of Tubao, La Union.","1","Resolution 035-2012.pdf","21","2012-01-19","0");
INSERT INTO tbl_resolution VALUES("035 - 2013","","Contract of Consultancy Service w/ Dr. Ernesto A. Gapasin as Consultant on Education & Employment effective Jan 2, 2013 to June 30, 2013 w/ a monthly consultancy fee of P20,000.00","1,5,6,7,10","RES 35-2013.pdf","21","2013-01-31","0");
INSERT INTO tbl_resolution VALUES("035 - 2014","2014 - 0013","Ord # 2012-096, Ord Amending the Title of Ord # 2000-01 of the SB of Santol, LU Including Sec 1 of Said Ordinance.","8","RESOLUTION 035-2014.pdf","21","2014-01-30","0");
INSERT INTO tbl_resolution VALUES("036 - 1999","","Confirm the ff:\n\nSARANAY AWARD\n1.	Justice Sixto Domondon\n2.	Gen. Artemio Tadiar\n\nLA UNION SERVICE AWARD\n1.	Ex-Mayor Bonifacio Daligues\n2.	Ex-Mayor Adolfo Estonactoc\n3.	Mr. Ronnie Esquivel\n4.	Mr. Arthur Madayag\n5.	Mr. Pedro Subido\n\nBASI AWARD\n1.	Kabalikat Civicom\n","17","RESOLUTION NO.036-99.pdf","21","1999-01-28","0");
INSERT INTO tbl_resolution VALUES("036 - 2007","","Approve Ord # 72, S. 2007 of the SB of Sudipen, LU, entitled: “Guidelines and Procedures for the Operation, Management and Use of the Trucks and heavy and Light Equipment of the Municipality”","10","RESOLUTION NO. 036-2007.pdf","21","2007-02-15","0");
INSERT INTO tbl_resolution VALUES("036 - 2008","","Approve FY 2007 GF SB # 3, of Bagulin, LU","2","RESOLUTION NO. 036-2008.pdf","21","2008-01-31","0");
INSERT INTO tbl_resolution VALUES("036 - 2010","","Approve Mun Ord # 20-2009, of the SB of Agoo, LU, entitled: “An Ord Amending Sec. 12, Sec. 14, Sec. 22-25, Sec. 32, & Sec. 41 of Ord # 19-2008, Adopting the Agoo Market Code of 2008”","20","Resolution 036-2010.pdf","21","2010-02-11","0");
INSERT INTO tbl_resolution VALUES("036 - 2011","","Condole w/ BC Froilan P. Florendo, Sr","9,20","Resolution 036-2011.pdf","21","2011-01-27","0");
INSERT INTO tbl_resolution VALUES("036 - 2012","","Approve  FY 2011 GF SB # 2 of Rosario, La Union.","1","Resolution 036-2012.pdf","21","2012-01-19","0");
INSERT INTO tbl_resolution VALUES("036 - 2013","","Approve FY 2013 GF AB, of Balaoan, La Union.","1,5,7,10","RES 36-2013.pdf","21","2013-01-31","0");
INSERT INTO tbl_resolution VALUES("036 - 2014","2014 - 0014","Ord # 2012-102, An Ord Declaring the Month of June of Every Year as Dengue Awareness Month in the Mun of Santol & Appropriating Funds Therefor","10","RESOLUTION 036-2014.pdf","21","2014-01-30","0");
INSERT INTO tbl_resolution VALUES("037 - 1999","","Contract of Consultancy Service w/ Mr. Cedric Panis as Consultant for Development Affairs to the OPG","17","RESOLUTION NO.037-99.pdf","21","1999-01-28","0");
INSERT INTO tbl_resolution VALUES("037 - 2007","","Approve Ord # 006, s. 2006 of the SB of Caba, LU, entitled: “An Ord Assuring the Continuity of Supplies for Family Planning Services in the Municipality, Calling for the Adoption of Contraceptive Self Reliance Plan and Allocating Fund for the Purpose”","10","RESOLUTION NO. 037-2007.pdf","21","2007-02-15","0");
INSERT INTO tbl_resolution VALUES("037 - 2008","","Approve FY 2007 GF SB # 5, of Bagulin, LU ","2","RESOLUTION NO. 037-2008.pdf","21","2008-01-31","0");
INSERT INTO tbl_resolution VALUES("037 - 2010","","Approve Mun Ord of the SB of San Juan, LU, entitled: “General Tax & Revenue Ordinance of 2010, as Amended”","20","Resolution 037-2010.pdf","21","2010-02-11","0");
INSERT INTO tbl_resolution VALUES("037 - 2011","","Approve FY 2011 GF AB of Agoo, LU","20","Resolution 037-2011.pdf","21","2011-02-03","0");
INSERT INTO tbl_resolution VALUES("037 - 2012","","Approve FY 2012 GF AB of San Juan, La Union.","1","Resolution 037-2012.pdf","21","2012-01-19","0");
INSERT INTO tbl_resolution VALUES("037 - 2013","","Approve FY 2013 GF AB, of San Gabriel, La Union.","1,5,7,10","RES 37-2013.pdf","21","2013-01-31","0");
INSERT INTO tbl_resolution VALUES("038 - 1999","","Contract of Consultancy Service w/ Mr. Pelagio Alcantara as Consultant to the OPG on Public Information ","17","RESOLUTION NO.038-99.pdf","21","1999-01-28","0");
INSERT INTO tbl_resolution VALUES("038 - 2007","","Approve Ord # 2007-80, of the SB of Pugo, LU, entitled: “Regulating the Use of Bonnet or any Form to Disguise or Any Gadgets for the Purpose of Hiding Identity in Public Places, in Private or Public Vehicles Plying Within the Territorial Jurisdiction of the Municipality of Pugo, LU","10","RESOLUTION NO. 038-2007.pdf","21","2007-02-15","0");
INSERT INTO tbl_resolution VALUES("038 - 2008","","Approve FY 2007 GF SB # 9, of Bauang, LU ","2","RESOLUTION NO. 038-2008.pdf","21","2008-01-31","0");
INSERT INTO tbl_resolution VALUES("038 - 2010","","Approve Tax Ord # 1, of the SP of the City of San Fernando, LU, entitled: “An Ord Codifying the Revenue Code of the City of San Fernando, LU”","20","Resolution 038-2010.pdf","21","2010-02-11","0");
INSERT INTO tbl_resolution VALUES("038 - 2011","","Approve FY 2011 GF AB of San Juan, LU","20","Resolution 038-2011.pdf","21","2011-02-03","0");
INSERT INTO tbl_resolution VALUES("038 - 2012","","Condole with the bereaved family of the late Hon. Natividad Q. Salomon","9","Resolution 038-2012.pdf","21","2012-01-19","0");
INSERT INTO tbl_resolution VALUES("038 - 2013","","Approve Board Res # 056, s 2013, of LUMC, “Recommending Cong. Eufranio C. Eriguel for a Saranay Award”.","12","RES 36-2013.pdf","21","2013-01-31","0");
INSERT INTO tbl_resolution VALUES("039 - 1999","","Approve 1998 GF SB # 2, of San Juan, LU","20","RESOLUTION NO.039-99.pdf","21","1999-01-28","0");
INSERT INTO tbl_resolution VALUES("039 - 2007","","Confirm and approve the nominees for the following Awards as 2007 Outstanding Entrepinoy Awardees:\n","34","RESOLUTION NO. 039-2007.pdf","21","2007-02-22","0");
INSERT INTO tbl_resolution VALUES("039 - 2008","","Approve FY 2007 GF SB # 10, of Bauang, LU ","2","RESOLUTION NO. 039-2008.pdf","21","2008-01-31","0");
INSERT INTO tbl_resolution VALUES("039 - 2010","","Approve Ord # 467,  of the SB of Bacnotan, LU,entitled: “Municipal Revenue Code (Second Revision) of Bacnotan, LU”","20","Resolution 039-2010.pdf","21","2010-02-11","0");
INSERT INTO tbl_resolution VALUES("039 - 2011","","Approve FY 2011 GF AB of Burgos, LU","20","Resolution 039-2011.pdf","21","2011-02-03","0");
INSERT INTO tbl_resolution VALUES("039 - 2012","","Note  Res # 401, s 2011 of the SP of Romblon “Res supporting and Favorably Endorsing Res # 401, s 2011, of the SP of Camarines Sur”","10","Resolution 039-2012.pdf","21","2012-01-19","0");
INSERT INTO tbl_resolution VALUES("039 - 2013","","Exempt GSIS from real property taxation, however, Nalinac Beach Resort is to pay the real property tax of said property being the beneficial user & a taxable entity.","1,10","RES 39-2013.pdf","21","2013-01-31","0");
INSERT INTO tbl_resolution VALUES("040 - 1999","","Realign P1 M to Greening Program","20","RESOLUTION NO.040-99.pdf","21","1999-01-28","0");
INSERT INTO tbl_resolution VALUES("040 - 2007","","Realign P14,198,169 to Roads and Bridges Program","22","RESOLUTION NO. 040-2007.pdf","21","2007-02-22","0");
INSERT INTO tbl_resolution VALUES("040 - 2008","","Approve FY 2007 GF SB # 11, of Bauang, LU ","2","RESOLUTION NO. 040-2008.pdf","21","2008-01-31","0");
INSERT INTO tbl_resolution VALUES("040 - 2010","","Approve Ord # 28,emb. in Res # 33, s 2009, of the SB of Bauang, LU, entitled: “An Ord Requiring Drivers and Back Riders of Motorcycle Plying Along All Streets W/n the Territorial Jurisdiction of Bauang, LU to Wear Helmets & Imposing Penalties for Violation Thereof”","20","Resolution 040-2010.pdf","21","2010-02-11","0");
INSERT INTO tbl_resolution VALUES("040 - 2011","","Approve EO # 016-2010, of the Mayor, Bangar, LU, Re-organizing the Mun Fitness & Sports Dev’t Council (MPFSDC) of the Mun of Bangar, LU","13","Resolution 040-2011.pdf","21","2011-02-03","0");
INSERT INTO tbl_resolution VALUES("040 - 2012","","Return Mun Ord # 41-2011 of the SB of San Juan, LU, “An Ord Prohibiting the Slaughter, Killing, Buying & Selling of the Green Sea & Olive Reedley Turtle Better Known as Pawikan, as Well as the Gathering of its Eggs &All Destruction of its Nesting Habitat”","10","Resolution 040-2012.pdf","21","2012-01-19","0");
INSERT INTO tbl_resolution VALUES("040 - 2013","","Approve Ord # 2012-100, of the SB of Pugo, LU, “An Ord Imposing the Collection of an Admission Fee & Rentals of Cottages at the Asin Hot Spring, Cares, Pugo, La Union”.","5,10,20","RES 40-2013.pdf","21","2013-01-31","0");
INSERT INTO tbl_resolution VALUES("041 - 1999","","Accredit La Union Ladies Asso., Inc. as NGO","26","RESOLUTION NO.041-99.pdf","21","1999-01-28","0");
INSERT INTO tbl_resolution VALUES("041 - 2007","","Approve Ord # 28, S. 2007 of the SB of Luna, LU, entitled: “An Ord Providing for the Creation of the Municipal Rabies Control Committee, Registration, Compulsory Vaccination and Control of Unvaccinated, Infected Stray Dogs Within the Barangays of the Municipality of Luna, LU Allocating Funds and Imposing Penalties for Violation Thereof”","10","RESOLUTION NO. 041-2007.pdf","21","2007-02-22","0");
INSERT INTO tbl_resolution VALUES("041 - 2008","","Approve FY 2007 GF SB # 4, of Burgos, LU ","2","RESOLUTION NO. 041-2008.pdf","21","2008-01-31","0");
INSERT INTO tbl_resolution VALUES("041 - 2010","","La Union Volunteers Award or Salacnib Award to all volunteers, individuals, NGOs, POs, & other agencies who joined the rescue & relief operations during Typhoon Pepeng","1,3,5,18","Resolution 041-2010.pdf","21","2010-02-17","0");
INSERT INTO tbl_resolution VALUES("041 - 2011","","ENTREPINOY AWARDEES:\n\nFurniture or Antique Furniture:\na.	Arcs Antiques & Wood Arts\nb.	Lennie’s antiques\n\nGifts, Toys & Housewares:\na.	Red Clay Pottery Crafts\nb.	KasaySanktwaryo\nc.	KaikaiKrafts& More\n","18","Resolution 041-2011.pdf","21","2011-02-03","0");
INSERT INTO tbl_resolution VALUES("041 - 2012","","Approve Ord # 05-2011 of the SB of San Gabriel, La Union “An Ord Fixing the Time of Closure of All Commercial Establishment Such as Stores, Refreshment Stalls, Carinderias, Beer Houses & Karaoke/Videoke Bars, Regulating & Limiting the Serving Selling, Giving Away or Dispensing of Intoxicating Malt, Vinous, Mixed of Fermented Liquors W/n the Area of Jurisdiction of San Gabriel, La Union ”","10","Resolution 041-2012.pdf","21","2012-01-19","0");
INSERT INTO tbl_resolution VALUES("041 - 2013","","Approve Ord # 16, s 2012, of the SB of Naguilian, LU, “An Ord Requesting All Owners of Residential Houses w/n the Territorial Jurisdiction of the Mun of Naguilian, LU to Maintain a Sanitary Toilet & Providing Penalties to Violators Thereof”","5,6,10,20","RES 41-2013.pdf","21","2013-01-31","0");
INSERT INTO tbl_resolution VALUES("041 - 2014","2014 - 0017","Ord # 2013-106, An Ord Requiring the Foodservice Industry within the Territorial Jurisdiction of the Mun of Santol, LU to Include ? Cup Cooked Rice in their Menu.","3","RESOLUTION 041-2014.pdf","21","2014-01-30","0");
INSERT INTO tbl_resolution VALUES("042 - 1999","","AO amounting P6 M to the different projects from RA 7171 Fund","20","RESOLUTION NO.042-99.pdf","21","1999-01-28","0");
INSERT INTO tbl_resolution VALUES("042 - 2007","","Return Ord # 8, s. 2005, of the SB of Rosario, LU, entitled: “An Ord Adopting the New Rate of Locational/Zoning Clearance and Related Fees Imposed by the Housing and Land Use Regulatory Board (HLURB) and the 2004 Schedules of Fees and Guidelines in its Imposition of the Penal provisions Thereof”","10","RESOLUTION NO. 042-2007.pdf","21","2007-02-22","0");
INSERT INTO tbl_resolution VALUES("042 - 2008","","Approve FY 2007 GF SB # 4, of Caba, LU ","2","RESOLUTION NO. 042-2008.pdf","21","2008-01-31","0");
INSERT INTO tbl_resolution VALUES("042 - 2010","","MOA w/ DA BFAR ROI, Municipality of Balaoan, LU, DMMMSU Northern LU Campus, Brgy Council of Paraoir, Balaoan, LU, ParaoirFisherfolkAsso. and Concerned fisherfolkcorporators in connection w/ the technology commercialization on the grow-out culture of sea urchin","1,18","Resolution 042-2010.pdf","21","2010-02-17","0");
INSERT INTO tbl_resolution VALUES("042 - 2011","","Sisterhood Agreement w/ the Prov of Oriental Mindoro","18","Resolution 042-2011.pdf","21","2011-02-03","0");
INSERT INTO tbl_resolution VALUES("042 - 2012","","Approve City Ord # 2011-003 of the SP of the City of San Fernando, La Union “An Ord Amending the Staffing Pattern of the City Gov’t of Sn Fdo, La Union”","10","Resolution 042-2012.pdf","21","2012-01-19","0");
INSERT INTO tbl_resolution VALUES("042 - 2013","","Charge P3,593.33 in the current appropriation CY 2013 to the Prisoner’s Subsistence Account (759) under the Office of the Governor.","1,5,7,11,20","RES 42-2013.pdf","21","2013-01-31","0");
INSERT INTO tbl_resolution VALUES("042 - 2014","2014 - 0028","MO # 2, s 2013, Requiring the Foodservice Industry w/n the Territorial Jurisdiction of Rosario, LU to Include ? Cup of Rice in their Menu & Providing Penalty to Violators Thereof","3","RESOLUTION 042-2014.pdf","21","2014-01-30","0");
INSERT INTO tbl_resolution VALUES("043 - 1999","","Urge LU PNP and Pangasinan PPO to assist in the apprehension of Mr. Amado Juguilon","27","RESOLUTION NO.043-99.pdf","21","1999-01-28","0");
INSERT INTO tbl_resolution VALUES("043 - 2007","","Approve MunOrd # 21-2006 of the SB of San Juan, LU, entitled: “An Ord Meningococcemia Prevention and Control Ord”","10","RESOLUTION NO. 043-2007.pdf","21","2007-02-22","0");
INSERT INTO tbl_resolution VALUES("043 - 2008","","Approve FY 2007 GF SB # 5, of Caba, LU ","2","RESOLUTION NO. 043-2008.pdf","21","2008-01-31","0");
INSERT INTO tbl_resolution VALUES("043 - 2010","","MOA w/ PVAO relative to the accreditation of the BDH as one of the accredited hospitals for the hospitalization benefits of veterans and their dependents","1,18","Resolution 043-2010.pdf","21","2010-02-17","0");
INSERT INTO tbl_resolution VALUES("043 - 2011","","Approve Mun Ord # 85, s 2010, of the SB of Sudipen, LU, Ord Promulgating the Rules & Regulations for the Protection & Welfare of Senior Citizens in the Mun of Sudipen","13","Resolution 043-2011.pdf","21","2011-02-03","0");
INSERT INTO tbl_resolution VALUES("043 - 2012","","Approve Ord # 39, s 2011 of the SB of Burgos, La Union “An Ord Renaming Agpay Primary School to Agpay Elem School”","18","Resolution 043-2012.pdf","21","2012-01-19","0");
INSERT INTO tbl_resolution VALUES("043 - 2013","","Charge P367.79 in the current appropriation CY 2013 to the Account of the Prov’l Population Office.","1,5,7,10,20","RES 43-2013.pdf","21","2013-01-31","0");
INSERT INTO tbl_resolution VALUES("043 - 2014","2014 - 0059","Letter of Gov. Manuel C. Ortega respectfully requesting the Honorable Body to authorize him to enter into a Memorandum of Agreement with the Municipal Government of Rosario La Union and Barangay Bangar, Rosario, La Union in connection with the Construction of Farmer\'s Multi Purpose Hall (Phase I) in Barangay Bangar, Rosario, La Union.","4,5,6,7,8,9,11","RESOLUTION 043-2014.pdf","21","2014-01-30","0");
INSERT INTO tbl_resolution VALUES("044 - 1999","","Set aside fund to all victims of a vehicular accident at Brgy. Banangan, Sablan, Benguet","26","RESOLUTION NO.044-99.pdf","21","1999-01-28","0");
INSERT INTO tbl_resolution VALUES("044 - 2007","","Approve Ord # 2006-013, of the SP of the City of San Fernando, LU, entitled: “An Ord Enacting the Environmental Code of the City of San Fernando, LU”","10","RESOLUTION NO. 044-2007.pdf","21","2007-03-01","0");
INSERT INTO tbl_resolution VALUES("044 - 2008","","Approve FY 2007 GF SB # 7, of Pugo, LU ","2","RESOLUTION NO. 045-2008.pdf","21","2008-01-31","0");
INSERT INTO tbl_resolution VALUES("044 - 2010","","Fifth Renewal Lease Agreement w/ GLOBE Telecom","1,2,18","Resolution 044-2010.pdf","21","2010-02-17","0");
INSERT INTO tbl_resolution VALUES("044 - 2011","","Approve Mun Ord # 23-2010, of the SB of San Juan, LU, An Ord Declaring the Temporary Closure of a Portion of Velasco St During the Post Fiesta & Fiesta Proper Celebrations on Dec 2010","10","Resolution 044-2011.pdf","21","2011-02-03","0");
INSERT INTO tbl_resolution VALUES("044 - 2012","","Approve Ord # 40, s 2011 of the SB of Burgos, LU  “An Ord Renaming Upper Tumapoc Primary School to Upper Tumapoc E/S”","18","Resolution 044-2012.pdf","21","2012-01-19","0");
INSERT INTO tbl_resolution VALUES("044 - 2013","","MOA with DPWH re: implementation of the Special Local Roads Fund (SLRF) with funding under the MVUC Special Local Road Fund","1,5,11,20","RES 44-2013.pdf","21","2013-01-31","0");
INSERT INTO tbl_resolution VALUES("044 - 2014","2014 - 0058","Letter of Gov. Manuel C. Ortega respectfully requesting for the realignment of P 10,000,000.00 under the Provincial Share in the Virginia Tobacco Excise Tax RA 7171 for the purchase of additional lot for the Farmer\'s Multi Purpose Center and Demo Farm.","4,7,8,10,11","RESOLUTION 044-2014.pdf","21","2014-01-30","0");
INSERT INTO tbl_resolution VALUES("044A- 1999","","Confirm the ff:\n\nLA UNION SERVICE AWARD\n1.	Dr. Juvencio Ordona\n\nDIEGO SILANG AWARD\n1.	Chief Supt Reynalso Velasco\n2.	Chief Supt Amado Espino\n","17","RESOLUTION NO.044A-99.pdf","21","1999-02-04","0");
INSERT INTO tbl_resolution VALUES("045 - 1999","","MOA w/ TLRC and the City of San Fernando relative to the Program for Countryside Economic Empowerment and Dev’t (PROCEED)","20","RESOLUTION NO.045-99.pdf","21","1999-02-04","0");
INSERT INTO tbl_resolution VALUES("045 - 2007","","Approve Ord # 07-2006 of the SB of Agoo, LU, entitled: “An Ord Prescribing  Certain Rates and Regulations on the Commercial Stalls For Rent at the New Imelda Garden (Eastern Portion)”","10","RESOLUTION NO. 045-2007.pdf","21","2007-03-01","0");
INSERT INTO tbl_resolution VALUES("045 - 2008","","Approve FY 2007 GF SB # 8, of Pugo, LU ","2","RESOLUTION NO. 045-2008.pdf","21","2008-01-31","0");
INSERT INTO tbl_resolution VALUES("045 - 2010","","Participate in the Text Monetization Program (TEMP) managed by LBP and underwritten by LBP","1,18","Resolution 045-2010.pdf","21","2010-02-17","0");
INSERT INTO tbl_resolution VALUES("045 - 2011","","Approve EO # 011-2010, of the Mayor, Bangar, LU, Re-organizing the Mun Dev’t Council of Bangar, LU","10","Resolution 045-2011.pdf","21","2011-02-03","0");
INSERT INTO tbl_resolution VALUES("045 - 2012","","Return Mun Ord # 35- 2011 of the SB of San Juan, LU “An Ord Prescribing Rental of Collecting Booth at the Mun Treas Office by Private Companies”","20","Resolution 045-2012.pdf","21","2012-01-19","0");
INSERT INTO tbl_resolution VALUES("045 - 2013","","MOA with the Mun Gov’t of Rosario, & Caba, LU with beneficiaries/residents of Brgy. Parasapas, Tabtabungao (R) & San Jose (C) re: \n1.	Improvement of Rosario-Tubao Rd\n2.	Restoration of river slope protection, Brgy. Tabtabungao\n3.	Construction of a 90-m long steel matting suspension footbridge, Brgy San Jose","1,5,9,11,17,20","RES 45-2013.pdf","21","2013-01-31","0");
INSERT INTO tbl_resolution VALUES("045 - 2014","2014 - 0066","Letter of Gov. Manuel C. Ortega respectfully requesting the Honorable Body to authorize him to enter into the Amended Dead of Donation with Partial Revocation of Donation, for and on behalf of the PGLU with the Cooperative Development Authority (CDA), donating a 450 square meter PGLU property located at Aguila Road, Sevilla, City of San Fernando, La Union.  The property consisted previously of a 900 square meter lot, however, one of the conditions set forth in the Deed of Donation executed last1999 wast not met by CDA, hence the need to amend and partiallyrevoke the previous donation.","4","RESOLUTION 045-2014.pdf","21","2014-02-06","0");
INSERT INTO tbl_resolution VALUES("046 - 1999","","Approve Ord # 98-07, of the SB of Naguilian, LU, Amending Certain provisions of Ord # 92-51 (as Amended) Otherwise Known as the MCH Franchise Ordinance of that Municipality","24","RESOLUTION NO.046-99.pdf","21","1999-02-11","0");
INSERT INTO tbl_resolution VALUES("046 - 2007","","Approve the salary adjustment of the Administrative Aide III position of the Provincial General Services Office from Step 1 to Step 2 of SG 3 ","2,34","RESOLUTION NO. 046-2007.pdf","21","2007-03-01","0");
INSERT INTO tbl_resolution VALUES("046 - 2008","","Approve FY 2007 GF SB # 8, of Pugo, LU ","2","RESOLUTION NO. 046-2008.pdf","21","2008-01-31","0");
INSERT INTO tbl_resolution VALUES("046 - 2010","","Approve FY 2009 GF SB # 14, of Bauang, LU","2","Resolution 046-2010.pdf","21","2010-02-17","0");
INSERT INTO tbl_resolution VALUES("046 - 2011","","Approve Mun Ord # 17A-2010, of the SB of Agoo, LU, An Ord Amending Sec 2, Sec 5, Sec 6 & Sec 7 of Mun Ord # 17-2100, An Ord Prohibiting Minors to Smoke Cigarette & Any Tobacco Related Substance w/n the Territorial Jurisdiction of Agoo, LU & Providing Penalties for Violation Thereof","10","Resolution 046-2011.pdf","21","2011-02-03","0");
INSERT INTO tbl_resolution VALUES("046 - 2012","","Return Mun Ord # 89, s 2011 of the SB of Sudipen, La Union “Local Revenue Code of the Mun of Sudipen, La Union”","1","Resolution 046-2012.pdf","21","2012-01-19","0");
INSERT INTO tbl_resolution VALUES("046 - 2013","","Contract of Consultancy Service w/ Dr. Leonardo N. Quitos, Jr as Consultant on Planning & Dev’t Mgt effective Feb 1, 2013 to June 30, 2013","1,6,10,11,20","RES 46-2013.pdf","21","2013-01-31","0");
INSERT INTO tbl_resolution VALUES("046 - 2014","2014 - 0060","Recommend approval of the FY 2014 GF AB, of Rosario, LU","1","RESOLUTION 046-2014.pdf","21","2014-02-06","0");
INSERT INTO tbl_resolution VALUES("047 - 1999","","Renew Contract w/ DZNL, DZLU, DWLU and DZAG for the live coverage of Timek to Kapitolyo – Pulso ti La Union","27","RESOLUTION NO.047-99.pdf","21","1999-02-11","0");
INSERT INTO tbl_resolution VALUES("047 - 2007","","MOA w/ the Philippine National Police Regional office I and the Department of Education, Division of La Union, in support of the “PulisKo,TitserKo Program” of the Police Regional Office I","10","RESOLUTION NO. 047-2007.pdf","21","2007-03-01","0");
INSERT INTO tbl_resolution VALUES("047 - 2008","","Approve FY 2007 GF SB # 9, of Pugo, LU ","2","RESOLUTION NO. 047-2008.pdf","21","2008-01-31","0");
INSERT INTO tbl_resolution VALUES("047 - 2010","","Approve FY 2009 GF SB # 15, of Bauang, LU","2","Resolution 047-2010.pdf","21","2010-02-17","0");
INSERT INTO tbl_resolution VALUES("047 - 2011","","Return Ord # 8, s 2010, of the SB of Rosario, LU, An Ord Amending Art II, III, IV, X & adding Art VIII-A-7 & G-11 of Ord # 19, s 1996 (Codifying the Traffic Ord of the Mun of Rosario, LU","10","Resolution 047-2011.pdf","21","2011-02-03","0");
INSERT INTO tbl_resolution VALUES("047 - 2012","","Return Mun Ord # 38-2011 of the SB of San Juan, LU, “An Ord Prescribing Laboratory Fee for Hematology, Serology, Blood Banking, Clinical Microscopy & Microbiology ”","20","Resolution 047-2012.pdf","21","2012-01-19","0");
INSERT INTO tbl_resolution VALUES("047 - 2013","","Congratulate & commend Hon. Joseph M. de Guzman & Hon. Nonito A. Sales, CSF & Naguilian, respectively, as among the 10 Outstanding Councilors of Region I.","11","RES 47-2013.pdf","21","2013-01-31","0");
INSERT INTO tbl_resolution VALUES("047 - 2014","2014 - 0015","Ord # 2012-103, An Ord Prohibiting the Unauthorized Manufacture, Production, Use and Sale of Uniforms & Other Paraphernalia that are of Exclusive Use of the Uniformed Personnel of the PNP and the AFP in the Mun of Santol, LU","2","RESOLUTION 047-2014.pdf","21","2014-02-06","0");
INSERT INTO tbl_resolution VALUES("048 - 1999","","AO amounting P28,485.29 for Terminal Leave Pay","27","RESOLUTION NO.048-99.pdf","21","1999-02-11","0");
INSERT INTO tbl_resolution VALUES("048 - 2007","","MOA w/ the Philippine National Police Regional Office I and the Rotary Club of San Juan (LU) in support of the “Bring Home a Comrade program” of the Police Regional Office I","10","RESOLUTION NO. 048-2007.pdf","21","2007-03-01","0");
INSERT INTO tbl_resolution VALUES("048 - 2008","","Approve FY 2007 GF SB # 10, of Pugo, LU ","2","RESOLUTION NO. 048-2008.pdf","21","2008-01-31","0");
INSERT INTO tbl_resolution VALUES("048 - 2010","","Approve FY 2009 GF SB # 17, of Bauang, LU","2","Resolution 048-2010.pdf","21","2010-02-17","0");
INSERT INTO tbl_resolution VALUES("048 - 2011","","Support House Bill # 3116 & 3678, conferring appropriate Civil Service Eligibility upon a Member of SB, Sangguniang Panlungsod& Sangguniang Panlalawigan who has Served an Aggregated 9 Yrs of Gov’t Service, w/ Career Service Professional & Career Sub-Professional  ","21","Resolution 048-2011.pdf","21","2011-02-03","0");
INSERT INTO tbl_resolution VALUES("048 - 2012","","Approve Ord # 4, s 2011 of the SB of San Gabriel, La Union “Revised Tax Ord otherwise known as The Revised Revenue Code of San Gabriel, La Union”","9","Resolution 048-2012.pdf","21","2012-01-19","0");
INSERT INTO tbl_resolution VALUES("048 - 2013","","Congratulate & commend the Mun of Santol, LU, for being adjudged as the Regional Champion, Region I, during the Local Legislative Award 4th-6th Class Category  ","11","RES 48-2013.pdf","21","2013-01-31","0");
INSERT INTO tbl_resolution VALUES("048 - 2014","2014 - 0016","Ord # 2013-104, Santol, La Union. Ord to Curtail the Sale, Rental, Transfer, Distribution, Manufacture and or Production of Pirated, Counterfeit or Fake Goods, Articles or Services, & for Other Services, & for Other Purposes","2","RESOLUTION 048-2014.pdf","21","2014-02-06","0");
INSERT INTO tbl_resolution VALUES("049 - 1999","","Appropriate 20% Dev’t Fund for CY 1999 amounting P47,462,823.00 and program the same to La Union Breakthrough 2000","27","RESOLUTION NO.049-99.pdf","21","1999-02-11","0");
INSERT INTO tbl_resolution VALUES("049 - 2007","","Authorize Gov. to charge the wages and other benefits of casual employees against the PS Appropriation Savings of offices ","2","RESOLUTION NO. 049-2007.pdf","21","2007-03-08","0");
INSERT INTO tbl_resolution VALUES("049 - 2008","","Approve FY 2007 GF SB # 12, of Pugo, LU ","2","RESOLUTION NO. 049-2008.pdf","21","2008-01-31","0");
INSERT INTO tbl_resolution VALUES("049 - 2010","","Approve Mun Ord # 6-2010, of the SB of San Gabriel, LU, entitled: “An Ord Demanding & Collecting From the Metro LU Water District (MLUWD) the Share of the Municipality of San Gabriel, LU in the Gross Sales of Receipts Derived from the Utilization & Sale of Water Coming from the Lon-oy Spring & Lon-oy, San Gabriel, LU”","20","Resolution 049-2010.pdf","21","2010-02-17","0");
INSERT INTO tbl_resolution VALUES("049 - 2011","","Support passage of Senate Bill # 1508, An Act Granting the Local Sanggunian Except Sangguniang Barangays, the Power to Conduct Inquiries, to Issue Subpoena & to Punish for Contempt Any Person who Refuses to Obey such Process, Amending for the Purpose Secs 447, 458 & 468 of RA # 7160","17","Resolution 049-2011.pdf","21","2011-02-03","0");
INSERT INTO tbl_resolution VALUES("049 - 2012","","Approve City Ord # 2011-10 of the SP of the City of San Fdo,  La Union “An Ord Regulating the Establishment, Operation & Maintenance of Entertainment Establishment in the City of San Fdo, La Union”","19","Resolution 049-2012.pdf","21","2012-01-19","0");
INSERT INTO tbl_resolution VALUES("049 - 2013","","Set aside P50,000.00 as F/A to the CURE THE SEA project ","1","RES 49-2013.pdf","21","2013-02-07","0");
INSERT INTO tbl_resolution VALUES("049 - 2014","2014 - 0034","Mun Ord # 27-2013, An Ord Amending Sec 2.B, Sec 5, & 6 of Mun Ord # 13-2013, An Ord Prohibiting Any Fishing Activity w/n the 200 Meters Radius from the Existing Artificial Reefs in the Mun Waters of Agoo, LU & Providing Penalties for Violation Thereof?","10","RESOLUTION 049-2014.pdf","21","2014-02-06","0");
INSERT INTO tbl_resolution VALUES("050 - 1999","","Renew Contract of Service of Dr. Sheila Apilado as Contractual Resident Physician at RDH","27","RESOLUTION NO.050-99.pdf","21","1999-02-11","0");
INSERT INTO tbl_resolution VALUES("050 - 2007","","An AO appropriating P26,768,028.54 for SB # 02 of the General Fund ","20","RESOLUTION NO. 050-2007.pdf","21","2007-03-08","0");
INSERT INTO tbl_resolution VALUES("050 - 2008","","Approve FY 2007 GF SB # 3, of Rosario, LU","2","RESOLUTION NO. 050-2008.pdf","21","2008-01-31","0");
INSERT INTO tbl_resolution VALUES("050 - 2010","","Approve SB # 1, involving P3,991,450.00","31","Resolution 050-2010.pdf","21","2010-02-25","0");
INSERT INTO tbl_resolution VALUES("050 - 2011","","Grant request of Engr. Romulo Requirme, GM, COMTEL Industrial Services, Inc. for the excavation along the shoulder of Manila North Rd (Bagbag-Payocpoc Sec) & Agoo Beach Rd (Sta Barbara-San Juan Sec) for the laying of fiber optic cable for expansion purposes","1,9,10","Resolution 050-2011.pdf","21","2011-02-03","0");
INSERT INTO tbl_resolution VALUES("050 - 2012","","Return City Ord # 2011-04 of the SP of the City of San Fdo, LU “An Ord Providing Economic Opportunity  For Subsistence Farmers in the City of San Fdo”","19","Resolution 050-2012.pdf","21","2012-01-19","0");
INSERT INTO tbl_resolution VALUES("050 - 2013","","Congratulate Eng’r Cesar E. Higoy, Jr., No. 4 Topnotcher, CE Board Exam.","9","RES 50-2013.pdf","21","2013-02-07","0");
INSERT INTO tbl_resolution VALUES("050 - 2014","2014 - 0032","Mun Ord # 24-2013, An Ord Amending the Title, Sec 1, Sec 2.b, 3, 4, 6.a, 6.e, 12.a, 13, 14, 16 of Mun Ord # 29-2012, An Ord Designating Denny?s Park in Consolacion, Agoo, LU as a Special Economic Zone & Prescribing Rates & Regulations on the Rental of Stalls w/ the Area.","10","RESOLUTION 036-2014.pdf","21","2014-02-06","0");
INSERT INTO tbl_resolution VALUES("051 - 1999","","Approve Res # 37-98, of the SB of Luna, LU, Adopting Municipal Tax Ord # 4-98, entitled: An Ord Increasing the Rent per Stall Per Month on the Old Pavilion Stalls Located at the Public Market","24","RESOLUTION NO.051-99.pdf","21","1999-02-11","0");
INSERT INTO tbl_resolution VALUES("051 - 2007","","MOA w/ the Philippine Charity Sweepstakes Office (PCSO) for the purchase of 1 unit Computed Tomography Scanner Spiral (CT Scan) and 1 unit Ultra Sound with 2-3-D Capability for La Union Medical Center","18","RESOLUTION NO. 051-2007.pdf","21","2007-03-08","0");
INSERT INTO tbl_resolution VALUES("051 - 2008","","Approve FY 2007 GF SB # 4, of Rosario, LU ","2","RESOLUTION NO. 051-2008.pdf","21","2008-01-31","0");
INSERT INTO tbl_resolution VALUES("051 - 2010","","Approve FY 2009 GF SB # 18, of Bauang, LU","1","Resolution 051-2010.pdf","21","2010-02-25","0");
INSERT INTO tbl_resolution VALUES("051 - 2011","","Condole w/ AFP Chief of Staff & Nat’l Defense Sec, Gen. Angelo T. Reyes","1","Resolution 051-2011.pdf","21","2011-02-10","0");
INSERT INTO tbl_resolution VALUES("051 - 2012","","Authorize Gov MCO to claim or receive the checks for the redemption price of its Subscription Investment Plan (SIP) Shares from PLDT.","1","Resolution 051-2012.pdf","21","2012-01-19","0");
INSERT INTO tbl_resolution VALUES("051 - 2013","","Congratulate Hon. Jessie P. Cabrillos, MTC Judge, Balaoan, La Union.","10","RES 51-2013.pdf","21","2013-02-07","0");
INSERT INTO tbl_resolution VALUES("051 - 2014","2014 - 0026","Ord #  168, An Ord Prohibiting Littering in Public Places w/n the Jurisdiction of the Mun of Aringay, LU & Other Related Acts & Providing Penalties for Violation Thereof","10","RESOLUTION 051-2014.pdf","21","2014-02-06","0");
INSERT INTO tbl_resolution VALUES("052 - 1999","","Approve Ord # 11-98, of the SB of Sudipen, LU, Ordaining & Sealing & Licensing of Weights & Measures & Prescribing Penalties for Violation Thereof","24","RESOLUTION NO.052-99.pdf","21","1999-02-11","0");
INSERT INTO tbl_resolution VALUES("052 - 2007","","Renew MOA concerning the implementation of the Coal Briquette Program of the Province of La Union for tobacco crop year 2006-2007 between the province, the different tobacco producing municipalities, the NTA and various tobacco companies","22","RESOLUTION NO. 052-2007.pdf","21","2007-03-08","0");
INSERT INTO tbl_resolution VALUES("052 - 2008","","Approve FY 2007 GF SB # 3, of Santol, LU ","2","RESOLUTION NO. 052-2008.pdf","21","2008-01-31","0");
INSERT INTO tbl_resolution VALUES("052 - 2010","","Approve FY 2010 GF SB # 1, of Tubao, LU","1","Resolution 052-2010.pdf","21","2010-02-25","0");
INSERT INTO tbl_resolution VALUES("052 - 2011","","Return Mun Ord # 02-2011, of the SB of San Juan, LU, An Ord Delineating An Area for Public Abattoir","10","Resolution 052-2011.pdf","21","2011-02-10","0");
INSERT INTO tbl_resolution VALUES("052 - 2012","","Convey gratitude to the Aloha Medical Mission of Honolulu, Hawaii for their Medical Mission in Balaoan, La Union.","3","Resolution 052-2012.pdf","21","2012-01-19","0");
INSERT INTO tbl_resolution VALUES("052 - 2013","","Realign P5M from Peace & Order Initiative Fund for CY 2013 to Intelligence & Confidential Fund.","1,3","RES 52-2013.pdf","21","2013-02-07","0");
INSERT INTO tbl_resolution VALUES("052 - 2014","2014 - 0033","Mun Ord # 25-2013, An Ord Mandating All Parents/Guardians of School Children ages 5 Yrs. Old & Above to Enroll in Basic Education in Any Learning Institution in the Mun of Agoo, LU","10","RESOLUTION 052-2014.pdf","21","2014-02-06","0");
INSERT INTO tbl_resolution VALUES("053 - 1999","","Approve 1998 GF SB # 3, of Bangar, LU","27","RESOLUTION NO.053-99.pdf","21","1999-02-11","0");
INSERT INTO tbl_resolution VALUES("053 - 2007","","Contract of Lease withthe Commission on Higher Education (CHED,), Region I, pertaining to a 574.85 sq.m. lot owned by the PGLU located at the Regional government Center, Sevilla, CSF, LU for the construction of CHED’s Regional Office Building","18","RESOLUTION NO. 053-2007.pdf","21","2007-03-08","0");
INSERT INTO tbl_resolution VALUES("053 - 2008","","Approve FY 2007 GF SB # 4, of Santol, LU","2","RESOLUTION NO. 053-2008.pdf","21","2008-01-31","0");
INSERT INTO tbl_resolution VALUES("053 - 2010","","Approve FY 2010 GF AB, of the City of San Fernando, LU","1","Resolution 053-2010.pdf","21","2010-02-25","0");
INSERT INTO tbl_resolution VALUES("053 - 2011","","Call on Nat’l Council of PBMLP to amend PBMLP Constitution & By-Laws by changing its name to SPMLP","10","Resolution 053-2011.pdf","21","2011-02-10","0");
INSERT INTO tbl_resolution VALUES("053 - 2012","","Convey gratitude to the Balaonians of Hawaii for their Medical Mission in  Balaoan, La Union.","2","Resolution 053-2012.pdf","21","2012-01-19","0");
INSERT INTO tbl_resolution VALUES("053 - 2013","","Confer the 2013 AWARDEES\nSARANAY\nLUSA\nDIEGO SILANG\nABEL\nBASI\nENTREPINOY","1","RES 53-2013.pdf","21","2013-02-11","0");
INSERT INTO tbl_resolution VALUES("053 - 2014","2014 - 0035","Mun Ord # 29-2013, An Ord Amending Chapter 14, No. 2, 3, 4 & 10 of Mun Ord # 02A-2013, ?An Ord Enacting the Code of General Ordinances of the Mun of Agoo, LU & for Other Purposes?","10","RESOLUTION 053-2014.pdf","21","2014-02-06","0");
INSERT INTO tbl_resolution VALUES("054 - 1999","","Thank Liga ng mga Barangay, CSF, LU, for the honor bestowed on this Body","17","RESOLUTION NO.054-99.pdf","21","1999-02-11","0");
INSERT INTO tbl_resolution VALUES("054 - 2007","","Approve Ord # 2007-001 of the SB of Caba, LU, entitled: “Food Fortification Ord”","10","RESOLUTION NO. 053-2007.pdf","21","2007-03-08","0");
INSERT INTO tbl_resolution VALUES("054 - 2008","","Approve FY 2007 GF SB # 3, of Bangar, LU ","2","RESOLUTION NO. 054-2008.pdf","21","2008-01-31","0");
INSERT INTO tbl_resolution VALUES("054 - 2010","","Approve FY 2010 GF AB, of Tubao, LU","1","Resolution 054-2010.pdf","21","2010-02-25","0");
INSERT INTO tbl_resolution VALUES("054 - 2011","","Approve Ord # 201-80, of the SB of Santol, LU, Ord Creating the Local Legislative Executive Dev’t Advisory Council (LLEDAC) of the Mun of Santol, LU","10","Resolution 054-2011.pdf","21","2011-02-10","0");
INSERT INTO tbl_resolution VALUES("054 - 2012","","MOA, w/ the ff Medical Specialists:\n\n1. Dr. Edward L. Chui, FFPOA, FPCS- Orthopedics\n2. Dr. Myra M. Padilla, FPOGS- Obstetrics &Gnecology\n3. Dr. Eloisa C. Balanon - Anesthesiology\n4. Dr. Loreto O. Balanon – ENT- Head & Neck Surgery\n5. Dr. Stella Marie P. Mabanag- Internal Medicine- \nCardiology\n6. Dr. Maria Victoria O. Fangonil- Ophthalmology\n","18","Resolution 054-2012.pdf","21","2012-01-26","0");
INSERT INTO tbl_resolution VALUES("054 - 2013","","Approve FY 2012 GF SB # 2, of Naguilian, La Union.","1,6,7,9,10","resolution 054-2013.pdf","21","2013-02-14","0");
INSERT INTO tbl_resolution VALUES("054 - 2014","2014 - 0036","Letter of reconsideration on their Mun Ord # 164, Anti-Truancy Ordinance","10","RESOLUTION 054-2014.pdf","21","2014-02-06","0");
INSERT INTO tbl_resolution VALUES("055 - 1999","","Grant CHED’s request for 2 year extension to construct their Regional office","28","RESOLUTION NO.055-99.pdf","21","1999-02-18","0");
INSERT INTO tbl_resolution VALUES("055 - 2007","","Approve FY 2007 GF AB, of Luna, LU","2","RESOLUTION NO. 055-2007.pdf","21","2007-03-08","0");
INSERT INTO tbl_resolution VALUES("055 - 2008","","Approve  FY 2008 GF AB, ","2","RESOLUTION NO. 055-2008.pdf","21","2008-01-31","0");
INSERT INTO tbl_resolution VALUES("055 - 2010","","Confirm SP Resolution No. 045-2010","1,18","Resolution 055-2010.pdf","21","2010-02-25","0");
INSERT INTO tbl_resolution VALUES("055 - 2011","","Condole w/ Doña Bibiana C. Eriguel","1","Resolution 055-2011.pdf","21","2011-02-10","0");
INSERT INTO tbl_resolution VALUES("055 - 2012","","Approve FY 2011 GF Annual Budget of San Gabriel, La Union.","1","Resolution 055-2012.pdf","21","2012-01-26","0");
INSERT INTO tbl_resolution VALUES("055 - 2013","","Approve FY 2013 GF SB # 1, of Tubao, La Union.","1,6,7,9,10","resolution 055-2013.pdf","21","2013-02-14","0");
INSERT INTO tbl_resolution VALUES("055 - 2014","2014 - 0064","Letter of Gov. Manuel C. Ortega requesting the Honorable Body to authorize him for the payment of Accounts Payables in the amount of Six Million Nine Hundred Forty Nine Thousand Six  Hundred Forty Nine Thousand Six Hundred Twenty Seven Pesos and 38/100 (Php 6,949,627.38) to be charged to the Current Appropriations of the Province.\n","1","RESOLUTION 055-2014_001.pdf","21","2014-02-06","0");
INSERT INTO tbl_resolution VALUES("056 - 1999","","Grant ORT Community MPCI to construct the ORT Training Center beside ORT Central Office","28","RESOLUTION NO.056-99.pdf","21","1999-02-18","0");
INSERT INTO tbl_resolution VALUES("056 - 2007","","Condole w/ Mr. EliseoGayo, brother of VMLazaroGayo, Tubao, LU and condemning his death/murder","20","RESOLUTION NO. 056-2007.pdf","21","2007-03-08","0");
INSERT INTO tbl_resolution VALUES("056 - 2008","","Approve FY 2008 GF AB, of Burgos, LU","2","RESOLUTION NO. 056-2008.pdf","21","2008-01-31","0");
INSERT INTO tbl_resolution VALUES("056 - 2010","","MOA w/ DA-BFAR, Municipality of Naguilian, & the Fish and Meat Processors Asso., Brgy. Gusing Sur, in connection w/ the Bangus Deboning Project under the GAD","1,18,31","Resolution 056-2010.pdf","21","2010-03-04","0");
INSERT INTO tbl_resolution VALUES("056 - 2011","","Approve CY 2011 Supplemental AIP of:\n\na.	Office of the Prov’l Governor\nb.	Sangguniang Panlalawigan\nc.	Rosario Dist Hosp\nd.	Bacnotan Dist Hosp\n","20","Resolution 056-2011.pdf","21","2011-02-17","0");
INSERT INTO tbl_resolution VALUES("056 - 2012","","Condole w/ the bereaved family of the late Punong Brgy. Juanito C. Liclican of Brgy. Sili, Naguilian, La Union.","9","Resolution 056-2012.pdf","21","2012-01-26","0");
INSERT INTO tbl_resolution VALUES("056 - 2013","","Approve Ord # 6-2012, of the SB of San Gabriel, LU, “An Ord Prohibiting the Use, Sale, Distribution & Advertisement of Cigarettes & Tobacco Products in Certain Places, Imposing Penalties for Violations Thereof & Providing Funds Therefore & for Other Purposes”.","7,9,19","resolution 056-2013.pdf","21","2013-02-14","0");
INSERT INTO tbl_resolution VALUES("057 - 1999","","MOA w/ DECS involving a parcel of land at Brgy. Catbangen, CSF","28","RESOLUTION NO.057-99.pdf","21","1999-02-18","0");
INSERT INTO tbl_resolution VALUES("057 - 2007","","Condole w/ former SBMValeriano Lopez, CSF","23","RESOLUTION NO. 057-2007.pdf","21","2007-03-08","0");
INSERT INTO tbl_resolution VALUES("057 - 2008","","Approve FY 2008 GF AB, of Bangar, LU ","2","RESOLUTION NO. 057-2008.pdf","21","2008-01-31","0");
INSERT INTO tbl_resolution VALUES("057 - 2010","","MOA w/ the Municipality of Bangar in connection w/ the implementation of the TB control program w/ an x-ray at Balaoan District Hosp.","1,18","Resolution 057-2010.pdf","21","2010-03-04","0");
INSERT INTO tbl_resolution VALUES("057 - 2011","","Approve EO # 012-2010, of the Mun Mayor, Bangar, LU, Re-organizing the Mun Peace & Order Council of Bangar, LU","3","Resolution 057-2011.pdf","21","2011-02-17","0");
INSERT INTO tbl_resolution VALUES("057 - 2012","","Condole w/ the bereaved family of the late Ms. Cyrel F. Lumbis, employee of the PGLU- SP","9","Resolution 057-2012.pdf","21","2012-01-26","0");
INSERT INTO tbl_resolution VALUES("057 - 2013","","Approve Mun Ord # 02, s 2012, of the SB of Sto. Tomas, LU, “An Ord Enacting the Revision of the Comprehensive Traffic Rules & Regulations & Transportation Code of the Mun of Sto. Tomas, LU & Providing Penalties to Violations Thereof”","9,10,11","resolution 057-2013.pdf","21","2013-02-14","0");
INSERT INTO tbl_resolution VALUES("058 - 1999","","Land Purchase Agreement w/ qualified beneficiaries of Sagayad Resettlement Project","28","RESOLUTION NO.058-99.pdf","21","1999-02-18","0");
INSERT INTO tbl_resolution VALUES("058 - 2007","","Condole w/ Mr. Francisco Aquintey, COA Auditor of the PGLU and condemn his death/murder","10","RESOLUTION NO. 058-2007.pdf","21","2007-03-08","0");
INSERT INTO tbl_resolution VALUES("058 - 2008","","Approve FY 2007 GF SB # 2, of Santo Tomas, LU","2","RESOLUTION NO. 058-2008.pdf","21","2008-01-31","0");
INSERT INTO tbl_resolution VALUES("058 - 2010","","Contract of Lease w/ Qualified Livelihood Stall Lessees at Mabanag Area &Aguila Rd","1,7,18,20","Resolution 058-2010.pdf","21","2010-03-04","0");
INSERT INTO tbl_resolution VALUES("058 - 2011","","Approve EO # 014-2010, of the Mun Mayor, Bangar, LU, Re-organizing the Mun People’s Law Enforcement Board of the Mun of Bangar, LU","3","Resolution 058-2011.pdf","21","2011-02-17","0");
INSERT INTO tbl_resolution VALUES("058 - 2012","","Condole w/ the bereaeved family of the late Mrs. Maria Consolacion O. Sibuma, mother of VM Eric Sibuma of Aringay","9","Resolution 058-2012.pdf","21","2012-01-26","0");
INSERT INTO tbl_resolution VALUES("058 - 2013","","Grant exemption of Tubao Credit Coop from the payment of real property taxes of its properties.","7,9,10","resolution 058-2013.pdf","21","2013-02-14","0");
INSERT INTO tbl_resolution VALUES("058 - 2014","2014 - 0067","Letter of Gov. Manuel C. Ortega respectfully requesting the Honorable Body to authorize him to enter in a Contract of Agree-ment, for and on behalf of the Provincial Government of La Union (PGLU), with Dr. Carolyn B. Tabora, Obstetrics and Gynocology.\n","2,4,7,8","RESOLUTION 058-2014.pdf","21","2014-02-13","0");
INSERT INTO tbl_resolution VALUES("059 - 1999","","Request Phil. Carabao Center to issue a packet of 5 cows Bulgarian Buffalo to the province","24","RESOLUTION NO.059-99.pdf","21","1999-02-18","0");
INSERT INTO tbl_resolution VALUES("059 - 2007","","Realign the budgetary appropriation of the Office of the Provincial Veterinarian plantilla position of Supervising Agriculturist to Agricultural Center Chief II amounting to P213,580","2","RESOLUTION NO. 059-2007.pdf","21","2007-03-08","0");
INSERT INTO tbl_resolution VALUES("059 - 2008","","Condole w/ the late SPO4 Crisanto Caguioa, PNP, Naguilian, LU","31","RESOLUTION NO. 059-2008.pdf","21","2008-01-31","0");
INSERT INTO tbl_resolution VALUES("059 - 2010","","Accredit Waves of Love Assistance Fund, Inc as NGO","7","Resolution 059-2010.pdf","21","2010-03-04","0");
INSERT INTO tbl_resolution VALUES("059 - 2011","","Return Mun Ord # 17-2010, of the SB of San Juan, LU, An Ord Authorizing the Reclassification of Agricultural Land at BrgyCacapian, this Mun, in Favor of the Northern Residential Estate, Inc.","3","Resolution 059-2011.pdf","21","2011-02-17","0");
INSERT INTO tbl_resolution VALUES("059 - 2012","","Approve the Top Ten Taxpayers in the province of LU for CY 2010:\n\n1.	LU Electric Company, Inc.\n2.	Soiltech Agricultural Products Corp.\n3.	Rang-ay Bank (a Rural Bank), Inc.\n4.	Nee Mee Foods Corp.\n5.	CJ Fernandez Enterprises, Inc.\n6.	Phil Topwood Industries & Trading Corp.\n7.	Lorma Medical Center, Inc.\n8.	Valbros Realty Corp.\n9.	ALCCO Realty Corp.\n10.	Purchase & Grow, Inc.\n11.	Costsaver’s Supermarket, Inc. \n","20","Resolution 059-2012.pdf","21","2012-01-26","0");
INSERT INTO tbl_resolution VALUES("059 - 2013","","Register strong objection to the grant/issuance of MGB, Q.C. of the offshore exploration to Colossal Mining Corp ","1,3,7,9,10","resolution 059-2013.pdf","21","2013-02-14","0");
INSERT INTO tbl_resolution VALUES("059 - 2014","2014 - 0068","Request authority to Renew the MOA/Contract of Affiliation of all concerned colleges, universities and schools of Nursing, Caregivers and Midwifery & other Vocational & Technical Institutions for the 5 District Hospitals, Dept and Offices of the Prov for SY 2014-2015","4","RESOLUTION 059-2014.pdf","21","2014-02-13","0");
INSERT INTO tbl_resolution VALUES("060 - 1999","","MOA w/ DA, the Municipality of Sto. Tomas, LU regarding the implementation of the Fisheries Resources Management Project","24","RESOLUTION NO.060-99.pdf","21","1999-02-18","0");
INSERT INTO tbl_resolution VALUES("060 - 2008","","Request P/Supt Mafelino Bazar, Chief of Police, Biñan, Laguna to expedite the resolution and disposition of the case involving the killing of SPO4 Crisanto Caguioa ","31","RESOLUTION NO. 060-2008.pdf","21","2008-01-31","0");
INSERT INTO tbl_resolution VALUES("060 - 2010","","Give Salacnib Award 2009 to all deserving agencies, etc.","1,3,5,18","Resolution 060-2010.pdf","21","2010-03-04","0");
INSERT INTO tbl_resolution VALUES("060 - 2011","","Approve Mun Ord # 05-2011, of the SB of San Juan, LU, Smoking-Free Ord of the Local Gov’t of San Juan, LU","3","Resolution 060-2011.pdf","21","2011-02-17","0");
INSERT INTO tbl_resolution VALUES("060 - 2012","","Return Tax Ord # 2011-01, of the SP of Sn Fdo, LU, “An Ord Amending Art A of Chap 2  & Art A & B of Chap 3 Tax Ord # 2009-002, Otherwise Known as the 2010 Revenue Code of the City of Sn Fdo”","20","Resolution 060-2012.pdf","21","2012-01-26","0");
INSERT INTO tbl_resolution VALUES("060 - 2013","","Approve the CY 2013 Supplemental AIP of:\n\n1.	Office of the Prov’l Governor\n2.	Office of the Prov’l Agriculturist\n3.	Office of the PSWD\n4.	Prov’l Health Officer\n5.	Prov’l Population Office\n6.	Office of the Prov’l Vet\n7.	Prov’l Budget Office\n8.	Office of the Prov’l Eng’r","1,7,11,19","resolution 060-2013.pdf","21","2013-02-14","0");
INSERT INTO tbl_resolution VALUES("060 - 2014","2014 - 0069","Request to pass a Res to adjust the present salary Grade of Dr. Godofredo G. Garcia, Chief of Hospital II, NDH from SG 24-5 (P51,975/mo) to SG 25-5 (P56,133/m0) effective April 5, 2014","4","RESOLUTION 060-2014.pdf","21","2014-02-13","0");
INSERT INTO tbl_resolution VALUES("061 - 1999","","MOA w/ NTA, Trans Manila Inc. and participating tobacco firms and farmer cooperators relative to the 1999 Coal Briquette Project","24","RESOLUTION NO.061-99.pdf","21","1999-02-18","0");
INSERT INTO tbl_resolution VALUES("061 - 2007","","Hire one (1) Contractual Nurse for Rosario District Hospital ","34","RESOLUTION NO. 061-2007.pdf","21","2007-03-15","0");
INSERT INTO tbl_resolution VALUES("061 - 2008","","Confirm and approve the nominees for the following awards:\n\nSARANAY AWARD\n1.	Mr. Augusto Aureo Q. Nisce\n\nLA UNION SERVICE AWARD\n1.	Dr. Rosita C. Nisce\n2.	Mr. Romero M. Gacad\n3.	Atty. Pedro F. Ofiana, Jr.\n4.	Atty. Reynaldo V. Dulay\n5.	Ms. Maria Annabelle S. de Guzman\n6.	Mr. Mario Eduardo C. Ortega\n7.	Hon. Gerard Jose G. Ostrea\n8.	MGen Melchor J. Dilodilo, AFP\n9.	Brig Gen Mario F. Chan, AFP\n\nDIEGO SILANG AWARD\n1.	P/Sr Supt Edgar O. Basbas\n2.	P/Sr Marvin V. Bolabola\n3.	Comm Vicente M. Agdamag, AFP\n4.	Lt Col Avelino F. Mendoza, PAF (PSG)\n\nBASI AWARD\n1.	DMMMSU Graduate College Extension\n2.	Provincial Disaster Response Team\n3.	La Union Widows Association\n4.	La Union Provincial Tribal Council, Inc\n\nSPECIAL AWARD\n1.	La Union Beekeepers Dev’t Sector Leader\n2.	Upper Tumapoc MPCI\n3.	Victoria’s Empanada\n4.	Josie Antique Shop\n5.	Wallace Poro Sea Urchin Cooperators Asso\n6.	Halog West MPCI\n7.	North Way Arts and Craft\n8.	Perfect Hand Garden\n9.	Crissani Apparel\n10.	Natomo Manufacturing\n\nSPECIAL AWARD\n(ELEMENTARY)\n1.	Ms. Sachiko Visperas\n2.	Ms Eufracia D. Abiog\n3.	Ms. Marilyn Guzman\n4.	Ms. Ma. Teresa Mamuyac\n5.	Ms Jeanette Dacanay\n6.	Ms. Belen Aquino\n\n(SECONDARY)\n1.	Mr. Reynaldo Estacio\n2.	Mr. Bernardo Mayrena, Jr.\n3.	Mr. Jayson Obillo\n4.	Mr. Rogelio Valdez\n","31","RESOLUTION NO. 061-2008.pdf","21","2008-01-31","0");
INSERT INTO tbl_resolution VALUES("061 - 2010","","Endorse promotion of the personnel of Bauang District Jail, BJMP","1,18","Resolution 061-2010.pdf","21","2010-03-04","0");
INSERT INTO tbl_resolution VALUES("061 - 2011","","Approve Mun Ord # 03-2011, of the SB of Agoo, LU, An Ord Supporting the Pre-Marriage Counseling Program of the Mun of Agoo, LU & Allocating P25,000.00 for its Program Operation & Implementation","5","Resolution 061-2011.pdf","21","2011-02-17","0");
INSERT INTO tbl_resolution VALUES("061 - 2012","","Support the proposal of Hon  Rep. Hermilando I. Mandanas, Batangas, for a P5 B increase in the IRA for LGUs in 2012","20","Resolution 061-2012.pdf","21","2012-01-26","0");
INSERT INTO tbl_resolution VALUES("061 - 2013","","MOA w/ the Basic Needs Services Phils, Inc. re: consultancy services of BNS-Phils in preparation of a detailed design, supervise the construction & train the local operators of the low cost & maintenance wastewater treatment plant for Balaoan Dist Hosp.","6,10,18","resolution 061-2013.pdf","21","2013-02-14","0");
INSERT INTO tbl_resolution VALUES("061 - 2014","2014 - 0007","Ord # 19, s 2013, An Ord Amending Ord # 20, s 2008, Mun Revenue Code of Bauang, LU, Part Art # 22, Permit Fee for Zoning and Locational Clearance.","8","RESOLUTION 061-2014.pdf","21","2014-02-13","0");
INSERT INTO tbl_resolution VALUES("062 - 1999","","Adopt VP GMA as daughter of the province","30","RESOLUTION NO.062-99.pdf","21","1999-02-18","0");
INSERT INTO tbl_resolution VALUES("062 - 2007","","Condole w/ former VM and Composer of the LU Hymn, Hon. Primitivo Acosta ","10","RESOLUTION NO. 062-2007.pdf","21","2007-03-15","0");
INSERT INTO tbl_resolution VALUES("062 - 2008","","Adopt the One Town One Product (OTOP) of the province ","3","RESOLUTION NO. 062-2008.pdf","21","2008-02-07","0");
INSERT INTO tbl_resolution VALUES("062 - 2010","","Request PCSO to grant 2 Ambulances & authorize the Governor to enter and sign a Deed of Donation and allocate P35,000.00/unit for LTO vehicle registration and insurance","1,2,3,5,7,12,18,20,31,32,33","Resolution 062-2010.pdf","21","2010-03-11","0");
INSERT INTO tbl_resolution VALUES("062 - 2011","","Approve EO # 015-2010, of the Mun Mayor, Bangar, LU, Re-organizing the Mun School Board of the Mun of Bangar, LU","18","Resolution 062-2011.pdf","21","2011-02-17","0");
INSERT INTO tbl_resolution VALUES("062 - 2012","","Approve Mun Ord # 10, s 2011 of the SB of Bauang, LU, “An Ord Amending Art 45, Cemetery Charge of Ord # 20, s 2008, Otherwise known as the Revenue Code of the Mun of Bauang”","20","Resolution 062-2012.pdf","21","2012-01-26","0");
INSERT INTO tbl_resolution VALUES("062 - 2013","","Approve the proposed programming of the FY 2010 Burley & Other Native Tobacco Excise Taxes amounting to P5,096,484.00.","1,3,6,10,11","resolution 062-2013.pdf","21","2013-02-14","0");
INSERT INTO tbl_resolution VALUES("063 - 1999","","Approve 1999 GF AB, of Aringay, LU","20","RESOLUTION NO.063-99.pdf","21","1999-02-18","0");
INSERT INTO tbl_resolution VALUES("063 - 2007","","Approve programming of RA 7171 in the amount of P19,979,949","2","RESOLUTION NO. 063-2007.pdf","21","2007-03-22","0");
INSERT INTO tbl_resolution VALUES("063 - 2010","","Condole w/ Atty. Antonio M de Guzman","18","Resolution 063-2010.pdf","21","2010-03-11","0");
INSERT INTO tbl_resolution VALUES("063 - 2011","","Realign P965,957.00 for:\n\na.	Purchase of cement for Tabtabungao      P585,250.00     \nFootbridge & FMR, Rosario, LU\nb.	Cabaroan Rd Improvement, SFC                  380,607.00\n","20","Resolution 063-2011.pdf","21","2011-02-17","0");
INSERT INTO tbl_resolution VALUES("063 - 2012","","Condole with the bereaved family of the late Mr. Reynaldo B. Fernandez, a model farmer & outstanding entrepreneur in Bangar","10","Resolution 063-2012.pdf","21","2012-01-26","0");
INSERT INTO tbl_resolution VALUES("063 - 2013","","Congratulate & commend BM Francisco Ortega Jr., Mayor Bellarmin C. Flores III, Mayor Ferdinand D. Tumbaga, VM Romeo L. Resurreccion, VM Angelo S. Aquino, VM Allan S. Sabangan, VM Vincent A. Rafanan for being recognized among former Councilors elected/appointed to higher positions in gov’t.","11","resolution 063-2013.pdf","21","2013-02-14","0");
INSERT INTO tbl_resolution VALUES("064 - 1999","","Approve 1999 GF AB, of Bagulin, LU","20","RESOLUTION NO.064-99.pdf","21","1999-02-18","0");
INSERT INTO tbl_resolution VALUES("064 - 2007","","Tripartite MOA w/ the Office of the President, and the Municipality of Bacnotan, LU, in connection with the P1 M Soft Loan received by the province and P1 M loan to the Municipal Government of Bacnotan, LU under the “Isang Bayan, IsangProdukto, IsangMilyongPiso Program”","10","RESOLUTION NO. 064-2007.pdf","21","2007-03-22","0");
INSERT INTO tbl_resolution VALUES("064 - 2008","","Contract of Consultancy Services, with Mr. Justiniano Arzadon, Jr., as Consultant to the Office of the Governor on Barangay Affairs ","18","RESOLUTION NO. 064-2008.pdf","21","2008-02-07","0");
INSERT INTO tbl_resolution VALUES("064 - 2010","","Approve FY 2010 GF AB, of Bauang, LU","2","Resolution 064-2010.pdf","21","2010-03-11","0");
INSERT INTO tbl_resolution VALUES("064 - 2011","","Condole w/ Ms Blanca A Lacsamana","18","Resolution 064-2011.pdf","21","2011-02-17","0");
INSERT INTO tbl_resolution VALUES("064 - 2012","","Congratulate Mrs. Florence E. Ducusin, for being awarded as the Most Outstanding Brgy Health Worker in Region I","18","Resolution 064-2012.pdf","21","2012-01-26","0");
INSERT INTO tbl_resolution VALUES("064 - 2013","","Contract of Agreement w/ the ff Medical Specialists as Visiting Consultants at Bacnotan Dist Hosp:\n\n1.	Dr. Loreto O. Balanon\n2.	Dr. Judith Efleda O. Chan\n3.	Dr. Edward L. Chiu\n4.	Dr. Joventino S. Espiritu\n5.	Dr. Maria Victoria O. Fangonil\n6.	Dr. Stella Marie P. Mabanag\n7.	Dr. Myra M. Padilla\n8.	Dr. Robito L. Poligrates\n9.	Dr. Cesar M. Duran III\n10.	Dr. Eloisa C. Balanon\n11.	Dr. Melanie O. Liclican\n","6,7,11,18","resolution 064-2013.pdf","21","2013-02-28","0");
INSERT INTO tbl_resolution VALUES("064 - 2014","2014 - 0008","Ord # 20, s 2013, Bauang, La Union, Res Enacting an Ord Reclassifying the Parcel of Land Registered Under the Name of Sps. Dominador&LiberataUntalasco with an area of 5,890 sq.m. Located at Brgy Bagbag, this Mun from Agricultural to Comm?l Classification.","7","RESOLUTION 064-2014.pdf","21","2014-02-13","0");
INSERT INTO tbl_resolution VALUES("065 - 1999","","Approve 1999 GF AB, of Pugo, LU","20","RESOLUTION NO.065-99.pdf","21","1999-02-18","0");
INSERT INTO tbl_resolution VALUES("065 - 2007","","An AO appropriating P1,157,500from the GF for the repayment of the P1 M Soft Loan of the province under the Isang Bayan, IsangProdukto, IsangMilyongPiso program with an interest of 6% per annum for a period of 3 years","2","RESOLUTION NO. 065-2007.pdf","21","2007-03-22","0");
INSERT INTO tbl_resolution VALUES("065 - 2008","","Approve the application of and accredit Jaime V. Ongpin Foundation, Inc. as NGO","7","RESOLUTION NO. 065-2008.pdf","21","2008-02-07","0");
INSERT INTO tbl_resolution VALUES("065 - 2011","","Condole w/ dead victims of Cainta Massacre & grant P10,000.00 death assistance","5","Resolution 065-2011.pdf","21","2011-02-17","0");
INSERT INTO tbl_resolution VALUES("065 - 2012","","Amend Res # 419-2011 on the composition of TWG for the proposed Ord regulating the use & sale of all Single-use plastic bags, bottles, wrappers, containers & Styrofoam & other non-ecological friendly materials in the Prov.","1","Resolution 065-2012.pdf","21","2012-01-26","0");
INSERT INTO tbl_resolution VALUES("065 - 2013","","Approve the Consolidated CY 2013 Supplemental AIP from the diff Offices:\n\n1.	Office of the Prov’l Vet\n2.	Prov’l Health Office\n3.	Office of the Prov’l Agriculturist","3,7,17,18","resolution 065-2013.pdf","21","2013-02-28","0");
INSERT INTO tbl_resolution VALUES("066 - 1999","","Approve 1999 GF AB, of San Gabriel, LU","20","RESOLUTION NO.066-99.pdf","21","1999-02-18","0");
INSERT INTO tbl_resolution VALUES("066 - 2007","","Set aside P100,000 as F/A to Ms. BuenafePaa, Executive Assistant I, Office of the Mayor, CSF, LU ","20","RESOLUTION NO. 066-2007.pdf","21","2007-03-22","0");
INSERT INTO tbl_resolution VALUES("066 - 2008","","Revised Revenue Code of the Province of La Union","20","RESOLUTION NO. 065-2008.pdf","21","2008-02-07","0");
INSERT INTO tbl_resolution VALUES("066 - 2010","","Approve CLUP and Zoning Ordinance of Balaoan for CY 2008-2010","33","Resolution 066-2010.pdf","21","2010-03-11","0");
INSERT INTO tbl_resolution VALUES("066 - 2011","","Thank Mayor DaniloLeybe, Antipolo, Rizal for the extra effort extended to the families of Cainta victims","5","Resolution 066-2011.pdf","21","2011-02-17","0");
INSERT INTO tbl_resolution VALUES("066 - 2012","","Approval of the Proposed Ord Renaming Caba Medicare & Community Hospital to Caba Community Hospital:\n\n1.	request Dr. Gretchen Aromin, Chief of CMCH to submit endorsement letter along w/ a summary of activities undertaken to improve the hospital’s capabilities\n2.	consult Nat’l Historical Commission w/ regards to its renaming \n3.	request Prov’l Health Board to recommend its renaming  \n","18","Resolution 066-2012.pdf","21","2012-02-02","0");
INSERT INTO tbl_resolution VALUES("066 - 2013","","Approve the FY 2013 GF AB, of the SB of Rosario, La Union.","5,10,18","resolution 066-2013.pdf","21","2013-02-28","0");
INSERT INTO tbl_resolution VALUES("067 - 1999","","Approve 1998 GF SB # 01-G, of Bauang, LU","20","RESOLUTION NO.067-99.pdf","21","1999-02-18","0");
INSERT INTO tbl_resolution VALUES("067 - 2007","","Approve Ord # 75, s. 2007 of the SB of Sudipen, LU, entitled: “Child Welfare Code of the Municipality of Sudipen, LU”","10","RESOLUTION NO. 067-2007.pdf","21","2007-03-22","0");
INSERT INTO tbl_resolution VALUES("067 - 2008","","Condole w/  Mr. Jose D. Rimando, father of Mr. Donato Rimando","1","RESOLUTION NO. 067-2008.pdf","21","2008-02-07","0");
INSERT INTO tbl_resolution VALUES("067 - 2010","","Congratulate PChief Pedro Obaldo as lead PNP 2nd Runner Up, during the Regional Anniversary of the PNP","1,3,18","Resolution 067-2010.pdf","21","2010-03-11","0");
INSERT INTO tbl_resolution VALUES("067 - 2011","","Thank DSWD Sec Dinky soliman for generosity extended to the families of Cainta victims","5","Resolution 067-2011.pdf","21","2011-02-17","0");
INSERT INTO tbl_resolution VALUES("067 - 2012","","Approve Mun Ord # 31-2011 of the SB of Agoo, LU, Amending Sec 1 of Mun Ord # 28-2008, Granting Authority to Mayor Sandra Y. Eriguel to institute expropriation proceedings on Lot #s 1113-A; 1113-B-2-A; 1113-B-2-B, 1114; 115;1117 & 1118","20","Resolution 067-2012.pdf","21","2012-02-02","0");
INSERT INTO tbl_resolution VALUES("067 - 2013","","Approve Mun Ord # 01-2013, of the SB of Agoo, LU, “An Ord Amending Sec IX.02, Sec 9XL.04(1), Sec 9XLI.01, Sec 9XLII.03, Chapter 14 (Title), Sec 14 LVIII.01(8), Sec 14 LXI.03, Sec 16 LXV.04, Sec 16 LXVI.01(3), Sec 17 LXVIII.01 & Sec 20 LXXVII.01 of Mun Ord # 03-2012, An Ord Enacting the Sanitation Code of the Mun of Agoo, La Union”","5,6,7,9,10,18","resolution 067-2013.pdf","21","2013-02-28","0");
INSERT INTO tbl_resolution VALUES("067 - 2014","2014 - 0047","Ord # 31, s 2013, An Ord Prohibiting the Use of Modified Mufflers, Sirens & Horns that Create & Generate Loud & Deafening Sound in Motorcycles and All Types of Vehicles that Ply the Streets & Thoroughfares w/n the Territorial Jurisdiction of the Mun of Naguilian, Prov of LU, and Imposing Penalties in Violation or Infringement Thereof and for Other Purposes","10","RESOLUTION 067-2014.pdf","21","2014-02-13","0");
INSERT INTO tbl_resolution VALUES("068 - 1999","","AO amounting P268,642.37 for Terminal Leave Pay","27","RESOLUTION NO.068-99.pdf","21","1999-02-25","0");
INSERT INTO tbl_resolution VALUES("068 - 2007","","Approve City Ord # 2007-001, of the SP of the City of San Fernando, LU, entitled: “An OrdAmending Ord # 2001-007, Otherwise Known as the Zoning Ordinance of the City of San Fernando”","10","RESOLUTION NO. 068-2007.pdf","21","2007-03-22","0");
INSERT INTO tbl_resolution VALUES("068 - 2008","","Favorably indorse the application of Atty. Anita M. Chauhan as Commissioner of the Commission on Human Rights","21","RESOLUTION NO. 068-2008.pdf","21","2008-02-14","0");
INSERT INTO tbl_resolution VALUES("068 - 2010","","Congratulate LUPPO as Awardee under Model Transformation Program during the Regional Anniversary of the PNP","1,3,18","Resolution 068-2010.pdf","21","2010-03-11","0");
INSERT INTO tbl_resolution VALUES("068 - 2011","","Condole w/ BC Archimedes Bambao, Taberna, Bauang, LU","9,20","Resolution 068-2011.pdf","21","2011-02-17","0");
INSERT INTO tbl_resolution VALUES("068 - 2012","","Memoof Understanding, w/ the Mun of Caba, La Union, in connection w/ the disposal of waste materials of the Caba Medicare & Community Hospital due to Non-availability of Hospital Dumpsite","1","Resolution 068-2012.pdf","21","2012-02-02","0");
INSERT INTO tbl_resolution VALUES("068 - 2013","","General Authority to enter into a MOA/Contract of Affiliation w/ requesting colleges, universities & schools of Nursing, Caregivers & Midwifery & other Vocational & Technical Institutions in the 5 Dist Hosp, Depts& Offices for SY 2013-2014","5,6,7,10,18","resolution 068-2013.pdf","21","2013-02-28","0");
INSERT INTO tbl_resolution VALUES("068 - 2014","2014 - 0037","Letter of clarification on their Mun Ord # 161, Amending their Scholarship Ord","10","RESOLUTION 068-2014.pdf","21","2014-02-13","0");
INSERT INTO tbl_resolution VALUES("069 - 1999","","Approve 1999 GF AB, of Tubao, LU","27","RESOLUTION NO.069-99.pdf","21","1999-02-25","0");
INSERT INTO tbl_resolution VALUES("069 - 2007","","Approve Ord # 001, s. 2007 of the SB of Rosario, LU, entitled: “An Ord Adopting Sustainable Carabao Development Program for the Municipality of Rosario, LU”","10","RESOLUTION NO. 069-2007.pdf","21","2007-03-22","0");
INSERT INTO tbl_resolution VALUES("069 - 2008","","Commend Arch Ryan M. Benaoe for bringing honor and prestige to the Province by topping the 2008 Architecture Licensure Exam given by the PRC","5","RESOLUTION NO. 069-2008.pdf","21","2008-02-14","0");
INSERT INTO tbl_resolution VALUES("069 - 2010","","Commend MichDulce for winning International Young Creative Entrepreneur Award for fashion in London","3","Resolution 069-2010.pdf","21","2010-03-11","0");
INSERT INTO tbl_resolution VALUES("069 - 2011","","Approve FY 2011 GF AB of Balaoan, LU","1","Resolution 069-2011.pdf","21","2011-02-24","0");
INSERT INTO tbl_resolution VALUES("069 - 2012","","MOA with the CSC RO-1 to renew the MOA allowing the latter to occupy the Liga ng mga Brgy Bldg as the CSC-LU Field Office","18","Resolution 069-2012.pdf","21","2012-02-02","0");
INSERT INTO tbl_resolution VALUES("069 - 2013","","Declare the province under a State of Calamity due to oil spill","11","resolution 069-2013.pdf","21","2013-02-28","0");
INSERT INTO tbl_resolution VALUES("069 - 2014","2014 - 0050","Mun Ord # 98, s 2013, Internal Rules of Procedure of the SB of Sudipen, La Union","10","RESOLUTION 069-2014.pdf","21","2014-02-13","0");
INSERT INTO tbl_resolution VALUES("070 - 1999","","Approve 1998 GF SB # 04, of Pugo, LU","27","RESOLUTION NO.070-99.pdf","21","1999-02-25","0");
INSERT INTO tbl_resolution VALUES("070 - 2007","","Approve City Ord # 2007-005, of the SP of the City of San Fernando, LU, entitled: “An Ord Enacting the Animal Welfare Code of the City of San Fernando”","10","RESOLUTION NO. 070-2007.pdf","21","2007-03-22","0");
INSERT INTO tbl_resolution VALUES("070 - 2008","","Bestow the highest commendation to Hon. Victor F. Ortega for his outstanding contribution to the development and progress of La Union ","20","RESOLUTION NO. 070-2008.pdf","21","2008-02-14","0");
INSERT INTO tbl_resolution VALUES("070 - 2010","","RA 7171 Fund projects amounting P35,644,083.06","1,3,18","Resolution 070-2010.pdf","21","2010-03-11","0");
INSERT INTO tbl_resolution VALUES("070 - 2011","","Approve FY 2011 GF AB of Tubao, LU","1","Resolution 070-2011.pdf","21","2011-02-24","0");
INSERT INTO tbl_resolution VALUES("070 - 2012","","MOA with the NFA- LU, San Juan, La Union, re: purchase of NFA rice for emergency relief distribution/emergency operation .","18","Resolution 070-2012.pdf","21","2012-02-02","0");
INSERT INTO tbl_resolution VALUES("070 - 2013","","Approve Res # 13-18, of the SP of the City of Sn Fdo, LU, “Res Granting Authority to the Hon Mayor Pablo Ortega to Enter into a MOA B/n & Among the Phil Red Cross, DepEd, League of Municipalities – LU Chapter & PGLU for the Implementation of the Community Based Disaster Risk Reduction Project in the Prov of LU”","1,5,10","resolution 070-2013.pdf","21","2013-03-07","0");
INSERT INTO tbl_resolution VALUES("070 - 2014","2014 - 0022","Pammadayaw 2014\n\nDate Agenda - Jan. 9, 2014\nPITO - Recommend KAPUSO MO, JESSICA SOHO for ABEL & BASI Nominee.\nPITO - Recommend NAIMBAG NGA MORNING KAPAMILYA, for ABEL & BASI Nominee.\n\nDate Agenda - Jan. 22, 2014\nBM V Aragon- Nominate the Special Olympics ? La Union for BASI AWARD\nBM J Ostrea Jr - Nominate FR. NOLAN R. NABUA, as LUSA\nOPAg - Nominate APOLONIO S. SITO, as LUSA\nBM NC Bacurnay - Nominate DR. LINDA H. LAUDENCIA as LUSA\nBM NC Bacurnay - Nominate GEN. ROLANDO PURUGGANAN as LUSA\nGeraldine Ortega - Nominate LA UNION MEDICAL SOCIETY as ABEL/BASI\n\nPD Delia Mingaracal, DTI - Nominate the ff as ENTREPINOY:\n1.	DOMINGO L. DINGAYAN, Dingayan?s Apiary\n2.	JANICE D. FLORENDO, Floredelz Knitted Garments\n\nBM R Mosuela - Nominate Atty. Benjamin P. Sapitula as LUSA\nBM NC Bacurnay- Nominate Gen Rolando R. Macusi as LUSA","4","RESOLUTION 070-2014.pdf","21","2014-02-13","0");
INSERT INTO tbl_resolution VALUES("071 - 1999","","Approve 1998 GF SB # 3, of San Gabriel, LU","27","RESOLUTION NO.071-99.pdf","21","1999-02-25","0");
INSERT INTO tbl_resolution VALUES("071 - 2007","","Approve City Traffic Ord E 2007-002, of the SP of San Fernando, LU, entitled: “An Ord Amending Traffic Ord # 1, s. 1995, Otherwise Known as An OrdCodifying the Traffic Ord of the Municipality of San Fernando, Province of LU, as Amended by Traffic Ord # 2004-007, and City Ord # 2005-002”","10","RESOLUTION NO. 071-2007.pdf","21","2007-03-22","0");
INSERT INTO tbl_resolution VALUES("071 - 2008","","Commend Dr. Anita M. Chauhan for her efforts as well as kindness in sharing her expert opinion, insights and comments on the Curfew Ordinance being considered by the SP","31","RESOLUTION NO. 071-2008.pdf","21","2008-02-21","0");
INSERT INTO tbl_resolution VALUES("071 - 2010","","Approve the CY 2010 Expenditure Program of the Economic Enterprise amounting to P98,169,816.00","1,18","Resolution 071-2010.pdf","21","2010-03-18","0");
INSERT INTO tbl_resolution VALUES("071 - 2011","","Approve Res # 017-2010, of the SB of Bangar, LU, Identifying the Local Verification Committee (LVC) on the Conduct of Validation & Finalization of the List of Poor Households in Connection w/ the Implementation of the Nat’l Household Targeting System for Poverty Reduction (NTH-PR) Project by the DSWD","1","Resolution 071-2011.pdf","21","2011-02-24","0");
INSERT INTO tbl_resolution VALUES("071 - 2012","","Contract of Consultancy Service:\n\n1.	Ms. Laura-Amelie Riavitz- Marine Biologist \n2.	Mrs. Imelda C. Asiaten- Music Culture & Arts\n","18","Resolution 071-2012.pdf","21","2012-02-02","0");
INSERT INTO tbl_resolution VALUES("071 - 2013","","Approve the CY 2013 Supplemental AIP for the equipment upgrading of the Naguilian District Hospital.","5,6,7,9,10,18","resolution 071-2013.pdf","21","2013-03-14","0");
INSERT INTO tbl_resolution VALUES("071 - 2014","2014 - 0009","Ord # 2011-083, Ord Institutionalizing the S-olace I-nner Peace L-ove A-tonement& W-orship (SILAW) ? Moral Recovery Program (MRP) in All Gov?t Depts, Offices, Agencies and Gov?t-Owned & Controlled Corp thru the conduct of Recollection Called SILAW which Stands for Every Month of August of Every Year in the Mun of Santol, LU","12","RESOLUTION 071-2014.pdf","21","2014-02-13","0");
INSERT INTO tbl_resolution VALUES("072 - 1999","","Approve 1999 GF AB, of Burgos, LU","20","RESOLUTION NO.072-99.pdf","21","1999-03-04","0");
INSERT INTO tbl_resolution VALUES("072 - 2007","","Approve City Traffic Ord # 2007-003, of the SP of the City of San Fernando, LU, entitled: An Ord Amending Ord # 98-003, Otherwise known as “The Anti-Jaywalking Ord” ","10","RESOLUTION NO. 072-2007.pdf","21","2007-03-22","0");
INSERT INTO tbl_resolution VALUES("072 - 2008","","MOA w/ LBP, LU Branch, CSF with the Livelihood Loan Facility Program","31","RESOLUTION NO. 072-2008.pdf","21","2008-02-21","0");
INSERT INTO tbl_resolution VALUES("072 - 2010","","Authorize Gov. MCO to negotiate and enter into a Loan Agreement with LBP for a loan against the LGU share on the unreleased 15% Excise Tax for CY 2002-2009 from Virginia Tobacco Excise Tax","1,18","Resolution 072-2010.pdf","21","2010-03-18","0");
INSERT INTO tbl_resolution VALUES("072 - 2011","","Accredit PambansangKoalisyonngKababaihansaKanayunan, LU as NGO","7","Resolution 072-2011.pdf","21","2011-02-24","0");
INSERT INTO tbl_resolution VALUES("072 - 2012","","Renew MOA/ Contract of Affiliation for CY 20112-2013 to all concerned colleges, universities & schools of Nursing, Midwifery & Caregivers & other vocational & technical institutions in the province to the 5 district hospitals, depts. & offices for SY 2012-2013 pertaining to OJT Program","18","Resolution 072-2012.pdf","21","2012-02-02","0");
INSERT INTO tbl_resolution VALUES("072 - 2013","","Deed of Conditional Sale w/ the ORT Community Multi-Purpose Coop (OCMC) in connection w/ the desire of the PGLU to purchase the OCMC’s 2-storey Comm’l Bldg & 1-storey Comm’l Bldg.","1,3,5,7","resolution 072-2013.pdf","21","2013-03-14","0");
INSERT INTO tbl_resolution VALUES("072 - 2014","2014 - 0071","Letter of Gov. Manuel C. Ortega respectfully requesting the August Body for the realignment of the amount of P3,000,000.00 and the use of the same from the item Peace and Order Initiative Fund of the Province of La Union from CY 2014 to Intelligence and Confidential Fund.","1,2,3,8,9","RESOLUTION 072-2014.pdf","21","2014-02-13","0");
INSERT INTO tbl_resolution VALUES("073 - 1999","","Approve 1999 GF AB, of Sto. Tomas, LU","20","RESOLUTION NO.073-99.pdf","21","1999-03-04","0");
INSERT INTO tbl_resolution VALUES("073 - 2007","","Approve City Ord # 2007-004, of the SP of San Fernando, LU, entitled: Food fortification Ord of the City of San Fernando”","10","RESOLUTION NO. 073-2007.pdf","21","2007-03-22","0");
INSERT INTO tbl_resolution VALUES("073 - 2008","","Support Res # 2007-538 of the SP of Nueva Vizcaya earnestly requesting the Board of Trustees of the GSIS to restore the benefits of the Survivorship Pensioners and their Dependents","20","RESOLUTION NO. 073-2008.pdf","21","2008-02-21","0");
INSERT INTO tbl_resolution VALUES("073 - 2010","","Realign P4M from the Peace and Order Initiative Fund for CY 2010 to Intelligence & Confidential Fund","1","Resolution 073-2010.pdf","21","2010-03-18","0");
INSERT INTO tbl_resolution VALUES("073 - 2011","","Return City ord # 2010-13 of the SP of the City of San Fernando, LU, An Ord Regulating the Sale, Serving & Drinking Liquor in Places of Entertainment, Business Establishments & Public Places & Providing Penalties for Violation Thereof & Repealing City Ord # 2000-08 & City Ord # 2002-013","19","Resolution 073-2011.pdf","21","2011-02-24","0");
INSERT INTO tbl_resolution VALUES("073 - 2012","","Condole with the bereaved family of the late Hon Mauro Nicha, of Balaoan.","3","Resolution 073-2012.pdf","21","2012-02-02","0");
INSERT INTO tbl_resolution VALUES("073 - 2013","","Authorize LUMC & PGLU (thru the Dist Hosp) to create a TRUST FUND/ACCOUNT for all Philhealth payments.","7,10,18","resolution 073-2013.pdf","21","2013-03-14","0");
INSERT INTO tbl_resolution VALUES("073 - 2014","2014 - 0080","\"Letter of Governor Manuel C. Ortega respectfully submitting to the Honorable Body the consolidated CY 2014 Supplemental Annual Investment Program (AIP) from the different offices of the Provincial Government of La Union as follows: Office of the Provincial Governor; Office of the Provincial GEneral Services Officer; and Office of the Provincial Health Officer.\"","1","RESOLUTION 073-2014.pdf","21","2014-02-20","0");
INSERT INTO tbl_resolution VALUES("074 - 1999","","Thank Paradise Valley Lions Club, San Diego, California, USA for their services to the province","20","RESOLUTION NO.074-99.pdf","21","1999-03-04","0");
INSERT INTO tbl_resolution VALUES("074 - 2007","","Condole w/ BC HermenegildoCamba, SibuanOtong, CSF ","30","RESOLUTION NO. 074-2007.pdf","21","2007-03-22","0");
INSERT INTO tbl_resolution VALUES("074 - 2008","","Congratulate the recipients of major awards during the occasion of the 27th Foundation Anniversary  of DMMMSU NLUC, and setting aside P30,000 as cash incentive to these recipients","1,18","RESOLUTION NO. 074-2008.pdf","21","2008-02-21","0");
INSERT INTO tbl_resolution VALUES("074 - 2010","","MOA w/ DA and Agriculture and Fishery Council (AFC) RO I in connection w/ the construction and rehab of FMRs in the rice priority areas in the amount of P10M","1,18","Resolution 074-2010.pdf","21","2010-03-18","0");
INSERT INTO tbl_resolution VALUES("074 - 2011","","Approve Mun Ord # 1, s 2011, of the SB of Balaoan, LU, An Ord Requiring All Resorts, Picnic Places & Similar Vacation & Recreation Establishments w/ Swimming Area or Facilities Operating w/n the Jurisdiction of the Mun of Balaoan, LU to Employ Lifeguards & Install Safety Measures & Other Related Life-Saving Devices/Equipment","19","Resolution 074-2011.pdf","21","2011-02-24","0");
INSERT INTO tbl_resolution VALUES("074 - 2012","","Approve CY 2012 Supplemental AIP of the Office of the Office of the Prov’l Gov to be funded under the  SEF","1","Resolution 074-2012.pdf","21","2012-02-09","0");
INSERT INTO tbl_resolution VALUES("074 - 2013","","Charge P23,968.15 in the current appropriation of CY 2013 Telephone Expenses under the Office of the Prov’l Budget Officer for Mar 2012 to Jan 2013.","1","resolution 074-2013.pdf","21","2013-03-14","0");
INSERT INTO tbl_resolution VALUES("074 - 2014","2014 - 0079","AUTHORIZING GOV. MANUEL C. ORTEGA, FOR AND ON BEHALF OF THE PROVINCIAL GOVERNMENT OF LA UNION (PGLU), TO ENTER INTO A MEMORANDUM OF AGREEMENT (MOA), W|TH THE POPULATTON SERVICES PILIPINAS, lNC., MARIE STOPES CLINIC, URDANETA, PANGASINAN REPRESENTED HEREIN BY MS. JOCELYN D. DANIEL, BRANCH MANAGER IN CONNECTION WITH THE POPULATION MANAGEMENT PROGRAM OF THE PROVINCE THRU BILATERAL TUBAL LIGATTON (BTL) FOR QUALIFIED AND INTERESTED WOMEN OF REPRODUCTIVE AGE.","4","RESOLUTION 074-2014.pdf","21","2014-02-20","0");
INSERT INTO tbl_resolution VALUES("075 - 1999","","Request LTFRB to conduct an investigation on the accident at Banangan, Sablan, Benguet","9","RESOLUTION NO.075-99.pdf","21","1999-03-04","0");
INSERT INTO tbl_resolution VALUES("075 - 2007","","Confirm the appointment of Atty. Mauro Cabading, Jr, as Provincial Assessor ","34","RESOLUTION NO. 075-2007.pdf","21","2007-03-22","0");
INSERT INTO tbl_resolution VALUES("075 - 2008","","Congratulate the commend the recipients of Major and Special Awards during the occasion of the 27th Foundation Anniversary, of DMMMSU NLUC, and setting aside P20,000 as cash incentive to these recipients","1","RESOLUTION NO. 075-2008.pdf","21","2008-02-21","0");
INSERT INTO tbl_resolution VALUES("075 - 2010","","Grant Vivant Energy Corp. and Gigawatt Power Inc, the exclusive right to purchase the assets of BPPC and authorize Gov. to enter into a MOA ","1,18","Resolution 075-2010.pdf","21","2010-03-18","0");
INSERT INTO tbl_resolution VALUES("075 - 2011","","Approve FY 2011 GF AB, of Sudipen, LU","1","Resolution 075-2011.pdf","21","2011-03-03","0");
INSERT INTO tbl_resolution VALUES("075 - 2012","","Condole with the bereaved family of the late Mr. Abraham O. Concepcion of Balaoan.","11","Resolution 075-2012.pdf","21","2012-02-09","0");
INSERT INTO tbl_resolution VALUES("075 - 2013","","Approve the FY 2013 GF AB of the SP of the City of San Fernando, La Union.","1","resolution 075-2013.pdf","21","2013-03-14","0");
INSERT INTO tbl_resolution VALUES("076 - 1999","","Set aside fund for the unpaid allowances of the Judge at RTC Branch 31, Agoo","20","RESOLUTION NO.076-99.pdf","21","1999-03-11","0");
INSERT INTO tbl_resolution VALUES("076 - 2007","","Condole w/ BC Rodolfo Oller, Poblacion, Tubao","30","RESOLUTION NO. 076-2007.pdf","21","2007-04-04","0");
INSERT INTO tbl_resolution VALUES("076 - 2008","","Approve Mun Ord # 15-2007, of the SB of Burgos, LU, entitled: “An Ord Amending Letter A, Sec. 5g.05, Art. G of the Burgos Revenue Tax Code and for other Purposes”","20","RESOLUTION NO. 076-2008.pdf","21","2008-02-21","0");
INSERT INTO tbl_resolution VALUES("076 - 2010","","Commend PMAMasidlak Class of 2010","18","Resolution 076-2010.pdf","21","2010-03-25","0");
INSERT INTO tbl_resolution VALUES("076 - 2011","","Approve FY 2011 GF SB # 1, of Sudipen, LU","1","Resolution 076-2011.pdf","21","2011-03-03","0");
INSERT INTO tbl_resolution VALUES("076 - 2012","","Return Mun Ord # 2011-092 of the SB of Santol, La Union, “An Ord Regulating the Operation of Single Motor for Hire & Granting of Franchise Thereof w/n the Mun of Santol”","20","Resolution 076-2012.pdf","21","2012-02-09","0");
INSERT INTO tbl_resolution VALUES("076 - 2013","","Approve the FY 2013 GF AB of the SB of Agoo, La Union.","1","resolution 076-2013.pdf","21","2013-03-14","0");
INSERT INTO tbl_resolution VALUES("077 - 1999","","AO amounting P203,115.60 for Terminal Leave Pay","20","RESOLUTION NO.077-99.pdf","21","1999-03-11","0");
INSERT INTO tbl_resolution VALUES("077 - 2007","","An AO appropriating P1,163,325 for SB # 03, of the GF","2","RESOLUTION NO. 077-2007.pdf","21","2007-04-12","0");
INSERT INTO tbl_resolution VALUES("077 - 2008","","Approve Mun Ord # 16-2007, of the SB of Burgos, LU, entitled: “An Ord Increasing the amount of Local Registry Fees in the Municipality of Burgos, LU, Thereby Amending Letters (a) and (C) of Sec. 4c.01, Art. C of the Revenue Tax Code”","20","RESOLUTION NO. 077-2008.pdf","21","2008-02-21","0");
INSERT INTO tbl_resolution VALUES("077 - 2010","","Approve FY 2010 AB, of Balaoan, LU","1","Resolution 077-2010.pdf","21","2010-03-25","0");
INSERT INTO tbl_resolution VALUES("077 - 2011","","Approve FY 2010 GF SB # 14, of Bauang, LU","1","Resolution 077-2011.pdf","21","2011-03-03","0");
INSERT INTO tbl_resolution VALUES("077 - 2012","","SARANAY AWARD\n\n1.	Generoso De Guzman Calonge\n2.	George B. Reyes\n3.	Eulogio Clarence Martin P. de Guzman III\n4.	Jose B. Nisperos\n\nLU SERVICE AWARD\n1.	Daisy O. Sayangda\n2.	Dr. Jose P. Mainggang\n3.	Lydia G. Ordoño\n4.	Rodel G. Rillera\n\nDIEGO SILANG AWARD\n1.	Andy M. White\n\nBASI AWARD\n1.	Population Service Filipinas, Inc.\n2.	LU Hotels, Resorts & Restaurant Assoc\n3.	LU Girl Scout Council\n4.	LU Convention & Visitors Bureau\n5.	Phil Obstetrics & Gynecological Society- LU Group\n6.	LU Lions Club\n","20","Resolution 077-2012.pdf","21","2012-02-09","0");
INSERT INTO tbl_resolution VALUES("077 - 2013","","Approve the FY 2013 GF AB, of the SB of Santol, La Union.","1","resolution 077-2013.pdf","21","2013-03-14","0");
INSERT INTO tbl_resolution VALUES("078 - 1999","","P5,000.00 F/A to Brgy. Alibangsay, Bagulin, LU, for the purchase of supplies at their health center","20","RESOLUTION NO.078-99.pdf","21","1999-03-11","0");
INSERT INTO tbl_resolution VALUES("078 - 2007","","Ratify the Deed of Assignment with Hold-Out Loan Renewal of the PGLU in the amount of P20M with the DBP and to authorize Gov. Victor Ortega to sign the Deed of Assignment with Hold Out and Deed of Undertaking and related documents","30","RESOLUTION NO. 078-2007.pdf","21","2007-04-12","0");
INSERT INTO tbl_resolution VALUES("078 - 2008","","Approve Mun Ord # 3, s. 2007, of the SB of Bauang, LU, entitled: “An Ord Amending Ord # 13, s. 1999 Otherwise known as the Municipal Revenue Code of Bauang, LU, Part. Chap. XXVII, Grant of Fishing Privileges in Municipal Waters”","20","RESOLUTION NO. 078-2008.pdf","21","2008-02-21","0");
INSERT INTO tbl_resolution VALUES("078 - 2010","","Approve FY 2010 SB # 1, of the CSF, LU","1","Resolution 078-2010.pdf","21","2010-03-25","0");
INSERT INTO tbl_resolution VALUES("078 - 2011","","Approve FY 2010 GF SB # 15, of Bauang, LU","1","Resolution 078-2011.pdf","21","2011-03-03","0");
INSERT INTO tbl_resolution VALUES("078 - 2012","","MOA with the DOH Center for Health Dev’t-Ilocos re: construction, upgrading& repair of various hospital facilities such as LUMC, CMCH, NDH, BDH& Balaoan Dist Hosp.","18","Resolution 078-2012.pdf","21","2012-02-09","0");
INSERT INTO tbl_resolution VALUES("078 - 2013","","Approve the FY 2013 GF AB of the SB of Sudipen, La Union.","1","resolution 078-2013.pdf","21","2013-03-14","0");
INSERT INTO tbl_resolution VALUES("079 - 1999","","P5,000.00 F/A to Brgy. Oaqui No. 2, Luna, LU, for the purchase of knapsack sprayer and garden tools","20","RESOLUTION NO.079-99.pdf","21","1999-03-11","0");
INSERT INTO tbl_resolution VALUES("079 - 2007","","Realign  P4,750,000 from the Information Technology  - P1 M; Fiscal Management Program – P2.5 M; Medical and Dental Mobile Clinic – P250 T; and Anti-Illegal Activities – P1 M to the Barangay Assistance Program","2","RESOLUTION NO. 079-2007.pdf","21","2007-04-12","0");
INSERT INTO tbl_resolution VALUES("079 - 2008","","Approve Res # 71, s. 2007, of the SB of Tubao, LU, entitled: “Res Concurring the Appointment of Dr. Marielyn Fontanilla, MD., as Municipal Health Officer of the Municipality of Tubao, LU”","20","RESOLUTION NO. 079-2008.pdf","21","2008-02-21","0");
INSERT INTO tbl_resolution VALUES("079 - 2010","","Approve FY 2009 SB # 1, of Agoo, LU","1","Resolution 079-2010.pdf","21","2010-03-25","0");
INSERT INTO tbl_resolution VALUES("079 - 2011","","Approve FY 2011 GF AB, of San Gabriel, LU","1","Resolution 079-2011.pdf","21","2011-03-10","0");
INSERT INTO tbl_resolution VALUES("079 - 2012","","Charge P300,000.00 from current appropriation of CY 2012 of Prov, for the expenses incurred during LU Anti-Illegal Drug Summit  at Hotel Ariana Restaurant, Bauang.","5","Resolution 079-2012.pdf","21","2012-02-16","0");
INSERT INTO tbl_resolution VALUES("079 - 2013","","Congratulates the Coop Dev’t Authority (CDA) on its 23rd Anniversary & attaining its ISO 9001:2008 Certification.","1,6,7,10","resolution 079-2013.pdf","21","2013-03-14","0");
INSERT INTO tbl_resolution VALUES("080 - 1999","","P5,000.00 F/A to Brgy. Napaset, Luna, LU, for the purchase of garden tools","20","RESOLUTION NO.080-99.pdf","21","1999-03-11","0");
INSERT INTO tbl_resolution VALUES("080 - 2007","","Approve FY 2007 GF AB, of the City of San Fernando, LU","2","RESOLUTION NO. 080-2007.pdf","21","2007-04-12","0");
INSERT INTO tbl_resolution VALUES("080 - 2008","","Approve Mun Ord # 2-2007, of the SB of Tubao, LU, entitled: “An Ord Providing for the Creation of a Municipal Rabies Control Committee in the Municipality of Tubao, LU, Defining its functions and for Other Purposes”","20","RESOLUTION NO. 080-2008.pdf","21","2008-02-21","0");
INSERT INTO tbl_resolution VALUES("080 - 2010","","Commend PC Insp Erwin Dayag, Bauang, LU, PNP, for arresting LitoMalinao and his live-in partner, for possession of illegal drugs and ammunitions","1,3,5,18","Resolution 080-2010.pdf","21","2010-03-25","0");
INSERT INTO tbl_resolution VALUES("080 - 2011","","Approve FY 2011 GF SB # 1, of Tubao, LU","1","Resolution 080-2011.pdf","21","2011-03-10","0");
INSERT INTO tbl_resolution VALUES("080 - 2012","","MOA with Mun Gov’t of Rosario, LU, & beneficiaries/residents of Brgy. Parasapas, Rosario re: proposed construction of Line Canal, Repair of Damaged Stone Masonry & Concreting Roadway along Rosario-Tubao Rd.","1","Resolution 080-2012.pdf","21","2012-02-16","0");
INSERT INTO tbl_resolution VALUES("080 - 2013","","Return Mun Ord # 08-2012, of the SB of San Gabriel, La Union, “Sr. Citizens Code of the Mun of San Gabriel, La Union”","5,6,7,10","resolution 080-2013.pdf","21","2013-03-14","0");
INSERT INTO tbl_resolution VALUES("081 - 1999","","P5,000.00 F/A to Brgy. Daramungan, Naguilian, LU, for the purchase of monoblock chairs","20","RESOLUTION NO.081-99.pdf","21","1999-03-11","0");
INSERT INTO tbl_resolution VALUES("081 - 2007","","Approve FY 2007 GF AB,  of Santol, LU","2","RESOLUTION NO. 081-2007.pdf","21","2007-04-12","0");
INSERT INTO tbl_resolution VALUES("081 - 2008","","Approve Ord # 01, s. 2007, of the SB of Rosario, LU, entitled: “An Ord Adopting the National Health Insurance Program (NHIP) and Committing Continued Support of the Municipality to the Program, and Observe its Governing Rules as Set Forth in RA 7875, as Amended by RA 9241, and Its Revised Implementing Rules and Regulations”","20","RESOLUTION NO. 081-2008.pdf","21","2008-02-21","0");
INSERT INTO tbl_resolution VALUES("081 - 2010","","MOA w/ Northern Phils. Tribal Communities Dev’t Center, Inc., Municipal Government of Naguilian, LU and Brgy. Aguioas, Naguilian, LU in connection with the proposed construction of steel matting suspension footbridge","1,12","Resolution 081-2010.pdf","21","2010-03-25","0");
INSERT INTO tbl_resolution VALUES("081 - 2011","","Deny Grand Total Exploration & Mining Corp. for 2-Year Exploration Work Program","1","Resolution 081-2011.pdf","21","2011-03-10","0");
INSERT INTO tbl_resolution VALUES("081 - 2012","","Condole with the bereaved family of the late Hon. Rufino H. Fontanilla, Mun Mayor of Bacnotan","18","Resolution 081-2012.pdf","21","2012-02-16","0");
INSERT INTO tbl_resolution VALUES("081 - 2013","","Return Ord # 03-2013, of the SB of Agoo, LU, “An Ord Prohibiting the Use, Sale, Distribution & Advertisement of Cigarettes & Tobacco Products in Certain Places, Imposing Penalties for Violations Thereof & Providing Funds Therefore & for Other Purposes”","3,6,7,17,20","resolution 081-2013.pdf","21","2013-03-14","0");
INSERT INTO tbl_resolution VALUES("082 - 1999","","P15,000.00 F/A to Brgy. Liquicia, Caba, LU, for the construction of a waiting shed at Sitio Aluminos","20","RESOLUTION NO.082-99.pdf","21","1999-03-11","0");
INSERT INTO tbl_resolution VALUES("082 - 2007","","Approve FY 2007 GF SB # 1,  of the City of San Fernando, LU","2","RESOLUTION NO. 082-2007.pdf","21","2007-04-12","0");
INSERT INTO tbl_resolution VALUES("082 - 2008","","Approve Ord # 01, s. 2007, of the SB of Rosario, LU, entitled: “An Ord Adopting the National Health Insurance Program (NHIP) and Committing Continued Support of the Municipality to the Program, and Observe its Governing Rules as Set Forth in RA 7875, as Amended by RA 9241, and Its Revised Implementing Rules and Regulations”","20","RESOLUTION NO. 082-2008.pdf","21","2008-02-21","0");
INSERT INTO tbl_resolution VALUES("082 - 2010","","P50,000.00 F/A to the champions of the Chess Tournament at Baguio City","1","Resolution 082-2010.pdf","21","2010-03-25","0");
INSERT INTO tbl_resolution VALUES("082 - 2011","","Grant Right of Way Permit for Aerial Cable Installation, along Bauang, Aringay & Agoo","1","Resolution 082-2011.pdf","21","2011-03-10","0");
INSERT INTO tbl_resolution VALUES("082 - 2012","","Approve FY 2012 GF, AB of Agoo, La Union.","1","Resolution 082-2012.pdf","21","2012-02-16","0");
INSERT INTO tbl_resolution VALUES("082 - 2013","","Approve Mun Ord # 02-2013, of the SB of San Juan, LU, “An Ord Renaming Amparo Park to People’s Park”","1,5,7,10,20","resolution 082-2013.pdf","21","2013-03-14","0");
INSERT INTO tbl_resolution VALUES("083 - 1999","","P15,000.00 F/A to Brgy. Namboongan, Sto. Tomas, LU, for the construction of a waiting shed ","20","RESOLUTION NO.083-99.pdf","21","1999-03-11","0");
INSERT INTO tbl_resolution VALUES("083 - 2007","","Approve FY 2007 GF SB # 1, of San Juan, LU","2","RESOLUTION NO. 083-2007.pdf","21","2007-04-12","0");
INSERT INTO tbl_resolution VALUES("083 - 2008","","Approve Mun Ord # 11, s. 2007, of the SB of Bauang, LU, entitled: “An Ord Amending Mun Ord # 05, s. 1997 and Providing Additional Sections Thereof by Incorporating Certain Provisions of RA 9482 Otherwise known as the Anti-Rabies Act of 2007”","20","RESOLUTION NO. 083-2008.pdf","21","2008-02-21","0");
INSERT INTO tbl_resolution VALUES("083 - 2010","","Confirm Ms. Imelda Sannadan as Provincial Agriculturist","1,18","Resolution 083-2010.pdf","21","2010-03-25","0");
INSERT INTO tbl_resolution VALUES("083 - 2011","","Approve Mun Ord # 086, s 2011, of the SB of Santol, LU, “The Balaoan-Santol Tricycle Fare Ordinance of 2011","9","Resolution 083-2011.pdf","21","2011-03-10","0");
INSERT INTO tbl_resolution VALUES("083 - 2012","","Congratulate the LU Police Prov’l Office, Phil Nat’l Police, Camp Diego Silang, SFC, LU headed by PSupt Ramon O.Purugganan being the Best Police Prov’l Office in Region I","3","Resolution 083-2012.pdf","21","2012-02-23","0");
INSERT INTO tbl_resolution VALUES("083 - 2013","","Support & enter into a Partnership w/ the Region I Advocates for Gender Equality (RAGE) in the advocacy to the Information & Dissemination Campaign for Women’s Rights","1,5,6,10","RESOLUTION 83-2013.pdf","21","2013-03-14","0");
INSERT INTO tbl_resolution VALUES("084 - 1999","","P2,000.00 F/A to Brgy. Baay, Bagulin, LU, for the construction of a pavement at Baay proper","20","RESOLUTION NO.084-99.pdf","21","1999-03-11","0");
INSERT INTO tbl_resolution VALUES("084 - 2007","","Approve FY 2007 GF SB # 1, of Luna, LU","2","RESOLUTION NO. 084-2007.pdf","21","2007-04-12","0");
INSERT INTO tbl_resolution VALUES("084 - 2008","","Approve Mun Ord # 17-2007, of the SB of San Juan, LU, entitled: “An Ord Revising Garbage Collection Fees”","20","RESOLUTION NO. 084-2008.pdf","21","2008-02-21","0");
INSERT INTO tbl_resolution VALUES("084 - 2010","","Condole w/ BC Winston C. Lomboy, Urayong, Bauang","12","Resolution 084-2010.pdf","21","2010-04-08","0");
INSERT INTO tbl_resolution VALUES("084 - 2011","","Return Mun Ord # 04-2011, of the SB of Agoo, LU, An Ord Amending Sec 4.C(4) & (7), Sec 4.D(2), (3) & (19), Sec 4.E(18), Sec 4.4(3) of Mun Ord # 16-2010, An Ord Providing for Prohibited Acts and Their Corresponding Penalties for All Drivers, Conductors & Operators Plying the Streets of the Mun of Agoo, LU","17","Resolution 084-2011.pdf","21","2011-03-10","0");
INSERT INTO tbl_resolution VALUES("084 - 2012","","Congratulate the Balaoan Police Station, Phil. Nat’l Police, Balaoan, LU headed by PSINSP Benjamin B. Diagan, Jr. as the Best Mun Police Station of the Year","3","Resolution 084-2012.pdf","21","2012-02-23","0");
INSERT INTO tbl_resolution VALUES("084 - 2013","","Condole w/ the bereaved family of Mrs. Lourdes P. Rivera.","1,3,5,6,7,9,10,11,12,13,18,19,20","RESOLUTION 84-2013.pdf","21","2013-03-14","0");
INSERT INTO tbl_resolution VALUES("085 - 1999","","P15,000.00 F/A to Brgy. Wenceslao, Caba, LU, for the construction of their barangay hall","20","RESOLUTION NO.085-99.pdf","21","1999-03-11","0");
INSERT INTO tbl_resolution VALUES("085 - 2007","","Approve FY 2007 GF SB # 1, of Santol, LU","2","RESOLUTION NO. 085-2007.pdf","21","2007-04-12","0");
INSERT INTO tbl_resolution VALUES("085 - 2008","","`Approve City Ord # 2007-002, of the SP of San Fernando, LU, entitled: “An Ord Penalizing the Refusal of Hospital & Medical Clinics to Administer Appropriate Initial Medical Treatment and Support in Emergency or Serious Cases and Providing Penalties in Violation Thereof”","20","RESOLUTION NO. 085-2008.pdf","21","2008-02-21","0");
INSERT INTO tbl_resolution VALUES("085 - 2010","","Charge wages of Casual against PS savings of the different Departments","1,18,31","Resolution 085-2010.pdf","21","2010-04-08","0");
INSERT INTO tbl_resolution VALUES("085 - 2011","","Approve Ord # 01-2011, emb in Res # 04-2011, of the SB of San Gabriel, LU, An Ord Transferring the Date of Annual Celebration of the Town Fiesta, of the Mun of San Gabriel, LU from April 19, 20, 21 Starting 2011 & the Years Thereafter","10","Resolution 085-2011.pdf","21","2011-03-10","0");
INSERT INTO tbl_resolution VALUES("085 - 2012","","MOA w/ DPWH, for the project implementation of Special Local Road Fund Project along Prov’l /City Roads of LU w/ funding under MVUC, Special Road Fund CY 2009 & 2010","18","Resolution 085-2012.pdf","21","2012-02-23","0");
INSERT INTO tbl_resolution VALUES("085 - 2013","","Congratulate PCSupt Franklin B Bucayu on his appt as the Acting Director of the Bureau of Corrections (BUCOR).","1,3,5,6,7,9,10,11,12,13,18,19,20","RESOLUTION 85-2013.pdf","21","2013-03-14","0");
INSERT INTO tbl_resolution VALUES("086 - 1999","","P15,000.00 F/A to Brgy. Agpay, Burgos, LU, for the continuation of Balutek and Batan Hanging bridges","20","RESOLUTION NO.086-99.pdf","21","1999-03-11","0");
INSERT INTO tbl_resolution VALUES("086 - 2007","","Approve FY 2006 GF SB # 2, of the City of San Fernando, LU","2","RESOLUTION NO. 086-2007.pdf","21","2007-04-12","0");
INSERT INTO tbl_resolution VALUES("086 - 2008","","Approve Mun Ord # 17-2007, of the SB of Burgos, LU, entitled: “An Ord Creating the Local Youth Development Planning Committee of the Municipality of Burgos and for Other Purposes”","20","RESOLUTION NO. 086-2008.pdf","21","2008-02-21","0");
INSERT INTO tbl_resolution VALUES("086 - 2010","","Request DepEd and the National Commission on Indigenous Peoples to prepare a framework ","7","Resolution 086-2010.pdf","21","2010-04-08","0");
INSERT INTO tbl_resolution VALUES("086 - 2011","","Approve Mun Ord # 05-2011, of the SB of Agoo, LU, An Ord Renaming Congress Rd to Don Pastor L. Panay, Sr. St, in Brgy San Nicolas Sur, Agoo, LU","10","Resolution 086-2011.pdf","21","2011-03-10","0");
INSERT INTO tbl_resolution VALUES("086 - 2012","","Return Ord # 41, s 2011, of the SB of Burgos, LU, “An Ord Adopting Burgos Land Transportation Code of 2011, Compiling & Rationalizing All Ord & Res of the Municipality Relative to Land Transportation”","9","Resolution 086-2012.pdf","21","2012-02-23","0");
INSERT INTO tbl_resolution VALUES("086 - 2013","","Approve the CY 2013 Supplemental AIP of the Office of the Prov’l Administrator for payment of services of the Prov’l Re-organizational Consultancy","1,5,7,10,18","RESOLUTION 86-2013.pdf","21","2013-03-21","0");
INSERT INTO tbl_resolution VALUES("087 - 1999","","P5,000.00 F/A to Brgy. Pilar, Bauang, LU, for the purchase of a jetmatic pump and construction of a comfort room","20","RESOLUTION NO.087-99.pdf","21","1999-03-11","0");
INSERT INTO tbl_resolution VALUES("087 - 2007","","Approve FY 2006 GFSB # 3, of Burgos, LU","2","RESOLUTION NO. 087-2007.pdf","21","2007-04-12","0");
INSERT INTO tbl_resolution VALUES("087 - 2008","","Approve Res # 6, s. 2007, of the SB of Tubao, LU, entitled: “ResReiterating the Change in the Position of Mr. Dominador Aquino, from Municipal Agriculturist Officer to Municipal Agriculturist, with SG of 24, Pursuant to Res # 26-98 of the SB of the Municipality of Tubao, LU”","20","RESOLUTION NO. 087-2008.pdf","21","2008-02-21","0");
INSERT INTO tbl_resolution VALUES("087 - 2010","","MOA w/ DENR I, PENRO LU, HOLCIM, ABC, Provincial SK and PWPA in support to the Greening Program in relation to climate change mitigation and clean and green program","1,2,3,32","Resolution 087-2010.pdf","21","2010-04-08","0");
INSERT INTO tbl_resolution VALUES("087 - 2011","","Approve Mun Ord # 06-2011, of the SB of Agoo, LU, An Ord Renaming Lopez Jaena St to Don Rafael B. Fangonil St in Brgy Sta. Barbara, Agoo, LU","10","Resolution 087-2011.pdf","21","2011-03-10","0");
INSERT INTO tbl_resolution VALUES("087 - 2012","","Return City Ord # 2011-11, of the SP of the SFC, LU, “An Ord Governing Rules & Regulations In the Playing & Singing of the Phil Nat’l Anthem in all Movie Houses in the City, & Repealing City Ord # 2010-008”","20","Resolution 087-2012.pdf","21","2012-02-23","0");
INSERT INTO tbl_resolution VALUES("087 - 2013","","Enjoining all municipalities/city to pass an Ord to name & declare their own city/municipal Tree & Flower.","1,3,5,6,7,9,10,11,12,13,18,19,20","RESOLUTION 87-2013.pdf","21","2013-03-21","0");
INSERT INTO tbl_resolution VALUES("087 - 2014","2014 - 0086","\"Letter of Governor Manuel C. Ortega respectfully requesting the August Body to enact a Resolution Congratulating Mr. Sephi Marz Gines Liclican in recognition of his outstanding achievement during the International Mathematics Competition held on August 2-5, 2013 and won a Bronze Prize in Singapore.\"","4","RESOLUTION 087-2014.pdf","21","2014-03-06","0");
INSERT INTO tbl_resolution VALUES("088 - 1999","","P20,000.00 F/A to Brgy. Baay, Bagulin, LU, for the construction of their water tank at Sitio Leblebbeng","20","RESOLUTION NO.088-99.pdf","21","1999-03-11","0");
INSERT INTO tbl_resolution VALUES("088 - 2007","","Approve FY 2007 GF SB # 6, of Bauang, LU","2","RESOLUTION NO. 088-2007.pdf","21","2007-04-12","0");
INSERT INTO tbl_resolution VALUES("088 - 2008","","Approve Mun Ord # 69-2007, of the SB of Sudipen, LU, entitled: “Requiring Every Household in this Municipality to Plant Malunggay, Papaya and Camote in their Backyards and Ornamental Plants in Front of their Households”","20","RESOLUTION NO. 088-2008.pdf","21","2008-02-21","0");
INSERT INTO tbl_resolution VALUES("088 - 2010","","MOA w/ ITRMC regarding the PGLU Medical Indigent Support Program to qualified indigent patients ","1,18","Resolution 088-2010.pdf","21","2010-04-15","0");
INSERT INTO tbl_resolution VALUES("088 - 2011","","MOA w/ DOH pertaining to the 2010 Maternal Neonatal Child Health & Nutrition (MNCHN) Grant Facility ","1,10,18,20","Resolution 088-2011.pdf","21","2011-03-10","0");
INSERT INTO tbl_resolution VALUES("088 - 2012","","Contract of Service w/ Dr. Claire Maramat-Lucina, as a Visiting Consultant, on Ob Gyne at Balaoan District Hospital","18","Resolution 088-2012.pdf","21","2012-02-23","0");
INSERT INTO tbl_resolution VALUES("088 - 2013","","MOA w/ the LUMS in connection w/ the renewal of LUMS’ free use of the vacant space at the southern portion of the 1-storey bldg in Quezon Ave., CSF","5,6,7,10,18","RESOLUTION 88-2013.pdf","21","2013-03-21","0");
INSERT INTO tbl_resolution VALUES("089 - 1999","","P10,000.00 F/A to the SB of Caba, LU, for their Skills Training in Brgy. San Cornelio","20","RESOLUTION NO.089-99.pdf","21","1999-03-11","0");
INSERT INTO tbl_resolution VALUES("089 - 2007","","Approve FY 2006 GF SB # 3, of Rosario, LU","2","RESOLUTION NO. 089-2007.pdf","21","2007-04-12","0");
INSERT INTO tbl_resolution VALUES("089 - 2008","","Approve Ord # 7, s. 2007, of the SB of Bauang, LU, entitled: “Ord Creating a Public Safety Office in the Mun of Bauang, LU”","20","RESOLUTION NO. 089-2008.pdf","21","2008-02-21","0");
INSERT INTO tbl_resolution VALUES("089 - 2010","","MOA w/ DA-RFU I) and the Municipal Gov’t Units in the implementation of the GinintuangMasaganangAni High Value Commercial Crop Program (GMA-HVCC)","3,5","Resolution 089-2010.pdf","21","2010-04-15","0");
INSERT INTO tbl_resolution VALUES("089 - 2011","","MOU w/ City/Municipal Gov’ts & farmer beneficiaries pertaining to the provision of farm equipment on a grant basis ","20","Resolution 089-2011.pdf","21","2011-03-10","0");
INSERT INTO tbl_resolution VALUES("089 - 2012","","Approve Consolidated CY 2012 Supplemental AIP\n(Annual Investment Planning ) of the Diff Offices of the Province ","18","Resolution 089-2012.pdf","21","2012-02-23","0");
INSERT INTO tbl_resolution VALUES("089 - 2013","","Approve Res # 13-02, of the SP of CSF, LU “Granting Final Approval to the Sagayad Resettlement Project 2 Located at Brgy Sagayad, this City” ","6,7,10","RESOLUTION 89-2013.pdf","21","2013-03-21","0");
INSERT INTO tbl_resolution VALUES("089 - 2014","2014 - 0083","Recommend approval of the FY 2014 GF AB, of Santol, LU","2","RESOLUTION 089-2014.pdf","21","2014-03-06","0");
INSERT INTO tbl_resolution VALUES("090 - 1999","","P20,000.00 F/A to the SK of Brgy. Suyo, Bagulin, LU, for their sports development","20","RESOLUTION NO.090-99.pdf","21","1999-03-11","0");
INSERT INTO tbl_resolution VALUES("090 - 2007","","Approve FY 2006 GF AB, of Bangar, LU","2","RESOLUTION NO. 090-2007.pdf","21","2007-04-12","0");
INSERT INTO tbl_resolution VALUES("090 - 2008","","Approve Mun Ord # 08-2007, of the SB of Agoo, LU, entitled: “An Ord enacting the Gender and Development (GAD) of the Municipality of Agoo, LU and Mandating the Implementation of a Comprehensive and Sustainable GAD Program”","20","RESOLUTION NO. 090-2008.pdf","21","2008-02-21","0");
INSERT INTO tbl_resolution VALUES("090 - 2010","","Enact an AO amounting P13,414,897.00 of the General Fund ","1,2,18","Resolution 090-2010.pdf","21","2010-04-15","0");
INSERT INTO tbl_resolution VALUES("090 - 2011","","Realign P4M from Peace & Order Initiative Fund to Intelligence Confidential Fund","5,7,9,11,17,18,20","Resolution 090-2011.pdf","21","2011-03-17","0");
INSERT INTO tbl_resolution VALUES("090 - 2012","","Congratulate Ms. Luz Danielle O. Bolong& Mr. Christian Louie c. Gonzales, No. 2 & No. 5, respectively, 2011 Bar Exams.","1,3,5,6,7,9,10,11,13,18,19","Resolution 090-2012.pdf","21","2012-03-01","0");
INSERT INTO tbl_resolution VALUES("090 - 2013","","Return Mun Ord # 04-2013, of the SB of San Juan, LU, “An Ord Authorizing the Supplemental Appropriation for the Implementation of Local Budget Circular No. 102”","1","RESOLUTION 90-2013.pdf","21","2013-03-21","0");
INSERT INTO tbl_resolution VALUES("090 - 2014","2014 - 0011","Ord # 2011-085, Ord Assuring the Continuity of Supplies for Family Planning Services in the Mun of Santol, LU, Calling for the Adopting of a Contraceptive Self-Reliance (CSR) Plan & Allocating Funds for Purpose Thereof.","9","RESOLUTION 090-2014.pdf","21","2014-03-06","0");
INSERT INTO tbl_resolution VALUES("091 - 1999","","P5,000.00 F/A to Brgy. Cantoria No. 2, Luna, LU, for the cementing a portion of their barangay road","20","RESOLUTION NO.091-99.pdf","21","1999-03-11","0");
INSERT INTO tbl_resolution VALUES("091 - 2007","","Approve FY 2006 GF SB #  4, of Agoo, LU","2","RESOLUTION NO. 091-2007.pdf","21","2007-04-12","0");
INSERT INTO tbl_resolution VALUES("091 - 2008","","Approve City Ord # 2007-001, of the SP of the City of San Fernando, LU, entitled: “An Ord Prescribing the Policies, Procedures and Guidelines Governing Affiliation and Training of Students in the City Health Office”","20","RESOLUTION NO. 091-2008.pdf","21","2008-02-21","0");
INSERT INTO tbl_resolution VALUES("091 - 2010","","Livelihood Loan Assistance Program ","1,18","Resolution 091-2010.pdf","21","2010-04-15","0");
INSERT INTO tbl_resolution VALUES("091 - 2011","","Realign P4M from Tourism & Dev’t Promotion to Anti-Illegal Services Program","5,7,9,11,17,18,20,21","Resolution 091-2011.pdf","21","2011-03-17","0");
INSERT INTO tbl_resolution VALUES("091 - 2012","","Congratulate all Bar Passers from the Province during the 2011 Bar Exams.","1,3,5,6,7,9,10,11,13,18,19","Resolution 091-2012.pdf","21","2012-03-01","0");
INSERT INTO tbl_resolution VALUES("091 - 2013","","MOA w/ 1590 Energy Corp for a period of 1 year (June 26, 2013 to June 25, 2014) for the continued operation, preservation, maintenance & management of the Bauang Diesel Power Plant","1","RESOLUTION 91-2013.pdf","21","2013-03-21","0");
INSERT INTO tbl_resolution VALUES("091A- 2010","","Approve Supplemental AIP of the province relative to the Salary & Livelihood Loan Assistance Program & for Local Revenue Enhancement Economic Enterprise","1,18","Resolution 091A-2010.pdf","21","2010-04-15","0");
INSERT INTO tbl_resolution VALUES("092 - 1999","","P30,000.00 F/A to Brgy. Al-alinao Norte, Naguilian, LU, for the construction of a concrete bleacher at their auditorium","20","RESOLUTION NO.092-99.pdf","21","1999-03-11","0");
INSERT INTO tbl_resolution VALUES("092 - 2007","","Approve FY 2006 GF SB # 1, of Balaoan, LU","2","RESOLUTION NO. 092-2007.pdf","21","2007-04-12","0");
INSERT INTO tbl_resolution VALUES("092 - 2008","","Enhance the Welfare and Protection of Minors and Regulating their Activity from Roaming and Loitering Within the Territorial Jurisdiction of the Province from 10 PM to 4 AM from any Sunday, Monday, Tuesday, Wednesday, Thursday or After the Hour of 12 Midnight to 4 AM on any Friday and Saturday Without Justifiable Reason (Curfew on Minors)","5","RESOLUTION NO. 092-2008.pdf","21","2008-02-21","0");
INSERT INTO tbl_resolution VALUES("092 - 2010","","Approve FY 2010 GF AB, of Bacnotan, LU","2","Resolution 092-2010.pdf","21","2010-04-22","0");
INSERT INTO tbl_resolution VALUES("092 - 2011","","Authorize the Governor to charge wages of casual employees to PS Appropriation Savings","5,7,9,10,11,18,20,21","Resolution 092-2011.pdf","21","2011-03-17","0");
INSERT INTO tbl_resolution VALUES("092 - 2012","","Congratulate Denmark M. Rillera for topping the Entrance Exam for the PNP.","1,3,5,6,7,8,9,10,11,12,13,18,19","Resolution 092-2012.pdf","21","2012-03-01","0");
INSERT INTO tbl_resolution VALUES("092 - 2013","","Requesting the municipalities/city to switch their lights off for an hour on March 23, 2013 as a show of concern for the environment symbolized by the Earth Hour Movement","1,3,5,6,7,9,10,11,12,13,18,19,20","RESOLUTION 92-2013_001.pdf","21","2013-03-21","0");
INSERT INTO tbl_resolution VALUES("092 - 2014","2014 - 0010","Ord # 2011-084, Ord Establishing the Mayor?s Action Center 24 7 (MAC 24 7) in the Mun of Santol, LU","3","RESOLUTION 092-2014.pdf","21","2014-03-06","0");
INSERT INTO tbl_resolution VALUES("093 - 1999","","P10,000.00 F/A to Brgy. Pantar Sur, Balaoan, LU, for the completion of their streetlights","20","RESOLUTION NO.093-99.pdf","21","1999-03-11","0");
INSERT INTO tbl_resolution VALUES("093 - 2007","","Approve FY 2006 GF SB # 5, of Sudipen, LU","2","RESOLUTION NO. 093-2007.pdf","21","2007-04-12","0");
INSERT INTO tbl_resolution VALUES("093 - 2008","","Condole w/  Mr. Edison Zamoranos, VP of the PPSK","18","RESOLUTION NO. 093-2008.pdf","21","2008-02-21","0");
INSERT INTO tbl_resolution VALUES("093 - 2010","","Designate SPMMannix Ortega, Jr. to pick up 2 Ambulances from PCSO","2","Resolution 093-2010.pdf","21","2010-04-22","0");
INSERT INTO tbl_resolution VALUES("093 - 2011","","Accredit Junior Chamber-Naguilian Basi as NGO","7","Resolution 093-2011.pdf","21","2011-03-17","0");
INSERT INTO tbl_resolution VALUES("093 - 2012","","Approve Res # 12-25, s 2012, of the SP of the City of San Fernando, LU, approving the Supplemental AIP FY 2012 of the City of Sn Fdo","1","Resolution 093-2012.pdf","21","2012-03-01","0");
INSERT INTO tbl_resolution VALUES("093 - 2013","","Congratulate Atty. Albert F. Padilla, for passing the Oct 2012 Bar Exam.","1,3,5,6,7,9,10,11,12,13,18,19,20","RESOLUTION 93-2013.pdf","21","2013-03-21","0");
INSERT INTO tbl_resolution VALUES("094 - 1999","","P10,000.00 F/A to Brgy. Butubut Sur, Balaoan, LU, for the completion of their streetlights","20","RESOLUTION NO.094-99.pdf","21","1999-03-11","0");
INSERT INTO tbl_resolution VALUES("094 - 2007","","Approve FY 2006 GF SB # 7, of Bacnotan, LU","2","RESOLUTION NO. 094-2007.pdf","21","2007-04-12","0");
INSERT INTO tbl_resolution VALUES("094 - 2008","","Express support and endorsement to Senate Bill # 1611, “An Act Upgrading the Minimum Salary Grade Level of Teachers from SG 10 to 19”","1,18","RESOLUTION NO. 094-2008.pdf","21","2008-02-28","0");
INSERT INTO tbl_resolution VALUES("094 - 2010","","Approve FY 2010 GF AB, of San Gabriel, LU","2","Resolution 094-2010.pdf","21","2010-04-29","0");
INSERT INTO tbl_resolution VALUES("094 - 2011","","MOPA w/ Phil Red Cross –LU Chapter &DepEd pertaining to the proposed implementation of Disaster Preparedness in Schools (DPS) in Bangar, Bagulin &Sto. Tomas","5,7,9,11,17,18,20","Resolution 094-2011.pdf","21","2011-03-17","0");
INSERT INTO tbl_resolution VALUES("094 - 2012","","Approve the FY 2012 GF AB of Bangar, La Union.","1","Resolution 094-2012.pdf","21","2012-03-01","0");
INSERT INTO tbl_resolution VALUES("094 - 2013","","Congratulate Atty. RemediosMupas, Crista Ma. Taguiam, Harvey Espiritu, Lovella May Huliganga, JobertRillera& Paolo Gonzalo Garcinez for passing the Oct 2012 Bar Exam.","1,3,5,6,7,9,10,11,12,13,18,19","RESOLUTION 94-2013.pdf","21","2013-03-21","0");
INSERT INTO tbl_resolution VALUES("094 - 2014","2014 - 0095","\"Letter of Gov. Manuel C. Ortega respectfully requesting approval of the August Body to charge the amount of Ninety Four Thousand Six Hundred Sixty Pesos (P94,660.00) to the Current Appropriations CY 2014 for the purchase of Guns (Capital Outlay) and Ammunitions (Supplies) under the Office of the Governor (OPG).  Said items were not yet delivered by the winning bidder, ARMSCOR SHOOTING CENTER, INC. San Fernando, La Union\"","4","RESOLUTION 094-2014.pdf","21","2014-03-06","0");
INSERT INTO tbl_resolution VALUES("095 - 1999","","P15,000.00 F/A to Brgy. Balbalosa, San Juan, LU, for the illumination of their barangay road","20","RESOLUTION NO.095-99.pdf","21","1999-03-11","0");
INSERT INTO tbl_resolution VALUES("095 - 2007","","Approve FY 2006 GF SB # 8, of Pugo, LU","2","RESOLUTION NO. 095-2007.pdf","21","2007-04-12","0");
INSERT INTO tbl_resolution VALUES("095 - 2008","","Contract of Lease (COL) with the various lessees occupying the idle lots owned by the province situated beside Antonino and Mabanag Bldgs., along Aguila Road, and at the Motorpool/Gov’t Center, Brgy. Sevilla","1,18","RESOLUTION NO. 095-2008.pdf","21","2008-03-06","0");
INSERT INTO tbl_resolution VALUES("095 - 2010","","Approve FY 2010 GF SB # 1, of Pugo, LU","2","Resolution 095-2010.pdf","21","2010-04-29","0");
INSERT INTO tbl_resolution VALUES("095 - 2011","","Condole w/ Ms. Cirila Komiya","20","Resolution 095-2011.pdf","21","2011-03-17","0");
INSERT INTO tbl_resolution VALUES("095 - 2012","","Approve the FY 2012 GF SB # 2, of Naguilian, La Union.","1","Resolution 095-2012.pdf","21","2012-03-01","0");
INSERT INTO tbl_resolution VALUES("095 - 2013","","Congratulate all Bar Passers of the 2012 Bar Exam .","1,3,5,6,7,9,10,11,12,13,18,19","RESOLUTION 95-2013.pdf","21","2013-03-21","0");
INSERT INTO tbl_resolution VALUES("096 - 1999","","P10,000.00 F/A to Brgy. Urayong, Caba, LU, for the replacement of their concrete perimeter fence of their barangay hall","20","RESOLUTION NO.096-99.pdf","21","1999-03-11","0");
INSERT INTO tbl_resolution VALUES("096 - 2007","","Approve FY 2006 GF SB # 8, of Bauang, LU","2","RESOLUTION NO. 096-2007.pdf","21","2007-04-12","0");
INSERT INTO tbl_resolution VALUES("096 - 2008","","`Enact an Appropriation  amounting P7,679,504.94 for Supplemental Budget No. 1, of the General Fund ","1","RESOLUTION NO. 096-2008.pdf","21","2008-03-06","0");
INSERT INTO tbl_resolution VALUES("096 - 2010","","Top Ten Most Outstanding Public School Teachers in LU for SY 2009-2010","1,18","Resolution 096-2010.pdf","21","2010-04-29","0");
INSERT INTO tbl_resolution VALUES("096 - 2011","","Condole w/ BgryKgd Ester O. Lacsamana","11","Resolution 096-2011.pdf","21","2011-03-17","0");
INSERT INTO tbl_resolution VALUES("096 - 2012","","Approve the FY 2011 GF SB # 5, of Bauang, La Union.","1","Resolution 096-2012.pdf","21","2012-03-01","0");
INSERT INTO tbl_resolution VALUES("096 - 2013","","Congratulate Sudipen, Bacnotan & San Juan (LU) for being conferred among the Top 48 Outstanding Municipalities Agri-Pinoy Rice Achievers’ Awardees 2012 (ParangalsamgaBosing ng Palayan)  ","1,3,5,6,7,10,11,12,13,18,19,20","RESOLUTION 96-2013.pdf","21","2013-03-21","0");
INSERT INTO tbl_resolution VALUES("096 - 2014","2014 - 0096","Letter of Gov. Manuel C. Ortega respectfully endorsing to the Hon.\nBody the Three-Year Provincial Commodity Investment Plan (PCIP)\nof the Province of La Union for 2014-2017","2,3,5","RESOLUTION 096-2014.pdf","21","2014-03-20","0");
INSERT INTO tbl_resolution VALUES("097 - 1999","","P10,000.00 F/A to Brgy. San Carlos, Caba, LU, for the construction of their day care center comfort room","20","RESOLUTION NO.097-99.pdf","21","1999-03-11","0");
INSERT INTO tbl_resolution VALUES("097 - 2007","","Approve FY 2006 GF SB # 9, of Bauang, LU","2","RESOLUTION NO. 097-2007.pdf","21","2007-04-12","0");
INSERT INTO tbl_resolution VALUES("097 - 2008","","Charge the wages and Other Benefits of Casual Employees against the Personal Services (PS) Appropriation Savings of Offices ","20","RESOLUTION NO. 097-2008.pdf","21","2008-03-13","0");
INSERT INTO tbl_resolution VALUES("097 - 2010","","Contract of Service w/ Dr. Joventino Espiritu, Jr. as Visiting Consultant in Radiology at BDH","1,18","Resolution 097-2010.pdf","21","2010-05-06","0");
INSERT INTO tbl_resolution VALUES("097 - 2011","","Condole w/ BC Percival Viray, Brgy. Central East No. 2, Bangar, LU","10","Resolution 097-2011.pdf","21","2011-03-24","0");
INSERT INTO tbl_resolution VALUES("097 - 2012","","Approve the FY 2012 GF SB # 6, of Bauang, La Union.","1","Resolution 097-2012.pdf","21","2012-03-01","0");
INSERT INTO tbl_resolution VALUES("097 - 2013","","Congratulate Imelda Sannadan for being chosen as an Outstanding Prov’l Agriculturist by the Dept of Agriculture during the 2012 Agri-Pinoy Rice Achievers’ Awards (ParangalsamgaBosing ng Palayan).","1,3,5,6,7,9,10,11,12,13,18,19,20","RESOLUTION 97-2013.pdf","21","2013-03-21","0");
INSERT INTO tbl_resolution VALUES("097 - 2014","2014 - 0104","\"Letter of Gov. Manuel C. Ortega respectfully requesting approval of this August Body to charge the amount of Eighteen Thousand One Hundred Sixty and 23/100 (P18,160.23) to the Current Appropriation CY 2014 for the Installation of Micro Mini Blinds at the Office of Board Member Reynaldo M. Mosuela under MOE CY 2014 Appropriaton of the Sangguniang Panlalawigan Office\"","2,3,5","RESOLUTION 097-2014.pdf","21","2014-03-20","0");
INSERT INTO tbl_resolution VALUES("098 - 1999","","P10,000.00 F/A to Brgy. Las-ud, Caba, LU, for the improvement of their barangay hall","20","RESOLUTION NO.098-99.pdf","21","1999-03-11","0");
INSERT INTO tbl_resolution VALUES("098 - 2007","","Approve FY 2007 GF AB, of Tubao, LU","2","RESOLUTION NO. 098-2007.pdf","21","2007-04-12","0");
INSERT INTO tbl_resolution VALUES("098 - 2008","","Contract of Agreement  with Dr. Ana Marie N. Cawingan as Visiting Consultant (OB-GYNE) at the Naguilian District Hospital, Naguilian, LU","18","RESOLUTION NO. 098-2008.pdf","21","2008-03-13","0");
INSERT INTO tbl_resolution VALUES("098 - 2010","","Approve FY 2010 GF SB # 1, of Balaoan, LU","2","Resolution 098-2010.pdf","21","2010-05-06","0");
INSERT INTO tbl_resolution VALUES("098 - 2011","","Realign P5M from the Brgy Dev’t Program to the Public Bldgs./Structures Improvement & Construction Program","1","Resolution 098-2011.pdf","21","2011-03-31","0");
INSERT INTO tbl_resolution VALUES("098 - 2012","","Approve the FY 2012 GF SB # 7, of Bauang, La Union.","1","Resolution 098-2012.pdf","21","2012-03-01","0");
INSERT INTO tbl_resolution VALUES("098 - 2013","","Congratulate Myrna O. Picazo for being chosen asn an Outstanding Rice Program Coordinator by the Dept of Agriculture during the 2012 Agri-Pinoy Rice Achievers’ Awards (ParangalsamgaBosing ng Palayan).","1,3,5,6,7,9,10,11,12,13,18,19,20","RESOLUTION 98-2013.pdf","21","2013-03-21","0");
INSERT INTO tbl_resolution VALUES("098 - 2014","2014 - 0105","\"Letter of Gov. Manuel C. Ortega respectfully informing the Hon. Presiding Officer and the Honorable members of the Sangguniang Panlalawigan that Mr. Francisco D. Ventura (Radiologic Technolist II of Rosario District Hospital will be retiring on May 26, 2014 and requesting the August Body to pass a resolution adjusting his  present Salary Grade to one grade to one grade higher specifically from Salary Grade 13 Step 7 (22,755/mon) to Salary Grade 14 step 7 (P24,461/month) effective February 26, 2014 to be appropriated from the PS Savings. Said adjustment is pursuant to Section 30, of RA 7305 known as the \"\"Magna Carta of Public Health Workers\"\" and DOH Administrative Order No. 32-B s. 1994\"\n","2,3,5","RESOLUTION 098-2014.pdf","21","2014-03-20","0");
INSERT INTO tbl_resolution VALUES("099 - 1999","","P10,000.00 F/A to Brgy. Poblacion Sur, Caba, LU, for the installation of additional streetlights","20","RESOLUTION NO.099-99.pdf","21","1999-03-11","0");
INSERT INTO tbl_resolution VALUES("099 - 2007","","Approve FY 2007 GF SB # 1, of Tubao, LU","2","RESOLUTION NO. 099-2007.pdf","21","2007-04-12","0");
INSERT INTO tbl_resolution VALUES("099 - 2008","","Approve FY 2007 GF SB # 12, of Bauang, LU ","2","RESOLUTION NO. 099-2008.pdf","21","2008-03-13","0");
INSERT INTO tbl_resolution VALUES("099 - 2010","","Approve FY 2010 GF SB # 2, of Bauang, LU","2","Resolution 099-2010.pdf","21","2010-05-06","0");
INSERT INTO tbl_resolution VALUES("099 - 2011","","Approve FY 2011 GF AB of Rosario, LU","18","Resolution 099-2011.pdf","21","2011-03-31","0");
INSERT INTO tbl_resolution VALUES("099 - 2012","","Approve Mun Ord # 01-2012, of the SB of Naguilian, LU, : “An Ord to Declare All Public Facilities & Structures, Commercial Establishments & Schools as No Smoking Zone w/n the Territorial Jurisdiction of the Mun of Naguilian, LU & Imposing Penalties to Violators Thereof”","18","Resolution 099-2012.pdf","21","2012-03-01","0");
INSERT INTO tbl_resolution VALUES("099 - 2013","","Approve the FY 2013 GF SB # 1, of the SB of Agoo, La Union","1","RESOLUTION 99-2013.pdf","21","2013-03-26","0");
INSERT INTO tbl_resolution VALUES("099 - 2014","2014 - 0092","Recommend approval of the FY 2014 GF SB # 1, of Balaoan, LU","3","RESOLUTION 099-2014.pdf","21","2014-03-20","0");
INSERT INTO tbl_resolution VALUES("100 - 1999","","P10,000.00 F/A to Brgy. Liquicia, Caba, LU, for the construction of a waiting shed at Sitio Nagkampusantuan","20","RESOLUTION NO.100-99.pdf","21","1999-03-11","0");
INSERT INTO tbl_resolution VALUES("100 - 2007","","Approve FY 2007 GF AB, of Naguilian, LU","2","RESOLUTION NO. 100-2007.pdf","21","2007-04-12","0");
INSERT INTO tbl_resolution VALUES("100 - 2008","","Approve FY 2008 GF AB, of Luna, LU ","2","RESOLUTION NO. 100-2008.pdf","21","2008-03-13","0");
INSERT INTO tbl_resolution VALUES("100 - 2011","","Approve FY 2011 GF AB of Santol, LU","18","Resolution 100-2011.pdf","21","2011-03-31","0");
INSERT INTO tbl_resolution VALUES("100 - 2012","","Approve Ord # 01-2011, of the SB of Tubao, LU, “Enacting the Gender & Dev’t Code (GAD) of the Mun of Tubao, LU”","5","Resolution 100-2012.pdf","21","2012-03-01","0");
INSERT INTO tbl_resolution VALUES("100 - 2013","","Approve the FY 2013 GF SB # 1, of the SB of San Gabriel, La Union","1","RESOLUTION 101-2013.pdf","21","2013-03-26","0");
INSERT INTO tbl_resolution VALUES("100 - 2014","2014 - 0091","Recommend approval of the FY 2014 GF SB # 1, of Agoo, LU","3","RESOLUTION 100-2014.pdf","21","2014-03-20","0");
INSERT INTO tbl_resolution VALUES("101 - 1999","","P10,000.00 F/A to Brgy. San Fermin, Caba, LU, for the purchase of concrete pipes for Caba-Naguilian Rd.","20","RESOLUTION NO.101-99.pdf","21","1999-03-11","0");
INSERT INTO tbl_resolution VALUES("101 - 2007","","Approve FY 2007 GF SB # 1, of Sudipen, LU","2","RESOLUTION NO. 101-2007.pdf","21","2007-04-12","0");
INSERT INTO tbl_resolution VALUES("101 - 2008","","Approve FY 2008 GF AB, of Balaoan, LU ","2","RESOLUTION NO. 101-2008.pdf","21","2008-03-13","0");
INSERT INTO tbl_resolution VALUES("101 - 2010","","Approve FY 2010 GF SB # 1, of Luna, LU","2","Resolution 101-2010.pdf","21","2010-05-13","0");
INSERT INTO tbl_resolution VALUES("101 - 2011","","Approve FY 2011 GF AB of Bauang, LU","18","Resolution 101-2011.pdf","21","2011-03-31","0");
INSERT INTO tbl_resolution VALUES("101 - 2012","","Approve the FY 2012 GF AB, of Rosario, La Union.","1","Resolution 101-2012.pdf","21","2012-03-01","0");
INSERT INTO tbl_resolution VALUES("101 - 2013","","Approve the FY 2013 GF AB, of the SB of Sudipen, La Union.","1","RESOLUTION 101-2013.pdf","21","2013-03-26","0");
INSERT INTO tbl_resolution VALUES("102 - 1999","","P20,000.00 F/A to Brgy. Lingsat, CSF, LU, for the construction of a perimeter fence of their barangay hall compound","20","RESOLUTION NO.102-99.pdf","21","1999-03-11","0");
INSERT INTO tbl_resolution VALUES("102 - 2007","","Approve FY 2007 GF AB, of Bauang, LU","2","RESOLUTION NO. 102-2007.pdf","21","2007-04-12","0");
INSERT INTO tbl_resolution VALUES("102 - 2008","","Approve FY 2008 GF AB, of Agoo, LU ","2","RESOLUTION NO. 102-2008.pdf","21","2008-03-13","0");
INSERT INTO tbl_resolution VALUES("102 - 2010","","Approve FY 2010 GF SB # 2, of Agoo, LU","2","Resolution 102-2010.pdf","21","2010-05-13","0");
INSERT INTO tbl_resolution VALUES("102 - 2011","","Approve FY 2011 GF AB of Aringay, LU","1","Resolution 102-2011.pdf","21","2011-03-31","0");
INSERT INTO tbl_resolution VALUES("102 - 2012","","Approve Mun Ord # 90, s 2011, of the SB of Sudipen, LU, “An Ord Prohibiting the Use of Plastic Bags on Dry Goods & Regulating its Utilization on Wet Goods & Prohibiting the Use of Styrofoam in the Mun of Sudipen, LU & Prescribing Penalties Thereof”","1","Resolution 102-2012.pdf","21","2012-03-01","0");
INSERT INTO tbl_resolution VALUES("102 - 2013","","Approve the FY 2013 GF SB # 1, of City of San Fernando, La Union.","1","RESOLUTION 102-2013.pdf","21","2013-03-26","0");
INSERT INTO tbl_resolution VALUES("103 - 1999","","P10,000.00 F/A to Brgy. Sta. Rita Norte, Agoo, LU, for their streetlights","20","RESOLUTION NO.103-99.pdf","21","1999-03-11","0");
INSERT INTO tbl_resolution VALUES("103 - 2007","","Approve FY 2007 GF AB, of Santo Tomas, LU","2","RESOLUTION NO. 103-2007.pdf","21","2007-04-12","0");
INSERT INTO tbl_resolution VALUES("103 - 2008","","Approve FY 2008 GF AB, of Naguilian, LU ","2","RESOLUTION NO. 108-2008.pdf","21","2008-03-13","0");
INSERT INTO tbl_resolution VALUES("103 - 2010","","Approve FY 2010 GF SB # 4, of Bauang, LU","2","Resolution 103-2010.pdf","21","2010-05-13","0");
INSERT INTO tbl_resolution VALUES("103 - 2011","","Approve EO # 001-2011, of Mayor Joy Merin, Bangar, LU, “Reorganizing the Bids & Awards Committee of the Mun of Bangar, LU, & Appointing its Members Pursuant to RA # 9184, Otherwise Known as the Gov’t Procurement Act”","1","Resolution 103-2011.pdf","21","2011-03-31","0");
INSERT INTO tbl_resolution VALUES("103 - 2012","","Approve City Ord # 2011-08, of the SP of the City of San Fernando, LU, “An Ord Regulating the Construction/Installation/Upgrading/Operation of Cellular Sites in the City of San Fdo”","1","Resolution 103-2012.pdf","21","2012-03-01","0");
INSERT INTO tbl_resolution VALUES("103 - 2013","","Approve the FY 2013 GF AB, of the SB of Bauang, La Union.","1","RESOLUTION 103-2013_001.pdf","21","2013-03-26","0");
INSERT INTO tbl_resolution VALUES("104 - 1999","","P10,000.00 F/A to Brgy. Sta. Rita Central, Agoo, LU, for the purchase of streetlights","20","RESOLUTION NO.104-99.pdf","21","1999-03-11","0");
INSERT INTO tbl_resolution VALUES("104 - 2007","","Approve FY 2007 GF SB # 1, of Agoo, LU","2","RESOLUTION NO. 104-2007.pdf","21","2007-04-12","0");
INSERT INTO tbl_resolution VALUES("104 - 2008","","Approve FY 2008 GF AB, of Tubao, LU","2","RESOLUTION NO. 104-2008.pdf","21","2008-03-13","0");
INSERT INTO tbl_resolution VALUES("104 - 2011","","Approve EO # 005-2011, of Mayor Joy Merin, Bangar, LU, “Reorganizing the Solid Waste Management Board of the Mun of Bangar, LU, Pursuant to DILG MC # 2001-19, Implementing RA 9003, known as the Ecological Solid Waste Management Act of 2000”","1","Resolution 104-2011.pdf","21","2011-03-31","0");
INSERT INTO tbl_resolution VALUES("104 - 2012","","Approve FY 2012 GF AB of the SB of Luna, La Union.","1","Resolution 104-2012.pdf","21","2012-03-08","0");
INSERT INTO tbl_resolution VALUES("104 - 2013","","Request the BFP to include all schools, public & private in pre-school, elementary, secondary & tertiary & all public buildings in their regular inspection to ensure the compliance w/ fire safety measures of said facilities","6","RESOLUTION 104-2013.pdf","21","2013-03-26","0");
INSERT INTO tbl_resolution VALUES("105 - 1999","","P20,000.00 F/A to Brgy. Ambangonan, Pugo, LU, for the installation of lighting of their basketball court","20","RESOLUTION NO.105-99.pdf","21","1999-03-11","0");
INSERT INTO tbl_resolution VALUES("105 - 2007","","Approve FY 2007 GF SB # 2, of Sudipen, LU","2","RESOLUTION NO. 105-2007.pdf","21","2007-04-12","0");
INSERT INTO tbl_resolution VALUES("105 - 2008","","Approve FY 2008 GF AB, of San Gabriel, LU ","2","RESOLUTION NO. 105-2008.pdf","21","2008-03-13","0");
INSERT INTO tbl_resolution VALUES("105 - 2010","","Allow the PGLU to open a new account w/ LBP","1,18","Resolution 105-2010.pdf","21","2010-05-20","0");
INSERT INTO tbl_resolution VALUES("105 - 2011","","Return Mun Ord # 01-2011, of the SB of Agoo, LU, “An OrdZonifying the Agoo Public Cemetery in Agoo, LU & Prescribing Rules in the Use & Operation of the Same”","10","Resolution 105-2011.pdf","21","2011-03-31","0");
INSERT INTO tbl_resolution VALUES("105 - 2012","","Approve FY 2012 GF AB of the SB of Balaoan, La Union.","1","Resolution 105-2012.pdf","21","2012-03-08","0");
INSERT INTO tbl_resolution VALUES("105 - 2013","","Return Mun Ord # 05, s 2012, of the SB of Sto. Tomas, La Union, “Ord Regulating the Maintenance, Care & Safekeeping of Animals for the Welfare & Protection of the Residents of the Mun of Sto. Tomas, La Union”","1,3,5,7","RESOLUTION 105-2013.pdf","21","2013-03-26","0");
INSERT INTO tbl_resolution VALUES("106 - 1999","","P10,000.00 F/A to Brgy. San Agustin Norte, Agoo, LU, for their streetlight project","20","RESOLUTION NO.106-99.pdf","21","1999-03-11","0");
INSERT INTO tbl_resolution VALUES("106 - 2007","","Approve MunOrd # 03-2007, of the SB of San Juan, LU, entitled: “An Ord Prescribing a Time and Motion Scheme of Collection of Garbage on Subdivisions”","10","RESOLUTION NO. 106-2007.pdf","21","2007-04-12","0");
INSERT INTO tbl_resolution VALUES("106 - 2008","","Approve FY 2008 GF AB, of Sudipen, LU","2","RESOLUTION NO. 106-2008.pdf","21","2008-03-13","0");
INSERT INTO tbl_resolution VALUES("106 - 2010","","Approve FY 2010 GF AB, of Bagulin, LU","2","Resolution 106-2010.pdf","21","2010-05-20","0");
INSERT INTO tbl_resolution VALUES("106 - 2011","","Approve Res # 02, s 2011, of the SB of Sudipen, LU, “Creating the positions of 3 Administrative Asst I in the Offices of the Treasurer, Assessor & Accountant”","12","Resolution 106-2011.pdf","21","2011-03-31","0");
INSERT INTO tbl_resolution VALUES("106 - 2012","","Contract of Lease with the Naguilian Federation of Sr. Citizens pertaining to the parcel of land for the construction of the Mun Asso. of NGO & Sr. Citizens.","7,10","Resolution 106-2012.pdf","21","2012-03-08","0");
INSERT INTO tbl_resolution VALUES("106 - 2013","","Authorize/allow Gov to charge the wages & other benefits of Casual/Emergency Employees against the PS Appropriation Savings of offices ","1","RESOLUTION 106-2013.pdf","21","2013-03-26","0");
INSERT INTO tbl_resolution VALUES("107 - 1999","","P20,000.00 F/A to Brgy. Basca, Aringay, LU, for the renovation of their barangay hall","20","RESOLUTION NO.107-99.pdf","21","1999-03-11","0");
INSERT INTO tbl_resolution VALUES("107 - 2007","","Approve MunOrd # 01-2007, of the SB of San Juan, LU, entitled: “Fire Prevention Ord”","10","RESOLUTION NO. 107-2007.pdf","21","2007-04-12","0");
INSERT INTO tbl_resolution VALUES("107 - 2008","","Approve FY 2008 GF AB , of Rosario, LU ","2","RESOLUTION NO. 107-2008.pdf","21","2008-03-13","0");
INSERT INTO tbl_resolution VALUES("107 - 2010","","Approve FY 2010 GF SB # 1, of Santol, LU","2","Resolution 107-2010.pdf","21","2010-05-20","0");
INSERT INTO tbl_resolution VALUES("107 - 2011","","Condole w/ Engr. Froilan J. Pascua","10","Resolution 107-2011.pdf","21","2011-03-31","0");
INSERT INTO tbl_resolution VALUES("107 - 2012","","Approve Mun Ord # 88, s 2011, of the SB of Sudipen, LU, “An Ord Prescribing the Rules & Regulations for the Use & Operation of Motorcycles on Highways & Roads in the Mun of Sudipen”","10","Resolution 107-2012.pdf","21","2012-03-08","0");
INSERT INTO tbl_resolution VALUES("107 - 2013","","Approve Mun Ord # 08-2013, of the SB of Agoo, LU, “An Ord Providing for the Agoo Reproductive Health Care Code of 2013”","1,3,6,7,9,10","RESOLUTION 107-2013.pdf","21","2013-04-04","0");
INSERT INTO tbl_resolution VALUES("107 - 2014","2014 - 0114","\"Letter of Gov. Manuel C. Ortega respectfully requesting the Honorable Body to amend Resolution No. 355-2013 only as regards the area of the lot to be leased to the Department of Agriculture, i.e. from 664.65 to 1,248 square meters\"","4","RESOLUTION 107-2014.pdf","21","2014-03-27","0");
INSERT INTO tbl_resolution VALUES("108 - 1999","","P10,000.00 F/A to Brgy. Sta. Rita Sur, Agoo, LU, for their streetlight project","20","RESOLUTION NO.108-99.pdf","21","1999-03-11","0");
INSERT INTO tbl_resolution VALUES("108 - 2007","","Approve MunOrd # 02-2007, of the SB of San Juan, LU, entitled: “An Ord Prescribing Identification Body Number for Public Conveyance”","10","RESOLUTION NO. 108-2007.pdf","21","2007-04-12","0");
INSERT INTO tbl_resolution VALUES("108 - 2008","","Approve FY 2008 GF AB, of Santol, LU ","2","RESOLUTION NO. 108-2008.pdf","21","2008-03-13","0");
INSERT INTO tbl_resolution VALUES("108 - 2010","","Approve FY 2010 GF SB # 2, of Pugo, LU","2","Resolution 108-2010.pdf","21","2010-05-20","0");
INSERT INTO tbl_resolution VALUES("108 - 2011","","Set aside P150,000.00 as F/A to qualified OFWs repatriated from Japan, Libya, Saudi Arabia, Dubai","1","Resolution 108-2011.pdf","21","2011-03-31","0");
INSERT INTO tbl_resolution VALUES("108 - 2012","","Approve Mun Ord # 40-2100, of the SB of Luna, LU, “An Ord Requiring All Privately Operated & managed Resorts, Picnic Places & Similar Vacation & Recreation Establishments w/ Swimming Areas or Facility w/n the Jurisdiction of the Mun of Luna, LU to Employ Lifeguards & Install Safety Measures & Equipment as a Pre-requisite to the Issuances of Business Permits”","10","Resolution 108-2012.pdf","21","2012-03-08","0");
INSERT INTO tbl_resolution VALUES("108 - 2013","","Approve the Prov’l Migration Dev’t Plan, CY 2012-2015.","5,7,10,11","RESOLUTION 108-2013.pdf","21","2013-04-11","0");
INSERT INTO tbl_resolution VALUES("109 - 1999","","P10,000.00 F/A to Brgy. Dasay, San Juan, LU, for the concreting of their newly opened barangay road","20","RESOLUTION NO.109-99.pdf","21","1999-03-11","0");
INSERT INTO tbl_resolution VALUES("109 - 2007","","An AO appropriating P3,157,895 for SB # 04 of the GF","2","RESOLUTION NO. 109-2007.pdf","21","2007-04-19","0");
INSERT INTO tbl_resolution VALUES("109 - 2008","","Approve FY 2008 GF AB, of Caba, LU ","2","RESOLUTION NO. 108-2008.pdf","21","2008-03-13","0");
INSERT INTO tbl_resolution VALUES("109 - 2010","","Realign P1M from the Peace & Order Initiative Fund CY 2010 to Intelligence and Confidential Fund","1","Resolution 109-2010.pdf","21","2010-05-07","0");
INSERT INTO tbl_resolution VALUES("109 - 2011","","MOA w/ Phil. NGO Support Program Inc pertaining to the proposed public private partnership implementation of Enhancing Access to Health Resources in Strategic Underserved Communities in LU” (ENAC HEALTH Project)","19","Resolution 109-2011.pdf","21","2011-04-07","0");
INSERT INTO tbl_resolution VALUES("109 - 2012","","Approve Ord # 156, of the SB of Aringay, LU, “An Ord Amending Sec 5 of Ord # 155, Prohibiting the Sale & Illegal Use of Police & Military Uniforms, Insignia & Other Accessories w/n the Territorial Jurisdiction of the Mun of Aringay”","1","Resolution 109-2012.pdf","21","2012-03-08","0");
INSERT INTO tbl_resolution VALUES("109 - 2013","","Approve the LU Tourism Strategic Master Plan, CY 2012-2015.","5,10,18","RESOLUTION 109-2013.pdf","21","2013-04-11","0");
INSERT INTO tbl_resolution VALUES("109 - 2014","2014 - 0112","Recommend approval of the FY 2014 GF SB # 1, of Sto. Tomas, LU","4","RESOLUTION 109-2014.pdf","21","2014-03-27","0");
INSERT INTO tbl_resolution VALUES("110 - 1999","","AO amounting P5,306,000.60 for the irrigation system and solar dryer","20","RESOLUTION NO.110-99.pdf","21","1999-03-11","0");
INSERT INTO tbl_resolution VALUES("110 - 2007","","Approve FY 2007 GF AB, of Aringay, LU","2","RESOLUTION NO. 110-2007.pdf","21","2007-04-19","0");
INSERT INTO tbl_resolution VALUES("110 - 2008","","Approve FY 2008 GF AB, of Santo Tomas, LU","2","RESOLUTION NO. 110-2008.pdf","21","2008-03-13","0");
INSERT INTO tbl_resolution VALUES("110 - 2010","","Approve FY 2010 GF SB # 1, of Bagulin, LU","2","Resolution 110-2010.pdf","21","2010-05-07","0");
INSERT INTO tbl_resolution VALUES("110 - 2011","","Approve FY 2011 GF AB of Luna, LU","9","Resolution 110-2011.pdf","21","2011-04-07","0");
INSERT INTO tbl_resolution VALUES("110 - 2012","","Support Women & their Cause in the Province ","1,2,5,6,9,10,13,18,20","Resolution 110-2012.pdf","21","2012-03-08","0");
INSERT INTO tbl_resolution VALUES("110 - 2013","","COL with LTO RI, OWWA, CSC, BOT, BIR, BPI, PPA, PVAO in connection with the lot owned along Aguila Rd, CSF, LU, for the construction of their respective office building","5,10","RESOLUTION 110-2013.pdf","21","2013-04-11","0");
INSERT INTO tbl_resolution VALUES("110 - 2014","2014 - 0110","Recommend approval of the FY 2014 GF AB, of Luna, LU","4","RESOLUTION 110-2014.pdf","21","2014-03-27","0");
INSERT INTO tbl_resolution VALUES("111 - 1999","","Return Ord # 4, of the SB of Santol, LU, Requiring Owner/s & Operators of Chainsaw/Tractors Operating for Business w/n the Municipality of Santol, LU to Get Mayor’s Permit from the Office of the Municipal Mayor","24","RESOLUTION NO.111-99.pdf","21","1999-03-18","0");
INSERT INTO tbl_resolution VALUES("111 - 2007","","Approve FY 2007 GFSB # 1, of San Gabriel, LU","2","RESOLUTION NO. 111-2007.pdf","21","2007-04-19","0");
INSERT INTO tbl_resolution VALUES("111 - 2008","","MOA with SITEL Phils., Inc., relative to the proposed SITEL Community Training for Partnership Program","31","RESOLUTION NO. 111-2008.pdf","21","2008-04-03","0");
INSERT INTO tbl_resolution VALUES("111 - 2010","","Approve FY 2010 GF SB # 2, of Luna, LU","2","Resolution 111-2010.pdf","21","2010-05-07","0");
INSERT INTO tbl_resolution VALUES("111 - 2011","","Enjoin the Sec to the SP to translate into the Iloko Language the texts of the Ordinances & Resolutions passed by this August Body","1,10","Resolution 111-2011.pdf","21","2011-04-07","0");
INSERT INTO tbl_resolution VALUES("111 - 2012","","Contract of Agreement with Dr Marianne G. Manangan as Visiting Consultant in Pediatrics at RDH.","10","Resolution 111-2012.pdf","21","2012-03-15","0");
INSERT INTO tbl_resolution VALUES("111 - 2013","","Approve the FY 2013 GF SB # 2, of the City of San Fernando, La Union.","11","RESOLUTION 111-2013.pdf","21","2013-04-11","0");
INSERT INTO tbl_resolution VALUES("111 - 2014","2014 - 0111","Recommend approval of the FY 2014 GF AB, of San Juan, LU","4","RESOLUTION 111-2014.pdf","21","2014-03-27","0");
INSERT INTO tbl_resolution VALUES("112 - 1999","","Approve Ord # 36A-98, of the SB of Tubao, LU, Adding and Inserting Sec. 4.1 in the Municipal Liquor Ord # 1, s. 1997","24","RESOLUTION NO.112-99.pdf","21","1999-03-18","0");
INSERT INTO tbl_resolution VALUES("112 - 2007","","Approve FY 2007 GF AB, of Caba, LU","18","RESOLUTION NO. 112-2007.pdf","21","2007-04-26","0");
INSERT INTO tbl_resolution VALUES("112 - 2008","","Condole w/ of Rev. Fr. German P. Cabillo, SVD, Santol, LU","20","RESOLUTION NO. 112-2008.pdf","21","2008-04-03","0");
INSERT INTO tbl_resolution VALUES("112 - 2010","","Approve FY 2010 GF SB # 3, of Sudipen, LU","1","Resolution 112-2010.pdf","21","2010-06-06","0");
INSERT INTO tbl_resolution VALUES("112 - 2011","","Request Cong. Victor Ortega to sponsor a Bill for the Creation of a New Branch or Sala of the TRC, 1st Judicial Region in Balaoan, LU","10","Resolution 112-2011.pdf","21","2011-04-07","0");
INSERT INTO tbl_resolution VALUES("112 - 2012","","MOA w/ Lorma Medical Center as service provider in the conduct of Drug Testing to all PGLU Drivers, Security Guards & Jail Guards.","10,20","Resolution 112-2012.pdf","21","2012-03-15","0");
INSERT INTO tbl_resolution VALUES("112 - 2013","","Approve the FY 2013 GF SB # 3, of the City of San Fernando, La Union.","11","RESOLUTION 112-2013.pdf","21","2013-04-11","0");
INSERT INTO tbl_resolution VALUES("112 - 2014","2014 - 0109","Recommend approval of the FY 2014 GF AB, of CSF, LU","4","RESOLUTION 112-2014.pdf","21","2014-03-27","0");
INSERT INTO tbl_resolution VALUES("113 - 1999","","Approve Res # 36B-98, of the SB of Tubao, LU, Adopting the Internal Rules & Procedure for the SB of that Municipality","24","RESOLUTION NO.113-99.pdf","21","1999-03-18","0");
INSERT INTO tbl_resolution VALUES("113 - 2007","","Approve FY 2006 GF SB # 1, of Burgos, LU","18","RESOLUTION NO. 113-2007.pdf","21","2007-04-26","0");
INSERT INTO tbl_resolution VALUES("113 - 2008","","Contract of Agreement  with Dr. Mervin M. de Guzman, MD., as Visiting Ophthalmologist at the Balaoan District Hospital,","18","RESOLUTION NO. 113-2008.pdf","21","2008-04-10","0");
INSERT INTO tbl_resolution VALUES("113 - 2010","","Approve FY 2010 GF SB # 3, of Pugo, LU","1","Resolution 113-2010.pdf","21","2010-06-06","0");
INSERT INTO tbl_resolution VALUES("113 - 2011","","Adjust SG of Mrs. Dolores Padua ","1,12,18","Resolution 113-2011.pdf","21","2011-04-14","0");
INSERT INTO tbl_resolution VALUES("113 - 2012","","Approve FY 2012 GF SB # 1, of Agoo, La Union.","1","Resolution 113-2012.pdf","21","2012-03-15","0");
INSERT INTO tbl_resolution VALUES("113 - 2013","","Approve the FY 2013 GF SB # 1, of Balaoan, La Union.","11","RESOLUTION 113-2013.pdf","21","2013-04-11","0");
INSERT INTO tbl_resolution VALUES("114 - 1999","","Approve Ord # 98-19, of the SB of Naguilian, LU, Amending Ord # 96-35, Otherwise Known as the Traffic Code of that Municipality, Imposing Penalties for Violation Thereof & for Other Purposes","24","RESOLUTION NO.114-99.pdf","21","1999-03-18","0");
INSERT INTO tbl_resolution VALUES("114 - 2007","","Endorse Res # 03, s. 2007, of the SP of Abra, entitled: “Requesting Both Houses of Congress of the Philippines (Senate and House of Representatives) to Pass a Bill to Amend and Incorporate in the National Health Insurance Act of 1995 (RA No. 7875, as Amended by RA 9241), a Provision to Allow Member Couples and Family to Utilize All their PhilhealthMedicares to Defray Hospital Bills of a Member Beneficiary or Any of Their Legal Dependents”\n","30","RESOLUTION NO. 114-2007.pdf","21","2007-04-26","0");
INSERT INTO tbl_resolution VALUES("114 - 2008","","Contract of Agreement  w/ NEDA and the National Statistical Coordinating Board (NSCB), San Fernando City for the establishment of a Localized Millennium Development Goal (MDG) Database in the province","31","RESOLUTION NO. 114-2008.pdf","21","2008-04-10","0");
INSERT INTO tbl_resolution VALUES("114 - 2010","","Approve FY 2010 GF SB # 3, of Luna, LU","1","Resolution 114-2010.pdf","21","2010-06-06","0");
INSERT INTO tbl_resolution VALUES("114 - 2011","","Program FY 2010 Burley Tobacco Tax amounting P10,131,712.00 for the purchase of lot for the Farmer’s Multi-Purpose & Livelihood Training Center & Agricultural Demo Farm","1,3","Resolution 114-2011.pdf","21","2011-04-14","0");
INSERT INTO tbl_resolution VALUES("114 - 2012","","Approve Res # 03, s 2012, of the SB of Burgos, La Union, “Res Revising Proposed Mun Ord # 38, s 2011, “An Ord Adopting Rules & Procedures in the Conduct of Administrative Investigation Against Elective Barangay Officials of the Mun of Burgos, La Union”","20","Resolution 114-2012.pdf","21","2012-03-15","0");
INSERT INTO tbl_resolution VALUES("114 - 2013","","Approve Ord # 37, s 2012, of the SB of Naguilian, LU, “An Ord Adopting the Rules & Regulations Governing the Implementation of RA 10172, An Act Further Authorizing the Mun Civil Registrar to Correct Clerical or Typographical Errors in the Day & Month in the Date of Birth or Sex Appearing in the Civil Register w/o Need of Judicial Order”","5,7,10","RESOLUTION 114-2013.pdf","21","2013-04-11","0");
INSERT INTO tbl_resolution VALUES("114 - 2014","2014 - 0019","Ord # 2013-109, An Ord Creating the Santol Motorized Tricycle Franchising & Regulatory Board (SMTFRB), Providing for its Powers & Functions, & For Other Purposes","4","RESOLUTION 114-2014.pdf","21","2014-03-27","0");
INSERT INTO tbl_resolution VALUES("115 - 1999","","Return Ord # 01-99, of the SB of Bangar, LU, Requiring All Contractors to Pay Regulatory Fees on Sand & Gravel Quarried W/n the Territorial Jurisdiction of that Municipality","24","RESOLUTION NO.115-99.pdf","21","1999-03-18","0");
INSERT INTO tbl_resolution VALUES("115 - 2007","","MOA w/ the Commission on Population (POPCOM), in connection with the Responsible Parenting Movement and Natural Family Planning (RPM-NFP) implementation","30","RESOLUTION NO. 115-2007.pdf","21","2007-04-26","0");
INSERT INTO tbl_resolution VALUES("115 - 2008","","Request LBP  to amend a portion of the MOA for Livelihood Loan Facility for Local Government Units ","1","RESOLUTION NO. 115-2008.pdf","21","2008-04-10","0");
INSERT INTO tbl_resolution VALUES("115 - 2010","","Condole w/ SBM Nestor A. Arsitio, Burgos","1,7,18","Resolution 115-2010.pdf","21","2010-06-06","0");
INSERT INTO tbl_resolution VALUES("115 - 2011","","Contract of Lease w/ SMART re: PGLU’sppy at the Prov’l Capitol until June 30, 2011","1,9,18","Resolution 115-2011.pdf","21","2011-04-14","0");
INSERT INTO tbl_resolution VALUES("115 - 2012","","Approve Mun Ord # 41-2011, of the SB of Luna, LU, “An Ord to Fix & Impose Reasonable Fees & Charges for All Services Rendered and/or Prescribing the Terms & Conditions Under w/c Public Utilities Owned by the Mun Shall be Operated by the Mun Gov’t or Leased to Private Person or Entities, Preferably Coops”","20","Resolution 115-2012.pdf","21","2012-03-15","0");
INSERT INTO tbl_resolution VALUES("115 - 2013","","Approve Ord # 06-2013, of the SB of San Juan, LU, “An Ord Authorizing the San Juan Auxiliary Contingent To Issue Traffic Citation Tickets (TCTs), as Amended”","3,6,7,10","RESOLUTION 115-2013.pdf","21","2013-04-11","0");
INSERT INTO tbl_resolution VALUES("116 - 1999","","Approve Ord # 98-36, of the SB of Naguilian, LU, Repealing the Provision of Family Lot & Amending for the Purpose Ord # 96-02, Otherwise Known as the Burial Lot Ordinance of that Municipality","24","RESOLUTION NO.116-99.pdf","21","1999-03-18","0");
INSERT INTO tbl_resolution VALUES("116 - 2007","","Approve FY 2007 GF SB # 2, of the City of san Fernando, LU","2","RESOLUTION NO. 116-2007.pdf","21","2007-05-03","0");
INSERT INTO tbl_resolution VALUES("116 - 2008","","Concur/Confirm the appointment of Ms. Francisca Pungtilan as Provincial Accountant of the PGLU","1","RESOLUTION NO. 116-2008.pdf","21","2008-04-10","0");
INSERT INTO tbl_resolution VALUES("116 - 2010","","Request PNP, NBI, to expedite resolution of the brutal killing of SBM Nestor Arsitio","1,3,7,18","Resolution 116-2010.pdf","21","2010-06-06","0");
INSERT INTO tbl_resolution VALUES("116 - 2011","","Approve FY 2011 GF AB of Naguilian LU","1","Resolution 116-2011.pdf","21","2011-04-14","0");
INSERT INTO tbl_resolution VALUES("116 - 2012","","Approve Mun Ord # 12-2012, of the SB of Bauang, LU, “An Ord Imposing Fees on the Availment of Service, Use of Facilities, Including the Provision of Medicines & Supplies at the Doña Corazon Campos Ortega Lying-in, Maternity, Geriatric & Therapeutic Center of the Mun of Bauang”","20","Resolution 116-2012.pdf","21","2012-03-15","0");
INSERT INTO tbl_resolution VALUES("116 - 2013","","Approve Ord # 14, s 2012, of the SB of Bauang, LU, “An Ord Prescribing Rules & Regulations in the Use & Operation of the New Cemetery”","7,9,10,11","RESOLUTION 116-2013.pdf","21","2013-04-11","0");
INSERT INTO tbl_resolution VALUES("117 - 1999","","Approve Res # 04-99, of the SB of San Juan, LU, Conferring to the Establishment of a Local Cockpit at Brgy. Cacapian, San Juan, LU","24","RESOLUTION NO.117-99.pdf","21","1999-03-18","0");
INSERT INTO tbl_resolution VALUES("117 - 2007","","Approve FY 2007 GF SB # 3, of the City of San Fernando, LU","2","RESOLUTION NO. 117-2007.pdf","21","2007-05-03","0");
INSERT INTO tbl_resolution VALUES("117 - 2008","","Commend Mr. Rommel Del-is for winning 2nd place (Silver Medal) in the Muay Aerobics and another Silver Medal in the 75 kgs. Division, Amateur Muay Thai Competition during the 4th World Thai Martial Arts Festival World Wai Kua Ceremony and Nai Khanomtom championships in Ayutthaya, Thailand","1","RESOLUTION NO. 117-2008.pdf","21","2008-04-10","0");
INSERT INTO tbl_resolution VALUES("117 - 2010","","MOA w/ DENR relative to the tree-planting activity dubbed as KabataanparasaKalikasan","1,18","Resolution 117-2010.pdf","21","2010-06-10","0");
INSERT INTO tbl_resolution VALUES("117 - 2011","","Accredit Fathers & Mothers Asso., Sevilla, CSF, LU as NGO","7","Resolution 117-2011.pdf","21","2011-04-14","0");
INSERT INTO tbl_resolution VALUES("117 - 2012","","Return the Mun Revenue Code of 2011 of Bangar, La Union for proper amendments","20","Resolution 117-2012.pdf","21","2012-03-15","0");
INSERT INTO tbl_resolution VALUES("117 - 2013","","Return Ord # 5, s 2012, of the SB of Bauang, LU, “An Ord Creating, Formulating & Establishing the Bauang Tourism Code w/c Provides for the Rules & Regulations Governing & Prescribing Penalties for Violation Thereof”","5,7,10","RESOLUTION 117-2013.pdf","21","2013-04-11","0");
INSERT INTO tbl_resolution VALUES("117 - 2014","2014 - 0120","\"Letter of Gov. Manuel C. Ortega, respectfully requesting the Hon. Body to authorize him to enter into a MOA with the Commission on Population (POPCOM) Region I represented by Ms. Erma R. Yapit, OIC Regional Director, in connection with the donation of One (1) Unit complete set of Computer with Printer for the data base management and other population-related activities of the PGLU\"","4","RESOLUTION 117-2014.pdf","21","2014-04-03","0");
INSERT INTO tbl_resolution VALUES("117A- 2008","","Allocate the amount of P4,373,500 M from the Contingency Fund to be used for the incoming/on-going Agricultural Projects of the Province to address the projected food shortage","31","RESOLUTION NO. 117A-2008.pdf","21","2008-04-24","0");
INSERT INTO tbl_resolution VALUES("118 - 1999","","Approve Tax Ord # 99-02, of the SB of Burgos, LU, to Increase the Yearly Rental Fee of Lots W/n the Public Market of that Municipality","24","RESOLUTION NO.118-99.pdf","21","1999-03-18","0");
INSERT INTO tbl_resolution VALUES("118 - 2007","","Approve FY 2007 GF SB # 2, of Tubao, LU","2","RESOLUTION NO. 118-2007.pdf","21","2007-05-03","0");
INSERT INTO tbl_resolution VALUES("118 - 2008","","Enact an Appropriation  in the amount of 54,251,423.44 for Supplemental Budget No. 2, of the General Fund","2","RESOLUTION NO. 118-2008.pdf","21","2008-04-24","0");
INSERT INTO tbl_resolution VALUES("118 - 2010","","Congratulate Sen. Benigno Simeon C. Aquino III, to the Presidency position","21","Resolution 118-2010.pdf","21","2010-06-10","0");
INSERT INTO tbl_resolution VALUES("118 - 2011","","Approve Mun Ord # 09-2011, of the SB of San Juan, LU, “An Ord Requiring Beach Resort Owners to Provide Security Services & Facility for the Swimming Public”","3","Resolution 118-2011.pdf","21","2011-04-14","0");
INSERT INTO tbl_resolution VALUES("118 - 2012","","Approve Mun Ord 3 89, s 2011, of the SB of Sudipen, LU, “Local Revenue Code of the Mun of Sudipen, LU”","20","Resolution 118-2012.pdf","21","2012-03-15","0");
INSERT INTO tbl_resolution VALUES("118 - 2013","","Approve Mun Ord # 06-2013, of the SB of Agoo, LU, “An Ord Authorizing the Mun Civil Registrar (MCR), to Correct Clerical or Typographical Errors in the Day & Month in the Date of Birth or Sex of a Person Appearing in the Civil Register w/o Need of a Judicial Order & to Collect Fees in Accordance to Rule 10 of the IRR of RA 10171”","5,7,10,18","RESOLUTION 118-2013.pdf","21","2013-04-11","0");
INSERT INTO tbl_resolution VALUES("118 - 2014","2014 - 0121","\"Letter of Gov. Manuel C. Ortega respectfully submitting the consolidated CY 2014 Supplemental Annual Investment Program (AIP) of the following Offices of the Provincial Government of La Union (PGLU) for the August Body\'s consideration and approval\"","1","RESOLUTION 118-2014.pdf","21","2014-04-03","0");
INSERT INTO tbl_resolution VALUES("119 - 1999","","Return Res # 09-999, of the SB of Sto. Tomas, LU, Amending and Modifying Sec. 11 D of Art. IX and Sec. 1 B, 1 C and 1 D of Art. X & Abrogating Sec. 2 of Art X and Sec. 1 of Art. XI of Traffic Ord # 02, s. 1998, of that Municipality","24","RESOLUTION NO.119-99.pdf","21","1999-03-18","0");
INSERT INTO tbl_resolution VALUES("119 - 2007","","Approve FY 2007 GF SB # 2, of Luna, LU","2","RESOLUTION NO. 119-2007.pdf","21","2007-05-03","0");
INSERT INTO tbl_resolution VALUES("119 - 2008","","MOA with the Regional Development Council – Region I, pertaining to the Bio-Intensive Gardening (BIG) Program in Region I","1","RESOLUTION NO. 119-2008.pdf","21","2008-04-24","0");
INSERT INTO tbl_resolution VALUES("119 - 2010","","Congratulate Hon. Jejomar C. Binay to the Vice Presidency position","21","Resolution 119-2010.pdf","21","2010-06-10","0");
INSERT INTO tbl_resolution VALUES("119 - 2011","","Approve Mun Ord # 12-2011, of the SB of San Juan, LU, “An Ord Assigning an Area for Public Abattoir”","18","Resolution 119-2011.pdf","21","2011-04-14","0");
INSERT INTO tbl_resolution VALUES("119 - 2012","","Approve the Revised Mun Revenue Code of the Mun of Sto. Tomas, La Union.","20","Resolution 119-2012.pdf","21","2012-03-15","0");
INSERT INTO tbl_resolution VALUES("119 - 2013","","Approve Ord # 3-2013, of the SB of San Gabriel, LU, “An Ord Authorizing the Mun Civil Registrar through the Mun Treas to Collect Fees for Every Petition to the Day and/or Month in the Date of Birth or Sex at the Rate Prescribed under Admin Order No. 1, s 2012, of the Civil Register General”","7,10","RESOLUTION 119-2013.pdf","21","2013-04-11","0");
INSERT INTO tbl_resolution VALUES("119 - 2014","2014 - 0115","Recommend approval of the FY 2014 GF SB # 2, of Balaoan, LU","1","RESOLUTION 119.-2014.pdf","21","2014-04-03","0");
INSERT INTO tbl_resolution VALUES("120 - 1999","","Approve Ord # 99-027, of the SB of Pugo, LU, Prohibiting the Bathing of Animals & Other Activities that Would Endanger the Env’t","24","RESOLUTION NO.120-99.pdf","21","1999-03-18","0");
INSERT INTO tbl_resolution VALUES("120 - 2007","","MOA w/ the Union Christian College (UCC) relative to the On-the-Job Training (OJT)/Practicum of UUladderized nursing students at the Bacnotan District Hospital (BDH) and Northern La Union Maternity and Children’s Hospital (NLUMCH) for SY 2007-2008","18","RESOLUTION NO. 120-2007.pdf","21","2007-05-10","0");
INSERT INTO tbl_resolution VALUES("120 - 2008","","Renew MOA w/ CSC, Region I pertaining to the office space at the Liga ng mga Barangay Bldg., located at Gov. Aguila Road, CSF presently occupied by the CSC – La Union field Office (CSC – LUFO) but for another three (3) years only ","1","RESOLUTION NO. 120-2008.pdf","21","2008-04-24","0");
INSERT INTO tbl_resolution VALUES("120 - 2010","","Request DPWH to implement the repainting of center lines, white lines of the national road and the clearing of canals from Rosario to Sudipen","21","Resolution 120-2010.pdf","21","2010-06-10","0");
INSERT INTO tbl_resolution VALUES("120 - 2011","","Approve Ord # 2011-01, s 2011, of the SB of Caba, LU, “An Ord Providing for the Control & Elimination of Rabies, Prescribing Penalties for Violations Thereof & Appropriating Funds Therefore”","18","Resolution 120-2011.pdf","21","2011-04-14","0");
INSERT INTO tbl_resolution VALUES("120 - 2012","","Refer to the LUPPO the issues raised by Hon. JM Ortega & Henry Balbin re:","3","Resolution 120-2012.pdf","21","2012-03-15","0");
INSERT INTO tbl_resolution VALUES("120 - 2013","","Approve the FY 2013 GF AB, of the SB of Sto. Tomas, La Union.","1,6,7,20","RESOLUTION 120-2013.pdf","21","2013-04-17","0");
INSERT INTO tbl_resolution VALUES("120 - 2014","2014 - 0116","Recommend Approval of the FY 2014 GF AB, of Bauang, La Union.","1","RESOLUTION 120-2014.pdf","21","2014-04-03","0");
INSERT INTO tbl_resolution VALUES("121 - 1999","","Approve Ord # 4-98, of the SB of Rosario, LU, Approving the Reclassification of the 3 Adjacent Parcels of Land w/ an Area of 3 Hectares Located at Brgy. Concepcion, Rosario, LU w/ TCT Nos. T-13300, T-13301 & T-13302 from Agricultural to Residential Land as Requested by Gregorio Padilla, Jr., Land Developer","24","RESOLUTION NO.121-99.pdf","21","1999-03-18","0");
INSERT INTO tbl_resolution VALUES("121 - 2007","","Approve FY 2007 GF AB, of Bacnotan, LU","2","RESOLUTION NO. 121-2007.pdf","21","2007-05-10","0");
INSERT INTO tbl_resolution VALUES("121 - 2008","","MOA w/ DA-RFUI and DMMMSU in connection with the fund transfer of P5 M in support of the PGLU’s Apiculture Project/Program, of which P3 M will be transferred to the province","1","RESOLUTION NO. 121-2008.pdf","21","2008-05-08","0");
INSERT INTO tbl_resolution VALUES("121 - 2010","","Adopt P/SrNoli G Talino as son of the province","1,3,18","Resolution 121-2010.pdf","21","2010-06-17","0");
INSERT INTO tbl_resolution VALUES("121 - 2011","","Approve Ord # 2011-02,  of the SB of Caba, LU, “Health Sanitation Code of the Mun of Caba, LU”","18","Resolution 121-2011.pdf","21","2011-04-14","0");
INSERT INTO tbl_resolution VALUES("121 - 2012","","Return Ord # 02-2012, of the SB of Agoo, LU, “An Ord Regulating the Maintenance & Safekeeping of Animals for the Welfare & Protection of Residents in the 49 Brgys of the Mun of Agoo”","3","Resolution 121-2012.pdf","21","2012-03-15","0");
INSERT INTO tbl_resolution VALUES("121 - 2013","","Approve the FY 2013 GF SB # 2, of Agoo, La Union.","1,6,7,20","RESOLUTION 121-2013.pdf","21","2013-04-17","0");
INSERT INTO tbl_resolution VALUES("122 - 1999","","Return Ord # 13-98, of the SB of Sudipen, LU, Imposing Building Permit & Other Related Permit Fees for the Construction and/or Erection of Towers and Similarly High Structures in that Municipality","24","RESOLUTION NO.122-99.pdf","21","1999-03-18","0");
INSERT INTO tbl_resolution VALUES("122 - 2007","","Approve FY 2007 GF AB,  of Bagulin, LU","2","RESOLUTION NO. 122-2007.pdf","21","2007-05-10","0");
INSERT INTO tbl_resolution VALUES("122 - 2008","","Realign P1 M from the Santol-San Gabriel Road Project (San Gabriel Section) appropriations to the improvement of the line canal and road widening projects at Guerrero Road Avenue and San Agustin St., Poblacion, San Gabriel, LU","1","RESOLUTION NO. 122-2008.pdf","21","2008-05-08","0");
INSERT INTO tbl_resolution VALUES("122 - 2010","","Approve FY 2010 GF AB, of Agoo, LU","2","Resolution 122-2010.pdf","21","2010-06-17","0");
INSERT INTO tbl_resolution VALUES("122 - 2011","","Request TWG to study the IRR of Prov’l Ord # 011-2010 to convene & review the proposed IRR ","19","Resolution 122-2011.pdf","21","2011-04-14","0");
INSERT INTO tbl_resolution VALUES("122 - 2012","","Approve Ord # 05, s 2011, of the SB of Naguilian, LU, “An Ord Authorizing All Peace-Keeping Forces to Check on the Drivers Licenses & Registration Papers of Vehicles Entering the Territorial Jurisdiction of the Mun of Naguilian & Providing Penalties to Violators Thereof”","3","Resolution 122-2012.pdf","21","2012-03-15","0");
INSERT INTO tbl_resolution VALUES("122 - 2013","","Condole w/ the bereaved family of Atty. Ceferino V. Argueza.","1,3,5,6,7,9,10,11,12,13,18,19,20","RESOLUTION 122-2013.pdf","21","2013-04-17","0");
INSERT INTO tbl_resolution VALUES("123 - 1999","","Approve FY 1999 GF AB of Rosario, LU","20","RESOLUTION NO.123-99.pdf","21","1999-03-18","0");
INSERT INTO tbl_resolution VALUES("123 - 2007","","Approve City Ord # 2006-006, of the SP of the City of San Fernando, LU, entitled: “An Ord Amending Tax Ord 2 as Amended by Tax Ord # 1, s. 2004, Otherwise Known as An Ord Amending the Revenue Codes of the City of San Fernando, Particularly on License Fees on Signboards, Billboards and Advertisements”","20","RESOLUTION NO. 123-2007.pdf","21","2007-05-10","0");
INSERT INTO tbl_resolution VALUES("123 - 2008","","Declare in order Res # 03, s. 2008 of the SB of Bagulin, entitled: Resolution Giving Full Authority to Hon. Salcedo Tumbaga to Donate 500 Sq.m. from the Lot Owned by the Municipality of Bagulin, LU to the PNP to be Utilized in the Construction of a Type C Police Station of said Municipality”","1","RESOLUTION NO. 123-2008.pdf","21","2008-05-08","0");
INSERT INTO tbl_resolution VALUES("123 - 2010","","Approve FY 2010 GF AB, of Caba, LU","2","Resolution 123-2010.pdf","21","2010-06-17","0");
INSERT INTO tbl_resolution VALUES("123 - 2011","","Approve Mun Ord # 34, of the SB of Burgos, LU, “An Ord Prescribing Rules & Regulations in the Administrator & Operation of the Burgos Public Market Loop Commercial Bldg”","19","Resolution 123-2011.pdf","21","2011-04-14","0");
INSERT INTO tbl_resolution VALUES("123 - 2012","","Approve the CY 2012 Supplemental AIP for the Office of the Prov’l Treasurer","1","Resolution 123-2012.pdf","21","2012-03-22","0");
INSERT INTO tbl_resolution VALUES("123 - 2013","","Approve Mun Ord # 1-2013, of the SB of San Gabriel, LU, “An Ord Amending Chapter 5, Sec 5A.07, of the Revised Revenue Code of San Gabriel, LU","1,3,7,10,20","RESOLUTION 123-2013.pdf","21","2013-04-17","0");
INSERT INTO tbl_resolution VALUES("123 - 2014","2014 - 0123","\"Letter of Gov. Manuel C. Ortega respectfully endorsing the 5-Year Provincial Disaster Risk Reduction and Management (PDRRMC) Plan, CY 2014-2018 for the August Body\'s kind consideration and Approval for effective and efficient implementation to protect lives, property and livelihood of our people as planned.\"","11","RESOLUTION 123-2014.pdf","21","2014-04-03","0");
INSERT INTO tbl_resolution VALUES("124 - 1999","","Amend SP Resolution No. 423-1994","24","RESOLUTION NO.124-99.pdf","21","1999-03-18","0");
INSERT INTO tbl_resolution VALUES("124 - 2007","","Approve City Ord # 2006-009, of the SP of the City of San Fernando, LU, entitled: “An Ord Amending Sec IV Q, Particularly on the Regulating Fees for the Use of City Government Facilities of Tax Ord # 2, s. 2004, as Amended by City Ord # 2003-002, Otherwise Known as an OrdAmending the Revenue Code of the City of San Fernando”","20","RESOLUTION NO. 124-2007.pdf","21","2007-05-10","0");
INSERT INTO tbl_resolution VALUES("124 - 2008","","RENEW MOA/Contract of Affiliation of all concerned colleges, universities and schools of nursing, caregivers, and midwifery that entered/executed a MOA/Contract of Affiliation with the PGLU to the five (5) District Hospitals of the province for SY 2008-2009","31","RESOLUTION NO. 124-2008.pdf","21","2008-05-08","0");
INSERT INTO tbl_resolution VALUES("124 - 2010","","Approve FY 2010 GF AB, of Naguilian, LU","2","Resolution 124-2010.pdf","21","2010-06-17","0");
INSERT INTO tbl_resolution VALUES("124 - 2011","","Approve EO # 002-2011, of Mayor Joy Pinzon, Bangar, LU, “Designating the Mun Economic & Investment Officer of Bangar, LU”","19","Resolution 124-2011.pdf","21","2011-04-14","0");
INSERT INTO tbl_resolution VALUES("124 - 2012","","Refer to the LTO, Ord # 91, s 2012, of the SB of Sudipen, LU, “An Ord Amending Certain Provision of Mun Ord # 17, s 1999, Known as the An Ord Regulating Traffic in the Nat’l Highways of Sudipen”","9","Resolution 124-2012.pdf","21","2012-03-22","0");
INSERT INTO tbl_resolution VALUES("124 - 2013","","Return Mun Ord # 2-2013, of the SB of San Gabriel, LU, “Public Market Code of the Mun of San Gabriel, La Union”","1,3,7,10,20","RESOLUTION 124-2013.pdf","21","2013-04-17","0");
INSERT INTO tbl_resolution VALUES("124 - 2014","2014 - 0124","Request to allow him to charge the wages and other benefits of casual employees against the appropriation of vacant positions of offices where they are detailed","1","RESOLUTION 124-2014.pdf","21","2014-04-03","0");
INSERT INTO tbl_resolution VALUES("125 - 1999","","Invite Mr. Ernesto Pantangco, EVP, BPPC, et.al., to attend SP Special Session on April 7, 1999","20","RESOLUTION NO.125-99.pdf","21","1999-03-25","0");
INSERT INTO tbl_resolution VALUES("125 - 2007","","Approve City Ord # 2006-010, of the SP of the City of San Fernando, LU, entitled: “An Ord Amending Sec IV H 01, Part. on the Imposition of Rents on City Equipment/Vehicles of Tax Ord # 2, s. 2004, as Amended by City Ord # 2003-002, Otherwise Known as an Ord Amending the Revenue Code of the City of San Fernando”","20","RESOLUTION NO. 125-2007.pdf","21","2007-05-10","0");
INSERT INTO tbl_resolution VALUES("125 - 2008","","MOA with PEPSI COLA Products Phils., Inc. (PCPPI) relative to the medical exam, treatment and other hospitalization and out-patient services of its employees and other qualified dependents of the company","1","RESOLUTION NO. 125-2008.pdf","21","2008-05-15","0");
INSERT INTO tbl_resolution VALUES("125 - 2010","","Approve FY 2010 GF AB, of Pugo, LU","2","Resolution 125-2010.pdf","21","2010-06-17","0");
INSERT INTO tbl_resolution VALUES("125 - 2011","","MOA w/ colleges, universities & tertiary schools pertaining to the OJT program of students to the different departments & offices","1","Resolution 125-2011.pdf","21","2011-04-20","0");
INSERT INTO tbl_resolution VALUES("125 - 2012","","Approve Mun Ord # 02-2012, of the SB of San Gabriel, LU, “An Ord Prohibiting the Cutting & Putting Up of Any Object Destroying or Injuring Planted or Flowering Trees, Flowering Plants & Shrubs or Plants of Scenic Value w/n the Area of Jurisdiction of San Gabriel”","1","Resolution 125-2012.pdf","21","2012-03-22","0");
INSERT INTO tbl_resolution VALUES("125 - 2013","","Approve Ord # 4, s 2013, of the SB of Naguilian, LU “An Ord Authorizing the Proposed Borrowing of the Mun of Naguilian, Prov of LU, in the amount of P53,600,000.00to Fund the Implementation of Various Priority Projects of the Mun Gov’t of Naguilian, La Union”","1,7,10,20","RESOLUTION 125-2013.pdf","21","2013-04-17","0");
INSERT INTO tbl_resolution VALUES("125 - 2014","2014 - 0127","\"Letter of Gov. Manuel C. Ortega respectfully requesting the Hon. Body to authorize him for and on behalf of the PGLU to enter into a MOA with the Bureau of Fisheries and Aquatic Resources Regional Fisheries Office I (BFAR-RFOi), the Municipality of Sto. Tomas, and the small Fishermen Association of Casantaan, the Municipality of Bacnotan and the Pandan Fishermen Assciation, the Municipality of San  Juan and the Taboc Fishermen Association, the Mun. of Bauang and the Bauang Fishing Group Consumers Cooperative, the Municipality of Bangar and the Mindoro Fisherfolk Association, the Municipality of Balaoan and the Paraoir Fisherfolk Assciation- all of the Province of La Union, in connection the grant of Payao Projects for the afore mentioned Local Government Units and  their respective beneficiaries for the Implementation of Fishery Program and Projects in the Province.\"\n","3","RESOLUTION 125-2014.pdf","21","2014-04-10","0");
INSERT INTO tbl_resolution VALUES("126 - 1999","","Invite Mr. Gerardo Mangaliag, Sr., Prov’l Treasurer, to attend SP Special Session on March 29, 1999","20","RESOLUTION NO.126-99.pdf","21","1999-03-25","0");
INSERT INTO tbl_resolution VALUES("126 - 2007","","Approve City Ord # 2006-17, of the SP of the City of San Fernando, LU, entitled: “An OrdAmending Sec H on Clearance Fees of the Revenue Code of the City of the San Fernando”","20","RESOLUTION NO. 126-2007.pdf","21","2007-05-10","0");
INSERT INTO tbl_resolution VALUES("126 - 2008","","Approve accreditation of  PHILIPPINE GUARDIAN BRTOHERHOOD, INC. (PGBI), Marangal Chapter of # 135 Queen of Peace, Baguio City as NGO","7","RESOLUTION NO. 126-2008.pdf","21","2008-05-15","0");
INSERT INTO tbl_resolution VALUES("126 - 2010","","Approve FY 2010 GF AB, of San Juan, LU","2","Resolution 126-2010.pdf","21","2010-06-17","0");
INSERT INTO tbl_resolution VALUES("126 - 2011","","Grant a General Authority for the Governor to renew the MOA/contract of Affiliation of all colleges, universities & schools of nursing, caregivers & midwifery","1,18","Resolution 126-2011.pdf","21","2011-04-20","0");
INSERT INTO tbl_resolution VALUES("126 - 2012","","Approve Ord # 01-2012, of the SB of San Gabriel, LU, “An Ord Prohibiting the Encroachment & Any Use of Any Portion of Nat’l, Prov’l, Mun & Brgy Rds., Avenues, Sts., & Bridges w/n the Area of Jurisdiction of San Gabriel Other Than for Mobility Purposes”","1","Resolution 126-2012.pdf","21","2012-03-22","0");
INSERT INTO tbl_resolution VALUES("126 - 2013","","Approve Ord # 9-2012, of the SB of San Gabriel, LU “The Environmental Code of the Mun of San Gabriel, La Union”","1,7,9,18","RESOLUTION 126-2013.pdf","21","2013-04-17","0");
INSERT INTO tbl_resolution VALUES("127 - 1999","","Direct Mr. Gerardo Mangaliag, Sr. to effect issuance of the Warrant of Levy on the real properties of BPPC","27","RESOLUTION NO.127-99.pdf","21","1999-03-29","0");
INSERT INTO tbl_resolution VALUES("127 - 2007","","An AO appropriating P85,000 for SB # 05 of the GF","2","RESOLUTION NO. 127-2007.pdf","21","2007-05-17","0");
INSERT INTO tbl_resolution VALUES("127 - 2008","","Approve accreditation of  AGOO BANTAY KALUSUGAN DIABETES ASSO. INC. (ABAKADA) of La Union Medical Center, Nazareno, Agoo, LU as NGO","7","RESOLUTION NO. 127-2008.pdf","21","2008-05-15","0");
INSERT INTO tbl_resolution VALUES("127 - 2010","","Approve FY 2010 GF AB, of Santol, LU","2","Resolution 127-2010.pdf","21","2010-06-17","0");
INSERT INTO tbl_resolution VALUES("127 - 2011","","Condole w/ former Mayor ZosimoLomboy, Burgos, LU","7","Resolution 127-2011.pdf","21","2011-04-20","0");
INSERT INTO tbl_resolution VALUES("127 - 2012","","Endorse to VP JejomarBinay the request of DMMMSU for allocation of P25 M College of Law Bldg.","1,10,18","Resolution 127-2012.pdf","21","2012-03-22","0");
INSERT INTO tbl_resolution VALUES("127 - 2013","","Approve Res # 12-2011, of the SB of San Juan, LU and the MOA entered into by the Mun Mayor.","3,6,7,10,20","RESOLUTION 127-2013.pdf","21","2013-04-17","0");
INSERT INTO tbl_resolution VALUES("127 - 2014","2014 - 0099","Ord # 13, s 2013, An Ord Amending the 2002 Traffic Ord of the Mun of Bauang, LU, Part Art II ? Parking, No Parking, Loading and Unloading Zones and Providing Add?l Provisions Thereto","3","RESOLUTION 127-2014.pdf","21","2014-04-10","0");
INSERT INTO tbl_resolution VALUES("128 - 1999","","Direct Mr. Gerardo Mangaliag, Sr. to effect issuance of the Warrant of Levy on the real properties of BPPC","27","RESOLUTION NO.128-99.pdf","21","1999-03-29","0");
INSERT INTO tbl_resolution VALUES("128 - 2007","","Contract of Lease, with the Radyong Bayan, Quezon City, Phil. Broadcasting Service (PBS) in connection with the use of PGLU property at Brgy. Bungol, Balaoan, LU, for the construction of the Transmitter House and AM Antenna Tower for the its Radio Station in the province","32","RESOLUTION NO. 128-2007.pdf","21","2007-05-17","0");
INSERT INTO tbl_resolution VALUES("128 - 2008","","Approve EO # 07-2008, of Mayor Pablo c. Ortega, of the City of San Fernando, LU","20","RESOLUTION NO. 128-2008.pdf","21","2008-05-15","0");
INSERT INTO tbl_resolution VALUES("128 - 2010","","Approve FY 2010 GF SB # 2, of Tubao, LU","2","Resolution 128-2010.pdf","21","2010-06-17","0");
INSERT INTO tbl_resolution VALUES("128 - 2011","","Renew COL w/ qualified stall lessees at Mabanag Justice Hall &Aguila Rd","7","Resolution 128-2011.pdf","21","2011-04-28","0");
INSERT INTO tbl_resolution VALUES("128 - 2012","","Approve Ord # 18, s 2011, of the SB of Bauang, LU, “An Ord Amending Ord # 8, s 2011, An Ord Amending Art 10, Sec 99 of Ord # 9, s 2010, An Ord Promulgating the Children’s Code of the Mun of Bauang”","5","Resolution 128-2012.pdf","21","2012-03-22","0");
INSERT INTO tbl_resolution VALUES("128 - 2013","","MOA with BFAR, Mun of LU &Paraoir Rural Improvement Club of Paraoir, Balaoan, La Union for the implementation of the Bangus Deboning Project for the beneficiary-fisherfolk livelihood & income generation.","3,6,7,11,20","RESOLUTION 128-2013.pdf","21","2013-04-17","0");
INSERT INTO tbl_resolution VALUES("128 - 2014","2014 - 0100","Ord # 14, s 2013, An Ord Amending Art II, Sec 17 of Ord # 11, s 2011, ?An Ord Amending Ord # 15, s 2008, An Ord Adopting a Comprehensive Transportation and Traffic Regulations for the Administration and Enforcement, Providing Penalties for Violation Thereof, and for the Repeal of All Ordinances in Conflict Therewith, for the Enforcement of the ?No Left Turn Policy? and the ?Modification of the Route of Traffic During Interment and & Providing Add?l Provisions Thereof?","3","RESOLUTION 128-2014.pdf","21","2014-04-10","0");
INSERT INTO tbl_resolution VALUES("129 - 1999","","Condole w/ BC Estrella Casino, Brgy. Canaoay, CSF","30","RESOLUTION NO.129-99.pdf","21","1999-03-29","0");
INSERT INTO tbl_resolution VALUES("129 - 2007","","Approve FY 2007 GF AB,  of Pugo, LU","2","RESOLUTION NO. 129-2007.pdf","21","2007-05-17","0");
INSERT INTO tbl_resolution VALUES("129 - 2008","","Request Pres. GMA for a Presidential Instruction/Intervention to and Expedite the Transfer of Ownership and Development of the Property Owned by the National Government thru the DOT-PTA located at the Kennon Road, Rosario, LU Junction Road for the proposed “One Stop Shop” for Eco-Tourism trade and Investment promotions for the province and Region I","32","RESOLUTION NO. 129-2008.pdf","21","2008-05-22","0");
INSERT INTO tbl_resolution VALUES("129 - 2010","","Enact AO appropriating P10 M for the SP Session Hall (Phase 7) & LU Livelihood Loan Assistance Program","2,18","Resolution 129-2010.pdf","21","2010-06-24","0");
INSERT INTO tbl_resolution VALUES("129 - 2011","","Adjust SG of Mrs. Lourdes Orpilla& Mr. Igmedio Hidalgo, Jr","18","Resolution 129-2011.pdf","21","2011-04-28","0");
INSERT INTO tbl_resolution VALUES("129 - 2012","","Return City Ord # 2011-09, of the SP of the City of San Fdo, LU, : “An Ord Amending City Ord # 2004-006, An Ord Promulgating Rules & Regulations for the Protection of Children in the City of San Fdo","5","Resolution 129-2012.pdf","21","2012-03-22","0");
INSERT INTO tbl_resolution VALUES("129 - 2013","","Approve the FY 2013 GF SB # 1, of the SB of Burgos, La Union.","1,6,7,9,10","RESOLUTION 129-2013.pdf","21","2013-04-25","0");
INSERT INTO tbl_resolution VALUES("130 - 1999","","P5,000.00 F/A to Brgy. Corrooy, Santol, LU, for the construction of a basketball court with stand at Sitio Corrooy Norte","27","RESOLUTION NO.130-99.pdf","21","1999-04-15","0");
INSERT INTO tbl_resolution VALUES("130 - 2007","","Approve FY 2007 GFAB, of Balaoan, LU","2","RESOLUTION NO. 130-2007.pdf","21","2007-05-17","0");
INSERT INTO tbl_resolution VALUES("130 - 2008","","MOU w/ the Phil. Overseas Employment Administration in connection with the Anti-Illegal Recruitment (AIR) Information Campaign","1","RESOLUTION NO. 130-2008.pdf","21","2008-05-22","0");
INSERT INTO tbl_resolution VALUES("130 - 2010","","MOA w/ GTZ in connection w/ the extension of the Integrated Real Property Tax &Jt Transfer Project w/ other LGUs ","18,31","Resolution 130-2010.pdf","21","2010-06-24","0");
INSERT INTO tbl_resolution VALUES("130 - 2011","","Approve Tax Ord # 2010-001, of the City of San Fernando, LU, “An Ord Amending Art A & C of Chapter 3 & Art C of Chapter 5 of Tax Ord # 2009-001, Otherwise Known as the 2010 Revenue Code of the CSF, LU”","20","Resolution 130-2011.pdf","21","2011-04-28","0");
INSERT INTO tbl_resolution VALUES("130 - 2012","","Realign P4M from the Peace & Order Initiative Fund to Intelligence & Confidential Fund","1","Resolution 130-2012.pdf","21","2012-03-22","0");
INSERT INTO tbl_resolution VALUES("130 - 2013","","MOA w/ the Yuanhong Investment Corp re: proposed preliminary study of “An Integrated Amburayan River Flood Control Project Cum Livelihood Along Lower Amburayan River”","1,3,10","RESOLUTION 130-2013.pdf","21","2013-05-02","0");
INSERT INTO tbl_resolution VALUES("130 - 2014","2014 - 0097","Mun Ord # 42-2012, An Ord to Prohibit the Unauthorized Wearing of PNP/AFP Uniforms by any Individual who is not a Legitimate Member of the PNP/AFP w/n the Territorial Jurisdiction of the Mun of Luna, LU","3","RESOLUTION 130-2014.pdf","21","2014-04-10","0");
INSERT INTO tbl_resolution VALUES("131 - 1999","","P10,000.00 F/A to Brgy. Oaqui No. 4, Luna, LU, for the purchase of garden tools","27","RESOLUTION NO.131-99.pdf","21","1999-04-15","0");
INSERT INTO tbl_resolution VALUES("131 - 2007","","Approve FY 2007 GF SB # 1,  of Bagulin, LU","2","RESOLUTION NO. 131-2007.pdf","21","2007-05-17","0");
INSERT INTO tbl_resolution VALUES("131 - 2008","","MOA w/ DA- RFO I pertaining to the fund transfer of P10 M for the implementation of Farm-to-Market Road (FMR) projects","1","RESOLUTION NO. 131-2008.pdf","21","2008-05-22","0");
INSERT INTO tbl_resolution VALUES("131 - 2010","","MOA w/ DOH in connection w/ the 2009 Maternal Neonatal Child Health & Nutrition Grant Facility ","2,7,18","Resolution 131-2010.pdf","21","2010-06-24","0");
INSERT INTO tbl_resolution VALUES("131 - 2011","","Approve the 2011 Mun Revenue Code of the Mun of Naguilian, LU","20","Resolution 131-2011.pdf","21","2011-04-28","0");
INSERT INTO tbl_resolution VALUES("131 - 2012","","Condole w/ the bereaved family of SBM Franklin M. Lales, Pugo","1,3,5,6,7,9,10,11,12,13,18,19,20","Resolution 131-2012.pdf","21","2012-03-22","0");
INSERT INTO tbl_resolution VALUES("131 - 2013","","Approve FY 2013 GF AB, of Luna, La Union.","6,9,10,11","RESOLUTION 131-2013.pdf","21","2013-05-09","0");
INSERT INTO tbl_resolution VALUES("132 - 1999","","P5,000.00 F/A to Brgy. San Martin, Bacnotan, LU, for the construction of a drainage canal","27","RESOLUTION NO.132-99.pdf","21","1999-04-15","0");
INSERT INTO tbl_resolution VALUES("132 - 2007","","Approve FY 2007 GF SB # 1, of Naguilian, LU","2","RESOLUTION NO. 132-2007.pdf","21","2007-05-17","0");
INSERT INTO tbl_resolution VALUES("132 - 2008","","MOA w/ the La Union Christian Comprehensive College, Rosario, LU, in connection with the availment of medical, surgical, and dental services of its students, faculty members and staff at the Rosario District Hospital, Rosario, LU","1","RESOLUTION NO. 132-2008.pdf","21","2008-05-22","0");
INSERT INTO tbl_resolution VALUES("132 - 2010","","Amend Res # 284-2009","20","Resolution 132-2010.pdf","21","2010-06-24","0");
INSERT INTO tbl_resolution VALUES("132 - 2011","","Approve Ord # 2010-82, of the SB of Santol, LU, “Ord Providing for the 2010 Revised Revenue Code of Santol, LU”","20","Resolution 132-2011.pdf","21","2011-04-28","0");
INSERT INTO tbl_resolution VALUES("132 - 2012","","Realign P1.4 M to Gasoline, Oil & Lubricants for the maintenance of roads.","20","Resolution 132-2012.pdf","21","2012-03-29","0");
INSERT INTO tbl_resolution VALUES("132 - 2013","","COL with SITEL Phils Inc., Baguio City in connection w/ the continued use of the office use at LUPAC Bldg","6,9","RESOLUTION 132-2013.pdf","21","2013-05-09","0");
INSERT INTO tbl_resolution VALUES("133 - 1999","","P5,000.00 F/A to Brgy. Sablut, Balaoan, LU, for the purchase of additional streetlights","27","RESOLUTION NO.133-99.pdf","21","1999-04-15","0");
INSERT INTO tbl_resolution VALUES("133 - 2007","","Approve FY 2007 GF SB # 1, of Caba, LU","20","RESOLUTION NO. 133-2007.pdf","21","2007-05-24","0");
INSERT INTO tbl_resolution VALUES("133 - 2008","","Enact an Appropriation  in the amount of 106,423.48 for Supplemental Budget No. 3, of the General Fund to cover the payment of Terminal Leave Pay of Mr. Albert Birr","1","RESOLUTION NO. 133-2008.pdf","21","2008-05-22","0");
INSERT INTO tbl_resolution VALUES("133 - 2010","","Dr. Godofredo Garcia to enter into a MOA w/ PCSO & authorizing him to pick up 1 Ambulance for Naguilian Dist Hosp","2,7,18,20","Resolution 133-2010.pdf","21","2010-06-24","0");
INSERT INTO tbl_resolution VALUES("133 - 2011","","Approve Mun Ord # 03-2011, of the SB of San Juan, LU, “An Amendatory Ord in the Time of Payment Provisions Contained in the General Tax & Revenue Ord of 2010, as Amended”","20","Resolution 133-2011.pdf","21","2011-04-28","0");
INSERT INTO tbl_resolution VALUES("133 - 2012","","Approve SB # 1, of the Economic Enterprise involving an appropriation of P3,343,477.27.","18,20","Resolution 133-2012.pdf","21","2012-03-29","0");
INSERT INTO tbl_resolution VALUES("133 - 2013","","Adjust Salary of Ms. Elsa Barreto (Midwife III) & Ms. ErlindaOstrea (Nurse IV), from SG-13, S-5 to SG-19, S-8 & SG-14, S-5 to SG-20, S-8, respectively","3,20","RESOLUTION 133-2013.pdf","21","2013-05-09","0");
INSERT INTO tbl_resolution VALUES("134 - 1999","","P20,000.00 F/A to Brgy. Baroro, Bacnotan, LU, for the construction of a comfort room","27","RESOLUTION NO.134-99.pdf","21","1999-04-15","0");
INSERT INTO tbl_resolution VALUES("134 - 2007","","Approve FY 2007 GF SB # 1, of Pugo, LU","20","RESOLUTION NO. 134-2007.pdf","21","2007-05-24","0");
INSERT INTO tbl_resolution VALUES("134 - 2008","","State of Calamity due to Typhoon “Cosme” (International name Halong)","1","RESOLUTION NO. 134-2008.pdf","21","2008-05-22","0");
INSERT INTO tbl_resolution VALUES("134 - 2010","","Request PCSO to donate 5 Ambulances for the District Hospitals","2,18,20","Resolution 134-2010.pdf","21","2010-06-24","0");
INSERT INTO tbl_resolution VALUES("134 - 2011","","Approve Mun Ord # 04-2011, of the SB of San Juan, LU, “An Ord Prescribing Rental of Stall a the Newly Built Market Bldg”","20","Resolution 134-2011.pdf","21","2011-04-28","0");
INSERT INTO tbl_resolution VALUES("134 - 2012","","Approve Mun Ord # 04-2012, of the SB of Agoo, LU, “An Ord Mandating All Parents/Guardians in the Mun of Agoo to Enroll their Children Ages 3-4 Yrs Old in Day Care Education in Any Dare Care Institution”.","18","Resolution 134-2012.pdf","21","2012-03-29","0");
INSERT INTO tbl_resolution VALUES("134 - 2013","","Approve the FY 2013 GF, SB # 1, of Sto. Tomas, La Union.","1","RESOLUTION 134-2013.pdf","21","2013-05-16","0");
INSERT INTO tbl_resolution VALUES("135 - 1999","","P30,000.00 F/A to Brgy. San Simon West, Aringay, Caba, LU, for the construction of their barangay hall","27","RESOLUTION NO.135-99.pdf","21","1999-04-15","0");
INSERT INTO tbl_resolution VALUES("135 - 2007","","Approve FY 2007 GF SB # 2, of Pugo, LU","20","RESOLUTION NO. 135-2007.pdf","21","2007-05-24","0");
INSERT INTO tbl_resolution VALUES("135 - 2008","","Contract of Agreement  with Dr. Judith Efleda Chan, as a Visiting Consultant of the Department of Obstetrics and Gynecology at the Balaoan District Hospital","3","RESOLUTION NO. 135-2008.pdf","21","2008-05-22","0");
INSERT INTO tbl_resolution VALUES("135 - 2010","","Approve FY 2010 GF SB # 5, of Bauang, LU","2","Resolution 135-2010.pdf","21","2010-06-24","0");
INSERT INTO tbl_resolution VALUES("135 - 2011","","Approve Mun Ord # 10-2011, of the SB of San Juan, LU, “An Ord Prescribing Fare of Tricycle Units for Hire Operating in the Mun of San Juan, LU, as Amended Further”","20","Resolution 135-2011.pdf","21","2011-04-28","0");
INSERT INTO tbl_resolution VALUES("135 - 2012","","Return Ord # 2012-96 of the SB of Pugo, LU, “An Ord Creating a Philhealth Capitation Fund from the Proceeds of the Outpatient Benefit Package to be Provided by the PhilHealth for LGU Identified Indigent Families of the Mun of Pugo, through the Partial Subsidy Scheme of the NHIP”","18","Resolution 135-2012.pdf","21","2012-03-29","0");
INSERT INTO tbl_resolution VALUES("135 - 2013","","Approve the FY 2013 GF, SB # 1, of Luna, La Union.","1","RESOLUTION 135-2013.pdf","21","2013-05-16","0");
INSERT INTO tbl_resolution VALUES("135 - 2014","2014 - 0089","Ord # 2-2014, An Ord Amending the 2013 Env?t Code of the Mun of San Gabriel, LU","1","RESOLUTION 135-2014 (2).pdf","21","2014-04-15","0");
INSERT INTO tbl_resolution VALUES("136 - 1999","","P2,000.00 F/A to Brgy. Dili, Bauang, LU, for the purchase of a weighing scale","27","RESOLUTION NO.136-99.pdf","21","1999-04-15","0");
INSERT INTO tbl_resolution VALUES("136 - 2007","","Approve FY 2006 GF SB # 2, of San Gabriel, LU","20","RESOLUTION NO. 136-2007.pdf","21","2007-05-24","0");
INSERT INTO tbl_resolution VALUES("136 - 2008","","Concur the approval of EO # 008-2008, of the SP of the City of San Fernando, LU, “Creating the City of San Fernando Technical Working Group of the Tri-City Tourism Project within the Lingayen Gulf”","1","RESOLUTION NO. 136-2008.pdf","21","2008-05-22","0");
INSERT INTO tbl_resolution VALUES("136 - 2010","","Accredit Phil. NGO Support Program (PHANSUP), Inc. as NGO","7","Resolution 136-2010.pdf","21","2010-06-24","0");
INSERT INTO tbl_resolution VALUES("136 - 2011","","Approve Mun Ord # 07-2011, of the SB of San Juan, LU, “An Ord Amending Sec 2(j)(5) (Art A) of Chapter 2 Under the General Tax & Revenue Ord of 2010, as Amended”","20","Resolution 136-2011.pdf","21","2011-04-28","0");
INSERT INTO tbl_resolution VALUES("136 - 2012","","Approve FY 2012 GF SB # 1, of Tubao, La Union.","20","Resolution 136-2012.pdf","21","2012-03-29","0");
INSERT INTO tbl_resolution VALUES("136 - 2013","","Approve the FY 2013 GF, AB, of Bagulin, La Union.","1","RESOLUTION 136-2013.pdf","21","2013-05-16","0");
INSERT INTO tbl_resolution VALUES("137 - 1999","","P15,000.00 F/A to the PTCA of Lloren E/S, Tubao, LU, for the construction of school gate/bower","27","RESOLUTION NO.137-99.pdf","21","1999-04-15","0");
INSERT INTO tbl_resolution VALUES("137 - 2007","","Realign P528,000 to the following programs:\n\na.	Human Resource Dev’t Program                P429,000.00\nb.	Special Scholarship                                           99,000.00\n","20","RESOLUTION NO. 137-2007.pdf","21","2007-05-31","0");
INSERT INTO tbl_resolution VALUES("137 - 2008","","Approve FY 2007 GF SB # 6, of Bagulin, LU ","2","RESOLUTION NO. 137-2008.pdf","21","2008-05-22","0");
INSERT INTO tbl_resolution VALUES("137 - 2010","","Approve FY 2010 GF # 2, of CSF, LU","1","Resolution 137-2010.pdf","21","2010-07-01","0");
INSERT INTO tbl_resolution VALUES("137 - 2011","","Approve Mun Ord # 08-2011, of the SB of San Juan, LU, “An Ord Prescribing Mayor’s Permit Fee of Xerox Copier for Commercial Purpose”","20","Resolution 137-2011.pdf","21","2011-04-28","0");
INSERT INTO tbl_resolution VALUES("137 - 2012","","Return Ord # 2011-002, emb in Res # 2011-074, of the SB of Bangar, La Union, “An Ord Regulating the Use of Plastic Bags & Styrofoam in the Mun of Bangar, La Union”.","10","Resolution 137-2012.pdf","21","2012-03-29","0");
INSERT INTO tbl_resolution VALUES("137 - 2013","","MOA with BM Nancy Corazon M. Bacurnay, LUMC, Balaoan Dist Hosp& Bacnotan Dist Hosp, pertaining to the implementation of the Prov’l Indigency Medial Assistance Program with the nat’l governments assistance funds.","1,7,10,18","RESOLUTION 137-2013_001.pdf","21","2013-05-23","0");
INSERT INTO tbl_resolution VALUES("137 - 2014","2014 - 0133","\"Letter of Gov. Manuel C. Ortega respectfully requesting the Hon. Body to authorize him to enter into a joint Memorandum of Agreement (MOA) with the Bureau of Fisheries and Aquatic Resources -Regional Office I (BFAR-RFO I), the Don Mariano Marcos Memorial State University-Institute of Fisheries (DMMMSU-IF), the Municipality of Rosario, La Union and Barangay Rabon Cluster of Seaweed Growers, all of the Province of La Union, in connection with the implementation of Seaweed Development Program in the said area.\"\n","4","RESOLUTION 137-2014.pdf","21","2014-04-24","0");
INSERT INTO tbl_resolution VALUES("138 - 1999","","P7,000.00 F/A to Brgy. Macabato, Aringay, LU, for the purchase of water hose","27","RESOLUTION NO.138-99.pdf","21","1999-04-15","0");
INSERT INTO tbl_resolution VALUES("138 - 2007","","Realign P9 M under the provincial share in the Virginia Tobacco Excise Tax (RA 7171) to the following programs:\n\na.	Roads & Bridges                                         P5,000,000.00\nb.	Farmer’s Multi-Purpose Hall                      4,000,000.00\n","20","RESOLUTION NO. 138-2007.pdf","21","2007-05-31","0");
INSERT INTO tbl_resolution VALUES("138 - 2008","","Approve FY 2008 GF AB, of CSF, LU","2","RESOLUTION NO. 138-2008.pdf","21","2008-05-22","0");
INSERT INTO tbl_resolution VALUES("138 - 2010","","Approve FY 2010 GF SB # 2, of Balaoan, LU","1","Resolution 138-2010.pdf","21","2010-07-01","0");
INSERT INTO tbl_resolution VALUES("138 - 2011","","Approve Mun Ord # 06-2011, of the SB of San Juan, LU, “An Ord Prescribing Inspection Fees & Auxiliary Invoices, as Amended”","20","Resolution 138-2011.pdf","21","2011-04-28","0");
INSERT INTO tbl_resolution VALUES("138 - 2012","","Approve FY 2012 GF AB of Sto. Tomas, La Union.","1","Resolution 138-2012.pdf","21","2012-04-04","0");
INSERT INTO tbl_resolution VALUES("138 - 2013","","MOA with Phil Red Cross, Dep Ed – Div of LU & the Mun of Agoo, LU, pertaining to the implementation of the Disaster Risk Reduction in Schools in Agoo","18","RESOLUTION 138-2013.pdf","21","2013-05-23","0");
INSERT INTO tbl_resolution VALUES("138 - 2014","2014 - 0131","Letter of Governor Manuel C. Ortega respectfully requesting the \nHonorable Body to kindly review for adoption the attached 10-year Provincial Solid Waste Management Plan CY 2014-2023 approved by the Provincial Solid Waste Management Board (PSWMB) on 23 January 2014. This plan is vital and necessary in our major environment program detailed planning and implementation for effective preservation, protection of public health, conservation of our environment, life and natural resources.","4","RESOLUTION 138-2014.pdf","21","2014-04-24","0");
INSERT INTO tbl_resolution VALUES("138A- 1999","","P15,000.00 F/A to the SB of Burgos, LU, for the construction of Delles tribal hall","27","RESOLUTION NO.138A-99.pdf","21","1999-04-15","0");
INSERT INTO tbl_resolution VALUES("138B- 1999","","P10,000.00 F/A to Brgy. Suyo, Bagulin, LU, for the purchase of water hose","27","RESOLUTION NO.138B-99.pdf","21","1999-04-15","0");
INSERT INTO tbl_resolution VALUES("139 - 1999","","Realign P500,000.00 to partially cause the unpaid Bimmotobot Bridge","27","RESOLUTION NO.139-99.pdf","21","1999-04-15","0");
INSERT INTO tbl_resolution VALUES("139 - 2007","","P500.00 as Educational Assistance to all provincial personnel ","30","RESOLUTION NO. 139-2007.pdf","21","2007-06-07","0");
INSERT INTO tbl_resolution VALUES("139 - 2008","","Approve FY 2008 GF AB, of Bauang, LU ","2","RESOLUTION NO. 139-2008.pdf","21","2008-05-22","0");
INSERT INTO tbl_resolution VALUES("139 - 2010","","Adjust SG of Dr. Manuel Pocsidio","1,18","Resolution 139-2010.pdf","21","2010-07-08","0");
INSERT INTO tbl_resolution VALUES("139 - 2011","","Feature Bilingually in English &Iloko Languages all Signages& Other Informational Aspects of all gov’t properties","3,9","Resolution 139-2011.pdf","21","2011-04-28","0");
INSERT INTO tbl_resolution VALUES("139 - 2012","","Realign P1M from the Peace & Order Initiative Fund for CY 2012 to Intelligence & Confidential Fund.","20","Resolution 139-2012.pdf","21","2012-04-12","0");
INSERT INTO tbl_resolution VALUES("139 - 2013","","Approve the FY 2013 GF AB of Caba, La Union.","1,7,9","RESOLUTION 139-2013.pdf","21","2013-05-23","0");
INSERT INTO tbl_resolution VALUES("139 - 2014","2014 - 0119","Ord # 33, s 2013, An Ord Requiring the Brgys in the Mun of Naguilian, LU to Install Flood Gauge/s in Flood Prone Areas","11","RESOLUTION 139-2014.pdf","21","2014-04-24","0");
INSERT INTO tbl_resolution VALUES("140 - 1999","","AO for Salary Adjustment of RDH employees","27","RESOLUTION NO.140-99.pdf","21","1999-04-15","0");
INSERT INTO tbl_resolution VALUES("140 - 2007","","An AO appropriating  P8,075,754.73 for SB # 06 of the GF","2","RESOLUTION NO. 140-2007.pdf","21","2007-06-07","0");
INSERT INTO tbl_resolution VALUES("140 - 2008","","Approve FY 2008 GF AB, of Pugo, LU ","2","RESOLUTION NO. 140-2008.pdf","21","2008-05-22","0");
INSERT INTO tbl_resolution VALUES("140 - 2010","","Condole w/ BC Mauro Doctolero, Sr., Brgy. San Nicolas West, Agoo, LU","21","Resolution 140-2010.pdf","21","2010-07-08","0");
INSERT INTO tbl_resolution VALUES("140 - 2011","","Congratulate the first Graduates of the master in Public Management of the Ateneo School of Gov’t SY 2010-2011","18","Resolution 140-2011.pdf","21","2011-04-28","0");
INSERT INTO tbl_resolution VALUES("140 - 2012","","Realign P10M from the Economic Services to the Dev’t Fund for:\n\na. La Union Medical Center\nb. Community/Dist Hospital\n","20","Resolution 140-2012.pdf","21","2012-04-12","0");
INSERT INTO tbl_resolution VALUES("140 - 2013","","Approve Mun Ord # 001-2013, of the SB of Rosario, LU, “An Ord Enacting the New Traffic Mgt of the Mun of Rosario, LU & Implementing a Unified Route System for Tricycles”","6,7,9,10","RESOLUTION 140-2013.pdf","21","2013-05-23","0");
INSERT INTO tbl_resolution VALUES("140 - 2014","2014 - 0107","Ord # 28, s 2013, Naguilian, La Union, An Ord Institutionalizing a Program on Awards and Incentives for the 37 Brgys in the Mun, Appropriating Funds Therefor and for other Purposes","10","RESOLUTION 140-2014.pdf","21","2014-04-24","0");
INSERT INTO tbl_resolution VALUES("141 - 1999","","AO amounting P283,086.69 for Terminal Leave Pay","27","RESOLUTION NO.141-99.pdf","21","1999-04-15","0");
INSERT INTO tbl_resolution VALUES("141 - 2007","","Condole w/. Pedro Tadina, former Provincial Agriculturist","22","RESOLUTION NO. 141-2007.pdf","21","2007-06-07","0");
INSERT INTO tbl_resolution VALUES("141 - 2008","","Approve FY 2008 GF AB, of Bacnotan, LU ","2","RESOLUTION NO. 141-2008.pdf","21","2008-05-22","0");
INSERT INTO tbl_resolution VALUES("141 - 2011","","Thank Cong. Victor Ortega for pioneering the Ateneo’s School of Gov’t Master in Public Management (ASOG MPM) ","21","Resolution 141-2011.pdf","21","2011-04-28","0");
INSERT INTO tbl_resolution VALUES("141 - 2012","","Approve FY 2012 GF AB of Santol, La Union.","20","Resolution 141-2012.pdf","21","2012-04-12","0");
INSERT INTO tbl_resolution VALUES("141 - 2013","","Return Ord # 06, s 2013, of the SB of Naguilian, La Union, “An Ord Adopting Malunggay as the Official Vegetable of the of Mun of Naguilian, La Union”","1,6,7,10","RESOLUTION 141-2013.pdf","21","2013-05-23","0");
INSERT INTO tbl_resolution VALUES("142 - 1999","","P20,000.00 F/A to Brgy. Apayao, San Gabriel, LU, for the construction of an overflow system along the river","27","RESOLUTION NO.142-99.pdf","21","1999-04-15","0");
INSERT INTO tbl_resolution VALUES("142 - 2007","","Condole w/ Ms. Althea Balanon, Accountant of the CSF","30","RESOLUTION NO. 142-2007.pdf","21","2007-06-14","0");
INSERT INTO tbl_resolution VALUES("142 - 2008","","Approve FY 2008 GF AB, of Bagulin, LU ","2","RESOLUTION NO. 142-2008.pdf","21","2008-05-22","0");
INSERT INTO tbl_resolution VALUES("142 - 2011","","Congratulate employees of the PGLU who graduated from DMMMSU – Open University System Masteral Program for SY 2010-2011","1","Resolution 142-2011.pdf","21","2011-04-28","0");
INSERT INTO tbl_resolution VALUES("142 - 2012","","Condole with family of BC Emilio A. Lubid, Brgy Delles, Burgos","7","Resolution 142-2012.pdf","21","2012-04-12","0");
INSERT INTO tbl_resolution VALUES("142 - 2013","","Approve Mun Ord # 10-2013, of the SB of Agoo, LU, “An Ord Adopting the Official Meaning of the Mun Seal of the Mun of Agoo, La Union”","1,6,7,10","RESOLUTION 142-2013.pdf","21","2013-05-23","0");
INSERT INTO tbl_resolution VALUES("143 - 1999","","P20,000.00 F/A to Brgy. Lon-oy, San Gabriel, LU, for the construction of footbridges","27","RESOLUTION NO.143-99.pdf","21","1999-04-15","0");
INSERT INTO tbl_resolution VALUES("143 - 2007","","Condole w/ BKRomyMallare, Brgy. IV, CSF","30","RESOLUTION NO. 143-2007.pdf","21","2007-06-14","0");
INSERT INTO tbl_resolution VALUES("143 - 2008","","Approve FY 2008 GF SB # 1, of Tubao, LU ","2","RESOLUTION NO. 143-2008.pdf","21","2008-05-22","0");
INSERT INTO tbl_resolution VALUES("143 - 2010","","Approve FY 2010 GF SB # 3, of Agoo, LU","1","Resolution 143-2010.pdf","21","2010-07-15","0");
INSERT INTO tbl_resolution VALUES("143 - 2011","","Condole w/ family of BC ArsenioCoilan, New Poblacion, Burgos, LU","7","Resolution 143-2011.pdf","21","2011-05-05","0");
INSERT INTO tbl_resolution VALUES("143 - 2012","","Approve the Consolidated CY 2012 Supplemental AIP of:\n\na. Office of the Prov’l Governor\nb. Office of the Prov’l Vet\nc. Office of the Prov’l Eng’r\n","20","Resolution 143-2012.pdf","21","2012-04-19","0");
INSERT INTO tbl_resolution VALUES("143 - 2013","","Return Ord # 02, s 2013, of the SB of Naguilian, La Union, “An Ord Prescribing Curfew Hours w/n the Territorial Jurisdiction of the Mun of Naguilian, La Union After the Campaign Period”.","1,9,10","RESOLUTION 143-2013.pdf","21","2013-05-23","0");
INSERT INTO tbl_resolution VALUES("144 - 1999","","P20,000.00 F/A to Brgy. Ilocanos Sur, CSF, LU, for the SK sports development","27","RESOLUTION NO.144-99.pdf","21","1999-04-15","0");
INSERT INTO tbl_resolution VALUES("144 - 2007","","Realign P300,000 from the Social Welfare and Development Program to the Health in Every in Every Home Program","18","RESOLUTION NO. 144-2007.pdf","21","2007-06-21","0");
INSERT INTO tbl_resolution VALUES("144 - 2008","","Approve FY 2008 GF SB # 2, of Tubao, LU ","2","RESOLUTION NO. 144-2008.pdf","21","2008-05-22","0");
INSERT INTO tbl_resolution VALUES("144 - 2010","","Approve FY 2010 GF SB # 4, of Pugo, LU","1","Resolution 144-2010.pdf","21","2010-07-15","0");
INSERT INTO tbl_resolution VALUES("144 - 2011","","Condole w/ family of Dr. Juan V. Komiya","20","Resolution 144-2011.pdf","21","2011-05-05","0");
INSERT INTO tbl_resolution VALUES("144 - 2012","","Approve the FY 2012 GF SB # 1, of Sudipen, La Union.","1","Resolution 144-2012.pdf","21","2012-04-19","0");
INSERT INTO tbl_resolution VALUES("144 - 2013","","Approve Mun Ord # 09-2013, of the SB of San Juan, LU, “An Ord Requesting the Food Service Industry w/n the Territorial Jurisdiction of the Mun of San Juan, LU to Include ½ Cup of Cooked Rice in their Menu”.","6,9,10,19","RESOLUTION 144-2013.pdf","21","2013-05-23","0");
INSERT INTO tbl_resolution VALUES("145 - 1999","","Set aside P25,000.00 for the office painting of the Office of the MTC Judge, Bangar, LU","27","RESOLUTION NO.145-99.pdf","21","1999-04-15","0");
INSERT INTO tbl_resolution VALUES("145 - 2007","","Concur/confirm the appointment of Ms. Catherine Franco as Provincial Budget Officer","34","RESOLUTION NO. 145-2007.pdf","21","2007-06-21","0");
INSERT INTO tbl_resolution VALUES("145 - 2008","","Approve FY 2008 GF SB # 3, of Tubao, LU ","2","RESOLUTION NO. 145-2008.pdf","21","2008-05-22","0");
INSERT INTO tbl_resolution VALUES("145 - 2010","","Approve FY 2010 GF SB # 4, of Luna, LU","1","Resolution 145-2010.pdf","21","2010-07-15","0");
INSERT INTO tbl_resolution VALUES("145 - 2011","","Condole w/ family of Judge Eufemio Molina, Bacnotan, LU","17","Resolution 145-2011.pdf","21","2011-05-05","0");
INSERT INTO tbl_resolution VALUES("145 - 2012","","Grant P5,000.00 F/A to Mr. Jose Almeida, DepEd for the purchase of gasoline.","1","Resolution 145-2012.pdf","21","2012-04-19","0");
INSERT INTO tbl_resolution VALUES("145 - 2013","","Return Ord # 10, s 2013, of the SB of Naguilian, La Union, “An Ord Requiring the Food Service Industry w/n the Territorial Jurisdiction of the Mun of Naguilian, La Union to Include ½ Cup of Cooked Rice in their Menu”  ","6,9,10,19","RESOLUTION 145-2013.pdf","21","2013-05-23","0");
INSERT INTO tbl_resolution VALUES("145 - 2014","2014 - 0150","\"Letter of Governor Manuel C. Ortega respectfully requesting the Honorable Body to pass a resolution for the transfer of the position Assistant Provincial Government Department head, Item No. 2, Grade/Step 24/1 under the Provincial Office (PLO) and its corresponding appropriation to the Office of the Provincial Accountant.\"","4","RESOLUTION 145-2014.pdf","21","2014-04-30","0");
INSERT INTO tbl_resolution VALUES("146 - 1999","","Approve FY 1999 GF SB # 1, of Caba, LU","27","RESOLUTION NO.146-99.pdf","21","1999-04-15","0");
INSERT INTO tbl_resolution VALUES("146 - 2007","","Realign P1,746,221.65 under the provincial share in the Virginia Tobacco Excise Tax (RA 7171) to the Roads and Bridges Program","20","RESOLUTION NO. 146-2007.pdf","21","2007-06-21","0");
INSERT INTO tbl_resolution VALUES("146 - 2008","","Approve FY 2008 GF SB # 1, of Balaoan, LU ","2","RESOLUTION NO. 146-2008.pdf","21","2008-05-22","0");
INSERT INTO tbl_resolution VALUES("146 - 2010","","Congratulate INC","9","Resolution 146-2010.pdf","21","2010-07-15","0");
INSERT INTO tbl_resolution VALUES("146 - 2011","","Condole w/ family of Mrs. AngelitaZarate, Rosario, LU","20","Resolution 146-2011.pdf","21","2011-05-05","0");
INSERT INTO tbl_resolution VALUES("146 - 2012","","Condole with family of SPM Roque Tiu, Leyte.","10","Resolution 146-2012.pdf","21","2012-04-19","0");
INSERT INTO tbl_resolution VALUES("146 - 2013","","Approve SB # 1, Involving the amount of P10,746,853.57.","1,3,9,10","RESOLUTION 146-2013.pdf","21","2013-05-23","0");
INSERT INTO tbl_resolution VALUES("146 - 2014","2014 - 0149","\"Letter of Governor Manuel C. Ortega respectfully requesting the Honorable Body to authorize him for and on behalf of the Provincial Government of La Union (PGLU) to enter into a MOA with the Department of Public Works and Highways (DPWH) to be represented by its OIC Assistant Regional Director Rommel N. Tan, OIC Assistant District Engineer Raul P. Gali, 1st Engineering District - La Union, in connection with the implementation of the Special Local Road Fund (SLRF) with funding under the Motor Vehicle User\'s charge Law (MVUC) Special Local Road Fund.\"","4","RESOLUTION 146-2014.pdf","21","2014-04-30","0");
INSERT INTO tbl_resolution VALUES("147 - 1999","","P10,000.00 F/A to Brgy. Cuenca, Pugo, LU, for the renovation of their waiting sheds","27","RES 147-99.pdf","21","1999-04-15","0");
INSERT INTO tbl_resolution VALUES("147 - 2007","","Realign P4 M to the following programs:\n\na.	Roads and Bridges Program                      P3,500,000.00\nb.	Agricultural Assistance Program                   500,000.00\n","32","RESOLUTION NO. 147-2007.pdf","21","2007-06-21","0");
INSERT INTO tbl_resolution VALUES("147 - 2008","","Approve FY 2008 GF SB # 1, of San Gabriel, LU ","2","RESOLUTION NO. 147-2008.pdf","21","2008-05-22","0");
INSERT INTO tbl_resolution VALUES("147 - 2010","","Condole w/ BC Gerardo Casugay, Sr., Brgy. Bangbangolan, CSF, LU","12","Resolution 147-2010.pdf","21","2014-07-15","0");
INSERT INTO tbl_resolution VALUES("147 - 2011","","Concur appointment of Mr. Samuel F. Delizo as Prov’l Assessor","20","Resolution 147-2011.pdf","21","2011-05-05","0");
INSERT INTO tbl_resolution VALUES("147 - 2012","","Approve the FY 2012 GF AB of the SB of Bauang, La Union.","1","Resolution 147-2012.pdf","21","2012-04-19","0");
INSERT INTO tbl_resolution VALUES("147 - 2013","","Approve the CY 2013 Supplemental AIP for the equipment upgrading & maintenance of the sound system at Diego Silang Hall for the PITO","1,6,7,10","RESOLUTION 147-2013.pdf","21","2013-05-23","0");
INSERT INTO tbl_resolution VALUES("147 - 2014","2014 - 0144","Recommend approval of the FY 2014 GF AB, of Bagulin, LU","1","RESOLUTION 147-2014.pdf","21","2014-04-30","0");
INSERT INTO tbl_resolution VALUES("148 - 1999","","P10,000.00 F/A to Brgy. Bawanta, Bauang, LU, for the improvement of their barangay roads","27","RESOLUTION NO.148-99.pdf","21","1999-04-15","0");
INSERT INTO tbl_resolution VALUES("148 - 2007","","An AO appropriating P2,976,319.65  for SB # 07 of the GF","18","RESOLUTION NO. 148-2007.pdf","21","2007-06-21","0");
INSERT INTO tbl_resolution VALUES("148 - 2008","","Approve FY 2008 GF SB # 2, of San Gabriel, LU ","2","RESOLUTION NO. 148-2008.pdf","21","2008-05-22","0");
INSERT INTO tbl_resolution VALUES("148 - 2010","","2 Working Committees","18","Resolution 148-2010.pdf","21","2010-07-15","0");
INSERT INTO tbl_resolution VALUES("148 - 2011","","Condole w/ family of Vice Gov Gregorio Sanchez, Cebu","21","Resolution 148-2011.pdf","21","2011-05-05","0");
INSERT INTO tbl_resolution VALUES("148 - 2012","","Approve the FY 2012 GF AB of the SB of Sudipen, La Union.","1","Resolution 148-2012.pdf","21","2012-04-19","0");
INSERT INTO tbl_resolution VALUES("148 - 2013","","Allow the Metro Agoo Waterworks Corp to operate & install water system for water consumption","10,20","RESOLUTION 148-2013.pdf","21","2013-05-23","0");
INSERT INTO tbl_resolution VALUES("148 - 2014","2014 - 0145","Recommend approval of the FY 2014 GF AB, of Pugo, LU","1","RESOLUTION 148-2014.pdf","21","2014-04-30","0");
INSERT INTO tbl_resolution VALUES("149 - 1999","","P10,000.00 F/A to Brgy. Dili, Bauang, LU, for the concreting of a portion of their farm to market road","27","RESOLUTION NO.149-99.pdf","21","1999-04-15","0");
INSERT INTO tbl_resolution VALUES("149 - 2007","","Approve FY 2007 GF SB # 1, of Balaoan, LU","20","RESOLUTION NO. 149-2007.pdf","21","2007-06-21","0");
INSERT INTO tbl_resolution VALUES("149 - 2008","","Approve FY 2008 GF SB # 1, of Bagulin, LU","2","RESOLUTION NO. 149-2008.pdf","21","2008-05-22","0");
INSERT INTO tbl_resolution VALUES("149 - 2010","","Confirm appt. of:\n\na.	Dr. Geoffrey S. Tilan, Prov’l Admin\nb.	Mr. Adamor L. Dagang, Prov’l Info Officer\nc.	Ms. Mila L. Gamboa, Prov’l Pop Officer\n","1","Resolution 149-2010.pdf","21","2010-07-22","0");
INSERT INTO tbl_resolution VALUES("149 - 2011","","Approve FY 2011 GF AB of Pugo, LU","1","Resolution 149-2011.pdf","21","2011-05-12","0");
INSERT INTO tbl_resolution VALUES("149 - 2012","","Approve Ord # 03, s 2012, of the SB of Naguilian, LU, “An Ord Prohibiting the Destruction of Gov’t-Owned Facilities & Structures w/n the Territorial Jurisdiction of the Mun of Naguilian, & Imposing Penalties to Violators Thereof”","1","Resolution 149-2012.pdf","21","2012-04-19","0");
INSERT INTO tbl_resolution VALUES("149 - 2013","","MOU with the NDRRMC pertaining to the turn-over of 1 unit rigid Hull Inflatable Rubber Boat ","11","RESOLUTION 149-2013.pdf","21","2013-05-30","0");
INSERT INTO tbl_resolution VALUES("149 - 2014","2014 - 0146","Recommend approval of the FY 2014 GF SB # 1, of Sudipen, La Union.","1","RESOLUTION 149-2014.pdf","21","2014-04-30","0");
INSERT INTO tbl_resolution VALUES("150 - 1999","","Return Res # 98-81, of the SB of Aringay, LU, Granting the Request of Mrs. Erlinda Florentino for the Conversion of Lot No. 2611 Covered by Tax Declaration No. 012-01567 Located at San Benito Norte, Aringay, LU","24","RESOLUTION NO.150-99.pdf","21","1999-04-15","0");
INSERT INTO tbl_resolution VALUES("150 - 2007","","Approve FY 2007 GF SB # 2, of Bauang, LU","20","RESOLUTION NO. 150-2007.pdf","21","2007-06-21","0");
INSERT INTO tbl_resolution VALUES("150 - 2008","","Approve FY 2008 GF SB # 2, of Bagulin, LU ","2","RESOLUTION NO. 150-2008.pdf","21","2008-05-22","0");
INSERT INTO tbl_resolution VALUES("150 - 2010","","Approve FY 2010 GF AB of Aringay, LU","1","Resolution 150-2010.pdf","21","2010-07-22","0");
INSERT INTO tbl_resolution VALUES("150 - 2011","","Approve FY 2011 GF SB # 1, of the City of San Fernando, LU","1","Resolution 150-2011.pdf","21","2011-05-12","0");
INSERT INTO tbl_resolution VALUES("150 - 2012","","Approve Ord # 2011-095, of the SB of Santol, LU, “An Ord Establishing the Santol Handicrafts Business Center & Declaring the Same as an Economic Enterprise in the Mun of Santol”","10","Resolution 150-2012.pdf","21","2012-04-19","0");
INSERT INTO tbl_resolution VALUES("150 - 2013","","Renewal of Contract of Lease w/ the Viva Video City for 2 yrs.","7","RESOLUTION 150-2013.pdf","21","2013-05-30","0");
INSERT INTO tbl_resolution VALUES("150 - 2014","2014 - 0147","Recommend approval of the FY 2014 GF SB # 2, of Agoo, La Union.","1","RESOLUTION 150-2014.pdf","21","2014-04-30","0");
INSERT INTO tbl_resolution VALUES("151 - 1999","","Approve Ord # 01-99, of the SB of San Juan, LU, Enjoining the Raising of the Philippine Flag at Half Mast When a Municipal Official Dies and Lays in State W/n that Municipality","24","RESOLUTION NO.151-99.pdf","21","1999-04-15","0");
INSERT INTO tbl_resolution VALUES("151 - 2007","","Approve FY 2007 GF SB # 3, of San Gabriel, LU","20","RESOLUTION NO. 151-2007.pdf","21","2007-06-21","0");
INSERT INTO tbl_resolution VALUES("151 - 2008","","Approve FY 2008 GF SB # 1, of Bacnotan, LU ","2","RESOLUTION NO. 151-2008.pdf","21","2008-05-22","0");
INSERT INTO tbl_resolution VALUES("151 - 2010","","Congratulate Atty. Benjamin P. Sapitula as new DMMMSU President","10","Resolution 151-2010.pdf","21","2010-07-22","0");
INSERT INTO tbl_resolution VALUES("151 - 2011","","Approve FY 2011 GF SB # 1, of Balaoan, LU","1","Resolution 151-2011.pdf","21","2011-05-12","0");
INSERT INTO tbl_resolution VALUES("151 - 2012","","Return Ord # 2011-003, of the SB of Bangar, LU, “An Ord Prescribing the Schedule of Computer Services for Minors w/n the Mun of Bangar”.","10","Resolution 151-2012.pdf","21","2012-04-19","0");
INSERT INTO tbl_resolution VALUES("151 - 2013","","Grant the excavation along road shoulders of Manila North Rd; Agoo – Baguio City Rd; Agoo Beach Rd; Processional Rd “A” & Agoo Processional Rd ‘B” by Metro Agoo Waterworks Inc., for the installation/laying of water supply/distribution pipes in Agoo","3,20","RESOLUTION 151-2013.pdf","21","2013-05-30","0");
INSERT INTO tbl_resolution VALUES("151 - 2014","2014 - 0084","An Ord Establishing the Mun Birthing Clinic of Pugo, LU & Defining Its Functions, Operations & Administration","9","RESOLUTION 151-2014.pdf","21","2014-04-30","0");
INSERT INTO tbl_resolution VALUES("152 - 1999","","Approve Mun Ord # 01-99, of the SB of Balaoan, LU, Amending Mun Ord # 5, s 1993 Known as the Municipal Tax Code","24","RESOLUTION NO.152-99.pdf","21","1999-04-15","0");
INSERT INTO tbl_resolution VALUES("152 - 2007","","Approve FY 2007 GF SB # 2, of Bagulin, LU","20","RESOLUTION NO. 152-2007.pdf","21","2007-06-21","0");
INSERT INTO tbl_resolution VALUES("152 - 2008","","Approve FY 2008 GF SB # 2, of Bacnotan, LU ","2","RESOLUTION NO. 152-2008.pdf","21","2008-05-22","0");
INSERT INTO tbl_resolution VALUES("152 - 2010","","Contract of Consultancy of the ff:\n\na.	Atty. Gerardo A. Viloria\nb.	Mr. Floresto C. Sayangda\nc.	Col. Roberto C. Ortega, Sr\nd.	Judge Joven F. Costales\ne.	Mr. Edgar B. Ferrido\nf.	Mr. Avelino A. Lomboy\ng.	Atty. Bellarmin A. Flores II\nh.	Ms. Violeta L. Balbin\ni.	Mr. Carlito V. dela Cruz\nj.	Mr. Mario Lacsamana\nk.	Ms. Jose L. Macusi\nl.	Engr. Pablo A. Salanga\nm.	Mr. Justiniano A. ARzadon\nn.	Dr. Manuel R. Borja\n","1","Resolution 152-2010.pdf","21","2010-07-22","0");
INSERT INTO tbl_resolution VALUES("152 - 2011","","Approve FY 2011 GF SB # 2, of Tubao, LU","1","Resolution 152-2011.pdf","21","2011-05-12","0");
INSERT INTO tbl_resolution VALUES("152 - 2012","","Congratulate Atty. Placido O. Garcia III for passing the 2011 Bar Exams.","13","Resolution 152-2012.pdf","21","2012-04-19","0");
INSERT INTO tbl_resolution VALUES("152 - 2013","","Grant the excavation along the shoulder of the Nat’l Hi-way from Sudipen to San Fernando City by Underground Technologies, Inc. for the installation of underground fiber optic cable including aerial installation & bridge attachment","1","RESOLUTION 152-2013.pdf","21","2013-05-30","0");
INSERT INTO tbl_resolution VALUES("152 - 2014","2014 - 0085","Ord # 2013-109, A Code Promulgating Policies and Measures for the Prevention & Control of HIV/AIDS in the Mun of Pugo, LU","9","RESOLUTION 152-2014.pdf","21","2014-04-30","0");
INSERT INTO tbl_resolution VALUES("153 - 1999","","Approve Ord # 2-99, of the SB of Sto. Tomas, LU, Providing, Conservation & Dev’t of the Coastal & Marine Resources as Well as Regulating the Fisheries & Fishing Enterprises in that Municipality & for Other Purpose as Mandated by RA 7160","24","RESOLUTION NO.153-99.pdf","21","1999-04-15","0");
INSERT INTO tbl_resolution VALUES("153 - 2007","","Approve FY 2007 GF SB # 1, of Luna, LU","20","RESOLUTION NO. 153-2007.pdf","21","2007-06-21","0");
INSERT INTO tbl_resolution VALUES("153 - 2008","","Approve FY 2008 GF SB # 1, of Pugo, LU","2","RESOLUTION NO. 153-2008.pdf","21","2008-05-22","0");
INSERT INTO tbl_resolution VALUES("153 - 2010","","Authorize the Execution of the Interim Agreement for the Extension of the Exclusive Right of Vivant Energy Corp &Gigawatt Power Inc. to purchase the properties w/n the Bauang Diesel Power Plant, & authorize the Gov. to executive an agreement w/ prospective buyer","10","Resolution 153-2010.pdf","21","2010-07-22","0");
INSERT INTO tbl_resolution VALUES("153 - 2011","","Condole w/ the late Florencio del Moral, SBM, Sudipen, LU","11","Resolution 153-2011.pdf","21","2011-05-12","0");
INSERT INTO tbl_resolution VALUES("153 - 2012","","Return Ord # 01-2012, of the SB of San Juan, La Union, “An Ord Prescribing Fees of the Gov’t Issued ID Cards by the Local Gov’t of San Juan, La Union”","1","Resolution 153-2012.pdf","21","2012-04-26","0");
INSERT INTO tbl_resolution VALUES("153 - 2013","","Approve Ord # 08, s 2013, of the SB of Naguilian, LU, ”An Ord Institutionalizing, Promoting & Developing Organic Agriculture in Sudipen, LU, Providing Funds Therefore & for Other Purposes”","1,3,7,10,12,20","RESOLUTION 153-2013.pdf","21","2013-05-30","0");
INSERT INTO tbl_resolution VALUES("153 - 2014","2014 - 0132","Request Sec. Rogelio L. Singson, DPWH, to cause the immediate repair of the damaged portions of the AmburayanRiver Dike Part. at Brgys. Ma. Cristina West, Ma. Cristina East and Gen. Prim West, all of the Mun of Bangar, LU","10","RESOLUTION 153-2014.pdf","21","2014-04-30","0");
INSERT INTO tbl_resolution VALUES("154 - 1999","","Approve Mun Ord # 15-99, of the SB of Sudipen, LU, Prohibiting & Penalizing the Dumping of Waste Products, Toxic Chemicals & Other Harmful Substances in or Along the Amburayan River, Irrigation Canals & Other Water Ways W/n the Territorial Jurisdiction of that Municipality","24","RESOLUTION NO.154-99.pdf","21","1999-04-15","0");
INSERT INTO tbl_resolution VALUES("154 - 2007","","Approve FY 2007 GF SB # 1, of Bauang, LU","20","RESOLUTION NO. 154-2007.pdf","21","2007-06-21","0");
INSERT INTO tbl_resolution VALUES("154 - 2008","","Approve FY 2008 GF SB # 2, of Pugo, LU ","2","RESOLUTION NO. 154-2008.pdf","21","2008-05-22","0");
INSERT INTO tbl_resolution VALUES("154 - 2010","","An Ord appropriating P32,531,367.00 for SB # 4","1,18","Resolution 154-2010.pdf","21","2010-07-29","0");
INSERT INTO tbl_resolution VALUES("154 - 2011","","Return Mun Ord # 13-2011, of the SB of San Juan, LU, “San Juan Market Code”","19","Resolution 154-2011.pdf","21","2011-05-12","0");
INSERT INTO tbl_resolution VALUES("154 - 2012","","Approve Ord # 2011-001, emb in Res # 2011-073, of the SB of Bangar, LU, “The Mun Cemetery Ord of Bangar, LU & Prescribing the Rules & Regulations in the Use & Operation of the Same”","18","Resolution 154-2012.pdf","21","2012-04-26","0");
INSERT INTO tbl_resolution VALUES("154 - 2013","","Approve Ord # 94, s 2013, of the SB of Sudipen, LU, “An Ord Institutionalizing, Promoting & Developing Organic Agriculture in Sudipen, LU, Providing Funds Therefore & for Other Purposes”","1,3,7,10,12,20","RESOLUTION 154-2013.pdf","21","2013-05-30","0");
INSERT INTO tbl_resolution VALUES("154 - 2014","2014 - 0153","\"Letter of MCO respectfully requesting the August Body to authorize him to enter into a MOA with DTI- Provincial Office represented by Director Daria R. Mingaracal relative  to the DTI\'s grant of financial assistance in the amount of P950,000.00 under the agency\'s Shared Service Facility (SSF) Program which will be used for the enhanced operation and acquisition of additional equipments of the La Union Honey Bee Center located at Barangay Raois, Bacnotan, La Union.\"","4","RESOLUTION 154-2014.pdf","21","2014-04-30","0");
INSERT INTO tbl_resolution VALUES("155 - 1999","","Approve Ord # 07-99, of the SB of Santol, LU, Providing for a Sanitary Code in that Municipality","24","RESOLUTION NO.155-99.pdf","21","1999-04-15","0");
INSERT INTO tbl_resolution VALUES("155 - 2007","","Approve the terminal leave benefit claim of Ms. JovitaDalaza, ","20","RESOLUTION NO. 155-2007.pdf","21","2007-06-21","0");
INSERT INTO tbl_resolution VALUES("155 - 2008","","Approve FY 2008 GF SB # 1, of Agoo, LU ","18","RESOLUTION NO. 155-2008.pdf","21","2008-05-22","0");
INSERT INTO tbl_resolution VALUES("155 - 2010","","Request all Municipalities w/o ENRO Offices to appoint/designate an Environmental Management Coordinator (EMC) & providing funds to support thereof","1,18","Resolution 155-2010.pdf","21","2010-07-29","0");
INSERT INTO tbl_resolution VALUES("155 - 2011","","Return Mun Ord # 11-2011, of the SB of San Juan, LU, “An Ord Regulating the Time of Parking Along the Road Shoulders of Manila North Road”","9","Resolution 155-2011.pdf","21","2011-05-12","0");
INSERT INTO tbl_resolution VALUES("155 - 2012","","Approve Ord # 2011-094, of the SB of Santol, LU, “Ord Declaring Every Third Wk of Nov & Every Year Thereafter as “Santol Drug-Abuse Prevention & Control Wk Held Annually Every Month of Nov & Providing Funds Therefore”.","3","Resolution 155-2012.pdf","21","2012-04-26","0");
INSERT INTO tbl_resolution VALUES("155 - 2013","","Grant the excavation along the road shoulders of Agoo-Baguio City Rd for the reburying of temporary aerial DFON FOC by PLDT at Brgy. Tabora, Pugo","1,6,7,10","RESOLUTION 155-2013.pdf","21","2013-05-30","0");
INSERT INTO tbl_resolution VALUES("155 - 2014","2014 - 0154","\"Letter of Gov MCO respectfully requesting approval of this August Body to charge the amount of 15,200 incurred by Hon. Nancy M. Bacurnay during  the 4th Quarter Regular National Council Meeting of the Provincial Board Members League of the Philippines on December 11, 2013 to the Current Appropriation CY 2014 under the Traveling and Registration Fee CY 2014 Appropriation of the Sangguniang Panlalawigan Office.\"\n","4","RESOLUTION 155-2014.pdf","21","2014-04-30","0");
INSERT INTO tbl_resolution VALUES("156 - 1999","","Approve Ord # 114, of the SB of Aringay, LU, Fully Sustaining & Promoting the Implementation of the Asin Law or the Salt Iodization Program in that Municipality","24","RESOLUTION NO.156-99.pdf","21","1999-04-15","0");
INSERT INTO tbl_resolution VALUES("156 - 2007","","Realign the amount of P4,755,850 to the following programs:\n\na.	Public Bldgs./Structs. Improvement             P3,300,000.00\nAnd Construction\nb.	Operation Rang-ay to Barangay                      1,330,000.00\nAnd Other Social Services\nc.	Barangay Assistance Program                              74,711.00\nd.	Special Scholarship Program                                 51,139.00\n","30","RESOLUTION NO. 156-2007.pdf","21","2007-06-21","0");
INSERT INTO tbl_resolution VALUES("156 - 2008","","Approve FY 2008 GF SB # 2, of Balaoan, LU ","2","RESOLUTION NO. 156-2008.pdf","21","2008-05-22","0");
INSERT INTO tbl_resolution VALUES("156 - 2010","","Approve FY 2010 GF SB # 3, of Tubao, LU","1","Resolution 156-2010.pdf","21","2010-07-29","0");
INSERT INTO tbl_resolution VALUES("156 - 2011","","Return Mun Ord # 15-2011, of the SB of San Juan, LU, “An Ord Prescribing the Implementing Mechanisms Against the Spread of Tuberculosis”","18","Resolution 156-2011.pdf","21","2011-05-12","0");
INSERT INTO tbl_resolution VALUES("156 - 2012","","Return Ord # 04, s 2012, of the SB of Naguilian, LU, “An Ord Regulating the Use of Motorcycles w/n the Territorial Jurisdiction of the Mun of Naguilian, LU & Providing Penalties in Violation Thereof”","9","Resolution 156-2012.pdf","21","2012-04-26","0");
INSERT INTO tbl_resolution VALUES("156 - 2013","","Approve Ord # 26, s 2012, of the SB of Naguilian, LU, “An Ord Creating the Local AIDS Council in the Mun of Naguilian, LU, & Providing Appropriations Thereof”","10","RESOLUTION 156-2013.pdf","21","2013-05-30","0");
INSERT INTO tbl_resolution VALUES("156A- 1999","","Deny Res # 6-96, of the SP of the CSF, LU, Requesting the SP to Change the Name of Pennsylvania Avenue to Mayor Lorenzo Dacanay Avenue ","24","RESOLUTION NO.156A-99.pdf","21","1999-04-15","0");
INSERT INTO tbl_resolution VALUES("157 - 1999","","AO amounting P49,428,000.00 for the different project to be funded from RA 7171 Fund","27","RESOLUTION NO.157-99.pdf","21","1999-04-15","0");
INSERT INTO tbl_resolution VALUES("157 - 2007","","Approve the salary adjustment of the Nurse III position of the Provincial Health Office from Step 1 to Step 2 of SG 16 ","34","RESOLUTION NO. 157-2007.pdf","21","2007-06-21","0");
INSERT INTO tbl_resolution VALUES("157 - 2008","","Approve FY 2008 GF SB # 1, of Naguilian, LU ","2","RESOLUTION NO. 157-2008.pdf","21","2008-05-22","0");
INSERT INTO tbl_resolution VALUES("157 - 2010","","Approve FY 2010 GF SB # 1, of Rosario, LU","1","Resolution 157-2010.pdf","21","2010-07-29","0");
INSERT INTO tbl_resolution VALUES("157 - 2011","","Return Mun Ord # 16-2011, of the SB of San Juan, LU, “An Ord Authorizing the Reclassification of Agricultural Land at Brgy. Urbiztondo, this Municipality, in Favor of Mrs. Aurelia Apilado” ","17","Resolution 157-2011.pdf","21","2011-05-12","0");
INSERT INTO tbl_resolution VALUES("157 - 2012","","Authorize Gov MCO to charge wages & other benefits of Casual employees against the PS savings of offices","1","Resolution 157-2012.pdf","21","2012-04-26","0");
INSERT INTO tbl_resolution VALUES("157 - 2013","","Approve Ord # 21, s 2012, of the SB of Naguilian, LU, “An Ord Enacting the Health & Sanitation Code of the Mun of Naguilian, LU & Providing Penalties to Violators Thereof”","10","RESOLUTION 157-2013.pdf","21","2013-05-30","0");
INSERT INTO tbl_resolution VALUES("158 - 1999","","P5,000.00 F/A to Brgy. Cuenca, Pugo, LU, for the complete lighting of the basketball court","20","RESOLUTION NO.158-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("158 - 2007","","Express, recognize and acknowledge the distinctive and exemplary services of Hon. Gerardo VilorIa, thru the conferment SARANAY AWARD","30","RESOLUTION NO. 158-2007.pdf","21","2007-06-21","0");
INSERT INTO tbl_resolution VALUES("158 - 2008","","Approve FY 2008 GF SB # 1, of Sudipen, LU ","2","RESOLUTION NO. 158-2008.pdf","21","2008-05-22","0");
INSERT INTO tbl_resolution VALUES("158 - 2010","","Support revision of the Constitution thru Constitutional Convention","10","Resolution 158-2010.pdf","21","2010-07-29","0");
INSERT INTO tbl_resolution VALUES("158 - 2011","","Approve Mun Ord # 13-2011, of the SB of Agoo, LU, “An Ord Amending Sec 1, Sec 2 (2.2) & Sec 7, of Mun Ord # 04-2011, An Ord Amending Sec 4.C (4) & (7), Sec 4.D (2), (3) & (19), Sec 4.E (18), Sec 4.4 (3) of Mun Ord # 16-201, An Ord Providing for Prohibited Acts & their Corresponding Penalties for All Drivers, Conductors & Operators Plying the Streets of the Mun of Agoo, LU”","10","Resolution 158-2011.pdf","21","2011-05-12","0");
INSERT INTO tbl_resolution VALUES("158 - 2012","","Adjust salary of Pop Program Worker II from SG 7, Step 1 to SG 7, Step 2","1","Resolution 158-2012.pdf","21","2012-04-26","0");
INSERT INTO tbl_resolution VALUES("158 - 2013","","Congratulate Judge JovenCostales, for translating into the Iloko Language SP Ord # 026-2012 (Iloko Code).","1,3,5,6,7,9,10,11,12,13,18,19,20","RESOLUTION 158-2013.pdf","21","2013-05-30","0");
INSERT INTO tbl_resolution VALUES("159 - 1999","","P35,000.00 F/A to Brgy. Old Poblacion, Burgos, LU, for the rip-rapping of a road portion ","20","RESOLUTION NO.159-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("159 - 2007","","An AO appropriating  P8,987,702.56 for SB # 08 of the GF","20","RESOLUTION NO. 159-2007.pdf","21","2007-06-28","0");
INSERT INTO tbl_resolution VALUES("159 - 2008","","Approve FY 2008 GF SB # 1, of Luna, LU ","2","RESOLUTION NO. 159-2008.pdf","21","2008-05-22","0");
INSERT INTO tbl_resolution VALUES("159 - 2010","","Approve Mun Ord # 33-08, of the SB Luna, LU, entitled: “An Ord Enacting the Mun. Environmental Code of Luna, LU”","10","Resolution 159-2010.pdf","21","2010-07-29","0");
INSERT INTO tbl_resolution VALUES("159 - 2011","","Approve City Ord # 2011-002, of the SP of the City of San Fernando, LU, “An Ord Amending the Staffing Pattern of the City Gov’t of San Fernando”","10","Resolution 159-2011.pdf","21","2011-05-12","0");
INSERT INTO tbl_resolution VALUES("159 - 2012","","Condole w/ family of Ambrocio “Ambie L. Valero III.","1,3,5,7,9,10,11,12,13,18,19,20,21","Resolution 159-2012.pdf","21","2012-04-26","0");
INSERT INTO tbl_resolution VALUES("159 - 2013","","Thank the New Love Ministries Inc. for sending MV Logos Hope to the Port of San Fernando from May 22 – June 2 Request BFAR & DENR to conduct a study on the adverse effect on the fish & aquatic animals in connection w/ the proposed dredging of the Amburayan River in Bangar.","1,3,5,6,7,9,10,11,12,13,18,19,20","RESOLUTION 159-2013.pdf","21","2013-05-30","0");
INSERT INTO tbl_resolution VALUES("160 - 1999","","P5,000.00 F/A to Brgy. Halog East, Tubao, LU, for the purchase of lusob","20","RESOLUTION NO.160-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("160 - 2007","","MOA w/ the Philippine Tourism Authority (PTA) in connection with the transfer of ownership of land improvements and building known as “Museo de La Union” from the PTA to the PGLU","10","RESOLUTION NO. 160-2007.pdf","21","2007-06-28","0");
INSERT INTO tbl_resolution VALUES("160 - 2008","","Congratulate, commend and set aside the amount of P15,000 as cash incentives to Athletes and Coach who won during the recently conducted Palarong Pambansa 2008 at Puerto Princesa City, Palawan ","1","RESOLUTION NO. 160-2008.pdf","21","2008-05-22","0");
INSERT INTO tbl_resolution VALUES("160 - 2010","","Approve Mun Ord # 08-2010, of the SB of San Juan, LU, titled: “Smoking Regulation Ord”","10","Resolution 160-2010.pdf","21","2010-07-29","0");
INSERT INTO tbl_resolution VALUES("160 - 2011","","Urge the 1st& 2ndEng’g Districts of the DPWH, in coordination w/ DENR, to ensure public safety & avert road accidents by periodically pruning the branches of trees w/n the province","21","Resolution 160-2011.pdf","21","2011-05-12","0");
INSERT INTO tbl_resolution VALUES("160 - 2012","","Confirm the authority of Gov MCO to enter into an Agreement on the Rescission of the Contract to Sell w/ 1590 Energy Corp","1","Resolution 160-2012.pdf","21","2012-04-26","0");
INSERT INTO tbl_resolution VALUES("160 - 2013","","Request BFAR & DENR to conduct a study on the adverse effect on the fish & aquatic animals in connection w/ the proposed dredging of the Amburayan River in Bangar.","10","RESOLUTION 160-2013.pdf","21","2013-05-30","0");
INSERT INTO tbl_resolution VALUES("161 - 1999","","P10,000.00 F/A to Brgy. Dili, Bauang, LU, for the concreting of a portion of their farm to market road","20","RESOLUTION NO.161-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("161 - 2007","","MOA w/ the Regional Statistical Committee (RSCC), and the City Government of San Fernando in connection with the Pilot Implementation of the Proposed Health Data Generation System in the City of San Fernando and the Province ","10","RESOLUTION NO. 161-2007.pdf","21","2007-06-28","0");
INSERT INTO tbl_resolution VALUES("161 - 2008","","Congratulate and Commend the La Union Athletes and Coach who won during the recently conducted Palarong Pambansa 2008 at Puerto Princesa City, Palawan ","1","RESOLUTION NO. 161-2008.pdf","21","2008-05-22","0");
INSERT INTO tbl_resolution VALUES("161 - 2010","","Return Ord # 2009-03, s 1009, of the SB of Caba, LU, entitled: “An Ord Enacting the Environment Code of the Mun of Caba, Province of LU”","10","Resolution 161-2010.pdf","21","2010-07-29","0");
INSERT INTO tbl_resolution VALUES("161 - 2011","","Condole w/ family of Reg’l Supervisor, RemediosNieveras, DepEd","10","Resolution 161-2011.pdf","21","2011-05-19","0");
INSERT INTO tbl_resolution VALUES("161 - 2012","","Authorize Gov MCO to enter into a Contract of Lease w/ any interested & qualified entity for the operation of the Bauang Diesel Power Plant, Payocpoc Sur, Bauang, LU","1","Resolution 161-2012.pdf","21","2012-04-26","0");
INSERT INTO tbl_resolution VALUES("161 - 2013","","Ratify the loan agreement, assignment and other supporting documents including future amendments pertaining to the loan/credit facility w/ LBP in the amount of P11M for the rehab of the LUPACB","1","RESOLUTION 161-2013.pdf","21","2013-05-30","0");
INSERT INTO tbl_resolution VALUES("162 - 1999","","P5,000.00 F/A to Brgy. Bawanta, Bauang, LU, for the concreting of the 1.23 km access road to Bawanta Nat’l H/S","20","RESOLUTION NO.162-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("162 - 2007","","Approve Ord # 7, s. 2007 of the SB of Rosario, LU, entitled: “An OrdAmending Sec. 3 of Ord # 5, s. 2006, Designating the Municipal Auditorium as Freedom Park of Rosario, LU” ","10","RESOLUTION NO. 162-2007.pdf","21","2007-06-28","0");
INSERT INTO tbl_resolution VALUES("162 - 2008","","Congratulate and commend the RDCC, OCD, LUPPO, PNRC, LUDRT, 1LURRBn, BFP, Department Heads and Staff of PSWDO, PaG, PEO, PHO and other Persons, Agencies of the PDCC, Media, City/Municipal Mayors and Punong Barangays for the conduct of an immediate rescue and relief operations during and after the powerful tropical storm “Cosme” that hit the Province ","1","RESOLUTION NO. 162-2008.pdf","21","2008-05-22","0");
INSERT INTO tbl_resolution VALUES("162 - 2010","","Return Ord # 2009-03, s 1009, of the SB of Caba, LU, entitled: “An Ord Enacting the Environment Code of the Mun of Caba, Province of LU”","10","Resolution 162-2010.pdf","21","2010-07-29","0");
INSERT INTO tbl_resolution VALUES("162 - 2011","","Condole w/ family of former BC ProculoNuval, Brgy. Ar-arampang, Balaoan, LU","3","Resolution 162-2011.pdf","21","2011-05-25","0");
INSERT INTO tbl_resolution VALUES("162 - 2012","","Approve the FY 2012 GF AB of Pugo, La Union.","20","Resolution 162-2012.pdf","21","2012-05-03","0");
INSERT INTO tbl_resolution VALUES("162 - 2013","","Contract of Agreement with:\n\n1.	Dr. Daisy V. Long – Radiologist/Sonologist\n2.	Dr. William S. Padilla – Anesthesiologist","1,7,10,19,20","RESOLUTION 162-2013.pdf","21","2013-06-06","0");
INSERT INTO tbl_resolution VALUES("163 - 1999","","Enough amount as  F/A to Brgy. Parian Este, Bauang, LU, for the purchase of cement","20","RESOLUTION NO.163-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("163 - 2007","","Approve MunOrd # 2, s. 2007 of the SB of Bagulin, LU, entitled: “An OrdEnacting the Children’s Code of the Municipality of Bagulin, LU” ","17","RESOLUTION NO. 163-2007.pdf","21","2007-06-28","0");
INSERT INTO tbl_resolution VALUES("163 - 2008","","Realign the amount of P600,000 from the Carabao Development Program to the Skills Training Program","20","RESOLUTION NO. 163-2008.pdf","21","2008-05-29","0");
INSERT INTO tbl_resolution VALUES("163 - 2010","","Name the new SP Bldg. as Hon. Francisco I. Ortega, Sr. Prov’l Legislative Bldg.","10","Resolution 163-2010.pdf","21","2010-07-29","0");
INSERT INTO tbl_resolution VALUES("163 - 2011","","Condole w/ family of BK Bernard Oreal, Brgy. Dr. CamiloOsias, Balaoan, LU","3","Resolution 163-2011.pdf","21","2011-05-25","0");
INSERT INTO tbl_resolution VALUES("163 - 2012","","Approve the FY 2012 GF AB of the City of San Fdo, La Union.","20","Resolution 163-2012.pdf","21","2012-05-03","0");
INSERT INTO tbl_resolution VALUES("163 - 2013","","Deed of Absolute Sale w/ ORT Community Multi-Purpose Coop (OCMPC) for the purchase of the 2-storey Comm’l Bldg & 1-Storey Comm’l Bldg at Guerrero Rd., CSF","1,7,11,20","RESOLUTION 163-2013.pdf","21","2013-06-06","0");
INSERT INTO tbl_resolution VALUES("164 - 1999","","P10,000.00 F/A to the United Macalva Semiculture MPCI, Agoo, LU, for the livelihood projects","20","RESOLUTION NO.164-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("164 - 2007","","Approve Ord # 3, s. 2007 of the SB of Rosario, LU, entitled: “An Ord Adopting the Code of the Children in the Municipality of Rosario, LU","17","RESOLUTION NO. 164-2007.pdf","21","2007-06-28","0");
INSERT INTO tbl_resolution VALUES("164 - 2008","","MOA on the provision of pump and engine sets to 75 farmer beneficiaries province-wide on a cost sharing arrangement between the Department of Agriculture Regional Field Unit I and the farmer beneficiaries","20","RESOLUTION NO. 164-2008.pdf","21","2008-05-29","0");
INSERT INTO tbl_resolution VALUES("164 - 2010","","Approve Ord # 05-2010, of the SB of Agoo, LU, entitled: “Ord Requiring a Lessor of a Residential or Commercial Property in the Mun of Agoo, LU to Register his Lessee(s) w/ the Respective Brgy. Office","10","Resolution 164-2010.pdf","21","2010-07-29","0");
INSERT INTO tbl_resolution VALUES("164 - 2011","","Approve FY 2011 GF AB of Bagulin, LU ","19","Resolution 164-2011.pdf","21","2011-05-25","0");
INSERT INTO tbl_resolution VALUES("164 - 2012","","Return Mun Ord # 003-2011, of the SB of Rosario, LU, “An Ord Enacting the Gender & Dev’t Code GAD) of the Mun of Rosario, Province of LU & Mandating its Implementation of a Comprehensive & Sustainable Program”","5","Resolution 164-2012.pdf","21","2012-05-03","0");
INSERT INTO tbl_resolution VALUES("164 - 2013","","Approve FY 2013 GF SB # 1, of the SB of Bagulin, La Union.","1,6,7,20","RESOLUTION 164-2013.pdf","21","2013-06-06","0");
INSERT INTO tbl_resolution VALUES("164 - 2014","2014 - 0157","Recommend approval of the FY 2014 GF SB # 1, of Bagulin, LU","1","RESOLUTION 164-2014.pdf","21","2014-05-15","0");
INSERT INTO tbl_resolution VALUES("165 - 1999","","P10,000.00 F/A to Brgy. Bawanta, Bauang, LU, for the concreting of the 1.23 km access road going to Bawanta Nat’l H/S","20","RESOLUTION NO.165-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("165 - 2007","","Approve Ord # 02, s. 2007 of the SB of Rosario, LU, entitled: “An Ord Declaring Additional Violations of Traffic Rules and Regulations in Art. VII-G and Adding C to Art. III of Ord # 19-1996, entitled, An Ord Codifying the Traffic Ord of the Municipality of Rosario, LU”","17","RESOLUTION NO. 165-2007.pdf","21","2007-06-28","0");
INSERT INTO tbl_resolution VALUES("165 - 2008","","P2,000 as Educational Assistance to all provincial personnel and Officials ","20","RESOLUTION NO. 165-2008.pdf","21","2008-06-05","0");
INSERT INTO tbl_resolution VALUES("165 - 2010","","That the SB of Bauang, LU, be required to submit proof of Public Hearing re: Ord # 35, emb in Res # 195, s 2009, “An Ord Reclassifying the Parcel of Lands Owned by Ms. MarijunMadayag Locke w/ an Area of 9,322 sq.m. Designated as Lot. No. 5241, & Lot No. 5245, & Classified as Agricultural Lands Situated at Brgy. Baccuit Sur, Bauang, LU”","10","Resolution 165-2010.pdf","21","2010-07-29","0");
INSERT INTO tbl_resolution VALUES("165 - 2011","","Approve FY 2011 GF SB # 1, of Bagulin, LU","19","Resolution 165-2011.pdf","21","2011-05-25","0");
INSERT INTO tbl_resolution VALUES("165 - 2012","","Return Mun Ord # 12-2012, of the SB of Agoo, LU, “An Ord Empowering the 49 Brgys in the Mun of Agoo to Conduct Regular & sustained Community Based Research & Destroy of Breeding Places of Mosquitoes & Providing Penalties Thereof\"","10","Resolution 165-2012.pdf","21","2012-05-03","0");
INSERT INTO tbl_resolution VALUES("165 - 2013","","Approve Mun Ord # 03-2013, of the SB of San Juan, LU, “An Ord Prescribing Rental of an Office Space at the Ground Flr Beneath the Stairway at the 2-Storey Comm’l Bldg Situated w/n the Perimeter of the Public Market”","6,7,10,20","RESOLUTION 165-2013.pdf","21","2013-06-06","0");
INSERT INTO tbl_resolution VALUES("165 - 2014","2014 - 0158","Recommend approval of the FY 2014 GF SB # 1, of Pugo, La Union.","1","RESOLUTION 165-2014.pdf","21","2014-05-15","0");
INSERT INTO tbl_resolution VALUES("166 - 1999","","P10,000.00 F/A to Brgy. Bawanta, Bauang LU, for the concreting of the 1.23 km access road going to Bawanta Nat’l H/S","20","RESOLUTION NO.166-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("166 - 2007","","Approve MunOrd # 1-2007 of the SB of Tubao, LU, entitled: “The Comprehensive Solid Waste Management Ordinance of the Municipality of Tubao” ","10","RESOLUTION NO. 166-2007.pdf","21","2007-06-28","0");
INSERT INTO tbl_resolution VALUES("166 - 2008","","Favorably endorse the renewal of the ISAG Permit (IP 02-001) of Molte Aries Construction and Industries, Lingsat, CSF, as per mandatory requirement of Mines and Geosciences Bureau (MGB), DENR, Region I and the PGLU ","1","RESOLUTION NO. 166-2008.pdf","21","2008-06-05","0");
INSERT INTO tbl_resolution VALUES("166 - 2010","","That the SB of Bauang, LU, be required to submit proof of Public Hearing re: Ord # 50, emb in Res # 271, s 2010, “An Ord Reclassifying the Parcel of Lands Owned by Ms. MarijunMadayag Locke w/ an Area of 4,040 sq.m. Designated as Lot. No. 5244, &  Lot No. 5257, & Both Classified as Agricultural Lands Situated at Brgy. Baccuit Sur, Bauang, LU”","10","Resolution 166-2010.pdf","21","2010-07-29","0");
INSERT INTO tbl_resolution VALUES("166 - 2011","","Approve FY 2011 GF AB of Caba, LU","19","Resolution 166-2011.pdf","21","2011-05-25","0");
INSERT INTO tbl_resolution VALUES("166 - 2012","","Approve Ord # 3-2012, of the SB of San Gabriel, La Union, “An Ord Revising Ord # 5-2011, of the Mun of San Gabriel, La Union”","10","Resolution 166-2012.pdf","21","2012-05-03","0");
INSERT INTO tbl_resolution VALUES("166 - 2013","","Approve Mun Ord # 7-2013, of the SB of San Juan, LU, “An Ord Prescribing rental of an Office Space of the PCSO”","6,7,10,20","RESOLUTION 166-2013.pdf","21","2013-06-06","0");
INSERT INTO tbl_resolution VALUES("166 - 2014","2014 - 0118","Enjoining all municipalities/city of the Prov of La Union to come up w/ their own Localized Anti-Crime Action Plan (LACAP)","3","RESOLUTION 166-2014.pdf","21","2014-05-15","0");
INSERT INTO tbl_resolution VALUES("167 - 1999","","P15,000.00 F/A to Brgy. Payocpoc Norte-Este, Bauang, LU, for the repair of the day care center","20","RESOLUTION NO.167-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("167 - 2007","","Declare September 25-30 and Every Year Thereafter as “Teacher’s Week in the Province of La Union”","35","RESOLUTION NO. 167-2007.pdf","21","2007-06-28","0");
INSERT INTO tbl_resolution VALUES("167 - 2008","","Congratulate, and appropriate P3,000 as cash incentive to Ms. Chardine Cheradee Camacho, a wonder Kid Chess Champion who bagged Champion during the 2008 National Age Group Chess championships and tied Second Place during the Battle of Grandmasters","1","RESOLUTION NO. 167-2008.pdf","21","2008-06-12","0");
INSERT INTO tbl_resolution VALUES("167 - 2010","","Approve Mun Ord # 09-2010, of the SB of San Juan, LU, “an Ord Prohibiting the Squatting Along the By Pass Rd. in Ili Sur, Panicsican, Urbiztondo, &Naguituban, All of the Mun of San Juan, LU, as Amended”","10","Resolution 167-2010.pdf","21","2010-07-29","0");
INSERT INTO tbl_resolution VALUES("167 - 2011","","Approve FY 2011 GF SB # 1, of San Gabriel, LU","19","Resolution 167-2011.pdf","21","2011-05-25","0");
INSERT INTO tbl_resolution VALUES("167 - 2012","","Approve Ord # 4-2012, of the SB of San Gabriel, La Union, “An Ord Revising Ord # 3-2010 of the Mun of San Gabriel”","10","Resolution 167-2012.pdf","21","2012-05-03","0");
INSERT INTO tbl_resolution VALUES("167 - 2013","","Approve Mun Ord # 08-2013, of the SB of San Juan, LU, “An Ord Prescribing Rental for the Use of the People’s Hall”","6,7,10,20","RESOLUTION 167-2013.pdf","21","2013-06-06","0");
INSERT INTO tbl_resolution VALUES("167 - 2014","2014 - 0106","Ord # 10, s 2013, An Ord Requiring the Foodservice Industry w/n the Territorial Jurisdiction of the Mun of Naguilian, LU to Include ? Cup of Cooked Rice in their Menu","3","RESOLUTION 167-2014.pdf","21","2014-05-15","0");
INSERT INTO tbl_resolution VALUES("168 - 1999","","P5,000.00 F/A to Brgy. Acao, Bauang, LU, for the improvement of their barangay hall","20","RESOLUTION NO.168-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("168 - 2007","","Commend the PNP, Region I, and the DepEd, Division of La Union, for launching a Special Free Education Program dubbed as “PulisKo, TitserKo” at Alibangsayelementary School, Brgy. Alibangsay, Bagulin, LU","10","RESOLUTION NO. 168-2007.pdf","21","2007-06-28","0");
INSERT INTO tbl_resolution VALUES("168 - 2008","","Enact an Appropriation  in the amount of P17,317,972.02 for Supplemental Budget No. 4, of the General Fund ","2","RESOLUTION NO. 168-2008.pdf","21","2008-06-12","0");
INSERT INTO tbl_resolution VALUES("168 - 2010","","Condole w/ Sen Magnolia W. Antonino, Balaoan, LU","3","Resolution 168-2010.pdf","21","2010-07-29","0");
INSERT INTO tbl_resolution VALUES("168 - 2011","","Approve FY 2011 GF SB # 2, of Sudipen, LU","19","Resolution 168-2011.pdf","21","2011-05-25","0");
INSERT INTO tbl_resolution VALUES("168 - 2012","","Approve Mun Ord # 05-20-12, of the SB of San Juan, LU, “An Ord Prescribing the Terms & Conditions in Contracting Consultants”","10","Resolution 168-2012.pdf","21","2012-05-03","0");
INSERT INTO tbl_resolution VALUES("168 - 2013","","Return Mun Ord # 29-2012, of the SB of Agoo, LU, “An Ord Designating Denny’s Park in Consolacion, Agoo, LU, as a Special Economic Zone & Prescribing Rates & Regulations on the Rental of Stalls w/n the Area”","1,3,7,10,20","RESOLUTION 168-2013.pdf","21","2013-06-06","0");
INSERT INTO tbl_resolution VALUES("168 - 2014","2014 - 0136","Res # 14, s 2014, Giving full authority to Hon. Ferdinand Tumbaga, Mun Mayor, to donate 400 sq.m. from the lot owned by the Mun of Bagulin, LU to the PNP to be utilized in the construction of a ?Type C? Police Station of this municipality (Basis SP Res # 123-2008)","7","RESOLUTION 168-2014.pdf","21","2014-05-15","0");
INSERT INTO tbl_resolution VALUES("169 - 1999","","P5,000.00 F/A to Brgy. Imelda, Burgos, LU, for the improvement of their barangay hall","20","RESOLUTION NO.169-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("169 - 2007","","Realign P1,390,000 to the following programs:\n\na.	Public Bldgs/Struct Improvement                P1,000,000.00\nConst.\nb.	Equipment Support                                             390,000.00\n","2","RESOLUTION NO. 169-2007.pdf","21","2007-07-05","0");
INSERT INTO tbl_resolution VALUES("169 - 2008","","Condole w/ the  late SBM Alfredo Javier, Sr., Sto. Tomas, LU","1,2,3,5,7,12,19,20,21,31,32,33","RESOLUTION NO. 169-2008.pdf","21","2008-06-12","0");
INSERT INTO tbl_resolution VALUES("169 - 2010","","Approve Mun Ord # 03-2010, of the SB of Agoo, LU, entitled: “An Ord Requiring All Softdrinks&Palamig Vendors to Facilitate the Use of Proper Cups Instead of Plastic Bags & Straws","10","Resolution 169-2010.pdf","21","2010-08-05","0");
INSERT INTO tbl_resolution VALUES("169 - 2011","","Renew Contract of Lease Agreement w/ GLOBE Telecom inc. & Viva Video City","19","Resolution 169-2011.pdf","21","2011-05-25","0");
INSERT INTO tbl_resolution VALUES("169 - 2012","","Approve Mun Ord # 11-2012, of the SB of Agoo, LU, “An Ord Empowering the 59 Brgys in the Mun of Agoo to Initiate Adoption of Vacant Lots Through a MOA Between the Lot Owner/Administrator & the Brgy Council for Vegetable Planting/Nursery & Clean-up”","10","Resolution 169-2012.pdf","21","2012-05-03","0");
INSERT INTO tbl_resolution VALUES("169 - 2013","","Request the SB of San Juan, La Union, thru the Sec to the SB, to submit a proof of compliance with the provision of Sec. 186, RA 7160, part. Public Hearing.","1,3,7,10,20","RESOLUTION 169-2013.pdf","21","2013-06-06","0");
INSERT INTO tbl_resolution VALUES("170 - 1999","","P10,000.00 F/A to Brgy. Garcia, Tubao, LU, for the repair of their basketball court","20","RESOLUTION NO.170-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("170 - 2007","","Contract of Consultancy Services, with the following Consultants with an individual honorarium of P20,000.00 per month, to wit:\n\na.	Robert Ortega                    Security & Intelligence Affairs\nb.	JoseMacusi                         Indigenous Peoples Affairs – 1st\nc.	EufranioEriguel                 Local Gov’t Affairs – 2nd\nd.	FlorestoSayangda             Local Gov’t Affairs – 1st\ne.	Manuel Borja                     City Gov’t Affairs\nf.	Pablo Salanga                     Infra & Utilities Dev’t\ng.	Elizabeth Sheila Milo        Women Sector\nh.	Augusto Aureo Nisce        Trade & Industry Dev’t\ni.	Franco Rimando                 Legal Affairs\n","18","RESOLUTION NO. 170-2007.pdf","21","2007-07-05","0");
INSERT INTO tbl_resolution VALUES("170 - 2008","","Request Pres. GMA to extend her Cash Subsidy Program of P500 dubbed as “Katas ng Vat, Pantawid Kuryente” to the electric consumers in the province whose consumption does not exceed 100 kw per month","31","RESOLUTION NO. 170-2008.pdf","21","2008-06-12","0");
INSERT INTO tbl_resolution VALUES("170 - 2010","","Approve Ord # 2009-002, s 2009, of the SB of Caba, LU, entitled: “An Ord Enacting the Investment Code of the Municipality of Caba, LU, Province of LU” ","10","Resolution 170-2010.pdf","21","2010-08-05","0");
INSERT INTO tbl_resolution VALUES("170 - 2011","","Approve Mun Ord # 14-2011, of the SB of San Juan, LU, “An Ord on the Prohibitions on Verbal, Non-Verbal Ridicule & Vilification Against Persons w/ Disability”","5","Resolution 170-2011.pdf","21","2011-05-25","0");
INSERT INTO tbl_resolution VALUES("170 - 2012","","MOA w/ DA pertaining to the implementation of the Nat’l Gov’ts Banner Program on Food Security & Sufficiency in Partnership w/ LGUs for efficient & effective utilization of gov’t resources","3","Resolution 170-2012.pdf","21","2012-05-03","0");
INSERT INTO tbl_resolution VALUES("170 - 2013","","Approve Mun Ord # 05-2013, of the SB of Agoo, LU, “An Ord Imposing Service Fees for Every Document Acquired from the NSO thru the Batch Request Entry System”","1,7,10,20","RESOLUTION 170-2013.pdf","21","2013-06-06","0");
INSERT INTO tbl_resolution VALUES("170 - 2014","2014 - 0161","\"Letter of Governor Manuel C. Ortega respectfully submitting to the\nHonorable members Supplemental Budget No. 1 involving a Total Appropriation of P25,015,792.00 for the enactment of the required appropriation ordinance.\"\n","1,3,4,8,10","RESOLUTION 170-2014.pdf","21","2014-05-15","0");
INSERT INTO tbl_resolution VALUES("171 - 1999","","P15,000.00 F/A to Brgy. Dili, Bauang, LU, for the concreting of a portion of their farm to market road","20","RESOLUTION NO.171-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("171 - 2007","","Contract of Consultancy Service, with Atty. Gerardo Viloria, as Consultant to the Office of the Governor on Agriculture and Environmental Development ","20","RESOLUTION NO. 171-2007.pdf","21","2007-07-05","0");
INSERT INTO tbl_resolution VALUES("171 - 2008","","Require LUELCO, Aringay, LU and the LUECO, CSF to submit to the Office of the SP the list of electric consumers whose consumption does not exceed 100 kw per month","31","RESOLUTION NO. 171-2008.pdf","21","2008-06-12","0");
INSERT INTO tbl_resolution VALUES("171 - 2010","","Approve Ord # 3-2010, of the SB San Gabriel, LU, entitled: “An Ord Regulating the Operation of Computer Shops w/n the Area of Jurisdiction of the Municipality of San Gabriel, LU & providing Fines & Penalties Thereof”","10","Resolution 171-2010.pdf","21","2010-08-05","0");
INSERT INTO tbl_resolution VALUES("171 - 2011","","Approve Mun Ord # 14-2011, of the SB of Agoo, LU, “AnOrd Amending Sec 31 of Art XII & Sec 35 of Art XV of Mun Ord # 01-2011, An OrdZonifying the Agoo Public Cemetery in Agoo, LU & Prescribing Rules the Use & Operation of the Same”","7","Resolution 171-2011.pdf","21","2011-05-25","0");
INSERT INTO tbl_resolution VALUES("171 - 2012","","MOA w/ DAR pertaining to the implementation of the nat’l gov’ts Comprehensive Agrarian Program through implementation, rehab of farm-to-market roads & agrarian reform communities & adjoining areas","3","Resolution 171-2012.pdf","21","2012-05-03","0");
INSERT INTO tbl_resolution VALUES("171 - 2013","","Approve Mun Ord # 2-2013, of the SB of San Gabriel, La Union, “Public Market Code of the Mun of San Gabriel, La Union”","1,7,10,20","RESOLUTION 171-2013.pdf","21","2013-06-06","0");
INSERT INTO tbl_resolution VALUES("172 - 1999","","P15,000.00 F/A to Brgy. Suyo, Bagulin, LU, for the repair of the hanging foot bridge at Picao","20","RESOLUTION NO.172-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("172 - 2007","","Adopt the 2007 Internal Rules of Procedure of the SP of La Union","2","RESOLUTION NO. 172-2007.pdf","21","2007-07-12","0");
INSERT INTO tbl_resolution VALUES("172 - 2008","","Approve accreditation of  La Union Vibrant Women Inc. (LUVWI), Provincial Chapter  as NGO","7","RESOLUTION NO. 172-2008.pdf","21","2008-06-12","0");
INSERT INTO tbl_resolution VALUES("172 - 2010","","Approve Ord # 30, s 2009, emb in Res # 135, s 2009, of the SB Bauang, LU, entitled: “An Ord Prohibiting the Illegal Use & Sale of Police Military Uniforms, Insignia & Dress w/n the Territorial Jurisdiction of the Municipality of Bauang, LU”","10","Resolution 172-2010.pdf","21","2010-08-05","0");
INSERT INTO tbl_resolution VALUES("172 - 2011","","Approve the Prov’l Dev’t Investment Program (PDIP) CY 2010-2015 & Annual Investment Program (c) CY 2012","19","Resolution 172-2011.pdf","21","2011-05-25","0");
INSERT INTO tbl_resolution VALUES("172 - 2012","","Renew/Enter into a MOA/COL w/ qualified lessees of the PGLU Livelihood Stalls Program at Mabanag Justice Hall &Aguila Rd","10","Resolution 172-2012.pdf","21","2012-05-10","0");
INSERT INTO tbl_resolution VALUES("172 - 2013","","Approve Ord # 2, emb in Res # 449, s 2013, of the MC of Bauang, LU, “Ord Creating & Maintaining a Philhealth Trust Fund from the Proceeds of the Primary Care Benefit 1 (PCB1) to be Provided by the PHILHEALTH for the Qualified Beneficiaries & Dependents Enrolled Under the Sponsored Program (SP), Overseas Worker Program (OWP) and Organized Group (OG) Enlisted by the Rural Health Unit (RHU)”","1,6,7,10,20","RESOLUTION 172-2013.pdf","21","2013-06-06","0");
INSERT INTO tbl_resolution VALUES("173 - 1999","","P6,000.00 F/A to the PTCA of Lloren E/S, Tubao, LU, for the construction of a cemented playground","20","RESOLUTION NO.173-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("173 - 2007","","Approve the Membership/Composition of the 27 Working Committees of the SP ","30","RESOLUTION NO. 173-2007.pdf","21","2007-07-12","0");
INSERT INTO tbl_resolution VALUES("173 - 2008","","MOA w/ CSC, Regional Office I in connection with the Conduct of Supervisory Development Course – Tracks II and III","18","RESOLUTION NO. 173-2008.pdf","21","2008-06-19","0");
INSERT INTO tbl_resolution VALUES("173 - 2010","","Approve Ord # 6-2010, of the SB San Gabriel, LU, entitled: “An Ord Prohibiting the Illegal Use & Sale of Police Military Uniforms, Insignia & Dress w/n the Territorial Jurisdiction of the Municipality of San Gabriel, LU”","10","Resolution 173-2010.pdf","21","2010-08-05","0");
INSERT INTO tbl_resolution VALUES("173 - 2011","","4th amendment of the MOA w/ LBP re: livelihood loan (8 mos.)","10","Resolution 173-2011.pdf","21","2011-05-25","0");
INSERT INTO tbl_resolution VALUES("173 - 2012","","Approve FY 2012 GF AB of the SB of Bagulin, La Union.","20","Resolution 173-2012.pdf","21","2012-05-10","0");
INSERT INTO tbl_resolution VALUES("173 - 2013","","Approve Ord # 3, emb in Res # 450, s 2013, of the MC of Bauang, LU, “An Ord Moving the Celebration of the Annual Town Fiesta of the Mun of Bauang, LU from April to January to coincide w/ the Foundation Anniversary of the Mun”","10","RESOLUTION 173-2013.pdf","21","2013-06-06","0");
INSERT INTO tbl_resolution VALUES("173 - 2014","2014 - 0135","Ord # 482, s 2014, Ord Amending Ord # 480, s 2013, Ord Creating the Mun HIV/AIDS Council.","2","RESOLUTION 173-2014.pdf","21","2014-05-22","0");
INSERT INTO tbl_resolution VALUES("174 - 1999","","P10,000.00 F/A to the PTCA of Lloren Nat’l H/S, Tubao, LU, for the completion of their school canteen and H.E. Bldg","20","RESOLUTION NO.174-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("174 - 2007","","Condole w/Brgy. Kgd. Warlito Peralta, Brgy. Bail, Rosario","21","RESOLUTION NO. 174-2007.pdf","21","2007-07-12","0");
INSERT INTO tbl_resolution VALUES("174 - 2008","","Authorize the monetization of the share of the Province from the P12,576,938,000 unreleased Internal Revenue Allotment (IRA) differential for FYs 2001 and 2004 and an authority for the Gov. to sign any document","20","RESOLUTION NO. 174-2008.pdf","21","2008-06-19","0");
INSERT INTO tbl_resolution VALUES("174 - 2010","","Approve Mun Ord # 14-2009, of the SB San Juan, LU, entitled: “Citizen’s Charter of the Municipality of San Juan, LU”","10","Resolution 174-2010.pdf","21","2010-08-05","0");
INSERT INTO tbl_resolution VALUES("174 - 2011","","Approve programming of RA 7171 amounting P103,994,174.00","3","Resolution 174-2011.pdf","21","2011-05-25","0");
INSERT INTO tbl_resolution VALUES("174 - 2012","","Approve FY 2012 GF SB # 1, of Balaoan, La Union.","20","Resolution 174-2012.pdf","21","2012-05-10","0");
INSERT INTO tbl_resolution VALUES("174 - 2013","","Approve Ord # 4, emb in Res # 452, s 2013, of the MC of Bauang, LU, “Ord Requiring Foodservice Industries w/n the Territorial Jurisdiction of the Mun of Bauang, LU to Include ½ Cup of Cooked Rice in the Menu”","1,3,6,7,10,20","RESOLUTION 174-2013.pdf","21","2013-06-06","0");
INSERT INTO tbl_resolution VALUES("174 - 2014","2014 - 0141","Mun Ord # 03-2014, An Ord Imposing Penalty to Vendors from Selling Double Dead Meat (Bocha), Hot Meat and Spoiled Meat to Consuming Public.","2","RESOLUTION 174-2014.pdf","21","2014-05-22","0");
INSERT INTO tbl_resolution VALUES("175 - 1999","","P5,000.00 F/A to the PTCA of Lloren E/S, Tubao, LU, for the construction of a playground","20","RESOLUTION NO.175-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("175 - 2007","","Approve realignment of P2 M under the provincial share in the Virginia Tobacco Excise Tax (RA 7171) from the Farmer’s Multi-Purpose Hall in the amount of P1 M and Flue-Curing in the amount of P1 M for the repair and maintenance of Heavy Equipment Program","31","RESOLUTION NO. 175-2007.pdf","21","2007-07-19","0");
INSERT INTO tbl_resolution VALUES("175 - 2008","","MOA w/ DPWH, RO I and DSWD, RO I in connection with the Emergency Shelter Program for the priority disaster victim caused by Typhoon “COSME”","1","RESOLUTION NO. 175-2008.pdf","21","2008-06-19","0");
INSERT INTO tbl_resolution VALUES("175 - 2010","","Approve Ord # 04-2010, of the SB Agoo, LU, entitled: “An Ord Creating a Local Committee on Affiliation & Training of Students”","10","Resolution 175-2010.pdf","21","2010-08-05","0");
INSERT INTO tbl_resolution VALUES("175 - 2011","","Approve the SB # 1, amounting P49,458,853.00","19","Resolution 175-2011.pdf","21","2011-05-25","0");
INSERT INTO tbl_resolution VALUES("175 - 2012","","Approve FY 2012 GF SB # 1, of Bangar, La Union.","20","Resolution 175-2012.pdf","21","2012-05-10","0");
INSERT INTO tbl_resolution VALUES("175 - 2013","","MOA with the Solid Waste MgtAsso. Of the Phils (SWAPP), in connection w/ the consultancy  services of SWAPP for the preparation, completion and approval of the Prov’l 10-yr solid waste mgt plan of the province.","1,6,7","RESOLUTION 175-2013.pdf","21","2013-06-06","0");
INSERT INTO tbl_resolution VALUES("176 - 1999","","P5,000.00 F/A to Wenceslao H/S, Caba, LU, for the infra dev’t project of the student gov’t org.","20","RESOLUTION NO.176-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("176 - 2007","","Realign P2.5 M from the Nutrition and Population Program to the following programs:\n\na.	Public Bldgs., Struct.                                     P2,000,000.00\nb.	Equipment Support                                           500,000.00\n","31","RESOLUTION NO. 176-2007.pdf","21","2007-07-19","0");
INSERT INTO tbl_resolution VALUES("176 - 2008","","Deed of Donation, w/PTA-DOT for the dev’t as “one-stop-shop” for tourism, trade and investment center for the province of the lot at Camp One, Rosario, LU","1,2,3,5,7,12,18,19,20,21,31,32,33","RESOLUTION NO. 176-2008.pdf","21","2008-06-19","0");
INSERT INTO tbl_resolution VALUES("176 - 2010","","Approve Ord # 6, s 2009, of the SB Rosario, LU, entitled: “Ord Imposing Garbage Fee on Brgy. Disposing Garbage at the Municipal Landfill/Controlled Dumpsite of Rosario”","10","Resolution 176-2010.pdf","21","2010-08-05","0");
INSERT INTO tbl_resolution VALUES("176 - 2011","","Condole w/ family of Mr. MelchorAncheta","10","Resolution 176-2011.pdf","21","2011-05-25","0");
INSERT INTO tbl_resolution VALUES("176 - 2012","","Approve Mun Ord # 03-2012, of the SB of San Juan, LU, “An Ord Prohibiting the Slaughter, Killing, Buying & Selling of the Green Sea & Olive Ridley Turtles Better Known as Pawikan, as Well as the Gathering of Its Eggs & the Destruction of its Nesting Habitat, as Amended”","1","Resolution 176-2012.pdf","21","2012-05-10","0");
INSERT INTO tbl_resolution VALUES("176 - 2013","","MOA w/ PNRC, DepEd – Div of LU and the Mun Gov’ts of Aringay, Balaoan, Luna, San Gabriel, Sto. Tomas, Bacnotan, Bangar, Santol, San Juan and the City of San Fernando,  pertaining to the implementation of the Disaster Risk Reduction in Schools (DRR SCHOOLS) .","11","RESOLUTION 176-2013.pdf","21","2013-06-13","0");
INSERT INTO tbl_resolution VALUES("177 - 1999","","P5,000.00 F/A to Brgy. Agpay, Burgos, LU, for the improvement of their barangay hall ","20","RESOLUTION NO.177-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("177 - 2007","","Renew the Contract of Service of Mr. PerlitaSito as Contractual Pharmacist ","31","RESOLUTION NO. 177-2007.pdf","21","2007-07-19","0");
INSERT INTO tbl_resolution VALUES("177 - 2008","","Thank the PTA-DOT for the donation of its real property consisting of 9,444 sq.m. located at Camp One, Rosario, to the PGLU","1,2,3,5,7,12,18,19,20,21,31,32,33","RESOLUTION NO. 177-2008.pdf","21","2008-06-19","0");
INSERT INTO tbl_resolution VALUES("177 - 2010","","Approve Ord # 002-2009, of the SB Bangar, LU, entitled: “An Ord Promulgating the Gender & Dev’t Code of the Municipality of Bangar & for Other Purposes","10","Resolution 177-2010.pdf","21","2010-08-05","0");
INSERT INTO tbl_resolution VALUES("177 - 2011","","Create Ad-Hoc Committee on the Codification of General Ordinances","10","Resolution 177-2011.pdf","21","2011-06-02","0");
INSERT INTO tbl_resolution VALUES("177 - 2012","","Approve Mun Ord # 20-2011, of the SB of Agoo, LU, “An Ord Prohibiting the Use of Plastic Bags on Dry Goods, Regulating Its Use on Wet Goods & Providing Penalties Thereof”","19","Resolution 177-2012.pdf","21","2012-05-10","0");
INSERT INTO tbl_resolution VALUES("177 - 2013","","Call on the 1st& 2ndEng’g Districts of DPWH to immediately determine potential hazards to traffic and commuters along the nat’l hi-way w/ the onset of the rainy season & take appropriate action in order to prevent injuries or loss of lives and damage to properties","10","RESOLUTION 177-2013.pdf","21","2013-06-13","0");
INSERT INTO tbl_resolution VALUES("178 - 1999","","P10,000.00 F/A to Brgy. Poblacion, Sto. Tomas, LU, for the construction of the barangay hall fencing","20","RESOLUTION NO.178-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("178 - 2007","","Contract of Consultancy Service, with Mr. Arturo Valdriz, as Consultant to the Office of the Governor on Sports Development and Ms. Jessie Panta, as Consultant to the Office of the Governor on Barangay and Indigenous Peoples Affair for the 2nd District ","31","RESOLUTION NO. 178-2007.pdf","21","2007-07-19","0");
INSERT INTO tbl_resolution VALUES("178 - 2008","","Approve Mun Ord # 09-2008, of the SB of San Juan, LU, entitled: “An Ordinance Imposing a Compulsory Segregation of Garbage at the Source”","20","RESOLUTION NO. 178-2008.pdf","21","2008-06-19","0");
INSERT INTO tbl_resolution VALUES("178 - 2010","","Return Ord # 01-2009, of the SB Tubao, LU, entitled: “The Child Welfare Code of the Municipality of Tubao, LU”","10","Resolution 178-2010.pdf","21","2010-08-05","0");
INSERT INTO tbl_resolution VALUES("178 - 2011","","Create TWG on the Codification of General Ordinances","10","Resolution 178-2011.pdf","21","2011-06-02","0");
INSERT INTO tbl_resolution VALUES("178 - 2012","","Approve Mun Ord # 10-2012, of the SB of Agoo, LU, “An Ord Regulating the Purchase & Sale, Trade-in, Pawning, Repair, Servicing & Maintenance of Brand New, Used or Pre-Owned & Reconditioned Mobile Phone Units in the Mun of Agoo, LU & for Other Purposes”","19","Resolution 178-2012.pdf","21","2012-05-10","0");
INSERT INTO tbl_resolution VALUES("178 - 2013","","Enjoin all officials and employees, as well as scholars of the PGLU to plant a tree in observance of the Arbor Day.","10,19","RESOLUTION 178-2013.pdf","21","2013-06-13","0");
INSERT INTO tbl_resolution VALUES("178 - 2014","2014 - 0169","\"Letter of Governor Manuel C. Ortega respectfully requesting the Honorable Body to authorize him to enter into an implementation Management Agreement (IMA) with the Department of Agriculture (DA) to be represented by its Regional Executive Director, ANDREW B. VILLACORTA, PRDP Program Director, Program Support Office-Luzon A of DA in connection with the implementation of the sub project of the Philippine Rural Development Program (PRDP) in the Province of La Union\"","4","RESOLUTION 178-2014.pdf","21","2014-05-29","0");
INSERT INTO tbl_resolution VALUES("179 - 1999","","P10,000.00 F/A to Brgy. Taberna, Bauang, LU, for the construction of the stage","20","RESOLUTION NO.179-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("179 - 2007","","Concur/confirm the appointment of Ms. Mila Gamboa as Provincial Population Officer ","18","RESOLUTION NO. 179-2007.pdf","21","2007-07-19","0");
INSERT INTO tbl_resolution VALUES("179 - 2008","","Commend PDCC, RDCC, PNP, LUPPO and PNP Ilocos Sur, the Officers and Men of Coastguard, the Officers and Men of PN, the Officers and Men of the PAF, the Municipal Mayor of Agoo, LU, and her husband, the 1LURRBN, the Fishermen of Brgy. Pilar, Sta. Cruz, and Brgy. San Sebastian, San Vicente, Local Officials of San Vicente and Sta. Lucia Medical personnel of Sta. Lucia District Hospital, and San Vicente Health Care and Maternity Clinic, all in Ilocos Sur, who participated in the successful search and rescue operations in connection with the Sea Mishap that occurred last June 22, 2008 involving 23 fishermen ","1","RESOLUTION NO. 179-2008.pdf","21","2008-06-26","0");
INSERT INTO tbl_resolution VALUES("179 - 2010","","Approve Ord # 3, emb in Res # 136, s 2009, of the SB Bauang, LU, entitled: “An Ord Prescribing Uniform Rules of procedure in the Hearing & Adjudication of Citizen’s Administrative Complaint Against Erring Brgy. Officials of Bauang, LU”","10","Resolution 179-2010.pdf","21","2010-08-05","0");
INSERT INTO tbl_resolution VALUES("179 - 2011","","Appropriate P200,000.00 for the Overtime Pay, Printing & Other Miscellaneous Expenses of the Ad-Hoc Committee & TWG on the Codification of Gen Ordinances","10","Resolution 179-2011.pdf","21","2011-06-02","0");
INSERT INTO tbl_resolution VALUES("179 - 2012","","MOA w/ DA relative to the joint venture for the establishment of Plant Nursery under the High Value Crops Dev’t Program (HVCDP)","3","Resolution 179-2012.pdf","21","2012-05-10","0");
INSERT INTO tbl_resolution VALUES("179 - 2013","","Condole w/ the bereaved family of Florentino G. Flores, Jr., SPM, CSF","1,3,5,6,7,9,10,11,12,13,18,19,20","RESOLUTION 179-2013.pdf","21","2013-06-13","0");
INSERT INTO tbl_resolution VALUES("179 - 2014","2014 - 0018","Ord # 2013-108, Ord Amending Ord # 2010-082, known as the Revenue Code of Santol, LU, Part Chapter III, Mayor?s Permit Fees, Art B, Administrative Provision, Sec 5, Duration & Renewal of Permit","8","RESOLUTION 179-2014.pdf","21","2014-05-29","0");
INSERT INTO tbl_resolution VALUES("179A- 2012","","MOA w/ 1590 Energy Corp for the continued operation, preservation, maintenance & mgt of the Bauang Diesel Power Plant","1","Resolution 179A-2012.pdf","21","2012-05-10","0");
INSERT INTO tbl_resolution VALUES("180 - 1999","","P5,000.00 F/A to the PTCA of Santiago E/S, Bauang, LU, for the completion of the school fence","20","RESOLUTION NO.180-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("180 - 2007","","Concur/Confirm the appointment of Engr. Joseph Dumuk as Provincial Information Officer","18","RESOLUTION NO. 180-2007.pdf","21","2007-07-19","0");
INSERT INTO tbl_resolution VALUES("180 - 2008","","Contract of Consultancy Services of the Consultants of the Office of the Governor effective July 1, 2008 to June 30, 2009","18","RESOLUTION NO. 180-2008.pdf","21","2008-06-26","0");
INSERT INTO tbl_resolution VALUES("180 - 2010","","Approve Ord # 2009-076, of the SB Santol, LU, entitled: “Ord Enacting the Disaster Management Code of the Municipality of Santol, LU”","10","Resolution 180-2010.pdf","21","2010-08-05","0");
INSERT INTO tbl_resolution VALUES("180 - 2011","","Approve the FY 2011 GF SB # 1, of Luna, LU","19","Resolution 180-2011.pdf","21","2011-06-02","0");
INSERT INTO tbl_resolution VALUES("180 - 2012","","Approve FY 2012 GF SB # 1, of San Gabriel, La Union.","20","Resolution 180-2012.pdf","21","2012-05-17","0");
INSERT INTO tbl_resolution VALUES("180 - 2013","","Approve the FY 2013 GF SB # 3, of Agoo, La Union.","1","RESOLUTION 180-2013.pdf","21","2013-06-20","0");
INSERT INTO tbl_resolution VALUES("180 - 2014","2014 - 0051","Mun Ord # 102, s 2014, An Ord Enacting the Market Code of the Mun of Sudipen, La Union.","8","RESOLUTION 180-2014.pdf","21","2014-05-29","0");
INSERT INTO tbl_resolution VALUES("181 - 1999","","P5,000.00 F/A to the PTCA of Sta. Monica E/S, Bauang, LU,  for the improvement of their school","20","RESOLUTION NO.181-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("181 - 2007","","Hire a Contractual Pharmacy Aide in Naguilian District Hospital","20","RESOLUTION NO. 181-2007.pdf","21","2007-07-19","0");
INSERT INTO tbl_resolution VALUES("181 - 2008","","Approve Ord # 456, s. 2007 of the SB of Bacnotan, LU, amending Ord # 262, s. of 1992 (An Ord Prohibiting Astray Animal and Imposing Penalties to Violators)","20","RESOLUTION NO. 181-2008.pdf","21","2008-06-26","0");
INSERT INTO tbl_resolution VALUES("181 - 2010","","Approve Ord # 12-2009, of the SB San Juan, LU, entitled: “An Ord Banning the Shooting, Capture, Sale & Purchase of the 2 Endangered & Endemic Bird Species, Namely: The Crested Myna & the Black Naped Oriole”","10","Resolution 181-2010.pdf","21","2010-08-05","0");
INSERT INTO tbl_resolution VALUES("181 - 2011","","Appeal for the immediate implementation of Ord # 004-99, Skills Dev’t Council for the Province","10","Resolution 181-2011.pdf","21","2011-06-02","0");
INSERT INTO tbl_resolution VALUES("181 - 2012","","Approve FY 2012 GF AB, of Caba, La Union.","20","Resolution 181-2012.pdf","21","2012-05-17","0");
INSERT INTO tbl_resolution VALUES("181 - 2013","","Approve the FY 2013 GF AB, of Pugo, La Union.","1","RESOLUTION 181-2013.pdf","21","2013-06-20","0");
INSERT INTO tbl_resolution VALUES("181 - 2014","2014 - 0152","Mun Ord # 4-2014, An Ord Granting Franchise of Tricycle-for-Hire to Qualified Applicants & Regulating their Operations w/n the Mun of San Gabriel, LU","4","RESOLUTION 181-2014.pdf","21","2014-05-29","0");
INSERT INTO tbl_resolution VALUES("182 - 1999","","P5,000.00 F/A to the PTCA of Pilar E/S, Bauang, LU, for the repair of the kitchen annex","20","RESOLUTION NO.182-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("182 - 2007","","Concur/confirm the appointment of Dr. Geoffrey Tilan as Provincial Administrator","21","RESOLUTION NO. 182-2007.pdf","21","2007-07-19","0");
INSERT INTO tbl_resolution VALUES("182 - 2008","","Approve Ord #12-2007, of the SB of Agoo, LU, entitled: “An Ord Regulating the Maintenance and Safekeeping of animals for the Welfare and Protection of Residents in the 49 Barangays of the Municipality of Agoo, LU”","20","RESOLUTION NO. 182-2008.pdf","21","2008-06-26","0");
INSERT INTO tbl_resolution VALUES("182 - 2010","","Approve Ord # 2010-077, of the SB Santol, LU, entitled: “An Ord Promulgating the Rules & Regulations for the Protection & Welfare of Senior Citizens in the Municipality of Santol”","10","Resolution 182-2010.pdf","21","2010-08-05","0");
INSERT INTO tbl_resolution VALUES("182 - 2011","","Approve Mun Ord # 18-2011, of the SB of San Juan, LU, “Legislative Authorization of the 2011 Mun Budget”","19","Resolution 182-2011.pdf","21","2011-06-02","0");
INSERT INTO tbl_resolution VALUES("182 - 2012","","Approve Ord # 42, s 2011, of the SB of Burgos, LU, “An Ord Promulgating the Gender & Dev’t (GAD) Code of the Mun of Burgos, LU & For Other Purposes”","5","Resolution 182-2012.pdf","21","2012-05-17","0");
INSERT INTO tbl_resolution VALUES("182 - 2013","","Commend Judge Ferdinand Fe, Branch 67, RTC, Bauang, La Union, for sentencing Supt Dionicio Borromeo, former Asst Prov’l Dir for Administration of Cavite PNP, with life imprisonment for protecting a shabu lab in Naguilian","20","RESOLUTION 182-2013.pdf","21","2013-06-20","0");
INSERT INTO tbl_resolution VALUES("183 - 1999","","P5,000.00 F/A to the PTCA of Payocpoc Este E/S, Bauang, LU, for the construction of a comfort room","20","RESOLUTION NO.183-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("183 - 2007","","Condole w/ BC DionisioAncheta, Brgy. I, CSF","30","RESOLUTION NO. 183-2007.pdf","21","2007-07-19","0");
INSERT INTO tbl_resolution VALUES("183 - 2008","","Approve Ord # 03, s. 2007, of the SB of Rosario, LU, entitled: “An Ord Adopting MALUNGGAY as the Official Vegetable of Rosario, LU in support of the Ord # 04, s. 2007 of the SP”","20","RESOLUTION NO. 183-2008.pdf","21","2008-06-26","0");
INSERT INTO tbl_resolution VALUES("183 - 2010","","Approve City Ord # 2009-006, of the SP of  San Fernando, LU, entitled: “An Ord Declaring the First Week of December of Every Year as LinggongKabataan in the City of San Fernando”","10","Resolution 183-2010.pdf","21","2010-08-05","0");
INSERT INTO tbl_resolution VALUES("183 - 2011","","Approve FY GF 2011 SB # 1, of Naguilian, LU","19","Resolution 183-2011.pdf","21","2011-06-02","0");
INSERT INTO tbl_resolution VALUES("183 - 2012","","Return Res # 12, s 2012, of the SB of Luna, LU, “Res Amending Certain Provisions of Mun Ord # 37-2012, Known as the “Municipal Gender & Dev’t (GAD) Code”","5","Resolution 183-2012.pdf","21","2012-05-17","0");
INSERT INTO tbl_resolution VALUES("183 - 2013","","Commend PP DaniloBumacod, Asst Pros Gaudencio Valdez, Jr.& Asst Pros Manuel Dulnuan, Jr. for the successful prosecution of the case involving the shabu lab in Naguilian","20","RESOLUTION 183-2013.pdf","21","2013-06-20","0");
INSERT INTO tbl_resolution VALUES("184 - 1999","","P5,000.00 F/A to the PTCA of Payocpoc E/S, Bauang, LU, for the putting up of iron grills of the school head office","20","RESOLUTION NO.184-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("184 - 2007","","Realign P1 M from the Flue Curing Program to the Roads and Bridges Program","20","RESOLUTION NO. 184-2007.pdf","21","2007-07-26","0");
INSERT INTO tbl_resolution VALUES("184 - 2008","","Approve Ord # 14-2007, of the SB of Agoo, LU, entitled: “An Ord Designating Specific Areas Within the Municipality of Agoo, LUas Quiet Zones and Prescribing Penalties for Violations Thereof”","20","RESOLUTION NO. 184-2008.pdf","21","2008-06-26","0");
INSERT INTO tbl_resolution VALUES("184 - 2010","","Approve Ord # 08, s 2009, of the SB Rosario, LU, entitled: “Ord Providing for Advance Inspection Scheme Relative to Business Permits Renewal & Defining Operational Procedure Thereof”","10","Resolution 184-2010.pdf","21","2010-08-05","0");
INSERT INTO tbl_resolution VALUES("184 - 2011","","Approve FY 2010 GF SB # 13, of Bauang, LU ","19","Resolution 184-2011.pdf","21","2011-06-02","0");
INSERT INTO tbl_resolution VALUES("184 - 2012","","Return Res # 13, s 2012, of the SB of Luna, LU, “Res Amending Certain Provisions of Mun Ord # 38-2010, Known as “The Child Welfare Code of Luna”","5","Resolution 184-2012.pdf","21","2012-05-17","0");
INSERT INTO tbl_resolution VALUES("184 - 2013","","Express gratitude to Rev Fr. Nolan Nabua, in protecting the citizens against the proliferation of drugs.","20","RESOLUTION 184-2013.pdf","21","2013-06-20","0");
INSERT INTO tbl_resolution VALUES("185 - 1999","","P5,000.00 F/A to the PTCA of Parian Oeste E/S, Bauang, LU, for the improvement of their school","20","RESOLUTION NO.185-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("185 - 2007","","Realign P462,500 to the following programs:\n\na.	Roads and Bridges                                       P305,000.00\nb.	Special Scholarship                                       157,500.00\n","2","RESOLUTION NO. 185-2007.pdf","21","2007-07-26","0");
INSERT INTO tbl_resolution VALUES("185 - 2008","","Approve Ord #18-2008, of the SB of Agoo, LU, entitled: “An Ord Amending Sec. 5 (Violation and Penalty) of Ord #. 424-99, An Ord Prohibiting Littering in Public Places Within the Jurisdiction of the Municipality of LU and other Related Acts Providing Penalties for violation Thereof”","20","RESOLUTION NO. 185-2008.pdf","21","2008-06-26","0");
INSERT INTO tbl_resolution VALUES("185 - 2010","","Approve Ord # 2-2010, of the SB Rosario, LU, entitled: “Ord Prescribing the Procedures in the processing Payment & Issuance of Business Permit in the Municipality of Rosario”","10","Resolution 185-2010.pdf","21","2010-08-05","0");
INSERT INTO tbl_resolution VALUES("185 - 2011","","Approve FY 2010 GF AB of the City of San Fernando, LU ","19","Resolution 185-2011.pdf","21","2011-06-02","0");
INSERT INTO tbl_resolution VALUES("185 - 2012","","Approve Mun Ord # 09-2012, of the SB of Agoo, LU, “An Ord Prohibiting Children of School age Enrolled in Any Institution in the Mun of Agoo, Loitering/Roaming Around During Class Hours”","5","Resolution 185-2012.pdf","21","2012-05-17","0");
INSERT INTO tbl_resolution VALUES("185 - 2013","","Express gratitude to Bishop ArtemioRillera, for his concern in protecting the citizens against proliferation of drugs.","20","RESOLUTION 185-2013.pdf","21","2013-06-20","0");
INSERT INTO tbl_resolution VALUES("185 - 2014","2014 - 0172","Recommend approval of the FY 2014 GF SB # 2, of Tubao, LU","1","RESOLUTION 185-2014.pdf","21","2014-06-05","0");
INSERT INTO tbl_resolution VALUES("186 - 1999","","P5,000.00 F/A to the PTCA of Parian Este E/S, Bauang, LU, for the rehab of the school canteen","20","RESOLUTION NO.186-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("186 - 2007","","Hire a Contractual Pharmacy Aide and Contractual Accounting Clerk ","18","RESOLUTION NO. 186-2007.pdf","21","2007-07-26","0");
INSERT INTO tbl_resolution VALUES("186 - 2008","","Approve Mun Ord # 2, s. 2008, of the SB of Bauang, LU, entitled: “An Ord Providing for the Establishment, Operation and Maintenance of Cockfighting and the Regulation of Cockfighting and Commercial Breeding of Gamecocks”","20","RESOLUTION NO. 186-2008.pdf","21","2008-06-26","0");
INSERT INTO tbl_resolution VALUES("186 - 2010","","Approve Ord # 02-2010, of the SB San Gabriel, LU, entitled: “An Ord Imposing Service Fees for Every Documents Acquired from the National Statistics office thru the Batch Request Entry system”","10","Resolution 186-2010.pdf","21","2010-08-05","0");
INSERT INTO tbl_resolution VALUES("186 - 2011","","Approve FY 2011 SB # 1, of Agoo, LU","19","Resolution 186-2011.pdf","21","2011-06-02","0");
INSERT INTO tbl_resolution VALUES("186 - 2012","","Congratulate & commend the ff athletes who won in IRAA &PalarongPambansa held at Pangasinan:\n\n1.	Gerik Nestor Oliveros\n2.	Derek Rene Oliveros\n3.	Keneth Chin\n","13","Resolution 186-2012.pdf","21","2012-05-17","0");
INSERT INTO tbl_resolution VALUES("186 - 2013","","Approve Mun Ord # 04-2013, of the SB of San Juan, LU, “An Ord Authorizing the Supplemental for the Implementation of Local Budget Circular No. 102”","1","RESOLUTION 186-2013.pdf","21","2013-06-20","0");
INSERT INTO tbl_resolution VALUES("186 - 2014","2014 - 0179","Recommend approval of the FY 2014 GF SB # 2, of Pugo, La Union.","1","RESOLUTION 186-2014.pdf","21","2014-06-05","0");
INSERT INTO tbl_resolution VALUES("187 - 1999","","P5,000.00 F/A to the PTCA of Casilagan E/S, Bauang, LU, for the improvement of their school","20","RESOLUTION NO.187-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("187 - 2007","","MOA w/ the Don Mariano Marcos Memorial State University (DMMMSU), Cong. Victor Ortega and the La Union Beekeepers Development Cooperative Inc., (LUBDCO) relative to the expansion of the Provincial Apiculture Program and Construction of the La Union Apiculture Development and Processing Center","30","RESOLUTION NO. 187-2007.pdf","21","2007-07-26","0");
INSERT INTO tbl_resolution VALUES("187 - 2008","","Approve Ord # 02-2008, of the SB of Agoo, LU, entitled: “Amending Sec. 3 and Sec. 4 (A) of Mun Ord # 18-2006, An Ord approving the Rental Rates on the spaces in the Agoo Economic Enterprise Center”","20","RESOLUTION NO. 187-2008.pdf","21","2008-06-26","0");
INSERT INTO tbl_resolution VALUES("187 - 2010","","Require SB of San Juan, LU, proof of compliance on Public hearing Ord # 06-2010, entitled: Art. B, Sec. 1 under the General Tax & Revenue Ord of 2010, as Amended","10","Resolution 187-2010.pdf","21","2010-08-05","0");
INSERT INTO tbl_resolution VALUES("187 - 2011","","Approve FY 2010 GF SB # 1, of Pugo, LU","19","Resolution 187-2011.pdf","21","2011-06-02","0");
INSERT INTO tbl_resolution VALUES("187 - 2012","","MOA with NHA to use the 2-hectare ppy in Sagayad, CSF, LU as a resettlement site for displaced families","1","Resolution 187-2012.pdf","21","2012-05-24","0");
INSERT INTO tbl_resolution VALUES("187 - 2013","","Approve Mun Ord # 08-2012, of the SB of San Gabriel, La Union, “Sr. Citizens Code of the Mun of San Gabriel, La Union”","5","RESOLUTION 187-2013.pdf","21","2013-06-20","0");
INSERT INTO tbl_resolution VALUES("187 - 2014","2014 - 0180","Recommend approval of the FY 2014 GF SB # 2, of Sudipen, La Union.","1","RESOLUTION 187-2014.pdf","21","2014-06-05","0");
INSERT INTO tbl_resolution VALUES("188 - 1999","","P5,000.00 F/A to the PTCA of Calumbaya, Bauang, LU, for the construction of a comfort room","20","RESOLUTION NO.188-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("188 - 2007","","Declare the province under a State of Calamity due to El Niño phenomenon","30","RESOLUTION NO. 188-2007.pdf","21","2007-07-26","0");
INSERT INTO tbl_resolution VALUES("188 - 2008","","Approve Mun Ord # 04-2008, of the SB of San Juan, LU, entitled: “An Ord Amending Mun Ord # 17-2007”","20","RESOLUTION NO. 188-2008.pdf","21","2008-06-26","0");
INSERT INTO tbl_resolution VALUES("188 - 2010","","Return  Ord # 32, s 2009, of the SB Bauang, LU, entitled: “An Ord Requiring All Heads of Households, Transients & owners of Establishment w/n the Territorial Jurisdiction of Bauang, LU, to Register Themselves & Members of their Respective Families w/ the Office of the PunongBrgy. of the Brgy. Where they are Permanent or Temporarily Residing &Prescribing Penalty for Violations Thereof","10","Resolution 188-2010.pdf","21","2010-08-05","0");
INSERT INTO tbl_resolution VALUES("188 - 2011","","Approve Mun Ord # 35, s 2011 of the SB of Burgos, LU, “An Ord Establishing an Eco-Park for the Mun of Burgos, LU”","3","Resolution 188-2011.pdf","21","2011-06-02","0");
INSERT INTO tbl_resolution VALUES("188 - 2012","","MOA w/ BFAR, LGU of San Juan, LU & the Asosasyon ng mgaKababaihan ng Taboc, San Juan, pertaining to the implementation of the Bangus Deboning Project","3","Resolution 188-2012.pdf","21","2012-05-24","0");
INSERT INTO tbl_resolution VALUES("188 - 2013","","Condole w/ the bereaved family of ex-VM Gregorio Hufano, CSF","1,3,5,6,7,9,10,11,12,13,18,19,20","RESOLUTION 188-2013.pdf","21","2013-06-27","0");
INSERT INTO tbl_resolution VALUES("188 - 2014","2014 - 0178","Recommend approval of the FY 2014 GF AB, of Caba, La Union.","1","RESOLUTION 188-2014.pdf","21","2014-06-05","0");
INSERT INTO tbl_resolution VALUES("189 - 1999","","P5,000.00 F/A to the PTCA of Bagbag E/S, Bauang, LU, for the repair of the stage and social hall","20","RESOLUTION NO.189-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("189 - 2007","","Approve FY 2007 GF SB # 3, of Bauang, LU","20","RESOLUTION NO. 189-2007.pdf","21","2007-07-26","0");
INSERT INTO tbl_resolution VALUES("189 - 2008","","Approve Ord #5, s. 2008, of the SB of Bauang, LU, entitled: “An Ord Imposing a P500 Filing Fee for Administrative Cases Filed Before the SB of Bauang, LU”","20","RESOLUTION NO. 189-2008.pdf","21","2008-06-26","0");
INSERT INTO tbl_resolution VALUES("189 - 2010","","Approve Ord # 02, s 2009, of the SB Rosario, LU, entitled: “An Ord Requiring Each Bank & Big Establishment in Rosario to Adopt an Adequate Security Program Commensurate to Its Operation”","10","Resolution 189-2010.pdf","21","2010-08-05","0");
INSERT INTO tbl_resolution VALUES("189 - 2011","","Return Mun Ord # 36, s 2011, of the SB of Burgos, LU, “An Ord Amending Ord # 01, s 2006 (as Amended by Ord # 21, s 2008) Approving a 20% Increase in Fare Rates of Motorized Tricycles for Hire in the Mun of Burgos, LU”","9","Resolution 189-2011.pdf","21","2011-06-02","0");
INSERT INTO tbl_resolution VALUES("189 - 2012","","Approve the FY 2011 GF SB # 1, of Bacnotan, La Union.","1","Resolution 189-2012.pdf","21","2012-05-24","0");
INSERT INTO tbl_resolution VALUES("189 - 2013","","Approve request of MARAND to excavate along the unpaved shoulder of the Nat’l Hi-way for water supply line at the eastern portion of the road shoulder .","1","RESOLUTION 189-2013.pdf","21","2013-06-27","0");
INSERT INTO tbl_resolution VALUES("190 - 1999","","P5,000.00 F/A to the PTCA of Boy-utan, Bauang, LU, for the construction of a comfort room","20","RESOLUTION NO.190-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("190 - 2007","","approve FY 2007 GF SB # 3, of Sudipen, LU","20","RESOLUTION NO. 190-2007.pdf","21","2007-07-26","0");
INSERT INTO tbl_resolution VALUES("190 - 2008","","Approve Ord # 16-2007, of the SB of Agoo, LU, entitled: “An Ord Requiring Private Firms, Companies, and Corporations within the Territorial Jurisdiction of the Municipality of Agoo, LU to Register their Respective Entities with the PHILHEALTH pursuant to RA No. 7875”","20","RESOLUTION NO. 190-2008.pdf","21","2008-06-26","0");
INSERT INTO tbl_resolution VALUES("190 - 2010","","Contract of Consultancy w/ Dr. Jose C. Ostrea, as Consultant on Health, Env’t & Population Management Affairs to the OPG","1,18","Resolution 190-2010.pdf","21","2010-08-05","0");
INSERT INTO tbl_resolution VALUES("190 - 2011","","Return Mun Ord # 17-2011, of the SB of San Juan, LU, “The Health & Sanitation Code of San Juan, LU”","18","Resolution 190-2011.pdf","21","2011-06-02","0");
INSERT INTO tbl_resolution VALUES("190 - 2012","","Approve the FY 2012 GF SB # 1, of Bagulin, La Union.","1","Resolution 190-2012.pdf","21","2012-05-24","0");
INSERT INTO tbl_resolution VALUES("190 - 2013","","MOA w/ DOH re: release of the Sub-Allotment Fund of P500,000.00 to be used for the improvement of the Prov’l Warehouse to include an External Quality Assurance (EQA) System Rm for PHO & the Prov’l Health Team Office","1","RESOLUTION 190-2013.pdf","21","2013-06-27","0");
INSERT INTO tbl_resolution VALUES("190 - 2014","2014 - 0163","City Ord # 2014-01, An Ord Amending City Ord # 2013-01, An Ord Requiring the Foodservice Industry w/n the Territorial Jurisdiction of the CSF, LU to Include ? Cup of Cooked Rice in their Menu","3","RESOLUTION 190-2014.pdf","21","2014-06-05","0");
INSERT INTO tbl_resolution VALUES("191 - 1999","","P5,000.00 F/A to the PTCA of Cabalayangan E/S, Bauang, LU, for the construction of the roofing of the outdoor stage","20","RESOLUTION NO.091-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("191 - 2007","","To approve Appropriation Ordinance No. 03-2007, of the SB of Agoo, La Union, approving the FY 2007 General Fund Supplemental Budget No. 2, of that municipality","20","RESOLUTION NO. 191-2007.pdf","21","2007-07-26","0");
INSERT INTO tbl_resolution VALUES("191 - 2008","","Approve Mun Ord # 03-2008, of the SB of San Juan, LU, entitled: “An Ord Prescribing Increase of Rental Fees of Stalls which as Specifically Located at the Northern Part of the San Juan Multi-Purpose Center”","20","RESOLUTION NO. 191-2008.pdf","21","2008-06-26","0");
INSERT INTO tbl_resolution VALUES("191 - 2010","","MOA w/ DOH-CHD I, re: construction of the LU Regional Blood Center ","1,18","Resolution 191-2010.pdf","21","2010-08-05","0");
INSERT INTO tbl_resolution VALUES("191 - 2011","","Return Ord # 2011-001, of the SB of Rosario, LU, “An Ord enacting the Comprehensive Environmental Code of the Mun of Rosario, Province of La Union”","10","Resolution 191-2011.pdf","21","2011-06-02","0");
INSERT INTO tbl_resolution VALUES("191 - 2012","","Approve the FY 2012 GF SB # 2, of Agoo, La Union.","1","Resolution 191-2012.pdf","21","2012-05-24","0");
INSERT INTO tbl_resolution VALUES("191 - 2013","","Request Pres Benigno S. Aquino III, to donate 6 Emergency Ambulances for the different Dist Hos & granting the Gov to request for such service vehicles w/ a provision for an allocation of necessary funds for their operation utilization & maintenance.","18","RESOLUTION 191-2013.pdf","21","2013-06-27","0");
INSERT INTO tbl_resolution VALUES("192 - 1999","","P5,000.00 F/A to the PTCA of Bucayab, Bauang, LU, for the rip-rapping of the frontage and steps ","20","RESOLUTION NO.192-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("192 - 2007","","Approve FY 2007 GF SB # 2, of Agoo, LU","20","RESOLUTION NO. 192-2007.pdf","21","2007-07-26","0");
INSERT INTO tbl_resolution VALUES("192 - 2008","","Approve Mun Ord #-2008, of the SB of San Juan, LU, entitled: “An Ord Imposing Business Permit Fee to Organizers of Concerts, Sports Activities and the Like”","20","RESOLUTION NO. 192-2008.pdf","21","2008-06-26","0");
INSERT INTO tbl_resolution VALUES("192 - 2010","","Congratulate Mayor Pablo Ortega for the Most Honest & Transparent in Gov’t Services Award by AIM Policy Center","1,18","Resolution 192-2010.pdf","21","2010-08-05","0");
INSERT INTO tbl_resolution VALUES("192 - 2011","","Return Ord # 2-2011, of the SB of San Gabriel, LU, “An Ord amending, Consolidating & Codifying All Laws or Rules Relative to the Operations of Land Transportation & Regulating the Use of Streets”","10","Resolution 192-2011.pdf","21","2011-06-02","0");
INSERT INTO tbl_resolution VALUES("192 - 2012","","Approve SB # 1, amounting P11,682,506.05","1","Resolution 192-2012.pdf","21","2012-05-24","0");
INSERT INTO tbl_resolution VALUES("192 - 2013","","Agreement w/ DOH re: 2013 Service Level Agreement (SLA) that covers the Management & Implementation of the Annual Operational Plan (AOP) for 2013 ","18","RESOLUTION 192-2013.pdf","21","2013-06-27","0");
INSERT INTO tbl_resolution VALUES("192 - 2014","2014 - 0102","Mun Ord # 1, s 2014, Ord Governing the Sale, Use & Disposition of Burial Lots at the Newly Developed Area of the Mun Cemetery of the Mun of Balaoan, LU","7","RESOLUTION 192-2014.pdf","21","2014-06-05","0");
INSERT INTO tbl_resolution VALUES("193 - 1999","","P5,000.00 F/A to the PTCA of Guerrero E/S, Bauang, LU, for the construction of a comfort room","20","RESOLUTION NO.193-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("193 - 2007","","Approve FY 2007 GF SB # 4, of Luna, LU","20","RESOLUTION NO. 193-2007.pdf","21","2007-07-26","0");
INSERT INTO tbl_resolution VALUES("193 - 2008","","Approve Mun Ord # 02-2008, of the SB of San Juan, LU, entitled: “An Ord Enjoining Banks or Banking Institutions to Submit a Joint Statement of Annual Income to the Office of the Mayor”","20","RESOLUTION NO. 193-2008.pdf","21","2008-06-26","0");
INSERT INTO tbl_resolution VALUES("193 - 2010","","RA 7171 Fund projects amounting P132,162,019.00","1,18","Resolution 193-2010.pdf","21","2010-08-05","0");
INSERT INTO tbl_resolution VALUES("193 - 2011","","Approve the CY 2011 Supplemental AIP of the province relative to the repair & improvement of the Senior Citizen’s Center","7","Resolution 193-2011.pdf","21","2011-06-09","0");
INSERT INTO tbl_resolution VALUES("193 - 2012","","Contract of Service with Dr. Melinda O. Javillonar as Visiting Consultant at Rosario Dist Hosp.","20","Resolution 193-2012.pdf","21","2012-05-24","0");
INSERT INTO tbl_resolution VALUES("193 - 2013","","MOA w/ DOH-CHD ILOCOS re: implementation of the improvement of TB DOTS Bldg Project at RDH","18","RESOLUTION 193-2013.pdf","21","2013-06-27","0");
INSERT INTO tbl_resolution VALUES("193 - 2014","2014 - 0088","Ord # 1-2014, An Ord Amending Ord # 10-2013, An Ord Regulating the Sale, Distribution, Display, Storage & Use of Firecrackers & Other Pyrotechnic Devices w/n the Jurisdiction of San Gabriel, LU","10","RESOLUTION 193-2014.pdf","21","2014-06-05","0");
INSERT INTO tbl_resolution VALUES("194 - 1999","","P5,000.00 F/A to Brgy. San Luis, Pugo, LU, for the SK basketball tournament","20","RESOLUTION NO.194-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("194 - 2007","","Approve FY 2007 GF SB # 1, of Bangar, LU","20","RESOLUTION NO. 194-2007.pdf","21","2007-07-26","0");
INSERT INTO tbl_resolution VALUES("194 - 2008","","Approve Ord # 09-2008, of the SB of Aringay, LU, entitled: “Ord Assuring the Continuing of Supplies for Family Planning Services in the Municipality, Calling for the Adoption of a Comprehensive Self-Reliance Plan and Allocating Funds for the Purpose” ","20","RESOLUTION NO. 194-2008.pdf","21","2008-06-26","0");
INSERT INTO tbl_resolution VALUES("194 - 2010","","Affirm SP Res # 072-2010","1","Resolution 194-2010.pdf","21","2010-08-12","0");
INSERT INTO tbl_resolution VALUES("194 - 2011","","Realign P6.5 M from District/Community Hospital Program to the Public Buildings/Structures Improvement & Construction Program","3","Resolution 194-2011.pdf","21","2011-06-09","0");
INSERT INTO tbl_resolution VALUES("194 - 2012","","Adjusting Salary Grade of Mr. Florencio C. Celino to One Grade higher than his present salary.","20","Resolution 194-2012.pdf","21","2012-05-24","0");
INSERT INTO tbl_resolution VALUES("194 - 2013","","Contract of Consultancy Service w/ Mr. Jose Maria  C. Ortega as Consultant on Legislative Affairs","10","RESOLUTION 194-2013.pdf","21","2013-06-27","0");
INSERT INTO tbl_resolution VALUES("195 - 1999","","Enough amount as F/A to Brgy. Samara, Aringay, LU, for the purchase of streetlight project","20","RESOLUTION NO.195-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("195 - 2007","","Approve FY 2007 GF SB # 5, of Bauang, LU","20","RESOLUTION NO. 195-2007.pdf","21","2007-07-26","0");
INSERT INTO tbl_resolution VALUES("195 - 2008","","Approve Ord # 04, s. 2007, of the SB of Rosario, LU, entitled: “An Ord Prohibiting the Selling, Offering and Dispensing of Alcoholic Beverage to Persons Below 18 Years Old”","20","RESOLUTION NO. 195-2008.pdf","21","2008-06-26","0");
INSERT INTO tbl_resolution VALUES("195 - 2010","","Approve FY 2010 GF SB # 3, of Balaoan, LU","1","Resolution 195-2010.pdf","21","2010-08-12","0");
INSERT INTO tbl_resolution VALUES("195 - 2011","","MOA w/ Northern Phils Tribal Communities Dev’t Center Inc., the Mun Gov’t of Rosario, LU & Beneficiaries/residents of Brgys. Tabtabungao&Cataguintingan, Rosario, LU pertaining to the proposed construction of a 91-meter long steel matting suspension footbridge connecting Tabtabungao&Cataguintingan","7","Resolution 195-2011.pdf","21","2011-06-09","0");
INSERT INTO tbl_resolution VALUES("195 - 2012","","Approve the FY 2012, GF SB # 1, of Pugo, La Union.","20","Resolution 195-2012.pdf","21","2012-05-24","0");
INSERT INTO tbl_resolution VALUES("195 - 2013","","MOA w/ the Operation SMILE Phils Found Inc. re: possible conduct of a 3-day Medical Mission at LUMC in Nov 2013","18","RESOLUTION 195-2013.pdf","21","2013-06-27","0");
INSERT INTO tbl_resolution VALUES("196 - 1999","","P10,000.00 F/A to the Southern Payokenian Asso., Bauang, LU, for the completion of the stage/auditorium","20","RESOLUTION NO.196-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("196 - 2007","","Approve FY 2007 GF SB # 3, of Pugo, LU","20","RESOLUTION NO. 196-2007.pdf","21","2007-07-26","0");
INSERT INTO tbl_resolution VALUES("196 - 2008","","Express full support and strong endorsement to HB # 11, entitled: “An Act Institutionalizing the Monthly Compensation of Day Care Workers and for Other Purposes”","20","RESOLUTION NO. 196-2008.pdf","21","2008-06-26","0");
INSERT INTO tbl_resolution VALUES("196 - 2010","","Approve FY 2010 GF SB # 7, of Bauang, LU","1","Resolution 196-2010.pdf","21","2010-08-12","0");
INSERT INTO tbl_resolution VALUES("196 - 2011","","MOA/Contract of Affiliation w/ LORMA Colleges, pertaining the OJT or internship program of their students from Apr 2013 to June 2016 in the District Hospitals","18","Resolution 196-2011.pdf","21","2011-06-09","0");
INSERT INTO tbl_resolution VALUES("196 - 2012","","Approve Ord # 470, s 2011, entitle: “Market Code of the Mun of Bacnotan, LU” pursuant to Sec 16, R.A. 7160","19","Resolution 196-2012.pdf","21","2012-05-24","0");
INSERT INTO tbl_resolution VALUES("196 - 2013","","Realign P6M to:\n\na.	PHILHEALTH  =  P4M\nb.	Social Welfare Dev’t = 2M","1","RESOLUTION 196-2013.pdf","21","2013-06-27","0");
INSERT INTO tbl_resolution VALUES("197 - 1999","","P10,000.00 F/A to Brgy. Paraoir, Balaoan, LU, for the expansion of their streetlights","20","RESOLUTION NO.197-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("197 - 2007","","Approve FY 2007 GF SB # 2, of Caba, LU","20","RESOLUTION NO. 197-2007.pdf","21","2007-07-26","0");
INSERT INTO tbl_resolution VALUES("197 - 2008","","Approve Ord # 1, s. 2008, of the SB of Bauang, LU, entitled: “An Ord Regulating the Operation of the Videoke Establishments and the Volume of Sound Generated from the Operation of Commercial Videoke Machines in the Municipality of Bauang, LU and Providing Penalties for Violation Thereof”","20","RESOLUTION NO. 197-2008.pdf","21","2008-06-26","0");
INSERT INTO tbl_resolution VALUES("197 - 2010","","Approve FY 2010 GF SB # 8, of Bauang, LU","1","Resolution 197-2010.pdf","21","2010-08-12","0");
INSERT INTO tbl_resolution VALUES("197 - 2011","","Endorse conversion of Balaoan-Santol Prov’l Rd, Bacnotan-San Gabriel Prov’l Rd & Balaoan (Pantar)-Luna Prov’l Rd into national roads as proposed under HB #s 4013, 4015, & 4016","3","Resolution 197-2011.pdf","21","2011-06-09","0");
INSERT INTO tbl_resolution VALUES("197 - 2012","","Approve Ord # 201-093, entitled: “An Ord Declaring Every First Week of Nov. & Every Year Thereafter as PalarongPambayan in the Mun of Santol& Providing Funds Therefore”","10","Resolution 197-2012.pdf","21","2012-05-24","0");
INSERT INTO tbl_resolution VALUES("197 - 2013","","2013 Internal Rules of Procedure of the 20th SP","10","RESOLUTION  197-2013.pdf","21","2013-07-04","0");
INSERT INTO tbl_resolution VALUES("197 - 2014","2014 - 0183","Recommend approval of the FY 2014 GF SB # 1, of Bangar, La Union.","1","RESOLUTION 197-2014.pdf","21","2014-06-11","0");
INSERT INTO tbl_resolution VALUES("198 - 1999","","P20,000.00 F/A to Brgy. Almeida, Balaoan, LU, for the completion of their streetlight project","20","RESOLUTION NO.198-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("198 - 2007","","Pay salary adjustment of Mr. Jorge Oropilla, Maintenance Man, of Rosario District Hospital to a one grade higher ","18","RESOLUTION NO. 198-2007.pdf","21","2007-08-02","0");
INSERT INTO tbl_resolution VALUES("198 - 2008","","Approve Res # 08-05, of the SP of the City of San Fernando, LU entitled: “Res Authorizing the City Mayor to Enter into a MOA w/ the PGLU, the Solid Waste Management Association of the Phils, the Foundation for Sustainable Society, Inc., and the Center for Advanced Phil. Studies Regarding the Implementation of the Integrated Support for Sustainable Urban Environment 2 (ISSUE 2) Programme in the Province of La Union”","20","RESOLUTION NO. 198-2008.pdf","21","2008-06-26","0");
INSERT INTO tbl_resolution VALUES("198 - 2010","","Approve FY 2010 GF SB # 4, of Sudipen, LU","1","Resolution 198-2010.pdf","21","2010-08-12","0");
INSERT INTO tbl_resolution VALUES("198 - 2011","","Return Ord # 9, s 2010, of the SB of Bauang, LU, “An Ord Promulgating the Children’s Code of the Municipality of Bauang”","10","Resolution 198-2011.pdf","21","2011-06-09","0");
INSERT INTO tbl_resolution VALUES("198 - 2012","","Return Ord # 472, s 2011, of Bacnotan, LU, “Ord Prescribing the Regular & Discounted Fares of Motorized Tricycles For Hire & Prescribing Penalties For Violations”","9","Resolution 198-2012.pdf","21","2012-05-24","0");
INSERT INTO tbl_resolution VALUES("198 - 2013","","Standing Committees 2013-2016.","1","RESOLUTION 198-2013.pdf","21","2013-07-04","0");
INSERT INTO tbl_resolution VALUES("198 - 2014","2014 - 0184","Recommend approval of the FY 2014 GF SB # 1, of Luna, La Union.","1","RESOLUTION 198-2014.pdf","21","2014-06-11","0");
INSERT INTO tbl_resolution VALUES("199 - 1999","","P15,000.00 F/A to Brgy. Dasay, San Juan, LU, for the construction of streetlights","20","RESOLUTION NO.199-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("199 - 2007","","Concur/confirm the appointment of Mr. AvelinoLomboy as Provincial Agriculturist","31","RESOLUTION NO. 199-2007.pdf","21","2007-08-02","0");
INSERT INTO tbl_resolution VALUES("199 - 2008","","Approve Ord # 03, s. 2007, of the SB of Rosario, LU, entitled: “An Ord Amending Artic. IX, Section 10 of Ord # 19, s. of 1996, (Codifying the Traffic Ord of the Mun. of Rosario, LU)”","20","RESOLUTION NO. 199-2008.pdf","21","2008-06-26","0");
INSERT INTO tbl_resolution VALUES("199 - 2010","","Approve City Ord # 2010-2002 of the City of San Fernando, LU, An Ord Regulating the Sale, Distribution, Manufacture & Use of the Phil. Nat’l Police/Armed Forces of the Phils. Uniforms, insignias & Other Accessories","10","Resolution 199-2010.pdf","21","2010-08-12","0");
INSERT INTO tbl_resolution VALUES("199 - 2011","","Return Mun Ord No. 02, s 2011, of the SB of Sto. Tomas, LU, an Ord Regulating the Deposition of Pulverized Materials Such as Ore, Coal, Gypsum, Silica, Betonies & Other Mineral Components that are Utilized by All Industries Operating w/n the Mun of Sto. Tomas, LU”","10","Resolution 199-2011.pdf","21","2011-06-09","0");
INSERT INTO tbl_resolution VALUES("199 - 2012","","Expressing the Province’s Unequivocal & Full Support for the Jan 31 Subcommittee Report # 6","3,5,7,9,10,11,19,20","Resolution 199-2012.pdf","21","2012-05-24","0");
INSERT INTO tbl_resolution VALUES("199 - 2013","","Adopt findings of the Office of the Vice Governor as to the ranking of the Members of the SP pending COMELEC’S promulgation","10","RESOLUTION 199-2013.pdf","21","2013-07-04","0");
INSERT INTO tbl_resolution VALUES("200 - 1999","","AO amounting P501,737.00 of the General Fund for SB # 01","20","RESOLUTION NO.200-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("200 - 2007","","Approve Res # 2007-81 of the SB of Pugo, LU, entitled: “Regulating Acts of Activities During Wakes While Religious Services are Being Conducted”","20","RESOLUTION NO. 200-2007.pdf","21","2007-08-02","0");
INSERT INTO tbl_resolution VALUES("200 - 2008","","Condole w/ BC Oscar Gonzales, Ilocanos Sur, CSF","2,3,5,7,12,18,19,20,21,31,32","RESOLUTION NO. 200-2008.pdf","21","2008-06-26","0");
INSERT INTO tbl_resolution VALUES("200 - 2010","","That SB of Agoo, LU, be required to show proof of Public Hearing re: Mun. Ord # 26-2009, “An Ord Declaring the Northern Portion of Dona ToribiaAspiras Rd, Agoo, LU, Fronting the DMMMSU-SLUC as a Park to be Named Dennys’Park","10","Resolution 200-2010.pdf","21","2010-08-12","0");
INSERT INTO tbl_resolution VALUES("200 - 2011","","Amend SP Res # 177-2011, of the Ad-Hoc Committee on the Codification of General Ordinances","10","Resolution 200-2011.pdf","21","2011-06-09","0");
INSERT INTO tbl_resolution VALUES("200 - 2012","","Approve Ord # 17-2012, of the SB of Agoo, LU, “An Ord Authorizing the Proposed Borrowing of the Mun of Agoo, LU in the Amount of P25 M to Fund the Agoo Public Cemetery Expansion (Phase II)","10","Resolution 200-2012.pdf","21","2012-06-05","0");
INSERT INTO tbl_resolution VALUES("200 - 2013","","Support retention/non-abolition of SK","10","RESOLUTION 200-2013.pdf","21","2013-07-11","0");
INSERT INTO tbl_resolution VALUES("201 - 1999","","Approve 1999 GF AB, of San Juan, LU","20","RESOLUTION NO.201-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("201 - 2007","","Return Res # 2007-82 of the SB of Pugo, LU, entitled: “Regulating Activities in Celebration of Foundation Anniversaries/Fiestas of Local Government Units Specially During Election Years”","20","RESOLUTION NO. 201-2007.pdf","21","2007-08-02","0");
INSERT INTO tbl_resolution VALUES("201 - 2008","","MOU with the Bolong Management Corp. (BAMCOR), Barangay Almeida, Balaoan, LU, in connection with the temporary use of the deep well at the La Union Breeding Station at Paraoir ","1","RESOLUTION NO. 201-2008.pdf","21","2008-07-10","0");
INSERT INTO tbl_resolution VALUES("201 - 2010","","Request BM Henry Bacurnay, Jr. to seek help for the Indigenous People’s plight ","1,18","Resolution 201-2010.pdf","21","2010-08-12","0");
INSERT INTO tbl_resolution VALUES("201 - 2011","","Congratulate H.E. Generoso G. Calonge for his appointment as the new Ambassador Extraordinary & Plenipotentiary to the State of Israel, Chief of Mission, Class II","21","Resolution 201-2011.pdf","21","2011-06-09","0");
INSERT INTO tbl_resolution VALUES("201 - 2012","","Express the intent of the province to establish a sister-province or twinning relationship with the Prov’l Gov’t of Tarlac.","20","Resolution 201-2012.pdf","21","2012-06-05","0");
INSERT INTO tbl_resolution VALUES("201 - 2013","","Approve the CY 2013 Prov’l Integrated Implementation Plan.","1","RESOLUTION 201-2013.pdf","21","2013-07-11","0");
INSERT INTO tbl_resolution VALUES("202 - 1999","","Approve 1999 GF AB, of Agoo, LU","20","RESOLUTION NO.202-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("202 - 2007","","Declare March 1 of Every Year as “La Union Twins Day”","21","RESOLUTION NO. 202-2007.pdf","21","2007-08-02","0");
INSERT INTO tbl_resolution VALUES("202 - 2008","","MOA with the La Union Medical Society Inc., (LUMS), in connection with the vacant space situated at the South Half-portion of the one-storey building located at Quezon Avenue, CSF beside LUTLDC which was owned by the province to have its Medical Indigency Clinic","18","RESOLUTION NO. 202-2008.pdf","21","2008-07-10","0");
INSERT INTO tbl_resolution VALUES("202 - 2010","","Approve Ord # 06-2010, of the SB of Agoo, LU, An Ord Regulating the Construction & Use of VIP Rooms Inside Videoke Bars/KTV Bars & Restaurants in the Mun of Agoo, LU","10","Resolution 202-2010.pdf","21","2010-08-19","0");
INSERT INTO tbl_resolution VALUES("202 - 2011","","Congratulate H.E. Cristina G. Ortega for her appointment as the new Ambassador Extraordinary & Plenipotentiary to the French Republic w/ concurrent jurisdiction over the principality of Monaco","21","Resolution 202-2011.pdf","21","2011-06-09","0");
INSERT INTO tbl_resolution VALUES("202 - 2012","","Signify the interest & intent of the province to establish a sisterhood or twinning relationship w/ Daly City, CA, USA","20","Resolution 202-2012.pdf","21","2012-06-05","0");
INSERT INTO tbl_resolution VALUES("202 - 2013","","Approve the FY 2013 GF SB # 1, of Pugo, La Union.","1","RESOLUTION 202-2013_001.pdf","21","2013-07-11","0");
INSERT INTO tbl_resolution VALUES("202 - 2014","2014 - 0198","Recommend approval of the FY 2014 GF SB # 2, of Bagulin, La Union.","1","RESOLUTION 202-2014.pdf","21","2014-06-19","0");
INSERT INTO tbl_resolution VALUES("203 - 1999","","AO amounting P91,729.22 for Terminal Leave Pay","20","RESOLUTION NO.203-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("203 - 2007","","Urge DOTC and the La Union Transportation Office (LTO) to strictly enforce the Anti-Smoke Belching Provisions of RA 8749, the Philippine Clean Air of 1999","21","RESOLUTION NO. 203-2007.pdf","21","2007-08-02","0");
INSERT INTO tbl_resolution VALUES("203 - 2008","","Approve the proposed programming from RA 7171 Fund in the amount of P15,135,311 ","1","RESOLUTION NO. 203-2008.pdf","21","2008-07-10","0");
INSERT INTO tbl_resolution VALUES("203 - 2010","","Approve Ord # 07-2010, of the SB of Agoo, LU, An Ord Regulating the Display of Commercial Streamer, Billboards, Posters, Tarpaulins & Buntings in Public Places in the Mun of Agoo, LU","10","Resolution 203-2010.pdf","21","2010-08-19","0");
INSERT INTO tbl_resolution VALUES("203 - 2011","","Amend Res # 178-2011, creating the TWG on the Codification of General Ordinances","10","Resolution 203-2011.pdf","21","2011-06-09","0");
INSERT INTO tbl_resolution VALUES("203 - 2012","","MOA w/ DA pertaining to the implementation of the DA’s goat & chicken livelihood assistance ","3","Resolution 203-2012.pdf","21","2012-06-05","0");
INSERT INTO tbl_resolution VALUES("203 - 2013","","Approve the FY 2013 GF SB # 2, of Balaoan, La Union.","1","RESOLUTION 203-2013_001.pdf","21","2013-07-11","0");
INSERT INTO tbl_resolution VALUES("203 - 2014","2014 - 0199","Recommend approval of the FY 2014 GF SB # 3, of Bagulin, LU","1","RESOLUTION 203-2014.pdf","21","2014-06-19","0");
INSERT INTO tbl_resolution VALUES("204 - 1999","","Authorize DHs to pay their respective casual workers from their PS savings","20","RESOLUTION NO.204-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("204 - 2007","","Request the Secretary of Agriculture to cause funds from the P7.5 B allocation for Agriculture in the National Budget for the repair and rehabilitation of all the irrigation systems within the Province ","20","RESOLUTION NO. 204-2007.pdf","21","2007-08-02","0");
INSERT INTO tbl_resolution VALUES("204 - 2008","","Enact an Appropriation  in the amount of 203,650 as payment of the Real Property of Mrs. Alsaida de Leon located at Barangay Nagsaraboan, Bacnotan, LU, which were affected by the construction of the Bacnotan-San Gabriel Prov’l Road ","2","RESOLUTION NO. 204-2008.pdf","21","2008-07-10","0");
INSERT INTO tbl_resolution VALUES("204 - 2010","","Approve Mun Ord No. 13-2010, of the SB of Agoo, LU, An Ord Enacting the Agoo Investment & Incentive Code of 2010 of the Mun of Agoo, LU & for Other Purposes","10","Resolution 204-2010.pdf","21","2010-08-19","0");
INSERT INTO tbl_resolution VALUES("204 - 2011","","Contract of Agreement for the renewal of Contract of Dr. Joventino Espiritu as Radiologist at the Balaoan Dist Hosp","18","Resolution 204-2011.pdf","21","2011-06-16","0");
INSERT INTO tbl_resolution VALUES("204 - 2012","","Request PCSO to donate two ambulances for:\n\na. LUMC\nb. PDRRMC\n","18","Resolution 204-2012.pdf","21","2012-06-13","0");
INSERT INTO tbl_resolution VALUES("204 - 2013","","Approve the FY 2013 GF SB # 1, of Caba, La Union.","1","RESOLUTION 204-2013_001.pdf","21","2013-07-11","0");
INSERT INTO tbl_resolution VALUES("204 - 2014","2014 - 0200","Recommend approval of the FY 2014 GF SB # 4, of Bagulin, La Union.","1","RESOLUTION 204-2014.pdf","21","2014-06-19","0");
INSERT INTO tbl_resolution VALUES("205 - 1999","","P15,000.00 F/A to the NFE, CSF, LU, for their Non-Formal Education projects","20","RESOLUTION NO.205-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("205 - 2007","","Request PGMA to extend immediate assistance to the province which is declared in the state of calamity and under severe drought thru the release of P10 M from her Emergency and Contingency Funds, for the conservation of water and irrigation of 1,548 hectares at the Municipalities of Tubao, Agoo, Aringay, and Santo Tomas, LU thru the dredging of the Masalip Dam Upstream, at the Masalip River, Municipality of Tubao, LU ","31","RESOLUTION NO. 205-2007.pdf","21","2007-08-02","0");
INSERT INTO tbl_resolution VALUES("205 - 2010","","Approve Ord # 5-2010, of the SB of San Gabriel, LU, An Ord Banning the Sale of Illegal Caught Fishery Species w/n the Area of Jurisdiction of the Mun of San Gabriel, LU & Providing Fine for Every Violation Thereof","10","Resolution 205-2010.pdf","21","2010-08-19","0");
INSERT INTO tbl_resolution VALUES("205 - 2011","","Renew Contract of Service w/ Engr. Elmo B. Fama, as PGLU’s Professional Electrical Eng’r from Jan 2, 2011 to Dec 31, 2011 w/ P30,000.00/month fee","1,12","Resolution 205-2011.pdf","21","2011-06-16","0");
INSERT INTO tbl_resolution VALUES("205 - 2012","","Approve FY 2012 GF SB # 1 of Luna, La Union.","1","Resolution 205-2012.pdf","21","2012-06-13","0");
INSERT INTO tbl_resolution VALUES("205 - 2013","","Fix the date, time & place of SP Session at 3:00 PM, Thursdays at the Speaker Protempore Francisco Ortega I Ortega Prov’l Legislative Bldg & Session Hall.","10","RESOLUTION 205-2013.pdf","21","2013-07-11","0");
INSERT INTO tbl_resolution VALUES("205 - 2014","2014 - 0094","Ord # 481, s 2014, The Amended Env?t Code of Bacnotan, LU, s 2014","1","RESOLUTION 205-2014.pdf","21","2014-06-19","0");
INSERT INTO tbl_resolution VALUES("206 - 1999","","P25,000.00 F/A to Brgy. Balbalosa, San Juan, LU, for the construction of concrete pavement ","20","RESOLUTION NO.206-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("206 - 2007","","Request PGMA to extend immediate assistance to the province, which is declared in the state of calamity thru the release of P11,182,100.00 from her Emergency and Contingency Funds, for the planting of alternate short maturing crops on the agricultural fields within the province","31","RESOLUTION NO. 206-2007.pdf","21","2007-08-02","0");
INSERT INTO tbl_resolution VALUES("206 - 2008","","Commend the PNP, PDEA, LGU of Naguilian, Naguilian Police Station, Barangay Officials for a joint effort on the discovery and capture of an alleged clandestine Shabu Lab in Brgy. Bimmotobot, Naguilian, LU on July 9, 2008","3","RESOLUTION NO. 206-2008.pdf","21","2008-07-17","0");
INSERT INTO tbl_resolution VALUES("206 - 2010","","MOA w/ BFAR,LGU of San Juan, LU, &Asso. Of KababaihanngTaboc, San Juan, LU, re: Bangus Deboning Project as component of GAD Program of LGUs .","10","Resolution 206-2010.pdf","21","2010-08-19","0");
INSERT INTO tbl_resolution VALUES("206 - 2011","","Approve FY 2011 GF AB of Bacnotan, LU","1","Resolution 206-2011.pdf","21","2011-06-16","0");
INSERT INTO tbl_resolution VALUES("206 - 2012","","Approve FY 2012 GF SB # 2, of Bagulin, La Union.","1","Resolution 206-2012.pdf","21","2012-06-13","0");
INSERT INTO tbl_resolution VALUES("206 - 2013","","Contract w/ pre-qualified and winning bidder/s in the implementation of infrastructure projects, endorsed by the Bids and Awards Committee (BAC)","1","RESOLUTION 206-2013.pdf","21","2013-07-18","0");
INSERT INTO tbl_resolution VALUES("207 - 1999","","P10,000.00 F/A to Brgy. Sobredillo, Caba, LU, for the additional streetlight project","20","RESOLUTION NO.207-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("207 - 2007","","Appeal to the National Irrigation Administration to give priority for the rehabilitation of all irrigation systems in the province","18","RESOLUTION NO. 207-2007.pdf","21","2007-08-02","0");
INSERT INTO tbl_resolution VALUES("207 - 2008","","Contract of Lease (COL) with the FOLKLORIKO ti La Union, Inc., relative to the office space at the 2nd floor of the Mabanag Justice Building for its office space consisting of an area of more or less 30 sq.m.","1","RESOLUTION NO. 207-2008.pdf","21","2008-07-24","0");
INSERT INTO tbl_resolution VALUES("207 - 2010","","Approve Res # 15, s 2010, of the SB of Balaoan, LU, Res Adopting Internal Rules of Procedure of the SB of Balaoan, LU","10","Resolution 207-2010.pdf","21","2010-08-19","0");
INSERT INTO tbl_resolution VALUES("207 - 2011","","Amend SP Res # 200-2011, Amending SP Res # 177-2011, composition of Ad Hoc Committee on the Codification of General Ordinances","1,10","Resolution 207-2011.pdf","21","2011-06-16","0");
INSERT INTO tbl_resolution VALUES("207 - 2012","","Approve FY 2012 GF SB # 3, Bagulin, La Union","1","Resolution 207-2012.pdf","21","2012-06-13","0");
INSERT INTO tbl_resolution VALUES("207 - 2013","","Approve the salary adjustment of Ms. PriscaPatacsil, Midwife II, NDH, to one grade higher effective Sept 12, 2013","1","RESOLUTION 207-2013.pdf","21","2013-07-18","0");
INSERT INTO tbl_resolution VALUES("207 - 2014","2014 - 0159","Request to pass a Resolution adjusting the present Salary Step to one step higher of the salary of the ff RDH employees, effective Jan 1, 2014, to wit:\n\na.	Milagros F. Estabillo ? Nurse I\nb.	Alexander N. Flores ? Admin Off V\nc.	Anna Lorraine A. Rebadavia ? Med Tech I\n","1","RESOLUTION 207-2014.pdf","21","2014-05-29","0");
INSERT INTO tbl_resolution VALUES("208 - 1999","","P10,000.00 F/A to Brgy. San Fermin Caba, LU, for the construction of box culvert","20","RESOLUTION NO.208-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("208 - 2007","","Request PGMA to direct the Sec of Justice to expedite the resolution and dispositions of the cases involving the killings of private citizens and further to create a panel of Prosecutors tasked to indict the culprits in the so-called “Politically Motivated Cases”","30","RESOLUTION NO. 208-2007.pdf","21","2007-08-02","0");
INSERT INTO tbl_resolution VALUES("208 - 2008","","Extend the gratitude to the Presidential Commission on Good Government (PCGG) for turning over to the province the 19,742 sq.m. Sta. Rita Presidential Rest House Property located at Sta. Rita Central, Agoo, LU","1","RESOLUTION NO. 208-2008.pdf","21","2008-07-24","0");
INSERT INTO tbl_resolution VALUES("208 - 2010","","Approve Ord # 52, emb in Res # 253, s 2010, of the SB of Bauang, LU, An Ord Designating Oct 31 of Every Year Thereafter as Halloween Fest in the Mun of Bauang, LU","10","Resolution 208-2010.pdf","21","2010-08-05","0");
INSERT INTO tbl_resolution VALUES("208 - 2011","","Approve FY 2011 GF SB # 2, of Agoo, LU","1","Resolution 208-2011.pdf","21","2011-06-22","0");
INSERT INTO tbl_resolution VALUES("208 - 2012","","Condole with the Bereaved family of SPM Reynaldo Paras, Laguna.","1,3,5,7,9,10,11,12,13,18,19,20,21","Resolution 208-2012.pdf","21","2012-06-13","0");
INSERT INTO tbl_resolution VALUES("208 - 2013","","Renew Contract of Consultancy Services of the ff to the OPG effective July 1 to Dec 31, 2013\n\n1.	Mr. FlorestoSayangda, Local Gov’t Affairs, 1st Dist\n2.	Mr. JustinianoArzadon, Brgy Dev’t Affairs \n3.	Judge JovenCostales, Sr. Citizen’s Affairs\n4.	Mr. Carlitodela Cruz, Tourism, Trade & Industry\n5.	Engr. Elmo B. Fama, Electric & Power Dev’t\n6.	Dr. Jose Ostrea, Health, Sanitation, Env’t & Pop \n7.	Dr. Leonardo Quitos, Jr, Planning & Dev’t Mgt\n8.	Ms. Imelda Asiaten, Cultural & Music Dev’t Affairs\n9.	Ms. Laura-Amelie Riavitz, Marine Biology/Resource Dev’t Affairs","4","RESOLUTION 208-2013_001.pdf","21","2013-07-18","0");
INSERT INTO tbl_resolution VALUES("208 - 2014","2014 - 0045","Ord # 23, s 2013, An Ord Prescribing a Doctor?s Certification Fee on all Death Certificates Signed by the Mun Health Officer of the Mun of Naguilian & Issued by the Office of the Local Civil Registrar & amending for the Purpose Sec 133, Art B of the 2011 Mun Revenue Code of the Mun of Naguilian, La Union.","8","RESOLUTION 208-2014.pdf","21","2014-06-19","0");
INSERT INTO tbl_resolution VALUES("209 - 1999","","P10,000.00 F/A to Brgy. Consolacion, Agoo, LU, for the purchase of equipment to be used during La Nina","20","RESOLUTION NO.209-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("209 - 2007","","Congratulate and highly commend the PNP, Regional Command (PNP-RECOM), PNP Region I, the LUPPO, and the Bauang Police Station for a job well done in swiftly bringing to justice the perpetrators in the murder of Ms. FelicidadPicar, Municipal Treasurer of Bauang, LU on Aug  6, 2007","30","RESOLUTION NO. 209-2007.pdf","21","2007-08-09","0");
INSERT INTO tbl_resolution VALUES("209 - 2008","","MOA w/ DPWH, in connection with the implementation of the Special Local Road Fund (SLRF) under RA 8794, the Motor Vehicle User’s Charge (MVUC) Law","1","RESOLUTION NO. 209-2008.pdf","21","2008-07-24","0");
INSERT INTO tbl_resolution VALUES("209 - 2010","","Approve Res # 001-2010, of the SB of Bangar, LU, Res Adopting the Revised Internal Rules of Procedure of the SB of Bangar, LU","10","Resolution 209-2010.pdf","21","2010-08-19","0");
INSERT INTO tbl_resolution VALUES("209 - 2011","","Condole w/ family of ex Mun Mayor Romulo R. Madriaga, Pugo, LU","20","Resolution 209-2011.pdf","21","2011-06-22","0");
INSERT INTO tbl_resolution VALUES("209 - 2012","","MOU with Bacnotan, LU re: waste material disposal of Bacnotan Dist Hosp.","1","Resolution 209-2012.pdf","21","2012-06-21","0");
INSERT INTO tbl_resolution VALUES("209 - 2013","","Congratulate INC on its 97th Anniversary.","1,2,3,4,5,6,7,8,9,10,11,12,13","RESOLUTION 209-2013.pdf","21","2013-07-18","0");
INSERT INTO tbl_resolution VALUES("209 - 2014","2014 - 0117","Mun Ord # 02-2014, An Ord Institutionalizing the Granting of an Award of Recognition to the Centenarian Sr. Citizens of the Mun of Agoo, LU","5","RESOLUTION 209-2014.pdf","21","2014-06-19","0");
INSERT INTO tbl_resolution VALUES("210 - 1999","","P10,000.00 F/A to Brgy. Pao Arc MPCI, CSF, LU, for the construction of a footbridge","20","RESOLUTION NO.210-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("210 - 2007","","Condemn in the strongest terms the death/murder of Ms. FelicidadPicar, Municipal Treasurer of the Municipal of Bauang, LU","30","RESOLUTION NO. 210-2007.pdf","21","2007-08-09","0");
INSERT INTO tbl_resolution VALUES("210 - 2008","","Approve Ord # 6, s. 2008, of the SB of Bauang LU, entitled: “An Ord Amending the Title of Municipal Ord # 15, s. of 2006, and Providing Additional Provisions Thereof”","20","RESOLUTION NO. 210-2008.pdf","21","2008-07-24","0");
INSERT INTO tbl_resolution VALUES("210 - 2010","","Approve FY 2010 GF SB # 1, of Aringay, LU","1","Resolution 210-2010.pdf","21","2010-08-26","0");
INSERT INTO tbl_resolution VALUES("210 - 2011","","Return Mun Ord # 02-2011, of the SB of Agoo, LU, “An Ord Amending Art 32 on Franchise & Other Fees on Tricycle Operations of Mun Ord # 02-001, An Ord Adopting the 2002 Revenue Code of the Mun of Agoo, LU”","20","Resolution 210-2011.pdf","21","2011-06-22","0");
INSERT INTO tbl_resolution VALUES("210 - 2012","","Congratulate & Commend Mrs. Belinda Calip-Zafra, as the Most Outstanding Nat’l Employee of the Parole & Probation Administration for the year 2011","1,3,5,7,9,10,11,12,13,18,19,20,21","Resolution 210-2012.pdf","21","2012-06-21","0");
INSERT INTO tbl_resolution VALUES("210 - 2013","","Support increase in compensation of the Brgy Elective and Appointive officials (HB No. 134) including BHWs, BNS & Brgy-Funded Day Care Workers","10","RESOLUTION 210-2013.pdf","21","2013-07-18","0");
INSERT INTO tbl_resolution VALUES("210 - 2014","2014 - 0137","Ord # 07, s 2013, An Ord Institutionalizing the Pre-Marriage Counselling Program of the Mun of Naguilian, LU, Providing its Policy, Guidelines and Other Purposes (Amendment Sec 6(a) and (b) Pre Marriage Counselling Fee)","5","RESOLUTION 210-2014.pdf","21","2014-06-19","0");
INSERT INTO tbl_resolution VALUES("211 - 1999","","P10,000.00 F/A to Brgy. Sta. Lucia, Aringay, LU, for the construction of a concrete stage at NHA","20","RESOLUTION NO.211-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("211 - 2007","","Condole w/ the bereaved family of the late Ms. FelicidadPicar","1,2,3,5,7,18,19,20,21,30,31,32","RESOLUTION NO. 211-2007.pdf","21","2007-08-09","0");
INSERT INTO tbl_resolution VALUES("211 - 2008","","Approve Mun Ord # 01-2008, of the SB of San Juan, LU, entitled: “An Ord Declaring the Closure of the Unnamed Park Where the Monuments of Dionisio de Leon Fonacier and Regino Padua Ganaden are Situated and Relocating these Monuments to the Town Plaza”","20","RESOLUTION NO. 211-2008.pdf","21","2008-07-24","0");
INSERT INTO tbl_resolution VALUES("211 - 2010","","Approve FY 2010 GF SB # 2, of Bagulin, LU","1","Resolution 211-2010.pdf","21","2010-08-26","0");
INSERT INTO tbl_resolution VALUES("211 - 2011","","Re: Implementation of “Community Piloting Project for sustainable Aquaculture Practices Using Tobacco Dust Plus”\n\nAdopt the ff:\n\n1.	Conduct Information Education Dissemination Campaign (IECD) to identified clients\n2.	NTA shall initially conduct Technology Briefing Orientation Seminars to educate fishpond operators on the use of TDP\n","3","Resolution 211-2011.pdf","21","2011-06-22","0");
INSERT INTO tbl_resolution VALUES("211 - 2012","","Approve Ord # 91, s 2012, of the SB of Sudipen, La Union, entitled: ‘AN ORDINANCE AMENDING CERTAIN PROVISIONS OF MO # 17, S 1999’","9","Resolution 211-2012.pdf","21","2012-06-21","0");
INSERT INTO tbl_resolution VALUES("211 - 2013","","Approve Mun Ord # 5, s 2012, of the SB of Sto. Tomas, LU, “Revised Ord Regulating the Maintenance, Care & Safekeeping of Animals for the Welfare & Protection of the Residents of the Mun of Sto. Tomas, La Union”","10","RESOLUTION 211-2013.pdf","21","2013-07-18","0");
INSERT INTO tbl_resolution VALUES("212 - 1999","","P5,000.00 F/A to Brgy. San Antonio, Naguilian, LU, for the road concreting project","20","RESOLUTION NO.212-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("212 - 2007","","Congratulate and highly recommend the personnel of the Bauang Police Station, Caba Police Station, Naguilian Police Station, LU Provincial Mobile Group (PMG), Regional Mobile Group (RMG) in the successful apprehension of the gunman who murdered Ms. FelicidadPicar","30","RESOLUTION NO. 212-2007.pdf","21","2007-08-09","0");
INSERT INTO tbl_resolution VALUES("212 - 2008","","Approve Mun Ord # 19, s. 2006, of the SB of Bauang, LU, entitled: “An Ord Reclassifying the Agricultural/Residential Land of Sps. Cesar Joseph and Nenita Gonzales under ARP No. 012-00384 with an Area of 4,000 sq.m. more or less, Located at Cabisilan, Bauang, LU”","20","RESOLUTION NO. 212-2008.pdf","21","2008-07-24","0");
INSERT INTO tbl_resolution VALUES("212 - 2010","","Approve FY 2010 GF SB # 1, of San Gabriel, LU","1","Resolution 212-2010.pdf","21","2010-08-26","0");
INSERT INTO tbl_resolution VALUES("212 - 2011","","Dismiss Admin Case No. 01-2010, Kgd. FelicitasJuloya, Rodolfo Baltazar, Alfredo Camacho, Rodolfo Rapadas, Felipe Quinton &RudericoGayo, complainants-appellees vs. KgdLitoGayo, respondent-appellant for dishonesty, grave abuse of discretion & misconduct in office ","20","Resolution 212-2011.pdf","21","2011-06-22","0");
INSERT INTO tbl_resolution VALUES("212 - 2012","","MOA with BFAR re: proposed rehab of the Sta. Rita Fish Farm/Nursery & Enhancement of Coastal Resources Mgt Program","3","Resolution 212-2012.pdf","21","2012-06-21","0");
INSERT INTO tbl_resolution VALUES("212 - 2013","","Return for amendment, Ord # 15, s 2011, of the SB of Naguilian, LU, “An Ord Regulating Birthing Homes Situated in the Mun of Naguilian, LU to be Known as the Mun of Naguilian Birthing Homes Regulating Act of 2011”","10","RESOLUTION 212-2013.pdf","21","2013-07-18","0");
INSERT INTO tbl_resolution VALUES("213 - 1999","","P10,000.00 F/A to the SK of Pao Sur, CSF, LU, for the construction of a concrete basketball court","20","RESOLUTION NO.213-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("213 - 2007","","MOA w/ the National University (NU), Baguio City pertaining to the On-the-Job Training (OJT)/Practicum of NU nursing students at the Bacnotan District Hospital (BDH) for SY 2007-2008","31","RESOLUTION NO. 213-2007.pdf","21","2007-08-09","0");
INSERT INTO tbl_resolution VALUES("213 - 2008","","MOA w/BFAR  RO I, the Municipal Governments of Rosario, Sudipen and Naguilian and the Rural Improvement Club of Rosario, Rural Improvement Club of San Francisco Sur, Sudipen, and the Naguilian Fish Processors Association pertaining to the “Bangus Deboning Project” under the Gender and Development Project","31","RESOLUTION NO. 213-2008.pdf","21","2008-07-31","0");
INSERT INTO tbl_resolution VALUES("213 - 2010","","Approve FY 2010 GF SB # 2, of Bacnotan, LU","1","Resolution 213-2010.pdf","21","2010-08-26","0");
INSERT INTO tbl_resolution VALUES("213 - 2011","","Dismiss Admin Case No. 01-2010, VioletaPunzalan, complainant-appellee vs. BC Agnes Vibar, respondent-appellant, for abuse of authority","20","Resolution 213-2011.pdf","21","2011-06-22","0");
INSERT INTO tbl_resolution VALUES("213 - 2012","","MOA with the Child Protection Network Foundation, Inc., LU Medical Center, Bacnotan Dist Hosp. & LU Prov’l Police Office re: proposed establishment of Women & Child Protection Unit","5","Resolution 213-2012.pdf","21","2012-06-21","0");
INSERT INTO tbl_resolution VALUES("213 - 2013","","Confirm appt of the ff:\n\n1.	Dr. Geoffrey S Tilan, Prov’l Administrator\n2.	Mr. Adamor L Dagang, Prov’l Info & Tourism Officer\n3.	Ms. Mila L Gamboa, Prov’l Population Officer","1,2,3,5,6,7,8,9,10,11,13","RESOLUTION 213-2013.pdf","21","2013-07-18","0");
INSERT INTO tbl_resolution VALUES("213A- 2007","","Realign and use P3.5 M from the Item Peace and Order Initiative Fund for CY 2007 to Intelligence and Confidential Fund","3","RESOLUTION NO. 213A-2007.pdf","21","2007-08-09","0");
INSERT INTO tbl_resolution VALUES("214 - 1999","","P10,000.00 F/A to Brgy. Sta. Rita Sur, Agoo, LU, for the purchase of streetlights","20","RESOLUTION NO.214-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("214 - 2007","","MOA w/ the Regional Statistical Coordination Committee, and the Pilot implementation of the Proposed Health Data Generation System in the City of San Fernando and the province","18","RESOLUTION NO. 214-2007.pdf","21","2007-08-16","0");
INSERT INTO tbl_resolution VALUES("214 - 2008","","Realign the amount of P233,990 to the Special Scholarship Program  ","2","RESOLUTION NO. 214-2008.pdf","21","2008-07-31","0");
INSERT INTO tbl_resolution VALUES("214 - 2010","","Condole w/ Dr. Daniel P. Lagunilla, Jr., Bangar, LU","10","Resolution 214-2010.pdf","21","2010-08-26","0");
INSERT INTO tbl_resolution VALUES("214 - 2011","","Dismiss Admin Case No. 01-2011, (SB Admin Case No. 01), Jose Yaris, complainant-appellant vs. BC Jose Rulloda, respondent, for Dishonesty, Grave Abuse of Discretion & Misconduct in Office","20","Resolution 214-2011.pdf","21","2011-06-22","0");
INSERT INTO tbl_resolution VALUES("214 - 2012","","MOA with the Bureau of Soils & Water Management, Dept of Agriculture & Mun Gov’t of Naguilian, LU re: establishment of the Expanded Modified Proposed Composting Pdxn Farm & Related Activities.","3","Resolution 214-2012.pdf","21","2012-06-21","0");
INSERT INTO tbl_resolution VALUES("214 - 2013","","Return for amendment, Ord # 07, s 2013, of the SB of Naguilian, LU, “An Ord Institutionalizing the Pre-Marriage Counseling Program of the Mun of Naguilian, LU, Providing its Policy, Guidelines and Other Purposes”","5","RESOLUTION 214-2013.pdf","21","2013-07-18","0");
INSERT INTO tbl_resolution VALUES("215 - 1999","","P20,000.00 F/A to Brgy. Guinguinabang, San Juan, LU, for the illumination of the barangay road","20","RESOLUTION NO.215-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("215 - 2007","","MOA w/ the Union Christian College (UCC), relative to the On-the-Job Training (OJT)/Practicum of its ladderized nursing students at the Bacnotan District Hospital and Northern La Union Maternity and Children’s Hospital","18","RESOLUTION NO. 215-2007.pdf","21","2007-08-16","0");
INSERT INTO tbl_resolution VALUES("215 - 2008","","MOA with the Liga ng Mga Barangay – LU Chapter, relative to the implementation of the program “Radyo Aralan: and barangay at Pamamahala”","1","RESOLUTION NO. 215-2008.pdf","21","2008-07-31","0");
INSERT INTO tbl_resolution VALUES("215 - 2010","","Contract of Service w/ Engr. Elmo B. Fama, as a Professional Electrical Eng’r","1,18","Resolution 215-2010.pdf","21","2010-08-26","0");
INSERT INTO tbl_resolution VALUES("215 - 2011","","Approve FY 2011 GF AB of Sto. Tomas, LU","1","Resolution 215-2011.pdf","21","2011-06-22","0");
INSERT INTO tbl_resolution VALUES("215 - 2012","","MOA with DOH-CHD ILOCOS re: implementation of the Unified Health Mgt Info System in the province.","18","Resolution 215-2012.pdf","21","2012-06-21","0");
INSERT INTO tbl_resolution VALUES("215 - 2013","","Institutionalizing the PESO (Public Employment Service Office – La Union)","1,2,3,4,5,6,7,8,9,10,11,12,13","RESOLUTION 215-2013.pdf","21","2013-07-18","0");
INSERT INTO tbl_resolution VALUES("215 - 2014","2014 - 0221","Request to enter into a MOA w/ BFAR ? Region I, the Mun of Bacnotan and the Baroro Fishermen Asso.. Relative to the grant of 2 units of Payao Project to the association in line w/ the fishery program of the province.","4","RESOLUTION 215-2014.pdf","21","2014-07-03","0");
INSERT INTO tbl_resolution VALUES("216 - 1999","","P5,000.00 F/A to Brgy. Ubbog, Bacnotan, LU, for the purchase of knapsack sprayers and garden tools","20","RESOLUTION NO.216-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("216 - 2007","","Approve Ord # 02, s. 2005 of the SB of Rosario, LU, “Reclassifying the Portion of lot owned by Mr. Artemio Fang, covered by TCT No. EP-3007 with an area of 600 sq.m. located at Poblacion West, Rosario, LU”","20","RESOLUTION NO. 216-2007.pdf","21","2007-08-16","0");
INSERT INTO tbl_resolution VALUES("216 - 2008","","MOA to program beneficiaries of the La Union Kabuhayan 2000 and for him to sign any documents relative thereto","7","RESOLUTION NO. 216-2008.pdf","21","2008-07-31","0");
INSERT INTO tbl_resolution VALUES("216 - 2010","","Approve Mun Ord # 81, s 2010, of the SB of Sudipen, LU, The Internal Rules of Procedure of the SB of Sudipen, LU","10","Resolution 216-2010.pdf","21","2010-08-26","0");
INSERT INTO tbl_resolution VALUES("216 - 2011","","Approve the Prov’l Executive-Legislative Agenda (ELA) CY 2011-2013","1","Resolution 216-2011.pdf","21","2011-06-30","0");
INSERT INTO tbl_resolution VALUES("216 - 2012","","Amended MOA with LBP re: Livelihood Loan Program in terms & conditions of the loan amount, terms/payment, borrower’s eligibility & past due account.","1","Resolution 216-2012.pdf","21","2012-06-21","0");
INSERT INTO tbl_resolution VALUES("216 - 2013","","Enjoin City/Municipal Mayors to strictly enforce Prov’l Ord # 006-2003 (BOLTING).","3,4","RESOLUTION 216-2013.pdf","21","2013-07-18","0");
INSERT INTO tbl_resolution VALUES("216 - 2014","2014 - 0222","Request to enter into a Contract of Consultancy Service w/ Mr. Marc Christopher R. Ortega as Consultant of the Office of the Governor on Disaster Risk Reduction and Management Affairs effective July 1, 2014 to December 31, 2014 w/ a consultancy fee of P20,000.00.","4","RESOLUTION 216-2014.pdf","21","2014-07-03","0");
INSERT INTO tbl_resolution VALUES("217 - 1999","","P10,000.00 F/A to Brgy. Gonzales, Tubao, LU, for the purchase of electrical materials for streetlights","20","RESOLUTION NO.217-99.pdf","21","1999-04-29","0");
INSERT INTO tbl_resolution VALUES("217 - 2007","","Approve MunOrd # 07-2007, of the SB of San Juan, LU, entitled: “An Ord Declaring the Temporary Closure of a Portion of Gaerlan St. During Flag Raising Ceremony”","20","RESOLUTION NO. 217-2007.pdf","21","2007-08-16","0");
INSERT INTO tbl_resolution VALUES("217 - 2008","","MOA with the German Technical Cooperation Agency (GTZ) for the Provincial Data Computerization of the Real Property Tax Assessment (RPTA) and Collection","1","RESOLUTION NO. 217-2008.pdf","21","2008-07-31","0");
INSERT INTO tbl_resolution VALUES("217 - 2010","","Approve Mun Ord # 2010-91, of the SB of Pugo, LU, The Internal Rules of Procedure of the SB of Pugo, LU","10","Resolution 217-2010.pdf","21","2010-08-26","0");
INSERT INTO tbl_resolution VALUES("217 - 2011","","Approve FY 2011 GF SB # 2, of Bagulin, LU","1","Resolution 217-2011.pdf","21","2011-06-30","0");
INSERT INTO tbl_resolution VALUES("217 - 2012","","Condole with the bereaved family of Former Manager Amante R. Rimando, Brgy. Ortiz, Naguilian, La Union.","9","Resolution 217-2012.pdf","21","2012-06-21","0");
INSERT INTO tbl_resolution VALUES("217 - 2013","","Deed of Absolute Sale w/ all interested landowners at Brgys. Tanqui and Sagayad, CSF, w/c are adjacent to the area proposed Prov’l Organic Agriculture Demo Farm Cum Farmers Tech Training Center Project.","7","RESOLUTION 217-2013.pdf","21","2013-07-18","0");
INSERT INTO tbl_resolution VALUES("217 - 2014","2014 - 0210","Recommend approval of the FY 2014 GF AB, of Bacnotan, La Union.","1","RESOLUTION 217-2014.pdf","21","2014-07-03","0");
INSERT INTO tbl_resolution VALUES("218 - 1999","","Deed of Donation w/ DENR – 3,816.66 sq.m.","28","RESOLUTION NO.218-99.pdf","21","1999-05-06","0");
INSERT INTO tbl_resolution VALUES("218 - 2007","","Approve City Ord # 2007-006 of the SP of the City of San Fernando, LU, entitled: Rooming-in and Breastfeeding Ord of the City of San Fernando”","18","RESOLUTION NO. 218-2007.pdf","21","2007-08-16","0");
INSERT INTO tbl_resolution VALUES("218 - 2008","","Approve Mun Ord # 72, s. 2008, of the SB of Sudipen, LU, entitled: “Increasing the Rental Rates of Stalls and Prescribing Other Policies and Rules for the Operation of the Public Market in this Municipality, Amending Mun Ord # 20, s. of 1998”","20","RESOLUTION NO. 218-2008.pdf","21","2008-07-31","0");
INSERT INTO tbl_resolution VALUES("218 - 2011","","Request DPWH thru Cong. EufranioEriguel for the possible construction of a pedestrian overpass along the Nat’l Hi-way at Rosario, Agoo & Bauang, LU","9","Resolution 218-2011.pdf","21","2011-06-30","0");
INSERT INTO tbl_resolution VALUES("218 - 2012","","Congratulate Atty. HilarioJustino F. Morales on his Appointment as the Dean of The College of Law, SLU, Baguio City.","9","Resolution 218-2012.pdf","21","2012-06-21","0");
INSERT INTO tbl_resolution VALUES("218 - 2013","","Request PNP LUPPO to monitor enforcement of Prov’l Ord # 006-2003 (BOLTING) and RA # 71 (NON CUTTING OF TREES)","4","RESOLUTION 218-2013.pdf","21","2013-07-18","0");
INSERT INTO tbl_resolution VALUES("218 - 2014","2014 - 0194","Mun Ord # 03, s 2014, An Ord Enacting a Forced/Pre-Emptive Evacuation Policy of the Mun of Balaoan, LU During Times of Calamity/Disaster","11","RESOLUTION 218-2014.pdf","21","2014-07-03","0");
INSERT INTO tbl_resolution VALUES("219 - 1999","","Deed of Donation w/ PIA – 653.2o sq.m.","28","RESOLUTION NO.219-99.pdf","21","1999-05-06","0");
INSERT INTO tbl_resolution VALUES("219 - 2007","","Endorse the La Union Provincial Tribal Council Inc. (LUPTCI) as nominee to the Search for Outstanding Volunteer (SOV) launched by Phil. National Volunteer Service Coordinating Agency (PNVSCA) thru the NEDA this December 2007","21","RESOLUTION NO. 219-2007.pdf","21","2007-08-16","0");
INSERT INTO tbl_resolution VALUES("219 - 2008","","Approve Ord # 14, s. 2008, of the SB of Bauang, LU, emb in Res # 33, s. of 2008, entitled: “An Ord Naming the Soon-to-Be Established Economic Building in the Municipality of Bauang, LU as Eulogio Clarence de Guzman, Jr., Economic Center”","20","RESOLUTION NO. 219-2008.pdf","21","2008-07-31","0");
INSERT INTO tbl_resolution VALUES("219 - 2010","","Approve Mun Ord # 04-2010, of the SB of San Juan, LU, An Ord Requiring the Mandatory Posting of Regulation of Closing Time at the Entrance of Videoke Bars","10","Resolution 219-2010.pdf","21","2010-08-26","0");
INSERT INTO tbl_resolution VALUES("219 - 2011","","Oppose & deny application of High Density Mineral Resources, Inc for offshore exploration permit in LU part in Agoo, Aringay, Caba & Bauang","1,10,20","Resolution 219-2011.pdf","21","2011-06-30","0");
INSERT INTO tbl_resolution VALUES("219 - 2012","","Condole with the bereaved family of BC Blandino S. Manahan, Luzong Norte, Bangar, La Union.","1,3,5,7,10,11,12,13,18,19,20,21","Resolution 219-2012.pdf","21","2012-06-28","0");
INSERT INTO tbl_resolution VALUES("219 - 2013","","Return Ord # 2013-101, of the SB of Pugo, LU, “Reclassifying Lot No. TCT-15613, a piece of Agricultural Land Located at Brgy, San Luis, Pugo, LU, from Agricultural to Residential”","7","RESOLUTION 219-2013.pdf","21","2013-07-25","0");
INSERT INTO tbl_resolution VALUES("219 - 2014","2014 - 0195","Res # 18, s 2014, Res Creating the Local Disaster Risk and Reduction Management Office Under the Office of the Mun Mayor and the Corresponding Permanent Positions to Complement the Office.","11","RESOLUTION 219-2014.pdf","21","2014-07-03","0");
INSERT INTO tbl_resolution VALUES("220 - 1999","","Accredit La Union Public School Teachers Asso. (LUPPSSTA) and Widows Asso. of La Union (WALU) as NGO","26","RESOLUTION NO.220-99.pdf","21","1999-05-13","0");
INSERT INTO tbl_resolution VALUES("220 - 2007","","Approve FY 2007 GF SB # 6, of Bauang, LU","20","RESOLUTION NO. 220-2007.pdf","21","2007-08-23","0");
INSERT INTO tbl_resolution VALUES("220 - 2008","","Approve Ord # 459, s. 2008, of the SB of Bacnotan, La Union, entitled: “Ord Regulating the Operation of Videoke Machines in the Municipality of Bacnotan, LU”","20","RESOLUTION NO. 220-2008.pdf","21","2008-07-31","0");
INSERT INTO tbl_resolution VALUES("220 - 2010","","Approve Ord # 3, s 2010, of the SB of Rosario, LU, Banning the Use of AFP/PNP Uniform by Civilians w/n that Municipality & Imposing Penalty to Violators Thereof","10","Resolution 220-2010.pdf","21","2010-08-26","0");
INSERT INTO tbl_resolution VALUES("220 - 2011","","Oppose & deny application of Synophil Mining & Trading Corp for exploration permit in Aringay, Caba, Bauang & San Fernando City","1,10,20","Resolution 220-2011.pdf","21","2011-06-30","0");
INSERT INTO tbl_resolution VALUES("220 - 2012","","Condole with the bereaved family of SBM Rodrigo D. de Vera, Rosario, La Union.","1,3,5,7,9,10,11,12,13,18,19,20,21","Resolution 220-2012.pdf","21","2012-06-28","0");
INSERT INTO tbl_resolution VALUES("220 - 2013","","Return Ord # 5, emb in Res # 464, s 2013, of the SB of Bauang, LU, “An Ord Reclassifying the Parcel of Land Owned by Mr. Laurence Delim w/ an Area of 3,014 sq.m. Located at Sitio Magan, Brgy. Calumbaya, Bauang, LU, from Agricultural to Comm’l Classification” ","7","RESOLUTION 220-2013.pdf","21","2013-07-25","0");
INSERT INTO tbl_resolution VALUES("220 - 2014","2014 - 0167","Request the enactment of a Res for the granting of salary step increment to qualified employees for CY 2014","1","RESOLUTION 220-2014.pdf","21","2014-07-03","0");
INSERT INTO tbl_resolution VALUES("221 - 1999","","Set aside P20, 000.00 as Cash Incentive to Mr. Garlian Garlejo during the 1999 Milo National open Invitation Track & Field Championship","21","RESOLUTION NO.221-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("221 - 2007","","Approve FY 2007 GF SB # 5, of Pugo, LU","20","RESOLUTION NO. 221-2007.pdf","21","2007-08-23","0");
INSERT INTO tbl_resolution VALUES("221 - 2008","","Approve Ord # 460, s. 2008, of the SB of Bacnotan, LU, entitled: “Liquor Ban Ord of the Municipality of Bacnotan, LU”","20","RESOLUTION NO. 221-2008.pdf","21","2008-07-31","0");
INSERT INTO tbl_resolution VALUES("221 - 2010","","Approve Ord # 11-2010, of the SB of Agoo, LU, An Ord Amending Sec. 8 of Ord # 10-2010, Establishing as a Preventive Measure to Suppress Lawlessness, Disorder, Violence & Any Other Untoward Incidence w/n the Territorial Jurisdiction of Agoo, LU","10","Resolution 221-2010.pdf","21","2010-08-26","0");
INSERT INTO tbl_resolution VALUES("221 - 2011","","Condole w/ family of BC Zenaida Garcia, Bgry. Lingsat, SFC","12","Resolution 221-2011.pdf","21","2011-06-30","0");
INSERT INTO tbl_resolution VALUES("221 - 2012","","Return for amendment, EO # 07, s 2012, of Pugo, La Union, “Re-organizing the Mun Disaster Risk Reduction Mgt Council of the Mun of Pugo, La Union”","11","Resolution 221-2012.pdf","21","2012-06-28","0");
INSERT INTO tbl_resolution VALUES("221 - 2013","","Return Ord # 6, emb in Res # 465, s 2013, of the SB of Bauang, LU, “An Ord Reclassifying the Parcel of Land Owned by Mr. DionisioAromin w/ an Area of 500 sq.m. Located at Naguilian Rd., Brgy. Acao, Bauang, LU, from Agricultural to Comm’l Classification”","7","RESOLUTION 221-2013.pdf","21","2013-07-25","0");
INSERT INTO tbl_resolution VALUES("221 - 2014","2014 - 0170","City Ord # 2014-03, An Ord Regulating the Use of Plastic and Styrofoam in the City of San Fernando and Providing Penalties for Violations Thereof","1","RESOLUTION 221-2014.pdf","21","2014-07-03","0");
INSERT INTO tbl_resolution VALUES("222 - 1999","","Approve Mun Ord # 2-99, of the SB of San Juan, LU, Prescribing the Scheme of Bidding in the Lease of Fishery Zone II","24","RESOLUTION NO.222-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("222 - 2007","","Approve MunOrd # 02-2007, of the SB of Agoo, LU, entitled: “Declaring the Western Portion of the Imelda Garden where the Proposed Agoo People’s Center is Located as Patrimonial Property of the Municipality of Agoo, LU”","20","RESOLUTION NO. 222-2007.pdf","21","2007-08-23","0");
INSERT INTO tbl_resolution VALUES("222 - 2008","","Approve Ord # 4, s. 2008, of the SB of Rosario, LU, entitled: “An Ord Designating the Concrete Pavement Beside the Bureau of Fire Protection Station as Parking Area for Municipal Officials and Department Heads of Rosario, LU”","20","RESOLUTION NO. 222-2008.pdf","21","2008-07-31","0");
INSERT INTO tbl_resolution VALUES("222 - 2010","","Approve Mun Ord # 01-2009, of the SB of Balaoan, LU, An Ord Banning School Children Belonging to Primary & Secondary Levels from Going to Billiard/Pool Halls & Other Amusement & Entertainment Places During Class Hours in the Municipality of Balaoan, LU & Increasing Penalties to Violators Thereof","10","Resolution 222-2010.pdf","21","2010-08-26","0");
INSERT INTO tbl_resolution VALUES("222 - 2011","","Name the 3 Conference Rooms of the Legislative Bldg as:\n\na.	Sen. CamiloOsias – ConfRm 1\nb.	Sen. Alejo R. Mabang – ConfRm 2\nc.	Sen. Magnolia W. Antonino – ConfRm 3\n","1,3,10,18","Resolution 222-2011.pdf","21","2011-07-08","0");
INSERT INTO tbl_resolution VALUES("222 - 2012","","Approve EO # 01, s 2012, of the Mun Mayor of Bacnotan, LU, “Creating LGU Performance Challenge Fund (PCF) Project Implementation Team","10","Resolution 222-2012.pdf","21","2012-06-28","0");
INSERT INTO tbl_resolution VALUES("222 - 2013","","MOA with UP-LB, the Fostering Education & Env’t for Dev’t (FEED), ALON PTE LTD, DENR-PENRO & the Local Gov’t of San Gabriel, LU re: proposed project “The Sustainable Upland Farming, the Case of Baroro Watershed”","4","RESOLUTION 222-2013.pdf","21","2013-07-25","0");
INSERT INTO tbl_resolution VALUES("222 - 2014","2014 - 0164","City Ord # 2014-02, An Ord Prohibiting the Use, Sale, Distribution and Advertisement of Cigarettes and other Tobacco Products in Certain Places, Imposing Penalties for Violations Thereof, and Providing Funds Therefor, and for Other Purposes and Repealing City Ord # 2011-05, An Ord Regulating Smoking in the CSF and Providing Penalties for Violation Thereof","2","RESOLUTION 222-2014.pdf","21","2014-07-03","0");
INSERT INTO tbl_resolution VALUES("223 - 1999","","Create Ad-Hoc to conduct study of the proposed Visiting Forces Agreement (VFA)","24","RESOLUTION NO.223-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("223 - 2007","","Condole w/ BC Rogelio Beninsig, Brgy. Pudoc, Bauang","1,2,3,5,7,18,19,20,21,30,31,32,36","RESOLUTION NO. 223-2007.pdf","21","2007-08-23","0");
INSERT INTO tbl_resolution VALUES("223 - 2008","","Approve Ord # 458, s. 2008, of the SB of Bacnotan, LU, entitled: “An Ord Authorizing the Expropriation of Portions of the Property Declared in the Name of Feline Badua, Jr., et.al., for the Purpose of Constructing an Access Road Connecting the Las Palmas Road South of the Public Market tot eh Road Going to the Bacnotan-Luna Road”","20","RESOLUTION NO. 223-2008.pdf","21","2008-07-31","0");
INSERT INTO tbl_resolution VALUES("223 - 2010","","Condole w/ Hong Kong & Canadian Governments on the tourist bus hostage crisis on August 23, 2010","1","Resolution 223-2010.pdf","21","2010-08-26","0");
INSERT INTO tbl_resolution VALUES("223 - 2011","","Condole w/ family of Ms. Elizabeth Mendoza, Tuddingan, Naguilian","9","Resolution 223-2011.pdf","21","2011-07-08","0");
INSERT INTO tbl_resolution VALUES("223 - 2012","","Approve EO # 02, s 2012, of the Mun Mayor of Bacnotan, LU, “Creation of Technical Working Group (TWG) and Joint Inspection Team (JIT) of the Business Permits & Licensing System (BPLS) Streaming Program”","10","Resolution 223-2012.pdf","21","2012-06-28","0");
INSERT INTO tbl_resolution VALUES("223 - 2013","","Request DPWH (1st& 2ndEng’g Dist) to paint and re-paint pedestrian crossing lines, highway center lines and roadsides on all nat’l roads","9","RESOLUTION 223-2013.pdf","21","2013-07-25","0");
INSERT INTO tbl_resolution VALUES("224 - 1999","","Approve Ord # 01-99, of the SB of San Gabriel, LU, Regulating the Use of All Streets, Roads, Avenues and other Public Places in that Municipality and Designating Parking, Loading & Unloading Areas for All Vehicles Operating W/n that Municipality & Providing Penalties for the Violation Thereof","24","RESOLUTION NO.224-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("224 - 2007","","Realign P1,479,864.99 under the provincial share in the Virginia Tobacco Excise Tax (RA 7171) tothe Roads and Bridges Program","20","RESOLUTION NO. 224-2007.pdf","21","2007-08-30","0");
INSERT INTO tbl_resolution VALUES("224 - 2008","","Approve Ord # 462, s. 2008, of the SB of Bacnotan, LU, entitled: “An Ord Authorizing the Expropriation of Portion of the Property Declared in the Name of Danilo Cuaresma for the Purpose of Constructing an Access Road Connecting the Las Palmas Road South of the Public Market tot eh Road Going to the Bacnotan-Luna Road”","20","RESOLUTION NO. 224-2008.pdf","21","2008-07-31","0");
INSERT INTO tbl_resolution VALUES("224 - 2011","","Condole w/ family of SBMHonorioMapalo, Jr, Tubao","11,20","Resolution 224-2011.pdf","21","2011-07-08","0");
INSERT INTO tbl_resolution VALUES("224 - 2012","","Approve Ord # 92, s 2012, of  Sudipen, LU, “An Ord Creating the Sudipen Mun Housing Board, Defining its Clearing House Function Pursuant To Executive Order # 708, s 2008, And for other Purposes” ","10","Resolution 224-2012.pdf","21","2012-06-28","0");
INSERT INTO tbl_resolution VALUES("224 - 2013","","Authorize Gov MCO to sign the CONFORME as requested by 1590 Energy Corp for a Waiver of Confidentiality of the Rescinded Contract to Sell of the Bauang Diesel Power Plant, Bauang, LU","10","RESOLUTION 224-2013_001.pdf","21","2013-07-25","0");
INSERT INTO tbl_resolution VALUES("225 - 1999","","Approve Mun Ord # 12-99, of the SB of Balaoan, LU, Imposing Fines and/or Penalties on Stray Animals","24","RESOLUTION NO.225-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("225 - 2007","","Realign P959,139.00 under the Development Fund for the continued implementation of the following programs:\n\na.	Public Bldgs/Struct Improvement                  P659,139.00\n& Construction\nb.	Human Resource Dev’t Program                     300,000.00\n","20","RESOLUTION NO. 225-2007.pdf","21","2007-08-30","0");
INSERT INTO tbl_resolution VALUES("225 - 2008","","Approve Ord # 2008-867, of the SB of Pugo, LU, entitled: “Creating the Standing Committees in the Sangguniang Bayan and Designating Its Officers”","20","RESOLUTION NO. 225-2008.pdf","21","2008-07-31","0");
INSERT INTO tbl_resolution VALUES("225 - 2010","","Condole w/ Mrs. Paulina B. Madarang, mother of BM Robert Madarang, Jr","1","Resolution 225-2010.pdf","21","2010-08-26","0");
INSERT INTO tbl_resolution VALUES("225 - 2011","","Condole w/ family of Ms. Carmelita Domondon, Agoo, LU","19,20","Resolution 225-2011.pdf","21","2011-07-08","0");
INSERT INTO tbl_resolution VALUES("225 - 2012","","Approve Mun Ord # 1, s 2012, of Santo Tomas, LU,  “Regulating the Use & Scale of all Single-Use Plastic Bags, Bottles, Wrappers, Containers & Styrofoam & Other Non-Ecological Friendly Materials in Gov’t Offices, & Prohibiting The Use of Styrofoams/Stryrophor w/n the Territorial Jurisdiction of said Mun” ","10","Resolution 225-2012.pdf","21","2012-06-28","0");
INSERT INTO tbl_resolution VALUES("225 - 2013","","Set aside P14,000.00 as cash incentives to the winners of the King of Math Cup & Environmental Cup in HK to the ff:\n\n1.	Nullar, Lovely Anne\n2.	Calica, Lorraine Joy\n3.	Calubayan, PhulineCristel\n4.	Montemayor, Gabriel Angelo\n","12","RESOLUTION 225-2013.pdf","21","2013-08-01","0");
INSERT INTO tbl_resolution VALUES("226 - 1999","","Approve Mun Ord # 11-99, of the SB of Balaoan, LU, Requiring All Kuliglig Owners/Operators to Provide Functional Tail Lights and/or Reflectors at the back of their Respective Kuliglig Trailers","24","RESOLUTION NO.226-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("226 - 2007","","Express full support for the approval of the Universal Declaration on the Rights of Indigenous People by the United National at its General Assembly on September 17, 2007 at New York City, USA","31","RESOLUTION NO. 226-2007.pdf","21","2007-08-30","0");
INSERT INTO tbl_resolution VALUES("226 - 2008","","Approve Ord # 2008-056, of the SB of Santol, LU, entitled: “Ord Amending Ord # 199-07 Otherwise known as the Sanitary Code of Santol, LU, Particularly Chapter XII – On Domestic Animals”","20","RESOLUTION NO. 226-2008.pdf","21","2008-07-31","0");
INSERT INTO tbl_resolution VALUES("226 - 2010","","Endorse Candidacy of BM Henry Bacurnay, Jr. for the Presidency of PBMLP","1","Resolution 226-2010.pdf","21","2010-08-26","0");
INSERT INTO tbl_resolution VALUES("226 - 2011","","Thank all donors who extended F/A for the construction of the Legislative Bldg","18","Resolution 226-2011.pdf","21","2011-07-08","0");
INSERT INTO tbl_resolution VALUES("226 - 2012","","Supporting House Bill 6222 Filed By Rep. Dennis Socrates, Seeking to repeal Sections 69 to 75 of the Local Gov’t Code of 1991","10","Resolution 226-2012.pdf","21","2012-06-28","0");
INSERT INTO tbl_resolution VALUES("226 - 2013","","Appropriate P75M as counterpart of the PGLU relative to the NDRRMC’s request for F/A to the ff projects:\n\n1.	Rehab of Guesset Bridge & River Slope Protection\n2.	Rehab of Caba Beach Rd\n3.	Rehab of Calumbaya-Boy-utan-CabalayanganRd\n4.	Rehab of Rosario-Tubao Rd\n5.	Rehab of Ilocanos Norte Seawall","4","RESOLUTION 226-2013.pdf","21","2013-08-01","0");
INSERT INTO tbl_resolution VALUES("227 - 1999","","Approve Mun Ord # 01-99, of the SB of Tubao, LU, Otherwise Known as the Municipal Cockfighting Ordinance of that Municipality","24","RESOLUTION NO.227-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("227 - 2007","","Express strong interest, support  and cooperation for the successfully implementation of the Land Administrative Management Project Phase 2 (LAMP 2) in the province as a pilot area","31","RESOLUTION NO. 227-2007.pdf","21","2007-09-13","0");
INSERT INTO tbl_resolution VALUES("227 - 2008","","Approve FY 2008 GF SB # 1, of Santol, LU","2","RESOLUTION NO. 227-2008.pdf","21","2008-07-31","0");
INSERT INTO tbl_resolution VALUES("227 - 2010","","Condole w/ the victims in Sablan, Benguet accident & grant F/A (P10T for the dead & P5T for the injured)","21","Resolution 227-2010.pdf","21","2010-08-26","0");
INSERT INTO tbl_resolution VALUES("227 - 2011","","Thank Sen. Juan Ponce Enrile for extending P5 M for the construction of the Legislative Bldg","18","Resolution 227-2011.pdf","21","2011-07-08","0");
INSERT INTO tbl_resolution VALUES("227 - 2012","","Approve EO # 04, s 2012 of the Mun Mayor of Pugo, LU, entitled: “Re-Organizing/Updating of the Mun Anti-Drug Abuse Council”","3","Resolution 227-2012.pdf","21","2012-06-28","0");
INSERT INTO tbl_resolution VALUES("227 - 2013","","Approve the request of Bayantel Telecom Inc. to excavate along the shoulder of Manila North Rd for the purpose of construction/installation of concrete pipes for Fiber Optic Cable","10","resolution 227-2013.pdf","21","2013-08-01","0");
INSERT INTO tbl_resolution VALUES("228 - 1999","","Approve Res # 29-99, of the SB of San Juan, LU, Adopting Revenue Ord # 03-99, Imposing Fees for the Transfer of Parcel of Land W/n the Jurisdiction of that Municipality","24","RESOLUTION NO.228-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("228 - 2007","","Realign P153,000 to the Special Scholarship Program","18","RESOLUTION NO. 228-2007.pdf","21","2007-09-13","0");
INSERT INTO tbl_resolution VALUES("228 - 2008","","Approve FY 2008 GF SB # 3, of Bacnotan, LU ","2","RESOLUTION NO. 228-2008.pdf","21","2008-07-31","0");
INSERT INTO tbl_resolution VALUES("228 - 2010","","Call on Local Enforcement Agencies to Review their Capabilities & Institute Advanced Capability Enhancement Trainings & to Upgrade Equipment Necessary on Handling Situations Similar in Manila","1","Resolution 228-2010.pdf","21","2010-08-26","0");
INSERT INTO tbl_resolution VALUES("228 - 2011","","Thank Sen. Ramon “Bong” Revilla, Jr. for extending F/A for the construction of the Legislative Bldg","18","Resolution 228-2011.pdf","21","2011-07-08","0");
INSERT INTO tbl_resolution VALUES("228 - 2012","","Approve EO # 05, s 2012 of the Mun Mayor of Pugo, LU, “Re-Organization of the Mun Peace & Order Council”","3","Resolution 228-2012.pdf","21","2012-06-28","0");
INSERT INTO tbl_resolution VALUES("228 - 2013","","Return for amendment, Ord # 14, s 2012, of the SB of Naguilian, La Union, “An Ord Promoting Breastfeeding in the Mun of Naguilian, La Union”","9","resolution 228-2013.pdf","21","2013-08-01","0");
INSERT INTO tbl_resolution VALUES("229 - 1999","","Approve Res # 49, of the SB of Rosario, LU, Approving the Municipal Dev’t Plan for CY 1999 of that Municipality","24","RESOLUTION NO.229-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("229 - 2007","","Realign  P1,191,012.00 to the La Union Greening Program","3","RESOLUTION NO. 229-2007.pdf","21","2007-09-13","0");
INSERT INTO tbl_resolution VALUES("229 - 2008","","Approve FY 2008 GF SB # 2, of Agoo, LU","2","RESOLUTION NO. 229-2008.pdf","21","2008-07-31","0");
INSERT INTO tbl_resolution VALUES("229 - 2011","","Thank Bong. Feliciano R. Belmonte, Jr. by extending F/A for the construction of the Legislation Bldg","18","Resolution 229-2011.pdf","21","2011-07-08","0");
INSERT INTO tbl_resolution VALUES("229 - 2012","","Approve Annual Investment Plan (AIP) of the Province of LU for CY 2013","1","Resolution 229-2012.pdf","21","2012-07-05","0");
INSERT INTO tbl_resolution VALUES("229 - 2013","","Enjoin Operators of School Canteens of Public Elem & Secondary Schools to Observe & Comply w/ DepEd Order # 17, s 2005, particularly to promote & make available nutritious foods, & to refrain from selling & dispensing so-called “junk foods” & carbonated sugar-based & artificially-flavored drinks","6","RESOLUTION 229-2013.pdf","21","2013-08-01","0");
INSERT INTO tbl_resolution VALUES("230 - 1999","","Return Ord # 15-99, of the SB of Bagulin, LU, Prohibiting the Production of Unwanted Sounds W/n the Municipal Plaza of that Municipality","24","RESOLUTION NO.230-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("230 - 2007","","An AO appropriating P1,721,551.00 for SB # 09 of the GF","2","RESOLUTION NO. 230-2007.pdf","21","2007-09-13","0");
INSERT INTO tbl_resolution VALUES("230 - 2008","","Approve FY 2008 GF SB # 1, of San Juan, LU ","2","RESOLUTION NO. 230-2008.pdf","21","2008-07-31","0");
INSERT INTO tbl_resolution VALUES("230 - 2010","","Approve FY 2010 GF SB # 5, of Sudipen, LU","1","Resolution 230-2010.pdf","21","2010-09-02","0");
INSERT INTO tbl_resolution VALUES("230 - 2011","","Thank Cong. Victor F Ortega by extending F/A for the construction of the Legislation Bldg","18","Resolution 230-2011.pdf","21","2011-07-08","0");
INSERT INTO tbl_resolution VALUES("230 - 2012","","Endorsing the Option 1 Plan for the Construction of the Tarlac-Pangasinan-LU expressway (TPLEX)","18","Resolution 230-2012.pdf","21","2012-07-05","0");
INSERT INTO tbl_resolution VALUES("230 - 2013","","Declare Ord # 31, s 2012, of the SB of Naguilian, LU, as ultra vires or beyond the power of the Council to enact","8","resolution 230-2013.pdf","21","2013-08-01","0");
INSERT INTO tbl_resolution VALUES("231 - 1999","","Approve Mun Ord # 34-99, of the SB of San Juan, LU, entitled: An Ord Imposing Additional Fees on Branding & Transfer of Ownership of Large Cattle in that Municipality & for Services Rendered","24","RESOLUTION NO.231-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("231 - 2007","","MOA w/ the Local Government Academy (LGA), relative to the PGLU Joint Executive-Legislative Seminar-Workshop for the formulation of the Executive-Legislative Agenda (ELA) ","20","RESOLUTION NO. 231-2007.pdf","21","2007-09-13","0");
INSERT INTO tbl_resolution VALUES("231 - 2008","","Approve FY 2008 GF SB # 1, of Bauang, LU ","2","RESOLUTION NO. 231-2008.pdf","21","2008-07-31","0");
INSERT INTO tbl_resolution VALUES("231 - 2010","","Approve FY 2010 GF SB # 4, of Agoo, LU","1","Resolution 231-2010.pdf","21","2010-09-02","0");
INSERT INTO tbl_resolution VALUES("231 - 2011","","Thank Cong. Eufranio C. Eriguel, for extending F/A for the construction of the Legislative Bldg","18","Resolution 231-2011.pdf","21","2011-07-08","0");
INSERT INTO tbl_resolution VALUES("231 - 2012","","Approve FY 2012 GF SB # 3, of Agoo, La Union.","1","Resolution 231-2012.pdf","21","2012-07-05","0");
INSERT INTO tbl_resolution VALUES("231 - 2013","","Approve Res # 12, s 2013, of the SB of Tubao, LU, “Adopting the IRP for the SB of Tubao, LU”","10","resolution 231-2013_001.pdf","21","2013-08-01","0");
INSERT INTO tbl_resolution VALUES("232 - 1999","","Approve Res # 023-99, of the SB of Burgos, LU, Amending Certain Provisions of the Revenue Tax Code of the Municipality of Burgos, LU, Part. Chapter III, Art. A, Sec. 3A.01 & Chapter V, Art. A, Sec. 5A.03, pertaining to Mayor’s Permit Fees on Business and Market Fees, Respectively","24","RESOLUTION NO.232-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("232 - 2007","","Condole w/ Ex-Mayor Manuel Sanglay, Sr., Bauang","21","RESOLUTION NO. 232-2007.pdf","21","2007-09-13","0");
INSERT INTO tbl_resolution VALUES("232 - 2008","","Approve FY 2008 GF SB # 2, of Bauang, LU ","2","RESOLUTION NO. 232-2008.pdf","21","2008-07-31","0");
INSERT INTO tbl_resolution VALUES("232 - 2011","","Thank Cong. Francisco Emmanuel R. Ortega, for extending F/A for the construction of the Legislative Bldg","18","Resolution 232-2011.pdf","21","2011-07-08","0");
INSERT INTO tbl_resolution VALUES("232 - 2012","","Approve FY 2012 GF SB # 2, of Balaoan, La Union.","1","Resolution 232-2012.pdf","21","2012-07-05","0");
INSERT INTO tbl_resolution VALUES("232 - 2013","","Approve Res # 18, s 2013, of the SB of Balaoan, La Union, “Adopting the IRP for the SB of Balaoan, La Union”","10","resolution 232-2013.pdf","21","2013-08-01","0");
INSERT INTO tbl_resolution VALUES("232 - 2014","2014 - 0225","Recommend approval of the FY 2014 GF SB # 3, of Agoo, La Union.","11","RESOLUTION 232-2014.pdf","21","2014-07-10","0");
INSERT INTO tbl_resolution VALUES("233 - 1999","","Return Ord # 99-16, of the SB of Bagulin, LU, Prohibiting the Possession of Deadly Weapons or Bladed/Pointed Objects in Public Assemblies or Occasions, & Authorizing the Municipal PNP Office to Conduct “Operation Kapkap” ","24","RESOLUTION NO.233-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("233 - 2007","","Open and maintain a depository account with Rang-ay Rural Bank","18","RESOLUTION NO. 223-2007.pdf","21","2007-09-20","0");
INSERT INTO tbl_resolution VALUES("233 - 2008","","Approve FY 2008 GF SB # 2, of Luna, LU ","2","RESOLUTION NO. 233-2008.pdf","21","2008-07-31","0");
INSERT INTO tbl_resolution VALUES("233 - 2011","","Realign P12,629,881.84 to \na.	Agricultural Equipment Assistance   P7,629,881.84\nb.	LU Greening Program                            5,000,000.00\n","3","Resolution 233-2011.pdf","21","2011-07-14","0");
INSERT INTO tbl_resolution VALUES("233 - 2012","","Approve FY 2012 GF SB # 2, of Bangar, La Union","1","Resolution 233-2012.pdf","21","2012-07-05","0");
INSERT INTO tbl_resolution VALUES("233 - 2013","","Return for amendment, Mun Ord # 96, s 2013, of the SB of Sudipen, LU, “An Ord Requiring the Food Service Industry w/n the Territorial Jurisdiction of the Mun of Sudipen, to Include ½ Cup of Cooked Rice in their Menu”","10","resolution 233-2013.pdf","21","2013-08-01","0");
INSERT INTO tbl_resolution VALUES("233 - 2014","2014 - 0224","Recommend approval of the FY 2014 GF SB # 1, of San Gabriel, La Union.","11","RESOLUTION 233-2014.pdf","21","2014-07-10","0");
INSERT INTO tbl_resolution VALUES("234 - 1999","","Support Senate Bill No. 538","24","RESOLUTION NO.234-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("234 - 2007","","Accredit ANGEL TOUCH MULTI-PURPOSE COOPERATIVE of PantarOrba, Brgy. Ortiz, Naguilian, LU as NGO","21","RESOLUTION NO. 234-2007.pdf","21","2007-09-20","0");
INSERT INTO tbl_resolution VALUES("234 - 2008","","Approve FY 2008 GF SB # 2, of Sudipen, LU ","2","RESOLUTION NO. 234-2008.pdf","21","2008-07-31","0");
INSERT INTO tbl_resolution VALUES("234 - 2010","","Approve FY 2010 GF SB # 3, of the SB of Bagulin, LU","1","Resolution 234-2010.pdf","21","2010-09-09","0");
INSERT INTO tbl_resolution VALUES("234 - 2011","","Renew Contract of Consultancy Services of the ff, effective Aug 1 to Dec 31, 2011:\n\na.	FlorestoSayangda             Local Gov’t Affairs, 1st Dist\nb.	Roberto Ortega Sr             Security & Intelligence Aff\nc.	JovenCostales                    Sr. Citizens Affairs\nd.	Bellarmin Flores II              Local Gov’t Affairs, 2nd Dist\ne.	Violeta Balbin                     Women’s Dev’t Affairs\nf.	Carlitodela Cruz                 Tourism, Trade &IndDev’t\ng.	Mario Lacsamana               Legislative Affairs\nh.	Jose Macusi                         Indigenous Peoples Affairs\ni.	Pablo Salanga                      Infra Dev’t Affairs\nj.	Justinian ArzadonBrgy. Dev’t Affairs\nk.	Manuel Borja                      City Gov’t Affairs\nl.	Jose Ostrea                          Health Services Dev’tAff\n","1","Resolution 234-2011.pdf","21","2011-07-14","0");
INSERT INTO tbl_resolution VALUES("234 - 2012","","Approve Res # 119-2012, of Agoo, La Union, authorizing Sandra Y. Eriguel, M.D. to represent LGU-AGOO to a MOA for the extension of the MOU with Calapan Waterworks Corporation ","20","Resolution 234-2012.pdf","21","2012-07-05","0");
INSERT INTO tbl_resolution VALUES("234 - 2013","","Approve Mun Ord # 97, s 2013, of the SB of Sudipen, LU, “Creating the Mun HIV/AIDS Council”","10","RESOLUTION 234-2013.pdf","21","2013-08-01","0");
INSERT INTO tbl_resolution VALUES("234 - 2014","2014 - 0228","Recommend approval of the FY 2014 GF SB # 1, of CSF, La Union.","10","RESOLUTION 234-2014.pdf","21","2014-07-10","0");
INSERT INTO tbl_resolution VALUES("235 - 1999","","Return Res # 41-97, of the SB of San Juan, LU, Known as the Comprehensive Land Use Plan of that Municipality for CY 1997-2006","24","RESOLUTION NO.235-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("235 - 2007","","Request all Service Office of the PGLU and its component City and Municipalities and all Commercial Establishment to provide express service lanes for persons with disabilities and Senior Citizens as mandated by law","7","RESOLUTION NO. 235-2007.pdf","21","2007-09-20","0");
INSERT INTO tbl_resolution VALUES("235 - 2008","","Approve FY 2008 GF SB # 3, of Balaoan, LU ","2","RESOLUTION NO. 235-2008.pdf","21","2008-07-31","0");
INSERT INTO tbl_resolution VALUES("235 - 2010","","Approve FY 2010 GF SB # 9, of the SB of Bauang, LU ","1","Resolution 235-2010.pdf","21","2010-09-09","0");
INSERT INTO tbl_resolution VALUES("235 - 2011","","Request CHED to furnish a list of Schools in LU w/c were directed to be phased out or closed it found deficient ","10","Resolution 235-2011.pdf","21","2011-07-14","0");
INSERT INTO tbl_resolution VALUES("235 - 2012","","Approve Res # 11-2011, of Agoo, La Union, authorizing Mayor Sandra Y. Eriguel to enter into a MOU with Calapan Waterworks Corporation.","20","Resolution 235-2012.pdf","21","2012-07-05","0");
INSERT INTO tbl_resolution VALUES("235 - 2013","","Request Gov thru MISD to develop the Legislative Tracking System of the SP & appropriate P150,000.00 for its hardware","2","RESOLUTION 235-2013.pdf","21","2013-08-01","0");
INSERT INTO tbl_resolution VALUES("236 - 1999","","Support HB # 6558, An Act Creating the barangay Road Maintenance Fund","24","RESOLUTION NO.236-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("236 - 2007","","Approve Ord # 14, s. 2007, of the SB of Burgos, LU, entitled: “An Ord Adopting the Internal Rules of Procedures of the SB of Burgos, LU”","20","RESOLUTION NO. 236-2007.pdf","21","2007-09-20","0");
INSERT INTO tbl_resolution VALUES("236 - 2008","","Approve FY 2008 GF SB # 3, of Pugo, LU ","2","RESOLUTION NO. 236-2008.pdf","21","2008-07-31","0");
INSERT INTO tbl_resolution VALUES("236 - 2010","","Approve application of Family Planning Org of the Phils Inc. (FPOP) as NGO","7","Resolution 236-2010.pdf","21","2010-09-09","0");
INSERT INTO tbl_resolution VALUES("236 - 2011","","Approve FY 2011 GF SB # 1, of Bangar, LU","1,10","Resolution 236-2011.pdf","21","2011-07-14","0");
INSERT INTO tbl_resolution VALUES("236 - 2012","","Approve Ord # 14-2012, of Agoo, La Union, “An Ord Prescribing Rates & Regulations on the Commercial Stalls for Rent &Pasalubong Center at the Jose D. Aspiras Civic Center”","20","Resolution 236-2012.pdf","21","2012-07-05","0");
INSERT INTO tbl_resolution VALUES("236 - 2013","","Congratulate Cong. FrannyEriguel for being elected as the Chairperson of the House Committee on Health of the 16th Congress","9","RESOLUTION 236-2013.pdf","21","2013-08-01","0");
INSERT INTO tbl_resolution VALUES("237 - 1999","","Pay Phil. Wireless Inc. Pocketbell in a semi-annual deferred payment package for the pagers of the OSP","27","RESOLUTION NO.237-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("237 - 2007","","Approve Ord # 452, s. 2007, of the SB of Bacnotan, LU, entitled: “An Ord Promulgating the Gender and Dev’t Code of the Municipality of Bacnotan, LU & for Other Purposes”","20","RESOLUTION NO. 237-2007.pdf","21","2007-09-20","0");
INSERT INTO tbl_resolution VALUES("237 - 2008","","Condole with Ms. Diana Costales, OSP","3","RESOLUTION NO. 237-2008.pdf","21","2008-07-31","0");
INSERT INTO tbl_resolution VALUES("237 - 2011","","Approve FY 2011 GF SB # 1, of Bauang, LU","18","Resolution 237-2011.pdf","21","2011-07-14","0");
INSERT INTO tbl_resolution VALUES("237 - 2012","","Approve Ord # 18-2012, of Agoo, La Union, “An Ord Prescribing the Rates in the Market Stall Fees, Payment of Privilege Rights & Parking Fees at the Agoo Public Market w/ Basement Parking (Phase III)”","20","Resolution 237-2012.pdf","21","2012-07-05","0");
INSERT INTO tbl_resolution VALUES("237 - 2013","","Congratulate Cong. Pacoy R. Ortega III for being elected as Deputy Majority Floor Leader of the 16th Congress","9","RESOLUTION 237-2013.pdf","21","2013-08-01","0");
INSERT INTO tbl_resolution VALUES("238 - 1999","","Deny Prov’l Engineer’s request for the appropriation of P70,000.00 for the concrete paving of Bawanta-Dili Rd. in Bauang","27","RESOLUTION NO.238-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("238 - 2007","","Approve MunOrd # 06-2007, of the SB of San Juan, LU, entitled: “An Ord Imposing Locational Clearance Fee in the Operation of Videoke Bars”","20","RESOLUTION NO. 238-2007.pdf","21","2007-09-20","0");
INSERT INTO tbl_resolution VALUES("238 - 2008","","Condemn the brutal killing of Ms. Diana Costales and her partner on July 27, 2008 and requesting the PNP, NBI and other Law Enforcement Agencies for the expeditious resolution of this tragic incident","31","RESOLUTION NO. 238-2008.pdf","21","2008-07-31","0");
INSERT INTO tbl_resolution VALUES("238 - 2010","","Enjoin all Public & Private Hospitals for City/Municipal Health Centers to provide express lanes & affordable & available “house calls” by authorized medical personnel for suspected dengue cases","1,5,9,10,18,19","Resolution 238-2010.pdf","21","2010-09-09","0");
INSERT INTO tbl_resolution VALUES("238 - 2011","","Approve FY 2011 GF SB # 2, of Balaoan, LU","18","Resolution 238-2011.pdf","21","2011-07-14","0");
INSERT INTO tbl_resolution VALUES("238 - 2012","","Approve Ord # 476-2012, of Bacnotan, LU, “An Ord Prohibiting the Use & Sale of Plastic Bags & Wrappers on Dry Goods, Regulating Its Utilization on Wet Goods & Prohibiting the Use Sale & Give Away of Styrofoam/Styrophor w/n the said Mun & Prescribing Penalties for the Violation”","1","Resolution 238-2012.pdf","21","2012-07-05","0");
INSERT INTO tbl_resolution VALUES("238 - 2013","","Request LU 1stEng’gDist (DPWH) to make the necessary repairs to the San Juan-City of Sn Fdo By-Pass Rd","3","RESOLUTION 238-2013.pdf","21","2013-08-01","0");
INSERT INTO tbl_resolution VALUES("239 - 1999","","AO amounting P323,055.25 for Terminal Leave Pay","27","RESOLUTION NO.239-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("239 - 2007","","Approve MunOrd # 10-2007, of the SB of San Juan, LU, entitled: “An Ord Imposing Limit in the Number of Tricycle Franchise, as Amended”","20","RESOLUTION NO. 239-2007.pdf","21","2007-09-20","0");
INSERT INTO tbl_resolution VALUES("239 - 2008","","Condole w/ BC Teofilo Alviar, Santiago Norte, CSF","1,2,3,5,7,12,18,19,20,21,31,32,33","RESOLUTION NO. 239-2008.pdf","21","2008-07-31","0");
INSERT INTO tbl_resolution VALUES("239 - 2010","","Approve Ord # 2009-01, s 2009, of the SB of Caba, LU, An Ord Prohibiting the Entry of Colorum Vehicles in the Territorial Jurisdiction of the Mun of Caba, LU& Providing Penalties for Violation Thereof","10","Resolution 239-2010.pdf","21","2010-09-09","0");
INSERT INTO tbl_resolution VALUES("239 - 2011","","Approve FY 2011 GF SB # 2, of Luna, LU","18","Resolution 239-2011.pdf","21","2011-07-14","0");
INSERT INTO tbl_resolution VALUES("239 - 2012","","Adjust SG of Ms. Lorenza D. Mazon, Admin Aide IV, Naguilian Dist Hosp.","1","Resolution 239-2012.pdf","21","2012-07-05","0");
INSERT INTO tbl_resolution VALUES("239 - 2013","","Approve programming of RA 7171 Fund amounting to P100,851,155.00.","4,8","RESOLUTION 239-2013.pdf","21","2013-08-08","0");
INSERT INTO tbl_resolution VALUES("239 - 2014","2014 - 0087","Mun Ord # 01-2014, An Ord Requiring All Elem & HS Principals/Administrators in the Mun of San Juan to Hold an Info Campaign Not Shorter than 5 Minutes Every Mon After Flag Ceremony on How to Prevent Drug Abuse","6","RESOLUTION 239-2014.pdf","21","2014-07-10","0");
INSERT INTO tbl_resolution VALUES("240 - 1999","","Approve FY 1999 GF AB, of the CSF, LU","27","RESOLUTION NO.240-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("240 - 2007","","Approve MunOrd # 10-2007, of the SB of San Juan, LU, entitled: “An Ord Imposing Limit in the Number of Tricycle Franchise, as Amended”","20","RESOLUTION NO. 240-2007.pdf","21","2007-09-20","0");
INSERT INTO tbl_resolution VALUES("240 - 2008","","Approve the Annual Investment Plan for CY 2009","31","RESOLUTION NO. 240-2008.pdf","21","2008-07-31","0");
INSERT INTO tbl_resolution VALUES("240 - 2010","","Allow use of a portion of the Sr. Citizens & Person w/ Disability Bldg in Bauang, LU as a Maternity & Lying-in Clinic & Geriatrics-Physical Therapy Center & naming at as Doña Corazon Campos Ortega Memorial Maternity & Lying-in Clinic & Geriatrics Therapy Center","1,5,10,18","Resolution 240-2010.pdf","21","2010-09-09","0");
INSERT INTO tbl_resolution VALUES("240 - 2011","","Approve Mun Ord # 18-2011, of the SB of San Juan, LU, An Ord Prescribing Prices of Meat Sold at San Juan Public Market","18","Resolution 240-2011.pdf","21","2011-07-14","0");
INSERT INTO tbl_resolution VALUES("240 - 2012","","Urge all Component Local Gov’t Units of LU to Relocate Junkshops Embedded in \nResidential Areas .\n","10","Resolution 240-2012.pdf","21","2012-07-05","0");
INSERT INTO tbl_resolution VALUES("240 - 2013","","Approve FY 2013 GF SB # 3, of Balaoan, La Union.","1","RESOLUTION 240-2013.pdf","21","2013-08-08","0");
INSERT INTO tbl_resolution VALUES("240 - 2014","2014 - 0128","Ord # 164, The Anti-Truancy Ord for Elem & H/S Students in Aringay, LU","6","RESOLUTION 240-2014.pdf","21","2014-07-10","0");
INSERT INTO tbl_resolution VALUES("241 - 1999","","Approve FY 1999 GF SB # 1, of San Gabriel, LU","27","RESOLUTION NO.241-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("241 - 2007","","Approve Ord # 455, s. 2007, of the SB of Bacnotan, LU, entitled: “An Ord Enacting the Municipal Environmental Code of Bacnotan, LU”","20","RESOLUTION NO. 241-2007.pdf","21","2007-09-20","0");
INSERT INTO tbl_resolution VALUES("241 - 2008","","Condole with SBM Simplicio Pang-ot, Sidpen, LU","2,3,5,7,18,19,20,21,31,32,33","RESOLUTION NO. 241-2008.pdf","21","2008-08-07","0");
INSERT INTO tbl_resolution VALUES("241 - 2010","","Congratulate Ms. Christine Joy Altuna, Owen BryleBaladad, Theodore Dmitri Arcano&EdzelYumul for winning in the 2010 Smart Nat’l Taekwondo Poomsae Championships","1,9,18","Resolution 241-2010.pdf","21","2010-09-09","0");
INSERT INTO tbl_resolution VALUES("241 - 2011","","Note attachments submitted by the SB of San Juan, re: Mun Ord # 16-2011","18","Resolution 241-2011.pdf","21","2011-07-14","0");
INSERT INTO tbl_resolution VALUES("241 - 2012","","Request the Prov’l Assessor’s Office to Assess all the real estate properties of Globe Telecommunications, Inc for the payment of all their back accounts on such real properties as well as SMART, PLDT, etc.","20","Resolution 241-2012.pdf","21","2012-07-05","0");
INSERT INTO tbl_resolution VALUES("241 - 2013","","Approve FY 2013 GF SB # 4, of Agoo, La Union.","1","RESOLUTION 241-2013.pdf","21","2013-08-08","0");
INSERT INTO tbl_resolution VALUES("241 - 2014","2014 - 0187","Mun Ord # 08-2014, An Ord Amending the Title, Sec 4 & 5 of Mun Ord # 25-2013 as an Ord Mandating All Parents/Guardians in Agoo to Enroll Their Children Ages 5 Yrs. Old & Above in Basic Education in Any Learning Institution w/n the Mun of Agoo, LU","6","RESOLUTION 241-2014.pdf","21","2014-07-10","0");
INSERT INTO tbl_resolution VALUES("242 - 1999","","Approve FY 1999 GF AB, of Luna, LU","27","RESOLUTION NO.242-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("242 - 2007","","Approve Ord # 454, s. 2007, of the SB of Bacnotan, LU, entitled: “An Ord Enacting the Sanitation Code of the Municipality of Bacnotan, LU","20","RESOLUTION NO. 242-2007.pdf","21","2007-09-20","0");
INSERT INTO tbl_resolution VALUES("242 - 2008","","MOA with DMMMSU, to establish a demonstration farm at the Provincial Demo Farm in Bungol, Balaoan, LU in order to reintroduce Bio-fertilizers (organic fertilizers) such as Bio-N and Vermicompost to our farmers ","3","RESOLUTION NO. 242-2008.pdf","21","2008-08-14","0");
INSERT INTO tbl_resolution VALUES("242 - 2010","","Congratulate Dr. Geoffrey S. Tilan, Prov’l Administrator, as a National Awardee of Dangalng Bayan Award given by CSC","1,18","Resolution 242-2010.pdf","21","2010-09-09","0");
INSERT INTO tbl_resolution VALUES("242 - 2011","","Approve Mun Ord # 18-2011, of the SB of San Juan, LU, An Ord Prescribing Prices f Meat Sold at San Juan Public Market","18","Resolution 242-2011.pdf","21","2011-07-14","0");
INSERT INTO tbl_resolution VALUES("242 - 2012","","MOA w/ DA re: fund allotment of P366,000.00 by the former to the latter’s project “Strengthening the Beekeeping Industry”","3","Resolution 242-2012.pdf","21","2012-07-09","0");
INSERT INTO tbl_resolution VALUES("242 - 2013","","Approve FY 2013 SB # 2, of Bagulin, La Union.","1","RESOLUTION 242-2013.pdf","21","2013-08-08","0");
INSERT INTO tbl_resolution VALUES("243 - 1999","","Approve FY 1999 GF AB, of Caba, LU","27","RESOLUTION NO.243-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("243 - 2007","","Approve Ord # 142, of the SB of Aringay, LU, entitled: “An Ord Promulgating the Rules and Regulations for the Protection and Welfare of Senior Citizens in the Municipality of Aringay, LU","20","RESOLUTION NO. 243-2007.pdf","21","2007-09-20","0");
INSERT INTO tbl_resolution VALUES("243 - 2008","","Commend the La Union Police Provincial officer for a job well done along Police Community Relations in LU","1,2,3,5,7,18,20","RESOLUTION NO. 243-2008.pdf","21","2008-08-14","0");
INSERT INTO tbl_resolution VALUES("243 - 2010","","Approve SB # 1 of the Economic Enterprise of the province","1,18","Resolution 243-2010.pdf","21","2010-09-16","0");
INSERT INTO tbl_resolution VALUES("243 - 2011","","Approve Ord # 3, s 2011, of the SB of Balaoan, LU, An Ord Adopting ‘ArapaapMiKenkaAgbiag’ w/ Its English Version ‘Where Dreams Soar High’ as the Official Hymn of the Mun of Balaoan, LU","18","Resolution 243-2011.pdf","21","2011-07-14","0");
INSERT INTO tbl_resolution VALUES("243 - 2012","","Endorse DMMMSU’s request to Sen. Juan Ponce Enrile to cause the allotment of P10 M for the construction of a College of Law Bldg (Phase II)","1,3,5,6,7,9,10,19,20","Resolution 243-2012.pdf","21","2012-07-09","0");
INSERT INTO tbl_resolution VALUES("243 - 2013","","Approve FY 2013 GF SB # 1, of Bangar, La Union.","1","RESOLUTION 243-2013.pdf","21","2013-08-08","0");
INSERT INTO tbl_resolution VALUES("243 - 2014","2014 - 0197","Mun Ord # 42-2012, An Ord to Prohibit the Unauthorized Wearing of PNP/AFP Uniforms by any Individual who is not a Legitimate Member of the PNP/AFP w/n the Territorial Jurisdiction of the Mun of Luna, La union.","3","RESOLUTION 243-2014.pdf","21","2014-07-17","0");
INSERT INTO tbl_resolution VALUES("244 - 1999","","Approve FY 1999 GF SB # 1, of Bauang, LU","27","RESOLUTION NO.244-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("244 - 2007","","Approve Ord # 144, of the SB of Aringay, LU, entitled: “An Ord Promulgating the Gender and Dev’t of the Municipality of Aringay, LU, and for Other Purposes","20","RESOLUTION NO. 244-2007.pdf","21","2007-09-20","0");
INSERT INTO tbl_resolution VALUES("244 - 2008","","Condole w/ Dona Eufrosina Q. Nisce, Board of Directors of Eso-Nice Realty Dev’t Corp. and Rang-ay Bank, Inc.","1,2,3,5,7,12,18,19,20,21,31,32,33","RESOLUTION NO. 244-2008.pdf","21","2008-08-14","0");
INSERT INTO tbl_resolution VALUES("244 - 2010","","State of Calamity due to Dengue Hemorrhagic Fever","1,18","Resolution 244-2010.pdf","21","2010-09-16","0");
INSERT INTO tbl_resolution VALUES("244 - 2011","","Approve Mun Ord # 19-2011, of the SB of San Juan, LU, An Ord Prohibiting Expectoration in Public Places","18","Resolution 244-2011.pdf","21","2011-07-14","0");
INSERT INTO tbl_resolution VALUES("244 - 2012","","Endorse DMMMSU’s request to Sen. Aquilino Pimentel III to cause the allotment of P10 M for the construction of a College of Law Bldg (Phase II)","1,3,5,7,9,10,19,20,21","Resolution 244-2012.pdf","21","2012-07-09","0");
INSERT INTO tbl_resolution VALUES("244 - 2013","","Return Mun Ord # 01-2013, of the SB of San Juan, LU, An Ord Authorizing the zoning of Cockpit in Brgy. Nadsaag.","7","RESOLUTION 244-2013.pdf","21","2013-08-08","0");
INSERT INTO tbl_resolution VALUES("244 - 2014","2014 - 0177","Ord # 2014-112, Establishing the Mun Abattoir of Pugo, LU and Prescribing Policies for the Management and Operation Thereof, and Regulating the Sale of Meat and Meat Products for Public Consumption, Imposition of Fees and Charges and Imposing Penalties in Violation Thereof.","3","RESOLUTION 244-2014.pdf","21","2014-07-17","0");
INSERT INTO tbl_resolution VALUES("245 - 1999","","Approve FY 1999 GF SB # 1, of Pugo, LU","27","RESOLUTION NO.245-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("245 - 2007","","Approve Ord # 451, s. 2007, of the SB of Bacnotan, LU, entitled: “A Code Promulgating Rules and Regulations for the Protection of Children in the Municipality of Bacnotan, LU","20","RESOLUTION NO. 245-2007.pdf","21","2007-09-20","0");
INSERT INTO tbl_resolution VALUES("245 - 2008","","Third Renewal of Lease Agreement, with GLOBE Telecommunication for a lease period starting July 15, 2008 to July 14, 2009 ","1","RESOLUTION NO. 245-2008.pdf","21","2008-08-14","0");
INSERT INTO tbl_resolution VALUES("245 - 2010","","MOA w/ El Niño/La Niña Regional Task Force (DA DENR, NEDA, DOST, DPWH, RANGO, ISPC, PENRO of 4 Provinces, Prov’l Gov’t of 4 Provinces, BFAR, NFA, RATC, MMSU, DMMMSU, NIA, OCD, FARMC, PSU & UNP)","1,5,7,11,18","","21","2010-09-22","0");
INSERT INTO tbl_resolution VALUES("245 - 2011","","Approve Mun Ord # 20-2011, of the SB of San Juan, LU, An Ord Prescribing the Implementing Mechanisms Against the Spread of Tuberculosis, As Amended","18","Resolution 245-2011.pdf","21","2011-07-14","0");
INSERT INTO tbl_resolution VALUES("245 - 2012","","Congratulate INC on its 98th Anniversary","1,3,5,7,9,10,11,12,13,18,19,20,21","Resolution 245-2012.pdf","21","2012-07-09","0");
INSERT INTO tbl_resolution VALUES("245 - 2013","","Approve Res # 18,, s 2013, of the SB of Sudipen, LU, “Fixing the Date, Time and Venue of the Regular Session of the SB”","10","RESOLUTION 245-2013.pdf","21","2013-08-08","0");
INSERT INTO tbl_resolution VALUES("246 - 1999","","Approve FY 1999 GF AB, of Bacnotan, LU","27","RESOLUTION NO.146-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("246 - 2007","","MOA w/ the University of Baguio pertaining to the On-the-Job Training (OJT)/Practicum of UB students at the Caba Medicare and Community Hospital for SY 2007-2008","21","RESOLUTION NO. 246-2007.pdf","21","2007-09-26","0");
INSERT INTO tbl_resolution VALUES("246 - 2008","","Renew the Contract of Lease (COL) with the Viva Video City at the Ground Floor (North Wing) of the La Union Provincial Administrative and Commercial Building ","1","RESOLUTION NO. 246-2008.pdf","21","2008-08-14","0");
INSERT INTO tbl_resolution VALUES("246 - 2010","","Approve FY 2010 SB # 2, of Santol, LU","1","Resolution 246-2010.pdf","21","2010-09-22","0");
INSERT INTO tbl_resolution VALUES("246 - 2011","","Amendment Contract to Sell w/ 1590 Energy Corp. Part Sec 2.1 c(ii)","1,10","Resolution 246-2011.pdf","21","2011-07-14","0");
INSERT INTO tbl_resolution VALUES("246 - 2012","","MOA w/ DOH CHD re: implementation of the enhancement program of RDH","20","Resolution 246-2012.pdf","21","2012-07-09","0");
INSERT INTO tbl_resolution VALUES("246 - 2013","","Approve Ord # 48, s 2013, of the SB of Burgos, LU, “An Ord Adopting the internal Rules of Procedure of the SB of Burgos, LU”","10","RESOLUTION 246-2013.pdf","21","2013-08-08","0");
INSERT INTO tbl_resolution VALUES("246 - 2014","2014 - 0065","SP Misamis Occidental, R # 271-13 - Request GSIS Board of Trustees to adopt strategies to adjust the interest rates of all GSIS Loan in order to make existing loan windows less burdensome to gov?t employees for the benefit of its members","9","RESOLUTION 246-2014.pdf","21","2014-07-17","0");
INSERT INTO tbl_resolution VALUES("247 - 1999","","Approve FY 1999 GF AB, of Naguilian, LU","27","RESOLUTION NO.247-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("247 - 2007","","Approve FY 2007 GF SB # 1, of Bacnotan, LU","2","RESOLUTION NO. 247-2007.pdf","21","2007-09-26","0");
INSERT INTO tbl_resolution VALUES("247 - 2008","","Condemn the Moro Islamic Liberation Front (MILF), a Muslim Separatist Group, for their atrocities and indiscriminate killings and abduction of innocent civilians and members of the Philippine Army in Lanao del  Norte","18","RESOLUTION NO. 247-2008.pdf","21","2008-08-21","0");
INSERT INTO tbl_resolution VALUES("247 - 2010","","Approve FY 2010 SB # 1, of Bangar, LU","1","Resolution 247-2010.pdf","21","2010-09-22","0");
INSERT INTO tbl_resolution VALUES("247 - 2011","","MOA w/ Sen. ChizEscudero&ITRMC pertaining to the allocation of P200,000.00 to be utilized as Medical Assistance Fund for the indigent patients","1","Resolution 247-2011.pdf","21","2011-07-14","0");
INSERT INTO tbl_resolution VALUES("247 - 2012","","Assure that whatever amount that will be provided by the Office of the President for the ff projects will be funded & completed by the Province as its counterpart, to wit:\n\n1.	Reconstruction of 3 classroom school bldg,             P1,950,000.00\nLuna Community School, Luna, LU\n          2.       Rehab of Santol-San Gabriel Rd (FMR)                        1,000,000.00\n          3.       Rehab of Naguilian-Bagulin Rd                                    10,000,000.00\n","1","Resolution 247-2012.pdf","21","2012-07-27","0");
INSERT INTO tbl_resolution VALUES("247 - 2013","","Approve Mun Ord No. 49-2013, of the SB of Luna, LU, “An Ord Declaring GliciridiaSepium/Kakawate” and Orchid as Mun Tree and Flower, Respectively”","10","RESOLUTION 247-2013.pdf","21","2013-08-08","0");
INSERT INTO tbl_resolution VALUES("247 - 2014","2014 - 0191","Mun Ord # 08-2014, An Ord Imposing Penalty to Vendors from Selling Double Meat (Bocha), Hot Meat and Spoiled Meat to Consuming Public, As Amended.","9","RESOLUTION 247-2014.pdf","21","2014-07-17","0");
INSERT INTO tbl_resolution VALUES("248 - 1999","","Approve FY 1999 GF SB # 01, of Bangar, LU","27","RESOLUTION NO.248-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("248 - 2007","","Approve FY 2007 GF SB # 4, of Pugo, LU","2","RESOLUTION NO. 248-2007.pdf","21","2007-09-26","0");
INSERT INTO tbl_resolution VALUES("248 - 2008","","Extend the posthumous commendation to the late Lt. Col. Angel Benitez, Member of the PMA “Bigkis Lahi” Class 1990 and Executive Officer of the Phil. Army’s 102nd Infantry Brigade and a native of Naguilian, LU for his exceptional bravery, heroic deed and selfless sacrifice in defending his beloved country ","18","RESOLUTION NO. 248-2008.pdf","21","2008-08-21","0");
INSERT INTO tbl_resolution VALUES("248 - 2010","","Approve FY 2010 SB # 4, of Bagulin, LU","1","Resolution 248-2010.pdf","21","2010-09-22","0");
INSERT INTO tbl_resolution VALUES("248 - 2011","","MOA w/ LUPPO pertaining to the turn-over of 10 pcs firearms for exclusive use of SWAT","3","Resolution 248-2011.pdf","21","2011-07-14","0");
INSERT INTO tbl_resolution VALUES("248 - 2012","","Condole with the late Dr. Pedro G. Orille, former Supervisor, DepEd & Pres., Sr. Citizens.","20","Resolution 248-2012.pdf","21","2012-07-27","0");
INSERT INTO tbl_resolution VALUES("248 - 2013","","Renew Contract of Consultancy of:\n\n1.	Engr Pablo Salanga\n2.	Atty. Gerardo A. Viloria\n3.	Mr. Firth McEachern\n4.	Atty. Rolando V. Rivera\n","4","RESOLUTION 248-2013.pdf","21","2013-08-08","0");
INSERT INTO tbl_resolution VALUES("248 - 2014","2014 - 0215","Theodore Sarmiento, VP for Legal & Corporate Affairs Thunderbird Resorts - Authorization to Lay Underground Pipe Along Don Joaquin Ortega Avenue.","11","RESOLUTION 248-2014.pdf","21","2014-07-17","0");
INSERT INTO tbl_resolution VALUES("249 - 1999","","Approve FY 1999 GF SB # 1, of Tubao, LU","27","RESOLUTION NO.249-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("249 - 2007","","Approve FY 2007 GF SB # 4, of the City of San Fernando, LU","2","RESOLUTION NO. 249-2007.pdf","21","2007-09-26","0");
INSERT INTO tbl_resolution VALUES("249 - 2008","","Condole w/ Lt. Col. Angel Benitez, Member of the PMA “Bigkis Lahi” Class 1990 and Executive Officer of the Phil. Army’s 102nd Infantry Brigade ","18","RESOLUTION NO. 249-2008.pdf","21","2008-08-21","0");
INSERT INTO tbl_resolution VALUES("249 - 2010","","MOA w/ DOH-CHDI in connection w/ the fund transfer for the repair & rehab of the LU Medical Center’s existing sewerage treatment plant","1,18","Resolution 249-2010.pdf","21","2010-09-22","0");
INSERT INTO tbl_resolution VALUES("249 - 2011","","Endorse to the President the extension of the North Luzon Expressway System up to SFLU","1","Resolution 249-2011.pdf","21","2011-07-14","0");
INSERT INTO tbl_resolution VALUES("249 - 2012","","Congratulate Hon. Nonnatus Caesar Rojas on his appointment as the new NBI Director, Dept of Justice","20","Resolution 249-2012.pdf","21","2012-07-27","0");
INSERT INTO tbl_resolution VALUES("249 - 2013","","Endorse the candidacy of Hon. Francisco “Kit” Ortega, Jr. for the Presidency of the PBMLP – RO I","4","RESOLUTION 249-2013.pdf","21","2013-08-08","0");
INSERT INTO tbl_resolution VALUES("250 - 1999","","Approve FY 1999 GF AB, of Bauang, LU","27","RESOLUTION NO.250-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("250 - 2007","","Approve FY 2007 GF SB # 5, of theCity of San Fernando, LU","2","RESOLUTION NO. 250-2007.pdf","21","2007-09-26","0");
INSERT INTO tbl_resolution VALUES("250 - 2008","","Approve Res # 08-46, s. 2008, of the SP of the City of San Fernando, LU, entitled: “Res approving the Allocation of P1,750,000 as F/A to 35 Rural Barangays of the City at P50,000 Each to be Sourced Out from the 2007Balance of the RA 7171 City Share”","20","RESOLUTION NO. 250-2008.pdf","21","2008-08-21","0");
INSERT INTO tbl_resolution VALUES("250 - 2010","","MOA w/ Center for Advanced Phil Studies (CPS) & the Mun of Bauang, LU, in the implementation of the UNEP-IETC project","1,10,18","Resolution 250-2010.pdf","21","2010-09-22","0");
INSERT INTO tbl_resolution VALUES("250 - 2011","","Endorse to the President fast-tracking the replacement of old/dilapidated bridges along Major Road Sections in Reg I","1","Resolution 250-2011.pdf","21","2011-07-14","0");
INSERT INTO tbl_resolution VALUES("250 - 2012","","Condole with the family of the late Ronnie Esquivel, one-legged surfer","11","Resolution 250-2012.pdf","21","2012-07-27","0");
INSERT INTO tbl_resolution VALUES("250 - 2013","","Designate BM Nancy Corazon M. Bacurnay as Liaison Officer of the SP to the NC of PBMLP","9","RESOLUTION 250-2013.pdf","21","2013-08-08","0");
INSERT INTO tbl_resolution VALUES("250 - 2014","2014 - 0166","Mun Ord # 05-2014, An Ord Requiring Owners of Hotels and Resorts to Install Placards Informing the Foreign and Local Tourists that Night Swimming is Banned from 6PM to 6AM and Warning in the Hazards of Swimming Under the Influence of Liquor","4","RESOLUTION 250-2014.pdf","21","2014-07-17","0");
INSERT INTO tbl_resolution VALUES("251 - 1999","","P30,000.00 F/A to Brgy. Macalva Central MPCI, Agoo, LU, for the construction of warehouse for agricultural products and agricultural machines","27","RESOLUTION NO.251-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("251 - 2007","","Approve FY 2007 GF SB # 3, of Tubao, LU","2","RESOLUTION NO. 251-2007.pdf","21","2007-09-26","0");
INSERT INTO tbl_resolution VALUES("251 - 2008","","MOA with the Members of the Provincial Council of the Five (5) Pillars of Criminal Justice System in LU","20","RESOLUTION NO. 251-2008.pdf","21","2008-08-21","0");
INSERT INTO tbl_resolution VALUES("251 - 2010","","Approve Mun Ord # 06-2010, of the SB of San Juan, LU","10","Resolution 251-2010.pdf","21","2010-09-22","0");
INSERT INTO tbl_resolution VALUES("251 - 2011","","Condole w/ Brgy. TreasZaldivarGali, Agoo","19","Resolution 251-2011.pdf","21","2011-07-14","0");
INSERT INTO tbl_resolution VALUES("251 - 2012","","Condole with the bereaved family of BC ApolonioRenonos, Brgy. Cabarsican, Bacnotan.","20","Resolution 251-2012.pdf","21","2012-07-27","0");
INSERT INTO tbl_resolution VALUES("251 - 2013","","Condole w/ bereaved family of the SBM Nestor Dilodilo.","1,2,3,4,5,6,7,8,9,10,11,12,13","RESOLUTION 251-2013.pdf","21","2013-08-08","0");
INSERT INTO tbl_resolution VALUES("251 - 2014","2014 - 0168","Dr. Mauro Libatique, Jr, PPDC - Forward the CLUP/Zoning Ord of the Mun of San Juan, LU for CY 2013-2022","7","RESOLUTION 251-2014.pdf","21","2014-07-17","0");
INSERT INTO tbl_resolution VALUES("252 - 1999","","P20,000.00 F/A to Brgy. Baracbac Este, Balaoan, LU, for the rehab of their barangay pathway","27","RESOLUTION NO.252-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("252 - 2007","","Approve FY 2007 GF SB # 1, of Aringay, LU","2","RESOLUTION NO. 252-2007.pdf","21","2007-09-26","0");
INSERT INTO tbl_resolution VALUES("252 - 2008","","Charge the amount of P53,380 to the current budget appropriation of the Office of the Provincial Governor for  the payment of unpaid obligation of said office","20","RESOLUTION NO. 252-2008.pdf","21","2008-08-21","0");
INSERT INTO tbl_resolution VALUES("252 - 2010","","Declare October 1-7, 2010 as Parent-Teachers Association Week","9","Resolution 252-2010.pdf","21","2010-09-22","0");
INSERT INTO tbl_resolution VALUES("252 - 2011","","Condole w/ Nelson Cacayuran, Agoo","19","Resolution 252-2011.pdf","21","2011-07-14","0");
INSERT INTO tbl_resolution VALUES("252 - 2012","","Approve the FY 2011 GF, SB # 2, of Bacnotan, La Union.","1","Resolution 252-2012.pdf","21","2012-07-27","0");
INSERT INTO tbl_resolution VALUES("252 - 2013","","Approve the FY 2013 GF SB # 2, of Luna, La Union.","1","RESOLUTION 252-2013.pdf","21","2013-08-15","0");
INSERT INTO tbl_resolution VALUES("252 - 2014","2014 - 0188","Romeo Ramos/\nFlorenda Flores - Request an advise/proper action to solve the problem of the selling of one Pedro Flores to Ms Cristina Ordinado at Pindangan Access Rd, San Fernando City.","7","RESOLUTION 252-2014.pdf","21","2014-07-17","0");
INSERT INTO tbl_resolution VALUES("253 - 1999","","P10,000.00 F/A to Brgy. Sto. Rosario East, Aringay, LU, for the unfinished streetlight posts","27","RESOLUTION NO.253-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("253 - 2007","","Approve FY 2007 GF SB # 2, of Santol, LU","2","RESOLUTION NO. 253-2007.pdf","21","2007-09-26","0");
INSERT INTO tbl_resolution VALUES("253 - 2008","","Support Benguet SP Resolution No. 08-70, entitled: “Strongly Supporting Capiz SP Res. No. 013, s. 2008, strongly supporting Senate Bill # 1962, entitled, An Act Classifying Transaction involving Petroleum Products as 0% VAT Transactions, Amending for the Purpose Section 108 (B) of RA No. 8424, as Amended by RA 9337, Otherwise Known as the Tax Reform Act of 1991, and For Other Purposes”","31","RESOLUTION NO. 253-2008.pdf","21","2008-09-04","0");
INSERT INTO tbl_resolution VALUES("253 - 2010","","Approve Res # 4, s 2010, of the SB of Caba, LU, Res Adopting the 2010 Internal Rules of Procedure of the SB of Caba, LU","10","Resolution 253-2010.pdf","21","2010-09-22","0");
INSERT INTO tbl_resolution VALUES("253 - 2011","","Thank Arch Luis B. Cancio for a job well done in his professional involvement as the Architect of the Legislative Bldg","18","Resolution 253-2011.pdf","21","2011-07-14","0");
INSERT INTO tbl_resolution VALUES("253 - 2012","","Approve the FY 2012 GF, AB of Bacnotan, La Union.","1","Resolution 253-2012.pdf","21","2012-07-27","0");
INSERT INTO tbl_resolution VALUES("253 - 2013","","Approve The FY 2013 GF AB, of Aringay, La Union.","1","RESOLUTION 253-2013.pdf","21","2013-08-15","0");
INSERT INTO tbl_resolution VALUES("253 - 2014","2014 - 0218","Mun Ord # 06-2014, An Ord Granting the Authority to Mayor Sandra Eriguel to Institute Expropriation Proceedings on Lot Nos. 823, 832, and 834 Registered in the Names of Alicia Panes, Simeon Padilla Sr.,/Naguilian Rural Bank and Eusebio and AdelinaAsprer, Respectively, located at Brgy. Consolacion for the Expansion of the Road right of Way for Don EufemioEriguel Memorial Nat?l H/S (DEFEMNHS), Agoo, La Union.","7","RESOLUTION 253-2014.pdf","21","2014-07-17","0");
INSERT INTO tbl_resolution VALUES("254 - 1999","","P20,000.00 F/A to Brgy. Namboongan, Sto. Tomas, LU, for the building of streetlights","27","RESOLUTION NO.254-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("254 - 2007","","Approve FY 2007 GF SB # 3, of Caba, LU","2","RESOLUTION NO. 254-2007.pdf","21","2007-09-26","0");
INSERT INTO tbl_resolution VALUES("254 - 2008","","Approve Mun Tax Ord # 001-2008, of the SB of Luna, LU, entitled: Supplementing Sec 5A.03 (Imposition of Fees) of Article A, Chap V of Mun Tax Ord # 2004-001, Otherwise Known as the Revised Revenue Code of the Municipality of Luna, LU”","20","RESOLUTION NO. 254-2008.pdf","21","2008-09-04","0");
INSERT INTO tbl_resolution VALUES("254 - 2010","","Approve Ord # 2010-93, of the SB of Pugo, LU, An Ord Creating the Standing Committees in the SB of Pugo, LU & Designating its Officers & Members","10","Resolution 254-2010.pdf","21","2010-09-22","0");
INSERT INTO tbl_resolution VALUES("254 - 2011","","Commend Mr. Mario Eduardo C. Ortega for a job well done for being the Project Director of the Legislative Bldg","18","Resolution 254-2011.pdf","21","2011-07-14","0");
INSERT INTO tbl_resolution VALUES("254 - 2012","","Approve the FY 2012 GF, SB # 4, of Bagulin, La Union.","1","Resolution 254-2012.pdf","21","2012-07-27","0");
INSERT INTO tbl_resolution VALUES("254 - 2013","","Condole w/ the bereaved family of the late Prof. Danilo M. Aragon.","1,2,3,4,6,7,8,9,10,11,12,13","RESOLUTION 254-2013.pdf","21","2013-08-15","0");
INSERT INTO tbl_resolution VALUES("255 - 1999","","P15,000.00 F/A to Brgy. Cabaroan, San Juan, LU, for their electrification program ","27","RESOLUTION NO.255-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("255 - 2007","","Approve FY 2007 GF SB # 1, of Rosario, LU","2","RESOLUTION NO. 255-2007.pdf","21","2007-09-26","0");
INSERT INTO tbl_resolution VALUES("255 - 2008","","Approve Ord # 18, s. 2008 of the SB of Bauang, LU, as emb in Res # 18, s. 2008, entitled: “An Ord Deleting Subsec. 8.3 of Chap XLV of the Mun Revenue Code of 1999 and amending Further Par. (a) and (b) of Sec. 1, Chapter XVII Vehicle Fee Thereof”","20","RESOLUTION NO. 255-2008.pdf","21","2008-09-04","0");
INSERT INTO tbl_resolution VALUES("255 - 2010","","Approve Ord # 6-A, s 2010, of the SB of Rosario, LU, An Ord Creating a Municipal Sports & Physical Dev’t Council, Defining its Duties & Functions & Providing Funds for the Purpose","10","Resolution 255-2010.pdf","21","2010-09-22","0");
INSERT INTO tbl_resolution VALUES("255 - 2011","","Congratulate INC on its 97th Anniversary","3,5,7,9,10,11,12,13,18,19,20,21","Resolution 255-2011.pdf","21","2011-07-21","0");
INSERT INTO tbl_resolution VALUES("255 - 2012","","Approve the FY 2012 GF, SB # 5, of Bagulin, La Union.","1","Resolution 255-2012.pdf","21","2012-07-27","0");
INSERT INTO tbl_resolution VALUES("255 - 2013","","MOA w/ BFAR & ECOFISH re: implementation of the Ecosystem Improved for Sustainable Fisheries in San Fdo City, Bauang, Aringay, Agoo, Sto. Tomas & Rosario.","3","RESOLUTION 255-2013.pdf","21","2013-08-15","0");
INSERT INTO tbl_resolution VALUES("256 - 1999","","P25,000.00 F/A to Brgy. Cabugao, Bacnotan, LU, for the repair and replacement of temporary post of their streetlights","27","RESOLUTION NO.256-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("256 - 2007","","Approve FY 2007 GF SB # 2, of Rosario, LU","2","RESOLUTION NO. 256-2007.pdf","21","2007-09-26","0");
INSERT INTO tbl_resolution VALUES("256 - 2008","","Approve Ord # 055 of the SB of Santol, LU, entitled: “Ord Amending Ord # 2004-038 Otherwise Known as the 2004 Revenue Code Santol, LU, Particularly Chapter VIII – Service Fees – Article B – Municipal Registry Fees of Marriage Fees”","20","RESOLUTION NO. 256-2008.pdf","21","2008-09-04","0");
INSERT INTO tbl_resolution VALUES("256 - 2010","","Approve Mun Ord # 82, s 2010, of the SB of Sudipen, LU, Regulating the Hauling & Conveying of Materials & Goods & Prescribing Penalties Thereof","10","Resolution 256-2010.pdf","21","2010-09-22","0");
INSERT INTO tbl_resolution VALUES("256 - 2011","","Congratulate & commend winners of the Special Olympics Phils – LU chapter during the World Summer Games 2011 at Athens, Greece & set aside P71,000.00 as incentives to the winners","13,18","Resolution 256-2011.pdf","21","2011-07-21","0");
INSERT INTO tbl_resolution VALUES("256 - 2012","","Approve the FY 2012 GF, SB # 4, of Agoo, La Union.","1","Resolution 256-2012.pdf","21","2012-07-27","0");
INSERT INTO tbl_resolution VALUES("256 - 2013","","MOA w/ DSWD re: implementation of the Upgrading of Brgy. Lower Nagyubuyuban Day Care Center, CSF &NadsaagChild Dev’t Center, San Juan","6","RESOLUTION 256-2013.pdf","21","2013-08-15","0");
INSERT INTO tbl_resolution VALUES("257 - 1999","","P20,000.00 F/A to Brgy. Alcala, Luna, LU, for the ceiling of the barangay hall stage","27","RESOLUTION NO.257-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("257 - 2007","","Approve FY 2007 GF SB # 5, of Luna, LU","2","RESOLUTION NO. 257-2007.pdf","21","2007-09-26","0");
INSERT INTO tbl_resolution VALUES("257 - 2008","","Approve Ord # 70, s. 2007 of the SB of Sudipen, LU, entitled: “An Ord Promulgating Rules and Regulations in the Operation of Public Motorized Tricycle and Utility Motorized Single Motor, Providing Penalties for Violations thereof and for Other Purposes”","20","RESOLUTION NO. 257-2008.pdf","21","2008-09-04","0");
INSERT INTO tbl_resolution VALUES("257 - 2010","","Approve Mun Ord # 83, s 2010, of the SB of the Sudipen, LU, Imposing Right of Way Fee at the Access Road of the Municipality Going to the Amburayan River","10","Resolution 257-2010.pdf","21","2010-09-22","0");
INSERT INTO tbl_resolution VALUES("257 - 2011","","Approve the CY 2011 Supplemental AIP of the Prov’l Engineering Office","19","Resolution 257-2011.pdf","21","2011-07-28","0");
INSERT INTO tbl_resolution VALUES("257 - 2012","","Approve the FY 2012 GF, SB # 2, of Luna, La Union.","1","Resolution 257-2012.pdf","21","2012-07-27","0");
INSERT INTO tbl_resolution VALUES("257 - 2013","","Renew Contract of Consultancy Services of Mr. JOSE MACUSI as OPG Consultant on Indigenous People’s Affairs.","1","RESOLUTION 257-2013.pdf","21","2013-08-15","0");
INSERT INTO tbl_resolution VALUES("257 - 2014","2014 - 0244","Submit SB # 2, involving a total appropriation of P25M for the enactment of the required AO","4","RESOLUTION 257-2014.pdf","21","2014-07-17","0");
INSERT INTO tbl_resolution VALUES("258 - 1999","","P20,000.00 F/A to Brgy. Samara, Aringay, LU, for the repair and extension of their barangay hall","27","RESOLUTION NO.258-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("258 - 2007","","Approve FY 2007 GF SB # 4, of San Gabriel, LU","2","RESOLUTION NO. 258-2007.pdf","21","2007-09-26","0");
INSERT INTO tbl_resolution VALUES("258 - 2008","","Approve Ord # 18, s. 2008 of the SB of Burgos, LU, entitled: “An Ord Promulgating Rules and Regulations for the Protection of Children in the Municipality of Burgos, LU”","20","RESOLUTION NO. 258-2008.pdf","21","2008-09-04","0");
INSERT INTO tbl_resolution VALUES("258 - 2010","","Require proof of compliance to Sec. 137, RA 7160, relative to Ord # 153, of the SB of Aringay, LU, Updating Mun Ord # 107, s 1996, Otherwise Known as the Revenue Code of Aringay, LU, Enacted Pursuant to the Provisions of RA # 7160, Otherwise Known as Local Gov’t Code of 1991, & its IRR, & Amending/Repealing Tax Ord of the Municipality Inconsistent to the Provisions Hereof","10","Resolution 258-2010.pdf","21","2010-09-22","0");
INSERT INTO tbl_resolution VALUES("258 - 2011","","Approve FY 2011 GF SB # 3, of Bagulin, LU","9","Resolution 258-2011.pdf","21","2011-07-28","0");
INSERT INTO tbl_resolution VALUES("258 - 2012","","Authorize the Governor to enter into 7th Renewal of Lease Agreement with GLOBE Telecom from July 15, 2012 to July 14, 2015 w/ a monthly rate of P35,128.42.","1","Resolution 258-2012.pdf","21","2012-07-27","0");
INSERT INTO tbl_resolution VALUES("258 - 2013","","Enjoin VMs and SBMs to incorporate in their Comprehensive Environmental Code, their Ecological Solid Waste Mgt Ordinance.","4","RESOLUTION 258-2013.pdf","21","2013-08-15","0");
INSERT INTO tbl_resolution VALUES("259 - 1999","","P15,000.00 F/A to SB of Burgos, LU, for the completion of the multi-purpose center","27","RESOLUTION NO.259-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("259 - 2007","","Approve FY 2007 GF SB # 2, of Bacnotan, LU","2","RESOLUTION NO. 259-2007.pdf","21","2007-09-26","0");
INSERT INTO tbl_resolution VALUES("259 - 2008","","Expressing strong support to HB # 2474, entitled: “An Act Requiring Tobacco Manufacturers to Use a Minimum of 75% Locally Produced Tobacco in the Manufacture of Cigarettes in the Philippines”","20","RESOLUTION NO. 259-2008.pdf","21","2008-09-04","0");
INSERT INTO tbl_resolution VALUES("259 - 2010","","MOA w/ CSC re: Basic Customer Service Training","1,7,12,18,20","Resolution 259-2010.pdf","21","2010-09-30","0");
INSERT INTO tbl_resolution VALUES("259 - 2011","","Approve FY 2011 GF SB # 1, of Santol, LU","9","Resolution 259-2011.pdf","21","2011-07-28","0");
INSERT INTO tbl_resolution VALUES("259 - 2012","","Congratulate winners & coach of the 2012 Phil Nat’l Games & set aside P54,000.00 as their incentives","1,3,5,7,9,10,11,12,13,18,19,20,21","Resolution 259-2012.pdf","21","2012-07-27","0");
INSERT INTO tbl_resolution VALUES("259 - 2013","","MOA w/ BFAR, LGU of Bauang & Brgy Council of ParianOeste re: establishment of a Community-Based Multi-Species Hatchery (CBMSH) &AquasilvicultureTechnodemo Project components of the Phil Nat’l Aquasilviculture Program.","3","RESOLUTION 259-2013.pdf","21","2013-08-22","0");
INSERT INTO tbl_resolution VALUES("260 - 1999","","P20,000.00 F/A to Brgy. Puzon, Rosario, LU, for the rehab of their barangay plaza","27","RESOLUTION NO.260-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("260 - 2007","","Approve FY 2007 GF SB # 2, of Aringay, LU","2","RESOLUTION NO. 260-2007.pdf","21","2007-09-26","0");
INSERT INTO tbl_resolution VALUES("260 - 2008","","Approve Ord # 31, s. 2008 of the SB of Luna, LU, entitled: “An Ord Regulating the Sale of Liquor, Penalizing Violators and for Other Purposes Thereof in the Entire Jurisdiction of the Municipality of Luna, Province of LU”","20","RESOLUTION NO. 260-2008.pdf","21","2008-09-04","0");
INSERT INTO tbl_resolution VALUES("260 - 2010","","Contract of Service w/ Dr. Estern Antonio as Visiting Consultant in OB-GYNE at Balaoan Dist Hosp","1,18","Resolution 260-2010.pdf","21","2010-09-30","0");
INSERT INTO tbl_resolution VALUES("260 - 2011","","Approve Mun Ord # 22-2011, of the SB of San Juan, LU, An Ord Imposing Fine on Bakery Owners Selling Bread w/ no Tag or Label that Bears the Dates of Production & Expiry”","19","Resolution 260-2011.pdf","21","2011-07-28","0");
INSERT INTO tbl_resolution VALUES("260 - 2012","","Approve the proposed programming of RA 7171 Fund amounting P100,851,155.00.","1","Resolution 260-2012.pdf","21","2012-08-02","0");
INSERT INTO tbl_resolution VALUES("260 - 2013","","Approve the FY 2013 GF AB, of Bacnotan, La Union.","11","RESOLUTION 260-2013.pdf","21","2013-08-22","0");
INSERT INTO tbl_resolution VALUES("261 - 1999","","P20,000.00 F/A to Brgy. Puzon, Rosario, LU, for the rehab of their barangay plaza","27","RESOLUTION NO.261-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("261 - 2007","","Approve FY 2007 GF SB # 6, of Pugo, LU","2","RESOLUTION NO. 261-2007.pdf","21","2007-09-26","0");
INSERT INTO tbl_resolution VALUES("261 - 2008","","Approve the transfer of P254,112 from the appropriated salary of Supervising Administrative Officer, Item # 3 of the Office of the Provincial Agriculturist to the Supervising Agriculturist position","31","RESOLUTION NO. 261-2008.pdf","21","2008-09-04","0");
INSERT INTO tbl_resolution VALUES("261 - 2010","","Approve Mun Ord # 13-2010, of the SB of San Juan, LU, An Ord Deferring the Approval of Any Dev’t Along the San Fernando By-Pass Rd in Brgy. Panicsican, Urbiztondo&Naguituban","10","Resolution 261-2010.pdf","21","2010-09-30","0");
INSERT INTO tbl_resolution VALUES("261 - 2011","","Approve Mun Ord # 37, s 2011, of the SB of Burgos, LU, An Ord Appropriating P1,000.00 per Month as Honoraria for the President of the OSCA of the Mun of Burgos, LU”","5","Resolution 261-2011.pdf","21","2011-07-28","0");
INSERT INTO tbl_resolution VALUES("261 - 2012","","Approve the FY 2012 GF SB # 1, of CSF","1","Resolution 261-2012.pdf","21","2012-08-02","0");
INSERT INTO tbl_resolution VALUES("261 - 2013","","Approve Res # 19-2013, of the SB of Burgos, LU, “Re-organizing the 2013-2016 Standing Committees of the SB of Burgos, LU”","10","RESOLUTION 261-2013.pdf","21","2013-08-22","0");
INSERT INTO tbl_resolution VALUES("262 - 1999","","P30,000.00 F/A to the Eastern Poblacion Association, Aringay, LU, for the fencing and lighting of the auditorium","27","RESOLUTION NO.262-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("262 - 2007","","Approve FY 2007 GF SB # 3, of Agoo, LU","2","RESOLUTION NO. 262-2007.pdf","21","2007-09-26","0");
INSERT INTO tbl_resolution VALUES("262 - 2008","","Approve the salary adjustment of the Provincial Health Officer I position of the Provincial Health Office from Step 1 to Step 5 of SG 25 from P314,436 to P347,064 per annum ","31","RESOLUTION NO. 262-2008.pdf","21","2008-09-04","0");
INSERT INTO tbl_resolution VALUES("262 - 2010","","Approve Mun Ord # 11-2010, of the SB of San Juan, LU, An Ord Prohibiting the Entry of Bicycles, Tricycles, Motorcycles, Motored Vehicles and the Like w/n the Premises of the Public Market During Market Days (Mondays & Fridays)","10","Resolution 262-2010.pdf","21","2010-09-30","0");
INSERT INTO tbl_resolution VALUES("262 - 2011","","Condole w/ Judge Eduardo B. Badicao, MTC, Agoo","20","Resolution 262-2011.pdf","21","2011-07-28","0");
INSERT INTO tbl_resolution VALUES("262 - 2012","","Approve the FY 2012 GF SB # 1, of Burgos, La Union.","1","Resolution 262-2012.pdf","21","2012-08-02","0");
INSERT INTO tbl_resolution VALUES("262 - 2013","","Approve Ord # 17, s 2013, of the SB of Naguilian, LU “An Ord to Declare Rosal Known Scientifically as Gardenia Jasminoides as the Official Flower of the Mun of Naguilian, LU”","10","RESOLUTION 262-2013.pdf","21","2013-08-22","0");
INSERT INTO tbl_resolution VALUES("263 - 1999","","P5,000.00 F/A to Brgy. Tay-ac, Rosario, LU, for the improvement of their health center","27","RESOLUTION NO.263-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("263 - 2007","","Approve FY 2007 GF SB # 2, of Bangar, LU","2","RESOLUTION NO. 263-2007.pdf","21","2007-09-26","0");
INSERT INTO tbl_resolution VALUES("263 - 2008","","Support Res # 12-2008, of the SO of the Province of Cagayan, entitled: “A Res Urging the Congress of the Republic of the Philippines to Exclude the Senior Citizens from the coverage of the EVAT (RA 9337) and to Accordingly Repeal or Amend the Same and the Expanded Senior Citizens Act of 2003 (RA 9257) to give more effect to the Social Justice of the State in the Favor, and Corollarily Urging the Other SP in the Entire Country to Endorse the Herein Res”","31","RESOLUTION NO. 263-2008.pdf","21","2008-09-04","0");
INSERT INTO tbl_resolution VALUES("263 - 2010","","Enjoin City & Mun Mayors to establish their City/Municipal Migrant Desk & to Designate/Appoint a Desk Officer as a Focal Person in Advancing the Welfare of OFWs","9,10,20","Resolution 263-2010.pdf","21","2010-09-30","0");
INSERT INTO tbl_resolution VALUES("263 - 2011","","Request the Gov. to allocate  assign a common office for all the Consultants in the Prov’l Capitol","18","Resolution 263-2011.pdf","21","2011-07-28","0");
INSERT INTO tbl_resolution VALUES("263 - 2012","","Approve the FY 2012 GF SB # 2, of Tubao, La Union.","1","Resolution 263-2012.pdf","21","2012-08-02","0");
INSERT INTO tbl_resolution VALUES("263 - 2013","","Approve the FY 2013 GF SB # 1, of Rosario, La Union.","11","RESOLUTION 263-2013.pdf","21","2013-08-22","0");
INSERT INTO tbl_resolution VALUES("264 - 1999","","P10,000.00 F/A to Brgy. Ilocano, Sudipen, LU, for the continuation of their barangay hall","27","RESOLUTION NO.264-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("264 - 2007","","Approve FY 2007 GF SB # 6, of the City of San Fernando, LU","2","RESOLUTION NO. 264-2007.pdf","21","2007-09-26","0");
INSERT INTO tbl_resolution VALUES("264 - 2008","","Condole w/ BK Arvin Francis Ordono, Antonino, Balaoan, LU","1,2,3,5,7,12,18,19,20,21,31,32,33","RESOLUTION NO. 264-2008.pdf","21","2008-09-04","0");
INSERT INTO tbl_resolution VALUES("264 - 2010","","Approve the Annual Investment Plan for CY 2011","1","Resolution 264-2010.pdf","21","2010-09-30","0");
INSERT INTO tbl_resolution VALUES("264 - 2011","","MOA w/ Hon. Emerenciana A. de Jesus, GABRIELA Women’s Party pertaining to the allocation of P200,000.00 from her PDAF as Medical Assistance Fund for indigent patients in Naguilian District Hospital & Northern LU (Balaoan) District Hospital","18","Resolution 264-2011.pdf","21","2011-08-04","0");
INSERT INTO tbl_resolution VALUES("264 - 2012","","Congratulate & commend Atty. Maria Paz Rivera-Basangan for placing 9th in the Real Estate Appraiser Licensure Exam.","9","Resolution 264-2012.pdf","21","2012-08-02","0");
INSERT INTO tbl_resolution VALUES("264 - 2013","","Return for proper amendment, Ord # 1, s 2013, of the SB of Sto. Tomas, LU, “An Ord Enacting the Comprehensive Ecological Mgt Ord of the Mun of Sto. Tomas, LU & Providing Penalties to Violations Thereof”","4","RESOLUTION 264-2013.pdf","21","2013-08-22","0");
INSERT INTO tbl_resolution VALUES("265 - 1999","","P5,000.00 F/A to the South Central School,, San Fernando,  LU, for the landscaping of their school","27","RESOLUTION NO.265-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("265 - 2007","","Approve FY 2007 GF SB # 4, of Sudipen, LU","2","RESOLUTION NO. 265-2007.pdf","21","2007-09-26","0");
INSERT INTO tbl_resolution VALUES("265 - 2008","","Condole w/ BC Fredelino Oropilla, Baroro, Bacnotan, LU","1,2,3,5,7,12,18,19,20,21,31,32,33","RESOLUTION NO. 265-2008.pdf","21","2008-09-04","0");
INSERT INTO tbl_resolution VALUES("265 - 2010","","Approve FY 2010 GF SB # 4, Balaoan, LU","1","Resolution 265-2010.pdf","21","2010-10-07","0");
INSERT INTO tbl_resolution VALUES("265 - 2011","","Deed of Sale w/ various lot owners by Mr. Jesus Nebres, pertaining to the portion of their property at Brgy. Baccuit Sur, Bauang, LU, as part of the prov’l rd.","20","Resolution 265-2011.pdf","21","2011-08-04","0");
INSERT INTO tbl_resolution VALUES("265 - 2012","","Recommend to DepEd Sec Armin Luistro, for the retention of Dr. Edna Leal, as the Schools Division Superintendent ","1,7,9,10,11,12,13,18","Resolution 265-2012.pdf","21","2012-08-02","0");
INSERT INTO tbl_resolution VALUES("265 - 2013","","Return for amendment/correction, Ord # 2, s 2013, of the SB of Sto. Tomas, LU, “An Ord Enacting the Environmental Code of the Mun of Sto. Tomas, LU”","4","RESOLUTION 265-2013.pdf","21","2013-08-22","0");
INSERT INTO tbl_resolution VALUES("265 - 2014","2014 - 0190","Mun Ord # 07-2014, An Ord Increasing the Number of Tricycle Franchise to 1000 Units, as Amended Furthermore.","4","RESOLUTION 265-2014.pdf","21","2014-07-24","0");
INSERT INTO tbl_resolution VALUES("266 - 1999","","P10,000.00 F/A to Brgy. Gonzales, Tubao, LU, for their streetlight project","27","RESOLUTION NO.266-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("266 - 2007","","Approve FY 2007 GF SB # 3, of Burgos, LU","2","RESOLUTION NO. 266-2007.pdf","21","2007-09-26","0");
INSERT INTO tbl_resolution VALUES("266 - 2008","","Realign the amount of P3,550,000 to the following programs/projects:\n\na.	Barangay Assistance Program            P2,500,000\nb.	Public Bldgs/Structures                             400,000\nImprovement and Constr.\nc.	Operation Tulong to Barangay                 650,000\n& other Social Services\n","20","RESOLUTION NO. 266-2008.pdf","21","2008-09-11","0");
INSERT INTO tbl_resolution VALUES("266 - 2010","","Approve FY 2010 GF SB # 5, of Pugo, LU","1","Resolution 266-2010.pdf","21","2010-10-07","0");
INSERT INTO tbl_resolution VALUES("266 - 2011","","Adjust SG of Rogelia C. Bacalzo& Daniel D. Perez, Admin Aide III & Cook I, respectively at Naguilian District Hospital","18","Resolution 266-2011.pdf","21","2011-08-04","0");
INSERT INTO tbl_resolution VALUES("266 - 2012","","Authorize the Records Officer of PGSO to testify on the fact of loss of the Title of the lot covering the Sagayad Resettlement Project, CSF.","1","Resolution 266-2012.pdf","21","2012-08-09","0");
INSERT INTO tbl_resolution VALUES("266 - 2013","","Approve the Strategic Development Thrust, CY 2013-2017.","11","RESOLUTION 266-2013.pdf","21","2013-08-22","0");
INSERT INTO tbl_resolution VALUES("266 - 2014","2014 - 0217","Mun Ord # 06-2014, An Ord Designating the Alluvium in Sta. Rita Central and Sta. Rita West, Agoo, LU as an Eco-Tourism Park to be Called the Agoo Eco-Fun World and Prescribing Rates and Regulations of its Operation.","4","RESOLUTION 266-2014.pdf","21","2014-07-24","0");
INSERT INTO tbl_resolution VALUES("267 - 1999","","Enough amount as F/A to the Rosario Central School Teachers Asso., Rosario, LU, for the completion of the perimeter fence","27","RESOLUTION NO.267-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("267 - 2007","","Approve FY 2007 GFSb # 1, of Sto. Tomas, LU","2","RESOLUTION NO. 267-2007.pdf","21","2007-09-26","0");
INSERT INTO tbl_resolution VALUES("267 - 2008","","Approve FY 2008 GF SB # 4, of Bagulin, LU ","31","RESOLUTION NO. 267-2008.pdf","21","2008-09-11","0");
INSERT INTO tbl_resolution VALUES("267 - 2010","","Approve FY 2010 GF SB # 6, of Pugo, LU","1","Resolution 267-2010.pdf","21","2010-10-07","0");
INSERT INTO tbl_resolution VALUES("267 - 2011","","Contract of Agreement w/ Dr. Raol B. Paculan as Visiting Consultant in OB Gyne at Rosario District Hospital","18","Resolution 267-2011.pdf","21","2011-08-04","0");
INSERT INTO tbl_resolution VALUES("267 - 2012","","Approve EO # 09, s 2012, of the MC of Pugo, LU, “An EO to Enforce Pre-emptive Evacuation of People, Particularly those Living Near Danger Zones Such as Riverbanks & Other Waterways & Mt. Slopes”","10","Resolution 267-2012.pdf","21","2012-08-09","0");
INSERT INTO tbl_resolution VALUES("267 - 2013","","Enjoin all Mun Mayors, being the Chairman of the Local Health Board (LHB), to strictly enforce RA No. 7883, Otherwise known as An Act Granting Benefits & Incentives to Accredited BHWs & for Other Purposes &its IRR","4","RESOLUTION 267-2013.pdf","21","2013-08-22","0");
INSERT INTO tbl_resolution VALUES("268 - 1999","","P15,000.00 F/A to Brgy. Tococ, Sto. Tomas, LU, for the diking and rip-rapping of the Manacliw River","27","RESOLUTION NO.268-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("268 - 2007","","Approve FY 2007 GF SB # 4, of Bagulin, LU","2","RESOLUTION NO. 268-2007.pdf","21","2007-09-26","0");
INSERT INTO tbl_resolution VALUES("268 - 2008","","Approve FY 2008 GF SB # 1, of Burgos, LU","31","RESOLUTION NO. 268-2008.pdf","21","2008-09-11","0");
INSERT INTO tbl_resolution VALUES("268 - 2010","","Approve FY 2010 GF SB # 7, of Pugo, LU","1","Resolution 268-2010.pdf","21","2010-10-07","0");
INSERT INTO tbl_resolution VALUES("268 - 2011","","Approve the Mun Revenue Code of the Mun of Caba, LU","20","Resolution 268-2011.pdf","21","2011-08-04","0");
INSERT INTO tbl_resolution VALUES("268 - 2012","","Declare the Province under a State of Calamity due to monsoon rains.","11","Resolution 268-2012.pdf","21","2012-08-09","0");
INSERT INTO tbl_resolution VALUES("268 - 2013","","Appeal to Cong. Eriguel to cause the review of RA No. 7883, otherwise known as the BHW & Incentives Act of 1995 & for Other Purposes.","4","RESOLUTION 268-2013.pdf","21","2013-08-22","0");
INSERT INTO tbl_resolution VALUES("269 - 1999","","P20,000.00 F/A to Brgy. Sta. Maria, Agoo, LU, for the construction of footbridge","27","RESOLUTION NO.269-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("269 - 2007","","Approve FY 2007 GF SB # 2, of Naguilian, LU","2","RESOLUTION NO. 269-2007.pdf","21","2007-09-26","0");
INSERT INTO tbl_resolution VALUES("269 - 2008","","Approve FY 2008 GF SB # 4, of Bauang, LU ","31","RESOLUTION NO. 269-2008.pdf","21","2008-09-11","0");
INSERT INTO tbl_resolution VALUES("269 - 2010","","Approve Mun Ord # 14-2010, of the SB of San Juan, LU, “An Ord Enjoining All Municipal Gov’t Officials & Employees to Attend Flag Ceremony” ","10","Resolution 269-2010.pdf","21","2010-10-07","0");
INSERT INTO tbl_resolution VALUES("269 - 2011","","Request BIR – RO I to furnish the SP listing of the Top 10 Individual & Corporate Taxpayers in the Province for CY 2010","9","Resolution 269-2011.pdf","21","2011-08-04","0");
INSERT INTO tbl_resolution VALUES("269 - 2012","","Congratulate & commend Cesar Higoy, Jr., from Luna, LU, as finalist to the 2012 Ten Outstanding Students of the Phils (TOSP) & for graduating Summa Cum Laude, SLU (BSCE)","21","Resolution 269-2012.pdf","21","2012-08-09","0");
INSERT INTO tbl_resolution VALUES("269 - 2013","","Condole w/ the bereaved family of SBM Rodolfo V. Mique, Balaoan.","2,3,4,5,6,7,8,9,10,11,12,13","RESOLUTION 269-2013.pdf","21","2013-08-22","0");
INSERT INTO tbl_resolution VALUES("270 - 1999","","P20,000.00 F/A to Brgy. Central East, Bauang, LU, for the concrete pavement of Callejon St.","27","RESOLUTION NO.270-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("270 - 2007","","Approve FY 2007 GF SB # 7, of Bauang, LU","2","RESOLUTION NO. 270-2007.pdf","21","2007-09-26","0");
INSERT INTO tbl_resolution VALUES("270 - 2008","","Approve FY 2008 GF SB # 2, of Rosario, LU ","31","RESOLUTION NO. 270-2008.pdf","21","2008-09-11","0");
INSERT INTO tbl_resolution VALUES("270 - 2010","","Approve Ord # 28-2010, of the SB of Burgos, LU, Amending Sec 6, Letter C of Mun Ord # 25-2009 & Other Purposes as Amended","10","Resolution 270-2010.pdf","21","2010-10-07","0");
INSERT INTO tbl_resolution VALUES("270 - 2011","","Return to the MC of Bangar, LU, its Ord # 2011-001, emb in Res # 2011-073, “Mun Cemetery Ord of Bangar, LU, & Prescribing the Rules & Regulations in the Use & Operation of the Same”","7","Resolution 270-2011.pdf","21","2011-08-04","0");
INSERT INTO tbl_resolution VALUES("270 - 2012","","Congratulate & commend SephiMarzLiclican, of Payocpoc Sur, Bauang, LU, for winning Bronze Medal during the 2012 International Math Competition at Singapore","21","Resolution 270-2012.pdf","21","2012-08-09","0");
INSERT INTO tbl_resolution VALUES("270 - 2013","","Congratulate & commend Dr. Ma. Theresa M. Bautista, English Dept, BNHS for being adjudged as 1 of the 2013 Metrobank Foundation Outstanding Teachers in the Phils","6","RESOLUTION 270-2013.pdf","21","2013-08-29","0");
INSERT INTO tbl_resolution VALUES("271 - 1999","","P15,000.00 F/A to Brgy. Tagudtud, Bagulin, LU, for the concreting of the barangay road","27","RESOLUTION NO.271-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("271 - 2007","","Approve FY 2007 GF SB # 8, of Bauang, LU","2","RESOLUTION NO. 271-2007.pdf","21","2007-09-26","0");
INSERT INTO tbl_resolution VALUES("271 - 2008","","Approve FY 2008 GF SB # 3, of Agoo, LU ","31","RESOLUTION NO. 271-2008.pdf","21","2008-09-11","0");
INSERT INTO tbl_resolution VALUES("271 - 2010","","Approve Ord # 3-2009, of the SB of San Gabriel, LU, “An Ord Collecting from the MLWUD the share of the Mun of San Gabriel, LU in the Gross Sales or Receipts Derived from the Utilization & Sale of Water Coming from the Lon-oy Spring at Lon-oy, San Gabriel, LU","10","Resolution 271-2010.pdf","21","2010-10-07","0");
INSERT INTO tbl_resolution VALUES("271 - 2011","","Express deep appreciation to Hon. Emerenciana A. de Jesus, representing GABRIELA Womens Party, for her F/A of P200,000.00 as medical assistance fund for indigent patients of LU ","10","Resolution 271-2011.pdf","21","2011-08-04","0");
INSERT INTO tbl_resolution VALUES("271 - 2012","","Approve the FY 2012 GF AB of Aringay, La Union.","1","Resolution 271-2012.pdf","21","2012-08-16","0");
INSERT INTO tbl_resolution VALUES("271 - 2013","","P10,000 cash incentive to Dr. Ma. Theresa M. Bautista.","1","RESOLUTION 271-2013.pdf","21","2013-08-29","0");
INSERT INTO tbl_resolution VALUES("272 - 1999","","P15,000.00 F/A to Brgy. San Fermin, Caba, LU, for the construction of a day care center","27","RESOLUTION NO.272-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("272 - 2007","","Second renewal of Lease Agreement with GLOBE Telecommunication for a lease period from July 15, 2007 to July 14, 2008 with a monthly rate of P29,031.75","31","RESOLUTION NO. 272-2007.pdf","21","2007-10-04","0");
INSERT INTO tbl_resolution VALUES("272 - 2008","","Approve FY 2008 GF SB # 6, of Tubao, LU ","31","RESOLUTION NO. 272-2008.pdf","21","2008-09-11","0");
INSERT INTO tbl_resolution VALUES("272 - 2010","","Return Mun Ord # 17-2010, of the SB of Agoo, LU, “An Ord Prohibiting Minors to Smoke Cigarette & Any Tobacco Related Substance w/n the Territorial Jurisdiction of the Mun of Agoo, LU, & Providing Penalty for Violation Thereof","10","Resolution 272 -2010.pdf","21","2010-10-07","0");
INSERT INTO tbl_resolution VALUES("272 - 2011","","Felicitate Gov. Manuel C. Ortega in his 66th Birthday Anniversary","20","Resolution 272-2011.pdf","21","2011-08-04","0");
INSERT INTO tbl_resolution VALUES("272 - 2012","","Approve the FY 2012 GF SB # 2, of Pugo, La Union.","1","Resolution 272-2012.pdf","21","2012-08-16","0");
INSERT INTO tbl_resolution VALUES("272 - 2013","","Approve SB # 2, involving P11 M.","1","RESOLUTION 272-2013.pdf","21","2013-08-29","0");
INSERT INTO tbl_resolution VALUES("273 - 1999","","P15,000.00 F/A to Brgy. Bussaoit, Bacnotan, LU, for the construction of concrete electrical posts","27","RESOLUTION NO.273-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("273 - 2007","","Request the Members and Volunteers of the Provincial/Municipal/Barangay Disaster Coordinating Council to be duly identified, organized, registered and trained for a more effective and efficient Disaster Management","5","RESOLUTION NO. 273-2007.pdf","21","2007-10-11","0");
INSERT INTO tbl_resolution VALUES("273 - 2008","","Approve FY 2008 GF SB # 7, of Pugo, LU ","31","RESOLUTION NO. 273-2008.pdf","21","2008-09-11","0");
INSERT INTO tbl_resolution VALUES("273 - 2010","","Return Mun Ord # 7, s 2010 of the SB of Rosario, LU, An Ord Adding Sec 239-A to Art 53 of Mun Revenue Code of Rosario, LU, & require Proof of Certificate of Public Hearing","10","Resolution 273-2010.pdf","21","2010-10-07","0");
INSERT INTO tbl_resolution VALUES("273 - 2011","","State of Calamity due to Dengue","18","Resolution 273-2011.pdf","21","2011-08-11","0");
INSERT INTO tbl_resolution VALUES("273 - 2012","","Approve the FY 2012 GF SB # 3, of Balaoan, La Union.","1","Resolution 273-2012.pdf","21","2012-08-16","0");
INSERT INTO tbl_resolution VALUES("273 - 2013","","Approve the FY 2013 GF SB # 2, of San Gabriel, La Union.","1","RESOLUTION 273-2013.pdf","21","2013-08-29","0");
INSERT INTO tbl_resolution VALUES("274 - 1999","","P50,000.00 F/A to Brgy. Ma. Cristina West, Bangar, LU, for the continuation of the construction of their multi-purpose hall","27","RESOLUTION NO.274-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("274 - 2007","","Request the Presidential Commission on Good Gov’t (PCGG) for the right to use by the PGLU the sequestered presidential rest house and its facilities with an area of 19,742 sq.m. located at Sta. Rita Central, Agoo, LU","20","RESOLUTION NO. 274-2007.pdf","21","2007-10-11","0");
INSERT INTO tbl_resolution VALUES("274 - 2008","","Approve FY 2008 GF SB # 4, of Sudipen, LU ","31","RESOLUTION NO. 274-2008.pdf","21","2008-09-11","0");
INSERT INTO tbl_resolution VALUES("274 - 2010","","Contract of Service w/ Dr. Melissa I. Diaz, as Visiting Consultant on Pediatrics at Bacnotan Dist Hosp","1,18","Resolution 274-2010.pdf","21","2010-10-07","0");
INSERT INTO tbl_resolution VALUES("274 - 2011","","MOA W/ DMMMSU, Cong. Victor Ortega, & LU Beekeepers Dev’t Coop (LUBDCO) relative to the full swing operation of the Management Committee/TWG of the LU Honey Processing & Mktg. Center at Bo. Raois, Bacnotan","1","Resolution 274-2011.pdf","21","2011-08-11","0");
INSERT INTO tbl_resolution VALUES("274 - 2012","","Approve the FY 2012 GF SB # 3, of Tubao, La Union.","1","Resolution 274-2012.pdf","21","2012-08-16","0");
INSERT INTO tbl_resolution VALUES("274 - 2013","","Approve the FY 2013 GF SB # 2, of Sudipen, La Union.","1","RESOLUTION 274-2013.pdf","21","2013-08-29","0");
INSERT INTO tbl_resolution VALUES("274 - 2014","2014 - 0211","Ord # 2014-113, Amending Certain Provisions of Mun Ord # 2013-106, Otherwise Known as the Health & Sanitation Code of Pugo, La Union.","9","RESOLUTION 274-2014.pdf","21","2014-07-31","0");
INSERT INTO tbl_resolution VALUES("275 - 1999","","Condole w/ BC Rey Dalwi, Brgy. Wallayan, Bagulin","9","RESOLUTION NO.275-99.pdf","21","1999-05-20","0");
INSERT INTO tbl_resolution VALUES("275 - 2007","","Renew the Contract of Service of Ms. Marife Mayo as Asst. Prov’l Early Childhood Care &Dev’t Officer of the province from Oct 4, 2007 to Oct 3, 2008 w/ a monthly salary equivalent to SG 11 which is P10,535.00","21","RESOLUTION NO. 275-2007.pdf","21","2007-10-11","0");
INSERT INTO tbl_resolution VALUES("275 - 2008","","Approve FY 2008 GF SB # 6, of Pugo, LU ","31","RESOLUTION NO. 275-2008.pdf","21","2008-09-11","0");
INSERT INTO tbl_resolution VALUES("275 - 2011","","LU Nat’l Highway Greening & Beautification Program","7","Resolution 275-2011.pdf","21","2011-08-11","0");
INSERT INTO tbl_resolution VALUES("275 - 2012","","Condole w/ the bereaved family of the late Mrs. Maria B. Lictao, Population Worker I, PPO.","1,3,5,7,9,10,11,12,13,18,19,20,21","Resolution 275-2012.pdf","21","2012-08-16","0");
INSERT INTO tbl_resolution VALUES("275 - 2013","","Approve Res # 001-2013, of the SB of Bangar, LU, “Adopting the IRP of the SB of Bangar, LU”","10","RESOLUTION 275-2013.pdf","21","2013-08-29","0");
INSERT INTO tbl_resolution VALUES("275 - 2014","2014 - 0212","Ord # 2014-114, Creating and Maintaining a PHILHEALTH TRUST Fund from the Proceeds of the Primary Care Benefit (PCB I) to be Provided by the PHILHEALTH Corp for the Qualified Beneficiaries and Dependents Enrolled under the Sponsored Program (SP), Overseas Workers Program (OWP), and Organized Groups (OG) Enlisted by the RHU","9","RESOLUTION 275-2014.pdf","21","2014-07-31","0");
INSERT INTO tbl_resolution VALUES("276 - 1999","","Support VFA","17","RESOLUTION NO.276-99.pdf","21","1999-05-27","0");
INSERT INTO tbl_resolution VALUES("276 - 2007","","Contract of Consultancy Service, with Mr. Edgar BellonFerido of Brgy. Blas, Bangar, LU, as Governor’s Consultant for Local Revenue Dev’t w/ a Consultancy Fee of P20,000 per month, effective Oct 1, 2007","5","RESOLUTION NO. 276-2007.pdf","21","2007-10-11","0");
INSERT INTO tbl_resolution VALUES("276 - 2008","","Approve Ord # 61, s. 2008 of the SB of Santol, LU, entitled: “Ord Providing for a Comprehensive Policy for Children’s Welfare, Protection and Dev’t and for Other Purposes in the Municipality of Santol, LU","20","RESOLUTION NO. 276-2008.pdf","21","2008-09-11","0");
INSERT INTO tbl_resolution VALUES("276 - 2010","","Approve EO # 01, s 2010, of Mayor RufinoFontanilla, Bacnotan, LU, Creating the Municipal Planning Team (MPT) & Technical Working Group (TWG) of Bacnotan, LU ","10","Resolution 276-2010.pdf","21","2010-10-14","0");
INSERT INTO tbl_resolution VALUES("276 - 2011","","Approve FY 2011 GF SB # 3, of Agoo, LU","1","Resolution 276-2011.pdf","21","2011-08-11","0");
INSERT INTO tbl_resolution VALUES("276 - 2012","","Approve Ord # 7, s 2012, of the SB of Bauang, LU, “An Ord Creating the Bauang Mun Housing Board, Defining its Clearinghouse Functions Pursuant to EO # 708, s 2008, & for All Other Purposes","7","Resolution 276-2012.pdf","21","2012-08-16","0");
INSERT INTO tbl_resolution VALUES("276 - 2013","","Approve Res # 24, s 2013, of the SB of Balaoan, La Union, “Naming the Gumamela as the Official Mun Flower of the Mun of Balaoan, La Union”","10","RESOLUTION 276-2013.pdf","21","2013-08-29","0");
INSERT INTO tbl_resolution VALUES("277 - 1999","","Request Financial Advisers to submit guidelines for the disbursement of funds","28","RESOLUTION NO.277-99.pdf","21","1999-05-27","0");
INSERT INTO tbl_resolution VALUES("277 - 2007","","Approve Ord # 2007-85, of the SB of Pugo, LU, entitled: “An Ord Amending Ord # 98-06, Regulating the Operation of Disco Pubs, Sing Along Bars, Night Clubs, Beerhouses & Restaurants/Eateries & Imposing Penalties for Violation Thereof”","20","RESOLUTION NO. 277-2007.pdf","21","2007-10-11","0");
INSERT INTO tbl_resolution VALUES("277 - 2008","","Approve Ord # 2008-12, s. 2008 of the SB of Naguilian, LU, entitled: “An Ord Prescribing a P10.00 Minimum Fare on Motorized Tricycles for Hire Operating Within the Territorial Jurisdiction of the Municipality of Naguilian, LU”","20","RESOLUTION NO. 277-2008.pdf","21","2008-09-11","0");
INSERT INTO tbl_resolution VALUES("277 - 2010","","Approve Mun Ord # 19-2010, of the SB of Agoo, LU, An Ord Enacting the Rules Covering Anti-Narcotic & Drug Abuse in the Mun of Agoo","10","Resolution 277-2010.pdf","21","2010-10-14","0");
INSERT INTO tbl_resolution VALUES("277 - 2011","","Approve FY 2011 GF SB # 3, of Sudipen, LU","1","Resolution 277-2011.pdf","21","2011-08-11","0");
INSERT INTO tbl_resolution VALUES("277 - 2012","","Approve Mun Ord # 01, s 2012, of the SB of Balaoan, LU, “An Ord Creating the Balaoan Mun Housing Board, Defining its Clearing House Functions Pursuant to EO # 708, s 2008, & For Other Purposes”","7","Resolution 277-2012.pdf","21","2012-08-16","0");
INSERT INTO tbl_resolution VALUES("277 - 2013","","Approve Res # 25, s 2013, of the SB of Balaoan, La Union, “Naming the Phil Mahogany as the Official Mun Tree of the Mun of Balaoan, La Union”","10","RESOLUTION 277-2013.pdf","21","2013-08-29","0");
INSERT INTO tbl_resolution VALUES("278  -2010","","Approve Mun Ord # 20-2010, of the SB of Agoo, LU, An Ord Amending Sec 1(7) of Mun Ord # 06A-05 & Sec 31 & 85 of the Mun Ord # 395-97, an Ord Providing the Management, Protection, Conservation & Dev’t of the Coastal & Marine Resources as Well as Regulating the Fisheries & Fishing Enterprises in the Mun of Agoo, LU & for Other Purposes Mandated in Ra 7160 & RA 8550, as amended ","10","Resolution 278-2010.pdf","21","2010-10-14","0");
INSERT INTO tbl_resolution VALUES("278 - 1999","","Set aside P50,000.00 for the First Kidney Transplant Operation Project in La Union","27","RESOLUTION NO.278-99.pdf","21","1999-05-27","0");
INSERT INTO tbl_resolution VALUES("278 - 2007","","Return Ord # 142, s. 2007, of the SB of Aringay, LU, entitled: “An Ord Promulgating the Rules & Regulations for the Protection & Welfare of Senior Citizens in the Mun of Aringay”","20","RESOLUTION NO. 278-2007.pdf","21","2007-10-11","0");
INSERT INTO tbl_resolution VALUES("278 - 2008","","Approve Ord # 62, s. 2008 of the SB of Santol, LU, entitled: “Ord Providing Fare Increase Along Balaoan-Lettac Norte Tricycle Route (BALENORTA)”","20","RESOLUTION NO. 278-2008.pdf","21","2008-09-11","0");
INSERT INTO tbl_resolution VALUES("278 - 2011","","Approve FY 2011 GF SB # 3, of Sudipen, LU","10","Resolution 278-2011.pdf","21","2011-08-11","0");
INSERT INTO tbl_resolution VALUES("278 - 2012","","Return Ord # 02, s 2011 of the SB of Sto. Tomas, LU, “An Ord Regulating the Deposition of Pulverized Materials Such as Ores, Coal, Gypsum, Silica, Betonies & Other Mineral Components That are Utilized by All Industries Operating w/n the Mun of Sto. Tomas, LU","1","Resolution 278-2012.pdf","21","2012-08-16","0");
INSERT INTO tbl_resolution VALUES("278 - 2013","","Return Ord # 18, s 2013, of the SB of Naguilian, LU, “An Ord Requiring Gram Staining on Guest Relation Officer (GRO) Employed in Videoke Establishments & Sing-Along Bars w/n the Territorial Jurisdiction of the Mun of Naguilian, LU, Providing Penalties for Non-Compliance & Appropriating Funds for the Purpose”","10","RESOLUTION 278-2013.pdf","21","2013-08-29","0");
INSERT INTO tbl_resolution VALUES("278 - 2014","2014 - 0176","Ord # 2014-111, An Ord Adopting the Implementation of the Nat?l Plan of Action Plan for Infant and Young Child Feeding in the Mun of Pugo, La Union.","5","RESOLUTION 278-2014.pdf","21","2014-07-31","0");
INSERT INTO tbl_resolution VALUES("279 - 1999","","Condole w/ BC Virgilio Estoque, Brgy. Pangao-aoan, Aringay","26","RESOLUTION NO.279-99.pdf","21","1999-05-27","0");
INSERT INTO tbl_resolution VALUES("279 - 2007","","MOA w/ the University of Cordilleras (UC), Baguio City, pertaining to the On-the-Job (OJT)/Practicum of UC nursing students at the Caba Medicare and Community Hospital (CMCH), Caba, La Union for the SY 2007-2008","31","RESOLUTION NO. 279-2007.pdf","21","2007-10-11","0");
INSERT INTO tbl_resolution VALUES("279 - 2008","","Approve Mun Ord # 15-2008 of the SB of San Juan, LU, entitled: “An Ordinance Recognizing the Rights of the Kabataan in the Decision Making and Participating in Local Governance”","20","RESOLUTION NO. 279-2008.pdf","21","2008-11-09","0");
INSERT INTO tbl_resolution VALUES("279 - 2010","","Approve Mun Ord # 36-2010, of the SB of Luna, LU, An Ord to Establish the Municipal Cemetery in the Mun of Luna, Prov of La Union & Prescribing Rules in the Use & Operation of the Same","10","Resolution 279-2010.pdf","21","2010-10-14","0");
INSERT INTO tbl_resolution VALUES("279 - 2011","","Return Ord # 2011-003, of the SB of Bangar, LU, “An Ord Prescribing the Schedule of computer for Minors w/n the Mun of Bangar, LU”","19","Resolution 279-2011.pdf","21","2011-08-11","0");
INSERT INTO tbl_resolution VALUES("279 - 2012","","Negotiate & Contract a Loan w/ LBP to finance the repair &rehab of the La Union Admin & Comm’l Bldg","1,18","Resolution 279-2012.pdf","21","2012-08-16","0");
INSERT INTO tbl_resolution VALUES("279 - 2013","","MOA w/ LBP re: new features of the LBP Enhanced Livelihood Loan Facility","1","RESOLUTION 279-2013.pdf","21","2013-08-29","0");
INSERT INTO tbl_resolution VALUES("279 - 2014","2014 - 0186","Mun Ord # 07-2014, An Ord Mandating the Establishment of a Brgy Violence Against Women and their Children Desk in the 49 Brgys of Agoo, La Union.","5","RESOLUTION 279-2014.pdf","21","2014-07-31","0");
INSERT INTO tbl_resolution VALUES("280  -2010","","Return to SB Burgos, LU, & require Certificate of Public Hearing on Mun Ord # 29, s 2010, An Ord Amending Chapter IV, Sec 1(b) of Mun Ord # 008, s 2002, An Ord Imposing Rentals & Rights on the Newly Constructed Stalls at the Municipal Public Market & Livelihood Center","10","Resolution 280-2010.pdf","21","2010-10-14","0");
INSERT INTO tbl_resolution VALUES("280 - 1999","","Realign P75,000.00 to Sinapangan Solar Dryer, San Juan","20","RESOLUTION NO.280-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("280 - 2007","","MOA w/ the Lyceum Northwestern Florencia Duque College, Inc., Dagupan City, pertaining tot eh On-the-Job Training (OJT)/Practicum of its Level II nursing students at the Rosario District Hospital (RDH), Rosario, LU, for the SY 2007-2008","31","RESOLUTION NO. 280-2007.pdf","21","2007-10-11","0");
INSERT INTO tbl_resolution VALUES("280 - 2008","","Approve Ord # 02-2008 of the SB of Caba, LU, entitled: “An Ord Amending Ord # 2006-008, An Ord Prescribing Fare Increase of Tricycles Plying Within the Municipality of Caba, LU for Amendment of Fares in Article II”","20","RESOLUTION NO. 280-2008.pdf","21","2008-09-11","0");
INSERT INTO tbl_resolution VALUES("280 - 2011","","Return Ord # 5, emb in Res # 194, s 2011, of the SB of Bauang, LU, “An Ord Prohibiting the Use of Plastic Bags on Dry Goods, Regulating Its Use on Wet Goods & Providing Penalties Thereof”","10","Resolution 280-2011.pdf","21","2011-08-11","0");
INSERT INTO tbl_resolution VALUES("280 - 2012","","MOA with the Mun Gov’t of Rosario, LU, re: services of a Med Tech I of Rosario Dist Hosp at the RHU thereat","18","Resolution 280-2012.pdf","21","2012-08-16","0");
INSERT INTO tbl_resolution VALUES("280 - 2013","","Endorse to Pres Benigno S. Aquino III, the appointment of Dr. Lorna G. Bugayong as a full time Asst Schools Div Superintendent","6","RESOLUTION 280-2013.pdf","21","2013-08-29","0");
INSERT INTO tbl_resolution VALUES("280 - 2014","2014 - 0174","Mun Ord # 06-2014, An Ord Prohibiting Business Establishments in the Mun of San Juan, LU to Charge any Fee to Sr. Citizens, PWD?s and Expectant Mothers for the Use of Restrooms or CRs and Providing Penalties for Violation Hereof.","5","RESOLUTION 280-2014.pdf","21","2014-07-31","0");
INSERT INTO tbl_resolution VALUES("281 - 1999","","AO amounting P299,448.28 for Terminal Leave Pay","20","RESOLUTION NO.281-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("281 - 2007","","Amend SP Res # 198-2007, that instead of “to appropriate funds thereof” it should be “to be appropriated from the PS Savings","2","RESOLUTION NO. 281-2007.pdf","21","2007-10-18","0");
INSERT INTO tbl_resolution VALUES("281 - 2008","","Approve Mun Ord # 06-2008 of the SB of San Gabriel, LU, as emb in Res # 18, s. 2008, entitled: “An Ord Establishing a Fare Matrix Covering the Operation of All Tricycles in All Routes Within the Area of Jurisdiction of the Municipality of San Gabriel, LU and Providing Penalties for Every Violation Thereof”","20","RESOLUTION NO. 281-2008.pdf","21","2008-09-11","0");
INSERT INTO tbl_resolution VALUES("281 - 2010","","Return Mun Ord # 84, s 2010, of the SB of Sudipen, LU, An Ord Enacting the Investment & Incentive Code of the Mun of Sudipen, LU","10","Resolution 281-2010.pdf","21","2010-10-14","0");
INSERT INTO tbl_resolution VALUES("281 - 2011","","Approve Ord # 2011-089, of the SB of Santol, LU, “Ord Establishing the Sotfbroom Regulatory Body & for Other Purposes in the Mun of Santol, LU”","10","Resolution 281-2011.pdf","21","2011-08-11","0");
INSERT INTO tbl_resolution VALUES("281 - 2012","","Condole with the bereaved family of BC HerminigildoDabalos, Bangaoilan West, Bangar","1,3,5,7,9,10,11,12,13,18,19,20,21","Resolution 281-2012.pdf","21","2012-08-16","0");
INSERT INTO tbl_resolution VALUES("281 - 2013","","Extend appreciation to the most active participating agencies in the LU Jobs Fair CY 2007-2013\n\nI.	Private Business Establishments for Local Employment\nII.	Overseas Recruitment Agencies\nIII.	National Agencies\nIV.	Non-Gov’t Organization\nV.	Host Venue","9","RESOLUTION 281-2013.pdf","21","2013-09-05","0");
INSERT INTO tbl_resolution VALUES("282 - 1999","","AO amounting P57,943.72 for Terminal leave Pay","20","RESOLUTION NO.282-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("282 - 2007","","Land Purchase Agreement (LPA) and Deed of Absolute Sale with qualified beneficiaries for the vacant lot at Sagayad Resettlement Area which were earlier identified and declared as such by the Task Force Sagayad Resettlement Project and approved by the Office of the Governor","20","RESOLUTION NO. 282-2007.pdf","21","2007-10-18","0");
INSERT INTO tbl_resolution VALUES("282 - 2008","","Approve Ord # 2008-59 of the SB of Pugo, LU, entitled: “Adjusting Tricycle Fare Rates in the Municipality”","20","RESOLUTION NO. 282-2008.pdf","21","2008-09-11","0");
INSERT INTO tbl_resolution VALUES("282 - 2010","","Return Ord # 02-2009, of the SB of San Gabriel, LU, Ordinance Regulating the Construction/Installation/Operation of Cellular Sites in the Mun of San Gabriel, LU","10","Resolution 282-2010.pdf","21","2010-10-14","0");
INSERT INTO tbl_resolution VALUES("282 - 2011","","Return Ord # 2011-088, of the SB of Santol, LU, “Ord Prohibiting the Transport of Solas/Kinimis Outside the Mun of Santol, LU”","10","Resolution 282-2011.pdf","21","2011-08-11","0");
INSERT INTO tbl_resolution VALUES("282 - 2012","","Condole w/ the bereaved family of the late Cong. Salvador “Sonny” H. Escudero III, Sorsogon","1","Resolution 282-2012.pdf","21","2012-08-16","0");
INSERT INTO tbl_resolution VALUES("282 - 2013","","Call for the Comprehensive Review of the Nutrition Program of the province.","4","RESOLUTION 282-2013.pdf","21","2013-09-05","0");
INSERT INTO tbl_resolution VALUES("283 - 1999","","Approve FY 1999 GF SB # 1, of San Juan, LU","20","RESOLUTION NO.283-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("283 - 2007","","Renew the Contract of Lease, with the Regional Soils and Feed Lab under the Dep’t of Agriculture (DA) in connection with the parcel of land being used by the Regional Soils and Feed Lab of the DA, RO I, as site of its Regional Office situated along Aguila Rd., Sevilla, CSF, LU, containing an area of 506.90 sq.m.","20","RESOLUTION NO. 283-2007.pdf","21","2007-10-18","0");
INSERT INTO tbl_resolution VALUES("283 - 2008","","Approve Res  approving Ord # 58 s. 2008 of the SB of Santol, LU, entitled: “Ord Providing for Tricycle Fare Increase Along Poblacion-Mangaan Tricycle Route (POMATODA)”","20","RESOLUTION NO. 283-2008.pdf","21","2008-09-11","0");
INSERT INTO tbl_resolution VALUES("283 - 2011","","Return Ord # 11-2011, of the SB of Naguilian, LU, “An Ord Requiring Organizers of Public Functions to Secure a Barangay Clearance as a Requirement for the Issuance of a Special Permit by the Office of the Mayor Prior to the Conduct Thereof in Any Public Facility or Structure w/n the Territorial Jurisdiction of the Mun of Naguilian, LU & Providing Penalties for Violation Thereof”","10","Resolution 283-2011.pdf","21","2011-08-11","0");
INSERT INTO tbl_resolution VALUES("283 - 2012","","Approve the CY 2012 Supplemental AIP for the Rehab of the LUPAC Bldg ","1","Resolution 283-2012.pdf","21","2012-08-23","0");
INSERT INTO tbl_resolution VALUES("283 - 2013","","Request Cong. VFO, FrannyEriguel, Pacoy Ortega III, to cause the allocation of funds to cover Monthly Allowances of all Brgy Nutrition Scholars & the possible introduction of a HB increasing the allowances/stipend of BNS and/or making permanent the position of BNS in the Plantilla positions in the brgy.","4","RESOLUTION 283-2013.pdf","21","2013-09-05","0");
INSERT INTO tbl_resolution VALUES("284 - 1999","","P5,000.00 F/A to Brgy. Carunoan West, Rosario, LU, for poverty alleviation projects","20","RESOLUTION NO.284-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("284 - 2007","","Condole with the bereaved family of the late Mr. Gene Galvez, an employee of Metro La Union Water District","32","RESOLUTION NO. 284-2007.pdf","21","2007-10-18","0");
INSERT INTO tbl_resolution VALUES("284 - 2008","","Approve Mun Ord # 32-08, of the SB of Luna, LU, entitled: “An Ord Revising Passenger’s Fares for the Motorized Tricycle for Hire Within the Territorial Jurisdiction of the Municipality of Luna, LU, prescribing Penalties for Violation Thereof and for Other Purposes Thereof”","20","RESOLUTION NO. 284-2008.pdf","21","2008-09-11","0");
INSERT INTO tbl_resolution VALUES("284 - 2011","","Authorize the Committee on Laws, Rules & Privileges to coordinate & conduct a Conference-Dialogue w/ the Chairpersons & Vice-Chairpersons of Counterpart Committees in the Sanggunians of the Component City & Municipalities","10","Resolution 284-2011.pdf","21","2011-08-11","0");
INSERT INTO tbl_resolution VALUES("284 - 2012","","MOA with DOH-CHD I pertaining to the actual transfer of the proposed Reg’l Blood Bank Center at Bacnotan, La Union.","1","Resolution 284-2012.pdf","21","2012-08-23","0");
INSERT INTO tbl_resolution VALUES("284 - 2013","","Request support of all SP in the country to adopt the same or similar as Res # 210-2013, of this Body","3","RESOLUTION 284-2013.pdf","21","2013-09-05","0");
INSERT INTO tbl_resolution VALUES("285 - 1999","","P2,500.00 F/A to the Eastern Poblacion Asso., Aringay, LU, for their auditorium’s pavement","20","RESOLUTION NO.285-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("285 - 2007","","Amend SP Res No 173-2007 to the effect that the Vice Chairman of the CFBA be changed to Hon. Francisco Ortega, Jr., effective Oct 25, 2007","20","RESOLUTION NO. 285-2007.pdf","21","2007-10-25","0");
INSERT INTO tbl_resolution VALUES("285 - 2008","","Approve Ord # 2-2008 of the SB of Balaoan, LU, entitled: “An Ord Prescribing the New Fares of Motorized Tricycles for the different Routes Within the Municipality of Balaoan, LU”","20","RESOLUTION NO. 285-2008.pdf","21","2008-09-11","0");
INSERT INTO tbl_resolution VALUES("285 - 2010","","State of Calamity due to Typhoon Juan","1","Resolution 285-2010.pdf","21","2010-10-19","0");
INSERT INTO tbl_resolution VALUES("285 - 2011","","Approve Mun Ord # 04-2011, of the SB of Balaoan, LU, “An Ord Prohibiting the Unauthorized Manufacture, Production/Reproduction and Wearing of Uniforms & Other Paraphernalia that are of Exclusive Use of the Uniformed Personnel of the PNP & the AFP w/n the Jurisdiction of the Mun of Balaoan”","10","Resolution 285-2011.pdf","21","2011-08-11","0");
INSERT INTO tbl_resolution VALUES("285 - 2012","","Condole with the bereaved family of the late Sec. Jesse M. Robredo, DILG.","1,3,5,7,9,10,11,12,13,18,19,20","Resolution 285-2012.pdf","21","2012-08-23","0");
INSERT INTO tbl_resolution VALUES("285 - 2013","","Set aside P15,000.00 as F/A to Mr. Erwin C. Llavore, Youth Ambassador of Goodwill for Region I, to the 40th Ship for Southeast Asian Youth Program (SSEAYP).","1","RESOLUTION 285-2013.pdf","21","2013-09-05","0");
INSERT INTO tbl_resolution VALUES("286 - 1999","","P15,000.00 F/A to the SB of Burgos, LU, for the completion of their tribal hall","20","RESOLUTION NO.286-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("286 - 2007","","Contract of Consultancy Service, with Ms. Kristine Grace Panta, as Consultant to the Office of the Governor on Barangay and Indigenous Peoples Affair for the 2nd district w/ an individual honorarium of P20,000.00 per month","7","RESOLUTION NO. 286-2007.pdf","21","2007-11-08","0");
INSERT INTO tbl_resolution VALUES("286 - 2008","","Approve Ord # 57, of the SB of Santol, LU, entitled: “Ord Providing Fare Increase Along Balaoan-Santol Road of the Balaoan-Santol Tricycle Route (BALSANTA)” ","20","RESOLUTION NO. 286-2008.pdf","21","2008-09-11","0");
INSERT INTO tbl_resolution VALUES("286 - 2010","","Approve City Ord # 2010-009, of CSF, LU, An Ord Providing for the Creation of the City Price Coordinating Council","1","Resolution 286-2010.pdf","21","2010-10-21","0");
INSERT INTO tbl_resolution VALUES("286 - 2011","","Return Res # 17, s 2011, of the SB of Burgos, LU, “Res Seeking Clarification & Reconsideration of SP Res # 189-2011”","10","Resolution 286-2011.pdf","21","2011-08-11","0");
INSERT INTO tbl_resolution VALUES("286 - 2012","","Approve EO # 10, s 2012, of the Mun Mayor of Pugo, LU, “Creating the Mun Advisory Committee of the Mun of Pugo, LU for the PantawidPamilyang Pilipino Program”","5","Resolution 286-2012.pdf","21","2012-08-23","0");
INSERT INTO tbl_resolution VALUES("286 - 2013","","Condole with Atty. Josephine M. Ducusin, Pres, IBP LU Chapter.","1,2,3,4,5,6,7,8,9,10,11,12,13","RESOLUTION 286-2013.pdf","21","2013-09-05","0");
INSERT INTO tbl_resolution VALUES("287  -2010","","Approve FY 2010 GF SB # 6, of Luna, LU","1","Resolution 287-2010.pdf","21","2010-10-21","0");
INSERT INTO tbl_resolution VALUES("287 - 1999","","P5,000.00 F/A to Brgy. Suyo, Bagulin, LU, for the improvement of the state at Sitio Nangalisan","20","RESOLUTION NO.287-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("287 - 2007","","Amend SP Res # 296-2007, part. on the date of effectivity of the Consultancy Services of Mr. Edgar BellonFerido of Brgy. San Blas, Bangar, LU, as Governor’s Consultant for Local Revenue Dev’t from Oct 1, 2007 to Sept 28, 2008","31","RESOLUTION NO. 287-2007.pdf","21","2007-11-08","0");
INSERT INTO tbl_resolution VALUES("287 - 2008","","Approve Mun Ord # 13-2008 of the SB of San Juan, LU, 2008, entitled: “An Ord Prescribing Provisions Fare of Tricycle for Public Conveyance”","20","RESOLUTION NO. 287-2008.pdf","21","2008-09-11","0");
INSERT INTO tbl_resolution VALUES("287 - 2011","","Return Ord # 38, s 2011, of the SB of Burgos, LU, “An Ord Adopting Rules & Procedures in the Conduct of Administrative Investigation Against Elective Barangay Officials in the Mun of Burgos, LU”","10","Resolution 287-2011.pdf","21","2011-08-11","0");
INSERT INTO tbl_resolution VALUES("287 - 2012","","Approve Mun Ord # 44, s 2012, of the SB of Burgos, La Union, “An Ord Declaring Nov 27 as the Foundation Day of the Mun of Burgos, La Union”","10","Resolution 287-2012.pdf","21","2012-08-23","0");
INSERT INTO tbl_resolution VALUES("287 - 2013","","Approve the FY 2013 GF SB # 5, of San Gabriel, La Union.","1","RESOLUTION 287-2013.pdf","21","2013-09-05","0");
INSERT INTO tbl_resolution VALUES("288 - 1999","","P5,000.00 F/A to the Eastern Poblacion Asso., Aringay, LU, for their auditorium’s pavement","20","RESOLUTION NO.288-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("288 - 2007","","MOA w/ the Dep’t of Agriculture, Regional Field Office I, Municipal Governments of Aringay & Caba, LU, & farmer-beneficiaries relative to the implementation of the GinintuangMasaganangAni (GMA) Program","20","RESOLUTION NO. 288-2007.pdf","21","2007-11-08","0");
INSERT INTO tbl_resolution VALUES("288 - 2008","","Approve Mun Ord # 12-2008 of the SB of San Juan, LU, entitled: “An Ord Imposing Penalty Upon Operator for Hire for Operating With Expired Franchise”","20","RESOLUTION NO. 288-2008.pdf","21","2008-09-11","0");
INSERT INTO tbl_resolution VALUES("288 - 2010","","Approve FY 2010 GF SB # 2, of San Gabriel, LU","1","Resolution 288-2010.pdf","21","2010-10-21","0");
INSERT INTO tbl_resolution VALUES("288 - 2011","","Return Mun Ord # 24-2011, of the SB of San Juan, LU, “An Ord Imposing Parking Restrictions at Places Where Sings are Specifically Places Along the Manila North Rd” ","18","Resolution 288-2011.pdf","21","2011-08-11","0");
INSERT INTO tbl_resolution VALUES("288 - 2012","","Return Ord # 6, emb in Res # 357, s 2012, of the SB of Bauang, LU, “An Ord Penalizing Any Person Who Shall Cross or Breach a Police & Fire Line Cordon in the Mun of Bauang, LU”","10","Resolution 288-2012.pdf","21","2012-08-23","0");
INSERT INTO tbl_resolution VALUES("288 - 2013","","MOA on the creation of Multi-Partite Monitoring Team (MMT), Environmental Monitoring Fund and Environmental Guarantee Fund & authorizing Gov MCO to enter such MOA.","1","RESOLUTION 288-2013.pdf","21","2013-09-05","0");
INSERT INTO tbl_resolution VALUES("289 - 1999","","P10,000.00 F/A to Brgy. Dili, Bauang, LU, for the concreting of their farm to market road","20","RESOLUTION NO.289-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("289 - 2007","","Approve EO # 003-2007, of the Municipality of Bangar, LU, entitled: “Reorganizing the MunicipalDev’t Council of Bangar, LU”","20","RESOLUTION NO. 289-2007.pdf","21","2007-11-08","0");
INSERT INTO tbl_resolution VALUES("289 - 2008","","Approve Ord # 148, s. 2008 of the SB of Aringay, LU, entitled: “An Or Amending Ord # 137, The Tricycle Code of Aringay, LU, Otherwise Known as an Ord Regulating the operations of Motorized Tricycles and Granting of Franchise for the Operation Thereof Within the Territorial Jurisdiction of the Municipality of Aringay and Providing Penalties Thereof”","20","RESOLUTION NO. 289-2008.pdf","21","2008-09-11","0");
INSERT INTO tbl_resolution VALUES("289 - 2010","","Approve FY 2010 GF SB # 4, of Tubao, LU","1","Resolution 289-2010.pdf","21","2010-10-21","0");
INSERT INTO tbl_resolution VALUES("289 - 2011","","Authorize the Governor to negotiate w/ Marissa Gorospe of Sevilla, CSF, for the acquisition of her 7 sq.m. lot ","7","Resolution 289-2011.pdf","21","2011-08-18","0");
INSERT INTO tbl_resolution VALUES("289 - 2012","","Approve Mun Ord # 27-2012, of the SB of Agoo, LU, “An Ord Amending Sec 3, 3.1 of Mun Ord # 17, s 2012, An Ord Authorizing the Proposed Borrowing of the Mun of Agoo, LU in the Amount of P25 M to Fund the Agoo Public Cemetery Expansion (Phase II)","10","Resolution 289-2012.pdf","21","2012-08-23","0");
INSERT INTO tbl_resolution VALUES("289 - 2013","","Return for amendment, Mun Ord # 03, s 2013, of the SB of Sto. Tomas, LU, “Health & Sanitation Code of the Mun of Sto. Tomas, LU”","9","RESOLUTION 289-2013.pdf","21","2013-09-05","0");
INSERT INTO tbl_resolution VALUES("290 - 1999","","Enough amount as F/A to Brgy. Sobredillo, Caba, LU, for the purchase of pile materials for the Nagbayugan Rd.","20","RESOLUTION NO.290-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("290 - 2007","","Approve Res # 16 of the SB of San Juan, LU, entitled: “A Res Approving the 5-Year Investment Plan for CY 2008-2012, the Annual Investment Plan for CY 2008 & the 20% Development Plan for CY 2008”","20","RESOLUTION NO. 290-2007.pdf","21","2007-11-08","0");
INSERT INTO tbl_resolution VALUES("290 - 2008","","Approve Ord # 21, s. 2008 of the SB of Burgos, LU, entitled: “An Ord Approving a 20% Increase From the Present Fare Rates of Tricycles in the Municipality of Burgos, LU”","20","RESOLUTION NO. 290-2008.pdf","21","2008-09-11","0");
INSERT INTO tbl_resolution VALUES("290 - 2010","","Return Mun Ord # 01, s 2010, of the SB of Balaoan, LU, An Ord Amending Specific Provisions of Chapters II, IV, V & VI of Mun Ord # 02, s 2005, (Revenue Code of the Mun of Balaoan, LU), & require Certificate of Public Hearing ","10","Resolution 290-2010.pdf","21","2010-10-21","0");
INSERT INTO tbl_resolution VALUES("290 - 2011","","Approve FY 2011 GF SB # 1, of San Juan, LU","1","Resolution 290-2011.pdf","21","2011-08-18","0");
INSERT INTO tbl_resolution VALUES("290 - 2012","","Approve Mun Ord # 21-2012, of the SB of Agoo, LU, “An Ord Amending the Title & Sec VI of Mun Ord # 12-2012, An Ord Empowering the 49 Brgys. In the Mun of Agoo, LU to Conduct Regular & Sustained Community Based Research & Destroy of Breeding Places of Mosquitoes & Providing Penalties Thereof”","10","Resolution 290-2012.pdf","21","2012-08-23","0");
INSERT INTO tbl_resolution VALUES("290 - 2013","","Return for amendment, Mun Ord # 10-2013, of the SB of San Juan, LU, “An Ord Promulgating Policies & Prescribing Measures for the Prevention & Control of HIV/AIDS in the Mun of San Juan”.","9","RESOLUTION 290-2013.pdf","21","2013-09-05","0");
INSERT INTO tbl_resolution VALUES("291  -2010","","Approve Mun Ord # 02-2010, of the SB of San Juan, LU, Ord Assuring the Continuity of Supply for Family Planning Services in the Mun, Calling for the Adopting of a Contraceptive Self Reliance (CSR) Plan & Allocating Funds for the Purpose","10","Resolution 291-2010.pdf","21","2010-10-21","0");
INSERT INTO tbl_resolution VALUES("291 - 1999","","P15,000.00 F/A to Brgy. Lubing, San Juan, LU, for the construction of a waiting shed","20","RESOLUTION NO.291-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("291 - 2007","","Approve Ord # 15-2007, of the SB of San Juan, LU, entitled: “An Ord Imposing Prohibitions Along the Perimeter Line & Inside the Campus of Public Elementary of Public Elementary & High Schools”","20","RESOLUTION NO. 291-2007.pdf","21","2007-11-08","0");
INSERT INTO tbl_resolution VALUES("291 - 2008","","Condole w/ Dr. Rodolfo Catbagan, former PHO ","18","RESOLUTION NO. 291-2008.pdf","21","2008-09-11","0");
INSERT INTO tbl_resolution VALUES("291 - 2011","","Condole w/ Ex-Board Member Demetrio JuloyaSr","19","Resolution 291-2011.pdf","21","2011-08-18","0");
INSERT INTO tbl_resolution VALUES("291 - 2012","","Declare a vacancy in the Members of the SP w/ the resignation of BM Henry Bacurnay, Jr. effective August 21, 2012","10","Resolution 291-2012.pdf","21","2012-08-23","0");
INSERT INTO tbl_resolution VALUES("291 - 2013","","Return for amendment, Mun Ord # 01, s 2013, of the SB of Balaoan, LU, “An Ord Creating the Mun HIV/AIDS Council”.","9","RESOLUTION 291-2013.pdf","21","2013-09-05","0");
INSERT INTO tbl_resolution VALUES("292 - 1999","","Enough amount as F/A to Brgy. Sagayad, CSF, LU, for the purchase of a water pump","20","RESOLUTION NO.292-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("292 - 2007","","Approve Res # 71, s. 2007, of the SB of Bauang, LU, entitled: “Res Declaring the Municipality of Bauang, LU Under the State of Calamity Due to the Rising Incidents of Dog Bites & Rabies Infection Cases”","20","RESOLUTION NO. 292-2007.pdf","21","2007-11-08","0");
INSERT INTO tbl_resolution VALUES("292 - 2008","","MOA w/ DENR for the Land Management Service Project in La Union known as “Adopt-a-Mojon” Program (PRS 92)","18","RESOLUTION NO. 292-2008.pdf","21","2008-09-18","0");
INSERT INTO tbl_resolution VALUES("292 - 2010","","Condole w/ BC Almario Bautista, Brgy. Casilagan, Naguilian, LU","9","Resolution 292-2010.pdf","21","2010-10-21","0");
INSERT INTO tbl_resolution VALUES("292 - 2011","","Refer letter of Ms. Marissa Gorospe, for the payment of her property affected by the road widening project at the New Era St., Sevilla, CSF, to the Prov’l Appraisal Committee ","1","Resolution 292-2011.pdf","21","2011-08-18","0");
INSERT INTO tbl_resolution VALUES("292 - 2012","","Condole w/ the bereaved family of ex-Mayor Alfredo B. Abansi, Burgos, La Union.","3,5,7,9,10,11,12,13,18,19,20","Resolution 292-2012.pdf","21","2012-08-30","0");
INSERT INTO tbl_resolution VALUES("292 - 2013","","TOPPLU 2013\n\n1.	PCI Artemio C Infante\n2.	PO3 Lani E Peralta\n3.	PS Eduardo L Danguecan Jr\n4.	PCI Marlon D Paiste\n5.	PSI Christian Joy Q Alqueza\n6.	PO3 Ritche M Fabian\n7.	SPO1 Nieva Liza C Castro\n8.	PSI Rogelio B Miedes\n9.	PS Raymund C Calano\n10.	SPO1 Leila Mariecres B Arellano","1,2,3,5,6,7,8,9,10,11,12,13","RESOLUTION 292-2013.pdf","21","2013-09-05","0");
INSERT INTO tbl_resolution VALUES("293 - 1999","","Enough amount as F/A to Brgy. Narra Este, CSF, LU, for the purchase of a water pump","20","RESOLUTION NO.293-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("293 - 2007","","Approve EO # 002-2007, of the Municipality of Bangar, LU, entitled: “Reorganizing the Municipal Disaster Coordinating Council (MDCC) of the Municipality of Bangar, LU","20","RESOLUTION NO. 293-2007.pdf","21","2007-11-08","0");
INSERT INTO tbl_resolution VALUES("293 - 2008","","MOA w/ DA-RFU I thru Ilocos Integrated Agriculture Research Center (ILIARC) with the project entitled: Rural Enterprise Development (RED) in the province","7","RESOLUTION NO. 293-2008.pdf","21","2008-09-18","0");
INSERT INTO tbl_resolution VALUES("293 - 2010","","Condole w/ BC Eulogia Arellano, Brgy. San Martin, Bacnotan, LU","1,3,7,9,10,18,20,21,33","Resolution 293-2010.pdf","21","2010-10-28","0");
INSERT INTO tbl_resolution VALUES("293 - 2011","","Grant excavation along Bauang-Baguio Rd (BrgyBallay to Brgy Central East, Bauang) & Manila North Rd (BrgyQuinavite to BrgyPagdalagan Sur, Bauang) by the Metro La Union Water District","1","Resolution 293-2011.pdf","21","2011-08-18","0");
INSERT INTO tbl_resolution VALUES("293 - 2012","","Condole with the bereaved family of Ex-ABC Pres Pacifico S. Jucutan, Sr., Bagulin, LU","3,5,7,9,10,11,12,13,18,19,20","Resolution 293-2012.pdf","21","2012-08-30","0");
INSERT INTO tbl_resolution VALUES("293 - 2013","","Approve the website of the Province of La Union for Tourism Promotion.","2","RESOLUTION 293-2013.pdf","21","2013-09-05","0");
INSERT INTO tbl_resolution VALUES("294 - 1999","","Enough amount as F/A to Brgy. Narra Este, CSF, LU, for the purchase of hose","20","RESOLUTION NO.294-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("294 - 2007","","Approve MunOrd # 14-2007, of the SB of San Juan, LU, entitled: Children-Friendly Ordinance”","20","RESOLUTION NO. 294-2007.pdf","21","2007-11-08","0");
INSERT INTO tbl_resolution VALUES("294 - 2008","","Refile the Petition to Declare the Metro La Union Water District (MLUWD) as legally dissolved and to engage the legal services of the Provincial prosecutor to represent the PGLU ","20","RESOLUTION NO. 294-2008.pdf","21","2008-09-18","0");
INSERT INTO tbl_resolution VALUES("294 - 2010","","Condole w/ Kgd Francisco Hermoso, Brgy. San Martin, Bacnotan, LU","1,3,7,9,18,20,21,33","Resolution 294-2010.pdf","21","2010-10-28","0");
INSERT INTO tbl_resolution VALUES("294 - 2011","","Approve Ord # 3, s 2011, of the SB of Rosario, LU, “An Ord Amending Sec VII (1)(4) of Ord # 1, s 2011, of the Comprehensive Environmental Code of Rosario, LU”","1","Resolution 294-2011.pdf","21","2011-08-18","0");
INSERT INTO tbl_resolution VALUES("294 - 2012","","Return Mun Ord # 02, s 2012, of the SB of Sto. Tomas, LU, “An Ord Enacting the Revision of the Comprehensive Traffic Rules & Regulations & Transportation Code of the Mun of Sto. Tomas, LY & Providing Penalties to Violations Thereof”","9","Resolution 294-2012.pdf","21","2012-08-30","0");
INSERT INTO tbl_resolution VALUES("294 - 2013","","Approve Res # 31, s 2013, of the SB of Tubao, LU, “Temporarily Suspending the Issuance of Public Utility Franchise to Operate w/n the Territorial Jurisdiction of the Mun of Tubao, LU”.","4","RESOLUTION 294-2013.pdf","21","2013-09-05","0");
INSERT INTO tbl_resolution VALUES("295 - 1999","","P10,000.00 F/A to Brgy. Sto. Domingo Norte, Luna, LU, for the purchase of garden tools","20","RESOLUTION NO.295-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("295 - 2007","","Approve MunOrd # 30-2007, of the SB of Luna, LU, entitled: “An Ord Prohibiting Minors from Roaming and Loitering W/n the Territorial Jurisdiction of the Municipality of Luna, LU from 10:00 o’clock PM to 4:00 o’clock AM W/o Justifiable Reason, Providing Penalty for Violations & Appropriating Funds for the Implementation & for Other Purposes Thereof”","20","RESOLUTION NO. 295-2007.pdf","21","2007-11-08","0");
INSERT INTO tbl_resolution VALUES("295 - 2008","","Grant a Right-of-Way and Work Permit for PLDT to excavate, install/splice fiber optic and restore affected pavement relative to the implementation of its expansion work under project title: “Underground Installation Between LCLS and DFON Splice Point at Bauang, LU”","3","RESOLUTION NO. 295-2008.pdf","21","2008-09-25","0");
INSERT INTO tbl_resolution VALUES("295 - 2010","","Institutionalize the La Union Provincial Disaster Risk Reduction Management Office","1,11","Resolution 295-2010.pdf","21","2010-10-28","0");
INSERT INTO tbl_resolution VALUES("295 - 2011","","Return Ord # 13-2011, of the SB of Naguilian, LU, “An Ord Prohibiting the Possession & Sale of Pyrotechnics/Firecrackers Including the Use Thereof in Local Celebrations w/n the Territorial Jurisdiction of the Mun of Naguilian, LU”","19","Resolution 295-2011.pdf","21","2011-08-18","0");
INSERT INTO tbl_resolution VALUES("295 - 2012","","Return Mun Ord # 002-2012, of the SB of Rosario, LU, “An Ord Enacting the New Traffic Management of the Mun of Rosario, Province of LU & Implementing a Unified Route System for Tricycles”","9","Resolution 295-2012.pdf","21","2012-08-30","0");
INSERT INTO tbl_resolution VALUES("295 - 2013","","Approve Res # 32, s 2013, of the SB of Tubao, LU, “requesting Mayor Jonalyn Fontanilla to re-organize the Mun Tourism Council of the Mun”.","4","RESOLUTION 295-2013.pdf","21","2013-09-05","0");
INSERT INTO tbl_resolution VALUES("296 - 1999","","P40,000.00 F/A to the Balaoan Nat’l H/S, Balaoan, LU, for the construction of a comfort room at Castor Concepcion Bldg.","20","RESOLUTION NO.296-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("296 - 2007","","Approve MunOrd # 12-2007, of the SB of San Juan, LU, entitled: “An Ord Prescribing 10% Increase of Monthly Rental of Commercial Stalls” ","20","RESOLUTION NO. 296-2007.pdf","21","2007-11-08","0");
INSERT INTO tbl_resolution VALUES("296 - 2008","","Approve the issuance of a clearance certificate to the Underground Fiber Optic Cable and Manhole Installation Project of EricssonTelecommunications, Inc., along the National Highway from the City of San Fernando to Sudipen, LU","3","RESOLUTION NO. 296-2008.pdf","21","2008-09-25","0");
INSERT INTO tbl_resolution VALUES("296 - 2010","","Condole w/ Kgd.Welson Castillo, Brgy. Antonino, Balaoan, LU","1,3,7,9,10,18,20,21,33","Resolution 296-2010.pdf","21","2010-10-28","0");
INSERT INTO tbl_resolution VALUES("296 - 2011","","Approve Res # 22-2011, of the SB of San Juan, LU, “A Res Approving the Annual Investment Plan of the Local Gov’t of San Juan, LU for the CY 2012”","19","Resolution 296-2011.pdf","21","2011-08-18","0");
INSERT INTO tbl_resolution VALUES("296 - 2012","","Approve EO # 11, s 2012, of the Mun Mayor of Pugo, La Union, “To Re-organize the Mun Health Board of Pugo, La Union”","18","Resolution 296-2012.pdf","21","2012-08-30","0");
INSERT INTO tbl_resolution VALUES("296 - 2013","","Approve the Consolidated CY 2013 Supplemental AIP of the diff offices:\n\n1.	Office of the Prov’l Governor\n2.	Office of the Prov’l Agriculturist\n","1","RESOLUTION 296-2013.pdf","21","2013-09-05","0");
INSERT INTO tbl_resolution VALUES("297 - 1999","","P20,000.00 F/A to Brgy. Napaset, Balaoan, LU, for the construction of a CVO outpost","20","RESOLUTION NO.297-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("297 - 2007","","Approve MunOrd # 13-2007, of the SB of San Juan, LU, entitled: “An Ord Imposing Policies in the Issuance of Business Permit for the Purpose of Preventing Theft or Robbery”","20","RESOLUTION NO. 297-2007.pdf","21","2007-11-08","0");
INSERT INTO tbl_resolution VALUES("297 - 2008","","MOA with the Philippine Charity Sweepstakes Office (PCSO) relative to the acquisition of 1 Ultrasound and 1 unit CTSCAN","18","RESOLUTION NO. 297-2008.pdf","21","2008-09-25","0");
INSERT INTO tbl_resolution VALUES("297 - 2010","","MOA w/ 4S","18","Resolution 297-2010.pdf","21","2010-11-04","0");
INSERT INTO tbl_resolution VALUES("297 - 2011","","Return Ord # 09-2011, of the SB of Naguilian, LU, “An Ord Prohibiting Ambulant Vendors from Selling Any Kind of Goods or Merchandise & Pre-Need Services in the Brgys w/o the Necessary Brgy Clearance w/n the Territorial Jurisdiction of the Mun of Naguilian, LU & Providing Penalties for Violation Thereof”","19","Resolution 297-2011.pdf","21","2011-08-18","0");
INSERT INTO tbl_resolution VALUES("297 - 2012","","Approve SB # 2, of the Economic Enterprise involving a total appropriation of P2,279,500.00","18","Resolution 297-2012.pdf","21","2012-08-30","0");
INSERT INTO tbl_resolution VALUES("297 - 2013","","Congratulate the Mun of Agoo as a Nat’l Awardee of the Excellence in Literacy for Outstanding LGU – Mun Level.","1,2,3,4,5,6,7,8,9,10,11,12,13","RESOLUTION 297-2013.pdf","21","2013-09-05","0");
INSERT INTO tbl_resolution VALUES("298 - 1999","","P20,000.00 F/A to Brgy. Sucoc Sur, Luna, LU, for the completion of additional solar dryer","20","RESOLUTION NO.298-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("298 - 2007","","Approve Ord # 5, s. 2007, of the SB of Bauang, LU, entitled: “An Ord Amending Ord # 18, s. 2005, Part. Sec. 5 of Chapter XXII, Registration, Slaughter, Corral Fees of Animals”","20","RESOLUTION NO. 298-2007.pdf","21","2007-11-08","0");
INSERT INTO tbl_resolution VALUES("298 - 2008","","Condole with VM Apolinario Albay, Rosario, LU","21","RESOLUTION NO. 298-2008.pdf","21","2008-09-25","0");
INSERT INTO tbl_resolution VALUES("298 - 2010","","Approve City Ord # 2010-010, of the City of San Fernando, LU, “An Ord Penalizing Fraudulent Practices Relative to Weights & Measures”","10","Resolution 298-2010.pdf","21","2010-11-04","0");
INSERT INTO tbl_resolution VALUES("298 - 2011","","Approve Ord # 20-2011, of the SB of Naguilian, LU, “An Ord Prohibiting the Use of Styrofoam Containers in the Packaging of Food by Caterers, Fastfoods, Restaurants &Carinderias for Use in Public Occasions & Functions w/n the Territorial Jurisdiction of the Mun of Naguilian, LU & Imposing Fines & Penalties to Violators Thereof”","19","Resolution 298-2011.pdf","21","2011-08-18","0");
INSERT INTO tbl_resolution VALUES("298 - 2012","","P10,000.00 as F/A to the family of Ms. Mica Almorfe, Nagsabaran Norte, Balaoan, La Union.","3,18","Resolution 298-2012.pdf","21","2012-08-30","0");
INSERT INTO tbl_resolution VALUES("298 - 2013","","Urge Cong. VFO, Cong FrannyEriguel, & Cong. Pacoy Ortega III to immediately & w/o delay sponsor, co-author, and file a HB entitled: “An Act Establishing the Final Forestland Boundary of the Prov of LU”.","4","RESOLUTION 298-2013.pdf","21","2013-09-12","0");
INSERT INTO tbl_resolution VALUES("299 - 1999","","P5,000.00 F/A to the VP, SPADE, SLC, CSF, LU, relative to the Seminar Workshop on Debate & Journalism","20","RESOLUTION NO.299-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("299 - 2007","","Enjoin the implementation of the program for the Planting, Cultivation and Propagation of the Ylang-Ylang Tree, which has been adopted as the Official Environmental and Beautification Tree of the province","31","RESOLUTION NO. 299-2007.pdf","21","2007-11-08","0");
INSERT INTO tbl_resolution VALUES("299 - 2008","","Approve FY 2008 GF SB # 4, of Tubao, LU","2","RESOLUTION NO. 299-2008.pdf","21","2008-10-02","0");
INSERT INTO tbl_resolution VALUES("299 - 2010","","Approve City Ord # 2010-011, of the City of San Fernando, LU, An Ord Requiring the Installation of 8 Watt energy Saving Bulb, 15 Watt Fluorescent Lap or Panaflex Sign Outside Every Stall Store, or Commercial Establishment in the City Including those in the Public Markets & Providing Penalty for the Violation Thereof & Repealing Ord # 3, s 1960","10","Resolution 299-2010.pdf","21","2010-11-04","0");
INSERT INTO tbl_resolution VALUES("299 - 2011","","MOU w/ Rosario District Hospital & the Mun Gov’t of Rosario, LU, pertaining to the Disposal of RDH Waste to the Mun Dumpsite & to Perform the PHIC Outpatient Benefit Package of the LGU","1,10,18","Resolution 299-2011.pdf","21","2011-08-25","0");
INSERT INTO tbl_resolution VALUES("299 - 2012","","P10,000.00 as F/A to the family of Mr. SabinoMosquite, Lioac Sur, Naguilian, LU","3,18","Resolution 299-2012.pdf","21","2012-08-30","0");
INSERT INTO tbl_resolution VALUES("299 - 2013","","Extend gratitude to all elementary and secondary teachers and commending them for a job well done.","1,2,3,4,5,6,7,8,9,10,11,12,13","RESOLUTION 299-2013.pdf","21","2013-09-12","0");
INSERT INTO tbl_resolution VALUES("300 - 1999","","P35,000.00 F/A to Brgy. Damortis, Sto. Tomas, LU, for the water system ","20","RESOLUTION NO.300-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("300 - 2007","","Amend Letter U of Section 87 of the SP internal Rules of Procedure under the Committee on Public Works & Utilities to include in its functions the General; Jurisdiction on all Matters pertaining to exploitation, development, utilization and conservation of Energy Resources and hence forth to be named as Committee on Public Works, Utilities and Energy","20","RESOLUTION NO. 300-2007.pdf","21","2007-11-08","0");
INSERT INTO tbl_resolution VALUES("300 - 2008","","Approve FY 2008 GF SB # 3, of Bauang, LU ","2","RESOLUTION NO. 300-2008.pdf","21","2008-10-02","0");
INSERT INTO tbl_resolution VALUES("300 - 2010","","Approve City Ord # 2010-008, of the City of San Fernando, LU, “An Ord Requiring the Playing of the Prescribed Audio-Video Clip of the PNP Before the Initial & Final Screening of Films in All Movie Houses in the City & Repealing Ord # 12, s 1972”","10","Resolution 300-2010.pdf","21","2010-11-04","0");
INSERT INTO tbl_resolution VALUES("300 - 2011","","Renew Contract of Consultancy of:\n\n1.	Atty. Gerardo Viloria                - Legal Affairs\n2.	Mr. AvelinoLomboy                 - Agricultural Affairs\n","1","Resolution 300-2011.pdf","21","2011-08-25","0");
INSERT INTO tbl_resolution VALUES("300 - 2012","","P10,000.00 as F/A to the family of Mr. Jhun Ray Gapuz, Tanqui, CSF, LU","3,18","Resolution 300-2012.pdf","21","2012-08-30","0");
INSERT INTO tbl_resolution VALUES("300 - 2013","","Extend appreciation to all tertiary/college Masteral, Doctorate, Technical/Vocational Courses Professors, Instructors and Tutors and commending them for a job well done","1,2,3,4,5,6,7,8,9,11,12,13","RESOLUTION 300-2013.pdf","21","2013-09-12","0");
INSERT INTO tbl_resolution VALUES("301 - 1999","","P15,000.00 F/A to Brgy. Nagyubuyuban, CSF, LU, for the purchase of rolls of hose","20","RESOLUTION NO.301-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("301 - 2007","","Congratulate and commend Ms. MarilouSibayan, Gymnastics athlete from Luna, LU, who represented the country and the province and bagged 3 bronze medals from 3 gymnastics events during the 2007 Special Olympics World Summer Games at Shanghai, People’s Republic of China and her coach, Ms. Bernadine Ortaliza, Teacher I of Balaoan Elementary School","1","RESOLUTION NO. 301-2007.pdf","21","2007-11-08","0");
INSERT INTO tbl_resolution VALUES("301 - 2008","","Approve FY 2008 GF SB # 4, of Bacnotan, LU ","2","RESOLUTION NO. 301-2008.pdf","21","2008-10-10","0");
INSERT INTO tbl_resolution VALUES("301 - 2010","","Approve Mun Ord # 22-2010, of the SB of Agoo, LU, “Roaming-In & Breastfeeding Ord of the Mun of Agoo, LU”","10","Resolution 301-2010.pdf","21","2010-11-04","0");
INSERT INTO tbl_resolution VALUES("301 - 2011","","Approve SB # 2, amounting P8,400,000.00","1","Resolution 301-2011.pdf","21","2011-08-25","0");
INSERT INTO tbl_resolution VALUES("301 - 2012","","P10,000.00 as F/A to the family of Mr. Jimmy Jesus Gapuz, Tanqui, CSF, LU","3,18","Resolution 301-2012.pdf","21","2012-08-30","0");
INSERT INTO tbl_resolution VALUES("301 - 2013","","Approve the FY 2013 GF SB # 4, of Balaoan, La Union.","1","RESOLUTION 301-2013.pdf","21","2013-09-12","0");
INSERT INTO tbl_resolution VALUES("302 - 1999","","P10,000.00 F/A to Brgy. Boy-utan, Bauang, LU, for the building of their comfort room at pre-elem level","20","RESOLUTION NO.302-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("302 - 2007","","Amend SP Resolution No. 173-2007,to the effect  the composition of the newly created Committee on Public Works, Utilities and Energy","30","RESOLUTION NO. 302-2007.pdf","21","2007-11-08","0");
INSERT INTO tbl_resolution VALUES("302 - 2008","","Approve FY 2008 GF SB # 2, of San Juan, LU ","2","RESOLUTION NO. 302-2008.pdf","21","2008-10-02","0");
INSERT INTO tbl_resolution VALUES("302 - 2010","","Approve City Ord # 2010-004, of the City of San Fernando, LU, “An Ord Strengthening the Right of the People to Participatory Governance”","10","Resolution 302-2010.pdf","21","2010-11-04","0");
INSERT INTO tbl_resolution VALUES("302 - 2011","","Return Mun Ord # 2, s 2011, of the SB of Sto. Tomas, LU, “Regulating the Deposition of Pulverized Materials Such as Ore, Coal, Gypsum, Silica, Betonies & Other Mineral Components that Are Utilized by All Industries Operating w/n the Mun of Sto. Tomas, LU, w/ the Amendment of the Provision of Sec 6, Art IV in Compliance to SP Res # 199-2011”","10","Resolution 302-2011.pdf","21","2011-08-25","0");
INSERT INTO tbl_resolution VALUES("302 - 2012","","P10,000.00 as F/A to the family of Mr. Michael Estacio, Balaoc, Sto. Tomas, La Union.","3,18","Resolution 302-2012.pdf","21","2012-08-30","0");
INSERT INTO tbl_resolution VALUES("302 - 2013","","Approve Res # 34, s 2013, of the SB of Tubao, La Union, “Requesting Mayor Jonalyn Fontanilla, to adopt the Propose Plan on the Ongoing Dev’t of the Pepito’s Park of the Mun of Tubao, La Union”.","4","RESOLUTION 302-2013.pdf","21","2013-09-12","0");
INSERT INTO tbl_resolution VALUES("303 - 1999","","P30,000.00 F/A to Brgy. Cadaclan, CSF, LU, for the completion of their footbridges","20","RESOLUTION NO.303-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("303 - 2007","","Authorize Gov. Manuel Ortega, to open and maintain a depository account with the Philippine National Bank (PNB) and the Philippine Postal Savings Bank, both non-government-owned deposit banks","1","RESOLUTION NO. 303-2007.pdf","21","2007-11-15","0");
INSERT INTO tbl_resolution VALUES("303 - 2008","","Approve FY 2008 GF SB # 1, of Santo Tomas, LU ","2","RESOLUTION NO. 303-2008.pdf","21","2008-10-02","0");
INSERT INTO tbl_resolution VALUES("303 - 2010","","Approve City Ord # 2010-006, of the City of san Fernando, LU, “An Ord Creating the Youth Dev’t Council in the City of San Fernando & For Other Purposes”","10","Resolution 303-2010.pdf","21","2010-11-04","0");
INSERT INTO tbl_resolution VALUES("303 - 2011","","Return Ord # 2011-002, emb in Res # 2011-074, of the SB of Bangar, LU, “An Ord Regulating the Use of Plastic Bags & Styrofoam in the Mun of Bangar, LU”","10","Resolution 303-2011.pdf","21","2011-08-25","0");
INSERT INTO tbl_resolution VALUES("303 - 2012","","P10,000.00 as F/A to the family of Mr. ReynanteFrigillana, San Juan East, Aringay, LU","3,18","Resolution 303-2012.pdf","21","2012-08-30","0");
INSERT INTO tbl_resolution VALUES("303 - 2013","","Approve Mun Ord # 13-2013, of the SB of San Juan, LU, “An Ord Naming and Declaring Acacia (SamaneaSaman) and Yellow Bell as the Mun Tree and Flower, Respectively”.","10","RESOLUTION 303-2013.pdf","21","2013-09-12","0");
INSERT INTO tbl_resolution VALUES("304 - 1999","","P20,500.00 F/A to Brgy. Sibuan-Otong, CSF, LU, for the purchase of hose","20","RESOLUTION NO.304-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("304 - 2007","","Require all applicants for industrial sand and gravel permit of more than 5 hectares, exploration permit, mineral agreement and financial or technical assistance agreement within the territorial jurisdiction of the Province of La Union to obtain favorable endorsement from the SP as one of the 2 mandatory requirements for mining applications intended for both exploration and development and/or utilization purposes","1","RESOLUTION NO. 304-2007.pdf","21","2007-11-15","0");
INSERT INTO tbl_resolution VALUES("304 - 2008","","Approve FY 2008 GF SB # 3, of Sudipen, LU","2","RESOLUTION NO. 304-2008.pdf","21","2008-10-02","0");
INSERT INTO tbl_resolution VALUES("304 - 2011","","Return Mun Ord # 26-2011, of the SB of San Juan, LU, “An Ord Prescribing Prices of Meat Sold at San Juan Public Market, as Amended”","10","Resolution 304-2011.pdf","21","2011-08-25","0");
INSERT INTO tbl_resolution VALUES("304 - 2012","","P10,000.00 as F/A to the family of Mr. Jessie Boy Calaur, Central East, Bauang, LU","3,18","Resolution 304-2012.pdf","21","2012-08-30","0");
INSERT INTO tbl_resolution VALUES("304 - 2013","","Return Res # 30, s 2013, of the SB of Tubao, La Union, “Requesting Cong. FrannyEriguel, & Mayor Sandra Eriguel that the on-going dev’t of the People’’s Park be named as Franny’s Jurassic Park & Sandra’s Zoological Park of the Mun of Tubao, La Union”.","10","RESOLUTION 304-2013.pdf","21","2013-09-12","0");
INSERT INTO tbl_resolution VALUES("305 - 1999","","P10,000.00 F/A to Brgy. Tanquigan, CSF, LU, for the purchase of rolls","20","RESOLUTION NO.305-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("305 - 2007","","Request Gov. Manuel Ortega to enjoin all public places and public conveyances to strictly observe Ordinance No. 03-93 of the SP, entitled: “An Ordinance Regulating Cigar/Cigarette Smoking in Public Places and Conveyances and Providing Penalties for the Vioaltion Thereof”, Sec. 24, 47 and 48 of RA 8749 (Clean Air Act), Sec. 5, 6 and 32 of RA 9211 (tobacco Regulation Act of 2003)","18","RESOLUTION NO. 305-2007.pdf","21","2007-11-15","0");
INSERT INTO tbl_resolution VALUES("305 - 2008","","Approve FY 2008 GF SB # 4, of Balaoan, LU","2","RESOLUTION NO. 305-2008.pdf","21","2008-10-02","0");
INSERT INTO tbl_resolution VALUES("305 - 2010","","Extend appreciation to 3-termer Brgy. Captains of the province","9","Resolution 305-2010.pdf","21","2010-11-04","0");
INSERT INTO tbl_resolution VALUES("305 - 2011","","Return Ord # 17, s 2011, of the SB of Naguilian, LU, “An Ord Prohibiting the Use & Sale of Plastic Bags at the Naguilian Public Market & in All Business Establishments w/n the Territorial Jurisdiction of the Mun of Naguilian, LU, Providing Penalties for Violation Thereof, Amending Previous Ordinances Inconsistent Thereto & for Other Purposes”","10","Resolution 305-2011.pdf","21","2011-08-25","0");
INSERT INTO tbl_resolution VALUES("305 - 2012","","P10,000.00 as F/A to the family of Mr. Eduardo Solomon, Sta. Monica, Bauang, LU","3,18","Resolution 305-2012.pdf","21","2012-08-30","0");
INSERT INTO tbl_resolution VALUES("305 - 2013","","Support the Petition filed w/ Supreme Court asking to compel the Nat’l Gov’t to give the LGUs their IRA.","4","RESOLUTION 305-2013.pdf","21","2013-09-19","0");
INSERT INTO tbl_resolution VALUES("306 - 1999","","Allow purchase of:\n\na.	1 Vitara\nb.	2 Revo/Mitsubishi\nc.	2 L-300 FB Van\nd.	1 Nissan Sentra\n","20","RESOLUTION NO.306-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("306 - 2007","","Condole with the bereaved family of the late Atty. BenignoPulmano, former SPM","20","RESOLUTION NO. 306-2007.pdf","21","2007-11-15","0");
INSERT INTO tbl_resolution VALUES("306 - 2008","","Approve FY 2008 GF SB # 5, of Bacnotan, LU","2","RESOLUTION NO. 306-2008.pdf","21","2008-10-02","0");
INSERT INTO tbl_resolution VALUES("306 - 2010","","Congratulate all newly elected BC &Kgds& all newly elected SK Chairpersons & SK Kgds of the province","3","Resolution 306-2010.pdf","21","2010-11-04","0");
INSERT INTO tbl_resolution VALUES("306 - 2011","","Return Ord # 50, s 2010, of the SB of Bauang, LU, “An Ord Reclassifying the Parcel of Land Owned by Ms. MarijunMadayag Locke w/ an Area of 4,040 sq.m. Designated as Lot Nos. 5244 & 5257, Both Classified as Agricultural Lands Situated at Brgy. Baccuit Sur, Bauang, LU”","10","Resolution 306-2011.pdf","21","2011-08-25","0");
INSERT INTO tbl_resolution VALUES("306 - 2012","","Approve the CY 2012 Supplemental AIP for the Equipment Upgrading of Balaoan Dist Hosp","1","Resolution 306-2012.pdf","21","2012-09-06","0");
INSERT INTO tbl_resolution VALUES("306 - 2013","","MOA w/ DSWD & the Mun Gov’t of Tubao, LU re: implementation of the Bottom-Up Budgeting (BUB) Project.","1","RESOLUTION 306-2013.pdf","21","2013-09-19","0");
INSERT INTO tbl_resolution VALUES("307 - 1999","","Adopt the Indigent Component of NHIP ","20","RESOLUTION NO.307-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("307 - 2007","","Condole with the bereaved family of the late former BC Rolando Pulido, Brgy. San Francisco, CSF","1","RESOLUTION NO. 307-2007.pdf","21","2007-11-15","0");
INSERT INTO tbl_resolution VALUES("307 - 2008","","Approve FY 2008 GF SB # 3, of Bagulin, LU ","2","RESOLUTION NO. 307-2008.pdf","21","2008-10-02","0");
INSERT INTO tbl_resolution VALUES("307 - 2010","","Approve FY 2010 GF SB # 2, of Aringay, LU","1","Resolution 307-2010.pdf","21","2010-11-11","0");
INSERT INTO tbl_resolution VALUES("307 - 2011","","Accredit ARINGAY DEV’T COORDINATING TEAM, INC.  as NGO","7","Resolution 307-2011.pdf","21","2011-08-25","0");
INSERT INTO tbl_resolution VALUES("307 - 2012","","Approve the FY 2012 GF SB # 5, of Agoo, La Union.","1","Resolution 307-2012.pdf","21","2012-09-06","0");
INSERT INTO tbl_resolution VALUES("307 - 2013","","MOA w/ DA RFO, re: fund transfer amounting P91,000.00 for the Planning Workshop for the Updating of Agriculture & Fisheries Modernization (AFMP) 2013-2016","3","RESOLUTION 307-2013.pdf","21","2013-09-19","0");
INSERT INTO tbl_resolution VALUES("308 - 1999","","Enough amount as F/A to Brgy. Palina, Pugo, LU, for the purchase of halogen lamp","20","RESOLUTION NO.308-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("308 - 2007","","Give full authority to Hon. Joaquin Ostrea, Jr. to represent the SP in the hearings relative to the solution of the problem of the tobacco industry in the Ilocos Region at the House of Representatives as well as in the Senate and asking the Governor to give him full support with all the necessary budget","31","RESOLUTION NO. 308-2007.pdf","21","2007-11-15","0");
INSERT INTO tbl_resolution VALUES("308 - 2008","","Approve FY 2008 GF SB # 3, of San Gabriel, LU ","2","RESOLUTION NO. 308-2008.pdf","21","2008-10-02","0");
INSERT INTO tbl_resolution VALUES("308 - 2010","","Approve FY 2010 GF SB # 7, of Luna, LU","1","Resolution 308-2010.pdf","21","2010-11-11","0");
INSERT INTO tbl_resolution VALUES("308 - 2011","","Request Sen. Vicente Sotto III for additional financial assistance for the completion of the LU Drug Treatment & Rehab Center at Parian","1,3,5","Resolution 308-2011.pdf","21","2011-08-25","0");
INSERT INTO tbl_resolution VALUES("308 - 2012","","Approve the FY 2012 GF SB # 6, of Agoo, La Union.","1","Resolution 308-2012.pdf","21","2012-09-06","0");
INSERT INTO tbl_resolution VALUES("308 - 2013","","Commend Hon. Nonnatus Caesar Rojas, former NBI Director, for rekindling the flickering light of Delicadeza or Sense of Propriety","4,10","RESOLUTION 308-2013.pdf","21","2013-09-19","0");
INSERT INTO tbl_resolution VALUES("309 - 1999","","P3,000.00 F/A to Brgy. Gana, Caba, LU, for the purchase of added learning materials","20","RESOLUTION NO.309-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("309 - 2007","","Realign the amount of P3,390,000.00 to the following programs:\n\na.	Nutrition & Population                                P2,500,000.00\nb.	Brgy. Assistance Program                                 683,000.00\nc.	Electric, Water System & Other Utilities        120,000.00\nd.	Trade & Industry Promotion                              70,000.00\ne.	Day Care Center                                                   17,000.00\n","18","RESOLUTION NO. 308-2007.pdf","21","2007-11-22","0");
INSERT INTO tbl_resolution VALUES("309 - 2008","","Approve FY 2008 GF SB # 5, of Pugo, LU","2","RESOLUTION NO. 309-2008.pdf","21","2008-10-02","0");
INSERT INTO tbl_resolution VALUES("309 - 2010","","Oppose/Deny application of Bridestone Mining Dev’t Corp. for exploration permit for the exploration of limestone & other minerals in LU part. at Brgy. Carunoan West & East, Tanglag, Marcos, San Jose, Inabaan Norte, all of Rosario & the Mun of Sto. Tomas","1,10,20","Resolution 309-2010.pdf","21","2010-11-11","0");
INSERT INTO tbl_resolution VALUES("309 - 2011","","Amend SP Res # 274-2011","18","Resolution 309-2011.pdf","21","2011-09-01","0");
INSERT INTO tbl_resolution VALUES("309 - 2012","","Approve the FY 2012 GF SB # 2, of the City of San Fernando, La Union.","1","Resolution 309-2012.pdf","21","2012-09-06","0");
INSERT INTO tbl_resolution VALUES("309 - 2013","","Outstanding Teachers 2013:\n\nELEMENTARY\n1. Lourdes A. Floria\n2. Mary Jane T. Ganggangan\n3. Gloria F. Carbonell\n4. Arthur N. Balala\n5. Yolanda L. Valdez\n6. Jeanette Z. Bagtas\n\nSECONDARY\n1.	Leticia M. Balanon\n2.	Fe D. Gali\n3.	Yolanda P. San Agustin\n4.	Gema D. Jarata","6","RESOLUTION 309-2013.pdf","21","2013-09-19","0");
INSERT INTO tbl_resolution VALUES("310 - 1999","","P3,000.00 F/A to Brgy. Urayong, Caba, LU, for the building up of their comfort room at their Day Care center","20","RESOLUTION NO.310-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("310 - 2007","","Enact an Appropriation Ordinance appropriating the amount of P1,570,975.77 for Supplemental Budget No. 10 of the General Fund to cover the payment of the Travelling Expanses, Telephone Expenses (Landline), Postage and Deliveries, Other MOE, Office Supplies Expenses, Gasoline, Oil and Lubricant Expenses, Training Expenses and Committee Meeting of the Office of the SP","18","RESOLUTION NO. 310-2007.pdf","21","2007-11-22","0");
INSERT INTO tbl_resolution VALUES("310 - 2008","","Deed of Donation, w/ DOH in connection with the transfer of the 25 Hospital Buildings Located at Barangay Nazareno, Agoo, LU","20","RESOLUTION NO. 310-2008.pdf","21","2008-10-02","0");
INSERT INTO tbl_resolution VALUES("310 - 2010","","Authorize Gov to facilitate Letter of Credit amounting P8,032,000.00 in favor of Litchfield International PTE, Ltd. Thru LBP as payment of 1 backhoe loader w/ hydraulic breaker","1","Resolution 310-2010.pdf","21","2010-11-11","0");
INSERT INTO tbl_resolution VALUES("310 - 2011","","Condole w/ BC Eduardo Aquino, San Marcos, Agoo","20","Resolution 310-2011.pdf","21","2011-09-01","0");
INSERT INTO tbl_resolution VALUES("310 - 2012","","Approve EO # 08, s 2012, of the Mun Mayor of Pugo, LU, “An Order Creating the Pugo Mun Technical Committee on Organic Agricultural Program & for Other Purposes”","3","Resolution 310-2012.pdf","21","2012-09-06","0");
INSERT INTO tbl_resolution VALUES("310 - 2013","","Approve Mun Ord # 02, s 2013, emb in Res # 23, s 2013, of the SB of Balaoan, LU, “An Ord Establishing the Balaoan Academic Scholarship Assistance (BASA) Program for the Poor But Deserving Students of the Mun of Balaoan & Appropriating Funds Therefore”.","6","RESOLUTION 310-2013.pdf","21","2013-09-19","0");
INSERT INTO tbl_resolution VALUES("311 - 1999","","P3,000.00 F/A to Brgy. Wenceslao, Caba, LU, for the purchase of learning materials at the day care center","20","RESOLUTION NO.311-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("311 - 2007","","Enact an Appropriation Ordinance appropriating the amount of P8,969,915.28 for Supplemental Budget No. 11 of the General Fund to cover the payment of Terminal Lave Pay, Step Increment, MOOE of the Office of the Governor, Office of the Provincial Treasurer, Provincial Assessor, Provincial Accountant, Provincial Engineer, Social Welfare and Development Office Capital Outlay of the SP, 20% Development Fund (Barangay Assistance Program), and Subsidy to Hospitals","7","RESOLUTION NO. 311-2007.pdf","21","2007-11-22","0");
INSERT INTO tbl_resolution VALUES("311 - 2008","","Thank persons, authorities and volunteers concerned for their full support and active participation in the final resolution on the murder case of Mrs. Felicidad Picar","31","RESOLUTION NO. 311-2008.pdf","21","2008-10-09","0");
INSERT INTO tbl_resolution VALUES("311 - 2010","","Accredit Northern Phils. Tribal Communities Dev’t Center, Inc. as NGO","7","Resolution 311-2010.pdf","21","2010-11-11","0");
INSERT INTO tbl_resolution VALUES("311 - 2011","","MOA w/ DSWD re: accessing the result of the Nat’l Household Targeting System for Poverty Reduction (NHTS-PR)","5","Resolution 311-2011.pdf","21","2011-09-01","0");
INSERT INTO tbl_resolution VALUES("311 - 2012","","Approve EO # 12, s 2012, of the Mun Mayor of Pugo, LU, “Re-organizing/Updating of the Mun Anti-Drug Abuse Council of Pugo, LU (MADAC)”","3","Resolution 311-2012.pdf","21","2012-09-06","0");
INSERT INTO tbl_resolution VALUES("311 - 2013","","MOA w/ DA for the full implementation of the Agriculture Fishery Modernization Program (AFMP) as one of the Components of the Phil Rural Dev’t Program (PRDP) of the Nat’l Gov’t","3","RESOLUTION 311-2013.pdf","21","2013-09-19","0");
INSERT INTO tbl_resolution VALUES("312 - 1999","","P3,000.00 F/A to Brgy. San Gregorio, Caba, LU, for the improvement of their day care center","20","RESOLUTION NO.312-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("312 - 2007","","Realign the amount of P180,250.00 to the following:\n\na.	Special Scholarship Program                         P153,000.00\nb.	Barangay Assistance Program                           27,250.00\n","20","RESOLUTION NO. 312-2007.pdf","21","2007-11-22","0");
INSERT INTO tbl_resolution VALUES("312 - 2008","","Invite the NEDA and the BSP as Resource Speakers on the impact of the Global Financial Crisis on the Philippine Economy during the 69th Regular Session of the SP of La Union on October 23, 2008","6,7","RESOLUTION NO. 312-2008.pdf","21","2008-10-16","0");
INSERT INTO tbl_resolution VALUES("312 - 2010","","Approve Mun Ord # 24-2010, of the SB of Agoo, LU, An Ord Prohibiting Owners, Operators, Proprietors & Managers of All Business Establishments from Using Streets, Sidewalks & Road Shoulders in the Mun of Agoo, LU, as Exclusive Parking Areas & Providing Penalties for Violation Thereof","10","Resolution 312-2010.pdf","21","2010-11-11","0");
INSERT INTO tbl_resolution VALUES("312 - 2011","","Endorse the Puerto Princesa Undergrond River (PPUR) to become one of the “New 7 Wonders of Nature” ","21","Resolution 312-2011.pdf","21","2011-09-01","0");
INSERT INTO tbl_resolution VALUES("312 - 2012","","Condole with the bereaved family of Mrs. Pacifica C. Posadas.","1,3,5,7,9,10,11,12,13,18,19,20","Resolution 312-2012.pdf","21","2012-09-06","0");
INSERT INTO tbl_resolution VALUES("312 - 2013","","MOA w/ DENR, 1590 Energy Corp., LGU Bauang & Brgy Payocpoc Sur in connection w/ the “Creation of the Multi-Partite Monitoring Team, Environmental Monitoring Fund & Environmental Guarantee Fund & Related Matters at the Bauang Diesel Power Plant ","1","RESOLUTION 312-2013.pdf","21","2013-09-19","0");
INSERT INTO tbl_resolution VALUES("313 - 1999","","P3,000.00 F/A to Brgy. Juan Cartas, Caba, LU, for the purchase of materials for their day care center","20","RESOLUTION NO.313-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("313 - 2007","","Authorize Gov. Manuel Ortega to issue an Executive Order to create a Task Force that would undertake various mitigating measures, clean-up activities and implement programs and projects to avoid a coal spillage in the future that would endanger not only our marine resources but our environment as a whole","31","RESOLUTION NO. 313-2007.pdf","21","2007-11-22","0");
INSERT INTO tbl_resolution VALUES("313 - 2008","","Amend the MOA between the PGLU and the LBP regarding the salary loan offered by the latter to officials and employees of the Province providing therein the standardization of the loanable amount from 3 months to 6 months with term payable in 3 years regardless of their rank/position","1","RESOLUTION NO. 313-2008.pdf","21","2008-10-16","0");
INSERT INTO tbl_resolution VALUES("313 - 2010","","Return Mun Ord # 16-2010, of the SB of Agoo, LU, An Ord Providing for Prohibited Acts & their Corresponding Penalties for All Drivers, Conductors, & Operators Plying the Sts of the Mun of Agoo, LU","10","Resolution 313-2010.pdf","21","2010-11-11","0");
INSERT INTO tbl_resolution VALUES("313 - 2011","","Set aside P20,000.00 as F/A to the family of the late Mr. ReydanSolina of Maliclico, Sudipen, LUu","3","Resolution 313-2011.pdf","21","2011-09-01","0");
INSERT INTO tbl_resolution VALUES("313 - 2012","","Revise the amount under SP Res # 247-2012 for the rehab of Santol-San Gabriel Rd from P1M to P5M","1","Resolution 313-2012.pdf","21","2012-09-13","0");
INSERT INTO tbl_resolution VALUES("313 - 2013","","MOA with DA in connection with the implementation of the PRDP.","3,4","RESOLUTION 313-2013.pdf","21","2013-09-26","0");
INSERT INTO tbl_resolution VALUES("314 - 1999","","P3,000.00 F/A to Brgy. Liquicia, Caba, LU, for the building up of comfort room at their day care center","20","RESOLUTION NO.314-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("314 - 2007","","Give full authority to Gov. Manuel Ortega to issue an Executive Order mandating the Transporter, Sea Pine Shipping Corp. and HOLCIM, Bacnotan Branch, Bacnotan, LU, for the immediate retrieval of the stranded Indonesian ","31","RESOLUTION NO. 314-2007.pdf","21","2007-11-22","0");
INSERT INTO tbl_resolution VALUES("314 - 2008","","Enact an Appropriation  in the amount of P51,211,625.48 for Revised Supplemental Budget No. 2, of the General Fund ","2","RESOLUTION NO. 314-2008.pdf","21","2008-10-16","0");
INSERT INTO tbl_resolution VALUES("314 - 2010","","Approve City Ord # 2010-007, of the City of San Fernando, LU, An Ord Amending Traffic Ord # 1, s 1956, Otherwise Known as an Ord Codifying the Traffic Ord of the Mun of San Fernando, Prov of LU, as Amended by City Ord # 2004-007","10","Resolution 314-2010.pdf","21","2010-11-11","0");
INSERT INTO tbl_resolution VALUES("314 - 2011","","Realign P1 M from the project savings to Gasoline, Oil & Lubricant Expenses for the maintenance of Roads","3","Resolution 314-2011.pdf","21","2011-09-08","0");
INSERT INTO tbl_resolution VALUES("314 - 2012","","Approve the FY 2012 GF SB # 7, of Agoo, La Union.","1","Resolution 314-2012.pdf","21","2012-09-13","0");
INSERT INTO tbl_resolution VALUES("314 - 2013","","Approve implementation of PRDP of the DA w/ the commitment of the PGLU to provide its counterpart under the I-BUILD (10% LGU Equity), and I-REAP (20% LGU Equity)","1","RESOLUTION 314-2013.pdf","21","2013-09-26","0");
INSERT INTO tbl_resolution VALUES("315 - 1999","","P3,000.00 F/A to Brgy. Sobredillo, Caba, LU, for the improvement of their day care center","20","RESOLUTION NO.315-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("315 - 2007","","Require Mr. Rodger Lobiano to explain in writing the reason upon receipt of this resolution why he failed to comply to the invitation of the SP and to require him again to be present on November 29, 2007","30","RESOLUTION NO. 315-2007.pdf","21","2007-11-22","0");
INSERT INTO tbl_resolution VALUES("315 - 2008","","Enact an Appropriation  in the amount of P28,800,451,67 for Revised Supplemental Budget No. 3, of the General Fund ","2","RESOLUTION NO. 315-2008.pdf","21","2008-10-16","0");
INSERT INTO tbl_resolution VALUES("315 - 2010","","Recognize Folklorikoti La Union as the Premier Ilocano Folk Music & Dance Group in the Province, commending it & appropriating funds thereof","1","Resolution 315-2010.pdf","21","2010-11-11","0");
INSERT INTO tbl_resolution VALUES("315 - 2011","","Thank the Phil Tour Operators Asso (PHILTOA) for giving the province a La Union Hour & launching program for the 6th La Union Surfing Break during the 22nd Phil Travel Mart ","9,19","Resolution 315-2011.pdf","21","2011-09-08","0");
INSERT INTO tbl_resolution VALUES("315 - 2012","","Support HB # 6395 “Mandating All Public Utility Buses Plying the Streets of Metro Manila & all Prov’l Rds in the Country to Install Speed Limiters”","10","Resolution 315-2012.pdf","21","2012-09-13","0");
INSERT INTO tbl_resolution VALUES("315 - 2013","","Appropriate P50,000.00 for the 2013 10 Outstanding Elem and Secondary School Teachers.","1","RESOLUTION 315-2013.pdf","21","2013-09-26","0");
INSERT INTO tbl_resolution VALUES("316 - 1999","","P3,000.00 F/A to Brgy. Santiago Norte, Caba, LU, for the building up of comfort room at the day care center","20","RESOLUTION NO.316-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("316 - 2007","","MOA w/ the PTA – DOT, Central office in connection with the proposed turn-over of the PTA properly located at Rosario, LU for the La Union One-Stop-Shop and Tourism, Trade and Investment Promotions Center","1","RESOLUTION NO. 316-2007.pdf","21","2007-11-29","0");
INSERT INTO tbl_resolution VALUES("316 - 2008","","MOA w/ DOH-CHD – Ilocos Region in connection with the grant of facility for Reproductive Health and Family Planning Service ","1,18","RESOLUTION NO. 316-2008.pdf","21","2008-10-16","0");
INSERT INTO tbl_resolution VALUES("316 - 2010","","Endorse retention of Mr. Juan Victor Duyan Jr., as Asst. Reg’l Dir of LTO","1,18","Resolution 316-2010.pdf","21","2010-11-11","0");
INSERT INTO tbl_resolution VALUES("316 - 2011","","Approve the FY 2011, GF SB # 1, of Caba, LU","20","Resolution 316-2011.pdf","21","2011-09-08","0");
INSERT INTO tbl_resolution VALUES("316 - 2012","","Assure that whatever amount will be provided by the Office of the President for the prov’l roadways/infra damaged during Typhoon Helen will be completed by the PGLU","1,18","Resolution 316-2012.pdf","21","2012-09-13","0");
INSERT INTO tbl_resolution VALUES("316 - 2013","","MOA w/ DA re: fund transfer amounting P4M to support the implementation of the “Sustaining the Rice Self-Sufficiency Program of LU”","1","RESOLUTION 316-2013.pdf","21","2013-09-26","0");
INSERT INTO tbl_resolution VALUES("317 - 1999","","P3,000.00 F/A to Brgy. Las-ud, Caba, LU, for the purchase of materials for their day care center","20","RESOLUTION NO.317-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("317 - 2007","","Extend PHILHEALTH Insurance Coverage to all Barangay Officials of the province","18","RESOLUTION NO. 317-2007.pdf","21","2007-11-29","0");
INSERT INTO tbl_resolution VALUES("317 - 2008","","MOA w/ SLC for the accommodation of Business Education Office Trainees for their On-the-Job Training (OJT)","31","RESOLUTION NO. 317-2008.pdf","21","2008-10-23","0");
INSERT INTO tbl_resolution VALUES("317 - 2010","","MOA w/ Red Ribbon Bakeshop in connection w. its intention to rent portion of Mabanag Quadrangle from December 15, 2010 to December 31, 2010","18","Resolution 317-2010.pdf","21","2010-11-18","0");
INSERT INTO tbl_resolution VALUES("317 - 2011","","Approve the FY 2011 GF SB # 2, of Pugo, LU","20","Resolution 317-2011.pdf","21","2011-09-08","0");
INSERT INTO tbl_resolution VALUES("317 - 2012","","Approve SB # 3 of the Economic Enterprise involving P965,182.00","1","Resolution 317-2012.pdf","21","2012-09-13","0");
INSERT INTO tbl_resolution VALUES("317 - 2013","","Adjust SG of Ms. Bresilda Jucar to SG 3/Step 1 effective September 29, 2013","1","RESOLUTION 317-2013.pdf","21","2013-09-26","0");
INSERT INTO tbl_resolution VALUES("318 - 1999","","P3,000.00 F/A to Brgy. Santiago Sur, Caba, LU, for the purchase of materials for their day care center","20","RESOLUTION NO.318-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("318 - 2007","","Negotiate a Loan Agreement to the Asian Development Bank, World Bank, and DOH which every amount is more viable for the La Union Integrated Public Health and Hospital Services Development Program: a Five (5) Year Provincewide Investment Plan (CY 2008-2013)","18","RESOLUTION NO. 318-2007.pdf","21","2007-11-29","0");
INSERT INTO tbl_resolution VALUES("318 - 2008","","MOA w/ DA-RFUI relative to the establishment of a “Trichoderma Laboratory” on a Cost sharing Arrangement","7","RESOLUTION NO. 318-2008.pdf","21","2008-10-23","0");
INSERT INTO tbl_resolution VALUES("318 - 2010","","Affirm Decision rendered by SB of Aringay, LU against KgdLitoGayo","20","Resolution 318-2010.pdf","21","2010-11-18","0");
INSERT INTO tbl_resolution VALUES("318 - 2011","","Approve the FY 2011 GF SB # 3, of Pugo, LU","20","Resolution 318-2011.pdf","21","2011-09-08","0");
INSERT INTO tbl_resolution VALUES("318 - 2012","","Authorize the Governor to waive our rights to confidentiality of information relating to the Secrecy of Bank Deposits","1","Resolution 318-2012.pdf","21","2012-09-13","0");
INSERT INTO tbl_resolution VALUES("318 - 2013","","Approve the FY 2013 GF SB # 1, of the SB of Santol, La Union.","1","RESOLUTION 318-2013.pdf","21","2013-09-26","0");
INSERT INTO tbl_resolution VALUES("319 - 1999","","P3,000.00 F/A to Brgy. Bautista, Caba, LU, for the purchase of materials for their day care center","20","RESOLUTION NO.319-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("319 - 2007","","Authorize Gov. Manuel Ortega to transfer Item No. 77, Supervising Labor and Employment Officer IV (regular position) under the Office of the Governor – Public Employment Services Office  to OPG Persona Staff Division and be converted as Supervising Administrative Officer (co-terminus position)","18","RESOLUTION NO. 319-2007.pdf","21","2007-12-06","0");
INSERT INTO tbl_resolution VALUES("319 - 2008","","Enact an Appropriation  in the amount of P8,052,556.73 for Supplemental Budget No. 4, of the General Fund ","20","RESOLUTION NO. 319-2008.pdf","21","2008-11-06","0");
INSERT INTO tbl_resolution VALUES("319 - 2010","","Approve Mun Ord # 25-2010, of the SB of Agoo, LU, An Ord Creating the Local HIV/AIDS Council in the Mun of Agoo & Providing Appropriation Thereof","18","Resolution 319-2010.pdf","21","2010-11-18","0");
INSERT INTO tbl_resolution VALUES("319 - 2011","","25-Yr. Contract of Lease w/ DENR-PENRO, pertaining to a 534 sq.m. lot at Sevilla, CSF, for the former’s bldg","20","Resolution 319-2011.pdf","21","2011-09-08","0");
INSERT INTO tbl_resolution VALUES("319 - 2012","","MOA with BFAR re: turn-over of 1 patrol boat for fishery law enforcement, coastal resource management & rescue & relief operations.","3","Resolution 319-2012.pdf","21","2012-09-13","0");
INSERT INTO tbl_resolution VALUES("319 - 2013","","Approve the FY 2013 GF SB # 2, of the SB of Pugo, La Union.","1","RESOLUTION 319-2013.pdf","21","2013-09-26","0");
INSERT INTO tbl_resolution VALUES("320 - 1999","","P10,000.00 F/A to the SB of Burgos, LU, for the improvement of their water works system at Sitio Calaticat, Bilis","20","RESOLUTION NO.320-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("320 - 2007","","MOA w/ the Philippine Naval Forces Northern Luzon, Philippine Navy, Philippine National Police, Region Office I, Philippine Coastguard District Northern Luzon, DENR, City Gov’t of San Fernando, LU &HOLCIM Phil. pertaining to the implementation of the “Protect San Fernando Bay Movement” programs and projects","20","RESOLUTION NO. 320-2007.pdf","21","2007-12-06","0");
INSERT INTO tbl_resolution VALUES("320 - 2008","","Supplemental Contract of Service, with Ms. Marife Mayo relative to her entitlement of the new compensation scheme or a 10% salary increase effective July 1, 2008","20","RESOLUTION NO. 320-2008.pdf","21","2008-11-06","0");
INSERT INTO tbl_resolution VALUES("320 - 2010","","Congratulate UCC, w/c is celebrating its 100th Foundation Anniversary this November 2010","10","Resolution 320-2010.pdf","21","2010-11-18","0");
INSERT INTO tbl_resolution VALUES("320 - 2011","","Congratulate the PGLU for being cited as one of the Top Ten High Performing Provinces for 2010","10","Resolution 320-2011.pdf","21","2011-09-08","0");
INSERT INTO tbl_resolution VALUES("320 - 2012","","Condole with family of the late Rev. Fr. Esteban M. Mosuela, Bangar, La Union.","1,3,5,7,9,10,11,12,13,18,19,20","Resolution 320-2012.pdf","21","2012-09-13","0");
INSERT INTO tbl_resolution VALUES("320 - 2013","","Approve the FY 2013 GF SB #  3, of Sudipen, La Union.","1","RESOLUTION 320-2013.pdf","21","2013-09-26","0");
INSERT INTO tbl_resolution VALUES("321 - 1999","","Enough amount as F/A to Brgy. San Benito Sur, LU, for the improvement of their health center","20","RESOLUTION NO.321-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("321 - 2007","","Authorize Gov. Manuel Ortega to enter into a Memorandum of Agreement, with the Regional Development Council (RDC-Region I) and the National Economic and Development Authority (NEDA, San Fernando City for the institutionalization on the use of the Provincial and Local Planning and Expenditure Management (PLPEM) guidelines in the province","20","RESOLUTION NO. 321-2007.pdf","21","2007-12-06","0");
INSERT INTO tbl_resolution VALUES("321 - 2008","","Realign the amount of P347,014 to Gasoline, Oil and Lubricant Expenses Account under the provincial share in the Virginia Tobacco Excise Tax (RA 7171)","20","RESOLUTION NO. 321-2008.pdf","21","2008-11-06","0");
INSERT INTO tbl_resolution VALUES("321 - 2010","","An Ord appropriating P13 M for SB # 5, of the GF","1","Resolution 321-2010.pdf","21","2010-11-25","0");
INSERT INTO tbl_resolution VALUES("321 - 2011","","Congratulate the City Gov’t of San Fernando, LU, for being cited as one of the Top Ten High Performing Component Cities in the Phils for 201","10","Resolution 321-2011.pdf","21","2011-09-08","0");
INSERT INTO tbl_resolution VALUES("321 - 2012","","Condole with the bereaved family of SBM Teresita Dumaguin.","1,3,5,7,9,10,11,12,13,18,19,20","Resolution 321-2012.pdf","21","2012-09-13","0");
INSERT INTO tbl_resolution VALUES("321 - 2013","","Contract of Consultancy with Dr. Manuel R. Borja as OPG Consultant on CSF Dev’t Affairs.","1","RESOLUTION 321-2013.pdf","21","2013-09-26","0");
INSERT INTO tbl_resolution VALUES("322 - 1999","","P3,000.00 F/A to Brgy. San Jose, Caba, LU, for the purchase of materials for their day care center","20","RESOLUTION NO.322-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("322 - 2007","","Enact an Appropriation Ordinance appropriating the amount of P3,466,226.67 for Supplemental Budget No. 12 of the General Fund to cover the payment of MOE of the Office of the governor, 20% Development Fund and Capital Outlay of Bacnotan and Rosario District Hospitals","1","RESOLUTION NO. 322-2007.pdf","21","2007-12-13","0");
INSERT INTO tbl_resolution VALUES("322 - 2008","","Request PGMA to declare March 2, 2009 as a Special Non Working Holiday in the province ","31","RESOLUTION NO. 322-2008.pdf","21","2006-11-06","0");
INSERT INTO tbl_resolution VALUES("322 - 2010","","Approve Mun Ord # 18-2010, of the SB of San Juan, LU, “Legislative Authorization of the 2011 Municipal Budget”","1","Resolution 322-2010.pdf","21","2010-11-25","0");
INSERT INTO tbl_resolution VALUES("322 - 2011","","Condole w/ family of Baby Carissa Chantelle Joshua C. Ortega","3","Resolution 322-2011.pdf","21","2011-09-15","0");
INSERT INTO tbl_resolution VALUES("322 - 2012","","Commend PNP for recovering the getaway vehicle used to assassinate Mayor Dante Garcia of Tubao, La Union.","20","Resolution 322-2012.pdf","21","2012-09-13","0");
INSERT INTO tbl_resolution VALUES("323 - 1999","","P10,000.00 F/A to Brgy. Ambangonan, Pugo, LU, for the construction of their day care center","20","RESOLUTION NO.323-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("323 - 2007","","Realign the amount of P700,000.00 from the Irrigation System Program to the La Union Greening Program","18","RESOLUTION NO. 323-2007.pdf","21","2007-12-13","0");
INSERT INTO tbl_resolution VALUES("323 - 2008","","Approve MunOrd # 21-2008 of the SB of San Juan, LU, entitled: “An Ord Imposing Fine Upon Tricycle Drivers for not Displaying the Prescribed Fare Matrix in a Plastic Laminated Form”","31","RESOLUTION NO. 323-2008.pdf","21","2008-11-06","0");
INSERT INTO tbl_resolution VALUES("323 - 2010","","Approve FY 2010 GF SB # 6, of Bauang, LU","1","Resolution 323-2010.pdf","21","2010-11-25","0");
INSERT INTO tbl_resolution VALUES("323 - 2012","","Approve SB # 2, of the province in the amount of P10,350,447.34","1","Resolution 323-2012.pdf","21","2012-09-20","0");
INSERT INTO tbl_resolution VALUES("323 - 2013","","Approve the CY2014 Supplemental AIP of the Province","1","RESOLUTION 323-2013.pdf","21","2013-10-02","0");
INSERT INTO tbl_resolution VALUES("324 - 1999","","Enough amount as F/A to Brgy. Sta. Lucia, Aringay, LU, for the purchase of a grass cutter","20","RESOLUTION NO.324-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("324 - 2007","","TOPPS 2007\n\n1.	MS. EUFEMIA THELMA M. ABREW\n2.	MR. ORLANDO M. AGLUSOLUS\n3.	MS. JANET S. DOMENDEN\n4.	MS. ANNA MARIE L. FORTUITO\n5.	MR. BERNARD V. GACAYAN\n6.	MS. HELEN P. GUNDRAN\n7.	MS. EDNA B. HERNANDEZ\n8.	MR. EMILIO B. HIPONA\n9.	MS. LENNY D. MIEDES\n10.	MR. CARLOS C. MILANA\n11.	MR. ALBERT F. PADILLA\n12.	MS. MYRNA O. PICAZO\n13.	MR. JAIME B. RULLODA\n14.	MS. NANCY F. SAMONTE\n15.	MS. AILEEN T. SERRANO\n16.	MR. JERICO H. TABING\n","37","RESOLUTION NO. 324-2007.pdf","21","2007-12-13","0");
INSERT INTO tbl_resolution VALUES("324 - 2008","","Approve City Ord # 2008-001, of the SP of the City of San Fernando, LU entitled: “An Ord amending Tricycle Ord # 97-005, Otherwise Known as an Ord Ordaining Consolidation of All rules, Regulations and Ordinances in the Use, Operation, Maintenance and Issuance of Franchise of Motorized Tricycles Within the Territorial Jurisdiction of the City of San Fernando and Prescribing Penalties for Violation Thereof, and Repealing Ord # 2005-006”","20","RESOLUTION NO. 324-2008.pdf","21","2008-11-06","0");
INSERT INTO tbl_resolution VALUES("324 - 2010","","Approve FY 2010 GF SB # 5, of Agoo, LU","1","Resolution 324-2010.pdf","21","2010-11-25","0");
INSERT INTO tbl_resolution VALUES("324 - 2011","","Approve FY 2011 GF SB # 3, of Luna, LU","1","Resolution 324-2011.pdf","21","2011-09-15","0");
INSERT INTO tbl_resolution VALUES("324 - 2012","","Approve the FY 2012 GF SB # 6, of Bagulin, La Union.","1","Resolution 324-2012.pdf","21","2012-09-20","0");
INSERT INTO tbl_resolution VALUES("324 - 2013","","Approve the FY 2013 GF SB # 1, of Bacnotan, La Union.","1","RESOLUTION 324-2013.pdf","21","2013-10-02","0");
INSERT INTO tbl_resolution VALUES("325 - 1999","","P6,500.00 F/A to the PTCA of Bungro-Sucoc E/S, Luna, LU, for the repair of the school gate","20","RESOLUTION NO.325-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("325 - 2007","","Approve Ord # 18-2006, of the Municipality of Agoo, LU, entitled: “Approving the Rental Rates on the Spaces in the Agoo Economic Enterprise Center”","20","RESOLUTION NO. 325-2007.pdf","21","2007-12-13","0");
INSERT INTO tbl_resolution VALUES("325 - 2008","","MOA w/ LUPGEMPCI in connection with the Automatic Salary Deduction of the Loan amortization of Members/Borrowers","20","RESOLUTION NO. 325-2008.pdf","21","2008-11-06","0");
INSERT INTO tbl_resolution VALUES("325 - 2010","","Approve FY 2010 GF SB # 10, of Bauang, LU","1","Resolution 325-2010.pdf","21","2010-11-25","0");
INSERT INTO tbl_resolution VALUES("325 - 2011","","Approve Mun Ord # 06, s 2011, of the SB of Balaoan, LU, “An Ord Prohibiting the Parking of Motor Vehicles on Both Sides of Lopez St from the Corner of Balaoan-Santol Rd to the Intersection of Concepcion & Lopez St from 6AM to 6PM During School Days”","9","Resolution 325-2011.pdf","21","2011-09-15","0");
INSERT INTO tbl_resolution VALUES("325 - 2012","","Approve the FY 2012 GF SB # 7, of Bagulin, La Union.","1","Resolution 325-2012.pdf","21","2012-09-20","0");
INSERT INTO tbl_resolution VALUES("325 - 2013","","Approve Mun Ord # 01-2013, of the SB of San Juan, LU, “An Ord Authorizing the Zoning of Cockpit in Brgy Nadsaag, as Amended”.","7","RESOLUTION 325-2013.pdf","21","2013-10-02","0");
INSERT INTO tbl_resolution VALUES("326 - 1999","","P10,000.00 F/A to Brgy. Tococ, Sto. Tomas, LU, for the rip-rapping of the embankment of the Manacliw river","20","RESOLUTION NO.326-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("326 - 2007","","Approve Ord # 06-2007, of the Municipality of Agoo, LU, entitled: “Amending Article 51, Section 247 to 255 of the 2002 Revenue Code of Agoo”","20","RESOLUTION NO. 326-2007.pdf","21","2007-12-13","0");
INSERT INTO tbl_resolution VALUES("326 - 2010","","Approve FY 2010 GF SB # 3, of the City of San Fernando, LU","1","Resolution 326-2010.pdf","21","2010-11-25","0");
INSERT INTO tbl_resolution VALUES("326 - 2011","","Return Mun Ord # 17-2010, of the SB of San Juan, LU, “An Ord Authorizing the Reclassification of Agricultural Land at BrgyCacapian, this Municipality, in Favor of the Northern Residential Estate, Inc.","3","Resolution 326-2011.pdf","21","2011-09-15","0");
INSERT INTO tbl_resolution VALUES("326 - 2012","","Condole with the bereaved family of Mr. Norberto Paulino.","1,3,5,7,9,10,11,12,13,18,19,20","Resolution 326-2012.pdf","21","2012-09-20","0");
INSERT INTO tbl_resolution VALUES("326 - 2013","","Approve Mun Ord # 11-2013, of the SB of San Juan, LU, “An Ord Allowing the Relocation of the Present Dumpsite in Brgy Lubing”","7","RESOLUTION 326-2013.pdf","21","2013-10-02","0");
INSERT INTO tbl_resolution VALUES("327 - 1999","","Enough amount as F/A to Brgy. Lomboy, Sto. Tomas, LU, for the concreting of the narrow road","20","RESOLUTION NO.327-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("327 - 2007","","Enact the General Fund Annual Budget of the PGLU and the Annual Budgets of District Hospitals of the province transformed into Economic Enterprises by virtue of SP Resolution No. 038-2005, for FY 2008","1","RESOLUTION NO. 327-2007.pdf","21","2007-12-13","0");
INSERT INTO tbl_resolution VALUES("327 - 2010","","Approve FY 2010 GF SB # 4, of the City of San Fernando, LU`","1","Resolution 327-2010.pdf","21","2010-11-25","0");
INSERT INTO tbl_resolution VALUES("327 - 2011","","Return for amendment, Mun Ord # 37, s 2011, of the SB of Luna, LU, “An Ord Providing for a Gender Equality & Dev’t Code in the Mun of Luna, Province of LU & for other Purposes”","5","Resolution 327-2011.pdf","21","2011-09-15","0");
INSERT INTO tbl_resolution VALUES("327 - 2012","","Condole with the bereaved family of Mrs. Valeriana S. Valencia.","1,3,5,7,9,10,11,12,13,18,19,20","Resolution 327-2012.pdf","21","2012-09-20","0");
INSERT INTO tbl_resolution VALUES("327 - 2013","","Approve Mun Ord # 50-2013, of the SB of Luna, LU, “An Ord Creating a Local Youth Dev’t Council of the Mun of Luna, LU & for Other Purposes”","10","RESOLUTION 327-2013.pdf","21","2013-10-02","0");
INSERT INTO tbl_resolution VALUES("328 - 1999","","Enough amount as F/A to the Eastern Poblacion Asso., Aringay, LU, for their auditorium’s pavement","20","RESOLUTION NO.328-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("328 - 2007","","MOA with the LBP in connection with the proposed implementation of the ATM E-card payroll system project in the PGLU","20","RESOLUTION NO. 328-2007.pdf","21","2007-12-13","0");
INSERT INTO tbl_resolution VALUES("328 - 2010","","Approve FY 2010 GF SB # 5, of the City of San Fernando, LU","1","Resolution 328-2010.pdf","21","2010-11-25","0");
INSERT INTO tbl_resolution VALUES("328 - 2011","","Return for amendment, Mun Ord # 38, s 2011, of the SB of Luna, LU, “An Ord Adopting the Child Welfare Code of the Mun of Luna, LU”","5","Resolution 328-2011.pdf","21","2011-09-15","0");
INSERT INTO tbl_resolution VALUES("328 - 2012","","Condole with the bereaved family of Mrs. Priscilla A. Boado.","1,3,5,7,9,10,11,12,13,18,19,20","Resolution 328-2012.pdf","21","2012-09-20","0");
INSERT INTO tbl_resolution VALUES("328 - 2013","","Approve Mun Ord # 15-2013, of the SB of San Juan, LU, “An Ord Creating the San Juan Tourism & Cultural Council Defining its Composition, Duties & Functions”","4","RESOLUTION 328-2013.pdf","21","2013-10-02","0");
INSERT INTO tbl_resolution VALUES("329 - 1999","","Enough amount as F/A to Brgy. Pideg, Tubao, LU, for the repair of their solar dryer","20","RESOLUTION NO.329-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("329 - 2007","","Require all gov’t agencies particularly the DPWH to secure first an endorsement of the project from the SP before they can issue a permit or sign anagreement w/ a private corporation developing, constructing or doing any kind of works w/n the province, to ensure that they will comply w/ the requirements set forth by law or any rules & regulations governing the same","1","RESOLUTION NO. 329-2007.pdf","21","2007-12-13","0");
INSERT INTO tbl_resolution VALUES("329 - 2010","","Approve FY 2010 GF SB # 5, of Balaoan, LU","1","Resolution 329-2010.pdf","21","2010-11-25","0");
INSERT INTO tbl_resolution VALUES("329 - 2011","","Return for amendment, Ord # 8, s 2011, of the SB of Bauang LU, “An Ord Amending Art 10, Sec 99 of Ord # 9, s 2011, An Ord Promulgating the Children’s Code of the Mun of Bauang”","5","Resolution 329-2011.pdf","21","2011-09-15","0");
INSERT INTO tbl_resolution VALUES("329 - 2012","","Approve Mun Ord # 20-2012, of the SB of Agoo, LU, “An Ord Creating a Land Information Office to Facilitate the Land Titling of Public Lands in Agoo, LU”","10","Resolution 329-2012.pdf","21","2012-09-27","0");
INSERT INTO tbl_resolution VALUES("329 - 2013","","Approve Ord # 18, s 2013, of the SB of Naguilian, LU, “An Ord to Declare Kakawate or Madre de Cacao Known Scientifically as GliciridiaSepium as the Official Tree of the Mun of Naguilian, LU”","10","RESOLUTION 329-2013.pdf","21","2013-10-02","0");
INSERT INTO tbl_resolution VALUES("330 - 1999","","Enough amount as F/A to Brgy. Pangao-aoan West, Aringay, LU, for the purchase of additional streetlights","20","RESOLUTION NO.330-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("330 - 2007","","Request Gov. Manuel Ortega to issue a Cease and Desist Order on the on-going excavations along the National Highway from Sudipen to Rosario, LU to GLOBE Telecom Inc., Ericsson Telecom Inc., their contractors and sub-contractors and other agencies/offices concerned","3","RESOLUTION NO. 330-2007.pdf","21","2007-12-13","0");
INSERT INTO tbl_resolution VALUES("330 - 2010","","Approve FY 2010 GF SB # 2, of Bacnotan, LU","1","Resolution 330-2010.pdf","21","2010-11-25","0");
INSERT INTO tbl_resolution VALUES("330 - 2011","","Approve EO # 003-2011, of Mayor Joy Merin, Bangar, LU, “Re-organizing the Mun Poverty Reduction Action Team (MPRAT) of Bangar, LU”","5","Resolution 330-2011.pdf","21","2011-09-15","0");
INSERT INTO tbl_resolution VALUES("330 - 2012","","Approve Mun Ord # 08-2012, of the SB of San Juan, LU, “An Ord Naming the 2 New Bldgs w/n the San Juan Public Market”","10","Resolution 330-2012.pdf","21","2012-09-27","0");
INSERT INTO tbl_resolution VALUES("330 - 2013","","Approve Mun Ord # 5-2013, of the SB of San Gabriel, LU, “An Ord Requiring the Foodservice Industry w/n the Territorial Jurisdiction of the Mun of San Gabriel, LU to Include ½ Cup of Cooked Rice in their Menu”","10","RESOLUTION 330-2013.pdf","21","2013-10-02","0");
INSERT INTO tbl_resolution VALUES("331 - 1999","","Congratulate Hon. Edgardo Angara as the New DA Secretary","17","RESOLUTION NO.331-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("331 - 2007","","Enact an AO amounting P23,332,737.00 for Supplemental Budget No.1 3 of the General Fund to cover the payment of MOOE of the Office of the Governor and Office of the Provincial Treasurer, Overtime Pay of the Office of the Provincial Treasurer and Provincial Budget Officer and Subsidy to Hospitals (Terminal Leave Pay)","1","RESOLUTION NO. 331-2007.pdf","21","2007-12-20","0");
INSERT INTO tbl_resolution VALUES("331 - 2010","","Approve Ord # 002-2010, of the SB of Bangar, LU, “An Ord Requiring All Scholars Under the Mun Scholarship Program of Bangar, LU to Support the Mun Clean & Green Program by Requiring Each Scholar to Plant & Care at Least 5 Trees at the Start of Every Sem”","18","Resolution 331-2010.pdf","21","2010-11-25","0");
INSERT INTO tbl_resolution VALUES("331 - 2011","","Approve EO # 004-2011, of Mayor Joy Merin, Bangar, LU, Re-organizing the Mun Council for the Protection of Children (MCPC) of the Mun Bangar, LU, its Composition & Functions”","5","Resolution 331-2011.pdf","21","2011-09-15","0");
INSERT INTO tbl_resolution VALUES("331 - 2012","","Confirm the Awardees of the 10 Most Outstanding Public School Teachers for SY 2012-2013.","1,3,5,7,9,10,11,12,13,18,19,20","Resolution 331-2012.pdf","21","2012-09-27","0");
INSERT INTO tbl_resolution VALUES("331 - 2013","","Require SB Tubao, LU to submit requirements/documents relative to their Res # 33, s 2013 (upgrade Mun Dumpsite from Category 1 to Category 3 Landfill for the construction of an Engineered Sanitary Landfill for Baguio City)","10","RESOLUTION 331-2013.pdf","21","2013-10-02","0");
INSERT INTO tbl_resolution VALUES("332 - 1999","","Congratulate Hon. Ernesto Maceda as the Phil. Ambassador to the USA","17","RESOLUTION NO.332-99.pdf","21","1999-06-03","0");
INSERT INTO tbl_resolution VALUES("332 - 2007","","Grant Additional/Extra Cash Gift of P10,000.00 each to all provincial personnel in the total amount of P13,540,000.00","20","RESOLUTION NO. 332-2007.pdf","21","2007-12-20","0");
INSERT INTO tbl_resolution VALUES("332 - 2010","","Create the Provincial AIDS Assistance Team (PAAT)","1,10","Resolution 332-2010.pdf","21","2010-11-25","0");
INSERT INTO tbl_resolution VALUES("332 - 2011","","Return for amendment, Ord # 7, emb in Res # 203, s 2011, of the SB of Bauang, LU, “An Ord Creating the Mun Meat Inspection Service of the Mun of Bauang, LU”","10","Resolution 332-2011.pdf","21","2011-09-15","0");
INSERT INTO tbl_resolution VALUES("332 - 2012","","Service Level Agreement (SLA) w/ DOH-CHD-ILOCOS in connection w/ the management & implementation of the Annual Operational Plan (AOP) of the Provincewide Investment Plan for Health for CY 2012","18","Resolution 332-2012.pdf","21","2012-09-27","0");
INSERT INTO tbl_resolution VALUES("332 - 2013","","Approve the FY 2013 GF SB # 6, of Agoo, La Union.","8","RESOLUTION 332-2013.pdf","21","2013-10-10","0");
INSERT INTO tbl_resolution VALUES("333 - 1999","","Deny NPC’s request for endorsement of the 230 KW Bakun Transmission Line Project at Sudipen","17","RESOLUTION NO.333-99.pdf","21","1999-06-10","0");
INSERT INTO tbl_resolution VALUES("333 - 2007","","Approve FY 2007 GF SB # 5, of Agoo, LU","2","RESOLUTION NO. 333-2007.pdf","21","2007-12-20","0");
INSERT INTO tbl_resolution VALUES("333 - 2011","","Approve Ord # 2010-079, of the SB of Santol, LU, “Ord Amending Ord # 2010-077, Otherwise Known as the Senior Citizens Code of the Mun of Santol, LU, Part Art V, Sec 12 & Art XIII, Sec 26”","5","Resolution 333-2011.pdf","21","2011-09-15","0");
INSERT INTO tbl_resolution VALUES("333 - 2012","","Approve the programming for RA 7171 & Burley Excise Tax amounting P105,947,639.00","1","Resolution 333-2012.pdf","21","2012-10-04","0");
INSERT INTO tbl_resolution VALUES("333 - 2013","","Approve Mun Ord # 165, “Transport & Traffic Code of Aringay, La Union.”","4","RESOLUTION 333-2013_001.pdf","21","2013-10-10","0");
INSERT INTO tbl_resolution VALUES("334 - 1999","","AO amounting P200,000.00 under RA 7171 ","20","RESOLUTION NO.334-99.pdf","21","1999-06-10","0");
INSERT INTO tbl_resolution VALUES("334 - 2007","","Approve FY 2007 GFSb # 11, of Bauang, LU","2","RESOLUTION NO. 334-2007.pdf","21","2007-12-20","0");
INSERT INTO tbl_resolution VALUES("334 - 2010","","Approve FY 2010 GF SB # 1, of Sto. Tomas, LU","1","Resolution 334-2010.pdf","21","2010-12-02","0");
INSERT INTO tbl_resolution VALUES("334 - 2011","","MOA w/ PHILHEALTH pertaining to the add’l sponsored enrollees for PHILHEALTH coverage & the new premium rate being implemented by PHILHEALTH ","1","Resolution 334-2011.pdf","21","2011-09-22","0");
INSERT INTO tbl_resolution VALUES("334 - 2012","","Approve Ord # 2012-99, of the SB of Pugo, LU, “An Ord Abolishing the Position of Midwife III, SG 13 & Creating the Position of Midwife I, SG 9, under the Office of the Mun Health Officer”","12","Resolution 334-2012.pdf","21","2012-10-04","0");
INSERT INTO tbl_resolution VALUES("334 - 2013","","Return Ord # 161, of the SB of Aringay, La Union, “An Ord to Amend Sec 13, 19 & 20 of Ord # 151, “The Scholarship Program of the Mun of Aringay, La Union”","6","RESOLUTION 334-2013.pdf","21","2013-10-10","0");
INSERT INTO tbl_resolution VALUES("335 - 1999","","AO amounting P50,000 for the 101st Phil. Independence","20","RESOLUTION NO.335-99.pdf","21","1999-06-10","0");
INSERT INTO tbl_resolution VALUES("335 - 2007","","Approve the Provincial Development Plan (PDP) of La Union for CY 2008-2013 (PEACE AGENDA)","21","RESOLUTION NO. 335-2007.pdf","21","2007-12-20","0");
INSERT INTO tbl_resolution VALUES("335 - 2010","","Approve FY 2010 GF SB # 6, of Balaoan, LU","1","Resolution 335-2010.pdf","21","2010-12-02","0");
INSERT INTO tbl_resolution VALUES("335 - 2011","","Approve CY 2011 Supplemental AIP of the Office of the Prov’l Engineer","1","Resolution 335-2011.pdf","21","2011-09-22","0");
INSERT INTO tbl_resolution VALUES("335 - 2012","","Approve Mun Ord # 10, s 2012, of the SB of San Juan, LU, “An Ord Authorizing the Conversion of the Position of Midwife II to Med Tech in the Plantilla of Regular Personnel”","12","Resolution 335-2012.pdf","21","2012-10-04","0");
INSERT INTO tbl_resolution VALUES("335 - 2013","","Return Ord # 164, of the SB of Aringay, La Union “The Anti-Truancy Ord for Elem & H/S Students in Aringay, La Union”","6","RESOLUTION 335-2013.pdf","21","2013-10-10","0");
INSERT INTO tbl_resolution VALUES("336 - 1999","","Amend SP Res No. 157-99 (RA 7171 projects)","20","RESOLUTION NO.336-99.pdf","21","1999-06-10","0");
INSERT INTO tbl_resolution VALUES("336 - 2007","","Approve the Annual Investment Plan for CY 2008","21","RESOLUTION NO. 336-2007.pdf","21","2007-12-20","0");
INSERT INTO tbl_resolution VALUES("336 - 2011","","Approve the FY 2011 GF SB # 2, of San Gabriel, LU","1","Resolution 336-2011.pdf","21","2011-09-22","0");
INSERT INTO tbl_resolution VALUES("336 - 2012","","Approve Res # 377, s 2012, of the SB of Bauang, LU, “Res Authorizing the Proposed Positions to be Created Under the Office of the Mun Eng’r, this Mun”","12","Resolution 336-2012.pdf","21","2012-10-04","0");
INSERT INTO tbl_resolution VALUES("336 - 2013","","Approve Mun Ord # 7-2013, of the SB of San Gabriel, La Union, “An Ord Regulating the Time of Operation of Business Establishments in the Mun of San Gabriel, La Union”","10","RESOLUTION 336-2013.pdf","21","2013-10-10","0");
INSERT INTO tbl_resolution VALUES("337 - 1999","","Invite NARCOM Officials relative to the buy-bust operation at Bauang ","21","RESOLUTION NO.337-99.pdf","21","1999-06-10","0");
INSERT INTO tbl_resolution VALUES("337 - 2007","","Approve the Provincial Development Investment Plan (PDIP) for 2008-2010","21","RESOLUTION NO. 337-2007.pdf","21","2007-12-20","0");
INSERT INTO tbl_resolution VALUES("337 - 2010","","Approve Mun Ord # 31, s 2010, of the SB of Burgos, LU, Ord Providing for the Computerization of All Ordinances, & Significant Resolutions Enacted & Adopted by the SB of Burgos, LU","11","Resolution 337-2010.pdf","21","2010-12-02","0");
INSERT INTO tbl_resolution VALUES("337 - 2011","","Approve the FY 2011 GF SB # 4, of Bagulin, LU","1","Resolution 337-2011.pdf","21","2011-09-22","0");
INSERT INTO tbl_resolution VALUES("337 - 2012","","MOA with DA re: establishment of 1 Unit Greenhouse Project at Bungol Demo Far, Balaoan, La Union.","2","Resolution 337-2012.pdf","21","2012-10-04","0");
INSERT INTO tbl_resolution VALUES("337 - 2013","","Approve Mun Ord # 6-2013, of the SB of San Gabriel, La Union, “An Ord Declaring & Fixing the First Monday of June Every Year as the Arbor Day or Tree Planting Day of the Mun of San Gabriel, La Union”.","10","RESOLUTION 337-2013.pdf","21","2013-10-10","0");
INSERT INTO tbl_resolution VALUES("338 - 1999","","Congratulate Hon. Rafael Buenaventura as the New BSP Governor","17","RESOLUTION NO.338-99.pdf","21","1999-06-17","0");
INSERT INTO tbl_resolution VALUES("338 - 2007","","MOA w/ the Center for Advance Philippine Studies (CAPS) & selected Local Government Units (LGUs) including the Municipality of Bauang, LU pertaining to the Expanded Implementation of the Integrated Support for Sustainable Urban Environment (ISSUE 2) program for a much cleaner and greener La Union and Community Environmental Health & Sanitation","1","RESOLUTION NO. 338-2007.pdf","21","2007-12-20","0");
INSERT INTO tbl_resolution VALUES("338 - 2011","","Urge DPWH, (1st& 2ndEng’g District) to conduct the repainting of the road protection line markings such as H-line, center line, edge line & pedestrian lane on all major roads ","1,21","Resolution 338-2011.pdf","21","2011-09-22","0");
INSERT INTO tbl_resolution VALUES("338 - 2012","","Congratulate students of BHC Educational Institution Inc., CSF as the Nat’l Champion during the 2012 Phil Society of Youth Science Clubs Science Olympiad – Bracket I (Elem Level), namely:\n\nJosef Alexis F. Estoque\nAndrei Janesa G. Liclican\nJan Vincent A. Simbol\n","1","Resolution 338-2012.pdf","21","2012-10-11","0");
INSERT INTO tbl_resolution VALUES("338 - 2013","","Return Mun Ord # 02-A-2013, of the SB of Agoo, LU, “An Ord Enacting the Code of General Ordinance of the Mun of Agoo, LU & for Other Purposes”.","10","RESOLUTION 338-2013.pdf","21","2013-10-10","0");
INSERT INTO tbl_resolution VALUES("339 - 1999","","Support Clean Air Act","17","RESOLUTION NO.339-99.pdf","21","1999-06-17","0");
INSERT INTO tbl_resolution VALUES("339 - 2007","","Renew the Contract of Service of Ms. Marife Mayo, as Asst. Provincial Early Childhood Care &Dev’t (ECCD) Officer for another year covering January 2, 2008 to December 30, 2008","5","RESOLUTION NO. 339-2007.pdf","21","2007-12-20","0");
INSERT INTO tbl_resolution VALUES("339 - 2010","","Approve Mun Ord # 15, s 2010, of the SB of San Juan, An Ord Amending the Name of the Edifice “Museo de San Juan” to “Museo de San Juan & Legislative Bldg”","10","Resolution 339-2010.pdf","21","2010-12-02","0");
INSERT INTO tbl_resolution VALUES("339 - 2011","","Approve SB # 3, involving P7,126,092.24","1","Resolution 339-2011.pdf","21","2011-09-22","0");
INSERT INTO tbl_resolution VALUES("339 - 2012","","Congratulate Ms. Marianne V. Cruz, Bronze Medalist on the 2012 Asia Internat’l Mathematical Olympiad.","1,3,5,7,9,10,11,12,13,18,19,20","Resolution 339-2012.pdf","21","2012-10-11","0");
INSERT INTO tbl_resolution VALUES("339 - 2013","","Condole with the bereaved family of the late Engr. Pablo A. Salanga.","2,3,4,5,6,7,8,9,10,11,12,13","RESOLUTION 339-2013.pdf","21","2013-10-10","0");
INSERT INTO tbl_resolution VALUES("340 - 1999","","Approve FY 1999 GF SB # 1, of Agoo, LU","20","RESOLUTION NO.340-99.pdf","21","1999-06-24","0");
INSERT INTO tbl_resolution VALUES("340 - 2007","","Set aside the amount P5,000.00 from the Sports Development Fund, as cash incentive to Ms. MarilouSibayan, who bagged 3 bronze medals from 3 Gymnastics Events during the 2007 Special Olympics World Summer Games at Shanghai, People’s Republic of China on October 2-11, 2007","1","RESOLUTION NO. 340-2007.pdf","21","2007-12-20","0");
INSERT INTO tbl_resolution VALUES("340 - 2010","","Approve Mun Ord # 21, s 2010, of the SB of Agoo, LU, An Ord Regulating Excavation w/n the Territorial Jurisdiction of the Mun of Agoo, LU","10","Resolution 340-2010.pdf","21","2010-12-02","0");
INSERT INTO tbl_resolution VALUES("340 - 2011","","Approve request of Naguilian Water District (NWD), Cabaritan Sur, Naguilian, LU, to excavate along Bauang-Baguio City Rd (Bo. Angin to Bo. Guesset) for the pipe laying for the extension of NWD pipelines","1,18","Resolution 340-2011.pdf","21","2011-09-22","0");
INSERT INTO tbl_resolution VALUES("340 - 2012","","Congratulate Mr. Moses Christopher C. Carpio, Silver Medalist on the 2012 8th Asia Cup Stars of the Olympic Math Finals & Outstanding Prize Awardee of the 2012 KMC Internat’l Mathematics Competition","1,3,5,7,9,10,11,12,13,18,19,20","Resolution 340-2012.pdf","21","2012-10-11","0");
INSERT INTO tbl_resolution VALUES("340 - 2013","","MOA with the Office of Sen. Aquilino “Koko” L. Pimentel III, pertaining to the implementation of the Indigency Medical Assistance Program at the Balaoan Dist Hosp in the amt of P200,000.00.","1","RESOLUTION 340-2013.pdf","21","2013-10-17","0");
INSERT INTO tbl_resolution VALUES("341 - 1999","","Approve FY 1999 GF SB # 2, of Tubao, LU","20","RESOLUTION NO.341-99.pdf","21","1999-06-24","0");
INSERT INTO tbl_resolution VALUES("341 - 2007","","Congratulate & commend Ms. Mary Grace Milgar and Ms. Ana Joy Fernandez who garnered both 2nd place (silver medal) and Muay Thai (Fly 51 kg), respectively, and set aside the amount of P14,000 as their cash incentive","1","RESOLUTION NO. 341-2007.pdf","21","2007-12-20","0");
INSERT INTO tbl_resolution VALUES("341 - 2010","","An Ord approving SB # 6 of the province involving P4,047,695.44","1","Resolution 341-2010.pdf","21","2010-12-02","0");
INSERT INTO tbl_resolution VALUES("341 - 2011","","Return Ord # 02-2011, of the SB of San Gabriel, LU, “An Ord Amending, Consolidating & Codifying All Laws, or Rules Relative to the Operation of Land Transportation and Regulating the Use of Streets, Roads, & Avenues w/n the Mun of San Gabriel, LU, & Providing Fines and/or Penalties for Every Violation Thereof”","10","Resolution 341-2011.pdf","21","2011-09-22","0");
INSERT INTO tbl_resolution VALUES("341 - 2012","","Approve Mun Ord # 15, s 2012, of the SB of Agoo, LU, “An Ord Requiring All Owners of Hotels, Inns w/ Swimming Pool Facilities & Beach Resorts w/ Cottages for Rent in the Mun of Agoo, LU, to Provide Lifeguards to their Clients/Costumers for their Safety & Security”","10","Resolution 341-2012.pdf","21","2012-10-11","0");
INSERT INTO tbl_resolution VALUES("341 - 2013","","MOA with LGU Bacnotan, LU and HOLCIM Phils Inc in connection with the Emergency Repair of Ballogo and NarraBridge Approaches along Rodriguez Rd (Bitalag to Quirino), Bacnotan, LU","1","RESOLUTION 341-2013.pdf","21","2013-10-17","0");
INSERT INTO tbl_resolution VALUES("342 - 1999","","Approve FY 1999 GF SB # 1, of Sudipen, LU","20","RESOLUTION NO.342-99.pdf","21","1999-06-24","0");
INSERT INTO tbl_resolution VALUES("342 - 2010","","Approve FY 2010 GF SB # 8, of Pugo, LU","20","Resolution 342-2010.pdf","21","2010-12-09","0");
INSERT INTO tbl_resolution VALUES("342 - 2011","","Return Mun Ord # 86-2011, of the SB of Sudipen, LU, “An Ord to Curtail the Sale, Rental, Transfer, Distribution, Manufacture and/or Production of Pirated, Counterfeit or Fake Goods, Articles, & for Other Purposes”","19","Resolution 342-2011.pdf","21","2011-09-22","0");
INSERT INTO tbl_resolution VALUES("342 - 2012","","Return for correction/modification/amendments Mun Ord # 07-2012, of the SB of San Juan, LU, “An Ord Enacting the Code of General Ordinances of the Mun of San Juan, LU & for Other Purposes”","10","Resolution 342-2012.pdf","21","2012-10-11","0");
INSERT INTO tbl_resolution VALUES("342 - 2013","","Condole with the bereaved family of the late Eng’r Mariano M. Chan.","1,2,3,4,5,6,7,8,9,10,11,12,13","RESOLUTION 342-2013.pdf","21","2013-10-17","0");
INSERT INTO tbl_resolution VALUES("343 - 1999","","Approve FY 1999 GF SB # 1, of Burgos, LU","20","RESOLUTION NO.343-99.pdf","21","1999-06-24","0");
INSERT INTO tbl_resolution VALUES("343 - 2010","","Commend P/C Orlando Mabutas, RD, PNP","1,3,18","Resolution 343-2010.pdf","21","2010-12-09","0");
INSERT INTO tbl_resolution VALUES("343 - 2011","","Congratulate the Mayors & Officialdom of the Mun of Bacnotan, Balaoan, San Juan, Agoo, Aringay, Bangar, Bauang, Luna, Naguilian, & Rosario for garnering the coveted Seal of Good Housekeeping Award","10","Resolution 343-2011.pdf","21","2011-09-22","0");
INSERT INTO tbl_resolution VALUES("343 - 2012","","MOA with DA RFU re: establishment of a Plant Nursery under the High Value Crops Dev’t Program to be funded by DA.","3","Resolution 343-2012.pdf","21","2012-10-11","0");
INSERT INTO tbl_resolution VALUES("343 - 2013","","Condole with the bereaved family of the late BC Rodrigo M. Hernandez, Santiago Norte, Caba, La Union","1,2,3,4,5,7,8,9,10,11,12,13","RESOLUTION 343-2013.pdf","21","2013-10-17","0");
INSERT INTO tbl_resolution VALUES("344 - 1999","","Approve FY 1999 GF AB, of Santol, LU","20","RESOLUTION NO.344-99.pdf","21","1999-06-24","0");
INSERT INTO tbl_resolution VALUES("344 - 2010","","Condole w/ Mrs. Rose BarbaLucina, Bangar, LU","10","Resolution 344-2010.pdf","21","2010-12-09","0");
INSERT INTO tbl_resolution VALUES("344 - 2011","","Approve the FY 2011 GF SB # 4, of Sudipen, LU","1","Resolution 344-2011.pdf","21","2011-09-29","0");
INSERT INTO tbl_resolution VALUES("344 - 2012","","MOA w/ MGB, DENR re: conduct of Hydrogeological & Geophysical Investigations at the Prov’l Capitol, Prov’l Motorpool& Prov’l Sports Complex Site, Brgy. Sibuan-Otong, Masicong&Pias, CSF, Rosario Dist Hosp & at the LU Honeybee Processing Center","1","Resolution 344-2012.pdf","21","2012-10-11","0");
INSERT INTO tbl_resolution VALUES("344 - 2013","","Return for amendment, Ord # 166, of the SB of Aringay, LU, “To Amend Sec 5, 6, 8 & 9, of Ord # 150, To Penalize Owners and/or Proprietors of Internet Café/Computer & Video Game Shops & Billiard Hall in Permitting Students/Pupils to Enter their Establishments During School Days & Providing Penalties Thereof”","2","RESOLUTION 344-2013.pdf","21","2013-10-17","0");
INSERT INTO tbl_resolution VALUES("345 - 1999","","Approve FY 1999 GF SB # 1, of Rosario, LU","20","RESOLUTION NO.345-99.pdf","21","1999-06-24","0");
INSERT INTO tbl_resolution VALUES("345 - 2010","","Approve Mun Ord # 01, s 2010, of the SB of Balaoan, LU, An Ord Amending Specific Provisions of Chapter II, IV, V & VI of Mun Ord # 02, s 2005 (Revised Revenue Code of the Mun of Balaoan, LU)","10","Resolution 345-2010.pdf","21","2010-12-09","0");
INSERT INTO tbl_resolution VALUES("345 - 2011","","Approve the FY 2011 GF SB # 4, of Agoo, LU	","1","Resolution 345-2011.pdf","21","2011-09-29","0");
INSERT INTO tbl_resolution VALUES("345 - 2012","","Congratulate pupils of BHC for winning in the various Internat’l& Nat’l Competitions","1","Resolution 345-2012.pdf","21","2012-10-11","0");
INSERT INTO tbl_resolution VALUES("345 - 2013","","Return for amendment, Ord # 162, of the SB of Aringay, La Union, “An Ord Enacting the Local Investments & Incentives Code of Aringay, La Union”","2","RESOLUTION 345-2013.pdf","21","2013-10-17","0");
INSERT INTO tbl_resolution VALUES("346 - 1999","","Approve FY 1999 GF SB # 1, of Bacnotan, LU","20","RESOLUTION NO.346-99.pdf","21","1999-06-24","0");
INSERT INTO tbl_resolution VALUES("346 - 2010","","Approve Mun Ord # 20-2010, of the SB of San Juan, LU, An Ord Delineating Parking Spaces at the Public market","10","Resolution 346-2010.pdf","21","2010-12-09","0");
INSERT INTO tbl_resolution VALUES("346 - 2012","","Approve SB # 4, of the Economic Enterprise involving P3,253,000.00","1","Resolution 346-2012.pdf","21","2012-10-18","0");
INSERT INTO tbl_resolution VALUES("346 - 2013","","Approve Mun Ord # 99, s 2013, of the SB of Sudipen, LU, “An Ord Institutionalizing a Voluntary Blood Donation Program in the Mun of Sudipen, LU & Appropriating Funds Thereof”","9","RESOLUTION 346-2013.pdf","21","2013-10-17","0");
INSERT INTO tbl_resolution VALUES("347 - 1999","","AO amounting P107,108.16 for Terminal Leave Pay","20","RESOLUTION NO.347-99.pdf","21","1999-06-24","0");
INSERT INTO tbl_resolution VALUES("347 - 2010","","Approve Supplemental Annual Investment Program for CY 2010","20","Resolution 347-2010.pdf","21","2010-12-09","0");
INSERT INTO tbl_resolution VALUES("347 - 2012","","MOA with DOH, PHIC, public health sector facilities, private sector hospitals, pharmaceutical companies, drugstores, pharmacies, logistics & distribution companies, alternative distribution points of outlets, transportation/companies/outlets, association of midwives/birthing homes & independent midwife practitioners & civil society organizations in connection w/ the expanded implementation of Service Delivery Networks (SDN) for Family Planning (FP) & Maternal, Neonatal, Child Health & Nutrition (MNCHN)","1,3,10,18","Resolution 347-2012.pdf","21","2012-10-18","0");
INSERT INTO tbl_resolution VALUES("347 - 2013","","Return for amendment, Mun Ord # 13-2013, of the SB of Agoo, LU, “An Ord Prohibiting Any Fishing Activity w/n the 200 Meters Radius from the Existing Artificial Reefs Dropped in the Mun Waters of Agoo, LU & Providing Penalties for Violation Thereof”","10","RESOLUTION 347-2013.pdf","21","2013-10-17","0");
INSERT INTO tbl_resolution VALUES("348 - 1999","","MOA w/ DBP relative to its salary loan to provincial employees","20","RESOLUTION NO.348-99.pdf","21","1999-06-24","0");
INSERT INTO tbl_resolution VALUES("348 - 2010","","Adjust salary of Dr. Geoffrey Tilan to SG 27 Step 2 effective October 15, 2010","1","Resolution 348-2010.pdf","21","2010-12-16","0");
INSERT INTO tbl_resolution VALUES("348 - 2012","","MOA with City Health & Mun RHUs in connection w/ the establishment of a partnership & referral system in order to improve the delivery of quality health care to all","5","Resolution 348-2012.pdf","21","2012-10-18","0");
INSERT INTO tbl_resolution VALUES("348 - 2013","","Approve Ord # 18, s 2013, of the SB of Naguilian, LU, “An Ord Requiring Gram Staining on GRO Employed in Videoke Establishments & Sing-Along Bars w/n the Territorial Jurisdiction of the Mun of Naguilian, LU, Providing Penalties for Non-Compliance & Appropriating Funds for the Purpose”.","10","RESOLUTION 348-2013.pdf","21","2013-10-17","0");
INSERT INTO tbl_resolution VALUES("349 - 1999","","AO amounting P1,235,263.56 of the General Fund for SB # 02","20","RESOLUTION NO.349-99.pdf","21","1999-06-24","0");
INSERT INTO tbl_resolution VALUES("349 - 2010","","Approve FY 2010 GF SB # 5, of Bagulin, LU","1","Resolution 349-2010.pdf","21","2010-12-16","0");
INSERT INTO tbl_resolution VALUES("349 - 2011","","Support for the amendment of the LGC of 1991 & Proposing Amendments/Repeal of some if its Provisions","10","Resolution 349-2011.pdf","21","2011-10-06","0");
INSERT INTO tbl_resolution VALUES("349 - 2012","","MOA w/ City Health & Mun RHUs in connection w/ the establishment of a partnership & referral system in order to improve the delivery of quality health care to all","1","Resolution 349-2012.pdf","21","2012-10-18","0");
INSERT INTO tbl_resolution VALUES("349 - 2013","","Approve Ord # 158, of the SB of Aringay, La Union, “An Ord Initiating a System for Partnership in Local Governance B/n the Mun Gov’t and the People of Aringay”","10","RESOLUTION 349-2013.pdf","21","2013-10-17","0");
INSERT INTO tbl_resolution VALUES("350 - 1999","","P15,000.00 F/A to EPA, Aringay, LU, for the completion of their auditorium","20","RESOLUTION NO.350-99.pdf","21","1999-06-24","0");
INSERT INTO tbl_resolution VALUES("350 - 2010","","Approve FY 2010 GF SB # 1, of San Juan, LU","1","Resolution 350-2010.pdf","21","2010-12-16","0");
INSERT INTO tbl_resolution VALUES("350 - 2011","","Adjust SG of Mr. Benedicto Rillera, Admin Aide I of Naguilian Dist Hosp","5,7,10,11","Resolution 350-2011.pdf","21","2011-10-06","0");
INSERT INTO tbl_resolution VALUES("350 - 2012","","Approve Res # 30, s 2012, of the SB of San Juan, LU, “A Res Approving the AIP of the Local Gov’t of San Juan for the CY 2013”","1","Resolution 350-2012.pdf","21","2012-10-18","0");
INSERT INTO tbl_resolution VALUES("350 - 2013","","Approve Ord # 159, of the SB of Aringay, LU, “An Ord Prohibiting the Burning of Agricultural Residues Particularly Rice Straw & Other Biodegradable Materials for Compost Making & Utilization in the Mun of Aringay, LU & Providing Penalties for the Violation Thereof”.","10","RESOLUTION 350-2013.pdf","21","2013-10-17","0");
INSERT INTO tbl_resolution VALUES("351 - 1999","","P10,000.00 F/A to Brgy. Gonzales, Tubao, LU, for the repair of the stage II auditorium","20","RESOLUTION NO.351-99.pdf","21","1999-06-24","0");
INSERT INTO tbl_resolution VALUES("351 - 2010","","Approve FY 2010 GF SB # 3, of Santol, LU","1","Resolution 351-2010.pdf","21","2010-12-16","0");
INSERT INTO tbl_resolution VALUES("351 - 2011","","Approve FY 2011 GF SB # 3, of Sudipen, LU","11","Resolution 351-2011.pdf","21","2011-10-06","0");
INSERT INTO tbl_resolution VALUES("351 - 2012","","Approve the request of PHILKO UBINS LTS Corp, requesting for clearance/permit to install poles, aerials HDD & open trench cables at the north-western of GLOBE Telecom in front of Caltex Gas Station, at Central West, Bauang.","1,18","Resolution 351-2012.pdf","21","2012-10-18","0");
INSERT INTO tbl_resolution VALUES("351 - 2013","","Approve the request of Mr. LunioSina, INTELE Builders & Dev’t Corp to excavate along the shoulder of Manila North Rd for the construction/installation of concrete poles for fiber optic cable","11","RESOLUTION 351-2013_001.pdf","21","2013-10-17","0");
INSERT INTO tbl_resolution VALUES("352 - 1999","","P19,000.00 F/A to Brgy. Tallaoen, Luna, LU, for the completion of their plaza","20","RESOLUTION NO.352-99.pdf","21","1999-06-24","0");
INSERT INTO tbl_resolution VALUES("352 - 2010","","Approve FY 2010 GF SB # 1, of Burgos, LU","1","Resolution 352-2010.pdf","21","2010-12-16","0");
INSERT INTO tbl_resolution VALUES("352 - 2011","","Condole w/ family of BC Thelma Bocalbos, Calautit, Bacnotan","11","Resolution 352-2011.pdf","21","2011-10-06","0");
INSERT INTO tbl_resolution VALUES("352 - 2012","","Approve the request of PHILKO UBINS LTD Corp. requesting for the clearance/permit to install poles, aerials HDD & open trench cables along the shoulder of the Manila North Rd, southwestern side of Agoo Cement Center","1,18","Resolution 352-2012.pdf","21","2012-10-18","0");
INSERT INTO tbl_resolution VALUES("352 - 2013","","Endorse the Draft DENR Admin Order “Declaring & Establishing a Portion of the Public Forest Located in BrgysCadaclanb, Apaleng&Cabarsican, SFC Under Land Classification Map No. 1395 Site of the LU Botanical & Zoological Garden & Agroforestry Area” to Sec. Ramon Paje, DENR Sec.","2,3,4,5,6,7,8,9,10,11,12,13","RESOLUTION 352-2013.pdf","21","2013-10-24","0");
INSERT INTO tbl_resolution VALUES("353 - 1999","","P10,000.00 F/A to Brgy. Wallayan, Bagulin, LU, for the accomplishment of their barangay stage","20","RESOLUTION NO.353-99.pdf","21","1999-06-24","0");
INSERT INTO tbl_resolution VALUES("353 - 2010","","Approve FY 2010 GF SB # 7, of Balaoan, LU","1","Resolution 353-2010.pdf","21","2010-12-16","0");
INSERT INTO tbl_resolution VALUES("353 - 2011","","Approve Mun Ord # 29-2011, of the SB of San Juan, LU, “An Ord Requiring the Installation of Billboard at the Site Before the Initial Phase of the Construction of Business Establishment/s Shall Take Place”","10","Resolution 353-2011.pdf","21","2011-10-06","0");
INSERT INTO tbl_resolution VALUES("353 - 2012","","Approve the request of PLDT to excavate along the shoulders of Manila North Rd regarding civil works for the creation of fiber connection between LUCLS &Dagupan at the ff splice locations: (1) Lossoc Bridge, Bauang; (2) Bauang Bridge; (3) San Vicente, Agoo","1,18","Resolution 353-2012.pdf","21","2012-10-18","0");
INSERT INTO tbl_resolution VALUES("353 - 2013","","Approve the FY 2013 GF SB # 1, of Aringay, La Union.","11","RESOLUTION 353-2013.pdf","21","2013-10-24","0");
INSERT INTO tbl_resolution VALUES("354 - 1999","","P20,000.00 F/A to Brgy. Birunget, CSF, LU, for the purchase of knapsack sprayer","20","RESOLUTION NO.354-99.pdf","21","1999-06-24","0");
INSERT INTO tbl_resolution VALUES("354 - 2011","","Approve Mun Ord # 30-2011, of the SB of San Juan, LU, “An Ord Requiring the Mandatory Approval of the SB of All Dev’t Plans & Programs Along the San Fernando By-Pass Rd in the Absence of a Duly Approved Land Use Plan in the Specific Area”","10","Resolution 354-2011.pdf","21","2011-10-06","0");
INSERT INTO tbl_resolution VALUES("354 - 2012","","Return Mun Ord # 43-2012, of the SB of Luna, La Union, “An Ord that Provides the Prevention & Control of Dengue Disease in the Mun of Luna, La Union”","20","Resolution 354-2012.pdf","21","2012-10-18","0");
INSERT INTO tbl_resolution VALUES("354 - 2013","","Approve Ord # 8, s 2013, emb in Res # 12, of the SB of Bauang, LU, “An Ord Establishing Programs for the Career Dev’t of the Mun Employees of the LGU of Bauang, LU, Regardless of their Status of Employment & Providing Funds Thereof”","12","RESOLUTION 354-2013.pdf","21","2013-10-24","0");
INSERT INTO tbl_resolution VALUES("355  -2010","","Approve Mun Ord # 30, s 2010, of the SB of Burgos, LU, An Ord Requiring Every Applicant for Business Permit, Mayor’s permit, Zoning Clearance, Bldg. Permit, Permit to Operate a Tricycle Transport Service & Marriage License to Undergo a Basic Seminar on RA No. 9003, Otherwise Known as the Ecological Solid Waste Management Act of 2000","10","Resolution 355-2010.pdf","21","2010-12-16","0");
INSERT INTO tbl_resolution VALUES("355 - 1999","","P10,000.00 F/A to Brgy. Dallangayan Oeste, CSF, LU, for the installation of shallow well","20","RESOLUTION NO.355-99.pdf","21","1999-06-24","0");
INSERT INTO tbl_resolution VALUES("355 - 2011","","Approve Ord # 16-2010, of the SB of Naguilian, LU, “An Ord Regulating the Operations of Videoke Establishments & Sing-along Bars w/n the Territorial Jurisdiction of the Mun of Naguilian, LU, Amending for the Purpose All Existing Ordinances Inconsistent Thereto & For Other Purposes”","10","Resolution 355-2011.pdf","21","2011-10-06","0");
INSERT INTO tbl_resolution VALUES("355 - 2012","","Return Mun Ord # 26-2012, of the SB of Agoo, La Union, “An Ord for the Prevention & Control of STD/HIV/AIDS in the Mun of Agoo, La Union”","10","Resolution 355-2012.pdf","21","2012-10-18","0");
INSERT INTO tbl_resolution VALUES("355 - 2013","","COL with DA for allowing the latter to lease a 664.65 sq.m. at Aguila Rd. formerly leased to the Bureau of Animal Industry.","10","RESOLUTION 355-2013.pdf","21","2013-10-24","0");
INSERT INTO tbl_resolution VALUES("356 - 1999","","P20,000.00 F/A to Brgy. Taboc, San Juan, LU, for the construction of a waiting shed","20","RESOLUTION NO.356-99.pdf","21","1999-06-24","0");
INSERT INTO tbl_resolution VALUES("356 - 2010","","Return Mun Ord # 12-2010, of the SB of San Juan, LU, An Ord Prescribing Inspection Fees & Auxiliary","10","Resolution 356-2010.pdf","21","2010-12-16","0");
INSERT INTO tbl_resolution VALUES("356 - 2011","","MOA w/ DILG, pertaining to the availment& release of the DILG’sGawadngPamanaLahi (GPL) Fund & certifies that the proposed project is included in the CY 2011 Annual Investment Program (AIP)","10","Resolution 356-2011.pdf","21","2011-10-06","0");
INSERT INTO tbl_resolution VALUES("356 - 2012","","Contract of Lease w/ GLOBE to lease the 2nd flr of LUPAC Bldg","20","Resolution 356-2012.pdf","21","2012-10-18","0");
INSERT INTO tbl_resolution VALUES("356 - 2013","","Congratulate all newly elected Punong Brgy &Kgds","2,3,4,5,6,7,8,9,10,11,12,13","RESOLUTION 356-2013.pdf","21","2013-10-30","0");
INSERT INTO tbl_resolution VALUES("357 - 1999","","Enough amount as F/A to Brgy. Amallapay, Tubao, LU, for the repair and concreting of Purok 3","20","RESOLUTION NO.357-99.pdf","21","1999-06-24","0");
INSERT INTO tbl_resolution VALUES("357 - 2010","","Approve Ord # 80, s 2010, of the SB of Sudipen, LU, An Ord Creating the Mun of Sudipen Education Assistance Program","10","Resolution 357-2010.pdf","21","2010-12-16","0");
INSERT INTO tbl_resolution VALUES("357 - 2011","","Contract of Agreement w/ Dr. Claire Maramat-Lucina as Visiting Consultant in the OB-Gyne at Balaoan District Hospital","20","Resolution 357-2011.pdf","21","2011-10-13","0");
INSERT INTO tbl_resolution VALUES("357 - 2012","","Approve the FY 2012 GF SB # 8, of Bagulin, La Union.","1","Resolution 357-2012.pdf","21","2012-10-25","0");
INSERT INTO tbl_resolution VALUES("357 - 2013","","Extend P100,000.00 to Bohol in connection with the earthquake","4","RESOLUTION 357-2013.pdf","21","2013-10-30","0");
INSERT INTO tbl_resolution VALUES("358 - 1999","","Enough amount as F/A to Brgy. Imelda, Naguilian, LU, for the repair of the destroyed barangay road","20","RESOLUTION NO.358-99.pdf","21","1999-06-24","0");
INSERT INTO tbl_resolution VALUES("358 - 2010","","Approve City Ord # 2010-012, of the City of San Fernando, LU, An Ord Promulgating the Rules & Regulations for the Protection & Welfare of Senior Citizens in the City of San Fernando & Repealing Ord # 2005-013","10","Resolution 358-2010.pdf","21","2010-12-16","0");
INSERT INTO tbl_resolution VALUES("358 - 2011","","MOA w/ the Northern Phil Tribal Communities Dev’t Center Inc.,  the Mun Gov’t of San Gabriel, & the beneficiaries/residents of Brgys. Balballayang, Lon-oy&Bayabas, San Gabriel, pertaining to the proposed construction of a 120-lineal meter long steel matting suspension footbridge in Brgy. Balballayang including 65-lineal meter stone masonry flood control & concerting of 27-lineal meter pathway w/ steel railing  ","10","Resolution 358-2011.pdf","21","2011-10-13","0");
INSERT INTO tbl_resolution VALUES("358 - 2012","","Approve the FY 2012 GF SB # 4, of Balaoan, La Union.","1","Resolution 358-2012.pdf","21","2012-10-25","0");
INSERT INTO tbl_resolution VALUES("358 - 2013","","Extend P50,000.00 to Cebu in connection with the earthquake.","2,3,4,5,6,7,8,9,10,11,12,13","RESOLUTION 358-2013.pdf","21","2013-10-30","0");
INSERT INTO tbl_resolution VALUES("359 - 1999","","P80,000.00 F/A to the United San Juanenos MPCI, San Juan, LU, for the purchase of fishing equipment of Brgy. Urbiztondo","20","RESOLUTION NO.359-99.pdf","21","1999-06-24","0");
INSERT INTO tbl_resolution VALUES("359 - 2010","","Approve City Ord # 2010-003, of the City of San Fernando, LU, An Ord Strengthening Transparency in Local Gov’t in the City of San Fernando","10","Resolution 359-2010.pdf","21","2010-12-16","0");
INSERT INTO tbl_resolution VALUES("359 - 2011","","MOA w/ the Cooperative Insurance System of the Phils. Inc (CISP) pertaining to the insurance loan premiums & coverage of loan borrowers in the PGLU Salary & Livelihood Loan","10","Resolution 359-2011.pdf","21","2011-10-13","0");
INSERT INTO tbl_resolution VALUES("359 - 2012","","Approve the FY 2012 GF SB # 8, of Agoo, La Union.","1","Resolution 359-2012.pdf","21","2012-10-25","0");
INSERT INTO tbl_resolution VALUES("359 - 2013","","Congratulate & commend COMELEC, PNP, & other law enforcement agencies for a peaceful Barangay Election","9,12","RESOLUTION 359-2013.pdf","21","2013-10-30","0");
INSERT INTO tbl_resolution VALUES("359A- 1999","","P100,000.00 F/A to Brgy. Calungbuyan, Balaoan, LU, for the construction of a stage","20","RESOLUTION NO.359A-99.pdf","21","1999-06-24","0");
INSERT INTO tbl_resolution VALUES("360 - 1999","","P75,000.00 F/A to Brgy. Apatut, Balaoan, LU, for the pavement of their barangay hall site","20","RESOLUTION NO.360-99.pdf","21","1999-06-24","0");
INSERT INTO tbl_resolution VALUES("360 - 2010","","Approve Mun Ord # 15-2010, of the SB of Agoo, LU, An Ord Creating the Agoo Mun Housing Board, Defining its Clearing House Functions Pursuant to EO # 708, s 2008, & for Other Purposes","10","Resolution 360-2010.pdf","21","2010-12-16","0");
INSERT INTO tbl_resolution VALUES("360 - 2011","","MOA w/ DSWD&ABONOPartylist pertaining to the implementation of a Food for School & Health Start Feeding Program in Day Care Centers ","5","Resolution 360-2011.pdf","21","2011-10-13","0");
INSERT INTO tbl_resolution VALUES("360 - 2012","","Approve the FY 2012 GF SB # 1, of Naguilian, La Union.","1","Resolution 360-2012.pdf","21","2012-10-25","0");
INSERT INTO tbl_resolution VALUES("360 - 2013","","Congratulate & commend Mayor Daisy Sayangda as one of the Awardees of the Lingkod Bayan Award or the Presidential Award for Outstanding Public Service of the CSC.","2,3,4,5,6,7,8,9,10,11,12,13","RESOLUTION 360-2013.pdf","21","2013-10-30","0");
INSERT INTO tbl_resolution VALUES("360A- 1999","","Enough amount as F/A to Brgy. Oaqui No. 4, Luna, LU, for the construction of a police sub-station","20","RESOLUTION NO.360A-99.pdf","21","1999-06-24","0");
INSERT INTO tbl_resolution VALUES("360B- 1999","","P15,000.00 F/A to Brgy. Santiago Sur, Caba, LU, for the construction of a waiting shed in front of the school","20","RESOLUTION NO.360B-99.pdf","21","1999-06-24","0");
INSERT INTO tbl_resolution VALUES("360C- 1999","","P20,000.00 F/A to Brgy. Namboongan, Sto. Tomas LU, for the construction of their multi-purpose hall","20","RESOLUTION NO.360C-99.pdf","21","1999-06-24","0");
INSERT INTO tbl_resolution VALUES("360D- 1999","","P100,000.00 F/A to Brgy. Sucoc Sur, Luna, LU, for the repair of their barangay hall","20","RESOLUTION NO.360D-99.pdf","21","1999-06-24","0");
INSERT INTO tbl_resolution VALUES("360E- 1999","","Enough amount as F/A to Brgy. Bautista, Caba, LU, for the construction of a waiting shed","20","RESOLUTION NO.360E-99.pdf","21","1999-06-24","0");
INSERT INTO tbl_resolution VALUES("360F- 1999","","P10,000.00 F/A to the Kabalikat MPCI, San Juan, LU, for the purchase of a handheld two-way radio","20","RESOLUTION NO.360F-99.pdf","21","1999-06-24","0");
INSERT INTO tbl_resolution VALUES("360G- 1999","","P20,000.00 F/A to Brgy. Sto. Rosario East, Aringay, LU, for the repair of their barangay hall","20","RESOLUTION NO.360G-99.pdf","21","1999-06-24","0");
INSERT INTO tbl_resolution VALUES("360H- 1999","","P20,000.00 F/A to Brgy. San Juan East Aringay, LU, for the repair of their multi-purpose hall","20","RESOLUTION NO.360H-99.pdf","21","1999-06-24","0");
INSERT INTO tbl_resolution VALUES("360I- 1999","","Enough amount as F/A to the La Union Ladies Asso., Bagulin, LU, for the completion of their multi-purpose hall at Sitio Pala","20","RESOLUTION NO.360I-99.pdf","21","1999-06-24","0");
INSERT INTO tbl_resolution VALUES("361 - 1999","","Enough amount as F/A to Cuenca Nat’l H/S, Pugo, LU, for the purchase of tables","20","RESOLUTION NO.361-99.pdf","21","1999-06-24","0");
INSERT INTO tbl_resolution VALUES("361 - 2011","","MOA w/ the Mun of Sudipen, LU, & the Mun Health Officer pertaining to the availment of the Mun of Balaoan Dist Hospital’s Chest X-ray Services for the health center’s referral patients or their qualified dependents","19","Resolution 361-2011.pdf","21","2011-10-13","0");
INSERT INTO tbl_resolution VALUES("361 - 2012","","Congratulate the Table Tennis Team of Agoo, LU for placing 2nd& Bronze Medalist during the BatangPinoy Games 2012","1,3,5,7,9,10,11,12,13,18,19,20","Resolution 361-2012.pdf","21","2012-10-25","0");
INSERT INTO tbl_resolution VALUES("361 - 2013","","Greet Exec Min Eduardo V. Manalo of INC on his 58th Birth Anniv.","2,3,4,5,6,7,8,9,10,11,12,13","RESOLUTION 361-2013.pdf","21","2013-10-30","0");
INSERT INTO tbl_resolution VALUES("362 - 1999","","Set aside P1 M as F/A to the PNP Regional Office","20","RESOLUTION NO.362-99.pdf","21","1999-06-24","0");
INSERT INTO tbl_resolution VALUES("362 - 2010","","An Ord appropriating P23,091,471.00 for SB # 7","1","Resolution 362-2010.pdf","21","2010-12-16","0");
INSERT INTO tbl_resolution VALUES("362 - 2011","","Approve FY 2011 GF SB # 3, of Balaoan, LU","20","Resolution 362-2011.pdf","21","2011-10-13","0");
INSERT INTO tbl_resolution VALUES("362 - 2012","","P107,330.00 F/A to the Champions of the BatangPinoy 2012","1","Resolution 362-2012.pdf","21","2012-10-25","0");
INSERT INTO tbl_resolution VALUES("362 - 2013","","Authorize Gov MCO or Dr. Gretchen F Aromin  to pick up 1 Ambulance from PCSO.","9","RESOLUTION 362-2013.pdf","21","2013-10-30","0");
INSERT INTO tbl_resolution VALUES("363 - 1999","","Enough amount as F/A to Brgy. Marcos, Rosario, LU, for the construction of a SWIP","20","RESOLUTION NO.363-99.pdf","21","1999-06-24","0");
INSERT INTO tbl_resolution VALUES("363 - 2010","","Letter of Credit amounting P14,480.00 in favor of Litchfield International PTE, LTD for the purchase of 1 Komatsu","1","Resolution 363-2010.pdf","21","2010-12-16","0");
INSERT INTO tbl_resolution VALUES("363 - 2011","","Approve FY 2011 GF SB # 4, of Luna, LU","20","Resolution 363-2011.pdf","21","2011-10-13","0");
INSERT INTO tbl_resolution VALUES("363 - 2012","","Return Res # 89, s 2012, of the SB of Luna, LU, “Res # 12, s 2012, Res Amending Certain Provisions of Mun Ord # 37-2012, Known as the Mun Gender & Dev’t (GAD) Code”","10","Resolution 363-2012.pdf","21","2012-10-25","0");
INSERT INTO tbl_resolution VALUES("363 - 2013","","Approve the CY 2013 Supplemental AIP of MISD under OPG for the maintenance of the CCTV Monitoring System","1","RESOLUTION 363-2013.pdf","21","2013-11-07","0");
INSERT INTO tbl_resolution VALUES("364 - 1999","","P15,000.00 F/A to Brgy. Gonzales, Tubao, LU, for the purchase of a trailer and hose","20","RESOLUTION NO.364-99.pdf","21","1999-06-24","0");
INSERT INTO tbl_resolution VALUES("364 - 2011","","Approve FY 2011 GF SB # 2, of Santol, LU","20","Resolution 364-2011.pdf","21","2011-10-13","0");
INSERT INTO tbl_resolution VALUES("364 - 2012","","Return Res # 90, s 2012, of the SB of Luna, LU, “Res # 13, s 2012, Res Amending Certain Provisions of Mun Ord # 38-2012 Known as the Child Welfare Code of Luna, LU”","10","Resolution 364-2012.pdf","21","2012-10-25","0");
INSERT INTO tbl_resolution VALUES("364 - 2013","","Adjust the SG of Joventino M. Nisperos, Admin Aide II, Balaoan Dist Hosp. from SG 1 S-6 to SG 2 S-6","1","RESOLUTION 364-2013.pdf","21","2013-11-07","0");
INSERT INTO tbl_resolution VALUES("365 - 1999","","Thank Dr. Enrique Ona, NKTI Director and Dr. Servado Sergio Simangan, Sr. Transplant Fellow, NKTI for the success of the first kidney transplant in LU","27","RESOLUTION NO.365-99.pdf","21","1999-06-24","0");
INSERT INTO tbl_resolution VALUES("365 - 2010","","An Ord appropriating P3,780,400.49 for SB # 2 of the Economic Enterprise","1","Resolution 365-2010.pdf","21","2010-12-16","0");
INSERT INTO tbl_resolution VALUES("365 - 2011","","Approve Ord # 2011-091, of the SB of Santol, LU, “An Ord Declaring a People’s Day in the Mun of Santol, & Providing Funds Therefore”","10","Resolution 365-2011.pdf","21","2011-10-13","0");
INSERT INTO tbl_resolution VALUES("365 - 2012","","Return Mun Ord # 03-2012, of the SB of Agoo, La Union, “An Ord Enacting the Sanitation Code of the Mun of Agoo, La Union”","18","Resolution 365-2012.pdf","21","2012-10-25","0");
INSERT INTO tbl_resolution VALUES("365 - 2013","","Approve Ord # 9-2013, of the SB of San Gabriel, LU, “An Ord Creating the HIV/AIDS Council”.","9","RESOLUTION 365-2013.pdf","21","2013-11-07","0");
INSERT INTO tbl_resolution VALUES("366 - 1999","","Return Mun Ord # 09-98, of the SB of Luna, LU, to Eradicate & Control Transmission of Rabies in Dogs in the Municipality of Luna, Providing Penalties Thereof & for Other Purposes","24","RESOLUTION NO.366-99.pdf","21","1999-07-01","0");
INSERT INTO tbl_resolution VALUES("366 - 2010","","Realignment P 31,600,000.00 from Flue-curing, skills Training & Agricultural Equipment Assistance under RA 7171 for the purchase of lot for the Farmer\'s Multi-Purpose center and Agricultural Demo Farm","1","Resolution 366-2010.pdf","21","2010-12-16","0");
INSERT INTO tbl_resolution VALUES("366 - 2011","","Approve Mun Ord # 87, s 2011, of the SB of Sudipen, LU, “An Ord Prohibiting the Unauthorized Use, Manufacture, & Sale of Police & Military Uniforms, Insignias, & Other Accoutrements in the Mun of Sudipen, LU”","10","Resolution 366-2011.pdf","21","2011-10-13","0");
INSERT INTO tbl_resolution VALUES("366 - 2012","","Accredit NATIONAL CHAPLAINCY PHILS. as NGO","7","Resolution 366-2012.pdf","21","2012-10-25","0");
INSERT INTO tbl_resolution VALUES("366 - 2013","","Approve “The Mun of San Gabriel, La Union Investment & Incentive Code of 2013”","2","RESOLUTION 366-2013.pdf","21","2013-11-07","0");
INSERT INTO tbl_resolution VALUES("367 - 1999","","Return Mun Ord # 06-98, of the SB of Balaoan, LU, Imposing Penalties to Market Vendors, Stall Owners, Business Establishment Owners & the Like Using Weighing Scales/Measures that are Tampered, Defective and/or Irregular","24","RESOLUTION NO.367-99.pdf","21","1999-07-01","0");
INSERT INTO tbl_resolution VALUES("367 - 2010","","Negotiate w/ Estela Eclipse, Kathleen Grace Escano& Leo Augusto Eclipse for the acquisition of the 70,137 sq.m. at Brgy. Sevilla, SFLU","1","Resolution 367-2010.pdf","21","2010-12-16","0");
INSERT INTO tbl_resolution VALUES("367 - 2011","","Contract of Agreement w/ Basic Needs Services Phils. Inc (BNS-PHILS) in partnership w/ Bremen Overseas Research &Dev’tAsso (BORDA) pertaining to the consulting services to prepare the detailed engineering design, supervise the construction, train the operators, provide operation manuals, & test the efficiency & effectiveness of the low cost maintenance wastewater treatment plant of Naguilian District Hospital","1,10,18","Resolution 367-2011.pdf","21","2011-10-20","0");
INSERT INTO tbl_resolution VALUES("367 - 2012","","Condole with the bereaved family of SPM Tars DC Halili, Pampanga.","1,3,5,7,9,10,11,12,13,18,19,20","Resolution 367-2012.pdf","21","2012-10-25","0");
INSERT INTO tbl_resolution VALUES("367 - 2013","","Approve the programming of the RA 7171 Fund in the amount of P71,975,096.00","1","RESOLUTION 367-2013.pdf","21","2013-11-14","0");
INSERT INTO tbl_resolution VALUES("368 - 1999","","Approve Tax Ord # 99-03, emb. in Res # 023-99, of the SB of Burgos, LU, Amending Certain Provisions of the Revenue Tax Code of that Municipality, Part. Chapter III, Art. A.03 Thereof","24","RESOLUTION NO.368-99.pdf","21","1999-07-01","0");
INSERT INTO tbl_resolution VALUES("368 - 2010","","Approve FY 2010 GF SB # 6, of Agoo, LU","1","Resolution 368-2010.pdf","21","2010-12-23","0");
INSERT INTO tbl_resolution VALUES("368 - 2011","","MOA w/ Phil Coconut Authority (PCA) pertaining to the proposed revival of the coconut industry w/ active participation of the private sector","3","Resolution 368-2011.pdf","21","2011-10-20","0");
INSERT INTO tbl_resolution VALUES("368 - 2012","","Approve SB # 3, of the GF involving P6,292,556.91","1","Resolution 368-2012.pdf","21","2012-10-31","0");
INSERT INTO tbl_resolution VALUES("368 - 2013","","Approve SB # 3 involving the amount of P13,823,621.20","1","RESOLUTION 368-2013.pdf","21","2013-11-14","0");
INSERT INTO tbl_resolution VALUES("369 - 1999","","Return Ord # 361, of the SB of Bacnotan, LU, Known as the Anti-Littering Ordinance of 1999","24","RESOLUTION NO.369-99.pdf","21","1999-07-01","0");
INSERT INTO tbl_resolution VALUES("369 - 2010","","Approve FY 2010 GF SB # 3, of Bacnotan, LU","1","Resolution 369-2010.pdf","21","2010-12-23","0");
INSERT INTO tbl_resolution VALUES("369 - 2011","","Approve FY 2011 GF SB # 1, of Rosario, LU","1","Resolution 369-2011.pdf","21","2011-10-20","0");
INSERT INTO tbl_resolution VALUES("369 - 2012","","MOA with the Australian Volunteer for Internat’l Dev’t (AVID) & the Phil Nat’l Volunteer Service Coordinating Agency (PNVSCA) re: deployment of Ms. Diana Maree O’Donnel to assist in the design & implementation of the Organic Agricultural Technology Dev’t Program &establishment of Organic Farm Demo Centers ","3","Resolution 369-2012.pdf","21","2012-10-31","0");
INSERT INTO tbl_resolution VALUES("369 - 2013","","Approve the FY 2013 GF SB # 7, of Agoo, La Union.","1","RESOLUTION 369-2013.pdf","21","2013-11-14","0");
INSERT INTO tbl_resolution VALUES("370 - 1999","","Disapprove Ord # 02-99, of the SB of Bangar, LU, Prohibiting Minors Below 18 of Age From Roaming Around Outside their Residence from 10:00 PM to 4:00 AM ","24","RESOLUTION NO.370-99.pdf","21","1999-07-01","0");
INSERT INTO tbl_resolution VALUES("370 - 2010","","Approve FY 2010 GF SB # 9, of Pugo, LU","1","Resolution 370-2010.pdf","21","2010-12-23","0");
INSERT INTO tbl_resolution VALUES("370 - 2011","","Return Mun Ord # 24-2011, of the SB of Agoo, LU, “The Comprehensive Anti-Smoking Ord of Agoo, LU","18","Resolution 370-2011.pdf","21","2011-10-20","0");
INSERT INTO tbl_resolution VALUES("370 - 2012","","MOA with the partner agencies & selected LGUs of LU for the bamboo dev’t& utilization program for poverty alleviation","3","Resolution 370-2012.pdf","21","2012-10-31","0");
INSERT INTO tbl_resolution VALUES("370 - 2013","","Approve the FY 2013 GF SB # 3, of Bagulin, La Union.","1","RESOLUTION 370-2013.pdf","21","2013-11-14","0");
INSERT INTO tbl_resolution VALUES("371 - 1999","","Return Ord # 03-99, of the SB of Bangar, LU, Requiring All Houses & Business Establishments in that Municipality to Construct & Provide their Own Toilets","24","RESOLUTION NO.371-99.pdf","21","1999-07-01","0");
INSERT INTO tbl_resolution VALUES("371 - 2010","","Sisterhood w/ Jeju Province, Province of South Korea","1,10,18,19","Resolution 371-2010.pdf","21","2010-12-23","0");
INSERT INTO tbl_resolution VALUES("371 - 2011","","Approve the request of Ms. Marilyn G. Dimdiman, acting General Manager, Metro LU Water District, to excavate along the shoulder of Manila North Road(Brgy. Pagdalagan to Brgy. Sevilla) and Poro Port Road (Brgy. Parian to Thunderbird Resorts) for the purpose of Construction/Pipelaying of 200mm dia. UPVC & steel pipelines w/ 500mm dia. Pe parallel distribution pipelines.","1","Resolution 371-2011.pdf","21","2011-10-20","0");
INSERT INTO tbl_resolution VALUES("371 - 2012","","Condole with the bereaved family of the late ex-VM Lazaro C. Gayo, Tubao","1,3,5,7,9,10,11,12,13,18,19,20","Resolution 371-2012.pdf","21","2012-10-31","0");
INSERT INTO tbl_resolution VALUES("371 - 2013","","Approve the FY 2013 GF SB # 5, of Balaoan, La Union.","1","RESOLUTION 371-2013.pdf","21","2013-11-14","0");
INSERT INTO tbl_resolution VALUES("372 - 1999","","Return Ord # 115-99, of the SB of Aringay, LU, entitled: Solid Waste Management Code of that Municipality","24","RESOLUTION NO.372-99.pdf","21","1999-07-01","0");
INSERT INTO tbl_resolution VALUES("372 - 2011","","Extend support to the typhoon victims in the provinces of Bulacan& Pampanga","21","Resolution 372-2011.pdf","21","2011-10-20","0");
INSERT INTO tbl_resolution VALUES("372 - 2012","","Approve the Consolidated CY 2013 Supplemental AIP of the diff. offices:\n\na. Office of the Prov’l Governor\nb. Office of the Prov’l Vet\nc. Prov’l Health Office\nd. La Union Medical Center\ne. Rosario Dist Hospital\nf. Bacnotan Dist Hospital\n","1","Resolution 372-2012.pdf","21","2012-11-08","0");
INSERT INTO tbl_resolution VALUES("372 - 2013","","Condole with the bereaved family of SBM Alejandrito M. Cariaso, Bacnotan.","1,2,3,4,5,6,7,8,9,10,11,12,13","RESOLUTION 372-2013.pdf","21","2013-11-14","0");
INSERT INTO tbl_resolution VALUES("373 - 1999","","Return Ord # 004-99, of the SB of Burgos, LU, Prohibiting the Washing and/or Draining of All Tankers, Jeepneys & all Types of Motorized Vehicles and/or Dumping Along the River Banks, Creeks, Streams & Canals W/n the Territorial Jurisdiction of the Municipality of Burgos, LU","24","RESOLUTION NO.373-99.pdf","21","1999-07-01","0");
INSERT INTO tbl_resolution VALUES("373 - 2011","","Approve Ord # 6-2011, of the SB of San Gabriel, LU, :”An Ord to Curtail the Sale, Rental, Transfer, Distribution, Manufacture and/or Production of Pirated, Counterfeit or Fake Goods, Articles or Services and for other Services & for Other Purposes”","10","Resolution 373-2011.pdf","21","2011-10-27","0");
INSERT INTO tbl_resolution VALUES("373 - 2012","","Approve the FY 2012 GF SB # 1, of Santol, La Union.","1","Resolution 373-2012.pdf","21","2012-11-08","0");
INSERT INTO tbl_resolution VALUES("373 - 2013","","Approve the renewal of Contract of 5 PGLU Casual Employees from Jan 1, 2014 to Mar 31, 2014 & 6 PGLU Job Orders from Jan 1, 2014 to June 30, 2014 at the LUMC","1","RESOLUTION 373-2013.pdf","21","2013-11-14","0");
INSERT INTO tbl_resolution VALUES("374 - 1999","","Approve Res # 22-99, of the SP of the CSF, LU, Naming the Newly Constructed Multi-Purpose Gymnasium as “Ortega Cultural & Sports Center”","24","RESOLUTION NO.374-99.pdf","21","1999-07-01","0");
INSERT INTO tbl_resolution VALUES("374 - 2011","","Approve Mun Ord # 33-2011, of the SB of San Juan, LU, “An Ord Regulating the Dumping of garbage at the Controlled Dumpsite”","10","Resolution 374-2011.pdf","21","2011-10-27","0");
INSERT INTO tbl_resolution VALUES("374 - 2012","","Approve the FY 2012 GF SB # 1, of Bauang, La Union.","1","Resolution 374-2012.pdf","21","2012-11-08","0");
INSERT INTO tbl_resolution VALUES("374 - 2013","","Congratulate the ff BHC students who won in the 9th International Math Competition in Singapore:\n\na.	Ordoño, Brylle Jaden Louise\nb.	Simbol, Ronn Derick\nc.	Argana, Ralph Ernest\nd.	Liclican, SephiMarz\ne.	Simbol, Jan Vincent\nf.	Prestoza, Bert Joseph\ng.	Mendoza, Anthony Gabriel\n","1,2,3,4,5,6,7,8,9,10,11,12,13","RESOLUTION 374-2013.pdf","21","2013-11-14","0");
INSERT INTO tbl_resolution VALUES("375 - 1999","","Approve Res # 22-99, of the SP of the CSF, LU, Naming the Newly Constructed Multi-Purpose Gymnasium as “Ortega Cultural & Sports Center”","24","RESOLUTION NO.375-99.pdf","21","1999-07-01","0");
INSERT INTO tbl_resolution VALUES("375 - 2011","","Return Mun Ord # 20-2011, of the SB of Agoo, LU, “An Ord Prohibiting the Use of Plastic Bags on Dry Goods, Regulating Its Use on Wet Goods & Providing Penalties Thereof”","10","Resolution 375-2011.pdf","21","2011-10-27","0");
INSERT INTO tbl_resolution VALUES("375 - 2012","","Approve the FY 2012 GF SB # 2, of Bauang, La Union.","1","Resolution 375-2012.pdf","21","2012-11-08","0");
INSERT INTO tbl_resolution VALUES("375 - 2013","","Appropriate P400,000.00 as F/A to the ff typhoon Yolanda devastated areas:\n\na.	Eastern Samar – P100,000.00\nb.	Leyte – P100,000.00\nc.	Tacloban City – P100,000.00\nd.	Western Samar – P50,000.00\ne.	Northern Cebu – P50,000.00\n","1,2,3,4,5,6,7,8,9,10,11,12,13","RESOLUTION 375-2013.pdf","21","2013-11-14","0");
INSERT INTO tbl_resolution VALUES("376 - 1999","","Support Res # 99-03-50 of the SP of Romblon, Recommending to the Oversight Committee on Local Gov’t of the House of Representatives to Amend the Formula in the Computation & Determination of the IRA Share of Each Province, City of Municipality under Sec. 285, Chapter I, Title III of Ra 7160","24","RESOLUTION NO.376-99.pdf","21","1999-07-01","0");
INSERT INTO tbl_resolution VALUES("376 - 2011","","Return Mun Ord # 155, of the SB of Aringay, LU, “An Ord Prohibiting the Sale & Illegal Use of Police & Military Uniforms, Insignia & Other Accessories w/n the Territorial Jurisdiction of the Mun of Aringay, LU”","10","Resolution 376-2011.pdf","21","2011-10-27","0");
INSERT INTO tbl_resolution VALUES("376 - 2012","","Approve the FY 2012 GF SB # 3, of Luna, La Union.","1","Resolution 376-2012.pdf","21","2012-11-08","0");
INSERT INTO tbl_resolution VALUES("376 - 2013","","Ask NIA Admin Claro V. Maranan to cause the conversion of the P3M Rehab Fund Extended as a Loan to Bued Communal Irrigation System Dam I Irrigators Service Asso., Inc. of Rosario, LU into a grant under the Bottom-Up Budgeting Program of Pres Aquino & to include other towns or focal municipalities having the same problem as experienced by farmer-irrigators in Rosario","4","RESOLUTION 376- 2013.pdf","21","2013-11-21","0");
INSERT INTO tbl_resolution VALUES("377 - 1999","","P70,000.00 Augmentation Fund for the Concrete Paving of Bawanta-Dili Rd. in Bauang","20","RESOLUTION NO.377-99.pdf","21","1999-07-15","0");
INSERT INTO tbl_resolution VALUES("377 - 2011","","Condole w/ BC Abraham B. Rimorin, Bauang, LU","21","Resolution 377-2011.pdf","21","2011-10-27","0");
INSERT INTO tbl_resolution VALUES("377 - 2012","","Approve the FY 2012 GF SB # 1, of Sto. Tomas, La Union.","1","Resolution 377-2012.pdf","21","2012-11-08","0");
INSERT INTO tbl_resolution VALUES("377 - 2013","","Extend gratitude to the Mun of Santol, La Union for the warm reception extended to the 1st Out-of-Town Session.","1,2,3,4,5,6,7,8,9,10,11,12,13","RESOLUTION 377-2013.pdf","21","2013-11-21","0");
INSERT INTO tbl_resolution VALUES("378 - 1999","","P38,700.00 as Payment of the road-right-of-way expropriated in San Gabriel, LU","20","RESOLUTION NO.378-99.pdf","21","1999-07-15","0");
INSERT INTO tbl_resolution VALUES("378 - 2011","","Approve FY 2011 GF SB # 1, of Burgos, LU","1","Resolution 378-2011.pdf","21","2011-11-03","0");
INSERT INTO tbl_resolution VALUES("378 - 2012","","Approve Ord # 2012-001, of the SB of Bangar, LU, “An Ord Prescribing the Schedule of Computer Services for Minors w/n the School Years (10-Month Period) of the Mun of Bangar, LU”","5","Resolution 378-2012.pdf","21","2012-11-08","0");
INSERT INTO tbl_resolution VALUES("378 - 2013","","Contract of Consultancy with Mr. Jose C. Basallo as Governor’s Consultant on Indigenous Cultural Communities/Peoples – 2nd Dist.","7","RESOLUTION 378-2013.pdf","21","2013-11-21","0");
INSERT INTO tbl_resolution VALUES("379 - 1999","","AO amounting P600,000.00 for Supplies and Materials under OSP","20","RESOLUTION NO.379-99.pdf","21","1999-07-15","0");
INSERT INTO tbl_resolution VALUES("379 - 2011","","Approve FY 2011 GF SB # 5, of Agoo, LU","1","Resolution 379-2011.pdf","21","2011-11-03","0");
INSERT INTO tbl_resolution VALUES("379 - 2012","","Approve Ord # 4, s 2012, of the SB of Rosario, LU, “An Ord Amending the Penalties of Sec 74.6,82, U (a, b & c), 85, 86, 88, 89, 90, 91 & 95 of the GAD Code of Rosario, LU”","5","Resolution 379-2012.pdf","21","2012-11-08","0");
INSERT INTO tbl_resolution VALUES("379 - 2013","","Approve the FY 2013 GF SB # 2, of Rosario, La Union.","11","RESOLUTION 379-2013.pdf","21","2013-11-21","0");
INSERT INTO tbl_resolution VALUES("380 - 1999","","AO amounting P1.5 M for the Anti-Dengue Program","20","RESOLUTION NO.380-99.pdf","21","1999-07-15","0");
INSERT INTO tbl_resolution VALUES("380 - 2011","","Approve FY 2011 GF SB # 2, of Bauang, LU","1","Resolution 380-2011.pdf","21","2011-11-03","0");
INSERT INTO tbl_resolution VALUES("380 - 2012","","Approve Ord # 5, s 2012, of the SB of San Gabriel, LU, “An Ord Prescribing the Use of Police/Fire Line w/n the Territorial Jurisdiction of San Gabriel, LU & Prescribing Penalties for Violation Thereof”","3","Resolution 380-2012.pdf","21","2012-11-08","0");
INSERT INTO tbl_resolution VALUES("380 - 2013","","Approve Mun Ord # 23-2013, of the SB of San Juan, LU, “An Ord Declaring the Temporary Closure of a Portion of Velasco St from Dec 16, 2013 to Jan 3, 2014 to Pave Way for the Pre-Fiesta, Post-Fiesta & Fiesta Proper Celebs”.","10","RESOLUTION 380-2013.pdf","21","2013-11-21","0");
INSERT INTO tbl_resolution VALUES("381 - 1999","","Contract of Consultancy Service w/ Mr. Arnold Lewis, on Agriculture and Tobacco Industry Dev’t to the OPG","20","RESOLUTION NO.381-99.pdf","21","1999-07-15","0");
INSERT INTO tbl_resolution VALUES("381 - 2011","","Return Ord # 2, s 2011, of the SB of Rosario, LU, “An Ord Adopting the New Rates of Local Civil Registry Fee in the Mun of Rosario, LU”","20","Resolution 381-2011.pdf","21","2011-11-03","0");
INSERT INTO tbl_resolution VALUES("381 - 2012","","Congratulate Dir. Gen. Arturo G. Cacdac, Jr. on his appointment as PDEA Director.","1,3,5,7,9,10,11,12,13,18,19,20","Resolution 381-2012.pdf","21","2012-11-08","0");
INSERT INTO tbl_resolution VALUES("381 - 2013","","Approve Mun Ord # 24-2013, of the SB of San Juan, La Union “An Ord Fixing the Dates of Town Fiesta Celebs”","10","RESOLUTION 381-2013.pdf","21","2013-11-21","0");
INSERT INTO tbl_resolution VALUES("382 - 1999","","MOA w/ DZNL relative to the Health in Every Home Program on air","20","RESOLUTION NO.382-99.pdf","21","1999-07-15","0");
INSERT INTO tbl_resolution VALUES("382 - 2011","","Approve Mun Ord # 25-2011, of the SB of San Juan, LU, “an Ord Prescribing Rental in the Use of Dumptrucks& Heavy Equipment”","20","Resolution 382-2011.pdf","21","2011-11-03","0");
INSERT INTO tbl_resolution VALUES("382 - 2012","","Condole with Mrs. Juliana M. Mosuela, Bangar.","1,3,5,7,9,11,12,13,18,19,20","Resolution 382-2012.pdf","21","2012-11-15","0");
INSERT INTO tbl_resolution VALUES("382 - 2013","","Congratulate Caila Jean Munar of Rosario, La Union for being adjudged 6th Placer during the PantawidPamilya Nat’l Search for Exemplary PantawidPamilya at PICC.","6","RESOLUTION 382-2013.pdf","21","2013-11-21","0");
INSERT INTO tbl_resolution VALUES("383 - 1999","","Set aside P300,000.00 and identify the project intended for Rosario, LU","20","RESOLUTION NO.383-99.pdf","21","1999-07-15","0");
INSERT INTO tbl_resolution VALUES("383 - 2011","","Return Ord # 4, s 2011, of the SB of San Gabriel, LU, “Revised Tax Ord, Otherwise Known as the Revised Revenue Code of San Gabriel, LU”","20","Resolution 383-2011.pdf","21","2011-11-03","0");
INSERT INTO tbl_resolution VALUES("383 - 2012","","Return Mun Ord # 02, s 2012, of the SB of Sto. Tomas, LU, “An Ord Enacting the Revision of the Comprehensive Traffic Rules & Regulations & Transportation Code of the Mun of Sto. Tomas, LU, & Providing Penalties to Violations Thereof”.","9","Resolution 383-2012.pdf","21","2012-11-15","0");
INSERT INTO tbl_resolution VALUES("383 - 2013","","Extend gratitude to the 3-termer PunongBrgys of the province.","9","RESOLUTION 383-2013.pdf","21","2013-11-21","0");
INSERT INTO tbl_resolution VALUES("384 - 1999","","P37,000.00 F/A to Brgy. Baay, Bagulin, LU, for the concrete pavement of the barangay road","20","RESOLUTION NO.384-99.pdf","21","1999-07-15","0");
INSERT INTO tbl_resolution VALUES("384 - 2011","","Request the MC to furnish SP a copy of Ord # 20, s 2008, in relation to its Ord # 10, s 2011, “an Ord Amending Art 45, Cemetery Charges of Ord # 20, s 2008,, Otherwise Known as the Revenue Code of the Mun of Bauang, LU”","20","Resolution 384-2011.pdf","21","2011-11-03","0");
INSERT INTO tbl_resolution VALUES("384 - 2012","","Return Ord # 2012-002, emb in Res # 2012-184, of the SB of Bangar, LU, “An Ord Regulating the Sale & Use of Plastic Bags & Styrofoam in the Mun of Bangar, LU”","1","Resolution 384-2012.pdf","21","2012-11-15","0");
INSERT INTO tbl_resolution VALUES("384 - 2013","","P35,200.00 F/A to the “IBTUR 88”","4","RESOLUTION 384-2013.pdf","21","2013-11-21","0");
INSERT INTO tbl_resolution VALUES("385 - 1999","","P20,000.00 F/A to Brgy. Suyo, Bagulin, LU, for the putting up of streetlights","20","RESOLUTION NO.385-99.pdf","21","1999-07-15","0");
INSERT INTO tbl_resolution VALUES("385 - 2011","","Approve Mun Ord # 01, s 2011, of the SB of Tubao, LU, “An Ord Imposing Delivery Service Package Fee in the Tubao Birthing Home, Mun of Tubao, Prov. of LU”","20","Resolution 385-2011.pdf","21","2011-11-03","0");
INSERT INTO tbl_resolution VALUES("385 - 2012","","Return Ord # 2012-003, of the SB of Bangar, La Union, “Amending the Anti-Littering Ord of the Mun of Bangar, La Union”","1","Resolution 385-2012.pdf","21","2012-11-15","0");
INSERT INTO tbl_resolution VALUES("385 - 2013","","Approve the FY 2014 GF AB, of Agoo, La Union.","2","RESOLUTION 385-2013.pdf","21","2013-11-28","0");
INSERT INTO tbl_resolution VALUES("386 - 1999","","P30,000.00 F/A to Brgy. Sacyud, CSF, LU, for the repair of the RP-German Farmers Training Center","20","RESOLUTION NO.386-99.pdf","21","1999-07-15","0");
INSERT INTO tbl_resolution VALUES("386 - 2011","","Approve Mun Ord # 21-2011, of the SB of Agoo, LU, “an Ord Prescribing the Rates in Market Stall Fees, Payment of Privilege Rights & Parking Fees at the Agoo Public Market w/ Basement Parking (Phase III) in Agoo, LU”","20","Resolution 386-2011.pdf","21","2011-11-03","0");
INSERT INTO tbl_resolution VALUES("386 - 2012","","Return Ord # 7-2012, of the SB of San Gabriel, LU, “An Ord Regulating the Use of Plastic Bags in Commercial Establishments in the Mun of San Gabriel, LU & Providing Penalties for Violation Thereof”","1","Resolution 386-2012.pdf","21","2012-11-15","0");
INSERT INTO tbl_resolution VALUES("386 - 2013","","Approve the FY 2013 GF SB # 1, of San Juan, La Union.","2","RESOLUTION 386-2013.pdf","21","2013-11-28","0");
INSERT INTO tbl_resolution VALUES("387 - 1999","","P20,000.00 F/A to Brgy. Ilocanos Norte, CSF, LU, for the construction of an alley and open canal bet. Gov. Ortega St. and Bonifacio St.","20","RESOLUTION NO.387-99.pdf","21","1999-07-15","0");
INSERT INTO tbl_resolution VALUES("387 - 2011","","Commend Dr. Jeisela C. Balderas-Gaerlan of Lorma Medical Center for being awarded the Outstanding Pediatrician in Community Service by the Phil Pediatric Society","1,10,18","Resolution 387-2011.pdf","21","2011-11-03","0");
INSERT INTO tbl_resolution VALUES("387 - 2012","","MOA with AGLAUN re: utilization of the PGLUs Culture & Art Gallery to exhibit the former’s art works.","20","Resolution 387-2012.pdf","21","2012-11-15","0");
INSERT INTO tbl_resolution VALUES("387 - 2013","","Approve the FY 2013 GF SB # 2, of Sto. Tomas, La Union.","2","RESOLUTION 387-2013.pdf","21","2013-11-28","0");
INSERT INTO tbl_resolution VALUES("388 - 1999","","P10,000.00 F/A to Brgy. Sta. Rita East, Agoo, LU, for the installation of streetlights","20","RESOLUTION NO.388-99.pdf","21","1999-07-15","0");
INSERT INTO tbl_resolution VALUES("388 - 2011","","Lift declaration of the State of Calamity due to Dengue","10,18","Resolution 388-2011.pdf","21","2011-11-03","0");
INSERT INTO tbl_resolution VALUES("388 - 2012","","Endorse & support the City of Vigan, Ilocos Sur to become 1 of the New 7 Wonders – Cities of the World.","1,3,5,7,9,10,11,12,13,18,19,20","Resolution 388-2012.pdf","21","2012-11-15","0");
INSERT INTO tbl_resolution VALUES("388 - 2013","","Approve the FY 2013 GF SB # 8, of Agoo, La Union.","2","RESOLUTION 388-2013.pdf","21","2013-11-28","0");
INSERT INTO tbl_resolution VALUES("389 - 1999","","P10,000.00 F/A to Brgy. Bariquir, Naguilian, LU, for their streetlight project","20","RESOLUTION NO.389-99.pdf","21","1999-07-15","0");
INSERT INTO tbl_resolution VALUES("389 - 2011","","Condole w/ family of the late Mrs. Magdalena A. Jaravata","20","Resolution 389-2011.pdf","21","2011-11-03","0");
INSERT INTO tbl_resolution VALUES("389 - 2012","","Congratulate Mayor Daisy Sayangda, Santol, La Union for being chosen as this year’s awardee of the US Dept of State’s Ninoy& Cory Aquino Fellowship for Professional Dev’t","1,3,5,7,9,10,11,12,13,18,19,20","Resolution 389-2012.pdf","21","2012-11-15","0");
INSERT INTO tbl_resolution VALUES("389 - 2013","","Approve Mun Ord # 21-2013, of the SB of San Juan, LU, “An Ord Promulgating Policies and Prescribing Measures for the Prevention & Control of HIV/AIDS in the Mun of San Juan, As Amended”","9","RESOLUTION 389-2013.pdf","21","2013-11-28","0");
INSERT INTO tbl_resolution VALUES("390 - 1999","","P20,000.00 F/A to Brgy. Lipay Norte, San Gabriel, LU, for the continuation of their multi-purpose hall","20","RESOLUTION NO.390-99.pdf","21","1999-07-15","0");
INSERT INTO tbl_resolution VALUES("390 - 2011","","Approve the FY 2012 Supplemental AIP of the Office of the Prov’l Governor","20","Resolution 390-2011.pdf","21","2011-11-10","0");
INSERT INTO tbl_resolution VALUES("390 - 2012","","Approve the Consolidated CY 2012 Supplemental AIP of:\n\na.	Office of the Prov’l Governor\nb.	Office of the Prov’l Eng’r\nc.	Balaoan Dist Hospital\n","1","Resolution 390-2012.pdf","21","2012-11-22","0");
INSERT INTO tbl_resolution VALUES("390 - 2013","","Return Ord # 19-2013, of the SB of San Juan, LU, “An Ord Authorizing the Reclassification of Agricultural Land At Brgy Cacapian, this Mun, in Favor of the LSC Homes Subdivision”","7","RESOLUTION 390-2013.pdf","21","2013-11-28","0");
INSERT INTO tbl_resolution VALUES("391 - 1999","","P15,000.00 F/A to Brgy. San Jose, Caba, LU, for the cementing around the barangay hall and purchase of fans","20","RESOLUTION NO.391-99.pdf","21","1999-07-15","0");
INSERT INTO tbl_resolution VALUES("391 - 2011","","Approve FY 2011 GF SB # 5, of Sudipen, LU","20","Resolution 391-2011.pdf","21","2011-11-10","0");
INSERT INTO tbl_resolution VALUES("391 - 2012","","Adjust salary of Ms. Delia Concepcion, Admin Officer IV, Balaoan Dist Hosp from SG 15, Step 6 to SG 16, Step 6.","1","Resolution 391-2012.pdf","21","2012-11-22","0");
INSERT INTO tbl_resolution VALUES("391 - 2013","","Return Ord # 2013-104, of the SB of Pugo, LU, “Reclassifying a Piece of Agricultural Land Owned by the Mun of Pugo, LU & Represented by Mayor Noemi Balloguing, Situated in Sitio Castilla, Cares, Pugo, LU for Non-Agricultural Purposes”","7","RESOLUTION 391-2013.pdf","21","2013-11-28","0");
INSERT INTO tbl_resolution VALUES("392 - 1999","","Enough amount as F/A to the SB of Tubao, LU, for the extension and concreting of the basketball court and multi-purpose pavement of Stio Sampaguita","20","RESOLUTION NO.392-99.pdf","21","1999-07-15","0");
INSERT INTO tbl_resolution VALUES("392 - 2011","","Approve FY 2011 GF SB # 6, of Sudipen, LU","20","Resolution 392-2011.pdf","21","2011-11-10","0");
INSERT INTO tbl_resolution VALUES("392 - 2012","","Approve Mun Ord # 42-2012, of the SB of Agoo, LU, “An Ord Imposing a Service Fee in the Amount of P20.00 for Client Who Will Secure a NBI Clearance at the NBIO Office in Agoo, LU”","10","Resolution 392-2012.pdf","21","2012-11-22","0");
INSERT INTO tbl_resolution VALUES("392 - 2013","","Return Ord # 2013-105, of the SB of Pugo, LU, “Reclassifying a Piece of Agricultural Land Purchased by the BilreyConst& Dev’t Corp Situated in Maoasoas Sur, Pugo, LU for Residential Purposes”","7","RESOLUTION 392-2013.pdf","21","2013-11-28","0");
INSERT INTO tbl_resolution VALUES("393 - 1999","","Enough amount as F/A to the SB of Tubao, Luna, LU, for the repair and concreting of Purok 3 bridge in Amallapay","20","RESOLUTION NO.393-99.pdf","21","1999-07-15","0");
INSERT INTO tbl_resolution VALUES("393 - 2011","","Return Mun Ord # 32-2011, of the SB of San Juan, LU, “An Ord Banning Long Vehicle to Park Along the Shoulders of the Nat’l Hi-way, Specifically at Places Where Road Signs are Installed”","9","Resolution 393-2011.pdf","21","2011-11-10","0");
INSERT INTO tbl_resolution VALUES("393 - 2012","","Approve Mun Ord # 11, s 2012, of the SB of Bauang, La Union, “An Ord Creating a Land Info Office to Facilitate the Land Titling of Public Lands in Bauang, La Union”","10","Resolution 393-2012.pdf","21","2012-11-22","0");
INSERT INTO tbl_resolution VALUES("393 - 2013","","Approve Mun Ord # 22-2013, of the SB of San Juan, LU, “An Ord Creating the Mun Housing Board, Defining its Clearinghouse Functions Pursuant to EO # 708, s 2008 & for Other Purposes”","7","RESOLUTION 393-2013.pdf","21","2013-11-28","0");
INSERT INTO tbl_resolution VALUES("394 - 1999","","P2,000.00 F/A to each SBM of Santol, LU, for the sports aid fund of said municipality","20","RESOLUTION NO.394-99.pdf","21","1999-07-15","0");
INSERT INTO tbl_resolution VALUES("394 - 2011","","Create an Ad Hoc Committee to study how the Prov’l Gov’t could extend appropriate honors & recognition for a forgotten hero, Pvt Jose S. Nisperos of the Phil Scouts, the First Filipino to be awarded the US Congressional Medal of Honor","10,18","Resolution 394-2011.pdf","21","2011-11-10","0");
INSERT INTO tbl_resolution VALUES("394 - 2012","","MOA with DSWD & ABONO Partylist re: Supplementary Feeding Program.","5","Resolution 394-2012.pdf","21","2012-11-22","0");
INSERT INTO tbl_resolution VALUES("394 - 2013","","TOPPS 2013\n\n1.	MR. RANDY O. DOMONDON – LUMC\n2.	MR. BEN D. DUCUSIN – PTO\n3.	MR. GABRIEL C. FLORES JR – LUPJ\n4.	MS. NILDA P. GAMBOA – Acctg\n5.	MS. SENTINELLA G. HALOG – RDH\n6.	MS. SHIRLEY O. MUNAR – Assessor\n7.	MS. ANGELITA E. OFIANA – SP\n8.	SR. ZENSERLY D. PAGADUAN – BDH\n9.	MR. GIL Z. PAJIMOLA – PGSO\n10.	MS. BABYLING T. VILLANUEVA - PPO","12","RESOLUTION 394-2013.pdf","21","2013-11-28","0");
INSERT INTO tbl_resolution VALUES("395 - 1999","","Enough amount as F/A to Brgy. Canaoay, CSF, LU, for the purchase of a garbage disposal","20","RESOLUTION NO.395-99.pdf","21","1999-07-15","0");
INSERT INTO tbl_resolution VALUES("395 - 2011","","Return Ord # 02-2011, of the SB of Balaoan, LU, “An Ord Enacting the Sanitation Code of the Mun of Balaoan, LU”","18","Resolution 395-2011.pdf","21","2011-11-10","0");
INSERT INTO tbl_resolution VALUES("395 - 2012","","Request DSWD &PantawidPamilyang Pilipino Program (4Ps) to study other means of remittance of the cash grants to the recipients where ATM machines are not available.","5","Resolution 395-2012.pdf","21","2012-11-22","0");
INSERT INTO tbl_resolution VALUES("395 - 2013","","MOA with DOH re: 2013 Maternal, Newborn, Child Health & Nutrition (MNCHN) Grants to support activities/programs to improve provision of reproductive health services by the LGUs towards the achievement of MDGs 4 & 5 by 2015","9","RESOLUTION 395-2013.pdf","21","2013-11-28","0");
INSERT INTO tbl_resolution VALUES("396 - 1999","","Enough amount as F/A to Brgy. Biday, CSF, LU, for the construction of a cemented footbridge going to Sitio 5","20","RESOLUTION NO.396-99.pdf","21","1999-07-15","0");
INSERT INTO tbl_resolution VALUES("396 - 2011","","MOA w/ the City Gov’t of San Fernando, LU & the Brgy. Gov’t of Parian, Madayegdeg, Catbangen, Poro, San Francisco, San Agustin, Canaoay& San Vicente, all of CSF, pertaining to the strengthening, sustainability & proper maintenance of the beautification & greening project of said brgys.","1,3,18,19","Resolution 396-2011.pdf","21","2011-11-10","0");
INSERT INTO tbl_resolution VALUES("396 - 2012","","Realign P3M from RA 7171 to the repair & maintenance of construction & heavy equipment.","1","Resolution 396-2012.pdf","21","2012-11-29","0");
INSERT INTO tbl_resolution VALUES("396 - 2013","","Congratulate “Think God Basketball Team” for winning as Champion of the International Basketball Asso Invitational Exhibition Game in Bangkok, Thailand","1,2,3,4,5,6,7,8,9,10,11,13","RESOLUTION 396-2013.pdf","21","2013-11-28","0");
INSERT INTO tbl_resolution VALUES("397 - 1999","","P5,000.00 F/A to Brgy. Ili Norte, San Juan, LU, for the beautification if their day care center","20","RESOLUTION NO.397-99.pdf","21","1999-07-15","0");
INSERT INTO tbl_resolution VALUES("397 - 2011","","Provide Cash Awards & Incentives to Brgy Officials who apprehended criminal offenders w/n the province & jurisdiction of the MTC, CTC & RTC","12","Resolution 397-2011.pdf","21","2011-11-10","0");
INSERT INTO tbl_resolution VALUES("397 - 2012","","Approve the FY 2012 GF SB # 9, of Agoo, La Union.","1","Resolution 397-2012.pdf","21","2012-11-29","0");
INSERT INTO tbl_resolution VALUES("397 - 2013","","Return Ord # 163, of the SB of Aringay, LU, “Prescribing Rules & Regulations on the Use of the Amphitheater & Providing Charges/Fees Thereof”","2","RESOLUTION 397 - 2013.pdf","21","2013-12-05","0");
INSERT INTO tbl_resolution VALUES("398 - 1999","","P10,000.00 F/A to Brgy. Baccuit Norte, Bauang, LU, for the installation of streetlights","20","RESOLUTION NO.398-99.pdf","21","1999-07-15","0");
INSERT INTO tbl_resolution VALUES("398 - 2011","","Condole w/ family of SPM Rafael M. Viduya, Surigao del Sur","21","Resolution 398-2011.pdf","21","2011-11-10","0");
INSERT INTO tbl_resolution VALUES("398 - 2012","","Approve the FY 2012 GF SB # 2, of Sudipen, La Union.","1","Resolution 398-2012.pdf","21","2012-11-29","0");
INSERT INTO tbl_resolution VALUES("398 - 2013","","Return Res # 35, s 2013, of the SB of Tubao, LU, requesting Mayor Jonalyn Fontanilla to regulate the ambulant vendors to sell their merchandise at the Tubao Public Market","2","RESOLUTION 398 - 2013.pdf","21","2013-12-05","0");
INSERT INTO tbl_resolution VALUES("399 - 1999","","AO amounting P93,922.62 for Terminal Leave Pay","20","RESOLUTION NO.399-99.pdf","21","1999-07-15","0");
INSERT INTO tbl_resolution VALUES("399 - 2011","","Condole w/ family of SPM Jonathan Verona, Pilar, Abra","21","Resolution 399-2011.pdf","21","2011-11-10","0");
INSERT INTO tbl_resolution VALUES("399 - 2012","","Approve the FY GF SB # 9, of Bagulin, La Union.","1","Resolution 399-2012.pdf","21","2012-11-29","0");
INSERT INTO tbl_resolution VALUES("399 - 2013","","Approve the FY 2014 GF AB of the PGLU.","1","RESOLUTION 399- 2013.pdf","21","2013-12-05","0");
INSERT INTO tbl_resolution VALUES("400 - 1999","","Realign P75,000.00 for the construction of a solar dryer in Baccuit, Bauang","20","RESOLUTION NO.400-99.pdf","21","1999-07-15","0");
INSERT INTO tbl_resolution VALUES("400 - 2011","","Condole w/ family of SBM Ignacio Maracha, Bangar, LU","10","Resolution 400-2011.pdf","21","2011-11-10","0");
INSERT INTO tbl_resolution VALUES("400 - 2012","","Approve the FY 2013 GF AB of Naguilian, La Union.","1","Resolution 400-2012.pdf","21","2012-11-29","0");
INSERT INTO tbl_resolution VALUES("400 - 2013","","Approve the FY 2014 GF AB of the Economic Enterprise.","1","RESOLUTION 400- 2013.pdf","21","2013-12-05","0");
INSERT INTO tbl_resolution VALUES("401 - 1999","","Approve the Annual Investment Program for CY 1999","9","RESOLUTION NO.401-99.pdf","21","1999-07-15","0");
INSERT INTO tbl_resolution VALUES("401 - 2011","","Condole w/ Bishop Artemio Rillera, Jr.","1","Resolution 401-2011.pdf","21","2011-11-17","0");
INSERT INTO tbl_resolution VALUES("401 - 2012","","Contract of Service w/ Dr. Melanie O. Liclican, as Visiting Consultant (Anesthesiology) at Balaoan Dist Hosp","3","Resolution 401-2012.pdf","21","2012-11-29","0");
INSERT INTO tbl_resolution VALUES("401 - 2013","","Return Ord # 10-2013, of the SB of San Gabriel, LU, “An Ord Regulating the Sale, Distribution, Display, Storage & Use of Firecrackers & Other Pyrotechnic Devices w/n the Jurisdiction of San Gabriel, LU”","9","RESOLUTION 401 - 2013.pdf","21","2013-12-05","0");
INSERT INTO tbl_resolution VALUES("402 - 1999","","Congratulate Mr. Alvin Jay Mostoles, Bangar Science H/S for winning in the Nat’l & International Competition for Young Scientists","29","RESOLUTION NO.402-99.pdf","21","1999-07-15","0");
INSERT INTO tbl_resolution VALUES("402 - 2011","","Approve GF 2011 SB # 2, of Caba, LU","1","Resolution 402-2011.pdf","21","2011-11-17","0");
INSERT INTO tbl_resolution VALUES("402 - 2012","","Congratulate & set aside P43,000.00 to the Special Olympics-LU Chapter for garnering medals during the 4th Special Olympics Bocce Competition in Brunei Darussalam","1,3,5,7,9,10,11,12,13,18,19,20","Resolution 402-2012.pdf","21","2012-12-06","0");
INSERT INTO tbl_resolution VALUES("402 - 2013","","Amended MOA w/ 1590 EC for the continued operation, preservation, maintenance and management of the Bauang Diesel Power Plant","1,2,3,4,5,6,7,8,9,10,11,12","RESOLUTION 402-2013.pdf","21","2013-12-12","0");
INSERT INTO tbl_resolution VALUES("403 - 1999","","Set aside P20,000.00 as cash incentive to Mr. Alvin Jay Mostoles","29","RESOLUTION NO.403-99.pdf","21","1999-07-15","0");
INSERT INTO tbl_resolution VALUES("403 - 2011","","Approve FY 2011 GF SB # 6, of Agoo, LU","1","Resolution 403-2011.pdf","21","2011-11-17","0");
INSERT INTO tbl_resolution VALUES("403 - 2012","","Approve Mun Ord # 12-2012, of the SB of San Juan, LU, “An Ord Declaring the Temporary Closure of a Portion of Velasco St from Dec 16, 2012 to Jan 03, 2013 to pave way for the Pre-Fiesta & Fiesta Proper Celebrations”","10","Resolution 403-2012.pdf","21","2012-12-06","0");
INSERT INTO tbl_resolution VALUES("403 - 2013","","COL & MOU with the LU Skymall Corp (Manna Mall) & Concerned Frontline Service NGAs for the lease of the One-Stop-Shop at Manna Mall.","11","RESOLUTION 403-2013.pdf","21","2013-12-12","0");
INSERT INTO tbl_resolution VALUES("404 - 1999","","Grant 1 year extension for LRA and DOLE to construct their Regional office","28","RESOLUTION NO.404-99.pdf","21","1999-07-22","0");
INSERT INTO tbl_resolution VALUES("404 - 2011","","Deed of Sale w/ all the land owners along the access Rd going to the proposed Agricultural Demo Farm","1,7,18,20","Resolution 404-2011.pdf","21","2011-11-17","0");
INSERT INTO tbl_resolution VALUES("404 - 2012","","Condole with the family of the late Gil Gallardo, ex-Mayor of Naguilian.","1,3,5,7,9,10,11,12,13,18,19,20","Resolution 404-2012.pdf","21","2012-12-06","0");
INSERT INTO tbl_resolution VALUES("405 - 1999","","Amended Deed of Donation to Cooperative Development Authority ","28","RESOLUTION NO.405-99.pdf","21","1999-07-22","0");
INSERT INTO tbl_resolution VALUES("405 - 2011","","Return Ord # 2011-092, of the SB of Santol, LU, “An Ord Regulating the Operation of Single Motor for Hire & Granting of Franchise Thereof w/n the Mun of Santol, LU”","10","Resolution 405-2011.pdf","21","2011-11-17","0");
INSERT INTO tbl_resolution VALUES("405 - 2012","","Request PCSO to donate 1 Ambulance & commitment to provide annual budget allocation for its repair & maintenance.","18","Resolution 405-2012.pdf","21","2012-12-06","0");
INSERT INTO tbl_resolution VALUES("405 - 2013","","Approve the FY 2014 GF AB, of Bangar, La Union.","1","RESOLUTION 405-2013.pdf","21","2013-12-19","0");
INSERT INTO tbl_resolution VALUES("406 - 1999","","Request Governor to suspend guidelines for Processing, Approval and Release of Financial/Commodity Assistance to projects under BAP","20","RESOLUTION NO.406-99.pdf","21","1999-07-22","0");
INSERT INTO tbl_resolution VALUES("406 - 2011","","Approve Mun Ord # 86, s 2011, of the SB of San Gabriel, LU, “An Ord to Curtail the Sale, Rental, Transfer, Distribution, Manufacture and/or Production of Pirated, Counterfeit or Fake Goods, Articles or Services & for Other Services & for Other Purposes”","10","Resolution 406-2011.pdf","21","2011-11-17","0");
INSERT INTO tbl_resolution VALUES("406 - 2012","","Congratulate VG AureoNisce for being awarded as the Most Outstanding League of Vice Gov of the Phils Nat’l Board Member","3,5,7,9,10,11,12,13,18,19,20","Resolution 406-2012.pdf","21","2012-12-06","0");
INSERT INTO tbl_resolution VALUES("406 - 2013","","Require SB of San Juan, LU to forward a Certification that Public Hearings had been conducted on the ff:\n\n1.	MO # 17-2013, Prescribing Fee for Recognition/Re-recognition of NGO\n2.	MO # 12-2013, Prescribing Fee Monthly Rental of the Foodcourt Stalls at the Public Market\n3.	MO # 18-2013, Prescribing Fee for the Filing of Admin Case\n4.	MO # 16-2013, Prescribing the Cost of Burial Lots & Rental of Tombs in the Condo Type Niches","4","RESOLUTION 406-2013.pdf","21","2013-12-19","0");
INSERT INTO tbl_resolution VALUES("407 - 1999","","Condole w/ BC Consuelo Littaua, CSF","30","RESOLUTION NO.407-99.pdf","21","1999-07-22","0");
INSERT INTO tbl_resolution VALUES("407 - 2011","","Return Ord # 05-2011, of the SB of San Gabriel, LU, :”An Ord Fixing the Time of Closure of All Commercial Establishment Such as Stores, Refreshment Stalls, Carinderias, Beer Houses & Karaoke/Videoke Bars, Regulating & Limiting the Serving, Selling, Giving Away or Dispensing of Intoxicating Malt, Vinous or Fermented Liquor w/n the Area of Jurisdiction of San Gabriel, LU” ","10","Resolution 407-2011.pdf","21","2011-11-17","0");
INSERT INTO tbl_resolution VALUES("407 - 2012","","Congratulate VG AureoNisce for earning the Master in Public Mgt Major in Local Governance & Dev’t by the Graduate School of Public & Dev’t Mgt of DAP","3,5,7,9,10,11,12,13,18,19,20","Resolution 407-2012.pdf","21","2012-12-06","0");
INSERT INTO tbl_resolution VALUES("407 - 2013","","Return Mun Ord # 167-2013, of the SB of Aringay, LU, “An Ord Creating the Mun Housing Board, Defining Its Clearinghouse Functions Pursuant to EO # 708, s 2008 & for Other Purposes”","4","RESOLUTION 407-2013.pdf","21","2013-12-19","0");
INSERT INTO tbl_resolution VALUES("408 - 1999","","Condole w/ Sec. Raul Manglapus, DFA","22","RESOLUTION NO.408-99.pdf","21","1999-07-29","0");
INSERT INTO tbl_resolution VALUES("408 - 2011","","MOA w/ PVAO pertaining to the Hospitalization Benefit of Duly Recognized Veterans & their Dependents at the NDH","1,5,7,18","Resolution 408-2011.pdf","21","2011-11-24","0");
INSERT INTO tbl_resolution VALUES("408 - 2012","","Enjoin the PGLU & authorize the Governor to be a Member-Institution of the NAKEM Conferences International – Phil Chapter","3","Resolution 408-2012.pdf","21","2012-12-06","0");
INSERT INTO tbl_resolution VALUES("409 - 1999","","Endorse HB # 1888, an act Establishing an Agricultural Training Center in the Municipality of Naguilian, Province of LU, to be Known as the Naguilian Agricultural Training Center & Appropriating Funds Thereof","26","RESOLUTION NO.409-99.pdf","21","1999-07-29","0");
INSERT INTO tbl_resolution VALUES("409 - 2011","","MOA w/ NTA, BFAR, DMMMSU-SLUC, & the Farmer Fisherfolks Cooperator of the Prov’l Fisheries & Aquatic Resources Mgt Council, relative to the partnership for the Tobacco Dust Plus Project","1,3,18","Resolution 409-2011.pdf","21","2011-11-24","0");
INSERT INTO tbl_resolution VALUES("409 - 2012","","MOA with the House of Representatives, ABONO Partylist, City Gov’t of San Fdo & the Mun of San Juan, San Gabriel & Bacnotan, Bauang, Naguilian & Bagulin, Selected NGAs, Private Sector Groups & Other NGOs re: creation of the Metro LU Dev’t Coordinating Council.","1","Resolution 409-2012.pdf","21","2012-12-13","0");
INSERT INTO tbl_resolution VALUES("409 - 2013","","Approve SB # 1, of the Economic Enterprise amounting to P1,610,000.00 for BDH & CMCH","4","RESOLUTION 409-2013.pdf","21","2013-12-19","0");
INSERT INTO tbl_resolution VALUES("410 - 1999","","Recall SP Res # 333-99","30","RESOLUTION NO.410-99.pdf","21","1999-07-29","0");
INSERT INTO tbl_resolution VALUES("410 - 2011","","Approve FY 2011 GF # 4, of San Juan, LU","1","Resolution 410-2011.pdf","21","2011-11-24","0");
INSERT INTO tbl_resolution VALUES("410 - 2012","","Approve the FY 2012 GF SB # 10, of Agoo, La Union.","1","Resolution 410-2012.pdf","21","2012-12-13","0");
INSERT INTO tbl_resolution VALUES("410 - 2013","","Approve the FY 2014 GF AB, of Naguilian, La Union.","4","RESOLUTION 410-2013.pdf","21","2013-12-19","0");
INSERT INTO tbl_resolution VALUES("411 - 1999","","Commend Top Ten Taxpaying Corporations and Individual Taxpayers","9","RESOLUTION NO.411-99.pdf","21","1999-07-29","0");
INSERT INTO tbl_resolution VALUES("411 - 2011","","Approve Ord # 09-2011, of the SB of Naguilian, LU, “An Ord Prohibiting Ambulant Vendors from Selling Any Kind of Goods or Merchandise & Pre-Need Services in the Brgys w/o the Necessary Brgy Clearance w/n the Territorial Jurisdiction of the Mun of Naguilian, LU & Providing Penalties for Violation Thereof”","10","Resolution 411-2011.pdf","21","2011-11-24","0");
INSERT INTO tbl_resolution VALUES("411 - 2012","","Endorse the approval, funding & early implementation of the Sn Fdo City Airport upgrading.","1","Resolution 411-2012.pdf","21","2012-12-13","0");
INSERT INTO tbl_resolution VALUES("411 - 2013","","Approve the FY 2013 GF SB # 2, of Santol, La Union.","4","RESOLUTION 411-2013.pdf","21","2013-12-19","0");
INSERT INTO tbl_resolution VALUES("412 - 1999","","Authorize purchase of:\n\na.	1 Vitara\nb.	2 Revo/Mitsubishi\nc.	2 L-300 FB Van\nd.	1 Nissan Sentra\n","20","RESOLUTION NO.412-99.pdf","21","1999-07-29","0");
INSERT INTO tbl_resolution VALUES("412 - 2011","","Approve Ord # 11-2011, of the SB of Naguilian, LU, “An Ord Requiring Organizers of Public Functions to Secure a Brgy Clearance as a Requirement for the Issuance of a Special Permit by the Office of the Mayor Prior to the Conduct Thereof in Any Public Facility or Structure w/n the Territorial Jurisdiction of the Mun of Naguilian, LU & Providing Penalties for Violation Thereof”","10","Resolution 412-2011.pdf","21","2011-11-24","0");
INSERT INTO tbl_resolution VALUES("412 - 2012","","Request Pres Benigno S. Aquino III to issue a Proclamation Order for a Special Non-Working Holiday on Mar 2, 2013 in the province.","1,3,5,7,9,10,11,12,13,18,19,20","Resolution 412-2012.pdf","21","2012-12-13","0");
INSERT INTO tbl_resolution VALUES("412 - 2013","","Approve the FY 2013 GF SB # 2, of Caba, La Union.","4","RESOLUTION 412-2013.pdf","21","2013-12-19","0");
INSERT INTO tbl_resolution VALUES("413 - 1999","","Approve FY 1999 GF SB # 2, of Sudipen, LU","20","RESOLUTION NO.413-99.pdf","21","1999-08-05","0");
INSERT INTO tbl_resolution VALUES("413 - 2011","","Approve Ord # 13-2011, of the SB of Naguilian, LU, :”An Ord Prohibiting the Possession & Sale of Pyrotechnics/Firecrackers w/n the Territorial Jurisdiction of the Mun of Naguilian”","10","Resolution 413-2011.pdf","21","2011-11-24","0");
INSERT INTO tbl_resolution VALUES("413 - 2012","","TOPPS 2012\n\n1.	Alfredo R. Buenaventura Jr\n2.	Ghenny Rose P. Estipular\n3.	Allily R. Galapon\n4.	Norma H. Flora\n5.	Nestor G. Gapuz\n6.	Rochelle A. Mamaril\n7.	Josephine A. Manantan\n8.	Alan C. Ochoco\n9.	Erlinda C. Ostrea\n10.	Vicenta O. Regacho\n","12","Resolution 413-2012.pdf","21","2012-12-13","0");
INSERT INTO tbl_resolution VALUES("413 - 2013","","Approve the FY 2013 GF SB # 3, of Caba, La Union.","4","RESOLUTION 413-2013.pdf","21","2013-12-19","0");
INSERT INTO tbl_resolution VALUES("414 - 1999","","Approve FY 1999 GF SB # 1, of Bagulin, LU","20","RESOLUTION NO.414-99.pdf","21","1999-08-05","0");
INSERT INTO tbl_resolution VALUES("414 - 2011","","Approve Ord # 17, s 2011, of the SB of Naguilian, LU, :”An Ord Prohibiting the Use & Sale of Plastic Bags at the Naguilian Public Market & in All Business Establishments w/n the Territorial Jurisdiction of the Mun of Naguilian, Province of LU, Providing Penalties for Violation thereof, Amending Previous Ordinances Inconsistent Thereto & for Other Purposes”","10","Resolution 414-2011.pdf","21","2011-11-24","0");
INSERT INTO tbl_resolution VALUES("414 - 2012","","Approve Mun Ord # 13-2012, of the SB of San Juan, LU, “An Ord Prohibiting Operators or Owners, as the Case Maybe, to Tricycle & Single Motorcycles from Using Open Exhaust Pipes & Imposing Penalty for Violation Thereof”","9","Resolution 414-2012.pdf","21","2012-12-13","0");
INSERT INTO tbl_resolution VALUES("414 - 2013","","Return Mun Ord # 101, s 2013, of the SB of Sudipen, LU, “An Ord Amending Sec 8 Under Mun Ord # 70, s 2007, An Ord Promulgating Rules & Regulations in the Operation of Public Motorized Tricycle & Utility Motorized Tricycle & Utility Motorized Single Motor, Providing Penalties for Violation Thereof & for Other Purposes”","4","RESOLUTION 414-2013.pdf","21","2013-12-19","0");
INSERT INTO tbl_resolution VALUES("415 - 1999","","AO amounting 436,700.54 for Terminal Leave Pay","20","RESOLUTION NO.415-99.pdf","21","1999-08-05","0");
INSERT INTO tbl_resolution VALUES("415 - 2011","","AB of the Economic Enterprise FY 2012","1","Resolution 415-2011.pdf","21","2011-11-24","0");
INSERT INTO tbl_resolution VALUES("415 - 2012","","Return Mun Ord # 002-2012 of the SB of Rosario, La Union, “An Ord Enacting the New Traffic Mgt of the Mun of Rosario, Prov of La Union & Implementing a Unified Route System for Tricycles”","9","Resolution 415-2012.pdf","21","2012-12-13","0");
INSERT INTO tbl_resolution VALUES("415 - 2013","","Return Mun Ord # 13, s 2013, of the SB of Bauang, LU, “An Ord Amending the 2002 Traffic Ord of the Mun of Bauang, LU Part Art II – Parking, No Parking, Loading & Unloading Zones & Providing Add’l Provisions Thereto”","4","RESOLUTION 415-2013.pdf","21","2013-12-19","0");
INSERT INTO tbl_resolution VALUES("415B- 1999","","Approve Ord # 99-13, of the SB of Naguilian, LU, Providing for the Creation of a Municipal Rabies Control Committee, in that Municipality, Defining its Functions & for Other Purposes","24","RESOLUTION NO.514B-99.pdf","21","1999-08-05","0");
INSERT INTO tbl_resolution VALUES("416 - 1999","","P20,000.00 F/A to Brgy. Masicong, CSF, LU, for the Barangay Agricultural Productivity Program","20","RESOLUTION NO.416-99.pdf","21","1999-08-05","0");
INSERT INTO tbl_resolution VALUES("416 - 2011","","AB of the PGLU FY 2012","1","Resolution 416-2011.pdf","21","2011-11-24","0");
INSERT INTO tbl_resolution VALUES("416 - 2012","","Return Ord # 6, s 2012 of the SB of San Gabriel, LU, “An Ord Prohibiting the Use, Sale, Distribution & Advertisement of Cigarettes & Other Tobacco Products in Certain Places, Imposing Penalties for Violations Thereof & Providing Funds Therefore & for Other Purposes”","10","Resolution 416-2012.pdf","21","2012-12-13","0");
INSERT INTO tbl_resolution VALUES("416 - 2013","","Return Mun Ord # 14, s 2013, of the SB of Bauang, LU, “An Ord Amending Art D, Sec 17 Ord # 11, s 2011, An Ord Amending Ord # 15, s 2008, An Ord Adopting a Comprehensive Transportation & Traffic Regulations for the Administration & enforcement, Providing Penalties for Violation Thereof, & for the Repeal of all Ordinances in Conflict Therewith”","4","RESOLUTION 416-2013.pdf","21","2013-12-19","0");
INSERT INTO tbl_resolution VALUES("417 - 1999","","P5,000.00 F/A to Mrs. Mila Sarinas, Brgy. Acao, Bauang, LU, whose house was engulfed by fire","20","RESOLUTION NO.417-99.pdf","21","1999-08-05","0");
INSERT INTO tbl_resolution VALUES("417 - 2011","","Return Ord # 15, emb in Res # 221, s 2001, of the MC of Bauang, LU, “An Ord Reclassifying the Parcels of Land Owned by Tubao Credit Coop Located at Brgy. Disso-or, this Mun from Agricultural to Commercial Classification”","7","Resolution 417-2011.pdf","21","2011-11-24","0");
INSERT INTO tbl_resolution VALUES("417 - 2012","","MOA with Red Ribbon re: rental of a portion of Mabanag Quadrangle","18","Resolution 417-2012.pdf","21","2012-12-13","0");
INSERT INTO tbl_resolution VALUES("417 - 2013","","MOA w/ BFAR, LGU of Bauang & the Bauang Fishing Group Consumer Coop for the establishment of a Community-Based Multi-Species Hatchery (CBMSH) &AquasilvicultureTechnodemo Project Components of the Phil Nat’l Aquasilviculture Program.","4","RESOLUTION 417-2013.pdf","21","2013-12-19","0");
INSERT INTO tbl_resolution VALUES("418 - 1999","","Realign P300 T for the purchase of a backhoe and P200 T for Skills Training to purchase certified seeds","20","RESOLUTION NO.418-99.pdf","21","1999-08-05","0");
INSERT INTO tbl_resolution VALUES("418 - 2012","","Approve the FY 2012 GF SB # 3, of Bauang, La Union.","1","Resolution 418-2012.pdf","21","2012-12-18","0");
INSERT INTO tbl_resolution VALUES("418 - 2013","","Authorize the enrolment of the existing current accounts of the PGLU in the E-Tax Payment Facility of the LBP & designating OIC-Prov’l Acct Jolly Balancio or her representatives as the authorized users thereof","1","RESOLUTION 418-2013-4.pdf","21","2013-12-19","0");
INSERT INTO tbl_resolution VALUES("419 - 1999","","Realign P499,800.00 for the purchase of Palay Seeds","20","RESOLUTION NO.419-99.pdf","21","1999-08-05","0");
INSERT INTO tbl_resolution VALUES("419 - 2011","","Create a Technical Working Group to conduct Legislative Researches, Facilitate Public consultations & Focus Group Discussions pertaining to the proposed Ord Regulating the Use & Sale of All Single-Use Plastic Bags, Bottles, etc","1,10,18","Resolution 419-2011.pdf","21","2011-11-24","0");
INSERT INTO tbl_resolution VALUES("419 - 2012","","Approve the FY 2012 GF SB # 4, of Bauang, La Union.","1","Resolution 419-2012.pdf","21","2012-12-18","0");
INSERT INTO tbl_resolution VALUES("419 - 2013","","Approve the Prov’l ELA CY 2013-2016","4","RESOLUTION 419-2013.pdf","21","2013-12-19","0");
INSERT INTO tbl_resolution VALUES("420 - 1999","","P1,500.00 F/A to SK be given in lump sum to the Municipality/City SK Federation","20","RESOLUTION NO.420-99.pdf","21","1999-08-05","0");
INSERT INTO tbl_resolution VALUES("420 - 2011","","Approve SB #4 involving a total appropriation of P16,378,499.37.","20","Resolution 420-2011.pdf","21","2011-12-01","0");
INSERT INTO tbl_resolution VALUES("420 - 2012","","Approve the FY 2012 GF SB # 5, of Bauang, La Union.","1","Resolution 420-2012.pdf","21","2012-12-18","0");
INSERT INTO tbl_resolution VALUES("420 - 2013","","Approve the Medium-Term Prov’l Dev’t Plan (PDP) CY 2013-2017","4","RESOLUTION 420-2013.pdf","21","2013-12-19","0");
INSERT INTO tbl_resolution VALUES("421 - 1999","","P60,000.00 as F/A to Mr. Rafael Aquino for his chemotherapy","20","RESOLUTION NO.421-99.pdf","21","1999-08-05","0");
INSERT INTO tbl_resolution VALUES("421 - 2011","","MOA w/ Cong. Raymund V. Palatino, KabataanPartylist, pertaining his allocation of P200,000.00 to be utilized as a medical assistance fund for indigent patients either confined / outpatient at Naguilian District Hospital & Northern LU(Balaoan), District Hospital at P100,000.00 each.","7,18,20","Resolution 421-2011.pdf","21","2011-12-01","0");
INSERT INTO tbl_resolution VALUES("421 - 2012","","Approve the FY 2012 GF SB # 6, of Bauang, La Union.","1","Resolution 421-2012.pdf","21","2012-12-18","0");
INSERT INTO tbl_resolution VALUES("421 - 2013","","Approve the FY 2013 GF SB # 4, of the CSF, La Union.","1","RESOLUTION 421-2013.pdf","21","2013-12-26","0");
INSERT INTO tbl_resolution VALUES("422 - 1999","","P50,000.00 F/A to Brgy. Lubing, San Juan, LU, for the completion of their barangay hall","20","RESOLUTION NO.422-99.pdf","21","1999-08-05","0");
INSERT INTO tbl_resolution VALUES("422 - 2011","","MOA w/ PVAO pertaining to the hospitalization benefits of Veterans & their Dependents at BDH","5","Resolution 422-2011.pdf","21","2011-12-01","0");
INSERT INTO tbl_resolution VALUES("422 - 2012","","Approve the FY 2012 GF SB # 7, of Bauang, La Union.","1","Resolution 422-2012.pdf","21","2012-12-18","0");
INSERT INTO tbl_resolution VALUES("422 - 2013","","Approve the FY 2013 GF SB # 5, of the CSF, La Union.","1","RESOLUTION 422-2013.pdf","21","2013-12-26","0");
INSERT INTO tbl_resolution VALUES("423 - 1999","","P20,000.00 F/A to Brgy. Cataguingtingan, Rosario, LU, for the stage project","20","RESOLUTION NO.423-99.pdf","21","1999-08-05","0");
INSERT INTO tbl_resolution VALUES("423 - 2011","","Approve the request of Engr. Romulo Q. Requierme, COMTEL Industrial Services, Inc.,accredited contractor of SMART Communications, Inc. requesting the right of way permit/clearance to undertake the design, permitting & implementation of SMART-LU FITL Phase 2 Project along Luna, Bacnotan, Balaoan, Bangar,& Sudipen Nat’l Road. ","1","Resolution 423-2011.pdf","21","2011-12-01","0");
INSERT INTO tbl_resolution VALUES("423 - 2012","","Approve the Economic Enterprise’s AB 2013","1","Resolution 423-2012.pdf","21","2012-12-18","0");
INSERT INTO tbl_resolution VALUES("423 - 2013","","Approve the FY 2013 GF SB # 6, of the CSF, La Union.","1","RESOLUTION 423-2013.pdf","21","2013-12-26","0");
INSERT INTO tbl_resolution VALUES("424 - 1999","","P20,000.00 F/A to Brgy. Polipol, San Gabriel, LU, for the rehab and extension of the MPCI Bldg","20","RESOLUTION NO.425-99.pdf","21","1999-08-05","0");
INSERT INTO tbl_resolution VALUES("424 - 2011","","Approve Mun. Ord #36-2011 of the SB of San Juan, LU entitled “An Ord Prohibiting the Construction & extension at the Frontage of the San Juan Commercial Center”.","10","Resolution 424-2011.pdf","21","2011-12-01","0");
INSERT INTO tbl_resolution VALUES("424 - 2012","","Approve the PGLU’s AB 2013","1","Resolution 424-2012.pdf","21","2012-12-18","0");
INSERT INTO tbl_resolution VALUES("424 - 2013","","Return City Ord # 2013-02, of the SP of the CSF, LU, “An Ord Amending City Ord # 2011-013, An Ord Regulating the Sale, Serving & Drinking of Liquor of Entertainment, Business Establishments in Public Places, & Providing Penalties for Violation Thereof, & Repealing City Ord # 2012-13”","2","RESOLUTION 424-2013.pdf","21","2013-12-26","0");
INSERT INTO tbl_resolution VALUES("425 - 1999","","P20,000.00 F/A to Brgy. Apatut, Balaoan, LU, for the construction of their permanent CVO outpost","20","RESOLUTION NO.425-99.pdf","21","1999-08-05","0");
INSERT INTO tbl_resolution VALUES("425 - 2011","","Return for amendment/ correction,Mun.  Ord #88, s 2011 of the SB of Sudipen, LU entitled ”An Ord Prescribing the Rules & Regulations for the Use & Operation of Motorcycle on Highways &Rds in the Municipality”.","10","Resolution 425-2011.pdf","21","2011-12-01","0");
INSERT INTO tbl_resolution VALUES("425 - 2012","","Approve City Ord # 2012-04, of the City of Sn Fdo, LU, “An Ord Authorizing the Proposed Borrowing of the City Gov’t of Sn Fdo, Prov of LU, in the Amount of P99 M to Fund the Amortization of the Loan of the Dev’t of the Sanitary Landfill at Brgy Mameltac”","1","Resolution 425-2012.pdf","21","2012-12-18","0");
INSERT INTO tbl_resolution VALUES("425 - 2013","","Approve Ord # 47, s 2013, of the SB of Naguilian, La Union, “An Ord Authorizing the Proposed Borrowing of the Mun of Naguilian, Prov of LU, in the Amt of P53,600.000.00 to Fund the Implementation of Various Priority Projects of the Mun Gov’t of Naguilian, La Union”","10","RESOLUTION 425-2013.pdf","21","2013-12-26","0");
INSERT INTO tbl_resolution VALUES("426 - 1999","","P10,000.00 F/A to the PTCA of Damortis E/S, Sto. Tomas, LU, for the construction of a useful stage roof","20","RESOLUTION NO.426-99.pdf","21","1999-08-05","0");
INSERT INTO tbl_resolution VALUES("426 - 2012","","Approve the construction of the Bacnotan Tap-Bacnotan Substation 230 KV Transmission Line Project of the Nat’l Grid Corp of the Phils (NGCP)","1","Resolution 426-2012.pdf","21","2012-12-18","0");
INSERT INTO tbl_resolution VALUES("426 - 2013","","Approve Res # 26, s 2013, of the SB of Caba, La Union, “Res Adopting the 2013 IRP of the SB of Caba, La Union”","10","RESOLUTION 426-2013.pdf","21","2013-12-26","0");
INSERT INTO tbl_resolution VALUES("427 - 1999","","P10,000.00 F/A to Brgy. Maragayap, Bacnotan, LU, for the purchase of recreation facilities ","20","RESOLUTION NO.427-99.pdf","21","1999-08-05","0");
INSERT INTO tbl_resolution VALUES("427 - 2011","","Approve Mun Ord # 16, s 2011, of the SB of Bauang, LU, “An Ord Amending Sec 14 & 16 of ord # 5, emb in Res # 194, s 2011, “An Ord Prohibiting the Use of Plastic Bag on Dry Goods, Regulating Its Use on Wet Goods & Providing Penalties Thereof”","1","Resolution 427-2011.pdf","21","2011-12-05","0");
INSERT INTO tbl_resolution VALUES("427 - 2012","","Return Ord # 9-2012, of the SB of San Gabriel, La Union, “The Environmental Code of the Mun of San Gabriel, La Union”","1","Resolution 427-2012.pdf","21","2012-12-18","0");
INSERT INTO tbl_resolution VALUES("427 - 2013","","Return Ord # 22, s 2013, of the SB of Naguilian, La Union, “An Ord Deputizing All Barangay Officials in the Enforcement of Mun Ordinances & Providing Guidelines in the Implementation Thereof”","10","RESOLUTION 427-2013.pdf","21","2013-12-26","0");
INSERT INTO tbl_resolution VALUES("428 - 1999","","Realign P75,000.00 in Brgy. Urayong, Caba, LU for the continuation of their barangay road","20","RESOLUTION NO.428-99.pdf","21","1999-08-05","0");
INSERT INTO tbl_resolution VALUES("428 - 2011","","Return Mun Ord # 90, s 2011, of the SB of Sudipen, LU, “An ord Prohibiting the Use of Plastic Bags on Dry Goods & Regulating Its Utilization on Wet Goods & Prohibiting the Use of Styrofoam in the Mun of Sudipen, LU, & Prescribing Penalties Thereof”","1","Resolution 428-2011.pdf","21","2011-12-05","0");
INSERT INTO tbl_resolution VALUES("428 - 2012","","Approve Mun Ord # 43-2012, of the SB of Agoo, LU, “An Ord Amending Sec 19 (d) of Mun Ord # 02-2012, An Ord Regulating the Maintenance & Safekeeping of Animals for the Welfare & Protection of Residents in the 49 Brgys of the Mun of Agoo, LU”","3","Resolution 428-2012.pdf","21","2012-12-18","0");
INSERT INTO tbl_resolution VALUES("428 - 2013","","Condole w/ the bereaved family of Mrs. Delia R. Concepcion","1,2,3,4,5,6,7,8,9,10,11,12","RESOLUTION 428-2013.pdf","21","2013-12-26","0");
INSERT INTO tbl_resolution VALUES("429 - 1999","","P35,520.00 F/A to Brgy. Sta. Rita Sur, Agoo, LU, for the repair of the hanging bridge","20","RESOLUTION NO.429-99.pdf","21","1999-08-05","0");
INSERT INTO tbl_resolution VALUES("429 - 2011","","Adjust SG of Dr. Henry R. Padilla, Dentist II","11","Resolution 429-2011.pdf","21","2011-12-15","0");
INSERT INTO tbl_resolution VALUES("429 - 2012","","Approve SB # 4, of the PGLU involving P15,257,088.00","1","Resolution 429-2012.pdf","21","2012-12-18","0");
INSERT INTO tbl_resolution VALUES("430 - 1999","","P25,000.00 F/A to Brgy. Tagudtud, Bagulin, LU, for the construction of their barangay health center","20","RESOLUTION NO.430-99.pdf","21","1999-08-05","0");
INSERT INTO tbl_resolution VALUES("430 - 2011","","Approve the programming of the RA 7171 amounting P171,234,912.00 & Barley & Native Tobacco Excise Tax amounting P3,219,462.00","3","Resolution 430-2011.pdf","21","2011-12-15","0");
INSERT INTO tbl_resolution VALUES("430 - 2012","","Approve SB # 5, of the PGLU involving P36,003,493.00","1","Resolution 430-2012.pdf","21","2012-12-18","0");
INSERT INTO tbl_resolution VALUES("431 - 1999","","P20,000.00 F/A to the SB of Aringay, LU, for the construction of a public toilet at Brgy. Sta. Rita","20","RESOLUTION NO.431-99.pdf","21","1999-08-05","0");
INSERT INTO tbl_resolution VALUES("431 - 2011","","Approve Ord # 02-2011, of the SB of Balaoan, LU, “An Ord Enacting the Sanitation Code of the Mun of Balaoan, LU”","10","Resolution 431-2011.pdf","21","2011-12-15","0");
INSERT INTO tbl_resolution VALUES("431 - 2012","","Approve Mun Ord # 33, s 2012, of the SB of Naguilian, LU, “An Ord Authorizing the Proposed Borrowing of the Mun of Naguilian, Prov of LU, in the Amount of P26,474,860.00 to Fund the Implementation of Various Projects of the Mun Gov’t of Naguilian, LU”","1,10","Resolution 431-2012.pdf","21","2012-12-18","0");
INSERT INTO tbl_resolution VALUES("432 - 1999","","P20,000.00 F/A to Brgy. Alibangsay, Bagulin, LU, for the repair of their barangay hall","20","RESOLUTION NO.432-99.pdf","21","1999-08-05","0");
INSERT INTO tbl_resolution VALUES("432 - 2011","","MOU pertaining to the distribution of agricultural machineries/equipment/tools to the different brgy councils/organizations","3","Resolution 432-2011.pdf","21","2011-12-15","0");
INSERT INTO tbl_resolution VALUES("432 - 2012","","Grant Authority to the Prov’l Governor to enter into a MOA w/ DILG re: availment& release of the latter’s Performance Challenge Fund Subsidy & approving the implementation of the PCF Project/s & certifying that the proposed project is included in the 2013 AIP","1,3,7,9,10,18,20","Resolution 432-2012.pdf","21","2012-12-18","0");
INSERT INTO tbl_resolution VALUES("433 - 1999","","P18,000.00 F/A to Brgy. Central West, Bauang, LU, for the concrete pavement of their auditorium stageP18,000.00 F/A to Brgy. Central West, Bauang, LU, for the concrete pavement of their auditorium stage","20","RESOLUTION NO.433-99.pdf","21","1999-08-05","0");
INSERT INTO tbl_resolution VALUES("433 - 2011","","Approve Ord # 07-2011, of the SB of San Gabriel, LU, “An Ord Regulating the Establishment/Operation of Backyard &Comm’l Piggery Farm for the Promotion of Cleanliness & Sanitation in the Mun of San Gabriel, LU”","3","Resolution 433-2011.pdf","21","2011-12-15","0");
INSERT INTO tbl_resolution VALUES("433 - 2012","","MOA with the Phil Nuclear Research Institute (PNRI) re: subscription of the Optically Stimulated Luminescent (OSL) Dosimeter Personnel Monitoring Service by RDH.","1","Resolution 433-2012.pdf","21","2012-12-27","0");
INSERT INTO tbl_resolution VALUES("433A- 1999","","P10,000.00 F/A to Brgy. Sta. Rita East, Aringay, LU, for the construction of their multi-purpose hall","20","RESOLUTION NO.433A-99.pdf","21","1999-08-05","0");
INSERT INTO tbl_resolution VALUES("433B- 1999","","P15,000.00 F/A to Brgy. Dinanum, San Juan, LU, for the electrification of the basketball court","20","RESOLUTION NO.433B-99.pdf","21","1999-08-05","0");
INSERT INTO tbl_resolution VALUES("433C- 1999","","P20,000.00 F/A to Brgy. Calungbuyan, Balaoan, LU, for the construction of a waiting shed","20","RESOLUTION NO.433C-99.pdf","21","1999-08-05","0");
INSERT INTO tbl_resolution VALUES("433D- 1999","","MOA w/ DSWD relative to the implementation and localization of the CIDSS program","20","RESOLUTION NO.433D-99.pdf","21","1999-08-05","0");
INSERT INTO tbl_resolution VALUES("434 - 1999","","P10,000.00 Cash Award to the Outstanding Farmers:\n\na.	Benedicto Ordinario\nb.	Nicolas Natura\n","27","RESOLUTION NO.434-99.pdf","21","1999-08-05","0");
INSERT INTO tbl_resolution VALUES("434 - 2011","","Approve Mun Ord # 004-2011. Of the SB of Rosario, LU, “An Ord Enacting the Establishment of the Office of the Public Safety, Traffic Enforcement & Management of Rosario (OPS TEAM ROSARIO) & Mandating the Implementation of a Comprehensive & Sustainable Program”","3","Resolution 434-2011.pdf","21","2011-12-15","0");
INSERT INTO tbl_resolution VALUES("435 - 1999","","State of Calamity due to monsoon rains","23","RESOLUTION NO.435-99.pdf","21","1999-08-05","0");
INSERT INTO tbl_resolution VALUES("435 - 2011","","Grant Productivity Enhancement Incentive ","20","Resolution 435-2011.pdf","21","2011-12-15","0");
INSERT INTO tbl_resolution VALUES("435A- 1999","","Request Pres. ERAP to release Calamity Funds to rehabilitate extensive damages due to monsoon rains","23","RESOLUTION NO.435A-99.pdf","21","1999-08-05","0");
INSERT INTO tbl_resolution VALUES("436 - 1999","","Condole w/ VM Ricarte Valdez, Sr., Luna","17","RESOLUTION NO.436-99.pdf","21","1999-08-05","0");
INSERT INTO tbl_resolution VALUES("436 - 2011","","Create the LU Honeybee Center, Bacnotan, LU as a Prov’l Economic Enterprise & to Open a Special Bank Account for the Center","20","Resolution 436-2011.pdf","21","2011-12-15","0");
INSERT INTO tbl_resolution VALUES("437 - 1999","","Condole w/ Mayor Agustin Valdez, Caba","23","RESOLUTION NO.437-99.pdf","21","1999-08-12","0");
INSERT INTO tbl_resolution VALUES("437 - 2011","","Condole w/  Mr. Florante C. Fesalbon, SBM, Caba, LU","11","Resolution 437-2011.pdf","21","2011-12-15","0");
INSERT INTO tbl_resolution VALUES("438 - 1999","","Approve FY 1999 GF AB, of the CSF, LU","20","RESOLUTION NO.438-99.pdf","21","1999-08-12","0");
INSERT INTO tbl_resolution VALUES("438 - 2011","","Condole w/ SBM Lolita P. Emocling, Rosario, LU","11","Resolution 438-2011.pdf","21","2011-12-15","0");
INSERT INTO tbl_resolution VALUES("439 - 1999","","Deed of Transfer Acceptance of the Sagayad Resettlement Project in Sagayad, CSF from NHA","28","RESOLUTION NO.439-99.pdf","21","1999-08-12","0");
INSERT INTO tbl_resolution VALUES("439 - 2011","","Approve FY 2011 GF SB # 4, of Pugo, LU","20","Resolution 439-2011.pdf","21","2011-12-15","0");
INSERT INTO tbl_resolution VALUES("440 - 1999","","Reclassify Pasture to Residential Land of Col. Damiano Apilado at Brgy. Tanquigan, CSF","28","RESOLUTION NO.440-99.pdf","21","1999-08-12","0");
INSERT INTO tbl_resolution VALUES("440 - 2011","","Approve FY 2011 GF SB # 5, of Pugo, LU","20","Resolution 440-2011.pdf","21","2011-12-19","0");
INSERT INTO tbl_resolution VALUES("441 - 1999","","P400,000.00 reprogram for the completion of the Tarabang FMR, Tavora East, Pugo","20","RESOLUTION NO.441-99.pdf","21","1999-08-12","0");
INSERT INTO tbl_resolution VALUES("442 - 1999","","Disapprove Ord # 363, of the SB of Bacnotan, LU, Imposing a Regulatory/Inspection Fee for the Hauling in & Hauling Out of Cement, Silica, Coal, Limestone, Pyrite, Boulders & the Like & Other Similar Items W/n the Jurisdiction of that Municipality","24","RESOLUTION NO.442-99.pdf","21","1999-08-19","0");
INSERT INTO tbl_resolution VALUES("443 - 1999","","Approve Ord # 05-99, of the SB of San Juan, LU, “An Ord Amending Sec. 2 of Mun Ord  # 04-98 of that Municipality”","24","RESOLUTION NO.443-99.pdf","21","1999-08-19","0");
INSERT INTO tbl_resolution VALUES("444 - 1999","","Return Ord # 02-99, of the SB of Bauang, LU, Providing an Educational Support Fund for the Employees/Officials of that Municipality","24","RESOLUTION NO.444-99.pdf","21","1999-08-19","0");
INSERT INTO tbl_resolution VALUES("445 - 1999","","Disapprove Ord # 04-99, of the SB of Bangar, LU, Imposing & Regulating Fee to All Haulers of Sand, Gravel, & Boulders & Quarries from the Amburayan River in that Municipality ","24","RESOLUTION NO.445-99.pdf","21","1999-08-19","0");
INSERT INTO tbl_resolution VALUES("446 - 1999","","Approve Ord # 03-99, of the SB of Tubao, LU, Creating the Municipal Solid Waste Management Council","24","RESOLUTION NO.446-99.pdf","21","1999-08-19","0");
INSERT INTO tbl_resolution VALUES("447 - 1999","","Approve Ord # 03-99, of the SB of Tubao, LU, Creating the Municipal Solid Waste Management Council","24","RESOLUTION NO.447-99.pdf","21","1999-08-19","0");
INSERT INTO tbl_resolution VALUES("448 - 1999","","Return Ord # 005-99, of the SB of Burgos, LU, Prohibiting Illegal and/or Destructive Fishing in Any of the Rivers and/or Streams W/n that Municipality","24","RESOLUTION NO.448-99.pdf","21","1999-08-19","0");
INSERT INTO tbl_resolution VALUES("449 - 1999","","Approve Ord # 8, of the SB of Santol, LU, Amending Ord # 4, Requiring Owner/s and Operator/s of chainsaw/Tractors Operating for Business W/n the Municipality of Santol, LU to Get Mayor’s Permit from the Office of the Municipal Mayor","24","RESOLUTION NO.449-99.pdf","21","1999-08-19","0");
INSERT INTO tbl_resolution VALUES("450 - 1999","","Approve Ord # 9, of the SB of Santol, LU, Amending Ord # 10, s 1980 Requiring Motor Vehicle Drivers to Limit the Speed of their Vehicles in the Designated Areas W/n the Jurisdiction of that Municipality","24","RESOLUTION NO.450-99.pdf","21","1999-08-19","0");
INSERT INTO tbl_resolution VALUES("451 - 1999","","Support Res # 99-161, of the SP of Bohol, Tagbilaran, Requesting the CSC to Amend Sec. 5, Rule XVI of the Omnibus Rule, entitled: Leave of Absence of Leave Credits of Local Elective Officials per MC No. 41, s 1998, Implementing Book V of the Admin Code of 1987 (EO 292), to Grant leave Privileges to Local Elective Officials that are Commutative &Commulative for Service rendered from May 12, 1983 to December 31, 1991","24","RESOLUTION NO.451-99.pdf","21","1999-08-19","0");
INSERT INTO tbl_resolution VALUES("452 - 1999","","MOA w/ BFAR relative to the Agrikulturang Maka-Masa Fisheries Program","24","RESOLUTION NO.452-99.pdf","21","1999-08-19","0");
INSERT INTO tbl_resolution VALUES("453 - 1999","","Approve Mun Ord # 11-99, of the SB of Luna, LU, Prohibiting the Dumping of Waste of Irrigation Canals, Rivers, Creeks & Ditches in that Municipality","24","RESOLUTION NO.453-99.pdf","21","1999-08-19","0");
INSERT INTO tbl_resolution VALUES("454 - 1999","","Approve Tax Ord # 99-003, of the CSF, LU, Amending Ord # 2, Otherwise Known as the Revenue Code of 1993 of the Municipality of San Fernando, LU, Part. in the Imposition of a Refundable Deposit in Addition to the License Fee on Signs, Sign Boards, Billboards or Advertisements","24","RESOLUTION NO.454-99.pdf","21","1999-08-19","0");
INSERT INTO tbl_resolution VALUES("455 - 1999","","Approve Ord # 99-028, of the SB of Pugo, LU, Requiring All Stall Owners, Vendors, & Sellers W/n the Territorial Jurisdiction of that Municipality to Provide & Display Tags of their Products & Commendation for Sale to the Public & Prescribing Penalties for Violations Thereof & for Other Purposes","24","RESOLUTION NO.455-99.pdf","21","1999-08-19","0");
INSERT INTO tbl_resolution VALUES("456 - 1999","","Return Ord # 116-99, of the SB of Aringay, LU, Enacting the Conversion of Res # 98-80, into an Ordinance Otherwise Known as the Aringay Hymn Ordinance","24","RESOLUTION NO.456-99.pdf","21","1999-08-19","0");
INSERT INTO tbl_resolution VALUES("457 - 1999","","Approve Ord # 117-99, of the SB of Aringay, LU, Enacting the Creation of the Scholarship Council of that Municipality & Prescribing Guidelines Thereof","24","RESOLUTION NO.457-99.pdf","21","1999-08-19","0");
INSERT INTO tbl_resolution VALUES("458 - 1999","","Support Res # 423, s 1999, of the SP of Davao, requesting Pres. ERAP, thru the DOF to allocate funds from the Philippine share of the Miyagawa initiative as loanable amount/available for small & medium enterprise","24","RESOLUTION NO.458-99.pdf","21","1999-08-19","0");
INSERT INTO tbl_resolution VALUES("459 - 1999","","Support Res # 440-99, of the SP of Davao, urging the Management of Television Networks Part. ABS-CBN and GMA 7 to change the format of their Noontime Shows & Instead to air Wholesome Programs that Strictly Follow the Guidelines Set forth by the KBP & the MTRCB & to always Uphold & Respect the Sensitivity of the People, Preserve the Honor & Sanctity of the Family and Protect the Dignity of Self-Worth of Women","24","RESOLUTION NO.459-99.pdf","21","1999-08-19","0");
INSERT INTO tbl_resolution VALUES("460 - 1999","","Endorse conversion of the San Gabriel-San Juan Prov’l Road into a nat’l road","24","RESOLUTION NO.460-99.pdf","21","1999-08-19","0");
INSERT INTO tbl_resolution VALUES("461 - 1999","","MOA w/ DOH from the LGU-LPP program allocation for CY 1999 and CY 2000","24","RESOLUTION NO.461-99.pdf","21","1999-08-19","0");
INSERT INTO tbl_resolution VALUES("462 - 1999","","Approve Ord # 99-029, of the SB of Pugo, LU, Resetting the Dates of the Commemoration of the Foundation Anniversary of that Municipality","24","RESOLUTION NO.462-99.pdf","21","1999-08-19","0");
INSERT INTO tbl_resolution VALUES("463 - 1999","","Approve Ord # 05-99, of the SB of Bauang, LU, Establishing Fund to All Barangay Officials who in the Performance of their Official Duties are on the Occasion Thereof, Have to Initiate Judicial Proceedings or Defend Themselves Against Legal Actions & Appropriating Funds Thereof","24","RESOLUTION NO.463-99.pdf","21","1999-08-19","0");
INSERT INTO tbl_resolution VALUES("464 - 1999","","Request Pres. ERAP to declare February 26, 200 to March 2, 2000 as LA UNION FOUNDATION WEEK as declare March 2, as Official Public Holiday","24","RESOLUTION NO.464-99.pdf","21","1999-08-19","0");
INSERT INTO tbl_resolution VALUES("465 - 1999","","Realign P1.2 M for the purchase of 1 International Harvester 10 Wheeler Tractor","20","RESOLUTION NO.465-99.pdf","21","1999-08-19","0");
INSERT INTO tbl_resolution VALUES("466 - 1999","","Purchase a 2nd Hand International Harvester 10-Wheeler Tractor","30","RESOLUTION NO.466-99.pdf","21","1999-08-19","0");
INSERT INTO tbl_resolution VALUES("467 - 1999","","Condole w/ BC Benjamin Oriente, Brgy. Masupe, Balaoan","23","RESOLUTION NO.467-99.pdf","21","1999-08-26","0");
INSERT INTO tbl_resolution VALUES("468 - 1999","","Commend PGI Gabriel, Flores, Jr, et.al., and PNP San Esteban, Ilocos Sur, for the recovery of Prisoner Desalorde Eligio","17","RESOLUTION NO.468-99.pdf","21","1999-08-26","0");
INSERT INTO tbl_resolution VALUES("469 - 1999","","Negotiated Contract for the construction of a structure to restore Gapuz-Zigzag Rd.","30","RESOLUTION NO.469-99.pdf","21","1999-09-02","0");
INSERT INTO tbl_resolution VALUES("470 - 1999","","Require winning contractors to put up billboard before any construction will be started","9","RESOLUTION NO.470-99.pdf","21","1999-09-02","0");
INSERT INTO tbl_resolution VALUES("471 - 1999","","Condole w/ VM Bonifacio Cacanando, Sto. Tomas","26","RESOLUTION NO.471-99.pdf","21","1999-09-02","0");
INSERT INTO tbl_resolution VALUES("472 - 1999","","Recall SP Res # 084-99","26","RESOLUTION NO.472-99.pdf","21","1999-09-02","0");
INSERT INTO tbl_resolution VALUES("473 - 1999","","Enough amount as F/A to Brgy. Baay, Bagulin, for the construction of a barangay pavement at Baay Proper","9","RESOLUTION NO.473-99.pdf","21","1999-09-02","0");
INSERT INTO tbl_resolution VALUES("474 - 1999","","Enough amount as F/A to the PTCA of Aringay H/S, Aringay, for the construction of comfort rooms","20","RESOLUTION NO.474-99.pdf","21","1999-09-07","0");
INSERT INTO tbl_resolution VALUES("475 - 1999","","Approve FY 1999 GF SB # 2, of Agoo, LU","20","RESOLUTION NO.475-99.pdf","21","1999-09-07","0");
INSERT INTO tbl_resolution VALUES("476 - 1999","","Approve FY 1999 GF SB # 1, of Caba, LU","20","RESOLUTION NO.476-99.pdf","21","1999-09-07","0");
INSERT INTO tbl_resolution VALUES("477 - 1999","","Approve FY 1999 GF SB # 2, of San Gabriel, LU","20","RESOLUTION NO.477-99.pdf","21","1999-09-07","0");
INSERT INTO tbl_resolution VALUES("478 - 1999","","AO amounting P4,949.45 for Terminal Leave Pay","20","RESOLUTION NO.478-99.pdf","21","1999-09-07","0");
INSERT INTO tbl_resolution VALUES("479 - 1999","","AO amounting 120,978.61 for Terminal Leave Pay","20","RESOLUTION NO.479-99.pdf","21","1999-09-07","0");
INSERT INTO tbl_resolution VALUES("480 - 1999","","AO amounting P2,030,000.00 of the OPG","20","RESOLUTION NO.480-99.pdf","21","1999-09-07","0");
INSERT INTO tbl_resolution VALUES("481 - 1999","","Realign funds for the construction of solar dryers at Brgy. Regente, Caggao, and Ubbog, Bangar, LU and reprogram the same to the concrete paving of the NIA Service Rd. at Cadapli, Bangar, LU from Boughton Rd. to the approach of the new bridge","20","RESOLUTION NO.481-99.pdf","21","1999-09-07","0");
INSERT INTO tbl_resolution VALUES("482 - 1999","","Realign P225,000.00 for the construction of solar dryers for Alibangsay, Cardiz and Wallayan, Bagulin, LU and to reprogram the same to the CHB line canal along Bagulin-Naguilian Rd.","20","RESOLUTION NO.482-99.pdf","21","1999-09-07","0");
INSERT INTO tbl_resolution VALUES("483 - 1999","","Realign P75,000.00 for the construction of solar dryer for Calumbaya, Bauang, LU and reprogram the same to the FMR of the same barangay","20","RESOLUTION NO.483-99.pdf","21","1999-09-07","0");
INSERT INTO tbl_resolution VALUES("484 - 1999","","Realign funds for the construction of solar dryers at Brgy. Lon-oy, Lipay Sur and Bayabas, San Gabriel, LU and to reprogram the same for the concreting of the FMR in the Town Proper","20","RESOLUTION NO.484-99.pdf","21","1999-09-07","0");
INSERT INTO tbl_resolution VALUES("485 - 1999","","Set aside P10,000.00 as F/A to Mr. Garlian Garleo during the 1999 Milo National Open Invitation Track and field Championship","20","RESOLUTION NO.485-99.pdf","21","1999-09-07","0");
INSERT INTO tbl_resolution VALUES("486 - 1999","","P5,000.00 F/A to Brgy. Calliat, Balaoan, LU, for the purchase of knapsack sprayers and garden tools","20","RESOLUTION NO.486-99.pdf","21","1999-09-07","0");
INSERT INTO tbl_resolution VALUES("487 - 1999","","P30,000.00 F/A to Brgy. San Agustin, CSF, LU, for the general repair of their day care center","20","RESOLUTION NO.487-99.pdf","21","1999-09-07","0");
INSERT INTO tbl_resolution VALUES("488 - 1999","","P20,000.00 F/A to Brgy. Nagsabaran, Bangar, LU, for the construction of toilet w/ septic tank","20","RESOLUTION NO.488-99.pdf","21","1999-09-07","0");
INSERT INTO tbl_resolution VALUES("489 - 1999","","P20,000.00 F/A to the PTCA of Tavora E/S, Pugo, LU, for the general repair of the pre-fab and Bagong Lipunan School Bldg","20","RESOLUTION NO.489-99.pdf","21","1999-09-07","0");
INSERT INTO tbl_resolution VALUES("490 - 1999","","P10,000.00 F/A to the PTCA of the Don Eulogio Memorial H/S, Bauang, LU, for the purchase of cement","20","RESOLUTION NO.490-99.pdf","21","1999-09-07","0");
INSERT INTO tbl_resolution VALUES("491 - 1999","","P5,000.00 F/A to Brgy. Linong, Sto. Tomas, LU, for the reinforcement of the rip-rap of San Marcos Rd.","20","RESOLUTION NO.491-99.pdf","21","1999-09-07","0");
INSERT INTO tbl_resolution VALUES("492 - 1999","","P5,000.00 F/A to Brgy. Namboongan, Sto. Tomas, LU, for the purchase of cement","20","RESOLUTION NO.492-99.pdf","21","1999-09-07","0");
INSERT INTO tbl_resolution VALUES("493 - 1999","","P50,000.00 F/A to the SB of Aringay, LU, for the completion of the Aringay Tourism Center","20","RESOLUTION NO.493-99.pdf","21","1999-09-07","0");
INSERT INTO tbl_resolution VALUES("494 - 1999","","P300,000.00 F/A to the La Union Capitol Entertainment Service","20","RESOLUTION NO.494-99.pdf","21","1999-09-07","0");
INSERT INTO tbl_resolution VALUES("495 - 1999","","P10,000.00 F/A to Brgy. San Benito Norte, Aringay, LU, for their various barangay projects","20","RESOLUTION NO.495-99.pdf","21","1999-09-07","0");
INSERT INTO tbl_resolution VALUES("496 - 1999","","P10,000.00 F/A to Brgy. Butubut Oeste, Balaoan, LU, for the continuation of their barangay hall bldg","20","RESOLUTION NO.496-99.pdf","21","1999-09-07","0");
INSERT INTO tbl_resolution VALUES("497 - 1999","","P10,000.00 F/A to Brgy. Alcala, Luna, LU, for the purchase of garden tools","20","RESOLUTION NO.497-99.pdf","21","1999-09-07","0");
INSERT INTO tbl_resolution VALUES("498 - 1999","","P50000.00 F/A to Brgy. Lomboy, Sto. Tomas, LU, for the concreting of NIA Access Rd","20","RESOLUTION NO.498-99.pdf","21","1999-09-07","0");
INSERT INTO tbl_resolution VALUES("498A- 1999","","P15,000.00 F/A to the PTCA of Pugo Central School, Pugo, LU, for the construction of a perimeter fence","20","RESOLUTION NO.498A-99.pdf","21","1999-09-07","0");
INSERT INTO tbl_resolution VALUES("499 - 1999","","Endorse to the Oversight Committee of the LGSEF the different priority projects of the province","20","RESOLUTION NO.499-99.pdf","21","1999-09-07","0");
INSERT INTO tbl_resolution VALUES("500 - 1999","","Realign P4 M to:\n\na.	P2 M to purchase of additional seedlings\nb.	P1 M for the Prov’l Rice Technology Demo Farm\nc.	P1 M to purchase of water hose","20","RESOLUTION NO.500-99.pdf","21","1999-09-07","0");
INSERT INTO tbl_resolution VALUES("501 - 1999","","AO amounting P3,393,659.38 for Terminal Leave Pay","20","RESOLUTION NO.501-99.pdf","21","1999-09-07","0");
INSERT INTO tbl_resolution VALUES("501A- 1999","","Commend Brgy. Tanods of Duplas, Pugo, LU for the fearless act in reporting the illegal logging in Pugo, LU","20","RESOLUTION NO.501A-99.pdf","21","1999-09-16","0");
INSERT INTO tbl_resolution VALUES("501B- 1999","","P5,000.00 F/A to the Barangay Tanods of Duplas, Pugo, LU, for the worthy projects of the organization","20","RESOLUTION NO.501B-99.pdf","21","1999-09-16","0");
INSERT INTO tbl_resolution VALUES("502 - 1999","","Condole w/ Judge Alejo P. Alberto, MTC, Agoo","20","RESOLUTION NO.502-99.pdf","21","1999-09-16","0");
INSERT INTO tbl_resolution VALUES("503 - 1999","","Condole w/ SBM Alfonso Patricio, Bauang","21","RESOLUTION NO.503-99.pdf","21","1999-09-16","0");
INSERT INTO tbl_resolution VALUES("504 - 1999","","Commend P Maj Tito Opina, Jr. PNP for his unequal and exemplary act while in the line of duty","30","RESOLUTION NO.504-99.pdf","21","1999-09-16","0");
INSERT INTO tbl_resolution VALUES("505 - 1999","","Approve Ord # 04-99, of the SB of Tubao, LU, Implementing the Guidelines for the Proper Use & Maintenance of its Municipal Mini Dump Truck","24","RESOLUTION NO.505-99.pdf","21","1999-09-16","0");
INSERT INTO tbl_resolution VALUES("506 - 1999","","Return Ord # 05-99, of the SB of Bangar, LU, Enacting the Anti-Littering of that Municipality","24","RESOLUTION NO.506-99.pdf","21","1999-09-23","0");
INSERT INTO tbl_resolution VALUES("507 - 1999","","Approve Mun Ord # 10-99, of the SB of Luna, LU, Prohibiting the Putting up of Obstruction/Obstructive Materials in Public Roads W/n that Municipality","24","RESOLUTION NO.507-99.pdf","21","1999-09-23","0");
INSERT INTO tbl_resolution VALUES("508 - 1999","","Support Res # 67-99, of the SP of Isabela, Supporting HB # 3125 Allowing Taxpayers to Deduct from their Gross Income ½ of their Children’s Tuition Fees not Exceeding P20,000.00","24","RESOLUTION NO.508-99.pdf","21","1999-09-23","0");
INSERT INTO tbl_resolution VALUES("510 - 1999","","MOA w/ Phil. Business for Social Progress","24","RESOLUTION NO.510-99.pdf","21","1999-09-23","0");
INSERT INTO tbl_resolution VALUES("511 - 1999","","Approve Ord # 004-99, as amended under Res # 071-99, of the SB of Burgos, LU, Prohibiting the Washing and/or Draining of all Tanker, Jeepneys and all Other Types of Motorized Vehicles and/or Dumping Along River Banks, Creeks, Streams & Canals W/n the Territorial Jurisdiction of the Municipality of Burgos, LU","24","RESOLUTION NO.511-99.pdf","21","1999-09-23","0");
INSERT INTO tbl_resolution VALUES("512 - 1999","","Approve Ord # 006-99, of the SB of Burgos, LU, Amending Ord # 003, s 1997, Prohibiting the Selling and/or Drinking of Liquor & Other Intoxicating Drinks Beyond 8:00 PM to 4:00 AM w/n the Territorial Jurisdiction of that Municipality","24","RESOLUTION NO.512-99.pdf","21","1999-09-23","0");
INSERT INTO tbl_resolution VALUES("513 - 1999","","Approve Ord # 115, as emb. under Res #99-85, of the SB of Aringay, LU, Known as the Solid Waste Management Ordinance of that Municipality","24","RESOLUTION NO.513-99.pdf","21","1999-09-23","0");
INSERT INTO tbl_resolution VALUES("514 - 1999","","Approve Ord # 005-99, of the SB of Burgos, LU, Prohibiting Illegal and/or Destructive Fishing in Any of the Rivers and/or Streams W/n that Municipality","24","RESOLUTION NO.514-99.pdf","21","1999-09-23","0");
INSERT INTO tbl_resolution VALUES("514A- 1999","","Approve Tax Ord # 98-001, of the CSF, LU, Amending Tax Ord # 92-002, Otherwise Known as the Revenue Code of San Fernando, As Amended by Tax Ord # 93-001, 94-001, 94-002, 96-003, 96-004, 96-005, 97-001, 97-002 & 97-003 to Incorporate the Adoption of the Imposition of Taxes, Which Used to be Collected by the Provincial Government & Now to be Collected by the City Gov’t of San Fernando","24","RESOLUTION NO.514A-99.pdf","21","1999-09-23","0");
INSERT INTO tbl_resolution VALUES("515 - 1999","","Condole w/ SBM Jaime Boado, Agoo","20","RESOLUTION NO.515-99.pdf","21","1999-09-23","0");
INSERT INTO tbl_resolution VALUES("516 - 1999","","AO amounting P96,748.40 for Terminal Leave Pay","20","RESOLUTION NO.516-99.pdf","21","1999-10-05","0");
INSERT INTO tbl_resolution VALUES("517 - 1999","","AO amounting P6,201.35 for Terminal Leave Pay","20","RESOLUTION NO.517-99.pdf","21","1999-10-05","0");
INSERT INTO tbl_resolution VALUES("518 - 1999","","Approve FY 1999 GF SB # 1, of Santol, LU","20","RESOLUTION NO.518-99.pdf","21","1999-10-05","0");
INSERT INTO tbl_resolution VALUES("519 - 1999","","AO amounting P60,990.00 for Vehicle Insurance Premium`","20","RESOLUTION NO.519-99.pdf","21","1999-10-05","0");
INSERT INTO tbl_resolution VALUES("520 - 1999","","P162,500.00 for the 3rd LU Garden Show Lantern Fest","20","RESOLUTION NO.520-99.pdf","21","1999-10-05","0");
INSERT INTO tbl_resolution VALUES("521 - 1999","","Renew Contract of Lease w/ DFA","20","RESOLUTION NO.521-99.pdf","21","1999-10-05","0");
INSERT INTO tbl_resolution VALUES("522 - 1999","","Renew Contract of Lease w/ DFA","20","RESOLUTION NO.522-99.pdf","21","1999-10-05","0");
INSERT INTO tbl_resolution VALUES("523 - 1999","","P10,000.00 F/A to Brgy. Balballosa, San Juan, LU, for the construction of a public comfort room","20","RESOLUTION NO.523-99.pdf","21","1999-10-05","0");
INSERT INTO tbl_resolution VALUES("524 - 1999","","P10,000.00 F/A to Brgy. Bungro, Luna, LU, for the purchase of garden tools","20","RESOLUTION NO.524-99.pdf","21","1999-10-05","0");
INSERT INTO tbl_resolution VALUES("525 - 1999","","P2,000.00 F/A to Purok Vi, Brgy. Lingsat, CSF, LU, for the cementing of the road going to their residences","20","RESOLUTION NO.525-99.pdf","21","1999-10-05","0");
INSERT INTO tbl_resolution VALUES("526 - 1999","","P65,000.00 F/A to the SB of Bangar, LU, for the purchase of a patrol tricycle","20","RESOLUTION NO.526-99.pdf","21","1999-10-05","0");
INSERT INTO tbl_resolution VALUES("527 - 1999","","P10,000.00 F/A to Brgy. San Agustin, CSF, LU, for the purchase of square bar grills","20","RESOLUTION NO.527-99.pdf","21","1999-10-05","0");
INSERT INTO tbl_resolution VALUES("528 - 1999","","P10,000.00 F/A to the PTCA of Pangao-aoan E/S, Aringay, LU, for the construction of the school fence","20","RESOLUTION NO.528-99.pdf","21","1999-10-05","0");
INSERT INTO tbl_resolution VALUES("529 - 1999","","P5,000.00 F/A to Brgy. San Agustin, CSF, LU, for the purchase of knapsack sprayers","20","RESOLUTION NO.529-99.pdf","21","1999-10-05","0");
INSERT INTO tbl_resolution VALUES("530 - 1999","","P10,000.00 F/A to Brgy. Antonino, Balaoan, LU, for the purchase additional chairs, lighting fixtures and improvement of the day care facilities ","20","RESOLUTION NO.530-99.pdf","21","1999-10-05","0");
INSERT INTO tbl_resolution VALUES("531 - 1999","","P5,000.00 F/A to the PTCA of Oaqui No. 4 Nat’l H/S, Luna, LU, for the purchase knapsack sprayer and garden tools","20","RESOLUTION NO.531-99.pdf","21","1999-10-05","0");
INSERT INTO tbl_resolution VALUES("532 - 1999","","P10,000.00 F/A to the PTCA of Naguilian E/S, Naguilian, LU, for the construction of a multi-purpose concrete pavement","20","RESOLUTION NO.532-99.pdf","21","1999-10-05","0");
INSERT INTO tbl_resolution VALUES("533 - 1999","","P10,000.00 F/A to the PTCA of Naguilian E/S, Naguilian, LU, for the construction of a multi-purpose concrete pavement","20","RESOLUTION NO.533-99.pdf","21","1999-10-05","0");
INSERT INTO tbl_resolution VALUES("534 - 1999","","P10,000.00 F/A to Brgy. Dis-soor, Bauang, LU, for the construction of a line canal along the cemented barangay road","20","RESOLUTION NO.534-99.pdf","21","1999-10-05","0");
INSERT INTO tbl_resolution VALUES("535 - 1999","","P6,000.00 F/A to Oaqui E/S and Nagrebcan E/S, Luna, LU, for the purchase of garden tools","20","RESOLUTION NO.535-99.pdf","21","1999-10-05","0");
INSERT INTO tbl_resolution VALUES("536 - 1999","","P18,000.00 F/A to Brgy. Pagdalagan Sur, Bauang, LU, for the construction of their auditorium","20","RESOLUTION NO.536-99.pdf","21","1999-10-05","0");
INSERT INTO tbl_resolution VALUES("537 - 1999","","P15,000.00 F/A to Brgy. Boy-utan, Bauang, LU, for the construction of canals ","20","RESOLUTION NO.537-99.pdf","21","1999-10-05","0");
INSERT INTO tbl_resolution VALUES("538 - 1999","","Contract of Lease w/ Lessees/Tenants of the Livelihood Enterprise Dev’t stalls","20","RESOLUTION NO.538-99.pdf","21","1999-10-05","0");
INSERT INTO tbl_resolution VALUES("539 - 1999","","Realign SWIP to Farm to Market road in Sto. Tomas","20","RESOLUTION NO.539-99.pdf","21","1999-10-05","0");
INSERT INTO tbl_resolution VALUES("540 - 1999","","P25,000.00 F/A to the PTCA of Ma. Cristina E/S, Bangar, LU, for the cementing of the pavement in front of the school stage","20","RESOLUTION NO.540-99.pdf","21","1999-10-05","0");
INSERT INTO tbl_resolution VALUES("541 - 1999","","P10,000.00 F/A to Brgy. Halog East, Tubao, LU, for the construction of shallow well","20","RESOLUTION NO.541-99.pdf","21","1999-10-05","0");
INSERT INTO tbl_resolution VALUES("542 - 1999","","P10,000.00 F/A to Brgy. Guesset, Naguilian, LU, for the completion of their day care center","20","RESOLUTION NO.542-99.pdf","21","1999-10-05","0");
INSERT INTO tbl_resolution VALUES("543 - 1999","","P10,000.00 F/A to Brgy. Poblacion, Sudipen, LU, for the construction of a multi-purpose waiting shed at Partible","20","RESOLUTION NO.543-99.pdf","21","1999-10-05","0");
INSERT INTO tbl_resolution VALUES("544 - 1999","","P10,000.00 F/A to Brgy. Cabugnayan, Balaoan, LU, for the construction of a public toilet","20","RESOLUTION NO.544-99.pdf","21","1999-10-05","0");
INSERT INTO tbl_resolution VALUES("545 - 1999","","P10,000.00 F/A to Brgy. Bariquir, Naguilian, LU, for the rehab of the school stage","20","RESOLUTION NO.545-99.pdf","21","1999-10-05","0");
INSERT INTO tbl_resolution VALUES("546 - 1999","","P10,250.00 F/A to Brgy. Cabaroan, Bacnotan, LU, for the construction of a waiting shed","20","RESOLUTION NO.546-99.pdf","21","1999-10-05","0");
INSERT INTO tbl_resolution VALUES("547 - 1999","","P20,000.00 F/A to Brgy. Almeida, Balaoan, LU, for their streetlight project","20","RESOLUTION NO.547-99.pdf","21","1999-10-05","0");
INSERT INTO tbl_resolution VALUES("548 - 1999","","P20,000.00 F/A to Brgy. Barrientos, Luna, LU, for the installation of a water system","20","RESOLUTION NO.548-99.pdf","21","1999-10-05","0");
INSERT INTO tbl_resolution VALUES("549 - 1999","","P10,000.00 F/A to the Cabarsican Consumers MPCI, Bacnotan, LU, for the continuation of their bldg","20","RESOLUTION NO.549-99.pdf","21","1999-10-05","0");
INSERT INTO tbl_resolution VALUES("550 - 1999","","P10,000.00 F/A to the Sports Activities of the Administrative Officers Association, Inc. of the PGLU","20","RESOLUTION NO.550-99.pdf","21","1999-10-05","0");
INSERT INTO tbl_resolution VALUES("551 - 1999","","Telegraphic transfer amounting US$78,000.00 in favor of Caterpillar SARL, thru LBP for the purchase of a Caterpillar Model 416C Backhoe Loader","20","RESOLUTION NO.551-99.pdf","21","1999-10-05","0");
INSERT INTO tbl_resolution VALUES("552 - 1999","","Adopt Mr. Avi Kupferman, World ORT Union Asia Pacific Director as son of the province","30","RESOLUTION NO.552-99.pdf","21","1999-10-05","0");
INSERT INTO tbl_resolution VALUES("553 - 1999","","P113,445.25 to settle account w/ TLRC under the Bagong Pagkain ng Bayan","20","RESOLUTION NO.553-99.pdf","21","1999-10-21","0");
INSERT INTO tbl_resolution VALUES("554 - 1999","","AO amounting P600,000 for the continuation of the SP Office","20","RESOLUTION NO.554-99.pdf","21","1999-10-25","0");
INSERT INTO tbl_resolution VALUES("555 - 1999","","AO amounting P5,960,370.50 for the Year-end Benefit and Step Increment","20","RESOLUTION NO.555-99.pdf","21","1999-10-25","0");
INSERT INTO tbl_resolution VALUES("556 - 1999","","MOA w/ Local Water Utilities Administration, relative to the implementation of shallow well projects under the Lingap Para sa Mahihirap Fund of Pres. ERAP","30","RESOLUTION NO.556-99.pdf","21","1999-10-25","0");
INSERT INTO tbl_resolution VALUES("557 - 1999","","MOA w/ DMMMSU, DA, and DOST relative to the 1999 LU Technopack","24","RESOLUTION NO.557-99.pdf","21","1999-10-25","0");
INSERT INTO tbl_resolution VALUES("558 - 1999","","AO amounting P239,472.47 for Insurance of Heavy Equipment","20","RESOLUTION NO.558-99.pdf","21","1999-10-25","0");
INSERT INTO tbl_resolution VALUES("559 - 1999","","P154,000.00 for the 10th Phil. Travel Mart ","20","RESOLUTION NO.559-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("560 - 1999","","P10,000.00 F/A to Brgy. Amlang, Rosario, LU, for the renovation particularly the concrete topping and/resurfacing of their basketball court","20","RESOLUTION NO.560-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("561 - 1999","","P20,000.00 F/A to the Municipality of Burgos, LU, for the Sports Development Program","20","RESOLUTION NO.561-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("562 - 1999","","P10,000.00 F/A to the Nadsaag E/S, San Juan, LU, for the purchase of garden tools","20","RESOLUTION NO.562-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("563 - 1999","","Approve FY 1999 GF SB # 1, of Sto. Tomas, LU","20","RESOLUTION NO.563-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("564 - 1999","","Approve FY 1999 GF SB # 01-A, of Bauang, LU","20","RESOLUTION NO.564-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("565 - 1999","","Approve FY 1999 GF SB # 01-B, of Bauang, LU","20","RESOLUTION NO.565-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("566 - 1999","","Support Res # 201-99, of the SP of Sorsogon, Requesting the Board of Trustees, GSIS to Lower from 12% to 8% the Annual Interest Rate on the Four or Five Months Salary Loan to Gov’t Employees","20","RESOLUTION NO.566-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("567 - 1999","","Realign P818,509.75 to pay the heavy equipment loan amortization w/ LBP","20","RESOLUTION NO.567-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("568 - 1999","","MOA w/ Information Computer Institute in connection w/ the IT Training Service","20","RESOLUTION NO.568-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("569 - 1999","","P417,950.00 F/A to the Provincial Task Force on Anti-Illegal Quarrying for the purchase of motorcycle and portable transceiver","20","RESOLUTION NO.569-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("570 - 1999","","P5,000.00 F/A to the Officers of the Speech and Debate Society, SLC, CSF, LU","20","RESOLUTION NO.570-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("571 - 1999","","P100,000.00 F/A to the Federation of Senior Citizens Asso., of LU, for their program of activities","20","RESOLUTION NO.571-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("572 - 1999","","P5,000.00 F/A to Brgy. Bani, Rosario, LU, for the purchase of garden tools","20","RESOLUTION NO.572-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("573 - 1999","","P5,000.00 F/A to Brgy. Nagsidorisan, Naguilian, LU, for the purchase of rolls","20","RESOLUTION NO.573-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("574 - 1999","","AO amounting P67,269.69 for Terminal Leave Pay","20","RESOLUTION NO.574-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("575 - 1999","","Approve FY 1999 GF SB # 01-C, of Bauang, LU","20","RESOLUTION NO.575-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("576 - 1999","","AO amounting P357,241. for Retirement Gratuity","20","RESOLUTION NO.576-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("577 - 1999","","MOA w/ DILG, DENR, DAR, DECS, DTI, DA pertaining to the proposed Maliclico-Duplas Bulalaan (MADUBUL) Watershed Dev’t Plan","20","RESOLUTION NO.577-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("578 - 1999","","P10,000.00 F/A to Brgy. San Fermin, Caba, LU, for the construction of a day care center/health center","20","RESOLUTION NO.578-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("579 - 1999","","MOA w/ LBP regarding the Coop Loan Assistance Program ","20","RESOLUTION NO.580-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("580 - 1999","","P20,000.00 F/A to Brgy. Linapew, Tubao, LU, for the fencing of the auditorium","20","RESOLUTION NO.580-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("581 - 1999","","P30,000.00 F/A to Brgy. Sta. Cecilia, Aringay, LU, for the multi-purpose farmers center","20","RESOLUTION NO.582-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("582 - 1999","","P30,000.00 F/A to Brgy. Dallangayan Oeste, CSF, LU, for the construction of a 2nd floor of the Leprosy Center","20","RESOLUTION NO.583-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("583 - 1999","","P30,000.00 F/A to Brgy. Almeida, Balaoan, LU, for the construction of a barangay health center","20","RESOLUTION NO.584-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("584 - 1999","","P30,000.00 F/A to Brgy. Baracbac Este, Balaoan, LU, for the continuation of the concreting of the 2.7 km barangay road","20","RESOLUTION NO.584-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("585 - 1999","","P30,000.00 F/A to Brgy. Ballogo, Bacnotan, LU, for the concreting of their barangay road","20","RESOLUTION NO.585-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("586 - 1999","","P10,000.00 F/A to Gonzales Neighborhood Asso., Tubao, LU, for the expansion of the stage at Sitio Sampaguita","20","RESOLUTION NO.586-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("587 - 1999","","P50,000.00 F/A to Brgy. Sto. Rosario, Aringay, LU, for the completion of the multi-purpose bldg.","20","RESOLUTION NO.587-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("588 - 1999","","P10,000.00 F/A to the Del Rio Railroad Neighborhood Asso., Aringay, LU, for their projects and plans","20","RESOLUTION NO.588-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("589 - 1999","","Realign funds for the construction of solar dryer at Brgy. Bulbulala, Balaoan and reprogram the same to Brgy. Nagsabaran Norte","20","RESOLUTION NO.589-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("590 - 1999","","P5,000.00 F/A to the Municipal Agriculture Personnel, Naguilian, LU, for the purchase of a computer","20","RESOLUTION NO.590-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("591 - 1999","","P10,000.00 F/A to Brgy. Cambaly, Bagulin, LU, for the concreting and rip-rapping of the eroded portion of the barangay road","20","RESOLUTION NO.591-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("592 - 1999","","P10,000.00 F/A to Brgy. Balawarte, Agoo, LU, for the purchase of streetlights","20","RESOLUTION NO.592-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("593 - 1999","","P10,000.00 F/A to Brgy. San Agustin, Bauang, LU, for the construction of a comfort room in the barangay hall","20","RESOLUTION NO.593-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("593A- 1999","","P10,000.00 F/A to Brgy. Sta. Monica, Agoo, LU, for the installation and repair of streetlights","20","RESOLUTION NO.593A-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("594 - 1999","","P20,000.00 F/A to Brgy. Langcuas, CSF, LU, for the repainting/remodeling of the day care center","20","RESOLUTION NO.594-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("595 - 1999","","P20,000.00 F/A to Brgy. San Manuel Norte, Agoo, LU, for the fabrication of basketball board","20","RESOLUTION NO.595-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("596 - 1999","","P20,000.00 F/A to Brgy. OAqui No. 4, Luna, LU, for the concreting of a footbridge","20","RESOLUTION NO.596-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("596A- 1999","","P10,000.00 F/A to Brgy. Sta. Maria, Agoo, LU, for the concreting of the barangay road","20","RESOLUTION NO.596A-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("597 - 1999","","Approve FY 1999 GF SB # 2, of Bacnotan, LU","20","RESOLUTION NO.597-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("598 - 1999","","Amend SP Resolution No. 479-99","20","RESOLUTION NO.598-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("599 - 1999","","AO amounting P38,700.00 for the Road-Right-of-Way at San Gabriel, LU","20","RESOLUTION NO.599-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("600 - 1999","","P20,000.00 F/A to the Tubao Nat’l H/S PTCA, Tubao, LU, for the repair of the CAT office","20","RESOLUTION NO.600-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("601 - 1999","","P20,000.00 F/A to the Agoo Central West School Agoo, LU, for the renovation of the school canteen","20","RESOLUTION NO.601-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("602 - 1999","","P8,000.00 F/A to Brgy. Santiago Sur, Caba, LU, for the purchase of garden tools","20","RESOLUTION NO.602-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("603 - 1999","","P10,000.00 F/A to Brgy. Libbo, Bagulin, LU, for the concreting of the main road at Sitio Tap-tapaya","20","RESOLUTION NO.603-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("604 - 1999","","P10,000.00 F/A to Brgy. San Vicente Sur, Agoo, LU, for the continuation of the unfinished excavation and rip-rapping of canals","20","RESOLUTION NO.604-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("605 - 1999","","P10,000.00 F/A to Brgy. Delles, Burgos, LU, for the construction of a perimeter fence of the plaza","20","RESOLUTION NO.605-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("606 - 1999","","AO amounting P55,000.00 for the 3rd LU Garden Show Cum Lantern Fest","20","RESOLUTION NO.606-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("606A- 1999","","Contract w/ applicants regarding the Video presentation highlighting LU as tourist destination","20","RESOLUTION NO.606A-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("607 - 1999","","Contract w/ Digital Sense Inc. (Digisense) regarding the video presentation highlighting LU as a tourist destination ","20","RESOLUTION NO.607-99.pdf","21","1999-11-04","0");
INSERT INTO tbl_resolution VALUES("608 - 1999","","Approve Tax Ord # 007-99, of the SB of Burgos, LU, Amending Certain Provisions of the Revenue Tax Code of that Municipality & to Enact an Ordinance to Increase and Impose Certain Fees in Some Source of Funds Embodied in the Revenue Tax Code","24","RESOLUTION NO.608-99.pdf","21","1999-11-11","0");
INSERT INTO tbl_resolution VALUES("609 - 1999","","Approve Mun Ord # 02-99, of the SB of Tubao, LU, Creating Youth Week in the Months of September & November for the Celebration of Youth Empowerment in Nation Building as Linggo ng Kabataan in that Municipality","24","RESOLUTION NO.609-99.pdf","21","1999-11-11","0");
INSERT INTO tbl_resolution VALUES("610 - 1999","","Approve Mun Ord # 2-99, emb. in Res # 51-99, of the SB of San Gabriel, LU, Prohibiting the Catching, Harvesting, Selling & Buying of Goby (Ipon) W/n that Municipality","24","RESOLUTION NO.610-1999.pdf","21","1999-11-11","0");
INSERT INTO tbl_resolution VALUES("611 - 1999","","Support House Res # 1064, Strongly urging the Immediate Constitution of the Congressional Oversight Committee Created under RA No. 8240 & the Issuance of the Implementing Rules by the DBM to Enable the Burley & Native Tobacco Producing Province to Get their Mandated Share, Now Estimated at P370 M under the Said Act","24","RESOLUTION NO.611-1999.pdf","21","1999-11-11","0");
INSERT INTO tbl_resolution VALUES("612 - 1999","","Approve Ord # 118, of the SB of Aringay, LU, Imposing Rentals on the Newly Constructed Municipal Tourism & Trade Center at Sta. Rita West, that Municipality","24","RESOLUTION NO.612-1999.pdf","21","1999-11-11","0");
INSERT INTO tbl_resolution VALUES("613 - 1999","","Approve Ord # 366, emb. in Res # 40, s 1999, of the SB of Bacnotan, LU, Enacting the Bacnotan Investment Code of 1999 of that Municipality","24","RESOLUTION NO.613-99.pdf","21","1999-11-11","0");
INSERT INTO tbl_resolution VALUES("614 - 1999","","Approve Ord # 116, emb. in Res # 99-1000, s. 1999, of the SB of Aringay, LU, Deleting Sec. 8 of the Aringay Hymn Ord of that Municipality to Conform to the Provisions of the LGC of 1991","20","RESOLUTION NO.614-99.pdf","21","1999-11-11","0");
INSERT INTO tbl_resolution VALUES("615 - 1999","","Return Mun Ord # 3-99, of the SB of San Gabriel, LU, Prescribing Rules & Regulations Involving Land Transportation  Traffic W/n that Municipality ","24","RESOLUTION NO.615-99.pdf","21","1999-11-11","0");
INSERT INTO tbl_resolution VALUES("616 - 1999","","Approve Ord # 99-18, of the SB of Naguilian, LU, Amending Certain Provisions of Ord # 92-80, Otherwise Known as the Revenue Ordinance of that Municipality","24","RESOLUTION NO.616-99.pdf","21","1999-11-11","0");
INSERT INTO tbl_resolution VALUES("617 - 1999","","Return Ord # 99-001, of the SB of Caba, LU, Providing for the Use, Management, Protection, Conservation & Dev’t of the Coastal & Marine Sources as Well as Regulating the Fisheries & Fishing Enterprise in that Municipality","24","RESOLUTION NO.617-99.pdf","21","1999-11-11","0");
INSERT INTO tbl_resolution VALUES("618 - 1999","","Approve Ord # 99-16, of the SB of Bagulin, LU, Requiring All Drivers of Passenger Jeepneys to Put Up or Install Trash Can/Receptacle Inside their Vehicle ","24","RESOLUTION NO.618-99.pdf","21","1999-11-11","0");
INSERT INTO tbl_resolution VALUES("619 - 1999","","Approve Ord # 99-17, of the SB of Bagulin, LU, Prohibiting Littering & the Placing or Throwing of Garbage, Refuse & Other Filth & Waste Into Place, Other Thank Those Designated as Waste Receptacles or Place as Garbage Dumpsite by the Municipal Health office","24","RESOLUTION NO.619-99.pdf","21","1999-11-11","0");
INSERT INTO tbl_resolution VALUES("620 - 1999","","Approve Ord # 99-18, of the SB of Bagulin, LU, Prohibiting Any Person of Legal Age Who Causes Other Person/s of Minor (Below 18 Years) to Get Hold of or Watch X-rated Video Tapes & Pornographic Materials","24","RESOLUTION NO.620-99.pdf","21","1999-11-11","0");
INSERT INTO tbl_resolution VALUES("621 - 1999","","Approve Ord # 99-15, of the SB of Bagulin, LU, W/c Prohibits Loud Unnecessary Noise W/c Constitutes a Nuisance to the Public","24","RESOLUTION NO.621-99.pdf","21","1999-11-11","0");
INSERT INTO tbl_resolution VALUES("622 - 1999","","Approve Supplementary Revenue Ord # 1-99, of the SB of Bagulin, LU, to the Revised Revenue Ordinance Enacted on Dec 24, 1999, Art. IX, a Permit & Regulatory Fees, Sec. 15 (5), & Art. XXII a Sanitary Inspection Fee, Sec. 61 (a) Boarding House","24","RESOLUTION NO.622-99.pdf","21","1999-11-11","0");
INSERT INTO tbl_resolution VALUES("623 - 1999","","Urge Congress to sponsor bills creating more RTC and MTC ","24","RESOLUTION NO.623-99.pdf","21","1999-11-11","0");
INSERT INTO tbl_resolution VALUES("624 - 1999","","Approve City Ord # 99-003, of the SP of the CSF, LU, Amending Tricycle Ord # 97-005, Otherwise Known as an Ord Ordaining the Consolidation of all Rules, Regulations & Ordinances in the Use, Operation, Maintenance & Issuance of Franchise of Motorized Tricycles W/n the Territorial Jurisdiction of the City of San Fernando, LU & Prescribing Penalties for Violation Thereof","24","RESOLUTION NO.624-99.pdf","21","1999-11-11","0");
INSERT INTO tbl_resolution VALUES("625 - 1999","","Provincial Prosecutor to act as Counsel for the issuance of Judicial Title over at Sagayad, CSF","28","RESOLUTION NO.625-99.pdf","21","1999-11-11","0");
INSERT INTO tbl_resolution VALUES("626 - 1999","","Request CHED to publish in a local newspaper the list of Academic Courses offered by Tertiary School accredited by CHED","26","RESOLUTION NO.626-99.pdf","21","1999-11-11","0");
INSERT INTO tbl_resolution VALUES("627 - 1999","","AO amounting P264,700.00 for the Cooperative Week","20","RESOLUTION NO.627-99.pdf","21","1999-11-11","0");
INSERT INTO tbl_resolution VALUES("628 - 1999","","Condole w/ Statesman Jose D. Aspiras","20","RESOLUTION NO.628-99.pdf","21","1999-11-17","0");
INSERT INTO tbl_resolution VALUES("629 - 1999","","AO amounting P7,912,567.54 for SB No. 04","8","RESOLUTION NO.629-99.pdf","21","1999-11-17","0");
INSERT INTO tbl_resolution VALUES("630 - 1999","","AO amounting P1,798,816.12 for SB No. 05","20","RESOLUTION NO.630-99.pdf","21","1999-11-17","0");
INSERT INTO tbl_resolution VALUES("631 - 1999","","Condole w/ Mr. Pelagio Alcantara","23","RESOLUTION NO.631-99.pdf","21","1999-11-17","0");
INSERT INTO tbl_resolution VALUES("632 - 1999","","Congratulate PDir Panfilo M. Lacson on his appointment as the New PNP Chief","25","RESOLUTION NO.632-99.pdf","21","1999-11-17","0");
INSERT INTO tbl_resolution VALUES("633 - 1999","","P20,000.00 F/A to the La Union Sports Council, for the documentation of the La Union Athletic Contingent for the Phil. National Youth Games – Batang Pinoy","20","RESOLUTION NO.633-99.pdf","21","1999-11-17","0");
INSERT INTO tbl_resolution VALUES("634 - 1999","","Contract of Service w/ Dr. Corsini Aragon as Contractual Physician in BDH","20","RESOLUTION NO.634-99.pdf","21","1999-11-25","0");
INSERT INTO tbl_resolution VALUES("635 - 1999","","Condole w/ SBM Peter Galvey, Bagulin","9","RESOLUTION NO.635-99.pdf","21","1999-11-25","0");
INSERT INTO tbl_resolution VALUES("636 - 1999","","Request Gov. to assign additional vehicles to the PPDO and OPag","21","RESOLUTION NO.636-99.pdf","21","1999-12-02","0");
INSERT INTO tbl_resolution VALUES("638 - 1999","","TOPPS CY 1999\n\n1.	Ms. Sonia A. Caldito\n2.	Ms. Milagros C. Ducusin\n3.	Mr. Rudy D. Ducusin\n4.	Mr. Eduardo A. Ebueza\n5.	Dr. Nida N. Gapuz\n6.	Ms. Josephine T. Naanep\n7.	Mr. Alfonso T. Padilla\n8.	Mr. Proyecto C. Pulmano\n9.	Ms. Teodora Vivian D. Rimando\n10.	Ms. Evelyn N. Tolentino\n","17","RESOLUTION NO.638-99.pdf","21","1999-12-07","0");
INSERT INTO tbl_resolution VALUES("639 - 1999","","Discourage departments of the province to have their own Christmas party","20","RESOLUTION NO.639-99.pdf","21","1999-12-07","0");
INSERT INTO tbl_resolution VALUES("640 - 1999","","Approve FY 1999 GF SB # 3, of Sudipen, LU","20","RESOLUTION NO.640-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("641 - 1999","","P5,000.00 F/A to Brgy. Nagsimbaanan, Bacnotan, LU, for the purchase of garden tools","20","RESOLUTION NO.641-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("642 - 1999","","P10,000.00 F/A to the PTCA of Naguilian E/S, Naguilian, LU, for the improvement of their multi-purpose stage","20","RESOLUTION NO.642-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("643 - 1999","","P10,000.00 F/A to Brgy. San Vicente Sur, Agoo, LU, for the purchase of streetlights`","20","RESOLUTION NO.643-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("644 - 1999","","P20,000.00 F/A to Brgy. San Manuel Norte, Agoo, LU, for the construction of their day care center","20","RESOLUTION NO.644-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("645 - 1999","","P20,000.00 F/A to Brgy. Cabarsican, Bacnotan, LU, for the construction of a tanod outpost`","20","RESOLUTION NO.645-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("646 - 1999","","P20,000.00 F/A to Brgy. Cabarsican, Bacnotan, LU, for the construction of a tanod outpost","20","RESOLUTION NO.646-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("647 - 1999","","P10,000.00 F/A to the PE, Health and Music Dep’t of DFLOMNHS, Bangar, LU, for the repair of their HE Bldg","20","RESOLUTION NO.647-99.pdf","21","1999-11-16","0");
INSERT INTO tbl_resolution VALUES("648 - 1999","","P10,000.00 F/A to Brgy. Nagsimbaanan, Bacnotan, LU, for the completion of their multi-purpose hall and day care center","20","RESOLUTION NO.648-99.pdf","21","1999-11-16","0");
INSERT INTO tbl_resolution VALUES("649 - 1999","","P10,000.00 F/A to Brgy. Macalva Central, Agoo, LU, for the streetlights","20","RESOLUTION NO.649-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("650 - 1999","","P20,000.00 F/A to Brgy. Nagsimbaanan, Bacnotan, LU, for the completion of the rip-rapping of their barangay hall","20","RESOLUTION NO.650-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("651 - 1999","","P12,000.00 F/A to Brgy. Cambaly, Bagulin, LU, for the rip-rapping of the road portion at Sitio Kilog","20","RESOLUTION NO.651-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("652 - 1999","","P20,000.00 F/A to Brgy. Almeida, Balaoan, LU, for the construction of their barangay health center","20","RESOLUTION NO.652-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("653 - 1999","","P5,000.00 F/A to Brgy. Urbiztondo, San Juan, LU, for the purchase of garden tools","20","RESOLUTION NO.653-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("654 - 1999","","P20,000.00 F/A to the Rissing Agricultural MPCI, Bangar, LU, for the completion of the Coop palay and fertilizer warehouse and office","20","RESOLUTION NO.654-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("655 - 1999","","P3,000.00 F/A to Brgy. Porporiket, Sudipen, LU, for the purchase of wheelbarrows","20","RESOLUTION NO.655-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("656 - 1999","","Approve FY 1999 GF SB # 3, of Agoo, LU","20","RESOLUTION NO.656-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("657 - 1999","","P10,000.00 F/A to the DMMMSU, Rosario, LU, for the construction of a waiting shed in front of their school","20","RESOLUTION NO.657-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("658 - 1999","","P3,000.00 F/A to the LUNHS, CSF, LU, for the project of the Science & Technology Dep’t","20","RESOLUTION NO.658-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("659 - 1999","","P5,000.00 F/A to Brgy. Sta. Rita Norte, Agoo, LU, for the purchase of wheelbarrows","20","RESOLUTION NO.659-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("660 - 1999","","P20,000.00 F/A to Brgy. Caarusipan, San Juan, LU, for the construction of their comfort room","20","RESOLUTION NO.660-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("661 - 1999","","P3,000.00 F/A to the ORT Day Care Center, Brgy. Gonzales, Tubao, LU, for the purchase of teaching paraphernalia","20","RESOLUTION NO.661-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("662 - 1999","","P50,000.00 F/A to the Damoris Nat’l H/S, Rosario, LU, for the completion of the amphi-theatre","20","RESOLUTION NO.662-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("663 - 1999","","P10,000.00 F/A to Sto. Rosario E/S, Aringay, LU, for the repair of their Bagong Lipunan Bldg","20","RESOLUTION NO.663-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("664 - 1999","","P10,000.00 F/A to the Don Eulogio Memorial H/S, Bauang, LU, for the renovation of their stage","20","RESOLUTION NO.664-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("665 - 1999","","P5,000.00 F/A to the PTCA, San Cornelio E/S, Caba, LU, for the reinforced slope protection project","20","RESOLUTION NO.665-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("666 - 1999","","P10,000.00 F/A to the PTCA E/S, Rosario, LU, for the repair of their semi-concrete fence along the provincial road","20","RESOLUTION NO.666-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("667 - 1999","","P20,000.00 F/A to Brgy. San Nicolas Central, Agoo, LU, for the rehab of the canal along Sunshine Lane “A” ","20","RESOLUTION NO.667-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("668 - 1999","","AO reverting P74,234.84 to the General Fund","20","RESOLUTION NO.668-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("669 - 1999","","P10,000.00 F/A to Brgy. Baccuit, Bauang, LU, for the improvement of their Barangay","20","RESOLUTION NO.669-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("670 - 1999","","Approve FY 1999 GF SB # 2, of Santol, LU","20","RESOLUTION NO.670-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("671 - 1999","","Approve FY 1999 GF SB # 2, of Bagulin, LU","20","","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("672 - 1999","","P5,000.00 F/A to the SK of Brgy. Urayong, Bauang, LU, for the purchase of sports equipment","20","RESOLUTION NO.672-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("673 - 1999","","P10,000.00 F/A to Brgy. Leones West, Tubao, LU, for the extension of their existing solar dryer","20","RESOLUTION NO.673-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("674 - 1999","","AO amounting P133,453.73 for Terminal Leave Pay","20","RESOLUTION NO.674-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("675 - 1999","","P7,000.00 F/A to Brgy. Suyo, Bagulin, LU, for the purchase of a mower","20","RESOLUTION NO.675-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("676 - 1999","","P15,000.00 F/A to Brgy. Libtong, Burgos, LU, for the rip-rapping of their barangay road","20","RESOLUTION NO.676-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("677 - 1999","","P5,000.00 F/A to Mr. Liberato Espiritu and family","20","RESOLUTION NO.677-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("678 - 1999","","P30,000.00 F/A to the SB of Sto. Tomas, LU, for the construction of a plaza at Brgy. Narvacan","20","RESOLUTION NO.678-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("679 - 1999","","P20,000.00 F/A to Brgy. Central East, Bauang, LU, for the purchase of cement","20","RESOLUTION NO.679-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("680 - 1999","","P15,000.00 F/A to the SB of Santol, LU, for the construction of a stage at Brgy. Cor-rooy","20","RESOLUTION NO.680-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("681 - 1999","","P30,000.00 F/A to Brgy. Pobalcion, Santol, LU, for the construction and painting of basketball boards","20","RESOLUTION NO.681-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("682 - 1999","","P15,000.00 F/A to Brgy. Caarusipan, San Juan, LU, for the construction of streetlights","20","RESOLUTION NO.682-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("683 - 1999","","P20,000.00 F/A to Brgy. Casilagan, Sto. Tomas, LU, for the continuation of their barangay hall","20","RESOLUTION NO.683-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("684 - 1999","","AO amounting P30,000.00 for the Phil. Travel Mart","20","RESOLUTION NO.684-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("685 - 1999","","Realign funds for the construction of a multi-purpose dryer at Brgy. Lingsat, CSF and to reprogram the same to the concrete paving of their barangay road","20","RESOLUTION NO.685-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("686 - 1999","","P10,000.00 F/A to Brgy. Pagdalagan, Bauang, Agoo, LU, for the continuation of the concreting of their barangay road","20","RESOLUTION NO.686-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("687 - 1999","","P10,000.00 F/A to Brgy. Central East, Bauang, LU, for the cementing of their barangay road","20","RESOLUTION NO.687-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("688 - 1999","","P7,000.00 F/A to Brgy. Gallano, Aringay, LU, for the concreting of the irrigation canal ","20","RESOLUTION NO.688-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("689 - 1999","","P30,000.00 F/A to Brgy. Al-alinao Norte, Naguilian, LU, for the construction of a multi-purpose barangay hall","20","RESOLUTION NO.689-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("690 - 1999","","P20,000.00 F/A to Brgy. Sucoc Norte, Luna, LU, for the shallow well project","20","RESOLUTION NO.690-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("691 - 1999","","P20,000.00 F/A to Brgy. Oya-oy, Bacnotan, LU, for the repair of the barangay hall","20","RESOLUTION NO.691-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("692 - 1999","","P10,000.00 F/A to Brgy. Paagan, Bacnotan, LU, for the purchase of streetlights","20","RESOLUTION NO.692-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("693 - 1999","","Realign funds for the construction of a solar dryer at Brgy. Nagsabaran Sur, Balaoan and to reprogram the same to Nagsabaran Norte","20","RESOLUTION NO.693-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("694 - 1999","","P20,000.00 F/A to Agoo Central West School, Agoo, LU, for the renovation of their canteen","20","RESOLUTION NO.694-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("695 - 1999","","AO amounting P74,749.30 for the Insurance Premium to GSIS","20","RESOLUTION NO.695-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("696 - 1999","","Urge Senate and Congress to reject proposed move to reduce IRA of LGUs","20","RESOLUTION NO.696-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("697 - 1999","","AO amounting P3,030,000.00 for the Provincial Jail","20","RESOLUTION NO.697-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("698 - 1999","","AO amounting 3,163,453.73 of the General Fund ","20","RESOLUTION NO.698-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("699 - 1999","","Condole w/ ex-Mayor Calixto Mendoza, Naguilian","26","RESOLUTION NO.699-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("700 - 1999","","Realign P3 M to the LU Greening Program ","24","RESOLUTION NO.700-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("701 - 1999","","AO amounting P20,000.00 for Overtime Services","20","RESOLUTION NO.701-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("702 - 1999","","MOA w/ NHA regarding the program for the 100 poorest families of LU under the Lingap Para sa Mahihirap Program","20","RESOLUTION NO.702-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("703 - 1999","","Thank Mrs. Pelilia Veloso during her stint as Provincial Auditor","30","RESOLUTION NO.703-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("704 - 1999","","AO approving the AB CY 2000 of the province","20","RESOLUTION NO.704-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("705 - 1999","","Thank Sen. Aquilino Pimentel who stood by the LGUs against their cut in the IRA","17","RESOLUTION NO.705-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("706 - 1999","","P300,000.00 F/A to Brgy. IV, CSF, for the construction of a Barangay Hall, Day Care Center and Health Center","20","RESOLUTION NO.706-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("707 - 1999","","P3,000.00 Personnel Welfare Benefit to all officials and employees","17","RESOLUTION NO.707-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("708 - 1999","","AO amounting P3,300,000.00 of the General Fund","20","RESOLUTION NO.708-99.pdf","21","1999-12-16","0");
INSERT INTO tbl_resolution VALUES("709 - 1999","","AO amounting P3,300,000.00 of the General Fund","20","RESOLUTION NO.709-99.pdf","21","1999-12-16","0");



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
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=latin1;

INSERT INTO tbl_status VALUES("1","2014 - 0003","0","1","1","1");
INSERT INTO tbl_status VALUES("2","2014 - 0004","0","0","0","0");
INSERT INTO tbl_status VALUES("3","2014 - 0002","1","1","1","1");
INSERT INTO tbl_status VALUES("4","2014 - 0043","1","1","1","1");
INSERT INTO tbl_status VALUES("5","2014 - 0042","1","1","1","1");
INSERT INTO tbl_status VALUES("6","2014 - 0236","1","1","1","1");
INSERT INTO tbl_status VALUES("8","2014 - 0064","1","1","1","1");
INSERT INTO tbl_status VALUES("9","2014 - 0066","1","1","1","1");
INSERT INTO tbl_status VALUES("10","2014 - 0067","1","1","1","1");
INSERT INTO tbl_status VALUES("11","2014 - 0071","1","1","1","1");
INSERT INTO tbl_status VALUES("12","2014 - 0080","1","1","1","1");
INSERT INTO tbl_status VALUES("13","2014 - 0079","1","1","1","1");
INSERT INTO tbl_status VALUES("14","2014 - 0086","1","1","1","1");
INSERT INTO tbl_status VALUES("15","2014 - 0095","1","1","1","1");
INSERT INTO tbl_status VALUES("16","2014 - 0096","1","1","1","1");
INSERT INTO tbl_status VALUES("17","2014 - 0104","1","1","1","1");
INSERT INTO tbl_status VALUES("18","2014 - 0105","1","1","1","1");
INSERT INTO tbl_status VALUES("19","2014 - 0114","1","1","1","1");
INSERT INTO tbl_status VALUES("20","2014 - 0120","1","1","1","1");
INSERT INTO tbl_status VALUES("21","2014 - 0058","1","1","1","1");
INSERT INTO tbl_status VALUES("22","2014 - 0059","1","1","1","1");
INSERT INTO tbl_status VALUES("23","2014 - 0121","1","1","1","1");
INSERT INTO tbl_status VALUES("24","2014 - 0123","1","1","1","1");
INSERT INTO tbl_status VALUES("25","2014 - 0127","1","1","1","1");
INSERT INTO tbl_status VALUES("26","2014 - 0133","1","1","1","1");
INSERT INTO tbl_status VALUES("27","2014 - 0131","1","1","1","1");
INSERT INTO tbl_status VALUES("28","2014 - 0150","1","1","1","1");
INSERT INTO tbl_status VALUES("29","2014 - 0149","1","1","1","1");
INSERT INTO tbl_status VALUES("30","2014 - 0153","1","1","1","1");
INSERT INTO tbl_status VALUES("31","2014 - 0154","1","1","1","1");
INSERT INTO tbl_status VALUES("32","2014 - 0161","1","1","1","1");
INSERT INTO tbl_status VALUES("33","2014 - 0169","1","1","1","1");
INSERT INTO tbl_status VALUES("34","2014 - 0049","1","1","1","1");
INSERT INTO tbl_status VALUES("35","2014 - 0013","0","1","1","1");
INSERT INTO tbl_status VALUES("36","2014 - 0014","0","1","1","1");
INSERT INTO tbl_status VALUES("37","2014 - 0033","0","1","1","1");
INSERT INTO tbl_status VALUES("38","2014 - 0034","0","1","1","1");
INSERT INTO tbl_status VALUES("39","2014 - 0035","0","1","1","1");
INSERT INTO tbl_status VALUES("40","2014 - 0032","0","1","1","1");
INSERT INTO tbl_status VALUES("41","2014 - 0026","0","1","1","1");
INSERT INTO tbl_status VALUES("42","2014 - 0047","0","1","1","1");
INSERT INTO tbl_status VALUES("43","2014 - 0050","0","1","1","1");
INSERT INTO tbl_status VALUES("44","2014 - 0078","0","1","1","0");
INSERT INTO tbl_status VALUES("45","2014 - 0088","0","1","1","1");
INSERT INTO tbl_status VALUES("46","2014 - 0103","0","1","1","1");
INSERT INTO tbl_status VALUES("47","2014 - 0107","0","1","1","1");
INSERT INTO tbl_status VALUES("48","2014 - 0140","0","0","0","0");
INSERT INTO tbl_status VALUES("49","2014 - 0165","0","1","1","1");
INSERT INTO tbl_status VALUES("50","2014 - 0207","0","0","0","0");
INSERT INTO tbl_status VALUES("51","2014 - 0219","0","0","0","0");
INSERT INTO tbl_status VALUES("52","2014 - 0126","0","0","0","0");
INSERT INTO tbl_status VALUES("53","2014 - 0017","0","1","1","1");
INSERT INTO tbl_status VALUES("54","2014 - 0028","0","1","1","1");
INSERT INTO tbl_status VALUES("55","2014 - 0106","0","1","1","1");
INSERT INTO tbl_status VALUES("56","2014 - 0163","0","1","1","1");
INSERT INTO tbl_status VALUES("57","2014 - 0177","0","1","1","1");
INSERT INTO tbl_status VALUES("58","2014 - 0119","0","1","1","1");
INSERT INTO tbl_status VALUES("59","2014 - 0194","0","1","1","1");
INSERT INTO tbl_status VALUES("60","2014 - 0195","0","1","1","1");
INSERT INTO tbl_status VALUES("61","2014 - 0020","0","1","1","1");
INSERT INTO tbl_status VALUES("62","2014 - 0012","0","1","1","1");
INSERT INTO tbl_status VALUES("63","2014 - 0087","0","1","1","1");
INSERT INTO tbl_status VALUES("64","2014 - 0128","0","1","1","1");
INSERT INTO tbl_status VALUES("65","2014 - 0187","0","1","1","1");
INSERT INTO tbl_status VALUES("66","2014 - 0021","0","1","1","0");
INSERT INTO tbl_status VALUES("67","2014 - 0089","0","1","1","1");
INSERT INTO tbl_status VALUES("68","2014 - 0094","0","1","1","1");
INSERT INTO tbl_status VALUES("69","2014 - 0170","0","1","1","1");
INSERT INTO tbl_status VALUES("70","2014 - 0214","0","1","1","0");
INSERT INTO tbl_status VALUES("71","2014 - 0213","0","1","1","0");
INSERT INTO tbl_status VALUES("72","2014 - 0202","0","0","0","0");
INSERT INTO tbl_status VALUES("73","2014 - 0209","0","0","0","0");
INSERT INTO tbl_status VALUES("74","2014 - 0155","0","0","0","0");
INSERT INTO tbl_status VALUES("75","2014 - 0125","0","0","0","0");
INSERT INTO tbl_status VALUES("76","2014 - 0196","0","1","1","0");
INSERT INTO tbl_status VALUES("77","2014 - 0113","0","1","1","0");
INSERT INTO tbl_status VALUES("78","2014 - 0117","0","1","1","1");
INSERT INTO tbl_status VALUES("79","2014 - 0174","0","1","1","1");
INSERT INTO tbl_status VALUES("80","2014 - 0205","0","1","1","0");
INSERT INTO tbl_status VALUES("81","2014 - 0011","0","1","1","1");
INSERT INTO tbl_status VALUES("82","2014 - 0085","0","1","1","1");
INSERT INTO tbl_status VALUES("83","2014 - 0129","0","0","0","0");
INSERT INTO tbl_status VALUES("84","2014 - 0141","0","1","1","1");
INSERT INTO tbl_status VALUES("85","2014 - 0084","0","1","1","1");
INSERT INTO tbl_status VALUES("86","2014 - 0135","0","1","1","1");
INSERT INTO tbl_status VALUES("87","2014 - 0191","0","1","1","1");
INSERT INTO tbl_status VALUES("88","2014 - 0173","0","1","1","1");
INSERT INTO tbl_status VALUES("89","2014 - 0211","0","1","1","1");
INSERT INTO tbl_status VALUES("90","2014 - 0212","0","1","1","1");
INSERT INTO tbl_status VALUES("91","2014 - 0008","0","1","1","1");
INSERT INTO tbl_status VALUES("92","2014 - 0072","0","1","1","0");
INSERT INTO tbl_status VALUES("93","2014 - 0102","0","1","1","1");
INSERT INTO tbl_status VALUES("94","2014 - 0136","0","1","1","1");
INSERT INTO tbl_status VALUES("95","2014 - 0160","0","1","1","0");
INSERT INTO tbl_status VALUES("96","2014 - 0168","0","1","1","1");
INSERT INTO tbl_status VALUES("97","2014 - 0171","0","0","0","0");
INSERT INTO tbl_status VALUES("98","2014 - 0188","0","1","1","1");
INSERT INTO tbl_status VALUES("99","2014 - 0206","0","0","0","0");
INSERT INTO tbl_status VALUES("100","2014 - 0216","0","0","0","0");
INSERT INTO tbl_status VALUES("101","2014 - 0218","0","1","1","1");
INSERT INTO tbl_status VALUES("102","2014 - 0009","0","1","1","1");
INSERT INTO tbl_status VALUES("103","2014 - 0022","0","1","1","1");
INSERT INTO tbl_status VALUES("104","2014 - 0056","0","1","1","0");
INSERT INTO tbl_status VALUES("105","2014 - 0077","0","0","0","0");
INSERT INTO tbl_status VALUES("106","2014 - 0010","0","1","1","1");
INSERT INTO tbl_status VALUES("107","2014 - 0097","0","1","1","1");
INSERT INTO tbl_status VALUES("108","2014 - 0101","0","1","1","0");
INSERT INTO tbl_status VALUES("109","2014 - 0099","0","1","1","1");
INSERT INTO tbl_status VALUES("110","2014 - 0100","0","1","1","1");
INSERT INTO tbl_status VALUES("111","2014 - 0118","0","1","1","1");
INSERT INTO tbl_status VALUES("112","2014 - 0134","0","1","1","1");
INSERT INTO tbl_status VALUES("113","2014 - 0208","0","0","0","0");
INSERT INTO tbl_status VALUES("114","2014 - 0053","0","1","1","1");
INSERT INTO tbl_status VALUES("115","2014 - 0132","0","1","1","1");
INSERT INTO tbl_status VALUES("116","2014 - 0215","0","1","1","1");
INSERT INTO tbl_status VALUES("117","2014 - 0137","0","1","1","1");
INSERT INTO tbl_status VALUES("118","2014 - 0176","0","1","1","1");
INSERT INTO tbl_status VALUES("119","2014 - 0186","0","1","1","1");
INSERT INTO tbl_status VALUES("120","2014 - 0201","0","1","1","0");
INSERT INTO tbl_status VALUES("121","2014 - 0015","0","1","1","1");
INSERT INTO tbl_status VALUES("122","2014 - 0016","0","1","1","1");
INSERT INTO tbl_status VALUES("123","2014 - 0093","0","1","1","0");
INSERT INTO tbl_status VALUES("124","2014 - 0164","0","1","1","1");
INSERT INTO tbl_status VALUES("125","2014 - 0175","0","0","0","0");
INSERT INTO tbl_status VALUES("126","2014 - 0220","0","0","0","0");
INSERT INTO tbl_status VALUES("127","2014 - 0019","0","1","1","1");
INSERT INTO tbl_status VALUES("128","2014 - 0052","0","1","1","0");
INSERT INTO tbl_status VALUES("129","2014 - 0122","0","0","0","0");
INSERT INTO tbl_status VALUES("130","2014 - 0130","0","0","0","0");
INSERT INTO tbl_status VALUES("131","2014 - 0152","0","1","1","1");
INSERT INTO tbl_status VALUES("132","2014 - 0190","0","1","1","1");
INSERT INTO tbl_status VALUES("133","2014 - 0192","0","0","0","0");
INSERT INTO tbl_status VALUES("134","2014 - 0151","0","0","0","0");
INSERT INTO tbl_status VALUES("135","2014 - 0166","0","1","1","1");
INSERT INTO tbl_status VALUES("136","2014 - 0217","0","1","1","1");
INSERT INTO tbl_status VALUES("137","2014 - 0018","0","1","1","1");
INSERT INTO tbl_status VALUES("138","2014 - 0007","0","1","1","1");
INSERT INTO tbl_status VALUES("139","2014 - 0045","0","1","1","1");
INSERT INTO tbl_status VALUES("140","2014 - 0046","0","0","0","0");
INSERT INTO tbl_status VALUES("141","2014 - 0051","0","1","1","1");
INSERT INTO tbl_status VALUES("142","2014 - 0057","0","1","1","0");
INSERT INTO tbl_status VALUES("143","2014 - 0143","0","0","0","0");
INSERT INTO tbl_status VALUES("144","2014 - 0193","0","0","0","0");
INSERT INTO tbl_status VALUES("145","2014 - 0203","0","0","0","0");
INSERT INTO tbl_status VALUES("146","2014 - 0006","1","1","1","1");
INSERT INTO tbl_status VALUES("147","2014 - 0023","1","1","1","1");
INSERT INTO tbl_status VALUES("148","2014 - 0024","1","1","1","1");
INSERT INTO tbl_status VALUES("149","2014 - 0025","1","1","1","1");
INSERT INTO tbl_status VALUES("150","2014 - 0027","1","1","1","1");
INSERT INTO tbl_status VALUES("151","2014 - 0030","1","1","1","1");
INSERT INTO tbl_status VALUES("152","2014 - 0038","1","1","1","1");
INSERT INTO tbl_status VALUES("153","2014 - 0039","1","1","1","1");
INSERT INTO tbl_status VALUES("154","2014 - 0040","1","1","1","1");
INSERT INTO tbl_status VALUES("155","2014 - 0041","1","1","1","1");
INSERT INTO tbl_status VALUES("156","2014 - 0060","1","1","1","1");
INSERT INTO tbl_status VALUES("157","2014 - 0060","1","1","1","0");
INSERT INTO tbl_status VALUES("158","2014 - 0083","1","1","1","1");
INSERT INTO tbl_status VALUES("159","2014 - 0091","1","1","1","1");
INSERT INTO tbl_status VALUES("160","2014 - 0092","1","1","1","1");
INSERT INTO tbl_status VALUES("161","2014 - 0109","1","1","1","1");
INSERT INTO tbl_status VALUES("162","2014 - 0110","1","1","1","1");
INSERT INTO tbl_status VALUES("163","2014 - 0111","1","1","1","1");
INSERT INTO tbl_status VALUES("164","2014 - 0112","1","1","1","1");
INSERT INTO tbl_status VALUES("165","2014 - 0115","1","1","1","1");
INSERT INTO tbl_status VALUES("166","2014 - 0116","1","1","1","1");
INSERT INTO tbl_status VALUES("167","2014 - 0144","1","1","1","1");
INSERT INTO tbl_status VALUES("168","2014 - 0145","1","1","1","1");
INSERT INTO tbl_status VALUES("169","2014 - 0146","1","1","1","1");
INSERT INTO tbl_status VALUES("170","2014 - 0147","1","1","1","1");
INSERT INTO tbl_status VALUES("171","2014 - 0157","1","1","1","1");
INSERT INTO tbl_status VALUES("172","2014 - 0158","1","1","1","1");
INSERT INTO tbl_status VALUES("173","2014 - 0172","1","1","1","1");
INSERT INTO tbl_status VALUES("174","2014 - 0178","1","1","1","1");
INSERT INTO tbl_status VALUES("175","2014 - 0179","1","1","1","1");
INSERT INTO tbl_status VALUES("176","2014 - 0180","1","1","1","1");
INSERT INTO tbl_status VALUES("177","2014 - 0183","1","1","1","1");
INSERT INTO tbl_status VALUES("178","2014 - 0184","1","1","1","1");
INSERT INTO tbl_status VALUES("179","2014 - 0198","1","1","1","1");
INSERT INTO tbl_status VALUES("180","2014 - 0199","1","1","1","1");
INSERT INTO tbl_status VALUES("181","2014 - 0200","1","1","1","1");
INSERT INTO tbl_status VALUES("182","2014 - 0210","1","1","1","1");
INSERT INTO tbl_status VALUES("183","2014 - 0225","1","1","1","1");
INSERT INTO tbl_status VALUES("184","2014 - 0224","1","1","1","1");
INSERT INTO tbl_status VALUES("185","2014 - 0228","1","1","1","1");
INSERT INTO tbl_status VALUES("186","2014 - 0244","1","1","1","1");
INSERT INTO tbl_status VALUES("187","2014 - 0029","1","1","1","0");
INSERT INTO tbl_status VALUES("188","2014 - 0031","1","1","1","1");
INSERT INTO tbl_status VALUES("189","2014 - 0048","1","1","1","0");
INSERT INTO tbl_status VALUES("190","2014 - 0054","1","1","1","0");
INSERT INTO tbl_status VALUES("191","2014 - 0055","1","1","1","0");
INSERT INTO tbl_status VALUES("192","2014 - 0061","1","1","1","0");
INSERT INTO tbl_status VALUES("193","2014 - 0063","1","1","1","0");
INSERT INTO tbl_status VALUES("194","2014 - 0070","1","1","1","0");
INSERT INTO tbl_status VALUES("195","2014 - 0062","1","1","1","0");
INSERT INTO tbl_status VALUES("196","2014 - 0073","1","1","1","0");
INSERT INTO tbl_status VALUES("197","2014 - 0074","1","1","1","0");
INSERT INTO tbl_status VALUES("198","2014 - 0076","1","1","1","0");
INSERT INTO tbl_status VALUES("199","2014 - 0075","1","1","1","0");
INSERT INTO tbl_status VALUES("200","2014 - 0081","1","1","1","0");
INSERT INTO tbl_status VALUES("201","2014 - 0090","1","1","1","0");
INSERT INTO tbl_status VALUES("202","2014 - 0098","1","1","1","0");
INSERT INTO tbl_status VALUES("203","2014 - 0138","0","1","1","0");
INSERT INTO tbl_status VALUES("204","2014 - 0226","1","1","1","0");
INSERT INTO tbl_status VALUES("205","2014 - 0181","1","1","1","0");
INSERT INTO tbl_status VALUES("206","2014 - 0005","0","1","1","1");
INSERT INTO tbl_status VALUES("207","2014 - 0036","0","1","1","1");
INSERT INTO tbl_status VALUES("208","2014 - 0065","1","1","1","1");
INSERT INTO tbl_status VALUES("209","2014 - 0159","0","1","1","1");
INSERT INTO tbl_status VALUES("210","2014 - 0197","0","1","1","1");
INSERT INTO tbl_status VALUES("211","2014 - 0167","0","1","1","1");
INSERT INTO tbl_status VALUES("212","2014 - 0227","1","1","1","0");
INSERT INTO tbl_status VALUES("213","2014 - 0068","1","1","1","1");
INSERT INTO tbl_status VALUES("214","2014 - 0044","1","1","1","1");
INSERT INTO tbl_status VALUES("215","2014 - 0069","1","1","1","1");
INSERT INTO tbl_status VALUES("216","2014 - 0124","1","1","1","1");
INSERT INTO tbl_status VALUES("217","2014 - 0142","1","1","1","0");
INSERT INTO tbl_status VALUES("218","2014 - 0221","1","1","1","1");
INSERT INTO tbl_status VALUES("219","2014 - 0222","1","1","1","1");
INSERT INTO tbl_status VALUES("220","2014 - 0229","1","1","1","0");
INSERT INTO tbl_status VALUES("221","2014 - 0037","0","1","1","1");



DROP TABLE tbl_sysbackup;

CREATE TABLE `tbl_sysbackup` (
  `db_id` int(11) NOT NULL AUTO_INCREMENT,
  `db_name` varchar(50) DEFAULT NULL,
  `date_backed_up` datetime DEFAULT NULL,
  `backed_up_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`db_id`),
  KEY `backed_up_by` (`backed_up_by`),
  CONSTRAINT `FK__tbl_user` FOREIGN KEY (`backed_up_by`) REFERENCES `tbl_user` (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

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
INSERT INTO tbl_sysbackup VALUES("17","db-backup(2014-10-16).sql","2014-10-16 08:46:41","21");



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
INSERT INTO tbl_user VALUES("lara","3b07c768071e6175ced9ea12764baf2c","23","SCR-T","2014-01-01","2020-01-01");
INSERT INTO tbl_user VALUES("matet","371db6d80205b0164ed02c60bb3730ea","25","SCR-RF","2014-01-01","2020-01-01");
INSERT INTO tbl_user VALUES("rachel","889b2b111b4bc3adb722f0fcff480901","43","BOKAL","2013-01-01","2014-01-01");
INSERT INTO tbl_user VALUES("receiving","0639f5c0e2228ccdf3385f88f1579491","1","SCR-RC","2013-10-10","2016-10-10");
INSERT INTO tbl_user VALUES("receiving sec","0639f5c0e2228ccdf3385f88f1579491","2","SCR-RC","2013-10-10","2016-10-10");
INSERT INTO tbl_user VALUES("referral","cd9bcdcbf9ef392bb2bce89a7c150638","2","SCR-RF","2013-10-10","2016-10-10");
INSERT INTO tbl_user VALUES("rhea","60579e7c700c3f17aae0d9924b46cef7","24","SCR-RF","2014-01-01","2020-01-01");
INSERT INTO tbl_user VALUES("sample","5e8ff9bf55ba3508199d22e984129be6","1","SCR-RC","2013-10-10","2013-10-10");
INSERT INTO tbl_user VALUES("tracking","1879966223c3e382e14c6524c84942f1","3","SCR-T","2013-10-10","2016-10-10");
INSERT INTO tbl_user VALUES("Vee","0951ba11ae1427612d3de66ed5dafacc","22","SCR-RC","2014-01-02","2020-01-02");
INSERT INTO tbl_user VALUES("yobi","ef80d6a456354c87c7e6b0c918b2d7c1","21","SYSAD","2013-10-10","2013-10-10");



