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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

INSERT INTO forum_question VALUES("53","INPUTTING","PANO PO MAG INPUT SABAY SABAY?","IBOY","yobi@yahoo.com","2014-06-29 13:41:45","0","0","2");
INSERT INTO forum_question VALUES("54","inputting","pano mag input?","yobiboy","yobi@yahoo.com","2014-06-29 13:42:57","8","4","1");
INSERT INTO forum_question VALUES("55","TESTING TOPIC FROM MAAM LARA\'S PC","TESTING LANG ITO","MAAM LARA","lara@yahoo.com","2014-08-04 07:58:42","3","1","1");
INSERT INTO forum_question VALUES("56","paano mag  preint ng resolution fronm search?","sas","lara","larageraldinebacer@yahoo.com","2014-08-04 09:05:03","9","2","1");
INSERT INTO forum_question VALUES("57","Communication","why oh why","iboy","yobi@yahoo.com","2014-08-12 03:56:52","18","4","1");



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
) ENGINE=InnoDB AUTO_INCREMENT=14071 DEFAULT CHARSET=latin1;

INSERT INTO tbl_activity VALUES("1","Viewed Audit Trails","21","2014-09-29 12:40:44");
INSERT INTO tbl_activity VALUES("11596","Viewed Audit Trails","21","2014-09-29 12:41:21");
INSERT INTO tbl_activity VALUES("11597","Viewed Audit Trails","21","2014-09-29 12:41:33");
INSERT INTO tbl_activity VALUES("11598","Viewed Audit Trails","21","2014-09-29 13:10:03");
INSERT INTO tbl_activity VALUES("11599","Downloaded Communication Letter","21","2014-09-29 13:28:40");
INSERT INTO tbl_activity VALUES("11600","Viewed List of Referral for Committee Meeting","21","2014-09-29 13:42:09");
INSERT INTO tbl_activity VALUES("11601","Viewed List of Referral for Committee Meeting","21","2014-09-29 13:46:50");
INSERT INTO tbl_activity VALUES("11602","Viewed List of Referral for Committee Meeting","21","2014-09-29 13:55:30");
INSERT INTO tbl_activity VALUES("11603","Viewed List of Referral for Committee Meeting","21","2014-09-29 13:55:32");
INSERT INTO tbl_activity VALUES("11604","Viewed List of Referral for Committee Meeting","21","2014-09-29 13:55:35");
INSERT INTO tbl_activity VALUES("11605","Viewed List of Referral for Committee Meeting","21","2014-09-29 13:55:37");
INSERT INTO tbl_activity VALUES("11606","Added Another Committee Meeting","21","2014-09-29 14:24:00");
INSERT INTO tbl_activity VALUES("11607","Viewed Committee Meeting ID: 2","21","2014-09-29 14:24:00");
INSERT INTO tbl_activity VALUES("11608","Viewed Committee Meeting ID: 2","21","2014-09-29 14:24:52");
INSERT INTO tbl_activity VALUES("11609","Assigned Date of Committe Report of Committee Meeting ID: 2","21","2014-09-29 14:24:52");
INSERT INTO tbl_activity VALUES("11610","Viewed Committee Meeting ID: 2","21","2014-09-29 14:24:52");
INSERT INTO tbl_activity VALUES("11611","Viewed Committee Meeting List for Resolution","21","2014-09-29 14:24:56");
INSERT INTO tbl_activity VALUES("11612","Viewed List of Referral for Committee Meeting","21","2014-09-29 14:24:59");
INSERT INTO tbl_activity VALUES("11613","Added Another Committee Meeting","21","2014-09-29 14:26:31");
INSERT INTO tbl_activity VALUES("11614","Viewed Committee Meeting ID: 3","21","2014-09-29 14:26:31");
INSERT INTO tbl_activity VALUES("11615","Viewed Committee Meeting ID: 3","21","2014-09-29 14:26:42");
INSERT INTO tbl_activity VALUES("11616","Assigned Date of Committe Report of Committee Meeting ID: 3","21","2014-09-29 14:26:42");
INSERT INTO tbl_activity VALUES("11617","Viewed Committee Meeting ID: 3","21","2014-09-29 14:26:42");
INSERT INTO tbl_activity VALUES("11618","Viewed Committee Meeting List","21","2014-09-29 14:26:47");
INSERT INTO tbl_activity VALUES("11619","Viewed Committee Meeting List for Resolution","21","2014-09-29 14:26:57");
INSERT INTO tbl_activity VALUES("11620","Viewed List of Referral for Committee Meeting","21","2014-09-29 14:49:40");
INSERT INTO tbl_activity VALUES("11621","Added Another Committee Meeting","21","2014-09-29 14:50:26");
INSERT INTO tbl_activity VALUES("11622","Viewed Committee Meeting ID: 4","21","2014-09-29 14:50:26");
INSERT INTO tbl_activity VALUES("11623","Viewed Committee Meeting ID: 4","21","2014-09-29 14:50:41");
INSERT INTO tbl_activity VALUES("11624","Assigned Date of Committe Report of Committee Meeting ID: 4","21","2014-09-29 14:50:41");
INSERT INTO tbl_activity VALUES("11625","Viewed Committee Meeting ID: 4","21","2014-09-29 14:50:41");
INSERT INTO tbl_activity VALUES("11626","Viewed Committee Meeting List for Resolution","21","2014-09-29 14:50:46");
INSERT INTO tbl_activity VALUES("11627","Viewed List of Referral for Committee Meeting","21","2014-09-29 14:50:52");
INSERT INTO tbl_activity VALUES("11628","Added Another Committee Meeting","21","2014-09-29 14:51:32");
INSERT INTO tbl_activity VALUES("11629","Viewed Committee Meeting ID: 5","21","2014-09-29 14:51:32");
INSERT INTO tbl_activity VALUES("11630","Viewed Committee Meeting ID: 5","21","2014-09-29 14:51:51");
INSERT INTO tbl_activity VALUES("11631","Assigned Date of Committe Report of Committee Meeting ID: 5","21","2014-09-29 14:51:51");
INSERT INTO tbl_activity VALUES("11632","Viewed Committee Meeting ID: 5","21","2014-09-29 14:51:51");
INSERT INTO tbl_activity VALUES("11633","Viewed List of Referral for Committee Meeting","21","2014-09-29 14:51:54");
INSERT INTO tbl_activity VALUES("11634","Added Another Committee Meeting","21","2014-09-29 14:52:32");
INSERT INTO tbl_activity VALUES("11635","Viewed Committee Meeting ID: 6","21","2014-09-29 14:52:32");
INSERT INTO tbl_activity VALUES("11636","Viewed Committee Meeting ID: 6","21","2014-09-29 14:52:45");
INSERT INTO tbl_activity VALUES("11637","Assigned Date of Committe Report of Committee Meeting ID: 6","21","2014-09-29 14:52:45");
INSERT INTO tbl_activity VALUES("11638","Viewed Committee Meeting ID: 6","21","2014-09-29 14:52:46");
INSERT INTO tbl_activity VALUES("11639","Viewed List of Referral for Committee Meeting","21","2014-09-29 14:52:48");
INSERT INTO tbl_activity VALUES("11640","Added Another Committee Meeting","21","2014-09-29 14:53:05");
INSERT INTO tbl_activity VALUES("11641","Viewed Committee Meeting ID: 7","21","2014-09-29 14:53:05");
INSERT INTO tbl_activity VALUES("11642","Viewed Committee Meeting ID: 7","21","2014-09-29 14:53:22");
INSERT INTO tbl_activity VALUES("11643","Assigned Date of Committe Report of Committee Meeting ID: 7","21","2014-09-29 14:53:23");
INSERT INTO tbl_activity VALUES("11644","Viewed Committee Meeting ID: 7","21","2014-09-29 14:53:23");
INSERT INTO tbl_activity VALUES("11645","Viewed List of Referral for Committee Meeting","21","2014-09-29 14:53:26");
INSERT INTO tbl_activity VALUES("11646","Added Another Committee Meeting","21","2014-09-29 14:53:47");
INSERT INTO tbl_activity VALUES("11647","Viewed Committee Meeting ID: 8","21","2014-09-29 14:53:47");
INSERT INTO tbl_activity VALUES("11648","Viewed Committee Meeting ID: 8","21","2014-09-29 14:54:30");
INSERT INTO tbl_activity VALUES("11649","Assigned Date of Committe Report of Committee Meeting ID: 8","21","2014-09-29 14:54:30");
INSERT INTO tbl_activity VALUES("11650","Viewed Committee Meeting ID: 8","21","2014-09-29 14:54:30");
INSERT INTO tbl_activity VALUES("11651","Viewed List of Referral for Committee Meeting","21","2014-09-29 14:54:37");
INSERT INTO tbl_activity VALUES("11652","Added Another Committee Meeting","21","2014-09-29 14:55:13");
INSERT INTO tbl_activity VALUES("11653","Viewed Committee Meeting ID: 9","21","2014-09-29 14:55:13");
INSERT INTO tbl_activity VALUES("11654","Viewed Committee Meeting ID: 9","21","2014-09-29 14:55:30");
INSERT INTO tbl_activity VALUES("11655","Assigned Date of Committe Report of Committee Meeting ID: 9","21","2014-09-29 14:55:30");
INSERT INTO tbl_activity VALUES("11656","Viewed Committee Meeting ID: 9","21","2014-09-29 14:55:30");
INSERT INTO tbl_activity VALUES("11657","Viewed List of Referral for Committee Meeting","21","2014-09-29 14:55:33");
INSERT INTO tbl_activity VALUES("11658","Added Another Committee Meeting","21","2014-09-29 14:55:53");
INSERT INTO tbl_activity VALUES("11659","Viewed Committee Meeting ID: 10","21","2014-09-29 14:55:53");
INSERT INTO tbl_activity VALUES("11660","Viewed Committee Meeting ID: 10","21","2014-09-29 14:56:14");
INSERT INTO tbl_activity VALUES("11661","Assigned Date of Committe Report of Committee Meeting ID: 10","21","2014-09-29 14:56:14");
INSERT INTO tbl_activity VALUES("11662","Viewed Committee Meeting ID: 10","21","2014-09-29 14:56:14");
INSERT INTO tbl_activity VALUES("11663","Viewed List of Referral for Committee Meeting","21","2014-09-29 14:56:17");
INSERT INTO tbl_activity VALUES("11664","Viewed List of Communication","21","2014-09-29 14:57:37");
INSERT INTO tbl_activity VALUES("11665","Viewed Communication List","21","2014-09-29 14:57:44");
INSERT INTO tbl_activity VALUES("11666","Viewed Communication List","21","2014-09-29 14:57:47");
INSERT INTO tbl_activity VALUES("11667","Viewed Committee Meeting List for Resolution","21","2014-09-29 14:58:01");
INSERT INTO tbl_activity VALUES("11668","Viewed Communication List","21","2014-09-29 14:58:10");
INSERT INTO tbl_activity VALUES("11669","Viewed Communication List","21","2014-09-29 14:58:18");
INSERT INTO tbl_activity VALUES("11670","Added Another Committee Meeting","21","2014-09-29 14:58:27");
INSERT INTO tbl_activity VALUES("11671","Viewed Committee Meeting ID: 11","21","2014-09-29 14:58:27");
INSERT INTO tbl_activity VALUES("11672","Viewed Committee Meeting ID: 11","21","2014-09-29 14:58:51");
INSERT INTO tbl_activity VALUES("11673","Assigned Date of Committe Report of Committee Meeting ID: 11","21","2014-09-29 14:58:51");
INSERT INTO tbl_activity VALUES("11674","Viewed Committee Meeting ID: 11","21","2014-09-29 14:58:51");
INSERT INTO tbl_activity VALUES("11675","Viewed List of Referral for Committee Meeting","21","2014-09-29 14:58:54");
INSERT INTO tbl_activity VALUES("11676","Added Another Committee Meeting","21","2014-09-29 14:59:28");
INSERT INTO tbl_activity VALUES("11677","Viewed Committee Meeting ID: 12","21","2014-09-29 14:59:28");
INSERT INTO tbl_activity VALUES("11678","Viewed Committee Meeting ID: 12","21","2014-09-29 14:59:37");
INSERT INTO tbl_activity VALUES("11679","Assigned Date of Committe Report of Committee Meeting ID: 12","21","2014-09-29 14:59:37");
INSERT INTO tbl_activity VALUES("11680","Viewed Committee Meeting ID: 12","21","2014-09-29 14:59:37");
INSERT INTO tbl_activity VALUES("11681","Viewed List of Referral for Committee Meeting","21","2014-09-29 14:59:39");
INSERT INTO tbl_activity VALUES("11682","Viewed Committee Meeting List for Resolution","21","2014-09-29 14:59:42");
INSERT INTO tbl_activity VALUES("11683","Added Another Committee Meeting","21","2014-09-29 15:00:33");
INSERT INTO tbl_activity VALUES("11684","Viewed Committee Meeting ID: 13","21","2014-09-29 15:00:33");
INSERT INTO tbl_activity VALUES("11685","Viewed Committee Meeting ID: 13","21","2014-09-29 15:00:53");
INSERT INTO tbl_activity VALUES("11686","Viewed Committee Meeting ID: 13","21","2014-09-29 15:00:53");
INSERT INTO tbl_activity VALUES("11687","Viewed Committee Meeting ID: 13","21","2014-09-29 15:01:12");
INSERT INTO tbl_activity VALUES("11688","Viewed Committee Meeting ID: 13","21","2014-09-29 15:01:17");
INSERT INTO tbl_activity VALUES("11689","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:01:22");
INSERT INTO tbl_activity VALUES("11690","Added Another Committee Meeting","21","2014-09-29 15:03:06");
INSERT INTO tbl_activity VALUES("11691","Viewed Committee Meeting ID: 14","21","2014-09-29 15:03:06");
INSERT INTO tbl_activity VALUES("11692","Viewed Committee Meeting ID: 14","21","2014-09-29 15:03:16");
INSERT INTO tbl_activity VALUES("11693","Viewed Committee Meeting ID: 14","21","2014-09-29 15:03:16");
INSERT INTO tbl_activity VALUES("11694","Viewed Committee Meeting List for Resolution","21","2014-09-29 15:03:46");
INSERT INTO tbl_activity VALUES("11695","Viewed Committee Meeting List for Resolution","21","2014-09-29 15:03:50");
INSERT INTO tbl_activity VALUES("11696","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:04:18");
INSERT INTO tbl_activity VALUES("11697","Added Another Committee Meeting","21","2014-09-29 15:04:32");
INSERT INTO tbl_activity VALUES("11698","Viewed Committee Meeting ID: 15","21","2014-09-29 15:04:32");
INSERT INTO tbl_activity VALUES("11699","Viewed Committee Meeting ID: 15","21","2014-09-29 15:04:45");
INSERT INTO tbl_activity VALUES("11700","Viewed Committee Meeting ID: 15","21","2014-09-29 15:04:46");
INSERT INTO tbl_activity VALUES("11701","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:04:50");
INSERT INTO tbl_activity VALUES("11702","Viewed Committee Meeting List","21","2014-09-29 15:04:52");
INSERT INTO tbl_activity VALUES("11703","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:05:32");
INSERT INTO tbl_activity VALUES("11704","Added Another Committee Meeting","21","2014-09-29 15:05:43");
INSERT INTO tbl_activity VALUES("11705","Viewed Committee Meeting ID: 16","21","2014-09-29 15:05:43");
INSERT INTO tbl_activity VALUES("11706","Viewed Committee Meeting ID: 16","21","2014-09-29 15:05:53");
INSERT INTO tbl_activity VALUES("11707","Viewed Committee Meeting ID: 16","21","2014-09-29 15:05:53");
INSERT INTO tbl_activity VALUES("11708","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:05:58");
INSERT INTO tbl_activity VALUES("11709","Return to Homepage","22","2014-09-29 15:06:17");
INSERT INTO tbl_activity VALUES("11710","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:06:22");
INSERT INTO tbl_activity VALUES("11711","Added Another Committee Meeting","21","2014-09-29 15:06:38");
INSERT INTO tbl_activity VALUES("11712","Viewed Committee Meeting ID: 17","21","2014-09-29 15:06:38");
INSERT INTO tbl_activity VALUES("11713","Viewed Committee Meeting ID: 17","21","2014-09-29 15:06:47");
INSERT INTO tbl_activity VALUES("11714","Assigned Date of Committe Report of Committee Meeting ID: 17","21","2014-09-29 15:06:47");
INSERT INTO tbl_activity VALUES("11715","Viewed Committee Meeting ID: 17","21","2014-09-29 15:06:47");
INSERT INTO tbl_activity VALUES("11716","Viewed Committee Meeting List for Resolution","21","2014-09-29 15:06:54");
INSERT INTO tbl_activity VALUES("11717","Viewed Committee Meeting List for Resolution","21","2014-09-29 15:06:56");
INSERT INTO tbl_activity VALUES("11718","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:07:08");
INSERT INTO tbl_activity VALUES("11719","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:07:49");
INSERT INTO tbl_activity VALUES("11720","Viewed Committee Meeting List for Resolution","21","2014-09-29 15:08:03");
INSERT INTO tbl_activity VALUES("11721","Viewed Committee Meeting List for Resolution","21","2014-09-29 15:08:08");
INSERT INTO tbl_activity VALUES("11722","Viewed Committee Meeting List for Resolution","21","2014-09-29 15:08:09");
INSERT INTO tbl_activity VALUES("11723","Viewed List of Communication","21","2014-09-29 15:08:14");
INSERT INTO tbl_activity VALUES("11724","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:08:17");
INSERT INTO tbl_activity VALUES("11725","Added Another Committee Meeting","21","2014-09-29 15:09:26");
INSERT INTO tbl_activity VALUES("11726","Viewed Committee Meeting ID: 18","21","2014-09-29 15:09:27");
INSERT INTO tbl_activity VALUES("11727","Viewed Committee Meeting ID: 18","21","2014-09-29 15:09:41");
INSERT INTO tbl_activity VALUES("11728","Assigned Date of Committe Report of Committee Meeting ID: 18","21","2014-09-29 15:09:41");
INSERT INTO tbl_activity VALUES("11729","Viewed Committee Meeting ID: 18","21","2014-09-29 15:09:41");
INSERT INTO tbl_activity VALUES("11730","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:09:45");
INSERT INTO tbl_activity VALUES("11731","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:10:01");
INSERT INTO tbl_activity VALUES("11732","Viewed Committee Meeting List","21","2014-09-29 15:10:11");
INSERT INTO tbl_activity VALUES("11733","Viewed Committee Meeting List","21","2014-09-29 15:10:15");
INSERT INTO tbl_activity VALUES("11734","Viewed Committee Meeting List","21","2014-09-29 15:10:17");
INSERT INTO tbl_activity VALUES("11735","Viewed Committee Meeting List","21","2014-09-29 15:10:21");
INSERT INTO tbl_activity VALUES("11736","Viewed Committee Meeting List","21","2014-09-29 15:10:22");
INSERT INTO tbl_activity VALUES("11737","Viewed Committee Meeting List","21","2014-09-29 15:10:25");
INSERT INTO tbl_activity VALUES("11738","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:11:02");
INSERT INTO tbl_activity VALUES("11739","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:12:21");
INSERT INTO tbl_activity VALUES("11740","Added Another Committee Meeting","21","2014-09-29 15:12:52");
INSERT INTO tbl_activity VALUES("11741","Viewed Committee Meeting ID: 19","21","2014-09-29 15:12:52");
INSERT INTO tbl_activity VALUES("11742","Viewed Committee Meeting ID: 19","21","2014-09-29 15:13:10");
INSERT INTO tbl_activity VALUES("11743","Assigned Date of Committe Report of Committee Meeting ID: 19","21","2014-09-29 15:13:10");
INSERT INTO tbl_activity VALUES("11744","Viewed Committee Meeting ID: 19","21","2014-09-29 15:13:11");
INSERT INTO tbl_activity VALUES("11745","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:13:13");
INSERT INTO tbl_activity VALUES("11746","Added Another Committee Meeting","21","2014-09-29 15:14:27");
INSERT INTO tbl_activity VALUES("11747","Viewed Committee Meeting ID: 20","21","2014-09-29 15:14:27");
INSERT INTO tbl_activity VALUES("11748","Viewed Committee Meeting ID: 20","21","2014-09-29 15:14:47");
INSERT INTO tbl_activity VALUES("11749","Assigned Date of Committe Report of Committee Meeting ID: 20","21","2014-09-29 15:14:47");
INSERT INTO tbl_activity VALUES("11750","Viewed Committee Meeting ID: 20","21","2014-09-29 15:14:47");
INSERT INTO tbl_activity VALUES("11751","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:14:50");
INSERT INTO tbl_activity VALUES("11752","Added Another Committee Meeting","21","2014-09-29 15:15:50");
INSERT INTO tbl_activity VALUES("11753","Viewed Committee Meeting ID: 21","21","2014-09-29 15:15:50");
INSERT INTO tbl_activity VALUES("11754","Viewed Committee Meeting ID: 21","21","2014-09-29 15:15:59");
INSERT INTO tbl_activity VALUES("11755","Assigned Date of Committe Report of Committee Meeting ID: 21","21","2014-09-29 15:15:59");
INSERT INTO tbl_activity VALUES("11756","Viewed Committee Meeting ID: 21","21","2014-09-29 15:15:59");
INSERT INTO tbl_activity VALUES("11757","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:16:02");
INSERT INTO tbl_activity VALUES("11758","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:16:21");
INSERT INTO tbl_activity VALUES("11759","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:16:22");
INSERT INTO tbl_activity VALUES("11760","Added Another Committee Meeting","21","2014-09-29 15:17:14");
INSERT INTO tbl_activity VALUES("11761","Viewed Committee Meeting ID: 22","21","2014-09-29 15:17:14");
INSERT INTO tbl_activity VALUES("11762","Viewed Committee Meeting ID: 22","21","2014-09-29 15:17:23");
INSERT INTO tbl_activity VALUES("11763","Viewed Committee Meeting ID: 22","21","2014-09-29 15:17:23");
INSERT INTO tbl_activity VALUES("11764","Viewed Committee Meeting ID: 22","21","2014-09-29 15:19:03");
INSERT INTO tbl_activity VALUES("11765","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:19:09");
INSERT INTO tbl_activity VALUES("11766","Added Another Committee Meeting","21","2014-09-29 15:20:39");
INSERT INTO tbl_activity VALUES("11767","Viewed Committee Meeting ID: 23","21","2014-09-29 15:20:40");
INSERT INTO tbl_activity VALUES("11768","Viewed Committee Meeting ID: 23","21","2014-09-29 15:21:00");
INSERT INTO tbl_activity VALUES("11769","Assigned Date of Committe Report of Committee Meeting ID: 23","21","2014-09-29 15:21:00");
INSERT INTO tbl_activity VALUES("11770","Viewed Committee Meeting ID: 23","21","2014-09-29 15:21:01");
INSERT INTO tbl_activity VALUES("11771","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:21:04");
INSERT INTO tbl_activity VALUES("11772","Added Another Committee Meeting","21","2014-09-29 15:21:25");
INSERT INTO tbl_activity VALUES("11773","Viewed Committee Meeting ID: 24","21","2014-09-29 15:21:25");
INSERT INTO tbl_activity VALUES("11774","Viewed Committee Meeting ID: 24","21","2014-09-29 15:21:40");
INSERT INTO tbl_activity VALUES("11775","Assigned Date of Committe Report of Committee Meeting ID: 24","21","2014-09-29 15:21:40");
INSERT INTO tbl_activity VALUES("11776","Viewed Committee Meeting ID: 24","21","2014-09-29 15:21:41");
INSERT INTO tbl_activity VALUES("11777","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:21:44");
INSERT INTO tbl_activity VALUES("11778","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:22:04");
INSERT INTO tbl_activity VALUES("11779","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:22:15");
INSERT INTO tbl_activity VALUES("11780","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:28:48");
INSERT INTO tbl_activity VALUES("11781","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:28:50");
INSERT INTO tbl_activity VALUES("11782","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:32:05");
INSERT INTO tbl_activity VALUES("11783","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:32:05");
INSERT INTO tbl_activity VALUES("11784","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:32:09");
INSERT INTO tbl_activity VALUES("11785","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:32:10");
INSERT INTO tbl_activity VALUES("11786","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:32:13");
INSERT INTO tbl_activity VALUES("11787","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:32:15");
INSERT INTO tbl_activity VALUES("11788","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:32:17");
INSERT INTO tbl_activity VALUES("11789","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:32:21");
INSERT INTO tbl_activity VALUES("11790","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:32:23");
INSERT INTO tbl_activity VALUES("11791","Added Another Committee Meeting","21","2014-09-29 15:33:53");
INSERT INTO tbl_activity VALUES("11792","Viewed Committee Meeting ID: 25","21","2014-09-29 15:33:53");
INSERT INTO tbl_activity VALUES("11793","Viewed Committee Meeting ID: 25","21","2014-09-29 15:34:10");
INSERT INTO tbl_activity VALUES("11794","Assigned Date of Committe Report of Committee Meeting ID: 25","21","2014-09-29 15:34:10");
INSERT INTO tbl_activity VALUES("11795","Viewed Committee Meeting ID: 25","21","2014-09-29 15:34:10");
INSERT INTO tbl_activity VALUES("11796","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:34:12");
INSERT INTO tbl_activity VALUES("11797","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:34:24");
INSERT INTO tbl_activity VALUES("11798","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:34:25");
INSERT INTO tbl_activity VALUES("11799","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:34:27");
INSERT INTO tbl_activity VALUES("11800","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:34:30");
INSERT INTO tbl_activity VALUES("11801","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:34:33");
INSERT INTO tbl_activity VALUES("11802","Added Another Committee Meeting","21","2014-09-29 15:35:16");
INSERT INTO tbl_activity VALUES("11803","Viewed Committee Meeting ID: 26","21","2014-09-29 15:35:17");
INSERT INTO tbl_activity VALUES("11804","Viewed Committee Meeting ID: 26","21","2014-09-29 15:35:34");
INSERT INTO tbl_activity VALUES("11805","Assigned Date of Committe Report of Committee Meeting ID: 26","21","2014-09-29 15:35:34");
INSERT INTO tbl_activity VALUES("11806","Viewed Committee Meeting ID: 26","21","2014-09-29 15:35:35");
INSERT INTO tbl_activity VALUES("11807","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:35:37");
INSERT INTO tbl_activity VALUES("11808","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:35:43");
INSERT INTO tbl_activity VALUES("11809","Added Another Committee Meeting","21","2014-09-29 15:36:08");
INSERT INTO tbl_activity VALUES("11810","Viewed Committee Meeting ID: 27","21","2014-09-29 15:36:08");
INSERT INTO tbl_activity VALUES("11811","Viewed Committee Meeting ID: 27","21","2014-09-29 15:36:24");
INSERT INTO tbl_activity VALUES("11812","Assigned Date of Committe Report of Committee Meeting ID: 27","21","2014-09-29 15:36:24");
INSERT INTO tbl_activity VALUES("11813","Viewed Committee Meeting ID: 27","21","2014-09-29 15:36:24");
INSERT INTO tbl_activity VALUES("11814","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:36:26");
INSERT INTO tbl_activity VALUES("11815","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:36:30");
INSERT INTO tbl_activity VALUES("11816","Added Another Committee Meeting","21","2014-09-29 15:37:01");
INSERT INTO tbl_activity VALUES("11817","Viewed Committee Meeting ID: 28","21","2014-09-29 15:37:01");
INSERT INTO tbl_activity VALUES("11818","Viewed Committee Meeting ID: 28","21","2014-09-29 15:37:10");
INSERT INTO tbl_activity VALUES("11819","Assigned Date of Committe Report of Committee Meeting ID: 28","21","2014-09-29 15:37:10");
INSERT INTO tbl_activity VALUES("11820","Viewed Committee Meeting ID: 28","21","2014-09-29 15:37:10");
INSERT INTO tbl_activity VALUES("11821","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:37:12");
INSERT INTO tbl_activity VALUES("11822","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:37:21");
INSERT INTO tbl_activity VALUES("11823","Added Another Committee Meeting","21","2014-09-29 15:38:02");
INSERT INTO tbl_activity VALUES("11824","Viewed Committee Meeting ID: 29","21","2014-09-29 15:38:02");
INSERT INTO tbl_activity VALUES("11825","Viewed Committee Meeting ID: 29","21","2014-09-29 15:38:51");
INSERT INTO tbl_activity VALUES("11826","Assigned Date of Committe Report of Committee Meeting ID: 29","21","2014-09-29 15:38:51");
INSERT INTO tbl_activity VALUES("11827","Viewed Committee Meeting ID: 29","21","2014-09-29 15:38:51");
INSERT INTO tbl_activity VALUES("11828","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:38:54");
INSERT INTO tbl_activity VALUES("11829","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:38:58");
INSERT INTO tbl_activity VALUES("11830","Added Another Committee Meeting","21","2014-09-29 15:39:30");
INSERT INTO tbl_activity VALUES("11831","Viewed Committee Meeting ID: 30","21","2014-09-29 15:39:30");
INSERT INTO tbl_activity VALUES("11832","Viewed Committee Meeting ID: 30","21","2014-09-29 15:39:48");
INSERT INTO tbl_activity VALUES("11833","Viewed Committee Meeting ID: 30","21","2014-09-29 15:39:49");
INSERT INTO tbl_activity VALUES("11834","Viewed Committee Meeting ID: 30","21","2014-09-29 15:39:54");
INSERT INTO tbl_activity VALUES("11835","Viewed Committee Meeting List for Resolution","21","2014-09-29 15:40:29");
INSERT INTO tbl_activity VALUES("11836","Viewed Committee Meeting List for Resolution","21","2014-09-29 15:40:37");
INSERT INTO tbl_activity VALUES("11837","Viewed Committee Meeting List for Resolution","21","2014-09-29 15:40:43");
INSERT INTO tbl_activity VALUES("11838","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:41:30");
INSERT INTO tbl_activity VALUES("11839","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:41:33");
INSERT INTO tbl_activity VALUES("11840","Added Another Committee Meeting","21","2014-09-29 15:41:53");
INSERT INTO tbl_activity VALUES("11841","Viewed Committee Meeting ID: 31","21","2014-09-29 15:41:53");
INSERT INTO tbl_activity VALUES("11842","Viewed Committee Meeting ID: 31","21","2014-09-29 15:42:02");
INSERT INTO tbl_activity VALUES("11843","Assigned Date of Committe Report of Committee Meeting ID: 31","21","2014-09-29 15:42:02");
INSERT INTO tbl_activity VALUES("11844","Viewed Committee Meeting ID: 31","21","2014-09-29 15:42:02");
INSERT INTO tbl_activity VALUES("11845","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:42:05");
INSERT INTO tbl_activity VALUES("11846","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:42:15");
INSERT INTO tbl_activity VALUES("11847","Added Another Committee Meeting","21","2014-09-29 15:42:41");
INSERT INTO tbl_activity VALUES("11848","Viewed Committee Meeting ID: 32","21","2014-09-29 15:42:41");
INSERT INTO tbl_activity VALUES("11849","Viewed Committee Meeting ID: 32","21","2014-09-29 15:42:53");
INSERT INTO tbl_activity VALUES("11850","Assigned Date of Committe Report of Committee Meeting ID: 32","21","2014-09-29 15:42:53");
INSERT INTO tbl_activity VALUES("11851","Viewed Committee Meeting ID: 32","21","2014-09-29 15:42:53");
INSERT INTO tbl_activity VALUES("11852","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:42:57");
INSERT INTO tbl_activity VALUES("11853","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:43:02");
INSERT INTO tbl_activity VALUES("11854","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:45:48");
INSERT INTO tbl_activity VALUES("11855","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:45:52");
INSERT INTO tbl_activity VALUES("11856","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:45:55");
INSERT INTO tbl_activity VALUES("11857","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:45:59");
INSERT INTO tbl_activity VALUES("11858","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:46:03");
INSERT INTO tbl_activity VALUES("11859","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:46:07");
INSERT INTO tbl_activity VALUES("11860","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:46:17");
INSERT INTO tbl_activity VALUES("11861","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:46:22");
INSERT INTO tbl_activity VALUES("11862","Added Another Committee Meeting","21","2014-09-29 15:46:49");
INSERT INTO tbl_activity VALUES("11863","Viewed Committee Meeting ID: 33","21","2014-09-29 15:46:49");
INSERT INTO tbl_activity VALUES("11864","Viewed Committee Meeting ID: 33","21","2014-09-29 15:47:21");
INSERT INTO tbl_activity VALUES("11865","Assigned Date of Committe Report of Committee Meeting ID: 33","21","2014-09-29 15:47:21");
INSERT INTO tbl_activity VALUES("11866","Viewed Committee Meeting ID: 33","21","2014-09-29 15:47:21");
INSERT INTO tbl_activity VALUES("11867","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:47:24");
INSERT INTO tbl_activity VALUES("11868","Return to Homepage","21","2014-09-29 15:47:30");
INSERT INTO tbl_activity VALUES("11869","Viewed List of Referral for Committee Meeting","21","2014-09-29 15:47:52");
INSERT INTO tbl_activity VALUES("11870","Viewed Committee Meeting List for Resolution","21","2014-09-29 15:47:55");
INSERT INTO tbl_activity VALUES("11871","Viewed Committee Meeting List for Resolution","21","2014-09-29 15:48:01");
INSERT INTO tbl_activity VALUES("11872","Viewed Committee Meeting List for Resolution","21","2014-09-29 15:48:05");
INSERT INTO tbl_activity VALUES("11873","Viewed Committee Meeting List for Resolution","21","2014-09-29 15:50:24");
INSERT INTO tbl_activity VALUES("11874","Viewed Committee Meeting List for Resolution","21","2014-09-29 15:50:26");
INSERT INTO tbl_activity VALUES("11875","Viewed Committee Meeting List for Resolution","21","2014-09-29 15:50:27");
INSERT INTO tbl_activity VALUES("11876","Return to Homepage","22","2014-09-29 15:55:03");
INSERT INTO tbl_activity VALUES("11877","Logged Out","22","2014-09-29 15:55:06");
INSERT INTO tbl_activity VALUES("11878","Logged In","24","2014-09-29 15:55:14");
INSERT INTO tbl_activity VALUES("11879","Return to Homepage","24","2014-09-29 15:55:14");
INSERT INTO tbl_activity VALUES("11880","Logged Out","24","2014-09-29 15:55:18");
INSERT INTO tbl_activity VALUES("11881","Logged In","23","2014-09-29 15:55:25");
INSERT INTO tbl_activity VALUES("11882","Return to Homepage","23","2014-09-29 15:55:26");
INSERT INTO tbl_activity VALUES("11883","Viewed Committee Meeting List for Resolution","23","2014-09-29 15:55:30");
INSERT INTO tbl_activity VALUES("11884","Logged Out","23","2014-09-29 15:55:41");
INSERT INTO tbl_activity VALUES("11885","Viewed List of Referrals for Committe Meeting","21","2014-09-29 15:55:50");
INSERT INTO tbl_activity VALUES("11886","Added Another Committee Meeting","21","2014-09-29 15:56:49");
INSERT INTO tbl_activity VALUES("11887","View Committee Meeting ID: 1","21","2014-09-29 15:56:50");
INSERT INTO tbl_activity VALUES("11888","View Committee Meeting ID: 1","21","2014-09-29 15:57:30");
INSERT INTO tbl_activity VALUES("11889","Assigned Date of Committee Report of Committe Meeting ID: 1","21","2014-09-29 15:57:30");
INSERT INTO tbl_activity VALUES("11890","View Committee Meeting ID: 1","21","2014-09-29 15:57:30");
INSERT INTO tbl_activity VALUES("11891","Viewed List of Referrals for Committe Meeting","21","2014-09-29 15:57:33");
INSERT INTO tbl_activity VALUES("11892","Viewed List of Referral for Committee Meeting","21","2014-09-29 16:00:02");
INSERT INTO tbl_activity VALUES("11893","Viewed List of Referral for Committee Meeting","21","2014-09-29 16:00:04");
INSERT INTO tbl_activity VALUES("11894","Return to Homepage","21","2014-09-29 16:00:15");
INSERT INTO tbl_activity VALUES("11895","Viewed List of Referrals for Committe Meeting","21","2014-09-29 16:36:32");
INSERT INTO tbl_activity VALUES("11896","Logged In","21","2014-09-30 10:23:29");
INSERT INTO tbl_activity VALUES("11897","Return to Homepage","21","2014-09-30 10:23:29");
INSERT INTO tbl_activity VALUES("11898","Return to Homepage","21","2014-09-30 10:24:04");
INSERT INTO tbl_activity VALUES("11899","Return to Homepage","21","2014-09-30 10:24:08");
INSERT INTO tbl_activity VALUES("11900","Viewed List of Communication","21","2014-09-30 10:27:46");
INSERT INTO tbl_activity VALUES("11901","Logged Out","21","2014-09-30 10:27:47");
INSERT INTO tbl_activity VALUES("11902","Logged In","22","2014-09-30 10:28:02");
INSERT INTO tbl_activity VALUES("11903","Return to Homepage","22","2014-09-30 10:28:03");
INSERT INTO tbl_activity VALUES("11904","Logged Out","22","2014-09-30 10:31:33");
INSERT INTO tbl_activity VALUES("11905","Logged In","24","2014-09-30 10:32:30");
INSERT INTO tbl_activity VALUES("11906","Return to Homepage","24","2014-09-30 10:32:30");
INSERT INTO tbl_activity VALUES("11907","Logged Out","24","2014-09-30 10:33:58");
INSERT INTO tbl_activity VALUES("11908","Logged In","23","2014-09-30 10:34:11");
INSERT INTO tbl_activity VALUES("11909","Return to Homepage","23","2014-09-30 10:34:13");
INSERT INTO tbl_activity VALUES("11910","Return to Homepage","23","2014-09-30 10:52:16");
INSERT INTO tbl_activity VALUES("11911","Viewed Communication List","23","2014-09-30 10:52:45");
INSERT INTO tbl_activity VALUES("11912","Viewed Committee Meeting List","23","2014-09-30 10:53:00");
INSERT INTO tbl_activity VALUES("11913","Logged Out","23","2014-09-30 10:53:06");
INSERT INTO tbl_activity VALUES("11914","Logged In","21","2014-09-30 11:56:24");
INSERT INTO tbl_activity VALUES("11915","Return to Homepage","21","2014-09-30 11:56:24");
INSERT INTO tbl_activity VALUES("11916","Viewed List of Referrals for Committe Meeting","21","2014-09-30 11:58:52");
INSERT INTO tbl_activity VALUES("11917","Viewed List of Referral for Committee Meeting","21","2014-09-30 11:58:54");
INSERT INTO tbl_activity VALUES("11918","Return to Homepage","21","2014-09-30 12:04:45");
INSERT INTO tbl_activity VALUES("11919","Viewed List of Communication","21","2014-09-30 12:25:38");
INSERT INTO tbl_activity VALUES("11920","Viewed List of Communication","21","2014-09-30 12:25:42");
INSERT INTO tbl_activity VALUES("11921","Viewed List of Communication","21","2014-09-30 12:25:45");
INSERT INTO tbl_activity VALUES("11922","Viewed List of Communication","21","2014-09-30 12:25:47");
INSERT INTO tbl_activity VALUES("11923","Return to Homepage","21","2014-09-30 12:33:31");
INSERT INTO tbl_activity VALUES("11924","Viewed List of Communication","21","2014-09-30 12:54:45");
INSERT INTO tbl_activity VALUES("11925","Viewed Archived Communication List","21","2014-09-30 12:56:11");
INSERT INTO tbl_activity VALUES("11926","Viewed Communication List","21","2014-09-30 12:56:15");
INSERT INTO tbl_activity VALUES("11927","Viewed Communication List","21","2014-09-30 12:56:19");
INSERT INTO tbl_activity VALUES("11928","Viewed Communication List","21","2014-09-30 12:56:24");
INSERT INTO tbl_activity VALUES("11929","Viewed Communication List","21","2014-09-30 12:56:29");
INSERT INTO tbl_activity VALUES("11930","Viewed Communication List","21","2014-09-30 12:56:30");
INSERT INTO tbl_activity VALUES("11931","Viewed Communication List","21","2014-09-30 12:56:33");
INSERT INTO tbl_activity VALUES("11932","Viewed Communication List","21","2014-09-30 12:56:34");
INSERT INTO tbl_activity VALUES("11933","Viewed Communication List","21","2014-09-30 12:56:36");
INSERT INTO tbl_activity VALUES("11934","Viewed Communication List","21","2014-09-30 12:56:40");
INSERT INTO tbl_activity VALUES("11935","Return to Homepage","21","2014-09-30 12:56:48");
INSERT INTO tbl_activity VALUES("11936","Viewed List of Referrals for Committe Meeting","21","2014-09-30 13:08:54");
INSERT INTO tbl_activity VALUES("11937","Viewed List of Referral for Committee Meeting","21","2014-09-30 13:09:27");
INSERT INTO tbl_activity VALUES("11938","Return to Homepage","21","2014-09-30 13:09:32");
INSERT INTO tbl_activity VALUES("11939","Viewed List of Referral for Committee Meeting","21","2014-09-30 13:53:33");
INSERT INTO tbl_activity VALUES("11940","Return to Homepage","21","2014-09-30 13:56:15");
INSERT INTO tbl_activity VALUES("11941","Viewed Committee Meeting List for Resolution","21","2014-09-30 15:39:07");
INSERT INTO tbl_activity VALUES("11942","Viewed List of Referral for Committee Meeting","21","2014-09-30 15:39:15");
INSERT INTO tbl_activity VALUES("11943","Viewed Communication for Referral List","21","2014-09-30 15:40:39");
INSERT INTO tbl_activity VALUES("11944","Viewed Committee Meeting List for Resolution","21","2014-09-30 15:41:07");
INSERT INTO tbl_activity VALUES("11945","Added Another Resolution","21","2014-09-30 15:51:18");
INSERT INTO tbl_activity VALUES("11946","Viewed Resolution No. 036 - 2014","21","2014-09-30 15:51:20");
INSERT INTO tbl_activity VALUES("11947","Viewed Committee Meeting List for Resolution","21","2014-09-30 15:51:44");
INSERT INTO tbl_activity VALUES("11948","Added Another Resolution","21","2014-09-30 15:53:40");
INSERT INTO tbl_activity VALUES("11949","Viewed Resolution No. 052 - 2014","21","2014-09-30 15:53:40");
INSERT INTO tbl_activity VALUES("11950","Viewed Committee Meeting List for Resolution","21","2014-09-30 15:53:48");
INSERT INTO tbl_activity VALUES("11951","Added Another Resolution","21","2014-09-30 15:55:37");
INSERT INTO tbl_activity VALUES("11952","Viewed Resolution No. 049 - 2014","21","2014-09-30 15:55:37");
INSERT INTO tbl_activity VALUES("11953","Viewed Committee Meeting List for Resolution","21","2014-09-30 15:55:47");
INSERT INTO tbl_activity VALUES("11954","Added Another Resolution","21","2014-09-30 15:57:40");
INSERT INTO tbl_activity VALUES("11955","Viewed Resolution No. 053 - 2014","21","2014-09-30 15:57:40");
INSERT INTO tbl_activity VALUES("11956","Viewed Committee Meeting List for Ordinance","21","2014-09-30 15:57:43");
INSERT INTO tbl_activity VALUES("11957","Viewed Committee Meeting List for Resolution","21","2014-09-30 15:57:47");
INSERT INTO tbl_activity VALUES("11958","Added Another Resolution","21","2014-09-30 15:59:18");
INSERT INTO tbl_activity VALUES("11959","Viewed Resolution No. 050 - 2014","21","2014-09-30 15:59:18");
INSERT INTO tbl_activity VALUES("11960","Viewed Committee Meeting List for Resolution","21","2014-09-30 15:59:21");
INSERT INTO tbl_activity VALUES("11961","Added Another Resolution","21","2014-09-30 16:00:24");
INSERT INTO tbl_activity VALUES("11962","Viewed Resolution No. 051 - 2014","21","2014-09-30 16:00:24");
INSERT INTO tbl_activity VALUES("11963","Viewed Committee Meeting List for Resolution","21","2014-09-30 16:00:26");
INSERT INTO tbl_activity VALUES("11964","Added Another Resolution","21","2014-09-30 16:01:34");
INSERT INTO tbl_activity VALUES("11965","Viewed Resolution No. 067 - 2014","21","2014-09-30 16:01:34");
INSERT INTO tbl_activity VALUES("11966","Viewed Committee Meeting List for Resolution","21","2014-09-30 16:01:36");
INSERT INTO tbl_activity VALUES("11967","Added Another Resolution","21","2014-09-30 16:02:44");
INSERT INTO tbl_activity VALUES("11968","Viewed Resolution No. 069 - 2014","21","2014-09-30 16:02:45");
INSERT INTO tbl_activity VALUES("11969","Viewed Committee Meeting List for Resolution","21","2014-09-30 16:02:46");
INSERT INTO tbl_activity VALUES("11970","Added Another Resolution","21","2014-09-30 16:04:27");
INSERT INTO tbl_activity VALUES("11971","Viewed Resolution No. 193 - 2014","21","2014-09-30 16:04:27");
INSERT INTO tbl_activity VALUES("11972","Viewed Committee Meeting List for Resolution","21","2014-09-30 16:04:30");
INSERT INTO tbl_activity VALUES("11973","Viewed Committee Meeting List for Resolution","21","2014-09-30 16:05:51");
INSERT INTO tbl_activity VALUES("11974","Viewed Resolution List","21","2014-09-30 16:06:29");
INSERT INTO tbl_activity VALUES("11975","Viewed Resolution List","21","2014-09-30 16:06:32");
INSERT INTO tbl_activity VALUES("11976","Viewed Committee Meeting List for Resolution","21","2014-09-30 16:06:39");
INSERT INTO tbl_activity VALUES("11977","Added Another Resolution","21","2014-09-30 16:07:56");
INSERT INTO tbl_activity VALUES("11978","Viewed Resolution No. 140 - 2014","21","2014-09-30 16:07:56");
INSERT INTO tbl_activity VALUES("11979","Viewed Committee Meeting List for Resolution","21","2014-09-30 16:07:58");
INSERT INTO tbl_activity VALUES("11980","Added Another Resolution","21","2014-09-30 16:09:01");
INSERT INTO tbl_activity VALUES("11981","Viewed Resolution No. 041 - 2014","21","2014-09-30 16:09:01");
INSERT INTO tbl_activity VALUES("11982","Viewed Committee Meeting List for Resolution","21","2014-09-30 16:09:03");
INSERT INTO tbl_activity VALUES("11983","Added Another Resolution","21","2014-09-30 16:09:54");
INSERT INTO tbl_activity VALUES("11984","Viewed Resolution No. 042 - 2014","21","2014-09-30 16:09:54");
INSERT INTO tbl_activity VALUES("11985","Viewed Committee Meeting List for Resolution","21","2014-09-30 16:09:56");
INSERT INTO tbl_activity VALUES("11986","Added Another Resolution","21","2014-09-30 16:10:50");
INSERT INTO tbl_activity VALUES("11987","Viewed Resolution No. 167 - 2014","21","2014-09-30 16:10:50");
INSERT INTO tbl_activity VALUES("11988","Viewed Committee Meeting List for Resolution","21","2014-09-30 16:10:54");
INSERT INTO tbl_activity VALUES("11989","Added Another Resolution","21","2014-09-30 16:11:46");
INSERT INTO tbl_activity VALUES("11990","Viewed Resolution No. 190 - 2014","21","2014-09-30 16:11:46");
INSERT INTO tbl_activity VALUES("11991","Viewed Committee Meeting List for Resolution","21","2014-09-30 16:11:48");
INSERT INTO tbl_activity VALUES("11992","Added Another Resolution","21","2014-09-30 16:13:00");
INSERT INTO tbl_activity VALUES("11993","Viewed Resolution No. 035 - 2014","21","2014-09-30 16:13:00");
INSERT INTO tbl_activity VALUES("11994","Viewed Committee Meeting List for Resolution","21","2014-09-30 16:13:02");
INSERT INTO tbl_activity VALUES("11995","Added Another Resolution","21","2014-09-30 16:14:38");
INSERT INTO tbl_activity VALUES("11996","Viewed Resolution No. 047 - 2014","21","2014-09-30 16:14:38");
INSERT INTO tbl_activity VALUES("11997","Viewed Committee Meeting List for Resolution","21","2014-09-30 16:14:41");
INSERT INTO tbl_activity VALUES("11998","Added Another Resolution","21","2014-09-30 16:15:43");
INSERT INTO tbl_activity VALUES("11999","Viewed Resolution No. 048 - 2014","21","2014-09-30 16:15:43");
INSERT INTO tbl_activity VALUES("12000","Viewed Committee Meeting List for Resolution","21","2014-09-30 16:15:45");
INSERT INTO tbl_activity VALUES("12001","Added Another Resolution","21","2014-09-30 16:17:20");
INSERT INTO tbl_activity VALUES("12002","Viewed Resolution No. 114 - 2014","21","2014-09-30 16:17:20");
INSERT INTO tbl_activity VALUES("12003","Viewed Committee Meeting List for Resolution","21","2014-09-30 16:17:22");
INSERT INTO tbl_activity VALUES("12004","Added Another Resolution","21","2014-09-30 16:19:13");
INSERT INTO tbl_activity VALUES("12005","Viewed Resolution No. 181 - 2014","21","2014-09-30 16:19:13");
INSERT INTO tbl_activity VALUES("12006","Viewed Committee Meeting List for Resolution","21","2014-09-30 16:19:15");
INSERT INTO tbl_activity VALUES("12007","Viewed List of Referral for Committee Meeting","21","2014-09-30 16:19:22");
INSERT INTO tbl_activity VALUES("12008","Viewed Committee Meeting List for Resolution","21","2014-09-30 16:19:24");
INSERT INTO tbl_activity VALUES("12009","Viewed Committee Meeting List for Resolution","21","2014-09-30 16:19:27");
INSERT INTO tbl_activity VALUES("12010","Viewed Resolution List","21","2014-09-30 16:19:34");
INSERT INTO tbl_activity VALUES("12011","Viewed Resolution List","21","2014-09-30 16:19:37");
INSERT INTO tbl_activity VALUES("12012","Viewed Resolution No. 002 - 2014","21","2014-09-30 16:21:42");
INSERT INTO tbl_activity VALUES("12013","Viewed Committee Meeting List for Resolution","21","2014-09-30 16:21:54");
INSERT INTO tbl_activity VALUES("12014","Viewed List of Referral for Committee Meeting","21","2014-09-30 16:22:21");
INSERT INTO tbl_activity VALUES("12015","Viewed List of Referral for Committee Meeting","21","2014-09-30 16:22:28");
INSERT INTO tbl_activity VALUES("12016","Viewed Communication for Referral List","21","2014-09-30 16:22:30");
INSERT INTO tbl_activity VALUES("12017","Viewed List of Communication","21","2014-09-30 16:22:32");
INSERT INTO tbl_activity VALUES("12018","Viewed List of Referral for Committee Meeting","21","2014-09-30 16:22:37");
INSERT INTO tbl_activity VALUES("12019","Viewed List of Communication","21","2014-09-30 16:22:39");
INSERT INTO tbl_activity VALUES("12020","Viewed List of Referral for Committee Meeting","21","2014-09-30 16:22:44");
INSERT INTO tbl_activity VALUES("12021","Viewed List of Referral for Committee Meeting","21","2014-09-30 16:23:49");
INSERT INTO tbl_activity VALUES("12022","Viewed List of Referral for Committee Meeting","21","2014-09-30 16:23:50");
INSERT INTO tbl_activity VALUES("12023","Viewed Committee Meeting List for Resolution","21","2014-09-30 16:28:52");
INSERT INTO tbl_activity VALUES("12024","Viewed List of Referrals for Committe Meeting","21","2014-09-30 16:28:55");
INSERT INTO tbl_activity VALUES("12025","Viewed List of Referral for Committee Meeting","21","2014-09-30 16:28:57");
INSERT INTO tbl_activity VALUES("12026","Viewed Communication for Referral List","21","2014-09-30 16:28:59");
INSERT INTO tbl_activity VALUES("12027","Viewed List of Communication","21","2014-09-30 16:29:01");
INSERT INTO tbl_activity VALUES("12028","Viewed List of Referral for Committee Meeting","21","2014-09-30 16:29:06");
INSERT INTO tbl_activity VALUES("12029","Viewed Committee Meeting List for Resolution","21","2014-09-30 16:29:08");
INSERT INTO tbl_activity VALUES("12030","Viewed List of Communication","21","2014-09-30 16:30:35");
INSERT INTO tbl_activity VALUES("12031","Viewed Communication for Referral List","21","2014-09-30 16:30:39");
INSERT INTO tbl_activity VALUES("12032","Viewed List of Communication","21","2014-09-30 16:30:41");
INSERT INTO tbl_activity VALUES("12033","Viewed Communication for Referral List","21","2014-09-30 16:32:30");
INSERT INTO tbl_activity VALUES("12034","Viewed List of Referrals for Committe Meeting","21","2014-09-30 16:32:33");
INSERT INTO tbl_activity VALUES("12035","Viewed List of Referral for Committee Meeting","21","2014-09-30 16:32:35");
INSERT INTO tbl_activity VALUES("12036","Viewed List of Referrals for Committe Meeting","21","2014-09-30 16:32:37");
INSERT INTO tbl_activity VALUES("12037","Viewed List of Referral for Committee Meeting","21","2014-09-30 16:36:58");
INSERT INTO tbl_activity VALUES("12038","Viewed Committee Meeting List for Resolution","21","2014-09-30 16:37:00");
INSERT INTO tbl_activity VALUES("12039","Viewed Committee Meeting List for Ordinance","21","2014-09-30 16:37:01");
INSERT INTO tbl_activity VALUES("12040","Viewed List of Communication","21","2014-09-30 16:37:04");
INSERT INTO tbl_activity VALUES("12041","Return to Homepage","21","2014-09-30 16:37:05");
INSERT INTO tbl_activity VALUES("12042","Logged In","21","2014-10-01 08:42:01");
INSERT INTO tbl_activity VALUES("12043","Return to Homepage","21","2014-10-01 08:42:01");
INSERT INTO tbl_activity VALUES("12044","Viewed Committee Meeting List for Resolution","21","2014-10-01 08:42:05");
INSERT INTO tbl_activity VALUES("12045","Viewed List of Referral for Committee Meeting","21","2014-10-01 08:45:19");
INSERT INTO tbl_activity VALUES("12046","Viewed Committee Meeting List for Resolution","21","2014-10-01 08:45:23");
INSERT INTO tbl_activity VALUES("12047","Viewed List of Communication","21","2014-10-01 08:45:30");
INSERT INTO tbl_activity VALUES("12048","Viewed Communication for Referral List","21","2014-10-01 08:45:34");
INSERT INTO tbl_activity VALUES("12049","Viewed List of Referrals for Committe Meeting","21","2014-10-01 08:45:36");
INSERT INTO tbl_activity VALUES("12050","Viewed List of Communication","21","2014-10-01 08:45:38");
INSERT INTO tbl_activity VALUES("12051","Return to Homepage","21","2014-10-01 08:45:39");
INSERT INTO tbl_activity VALUES("12052","Viewed List of Referrals for Committe Meeting","21","2014-10-01 08:45:54");
INSERT INTO tbl_activity VALUES("12053","Viewed List of Referral for Committee Meeting","21","2014-10-01 08:45:55");
INSERT INTO tbl_activity VALUES("12054","Viewed Communication for Referral List","21","2014-10-01 08:45:59");
INSERT INTO tbl_activity VALUES("12055","Viewed List of Referral for Committee Meeting","21","2014-10-01 08:46:01");
INSERT INTO tbl_activity VALUES("12056","Viewed Communication for Referral List","21","2014-10-01 08:46:04");
INSERT INTO tbl_activity VALUES("12057","Viewed List of Communication","21","2014-10-01 08:46:05");
INSERT INTO tbl_activity VALUES("12058","Viewed Communication for Referral List","21","2014-10-01 08:46:07");
INSERT INTO tbl_activity VALUES("12059","Viewed List of Referral for Committee Meeting","21","2014-10-01 08:46:11");
INSERT INTO tbl_activity VALUES("12060","Viewed List of Referral for Committee Meeting","21","2014-10-01 08:46:15");
INSERT INTO tbl_activity VALUES("12061","Viewed List of Referral for Committee Meeting","21","2014-10-01 08:46:21");
INSERT INTO tbl_activity VALUES("12062","Viewed List of Referral for Committee Meeting","21","2014-10-01 08:46:26");
INSERT INTO tbl_activity VALUES("12063","Viewed List of Referral for Committee Meeting","21","2014-10-01 08:46:31");
INSERT INTO tbl_activity VALUES("12064","Viewed List of Referral for Committee Meeting","21","2014-10-01 08:46:37");
INSERT INTO tbl_activity VALUES("12065","Viewed List of Referral for Committee Meeting","21","2014-10-01 08:46:42");
INSERT INTO tbl_activity VALUES("12066","Viewed List of Referral for Committee Meeting","21","2014-10-01 08:46:49");
INSERT INTO tbl_activity VALUES("12067","Viewed List of Communication","21","2014-10-01 08:47:54");
INSERT INTO tbl_activity VALUES("12068","Viewed Committee Meeting List for Resolution","21","2014-10-01 08:47:59");
INSERT INTO tbl_activity VALUES("12069","Viewed List of Communication","21","2014-10-01 08:48:06");
INSERT INTO tbl_activity VALUES("12070","Viewed List of Communication","21","2014-10-01 08:49:07");
INSERT INTO tbl_activity VALUES("12071","Viewed List of Communication","21","2014-10-01 08:49:12");
INSERT INTO tbl_activity VALUES("12072","Viewed List of Communication","21","2014-10-01 08:49:17");
INSERT INTO tbl_activity VALUES("12073","Viewed Communication List","21","2014-10-01 08:49:43");
INSERT INTO tbl_activity VALUES("12074","Viewed Communication for Referral List","21","2014-10-01 08:49:49");
INSERT INTO tbl_activity VALUES("12075","Viewed Referral List","21","2014-10-01 08:49:50");
INSERT INTO tbl_activity VALUES("12076","Viewed Communication for Referral List","21","2014-10-01 08:49:55");
INSERT INTO tbl_activity VALUES("12077","Viewed List of Referral for Committee Meeting","21","2014-10-01 08:49:58");
INSERT INTO tbl_activity VALUES("12078","Viewed List of Referral for Committee Meeting","21","2014-10-01 08:50:01");
INSERT INTO tbl_activity VALUES("12079","Viewed List of Referral for Committee Meeting","21","2014-10-01 08:50:03");
INSERT INTO tbl_activity VALUES("12080","Viewed List of Referrals for Committe Meeting","21","2014-10-01 08:50:04");
INSERT INTO tbl_activity VALUES("12081","Viewed Committee Meeting List for Resolution","21","2014-10-01 08:50:09");
INSERT INTO tbl_activity VALUES("12082","Viewed Communication for Referral List","21","2014-10-01 08:50:23");
INSERT INTO tbl_activity VALUES("12083","Viewed Referral List","21","2014-10-01 08:50:25");
INSERT INTO tbl_activity VALUES("12084","Viewed List of Referral for Committee Meeting","21","2014-10-01 08:50:31");
INSERT INTO tbl_activity VALUES("12085","Viewed List of Communication","21","2014-10-01 08:50:33");
INSERT INTO tbl_activity VALUES("12086","Viewed Committee Meeting List for Resolution","21","2014-10-01 08:50:39");
INSERT INTO tbl_activity VALUES("12087","Viewed List of Referrals for Committe Meeting","21","2014-10-01 08:50:46");
INSERT INTO tbl_activity VALUES("12088","Viewed List of Referral for Committee Meeting","21","2014-10-01 08:50:48");
INSERT INTO tbl_activity VALUES("12089","Viewed Communication for Referral List","21","2014-10-01 08:50:50");
INSERT INTO tbl_activity VALUES("12090","Viewed List of Communication","21","2014-10-01 08:50:52");
INSERT INTO tbl_activity VALUES("12091","Viewed Communication for Referral List","21","2014-10-01 08:50:54");
INSERT INTO tbl_activity VALUES("12092","Viewed Referral List","21","2014-10-01 08:50:55");
INSERT INTO tbl_activity VALUES("12093","Viewed Referral List","21","2014-10-01 08:50:57");
INSERT INTO tbl_activity VALUES("12094","Viewed List of Referral for Committee Meeting","21","2014-10-01 08:51:09");
INSERT INTO tbl_activity VALUES("12095","Viewed List of Referral for Committee Meeting","21","2014-10-01 08:51:12");
INSERT INTO tbl_activity VALUES("12096","Viewed List of Referral for Committee Meeting","21","2014-10-01 08:51:20");
INSERT INTO tbl_activity VALUES("12097","Viewed List of Communication","21","2014-10-01 08:51:22");
INSERT INTO tbl_activity VALUES("12098","Viewed Communication for Referral List","21","2014-10-01 08:53:54");
INSERT INTO tbl_activity VALUES("12099","Viewed List of Referral for Committee Meeting","21","2014-10-01 08:53:57");
INSERT INTO tbl_activity VALUES("12100","Viewed Communication for Referral List","21","2014-10-01 08:55:08");
INSERT INTO tbl_activity VALUES("12101","Viewed List of Communication","21","2014-10-01 08:55:10");
INSERT INTO tbl_activity VALUES("12102","Viewed List of Referral for Committee Meeting","21","2014-10-01 08:55:20");
INSERT INTO tbl_activity VALUES("12103","Return to Homepage","21","2014-10-01 09:01:26");
INSERT INTO tbl_activity VALUES("12104","Viewed List of Communication","21","2014-10-01 09:01:30");
INSERT INTO tbl_activity VALUES("12105","Return to Homepage","21","2014-10-01 09:01:31");
INSERT INTO tbl_activity VALUES("12106","Viewed List of Communication","21","2014-10-01 09:06:04");
INSERT INTO tbl_activity VALUES("12107","Return to Homepage","21","2014-10-01 09:06:05");
INSERT INTO tbl_activity VALUES("12108","Viewed Communication for Referral List","21","2014-10-01 09:13:33");
INSERT INTO tbl_activity VALUES("12109","Viewed List of Referral for Committee Meeting","21","2014-10-01 09:13:35");
INSERT INTO tbl_activity VALUES("12110","Viewed List of Referrals for Committe Meeting","21","2014-10-01 09:13:37");
INSERT INTO tbl_activity VALUES("12111","Viewed List of Referral for Committee Meeting","21","2014-10-01 09:42:45");
INSERT INTO tbl_activity VALUES("12112","Viewed List of Referral for Committee Meeting","21","2014-10-01 09:43:37");
INSERT INTO tbl_activity VALUES("12113","Viewed List of Referrals for Committe Meeting","21","2014-10-01 09:43:39");
INSERT INTO tbl_activity VALUES("12114","Viewed Committee Meeting List for Resolution","21","2014-10-01 09:43:41");
INSERT INTO tbl_activity VALUES("12115","Viewed Communication for Referral List","21","2014-10-01 09:43:42");
INSERT INTO tbl_activity VALUES("12116","Viewed List of Communication","21","2014-10-01 09:43:43");
INSERT INTO tbl_activity VALUES("12117","Return to Homepage","21","2014-10-01 09:52:10");
INSERT INTO tbl_activity VALUES("12118","Viewed Communication for Referral List","21","2014-10-01 10:03:56");
INSERT INTO tbl_activity VALUES("12119","Viewed List of Communication","21","2014-10-01 10:04:04");
INSERT INTO tbl_activity VALUES("12120","Return to Homepage","21","2014-10-01 10:05:22");
INSERT INTO tbl_activity VALUES("12121","Viewed List of Communication","21","2014-10-01 10:05:34");
INSERT INTO tbl_activity VALUES("12122","Viewed Committee Meeting List for Resolution","21","2014-10-01 10:05:39");
INSERT INTO tbl_activity VALUES("12123","Viewed List of Referral for Committee Meeting","21","2014-10-01 10:05:48");
INSERT INTO tbl_activity VALUES("12124","Viewed List of Referral for Committee Meeting","21","2014-10-01 10:05:52");
INSERT INTO tbl_activity VALUES("12125","Viewed List of Referral for Committee Meeting","21","2014-10-01 10:05:54");
INSERT INTO tbl_activity VALUES("12126","Viewed Communication for Referral List","21","2014-10-01 10:05:57");
INSERT INTO tbl_activity VALUES("12127","Viewed List of Communication","21","2014-10-01 10:05:58");
INSERT INTO tbl_activity VALUES("12128","Return to Homepage","21","2014-10-01 10:06:00");
INSERT INTO tbl_activity VALUES("12129","Viewed List of Referral for Committee Meeting","21","2014-10-01 10:08:45");
INSERT INTO tbl_activity VALUES("12130","Viewed List of Referral for Committee Meeting","21","2014-10-01 10:13:18");
INSERT INTO tbl_activity VALUES("12131","Viewed List of Referral for Committee Meeting","21","2014-10-01 10:13:24");
INSERT INTO tbl_activity VALUES("12132","Viewed List of Referral for Committee Meeting","21","2014-10-01 10:13:28");
INSERT INTO tbl_activity VALUES("12133","Viewed List of Communication","21","2014-10-01 10:14:00");
INSERT INTO tbl_activity VALUES("12134","Viewed Communication for Referral List","21","2014-10-01 10:21:52");
INSERT INTO tbl_activity VALUES("12135","Viewed List of Referrals for Committe Meeting","21","2014-10-01 10:21:55");
INSERT INTO tbl_activity VALUES("12136","Viewed List of Referral for Committee Meeting","21","2014-10-01 10:21:57");
INSERT INTO tbl_activity VALUES("12137","Logged Out","21","2014-10-01 10:22:00");
INSERT INTO tbl_activity VALUES("12138","Logged In","11","2014-10-01 10:22:45");
INSERT INTO tbl_activity VALUES("12139","Return to Homepage","11","2014-10-01 10:22:45");
INSERT INTO tbl_activity VALUES("12140","Viewed Resolution List","11","2014-10-01 10:22:56");
INSERT INTO tbl_activity VALUES("12141","Logged Out","11","2014-10-01 10:23:02");
INSERT INTO tbl_activity VALUES("12142","Logged In","21","2014-10-01 10:25:50");
INSERT INTO tbl_activity VALUES("12143","Viewed List of Communication","21","2014-10-01 10:25:50");
INSERT INTO tbl_activity VALUES("12144","Return to Homepage","21","2014-10-01 10:47:42");
INSERT INTO tbl_activity VALUES("12145","Viewed Committee Meeting List for Resolution","21","2014-10-01 10:49:36");
INSERT INTO tbl_activity VALUES("12146","Viewed List of Communication","21","2014-10-01 10:53:13");
INSERT INTO tbl_activity VALUES("12147","Viewed Communication for Referral List","21","2014-10-01 10:53:15");
INSERT INTO tbl_activity VALUES("12148","Viewed List of Communication","21","2014-10-01 10:53:17");
INSERT INTO tbl_activity VALUES("12149","Viewed Communication for Referral List","21","2014-10-01 10:55:28");
INSERT INTO tbl_activity VALUES("12150","Viewed List of Referrals for Committe Meeting","21","2014-10-01 10:55:31");
INSERT INTO tbl_activity VALUES("12151","Viewed Communication for Referral List","21","2014-10-01 10:55:34");
INSERT INTO tbl_activity VALUES("12152","Viewed List of Referrals for Committe Meeting","21","2014-10-01 10:58:47");
INSERT INTO tbl_activity VALUES("12153","Return to Homepage","21","2014-10-01 11:01:36");
INSERT INTO tbl_activity VALUES("12154","Viewed Committee Meeting List for Resolution","21","2014-10-01 11:07:58");
INSERT INTO tbl_activity VALUES("12155","Viewed List of Referrals for Committe Meeting","21","2014-10-01 11:08:26");
INSERT INTO tbl_activity VALUES("12156","Viewed List of Referral for Committee Meeting","21","2014-10-01 11:08:27");
INSERT INTO tbl_activity VALUES("12157","Viewed Committee Meeting List for Resolution","21","2014-10-01 11:08:29");
INSERT INTO tbl_activity VALUES("12158","Viewed Committee Meeting List for Ordinance","21","2014-10-01 11:08:31");
INSERT INTO tbl_activity VALUES("12159","Viewed List of Referral for Committee Meeting","21","2014-10-01 11:08:42");
INSERT INTO tbl_activity VALUES("12160","Viewed Committee Meeting List for Resolution","21","2014-10-01 11:08:47");
INSERT INTO tbl_activity VALUES("12161","Viewed Committee Meeting List for Resolution","21","2014-10-01 11:08:51");
INSERT INTO tbl_activity VALUES("12162","Viewed Committee Meeting List for Ordinance","21","2014-10-01 11:08:57");
INSERT INTO tbl_activity VALUES("12163","Viewed Committee Meeting List for Resolution","21","2014-10-01 11:08:59");
INSERT INTO tbl_activity VALUES("12164","Viewed Resolution List","21","2014-10-01 11:09:01");
INSERT INTO tbl_activity VALUES("12165","Viewed Resolution List","21","2014-10-01 11:09:03");
INSERT INTO tbl_activity VALUES("12166","Viewed Resolution List","21","2014-10-01 11:09:07");
INSERT INTO tbl_activity VALUES("12167","Viewed Resolution No. 145 - 2014","21","2014-10-01 11:09:13");
INSERT INTO tbl_activity VALUES("12168","Return to Homepage","21","2014-10-01 11:09:19");
INSERT INTO tbl_activity VALUES("12169","Viewed Committee Meeting List for Resolution","21","2014-10-01 12:24:31");
INSERT INTO tbl_activity VALUES("12170","Viewed List of Communication","21","2014-10-01 12:27:01");
INSERT INTO tbl_activity VALUES("12171","Viewed Communication for Referral List","21","2014-10-01 12:31:26");
INSERT INTO tbl_activity VALUES("12172","Logged In","21","2014-10-01 15:35:55");
INSERT INTO tbl_activity VALUES("12173","Return to Homepage","21","2014-10-01 15:35:56");
INSERT INTO tbl_activity VALUES("12174","Viewed List of Referral for Committee Meeting","21","2014-10-01 15:37:03");
INSERT INTO tbl_activity VALUES("12175","Viewed List of Referral for Committee Meeting","21","2014-10-01 15:37:07");
INSERT INTO tbl_activity VALUES("12176","Viewed List of Referral for Committee Meeting","21","2014-10-01 15:37:12");
INSERT INTO tbl_activity VALUES("12177","Viewed Communication for Referral List","21","2014-10-01 15:58:10");
INSERT INTO tbl_activity VALUES("12178","Viewed List of Communication","21","2014-10-01 15:58:13");
INSERT INTO tbl_activity VALUES("12179","Viewed List of Referral for Committee Meeting","21","2014-10-01 16:01:28");
INSERT INTO tbl_activity VALUES("12180","Logged In","21","2014-10-01 16:21:27");
INSERT INTO tbl_activity VALUES("12181","Return to Homepage","21","2014-10-01 16:21:27");
INSERT INTO tbl_activity VALUES("12182","Viewed Backed-up System List","21","2014-10-01 16:21:34");
INSERT INTO tbl_activity VALUES("12183","Viewed Backed-up System List","21","2014-10-01 16:21:50");
INSERT INTO tbl_activity VALUES("12184","Viewed Backed-up System List","21","2014-10-01 16:22:25");
INSERT INTO tbl_activity VALUES("12185","Logged In","21","2014-10-02 08:43:46");
INSERT INTO tbl_activity VALUES("12186","Return to Homepage","21","2014-10-02 08:43:46");
INSERT INTO tbl_activity VALUES("12187","Return to Homepage","21","2014-10-02 08:45:20");
INSERT INTO tbl_activity VALUES("12188","Return to Homepage","21","2014-10-02 08:48:01");
INSERT INTO tbl_activity VALUES("12189","Return to Homepage","21","2014-10-02 08:48:03");
INSERT INTO tbl_activity VALUES("12190","Viewed List of Referral for Committee Meeting","21","2014-10-02 08:48:39");
INSERT INTO tbl_activity VALUES("12191","Viewed List of Referral for Committee Meeting","21","2014-10-02 08:53:31");
INSERT INTO tbl_activity VALUES("12192","Viewed List of Referral for Committee Meeting","21","2014-10-02 08:55:53");
INSERT INTO tbl_activity VALUES("12193","Viewed List of Referral for Committee Meeting","21","2014-10-02 08:55:53");
INSERT INTO tbl_activity VALUES("12194","Added Another Committee Meeting","21","2014-10-02 08:56:41");
INSERT INTO tbl_activity VALUES("12195","Viewed Committee Meeting ID: 34","21","2014-10-02 08:56:41");
INSERT INTO tbl_activity VALUES("12196","Viewed Committee Meeting ID: 34","21","2014-10-02 08:58:02");
INSERT INTO tbl_activity VALUES("12197","Assigned Date of Committe Report of Committee Meeting ID: 34","21","2014-10-02 08:58:02");
INSERT INTO tbl_activity VALUES("12198","Viewed Committee Meeting ID: 34","21","2014-10-02 08:58:02");
INSERT INTO tbl_activity VALUES("12199","Viewed List of Referral for Committee Meeting","21","2014-10-02 08:58:07");
INSERT INTO tbl_activity VALUES("12200","Added Another Committee Meeting","21","2014-10-02 08:58:35");
INSERT INTO tbl_activity VALUES("12201","Viewed Committee Meeting ID: 35","21","2014-10-02 08:58:35");
INSERT INTO tbl_activity VALUES("12202","Viewed Committee Meeting ID: 35","21","2014-10-02 08:59:38");
INSERT INTO tbl_activity VALUES("12203","Viewed Committee Meeting ID: 35","21","2014-10-02 09:00:03");
INSERT INTO tbl_activity VALUES("12204","Assigned Date of Committe Report of Committee Meeting ID: 35","21","2014-10-02 09:00:03");
INSERT INTO tbl_activity VALUES("12205","Viewed Committee Meeting ID: 35","21","2014-10-02 09:00:03");
INSERT INTO tbl_activity VALUES("12206","Viewed List of Referral for Committee Meeting","21","2014-10-02 09:00:05");
INSERT INTO tbl_activity VALUES("12207","Added Another Committee Meeting","21","2014-10-02 09:00:30");
INSERT INTO tbl_activity VALUES("12208","Viewed Committee Meeting ID: 36","21","2014-10-02 09:00:30");
INSERT INTO tbl_activity VALUES("12209","Viewed Committee Meeting ID: 36","21","2014-10-02 09:00:50");
INSERT INTO tbl_activity VALUES("12210","Assigned Date of Committe Report of Committee Meeting ID: 36","21","2014-10-02 09:00:50");
INSERT INTO tbl_activity VALUES("12211","Viewed Committee Meeting ID: 36","21","2014-10-02 09:00:50");
INSERT INTO tbl_activity VALUES("12212","Viewed List of Referral for Committee Meeting","21","2014-10-02 09:00:53");
INSERT INTO tbl_activity VALUES("12213","Added Another Committee Meeting","21","2014-10-02 09:01:23");
INSERT INTO tbl_activity VALUES("12214","Viewed Committee Meeting ID: 37","21","2014-10-02 09:01:23");
INSERT INTO tbl_activity VALUES("12215","Viewed Committee Meeting ID: 37","21","2014-10-02 09:01:39");
INSERT INTO tbl_activity VALUES("12216","Assigned Date of Committe Report of Committee Meeting ID: 37","21","2014-10-02 09:01:39");
INSERT INTO tbl_activity VALUES("12217","Viewed Committee Meeting ID: 37","21","2014-10-02 09:01:39");
INSERT INTO tbl_activity VALUES("12218","Viewed List of Referral for Committee Meeting","21","2014-10-02 09:01:41");
INSERT INTO tbl_activity VALUES("12219","Added Another Committee Meeting","21","2014-10-02 09:02:09");
INSERT INTO tbl_activity VALUES("12220","Viewed Committee Meeting ID: 38","21","2014-10-02 09:02:09");
INSERT INTO tbl_activity VALUES("12221","Viewed Committee Meeting ID: 38","21","2014-10-02 09:02:17");
INSERT INTO tbl_activity VALUES("12222","Assigned Date of Committe Report of Committee Meeting ID: 38","21","2014-10-02 09:02:17");
INSERT INTO tbl_activity VALUES("12223","Viewed Committee Meeting ID: 38","21","2014-10-02 09:02:17");
INSERT INTO tbl_activity VALUES("12224","Viewed List of Referral for Committee Meeting","21","2014-10-02 09:02:21");
INSERT INTO tbl_activity VALUES("12225","Added Another Committee Meeting","21","2014-10-02 09:02:53");
INSERT INTO tbl_activity VALUES("12226","Viewed Committee Meeting ID: 39","21","2014-10-02 09:02:53");
INSERT INTO tbl_activity VALUES("12227","Viewed Committee Meeting ID: 39","21","2014-10-02 09:03:08");
INSERT INTO tbl_activity VALUES("12228","Assigned Date of Committe Report of Committee Meeting ID: 39","21","2014-10-02 09:03:08");
INSERT INTO tbl_activity VALUES("12229","Viewed Committee Meeting ID: 39","21","2014-10-02 09:03:08");
INSERT INTO tbl_activity VALUES("12230","Viewed List of Referral for Committee Meeting","21","2014-10-02 09:03:11");
INSERT INTO tbl_activity VALUES("12231","Added Another Committee Meeting","21","2014-10-02 09:03:32");
INSERT INTO tbl_activity VALUES("12232","Viewed Committee Meeting ID: 40","21","2014-10-02 09:03:32");
INSERT INTO tbl_activity VALUES("12233","Viewed Committee Meeting ID: 40","21","2014-10-02 09:03:49");
INSERT INTO tbl_activity VALUES("12234","Assigned Date of Committe Report of Committee Meeting ID: 40","21","2014-10-02 09:03:49");
INSERT INTO tbl_activity VALUES("12235","Viewed Committee Meeting ID: 40","21","2014-10-02 09:03:50");
INSERT INTO tbl_activity VALUES("12236","Viewed List of Referral for Committee Meeting","21","2014-10-02 09:03:52");
INSERT INTO tbl_activity VALUES("12237","Added Another Committee Meeting","21","2014-10-02 09:04:14");
INSERT INTO tbl_activity VALUES("12238","Viewed Committee Meeting ID: 41","21","2014-10-02 09:04:14");
INSERT INTO tbl_activity VALUES("12239","Viewed Committee Meeting ID: 41","21","2014-10-02 09:04:41");
INSERT INTO tbl_activity VALUES("12240","Assigned Date of Committe Report of Committee Meeting ID: 41","21","2014-10-02 09:04:41");
INSERT INTO tbl_activity VALUES("12241","Viewed Committee Meeting ID: 41","21","2014-10-02 09:04:41");
INSERT INTO tbl_activity VALUES("12242","Viewed List of Referral for Committee Meeting","21","2014-10-02 09:04:45");
INSERT INTO tbl_activity VALUES("12243","Viewed Committee Meeting ID: 35","21","2014-10-02 09:04:46");
INSERT INTO tbl_activity VALUES("12244","Added Another Committee Meeting","21","2014-10-02 09:05:23");
INSERT INTO tbl_activity VALUES("12245","Viewed Committee Meeting ID: 42","21","2014-10-02 09:05:23");
INSERT INTO tbl_activity VALUES("12246","Viewed Committee Meeting ID: 42","21","2014-10-02 09:05:49");
INSERT INTO tbl_activity VALUES("12247","Assigned Date of Committe Report of Committee Meeting ID: 42","21","2014-10-02 09:05:49");
INSERT INTO tbl_activity VALUES("12248","Viewed Committee Meeting ID: 42","21","2014-10-02 09:05:49");
INSERT INTO tbl_activity VALUES("12249","Viewed List of Referral for Committee Meeting","21","2014-10-02 09:05:52");
INSERT INTO tbl_activity VALUES("12250","Added Another Committee Meeting","21","2014-10-02 09:06:12");
INSERT INTO tbl_activity VALUES("12251","Viewed Committee Meeting ID: 43","21","2014-10-02 09:06:13");
INSERT INTO tbl_activity VALUES("12252","Viewed Committee Meeting ID: 43","21","2014-10-02 09:06:24");
INSERT INTO tbl_activity VALUES("12253","Assigned Date of Committe Report of Committee Meeting ID: 43","21","2014-10-02 09:06:24");
INSERT INTO tbl_activity VALUES("12254","Viewed Committee Meeting ID: 43","21","2014-10-02 09:06:24");
INSERT INTO tbl_activity VALUES("12255","Viewed List of Referral for Committee Meeting","21","2014-10-02 09:06:27");
INSERT INTO tbl_activity VALUES("12256","Added Another Committee Meeting","21","2014-10-02 09:06:48");
INSERT INTO tbl_activity VALUES("12257","Viewed Committee Meeting ID: 44","21","2014-10-02 09:06:48");
INSERT INTO tbl_activity VALUES("12258","Viewed Committee Meeting ID: 44","21","2014-10-02 09:06:59");
INSERT INTO tbl_activity VALUES("12259","Viewed Committee Meeting ID: 44","21","2014-10-02 09:06:59");
INSERT INTO tbl_activity VALUES("12260","Viewed Committee Meeting ID: 44","21","2014-10-02 09:07:12");
INSERT INTO tbl_activity VALUES("12261","Viewed Committee Meeting ID: 44","21","2014-10-02 09:07:42");
INSERT INTO tbl_activity VALUES("12262","Viewed Committee Meeting ID: 44","21","2014-10-02 09:10:13");
INSERT INTO tbl_activity VALUES("12263","Viewed Committee Meeting ID: 44","21","2014-10-02 09:10:18");
INSERT INTO tbl_activity VALUES("12264","Viewed List of Referral for Committee Meeting","21","2014-10-02 09:10:20");
INSERT INTO tbl_activity VALUES("12265","Added Another Committee Meeting","21","2014-10-02 09:10:55");
INSERT INTO tbl_activity VALUES("12266","Viewed Committee Meeting ID: 45","21","2014-10-02 09:10:55");
INSERT INTO tbl_activity VALUES("12267","Viewed Committee Meeting ID: 45","21","2014-10-02 09:11:09");
INSERT INTO tbl_activity VALUES("12268","Viewed Committee Meeting ID: 45","21","2014-10-02 09:11:10");
INSERT INTO tbl_activity VALUES("12269","Viewed Committee Meeting ID: 45","21","2014-10-02 09:11:44");
INSERT INTO tbl_activity VALUES("12270","Viewed Committee Meeting ID: 45","21","2014-10-02 09:11:59");
INSERT INTO tbl_activity VALUES("12271","Viewed List of Referrals for Committe Meeting","21","2014-10-02 09:12:02");
INSERT INTO tbl_activity VALUES("12272","Viewed List of Referral for Committee Meeting","21","2014-10-02 09:12:03");
INSERT INTO tbl_activity VALUES("12273","Viewed List of Referral for Committee Meeting","21","2014-10-02 09:12:25");
INSERT INTO tbl_activity VALUES("12274","Added Another Committee Meeting","21","2014-10-02 09:12:34");
INSERT INTO tbl_activity VALUES("12275","Viewed Committee Meeting ID: 46","21","2014-10-02 09:12:34");
INSERT INTO tbl_activity VALUES("12276","Viewed Committee Meeting ID: 46","21","2014-10-02 09:12:44");
INSERT INTO tbl_activity VALUES("12277","Viewed Committee Meeting ID: 46","21","2014-10-02 09:12:44");
INSERT INTO tbl_activity VALUES("12278","Viewed Committee Meeting List for Ordinance","21","2014-10-02 09:12:51");
INSERT INTO tbl_activity VALUES("12279","Viewed Committee Meeting List for Resolution","21","2014-10-02 09:12:52");
INSERT INTO tbl_activity VALUES("12280","Viewed Committee Meeting List for Resolution","21","2014-10-02 09:12:58");
INSERT INTO tbl_activity VALUES("12281","Viewed List of Referral for Committee Meeting","21","2014-10-02 09:13:01");
INSERT INTO tbl_activity VALUES("12282","Viewed List of Referral for Committee Meeting","21","2014-10-02 09:13:23");
INSERT INTO tbl_activity VALUES("12283","Viewed List of Referral for Committee Meeting","21","2014-10-02 09:13:25");
INSERT INTO tbl_activity VALUES("12284","Added Another Committee Meeting","21","2014-10-02 09:13:54");
INSERT INTO tbl_activity VALUES("12285","Viewed Committee Meeting ID: 47","21","2014-10-02 09:13:55");
INSERT INTO tbl_activity VALUES("12286","Viewed Committee Meeting ID: 47","21","2014-10-02 09:14:09");
INSERT INTO tbl_activity VALUES("12287","Viewed Committee Meeting ID: 47","21","2014-10-02 09:14:09");
INSERT INTO tbl_activity VALUES("12288","Viewed List of Referral for Committee Meeting","21","2014-10-02 09:14:59");
INSERT INTO tbl_activity VALUES("12289","Added Another Committee Meeting","21","2014-10-02 09:15:11");
INSERT INTO tbl_activity VALUES("12290","Viewed Committee Meeting ID: 48","21","2014-10-02 09:15:11");
INSERT INTO tbl_activity VALUES("12291","Viewed Committee Meeting ID: 48","21","2014-10-02 09:16:09");
INSERT INTO tbl_activity VALUES("12292","Viewed Committee Meeting ID: 48","21","2014-10-02 09:16:28");
INSERT INTO tbl_activity VALUES("12293","Viewed List of Referrals for Committe Meeting","21","2014-10-02 09:16:30");
INSERT INTO tbl_activity VALUES("12294","Viewed List of Referral for Committee Meeting","21","2014-10-02 09:16:32");
INSERT INTO tbl_activity VALUES("12295","Added Another Committee Meeting","21","2014-10-02 09:17:01");
INSERT INTO tbl_activity VALUES("12296","Viewed Committee Meeting ID: 49","21","2014-10-02 09:17:02");
INSERT INTO tbl_activity VALUES("12297","Viewed Committee Meeting ID: 49","21","2014-10-02 09:17:15");
INSERT INTO tbl_activity VALUES("12298","Viewed Committee Meeting ID: 49","21","2014-10-02 09:17:15");
INSERT INTO tbl_activity VALUES("12299","Viewed List of Referral for Committee Meeting","21","2014-10-02 09:18:04");
INSERT INTO tbl_activity VALUES("12300","Added Another Committee Meeting","21","2014-10-02 09:18:43");
INSERT INTO tbl_activity VALUES("12301","Viewed Committee Meeting ID: 50","21","2014-10-02 09:18:44");
INSERT INTO tbl_activity VALUES("12302","Viewed Committee Meeting ID: 50","21","2014-10-02 09:18:53");
INSERT INTO tbl_activity VALUES("12303","Assigned Date of Committe Report of Committee Meeting ID: 50","21","2014-10-02 09:18:53");
INSERT INTO tbl_activity VALUES("12304","Viewed Committee Meeting ID: 50","21","2014-10-02 09:18:53");
INSERT INTO tbl_activity VALUES("12305","Viewed List of Referral for Committee Meeting","21","2014-10-02 09:18:57");
INSERT INTO tbl_activity VALUES("12306","Viewed Committee Meeting List","21","2014-10-02 09:19:02");
INSERT INTO tbl_activity VALUES("12307","Viewed List of Referral for Committee Meeting","21","2014-10-02 09:19:12");
INSERT INTO tbl_activity VALUES("12308","Added Another Committee Meeting","21","2014-10-02 09:19:46");
INSERT INTO tbl_activity VALUES("12309","Viewed Committee Meeting ID: 51","21","2014-10-02 09:19:46");
INSERT INTO tbl_activity VALUES("12310","Viewed Committee Meeting ID: 51","21","2014-10-02 09:19:55");
INSERT INTO tbl_activity VALUES("12311","Assigned Date of Committe Report of Committee Meeting ID: 51","21","2014-10-02 09:19:55");
INSERT INTO tbl_activity VALUES("12312","Viewed Committee Meeting ID: 51","21","2014-10-02 09:19:55");
INSERT INTO tbl_activity VALUES("12313","Viewed List of Referral for Committee Meeting","21","2014-10-02 09:19:58");
INSERT INTO tbl_activity VALUES("12314","Added Another Committee Meeting","21","2014-10-02 09:21:07");
INSERT INTO tbl_activity VALUES("12315","Viewed Committee Meeting ID: 52","21","2014-10-02 09:21:07");
INSERT INTO tbl_activity VALUES("12316","Viewed Committee Meeting ID: 52","21","2014-10-02 09:21:20");
INSERT INTO tbl_activity VALUES("12317","Assigned Date of Committe Report of Committee Meeting ID: 52","21","2014-10-02 09:21:20");
INSERT INTO tbl_activity VALUES("12318","Viewed Committee Meeting ID: 52","21","2014-10-02 09:21:20");
INSERT INTO tbl_activity VALUES("12319","Viewed List of Referral for Committee Meeting","21","2014-10-02 09:21:22");
INSERT INTO tbl_activity VALUES("12320","Added Another Committee Meeting","21","2014-10-02 09:22:00");
INSERT INTO tbl_activity VALUES("12321","Viewed Committee Meeting ID: 53","21","2014-10-02 09:22:00");
INSERT INTO tbl_activity VALUES("12322","Viewed Committee Meeting ID: 53","21","2014-10-02 09:22:15");
INSERT INTO tbl_activity VALUES("12323","Assigned Date of Committe Report of Committee Meeting ID: 53","21","2014-10-02 09:22:15");
INSERT INTO tbl_activity VALUES("12324","Viewed Committee Meeting ID: 53","21","2014-10-02 09:22:15");
INSERT INTO tbl_activity VALUES("12325","Viewed List of Referral for Committee Meeting","21","2014-10-02 09:22:19");
INSERT INTO tbl_activity VALUES("12326","Added Another Committee Meeting","21","2014-10-02 09:24:39");
INSERT INTO tbl_activity VALUES("12327","Viewed Committee Meeting ID: 54","21","2014-10-02 09:24:39");
INSERT INTO tbl_activity VALUES("12328","Viewed Committee Meeting ID: 54","21","2014-10-02 09:26:06");
INSERT INTO tbl_activity VALUES("12329","Assigned Date of Committe Report of Committee Meeting ID: 54","21","2014-10-02 09:26:06");
INSERT INTO tbl_activity VALUES("12330","Viewed Committee Meeting ID: 54","21","2014-10-02 09:26:06");
INSERT INTO tbl_activity VALUES("12331","Viewed List of Referral for Committee Meeting","21","2014-10-02 09:26:12");
INSERT INTO tbl_activity VALUES("12332","Added Another Committee Meeting","21","2014-10-02 09:32:34");
INSERT INTO tbl_activity VALUES("12333","Viewed Committee Meeting ID: 55","21","2014-10-02 09:32:35");
INSERT INTO tbl_activity VALUES("12334","Viewed Committee Meeting ID: 55","21","2014-10-02 09:32:49");
INSERT INTO tbl_activity VALUES("12335","Assigned Date of Committe Report of Committee Meeting ID: 55","21","2014-10-02 09:32:49");
INSERT INTO tbl_activity VALUES("12336","Viewed Committee Meeting ID: 55","21","2014-10-02 09:32:50");
INSERT INTO tbl_activity VALUES("12337","Viewed List of Referral for Committee Meeting","21","2014-10-02 09:32:59");
INSERT INTO tbl_activity VALUES("12338","Added Another Committee Meeting","21","2014-10-02 09:33:30");
INSERT INTO tbl_activity VALUES("12339","Viewed Committee Meeting ID: 56","21","2014-10-02 09:33:30");
INSERT INTO tbl_activity VALUES("12340","Viewed Committee Meeting ID: 56","21","2014-10-02 09:33:46");
INSERT INTO tbl_activity VALUES("12341","Assigned Date of Committe Report of Committee Meeting ID: 56","21","2014-10-02 09:33:46");
INSERT INTO tbl_activity VALUES("12342","Viewed Committee Meeting ID: 56","21","2014-10-02 09:33:46");
INSERT INTO tbl_activity VALUES("12343","Viewed List of Referral for Committee Meeting","21","2014-10-02 09:33:49");
INSERT INTO tbl_activity VALUES("12344","Added Another Committee Meeting","21","2014-10-02 09:35:10");
INSERT INTO tbl_activity VALUES("12345","Viewed Committee Meeting ID: 57","21","2014-10-02 09:35:10");
INSERT INTO tbl_activity VALUES("12346","Viewed Committee Meeting ID: 57","21","2014-10-02 09:35:21");
INSERT INTO tbl_activity VALUES("12347","Assigned Date of Committe Report of Committee Meeting ID: 57","21","2014-10-02 09:35:21");
INSERT INTO tbl_activity VALUES("12348","Viewed Committee Meeting ID: 57","21","2014-10-02 09:35:21");
INSERT INTO tbl_activity VALUES("12349","Viewed List of Referral for Committee Meeting","21","2014-10-02 09:35:24");
INSERT INTO tbl_activity VALUES("12350","Added Another Committee Meeting","21","2014-10-02 09:36:20");
INSERT INTO tbl_activity VALUES("12351","Viewed Committee Meeting ID: 58","21","2014-10-02 09:36:20");
INSERT INTO tbl_activity VALUES("12352","Viewed Committee Meeting ID: 58","21","2014-10-02 09:36:32");
INSERT INTO tbl_activity VALUES("12353","Assigned Date of Committe Report of Committee Meeting ID: 58","21","2014-10-02 09:36:32");
INSERT INTO tbl_activity VALUES("12354","Viewed Committee Meeting ID: 58","21","2014-10-02 09:36:32");
INSERT INTO tbl_activity VALUES("12355","Viewed List of Referral for Committee Meeting","21","2014-10-02 09:36:35");
INSERT INTO tbl_activity VALUES("12356","Added Another Committee Meeting","21","2014-10-02 09:36:58");
INSERT INTO tbl_activity VALUES("12357","Viewed Committee Meeting ID: 59","21","2014-10-02 09:36:58");
INSERT INTO tbl_activity VALUES("12358","Viewed Committee Meeting ID: 59","21","2014-10-02 09:37:06");
INSERT INTO tbl_activity VALUES("12359","Assigned Date of Committe Report of Committee Meeting ID: 59","21","2014-10-02 09:37:06");
INSERT INTO tbl_activity VALUES("12360","Viewed Committee Meeting ID: 59","21","2014-10-02 09:37:06");
INSERT INTO tbl_activity VALUES("12361","Viewed List of Referral for Committee Meeting","21","2014-10-02 09:37:09");
INSERT INTO tbl_activity VALUES("12362","Viewed List of Referral for Committee Meeting","21","2014-10-02 09:37:45");
INSERT INTO tbl_activity VALUES("12363","Viewed List of Referral for Committee Meeting","21","2014-10-02 09:38:04");
INSERT INTO tbl_activity VALUES("12364","Viewed List of Referral for Committee Meeting","21","2014-10-02 09:38:40");
INSERT INTO tbl_activity VALUES("12365","Added Another Committee Meeting","21","2014-10-02 09:38:59");
INSERT INTO tbl_activity VALUES("12366","Viewed Committee Meeting ID: 60","21","2014-10-02 09:38:59");
INSERT INTO tbl_activity VALUES("12367","Viewed Committee Meeting ID: 60","21","2014-10-02 09:39:16");
INSERT INTO tbl_activity VALUES("12368","Assigned Date of Committe Report of Committee Meeting ID: 60","21","2014-10-02 09:39:16");
INSERT INTO tbl_activity VALUES("12369","Viewed Committee Meeting ID: 60","21","2014-10-02 09:39:16");
INSERT INTO tbl_activity VALUES("12370","Viewed List of Referral for Committee Meeting","21","2014-10-02 09:39:31");
INSERT INTO tbl_activity VALUES("12371","Viewed List of Referral for Committee Meeting","21","2014-10-02 09:39:58");
INSERT INTO tbl_activity VALUES("12372","Added Another Committee Meeting","21","2014-10-02 09:40:40");
INSERT INTO tbl_activity VALUES("12373","Viewed Committee Meeting ID: 61","21","2014-10-02 09:40:40");
INSERT INTO tbl_activity VALUES("12374","Viewed Committee Meeting ID: 61","21","2014-10-02 09:42:21");
INSERT INTO tbl_activity VALUES("12375","Assigned Date of Committe Report of Committee Meeting ID: 61","21","2014-10-02 09:42:21");
INSERT INTO tbl_activity VALUES("12376","Viewed Committee Meeting ID: 61","21","2014-10-02 09:42:21");
INSERT INTO tbl_activity VALUES("12377","Viewed List of Referral for Committee Meeting","21","2014-10-02 09:42:26");
INSERT INTO tbl_activity VALUES("12378","Viewed List of Referral for Committee Meeting","21","2014-10-02 09:42:31");
INSERT INTO tbl_activity VALUES("12379","Added Another Committee Meeting","21","2014-10-02 09:43:22");
INSERT INTO tbl_activity VALUES("12380","Viewed Committee Meeting ID: 62","21","2014-10-02 09:43:22");
INSERT INTO tbl_activity VALUES("12381","Viewed Committee Meeting ID: 62","21","2014-10-02 09:43:32");
INSERT INTO tbl_activity VALUES("12382","Assigned Date of Committe Report of Committee Meeting ID: 62","21","2014-10-02 09:43:32");
INSERT INTO tbl_activity VALUES("12383","Viewed Committee Meeting ID: 62","21","2014-10-02 09:43:32");
INSERT INTO tbl_activity VALUES("12384","Viewed List of Referral for Committee Meeting","21","2014-10-02 09:43:55");
INSERT INTO tbl_activity VALUES("12385","Viewed List of Referral for Committee Meeting","21","2014-10-02 09:44:02");
INSERT INTO tbl_activity VALUES("12386","Added Another Committee Meeting","21","2014-10-02 09:48:08");
INSERT INTO tbl_activity VALUES("12387","Viewed Committee Meeting ID: 63","21","2014-10-02 09:48:14");
INSERT INTO tbl_activity VALUES("12388","Viewed Committee Meeting ID: 63","21","2014-10-02 09:56:41");
INSERT INTO tbl_activity VALUES("12389","Assigned Date of Committe Report of Committee Meeting ID: 63","21","2014-10-02 09:56:41");
INSERT INTO tbl_activity VALUES("12390","Viewed Committee Meeting ID: 63","21","2014-10-02 09:56:42");
INSERT INTO tbl_activity VALUES("12391","Viewed List of Referral for Committee Meeting","21","2014-10-02 09:59:34");
INSERT INTO tbl_activity VALUES("12392","Viewed List of Referral for Committee Meeting","21","2014-10-02 10:05:03");
INSERT INTO tbl_activity VALUES("12393","Added Another Committee Meeting","21","2014-10-02 10:05:29");
INSERT INTO tbl_activity VALUES("12394","Viewed Committee Meeting ID: 64","21","2014-10-02 10:05:29");
INSERT INTO tbl_activity VALUES("12395","Viewed Committee Meeting ID: 64","21","2014-10-02 10:05:41");
INSERT INTO tbl_activity VALUES("12396","Assigned Date of Committe Report of Committee Meeting ID: 64","21","2014-10-02 10:05:41");
INSERT INTO tbl_activity VALUES("12397","Viewed Committee Meeting ID: 64","21","2014-10-02 10:05:41");
INSERT INTO tbl_activity VALUES("12398","Viewed List of Referral for Committee Meeting","21","2014-10-02 10:05:45");
INSERT INTO tbl_activity VALUES("12399","Viewed List of Referral for Committee Meeting","21","2014-10-02 10:05:53");
INSERT INTO tbl_activity VALUES("12400","Added Another Committee Meeting","21","2014-10-02 10:07:08");
INSERT INTO tbl_activity VALUES("12401","Viewed Committee Meeting ID: 65","21","2014-10-02 10:07:08");
INSERT INTO tbl_activity VALUES("12402","Viewed Committee Meeting ID: 65","21","2014-10-02 10:07:25");
INSERT INTO tbl_activity VALUES("12403","Assigned Date of Committe Report of Committee Meeting ID: 65","21","2014-10-02 10:07:25");
INSERT INTO tbl_activity VALUES("12404","Viewed Committee Meeting ID: 65","21","2014-10-02 10:07:25");
INSERT INTO tbl_activity VALUES("12405","Viewed List of Referral for Committee Meeting","21","2014-10-02 10:07:29");
INSERT INTO tbl_activity VALUES("12406","Viewed List of Referral for Committee Meeting","21","2014-10-02 10:07:33");
INSERT INTO tbl_activity VALUES("12407","Added Another Committee Meeting","21","2014-10-02 10:08:08");
INSERT INTO tbl_activity VALUES("12408","Viewed Committee Meeting ID: 66","21","2014-10-02 10:08:08");
INSERT INTO tbl_activity VALUES("12409","Viewed Committee Meeting ID: 66","21","2014-10-02 10:08:23");
INSERT INTO tbl_activity VALUES("12410","Assigned Date of Committe Report of Committee Meeting ID: 66","21","2014-10-02 10:08:23");
INSERT INTO tbl_activity VALUES("12411","Viewed Committee Meeting ID: 66","21","2014-10-02 10:08:23");
INSERT INTO tbl_activity VALUES("12412","Viewed List of Referral for Committee Meeting","21","2014-10-02 10:08:25");
INSERT INTO tbl_activity VALUES("12413","Viewed List of Referral for Committee Meeting","21","2014-10-02 10:08:35");
INSERT INTO tbl_activity VALUES("12414","Return to Homepage","21","2014-10-02 10:32:07");
INSERT INTO tbl_activity VALUES("12415","Viewed List of Referral for Committee Meeting","21","2014-10-02 10:33:24");
INSERT INTO tbl_activity VALUES("12416","Viewed List of Referral for Committee Meeting","21","2014-10-02 10:33:32");
INSERT INTO tbl_activity VALUES("12417","Viewed List of Referral for Committee Meeting","21","2014-10-02 10:34:51");
INSERT INTO tbl_activity VALUES("12418","Viewed List of Referral for Committee Meeting","21","2014-10-02 10:36:23");
INSERT INTO tbl_activity VALUES("12419","Added Another Committee Meeting","21","2014-10-02 10:37:03");
INSERT INTO tbl_activity VALUES("12420","Viewed Committee Meeting ID: 67","21","2014-10-02 10:37:03");
INSERT INTO tbl_activity VALUES("12421","Viewed Committee Meeting ID: 67","21","2014-10-02 10:37:28");
INSERT INTO tbl_activity VALUES("12422","Assigned Date of Committe Report of Committee Meeting ID: 67","21","2014-10-02 10:37:28");
INSERT INTO tbl_activity VALUES("12423","Viewed Committee Meeting ID: 67","21","2014-10-02 10:37:28");
INSERT INTO tbl_activity VALUES("12424","Viewed List of Referral for Committee Meeting","21","2014-10-02 10:37:31");
INSERT INTO tbl_activity VALUES("12425","Viewed List of Referral for Committee Meeting","21","2014-10-02 10:37:36");
INSERT INTO tbl_activity VALUES("12426","Added Another Committee Meeting","21","2014-10-02 10:38:35");
INSERT INTO tbl_activity VALUES("12427","Viewed Committee Meeting ID: 68","21","2014-10-02 10:38:35");
INSERT INTO tbl_activity VALUES("12428","Viewed Committee Meeting ID: 68","21","2014-10-02 10:39:00");
INSERT INTO tbl_activity VALUES("12429","Assigned Date of Committe Report of Committee Meeting ID: 68","21","2014-10-02 10:39:00");
INSERT INTO tbl_activity VALUES("12430","Viewed Committee Meeting ID: 68","21","2014-10-02 10:39:00");
INSERT INTO tbl_activity VALUES("12431","Viewed List of Referral for Committee Meeting","21","2014-10-02 10:39:03");
INSERT INTO tbl_activity VALUES("12432","Viewed List of Referral for Committee Meeting","21","2014-10-02 10:39:06");
INSERT INTO tbl_activity VALUES("12433","Added Another Committee Meeting","21","2014-10-02 10:39:53");
INSERT INTO tbl_activity VALUES("12434","Viewed Committee Meeting ID: 69","21","2014-10-02 10:39:53");
INSERT INTO tbl_activity VALUES("12435","Viewed Committee Meeting ID: 69","21","2014-10-02 10:40:01");
INSERT INTO tbl_activity VALUES("12436","Assigned Date of Committe Report of Committee Meeting ID: 69","21","2014-10-02 10:40:01");
INSERT INTO tbl_activity VALUES("12437","Viewed Committee Meeting ID: 69","21","2014-10-02 10:40:02");
INSERT INTO tbl_activity VALUES("12438","Viewed List of Referral for Committee Meeting","21","2014-10-02 10:40:06");
INSERT INTO tbl_activity VALUES("12439","Viewed List of Referral for Committee Meeting","21","2014-10-02 10:40:10");
INSERT INTO tbl_activity VALUES("12440","Added Another Committee Meeting","21","2014-10-02 10:42:08");
INSERT INTO tbl_activity VALUES("12441","Viewed Committee Meeting ID: 70","21","2014-10-02 10:42:09");
INSERT INTO tbl_activity VALUES("12442","Viewed Committee Meeting ID: 70","21","2014-10-02 10:43:44");
INSERT INTO tbl_activity VALUES("12443","Viewed Committee Meeting ID: 70","21","2014-10-02 10:44:55");
INSERT INTO tbl_activity VALUES("12444","Assigned Date of Committe Report of Committee Meeting ID: 70","21","2014-10-02 10:44:55");
INSERT INTO tbl_activity VALUES("12445","Viewed Committee Meeting ID: 70","21","2014-10-02 10:45:28");
INSERT INTO tbl_activity VALUES("12446","Viewed Committee Meeting ID: 70","21","2014-10-02 10:46:22");
INSERT INTO tbl_activity VALUES("12447","Viewed List of Referral for Committee Meeting","21","2014-10-02 10:46:26");
INSERT INTO tbl_activity VALUES("12448","Viewed List of Referral for Committee Meeting","21","2014-10-02 10:46:38");
INSERT INTO tbl_activity VALUES("12449","Added Another Committee Meeting","21","2014-10-02 10:50:28");
INSERT INTO tbl_activity VALUES("12450","Viewed Committee Meeting ID: 71","21","2014-10-02 10:50:28");
INSERT INTO tbl_activity VALUES("12451","Viewed Committee Meeting ID: 71","21","2014-10-02 10:51:31");
INSERT INTO tbl_activity VALUES("12452","Viewed Committee Meeting ID: 71","21","2014-10-02 10:52:28");
INSERT INTO tbl_activity VALUES("12453","Viewed Committee Meeting ID: 71","21","2014-10-02 10:53:03");
INSERT INTO tbl_activity VALUES("12454","Viewed Committee Meeting ID: 71","21","2014-10-02 10:54:33");
INSERT INTO tbl_activity VALUES("12455","Viewed Committee Meeting List for Resolution","21","2014-10-02 10:55:33");
INSERT INTO tbl_activity VALUES("12456","Viewed Committee Meeting List for Resolution","21","2014-10-02 10:58:21");
INSERT INTO tbl_activity VALUES("12457","Viewed Committee Meeting List for Resolution","21","2014-10-02 10:58:26");
INSERT INTO tbl_activity VALUES("12458","Viewed List of Referral for Committee Meeting","21","2014-10-02 10:58:39");
INSERT INTO tbl_activity VALUES("12459","Viewed Committee Meeting List","21","2014-10-02 10:58:41");
INSERT INTO tbl_activity VALUES("12460","Viewed Committee Meeting ID: 70","21","2014-10-02 11:04:25");
INSERT INTO tbl_activity VALUES("12461","Viewed Committee Meeting ID: 71","21","2014-10-02 11:31:01");
INSERT INTO tbl_activity VALUES("12462","Viewed Committee Meeting List","21","2014-10-02 11:31:54");
INSERT INTO tbl_activity VALUES("12463","Logged In","21","2014-10-02 12:48:03");
INSERT INTO tbl_activity VALUES("12464","Return to Homepage","21","2014-10-02 12:48:03");
INSERT INTO tbl_activity VALUES("12465","Viewed Committee Meeting List for Resolution","21","2014-10-02 12:48:07");
INSERT INTO tbl_activity VALUES("12466","Viewed Committee Meeting List for Resolution","21","2014-10-02 12:48:10");
INSERT INTO tbl_activity VALUES("12467","Viewed List of Referral for Committee Meeting","21","2014-10-02 12:48:12");
INSERT INTO tbl_activity VALUES("12468","Viewed List of Referral for Committee Meeting","21","2014-10-02 12:48:16");
INSERT INTO tbl_activity VALUES("12469","Added Another Committee Meeting","21","2014-10-02 12:49:45");
INSERT INTO tbl_activity VALUES("12470","Viewed Committee Meeting ID: 72","21","2014-10-02 12:49:45");
INSERT INTO tbl_activity VALUES("12471","Viewed Committee Meeting ID: 72","21","2014-10-02 12:50:13");
INSERT INTO tbl_activity VALUES("12472","Viewed Committee Meeting ID: 72","21","2014-10-02 12:50:13");
INSERT INTO tbl_activity VALUES("12473","Viewed Committee Meeting ID: 72","21","2014-10-02 12:52:46");
INSERT INTO tbl_activity VALUES("12474","Assigned Date of Committe Report of Committee Meeting ID: 72","21","2014-10-02 12:52:47");
INSERT INTO tbl_activity VALUES("12475","Viewed Committee Meeting ID: 72","21","2014-10-02 12:52:50");
INSERT INTO tbl_activity VALUES("12476","Viewed List of Referral for Committee Meeting","21","2014-10-02 12:53:20");
INSERT INTO tbl_activity VALUES("12477","Viewed List of Referral for Committee Meeting","21","2014-10-02 12:55:51");
INSERT INTO tbl_activity VALUES("12478","Viewed List of Referral for Committee Meeting","21","2014-10-02 12:58:39");
INSERT INTO tbl_activity VALUES("12479","Viewed List of Referral for Committee Meeting","21","2014-10-02 12:58:44");
INSERT INTO tbl_activity VALUES("12480","Viewed List of Referral for Committee Meeting","21","2014-10-02 12:58:49");
INSERT INTO tbl_activity VALUES("12481","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:00:27");
INSERT INTO tbl_activity VALUES("12482","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:00:34");
INSERT INTO tbl_activity VALUES("12483","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:00:35");
INSERT INTO tbl_activity VALUES("12484","Added Another Committee Meeting","21","2014-10-02 13:04:47");
INSERT INTO tbl_activity VALUES("12485","Viewed Committee Meeting ID: 73","21","2014-10-02 13:04:48");
INSERT INTO tbl_activity VALUES("12486","Viewed Committee Meeting ID: 73","21","2014-10-02 13:05:46");
INSERT INTO tbl_activity VALUES("12487","Assigned Date of Committe Report of Committee Meeting ID: 73","21","2014-10-02 13:05:46");
INSERT INTO tbl_activity VALUES("12488","Viewed Committee Meeting ID: 73","21","2014-10-02 13:05:46");
INSERT INTO tbl_activity VALUES("12489","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:06:01");
INSERT INTO tbl_activity VALUES("12490","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:06:05");
INSERT INTO tbl_activity VALUES("12491","Added Another Committee Meeting","21","2014-10-02 13:07:16");
INSERT INTO tbl_activity VALUES("12492","Viewed Committee Meeting ID: 74","21","2014-10-02 13:07:33");
INSERT INTO tbl_activity VALUES("12493","Viewed Committee Meeting ID: 74","21","2014-10-02 13:07:49");
INSERT INTO tbl_activity VALUES("12494","Assigned Date of Committe Report of Committee Meeting ID: 74","21","2014-10-02 13:07:49");
INSERT INTO tbl_activity VALUES("12495","Viewed Committee Meeting ID: 74","21","2014-10-02 13:07:50");
INSERT INTO tbl_activity VALUES("12496","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:07:52");
INSERT INTO tbl_activity VALUES("12497","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:08:16");
INSERT INTO tbl_activity VALUES("12498","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:08:18");
INSERT INTO tbl_activity VALUES("12499","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:08:44");
INSERT INTO tbl_activity VALUES("12500","Added Another Committee Meeting","21","2014-10-02 13:09:25");
INSERT INTO tbl_activity VALUES("12501","Viewed Committee Meeting ID: 75","21","2014-10-02 13:09:25");
INSERT INTO tbl_activity VALUES("12502","Viewed Committee Meeting ID: 75","21","2014-10-02 13:09:40");
INSERT INTO tbl_activity VALUES("12503","Assigned Date of Committe Report of Committee Meeting ID: 75","21","2014-10-02 13:09:40");
INSERT INTO tbl_activity VALUES("12504","Viewed Committee Meeting ID: 75","21","2014-10-02 13:09:40");
INSERT INTO tbl_activity VALUES("12505","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:09:43");
INSERT INTO tbl_activity VALUES("12506","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:10:09");
INSERT INTO tbl_activity VALUES("12507","Added Another Committee Meeting","21","2014-10-02 13:11:09");
INSERT INTO tbl_activity VALUES("12508","Viewed Committee Meeting ID: 76","21","2014-10-02 13:11:09");
INSERT INTO tbl_activity VALUES("12509","Viewed Committee Meeting ID: 76","21","2014-10-02 13:11:23");
INSERT INTO tbl_activity VALUES("12510","Assigned Date of Committe Report of Committee Meeting ID: 76","21","2014-10-02 13:11:23");
INSERT INTO tbl_activity VALUES("12511","Viewed Committee Meeting ID: 76","21","2014-10-02 13:11:23");
INSERT INTO tbl_activity VALUES("12512","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:11:25");
INSERT INTO tbl_activity VALUES("12513","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:11:33");
INSERT INTO tbl_activity VALUES("12514","Added Another Committee Meeting","21","2014-10-02 13:12:26");
INSERT INTO tbl_activity VALUES("12515","Viewed Committee Meeting ID: 77","21","2014-10-02 13:12:33");
INSERT INTO tbl_activity VALUES("12516","Viewed Committee Meeting ID: 77","21","2014-10-02 13:13:37");
INSERT INTO tbl_activity VALUES("12517","Assigned Date of Committe Report of Committee Meeting ID: 77","21","2014-10-02 13:13:37");
INSERT INTO tbl_activity VALUES("12518","Viewed Committee Meeting ID: 77","21","2014-10-02 13:13:37");
INSERT INTO tbl_activity VALUES("12519","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:13:47");
INSERT INTO tbl_activity VALUES("12520","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:13:57");
INSERT INTO tbl_activity VALUES("12521","Added Another Committee Meeting","21","2014-10-02 13:14:31");
INSERT INTO tbl_activity VALUES("12522","Viewed Committee Meeting ID: 78","21","2014-10-02 13:14:31");
INSERT INTO tbl_activity VALUES("12523","Viewed Committee Meeting ID: 78","21","2014-10-02 13:14:51");
INSERT INTO tbl_activity VALUES("12524","Assigned Date of Committe Report of Committee Meeting ID: 78","21","2014-10-02 13:14:51");
INSERT INTO tbl_activity VALUES("12525","Viewed Committee Meeting ID: 78","21","2014-10-02 13:14:51");
INSERT INTO tbl_activity VALUES("12526","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:14:54");
INSERT INTO tbl_activity VALUES("12527","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:15:25");
INSERT INTO tbl_activity VALUES("12528","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:16:08");
INSERT INTO tbl_activity VALUES("12529","Added Another Committee Meeting","21","2014-10-02 13:16:56");
INSERT INTO tbl_activity VALUES("12530","Viewed Committee Meeting ID: 79","21","2014-10-02 13:16:56");
INSERT INTO tbl_activity VALUES("12531","Viewed Committee Meeting ID: 79","21","2014-10-02 13:17:13");
INSERT INTO tbl_activity VALUES("12532","Assigned Date of Committe Report of Committee Meeting ID: 79","21","2014-10-02 13:17:13");
INSERT INTO tbl_activity VALUES("12533","Viewed Committee Meeting ID: 79","21","2014-10-02 13:17:13");
INSERT INTO tbl_activity VALUES("12534","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:17:16");
INSERT INTO tbl_activity VALUES("12535","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:17:36");
INSERT INTO tbl_activity VALUES("12536","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:17:40");
INSERT INTO tbl_activity VALUES("12537","Added Another Committee Meeting","21","2014-10-02 13:18:08");
INSERT INTO tbl_activity VALUES("12538","Viewed Committee Meeting ID: 80","21","2014-10-02 13:18:08");
INSERT INTO tbl_activity VALUES("12539","Viewed Statistical Report of Ordinance","21","2014-10-02 13:18:10");
INSERT INTO tbl_activity VALUES("12540","Viewed Committee Meeting ID: 80","21","2014-10-02 13:18:14");
INSERT INTO tbl_activity VALUES("12541","Viewed Committee Meeting ID: 80","21","2014-10-02 13:18:30");
INSERT INTO tbl_activity VALUES("12542","Assigned Date of Committe Report of Committee Meeting ID: 80","21","2014-10-02 13:18:30");
INSERT INTO tbl_activity VALUES("12543","Viewed Committee Meeting ID: 80","21","2014-10-02 13:18:30");
INSERT INTO tbl_activity VALUES("12544","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:18:34");
INSERT INTO tbl_activity VALUES("12545","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:18:40");
INSERT INTO tbl_activity VALUES("12546","Added Another Committee Meeting","21","2014-10-02 13:19:57");
INSERT INTO tbl_activity VALUES("12547","Viewed Committee Meeting ID: 81","21","2014-10-02 13:19:57");
INSERT INTO tbl_activity VALUES("12548","Viewed Committee Meeting ID: 81","21","2014-10-02 13:20:07");
INSERT INTO tbl_activity VALUES("12549","Assigned Date of Committe Report of Committee Meeting ID: 81","21","2014-10-02 13:20:07");
INSERT INTO tbl_activity VALUES("12550","Viewed Committee Meeting ID: 81","21","2014-10-02 13:20:07");
INSERT INTO tbl_activity VALUES("12551","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:20:11");
INSERT INTO tbl_activity VALUES("12552","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:20:15");
INSERT INTO tbl_activity VALUES("12553","Added Another Committee Meeting","21","2014-10-02 13:22:15");
INSERT INTO tbl_activity VALUES("12554","Viewed Committee Meeting ID: 82","21","2014-10-02 13:22:15");
INSERT INTO tbl_activity VALUES("12555","Viewed Committee Meeting ID: 82","21","2014-10-02 13:22:30");
INSERT INTO tbl_activity VALUES("12556","Assigned Date of Committe Report of Committee Meeting ID: 82","21","2014-10-02 13:22:30");
INSERT INTO tbl_activity VALUES("12557","Viewed Committee Meeting ID: 82","21","2014-10-02 13:22:30");
INSERT INTO tbl_activity VALUES("12558","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:22:37");
INSERT INTO tbl_activity VALUES("12559","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:23:54");
INSERT INTO tbl_activity VALUES("12560","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:24:12");
INSERT INTO tbl_activity VALUES("12561","Added Another Committee Meeting","21","2014-10-02 13:25:30");
INSERT INTO tbl_activity VALUES("12562","Viewed Committee Meeting ID: 83","21","2014-10-02 13:25:30");
INSERT INTO tbl_activity VALUES("12563","Viewed Committee Meeting ID: 83","21","2014-10-02 13:25:49");
INSERT INTO tbl_activity VALUES("12564","Assigned Date of Committe Report of Committee Meeting ID: 83","21","2014-10-02 13:25:49");
INSERT INTO tbl_activity VALUES("12565","Viewed Committee Meeting ID: 83","21","2014-10-02 13:25:49");
INSERT INTO tbl_activity VALUES("12566","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:25:52");
INSERT INTO tbl_activity VALUES("12567","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:25:59");
INSERT INTO tbl_activity VALUES("12568","Added Another Committee Meeting","21","2014-10-02 13:27:22");
INSERT INTO tbl_activity VALUES("12569","Viewed Committee Meeting ID: 84","21","2014-10-02 13:27:22");
INSERT INTO tbl_activity VALUES("12570","Viewed Committee Meeting ID: 84","21","2014-10-02 13:27:43");
INSERT INTO tbl_activity VALUES("12571","Assigned Date of Committe Report of Committee Meeting ID: 84","21","2014-10-02 13:27:43");
INSERT INTO tbl_activity VALUES("12572","Viewed Committee Meeting ID: 84","21","2014-10-02 13:27:43");
INSERT INTO tbl_activity VALUES("12573","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:27:51");
INSERT INTO tbl_activity VALUES("12574","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:27:54");
INSERT INTO tbl_activity VALUES("12575","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:27:55");
INSERT INTO tbl_activity VALUES("12576","Added Another Committee Meeting","21","2014-10-02 13:29:37");
INSERT INTO tbl_activity VALUES("12577","Viewed Committee Meeting ID: 85","21","2014-10-02 13:29:38");
INSERT INTO tbl_activity VALUES("12578","Viewed Committee Meeting ID: 85","21","2014-10-02 13:29:52");
INSERT INTO tbl_activity VALUES("12579","Assigned Date of Committe Report of Committee Meeting ID: 85","21","2014-10-02 13:29:52");
INSERT INTO tbl_activity VALUES("12580","Viewed Committee Meeting ID: 85","21","2014-10-02 13:29:53");
INSERT INTO tbl_activity VALUES("12581","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:29:55");
INSERT INTO tbl_activity VALUES("12582","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:30:04");
INSERT INTO tbl_activity VALUES("12583","Added Another Committee Meeting","21","2014-10-02 13:30:38");
INSERT INTO tbl_activity VALUES("12584","Viewed Committee Meeting ID: 86","21","2014-10-02 13:30:38");
INSERT INTO tbl_activity VALUES("12585","Viewed Committee Meeting ID: 86","21","2014-10-02 13:30:56");
INSERT INTO tbl_activity VALUES("12586","Assigned Date of Committe Report of Committee Meeting ID: 86","21","2014-10-02 13:30:56");
INSERT INTO tbl_activity VALUES("12587","Viewed Committee Meeting ID: 86","21","2014-10-02 13:30:57");
INSERT INTO tbl_activity VALUES("12588","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:30:59");
INSERT INTO tbl_activity VALUES("12589","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:31:03");
INSERT INTO tbl_activity VALUES("12590","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:31:11");
INSERT INTO tbl_activity VALUES("12591","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:31:17");
INSERT INTO tbl_activity VALUES("12592","Added Another Committee Meeting","21","2014-10-02 13:31:45");
INSERT INTO tbl_activity VALUES("12593","Viewed Committee Meeting ID: 87","21","2014-10-02 13:31:45");
INSERT INTO tbl_activity VALUES("12594","Viewed Committee Meeting ID: 87","21","2014-10-02 13:31:56");
INSERT INTO tbl_activity VALUES("12595","Assigned Date of Committe Report of Committee Meeting ID: 87","21","2014-10-02 13:31:56");
INSERT INTO tbl_activity VALUES("12596","Viewed Committee Meeting ID: 87","21","2014-10-02 13:31:56");
INSERT INTO tbl_activity VALUES("12597","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:32:01");
INSERT INTO tbl_activity VALUES("12598","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:32:07");
INSERT INTO tbl_activity VALUES("12599","Added Another Committee Meeting","21","2014-10-02 13:32:38");
INSERT INTO tbl_activity VALUES("12600","Viewed Committee Meeting ID: 88","21","2014-10-02 13:32:38");
INSERT INTO tbl_activity VALUES("12601","Viewed Committee Meeting ID: 88","21","2014-10-02 13:32:49");
INSERT INTO tbl_activity VALUES("12602","Assigned Date of Committe Report of Committee Meeting ID: 88","21","2014-10-02 13:32:50");
INSERT INTO tbl_activity VALUES("12603","Viewed Committee Meeting ID: 88","21","2014-10-02 13:32:50");
INSERT INTO tbl_activity VALUES("12604","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:32:52");
INSERT INTO tbl_activity VALUES("12605","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:32:56");
INSERT INTO tbl_activity VALUES("12606","Added Another Committee Meeting","21","2014-10-02 13:34:11");
INSERT INTO tbl_activity VALUES("12607","Viewed Committee Meeting ID: 89","21","2014-10-02 13:34:11");
INSERT INTO tbl_activity VALUES("12608","Viewed Committee Meeting ID: 89","21","2014-10-02 13:34:32");
INSERT INTO tbl_activity VALUES("12609","Assigned Date of Committe Report of Committee Meeting ID: 89","21","2014-10-02 13:34:32");
INSERT INTO tbl_activity VALUES("12610","Viewed Committee Meeting ID: 89","21","2014-10-02 13:34:32");
INSERT INTO tbl_activity VALUES("12611","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:34:34");
INSERT INTO tbl_activity VALUES("12612","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:34:39");
INSERT INTO tbl_activity VALUES("12613","Added Another Committee Meeting","21","2014-10-02 13:35:27");
INSERT INTO tbl_activity VALUES("12614","Viewed Committee Meeting ID: 90","21","2014-10-02 13:35:27");
INSERT INTO tbl_activity VALUES("12615","Viewed Committee Meeting ID: 90","21","2014-10-02 13:35:40");
INSERT INTO tbl_activity VALUES("12616","Assigned Date of Committe Report of Committee Meeting ID: 90","21","2014-10-02 13:35:40");
INSERT INTO tbl_activity VALUES("12617","Viewed Committee Meeting ID: 90","21","2014-10-02 13:35:41");
INSERT INTO tbl_activity VALUES("12618","Viewed List of Referrals for Committe Meeting","21","2014-10-02 13:35:43");
INSERT INTO tbl_activity VALUES("12619","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:35:45");
INSERT INTO tbl_activity VALUES("12620","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:35:50");
INSERT INTO tbl_activity VALUES("12621","Viewed List of Referral for Committee Meeting","21","2014-10-02 13:35:58");
INSERT INTO tbl_activity VALUES("12622","Viewed Committee Meeting List for Resolution","21","2014-10-02 13:36:24");
INSERT INTO tbl_activity VALUES("12623","Logged Out","21","2014-10-02 13:36:29");
INSERT INTO tbl_activity VALUES("12624","Logged In","23","2014-10-02 13:36:50");
INSERT INTO tbl_activity VALUES("12625","Return to Homepage","23","2014-10-02 13:36:50");
INSERT INTO tbl_activity VALUES("12626","Logged Out","23","2014-10-02 13:36:57");
INSERT INTO tbl_activity VALUES("12627","Logged In","21","2014-10-02 13:37:12");
INSERT INTO tbl_activity VALUES("12628","Return to Homepage","21","2014-10-02 13:37:12");
INSERT INTO tbl_activity VALUES("12629","Logged Out","21","2014-10-02 13:42:35");
INSERT INTO tbl_activity VALUES("12630","Logged In","24","2014-10-02 13:43:04");
INSERT INTO tbl_activity VALUES("12631","Return to Homepage","24","2014-10-02 13:43:05");
INSERT INTO tbl_activity VALUES("12632","Viewed Communication List","24","2014-10-02 13:43:24");
INSERT INTO tbl_activity VALUES("12633","Logged Out","24","2014-10-02 13:44:46");
INSERT INTO tbl_activity VALUES("12634","Logged In","21","2014-10-02 13:45:04");
INSERT INTO tbl_activity VALUES("12635","Return to Homepage","21","2014-10-02 13:45:07");
INSERT INTO tbl_activity VALUES("12636","Return to Homepage","21","2014-10-02 14:23:23");
INSERT INTO tbl_activity VALUES("12637","Return to Homepage","21","2014-10-02 14:23:37");
INSERT INTO tbl_activity VALUES("12638","Viewed Communication for Referral List","21","2014-10-02 14:35:57");
INSERT INTO tbl_activity VALUES("12639","Viewed List of Referrals for Committe Meeting","21","2014-10-02 14:36:00");
INSERT INTO tbl_activity VALUES("12640","Viewed List of Communication","21","2014-10-02 14:36:02");
INSERT INTO tbl_activity VALUES("12641","Viewed List of Communication","21","2014-10-02 14:36:05");
INSERT INTO tbl_activity VALUES("12642","Viewed List of Communication","21","2014-10-02 14:36:07");
INSERT INTO tbl_activity VALUES("12643","Viewed Communication for Referral List","21","2014-10-02 14:36:09");
INSERT INTO tbl_activity VALUES("12644","Viewed List of Communication","21","2014-10-02 14:36:10");
INSERT INTO tbl_activity VALUES("12645","Viewed List of Communication","21","2014-10-02 14:36:12");
INSERT INTO tbl_activity VALUES("12646","Viewed List of Communication","21","2014-10-02 14:36:16");
INSERT INTO tbl_activity VALUES("12647","Viewed List of Communication","21","2014-10-02 14:36:18");
INSERT INTO tbl_activity VALUES("12648","Viewed List of Communication","21","2014-10-02 14:36:19");
INSERT INTO tbl_activity VALUES("12649","Viewed List of Communication","21","2014-10-02 14:36:20");
INSERT INTO tbl_activity VALUES("12650","Viewed List of Communication","21","2014-10-02 14:36:21");
INSERT INTO tbl_activity VALUES("12651","Viewed List of Communication","21","2014-10-02 14:36:26");
INSERT INTO tbl_activity VALUES("12652","Viewed Communication for Referral List","21","2014-10-02 14:57:29");
INSERT INTO tbl_activity VALUES("12653","Viewed Committee Meeting List for Ordinance","21","2014-10-02 15:10:40");
INSERT INTO tbl_activity VALUES("12654","Viewed Committee Meeting List for Resolution","21","2014-10-02 15:10:44");
INSERT INTO tbl_activity VALUES("12655","Viewed List of Communication","21","2014-10-02 15:48:00");
INSERT INTO tbl_activity VALUES("12656","Logged In","21","2014-10-07 09:21:28");
INSERT INTO tbl_activity VALUES("12657","Return to Homepage","21","2014-10-07 09:21:28");
INSERT INTO tbl_activity VALUES("12658","Viewed List of Communication","21","2014-10-07 09:22:49");
INSERT INTO tbl_activity VALUES("12659","Viewed List of Communication","21","2014-10-07 09:37:10");
INSERT INTO tbl_activity VALUES("12660","Logged Out","21","2014-10-07 09:37:13");
INSERT INTO tbl_activity VALUES("12661","Logged In","22","2014-10-07 09:37:57");
INSERT INTO tbl_activity VALUES("12662","Return to Homepage","22","2014-10-07 09:37:58");
INSERT INTO tbl_activity VALUES("12663","Logged Out","22","2014-10-07 09:38:02");
INSERT INTO tbl_activity VALUES("12664","Logged In","24","2014-10-07 09:38:11");
INSERT INTO tbl_activity VALUES("12665","Return to Homepage","24","2014-10-07 09:38:11");
INSERT INTO tbl_activity VALUES("12666","Viewed Communication List","24","2014-10-07 09:52:42");
INSERT INTO tbl_activity VALUES("12667","Viewed Communication List","24","2014-10-07 10:01:49");
INSERT INTO tbl_activity VALUES("12668","Viewed Communication for Referral List","24","2014-10-07 10:04:30");
INSERT INTO tbl_activity VALUES("12669","Viewed List of Referral for Committee Meeting","24","2014-10-07 10:07:13");
INSERT INTO tbl_activity VALUES("12670","Viewed List of Referral for Committee Meeting","24","2014-10-07 10:07:23");
INSERT INTO tbl_activity VALUES("12671","Viewed Communication List","24","2014-10-07 10:15:24");
INSERT INTO tbl_activity VALUES("12672","Viewed Communication for Referral List","24","2014-10-07 10:16:24");
INSERT INTO tbl_activity VALUES("12673","Viewed List of Referral for Committee Meeting","24","2014-10-07 10:16:28");
INSERT INTO tbl_activity VALUES("12674","Viewed List of Referral for Committee Meeting","24","2014-10-07 10:16:31");
INSERT INTO tbl_activity VALUES("12675","Viewed Communication List","24","2014-10-07 10:27:48");
INSERT INTO tbl_activity VALUES("12676","Viewed Communication List","24","2014-10-07 10:34:43");
INSERT INTO tbl_activity VALUES("12677","Viewed Communication List","24","2014-10-07 11:14:20");
INSERT INTO tbl_activity VALUES("12678","Viewed Communication List","24","2014-10-07 12:04:52");
INSERT INTO tbl_activity VALUES("12679","Viewed Communication List","24","2014-10-07 12:05:41");
INSERT INTO tbl_activity VALUES("12680","Viewed Communication List","24","2014-10-07 12:17:17");
INSERT INTO tbl_activity VALUES("12681","Viewed Communication for Referral List","24","2014-10-07 12:20:13");
INSERT INTO tbl_activity VALUES("12682","Logged In","21","2014-10-08 08:32:05");
INSERT INTO tbl_activity VALUES("12683","Return to Homepage","21","2014-10-08 08:32:06");
INSERT INTO tbl_activity VALUES("12684","Viewed List of Communication","21","2014-10-08 08:32:44");
INSERT INTO tbl_activity VALUES("12685","Viewed List of Communication","21","2014-10-08 08:36:15");
INSERT INTO tbl_activity VALUES("12686","Viewed List of Communication","21","2014-10-08 08:36:22");
INSERT INTO tbl_activity VALUES("12687","Viewed List of Communication","21","2014-10-08 08:39:05");
INSERT INTO tbl_activity VALUES("12688","Viewed List of Communication","21","2014-10-08 08:45:19");
INSERT INTO tbl_activity VALUES("12689","Viewed List of Communication","21","2014-10-08 08:48:12");
INSERT INTO tbl_activity VALUES("12690","Viewed List of Communication","21","2014-10-08 08:52:29");
INSERT INTO tbl_activity VALUES("12691","Viewed List of Communication","21","2014-10-08 08:54:50");
INSERT INTO tbl_activity VALUES("12692","Viewed List of Communication","21","2014-10-08 08:57:56");
INSERT INTO tbl_activity VALUES("12693","Viewed List of Communication","21","2014-10-08 09:00:37");
INSERT INTO tbl_activity VALUES("12694","Viewed List of Communication","21","2014-10-08 09:00:45");
INSERT INTO tbl_activity VALUES("12695","Viewed List of Communication","21","2014-10-08 09:01:11");
INSERT INTO tbl_activity VALUES("12696","Viewed List of Communication","21","2014-10-08 09:03:17");
INSERT INTO tbl_activity VALUES("12697","Viewed List of Communication","21","2014-10-08 09:04:59");
INSERT INTO tbl_activity VALUES("12698","Viewed List of Communication","21","2014-10-08 09:05:21");
INSERT INTO tbl_activity VALUES("12699","Viewed List of Communication","21","2014-10-08 09:05:57");
INSERT INTO tbl_activity VALUES("12700","Viewed Communication for Referral List","21","2014-10-08 09:28:01");
INSERT INTO tbl_activity VALUES("12701","Viewed List of Communication","21","2014-10-08 09:50:49");
INSERT INTO tbl_activity VALUES("12702","Viewed Communication for Referral List","21","2014-10-08 09:59:20");
INSERT INTO tbl_activity VALUES("12703","Viewed List of Referrals for Committe Meeting","21","2014-10-08 09:59:22");
INSERT INTO tbl_activity VALUES("12704","Viewed List of Referral for Committee Meeting","21","2014-10-08 09:59:24");
INSERT INTO tbl_activity VALUES("12705","Viewed List of Referral for Committee Meeting","21","2014-10-08 09:59:28");
INSERT INTO tbl_activity VALUES("12706","Viewed List of Referral for Committee Meeting","21","2014-10-08 09:59:31");
INSERT INTO tbl_activity VALUES("12707","Viewed Communication for Referral List","21","2014-10-08 09:59:34");
INSERT INTO tbl_activity VALUES("12708","Viewed Committee Meeting List for Ordinance","21","2014-10-08 09:59:35");
INSERT INTO tbl_activity VALUES("12709","Viewed Committee Meeting List for Resolution","21","2014-10-08 09:59:37");
INSERT INTO tbl_activity VALUES("12710","Viewed Committee Meeting List for Resolution","21","2014-10-08 09:59:40");
INSERT INTO tbl_activity VALUES("12711","Viewed Committee Meeting List for Resolution","21","2014-10-08 09:59:41");
INSERT INTO tbl_activity VALUES("12712","Return to Homepage","21","2014-10-08 11:54:48");
INSERT INTO tbl_activity VALUES("12713","Return to Homepage","21","2014-10-08 11:57:11");
INSERT INTO tbl_activity VALUES("12714","Viewed Communication for Referral List","21","2014-10-08 11:57:37");
INSERT INTO tbl_activity VALUES("12715","Viewed List of Communication","21","2014-10-08 11:57:38");
INSERT INTO tbl_activity VALUES("12716","Viewed Committee Meeting List for Resolution","21","2014-10-08 11:58:41");
INSERT INTO tbl_activity VALUES("12717","Viewed Committee Meeting List for Resolution","21","2014-10-08 12:51:27");
INSERT INTO tbl_activity VALUES("12718","Viewed Committee Meeting List for Resolution","21","2014-10-08 12:54:54");
INSERT INTO tbl_activity VALUES("12719","Viewed Committee Meeting List for Resolution","21","2014-10-08 12:54:57");
INSERT INTO tbl_activity VALUES("12720","Viewed Committee Meeting List for Resolution","21","2014-10-08 12:55:21");
INSERT INTO tbl_activity VALUES("12721","Viewed Committee Meeting List for Resolution","21","2014-10-08 12:55:49");
INSERT INTO tbl_activity VALUES("12722","Viewed Committee Meeting List for Resolution","21","2014-10-08 12:55:51");
INSERT INTO tbl_activity VALUES("12723","Logged In","22","2014-10-08 14:42:53");
INSERT INTO tbl_activity VALUES("12724","Return to Homepage","22","2014-10-08 14:42:53");
INSERT INTO tbl_activity VALUES("12725","Viewed List of Communication","22","2014-10-08 14:43:10");
INSERT INTO tbl_activity VALUES("12726","Viewed Referral List","22","2014-10-08 14:43:18");
INSERT INTO tbl_activity VALUES("12727","Viewed Monitor Ordinance List","22","2014-10-08 14:44:21");
INSERT INTO tbl_activity VALUES("12728","Viewed List of Communication","22","2014-10-08 14:44:31");
INSERT INTO tbl_activity VALUES("12729","Return to Homepage","22","2014-10-08 14:44:32");
INSERT INTO tbl_activity VALUES("12730","Viewed List of Communication","21","2014-10-08 16:06:31");
INSERT INTO tbl_activity VALUES("12731","Logged Out","22","2014-10-08 16:10:20");
INSERT INTO tbl_activity VALUES("12732","Return to Homepage","21","2014-10-08 16:32:24");
INSERT INTO tbl_activity VALUES("12733","Logged In","21","2014-10-09 09:41:04");
INSERT INTO tbl_activity VALUES("12734","Return to Homepage","21","2014-10-09 09:41:04");
INSERT INTO tbl_activity VALUES("12735","Viewed List of Communication","21","2014-10-09 09:41:08");
INSERT INTO tbl_activity VALUES("12736","Viewed Committee Meeting List for Resolution","21","2014-10-09 09:44:54");
INSERT INTO tbl_activity VALUES("12737","Viewed List of Referral for Committee Meeting","21","2014-10-09 09:44:56");
INSERT INTO tbl_activity VALUES("12738","Viewed List of Referrals for Committe Meeting","21","2014-10-09 09:45:00");
INSERT INTO tbl_activity VALUES("12739","Viewed Communication for Referral List","21","2014-10-09 09:45:02");
INSERT INTO tbl_activity VALUES("12740","Viewed Committee Meeting List for Resolution","21","2014-10-09 09:45:04");
INSERT INTO tbl_activity VALUES("12741","Viewed Committee Meeting List for Ordinance","21","2014-10-09 09:45:06");
INSERT INTO tbl_activity VALUES("12742","Viewed Committee Meeting List for Resolution","21","2014-10-09 09:45:08");
INSERT INTO tbl_activity VALUES("12743","Viewed Committee Meeting List for Resolution","21","2014-10-09 09:55:00");
INSERT INTO tbl_activity VALUES("12744","Added Another Resolution","21","2014-10-09 09:57:51");
INSERT INTO tbl_activity VALUES("12745","Viewed Resolution No. 139 - 2014","21","2014-10-09 09:57:51");
INSERT INTO tbl_activity VALUES("12746","Viewed Committee Meeting List for Resolution","21","2014-10-09 09:57:54");
INSERT INTO tbl_activity VALUES("12747","Added Another Resolution","21","2014-10-09 10:04:33");
INSERT INTO tbl_activity VALUES("12748","Viewed Resolution No. 218 - 2014","21","2014-10-09 10:04:33");
INSERT INTO tbl_activity VALUES("12749","Viewed Committee Meeting List for Resolution","21","2014-10-09 10:04:37");
INSERT INTO tbl_activity VALUES("12750","Added Another Resolution","21","2014-10-09 10:07:23");
INSERT INTO tbl_activity VALUES("12751","Viewed Resolution No. 219 - 2014","21","2014-10-09 10:07:23");
INSERT INTO tbl_activity VALUES("12752","Viewed Committee Meeting List for Resolution","21","2014-10-09 10:07:27");
INSERT INTO tbl_activity VALUES("12753","Added Another Resolution","21","2014-10-09 10:18:51");
INSERT INTO tbl_activity VALUES("12754","Viewed Resolution No. 135 - 2014","21","2014-10-09 10:18:52");
INSERT INTO tbl_activity VALUES("12755","Viewed Committee Meeting List for Resolution","21","2014-10-09 10:19:06");
INSERT INTO tbl_activity VALUES("12756","Viewed Committee Meeting List for Resolution","21","2014-10-09 10:26:27");
INSERT INTO tbl_activity VALUES("12757","Added Another Resolution","21","2014-10-09 10:31:11");
INSERT INTO tbl_activity VALUES("12758","Viewed Resolution No. 205 - 2014","21","2014-10-09 10:31:12");
INSERT INTO tbl_activity VALUES("12759","Viewed Committee Meeting List for Resolution","21","2014-10-09 10:31:14");
INSERT INTO tbl_activity VALUES("12760","Added Another Resolution","21","2014-10-09 10:32:26");
INSERT INTO tbl_activity VALUES("12761","Viewed Resolution No. 221 - 2014","21","2014-10-09 10:32:26");
INSERT INTO tbl_activity VALUES("12762","Viewed Committee Meeting List for Resolution","21","2014-10-09 10:32:29");
INSERT INTO tbl_activity VALUES("12763","Viewed Committee Meeting List for Resolution","21","2014-10-09 10:34:02");
INSERT INTO tbl_activity VALUES("12764","Added Another Resolution","21","2014-10-09 10:35:45");
INSERT INTO tbl_activity VALUES("12765","Viewed Resolution No. 209 - 2014","21","2014-10-09 10:35:46");
INSERT INTO tbl_activity VALUES("12766","Viewed Committee Meeting List for Resolution","21","2014-10-09 10:35:49");
INSERT INTO tbl_activity VALUES("12767","Viewed Committee Meeting List for Resolution","21","2014-10-09 10:35:57");
INSERT INTO tbl_activity VALUES("12768","Added Another Resolution","21","2014-10-09 10:37:19");
INSERT INTO tbl_activity VALUES("12769","Viewed Resolution No. 090 - 2014","21","2014-10-09 10:37:19");
INSERT INTO tbl_activity VALUES("12770","Viewed Committee Meeting List for Resolution","21","2014-10-09 10:37:26");
INSERT INTO tbl_activity VALUES("12771","Viewed Committee Meeting List for Resolution","21","2014-10-09 10:37:34");
INSERT INTO tbl_activity VALUES("12772","Added Another Resolution","21","2014-10-09 10:38:34");
INSERT INTO tbl_activity VALUES("12773","Viewed Resolution No. 152 - 2014","21","2014-10-09 10:38:34");
INSERT INTO tbl_activity VALUES("12774","Viewed Committee Meeting List for Resolution","21","2014-10-09 10:38:37");
INSERT INTO tbl_activity VALUES("12775","Viewed Committee Meeting List for Resolution","21","2014-10-09 10:38:41");
INSERT INTO tbl_activity VALUES("12776","Viewed List of Communication","21","2014-10-09 10:39:46");
INSERT INTO tbl_activity VALUES("12777","Viewed Communication List","21","2014-10-09 10:39:49");
INSERT INTO tbl_activity VALUES("12778","Viewed Communication List","21","2014-10-09 10:39:53");
INSERT INTO tbl_activity VALUES("12779","Viewed Communication List","21","2014-10-09 10:39:55");
INSERT INTO tbl_activity VALUES("12780","Viewed Communication List","21","2014-10-09 10:40:28");
INSERT INTO tbl_activity VALUES("12781","Added Another Resolution","21","2014-10-09 10:41:28");
INSERT INTO tbl_activity VALUES("12782","Viewed Resolution No. 189 - 2014","21","2014-10-09 10:41:29");
INSERT INTO tbl_activity VALUES("12783","Viewed Committee Meeting List for Resolution","21","2014-10-09 10:41:31");
INSERT INTO tbl_activity VALUES("12784","Viewed Committee Meeting List for Resolution","21","2014-10-09 10:41:34");
INSERT INTO tbl_activity VALUES("12785","Added Another Resolution","21","2014-10-09 10:42:20");
INSERT INTO tbl_activity VALUES("12786","Viewed Resolution No. 151 - 2014","21","2014-10-09 10:42:20");
INSERT INTO tbl_activity VALUES("12787","Viewed Committee Meeting List for Resolution","21","2014-10-09 10:42:27");
INSERT INTO tbl_activity VALUES("12788","Viewed Committee Meeting List for Resolution","21","2014-10-09 10:42:29");
INSERT INTO tbl_activity VALUES("12789","Added Another Resolution","21","2014-10-09 10:47:02");
INSERT INTO tbl_activity VALUES("12790","Viewed Resolution No. 173 - 2014","21","2014-10-09 10:47:02");
INSERT INTO tbl_activity VALUES("12791","Viewed Committee Meeting List for Resolution","21","2014-10-09 10:47:04");
INSERT INTO tbl_activity VALUES("12792","Viewed Committee Meeting List for Resolution","21","2014-10-09 10:47:09");
INSERT INTO tbl_activity VALUES("12793","Added Another Resolution","21","2014-10-09 10:49:08");
INSERT INTO tbl_activity VALUES("12794","Viewed Resolution No. 064 - 2014","21","2014-10-09 10:49:08");
INSERT INTO tbl_activity VALUES("12795","Viewed Committee Meeting List for Resolution","21","2014-10-09 10:49:11");
INSERT INTO tbl_activity VALUES("12796","Viewed Committee Meeting List for Resolution","21","2014-10-09 10:49:14");
INSERT INTO tbl_activity VALUES("12797","Added Another Resolution","21","2014-10-09 10:51:22");
INSERT INTO tbl_activity VALUES("12798","Viewed Resolution No. 168 - 2014","21","2014-10-09 10:51:22");
INSERT INTO tbl_activity VALUES("12799","Viewed Committee Meeting List for Resolution","21","2014-10-09 10:51:25");
INSERT INTO tbl_activity VALUES("12800","Viewed Committee Meeting List for Resolution","21","2014-10-09 10:51:28");
INSERT INTO tbl_activity VALUES("12801","Added Another Resolution","21","2014-10-09 10:54:36");
INSERT INTO tbl_activity VALUES("12802","Viewed Resolution No. 071 - 2014","21","2014-10-09 10:54:36");
INSERT INTO tbl_activity VALUES("12803","Viewed Committee Meeting List for Resolution","21","2014-10-09 10:54:39");
INSERT INTO tbl_activity VALUES("12804","Viewed Committee Meeting List for Resolution","21","2014-10-09 10:54:43");
INSERT INTO tbl_activity VALUES("12805","Added Another Resolution","21","2014-10-09 10:57:12");
INSERT INTO tbl_activity VALUES("12806","Viewed Resolution No. 070 - 2014","21","2014-10-09 10:57:13");
INSERT INTO tbl_activity VALUES("12807","Viewed Committee Meeting List for Resolution","21","2014-10-09 10:57:15");
INSERT INTO tbl_activity VALUES("12808","Viewed Committee Meeting List for Resolution","21","2014-10-09 10:57:20");
INSERT INTO tbl_activity VALUES("12809","Viewed Committee Meeting List for Resolution","21","2014-10-09 10:57:37");
INSERT INTO tbl_activity VALUES("12810","Added Another Resolution","21","2014-10-09 10:58:28");
INSERT INTO tbl_activity VALUES("12811","Viewed Resolution No. 092 - 2014","21","2014-10-09 10:58:28");
INSERT INTO tbl_activity VALUES("12812","Viewed Committee Meeting List for Resolution","21","2014-10-09 10:58:32");
INSERT INTO tbl_activity VALUES("12813","Viewed Committee Meeting List for Resolution","21","2014-10-09 10:58:35");
INSERT INTO tbl_activity VALUES("12814","Viewed Committee Meeting List for Resolution","21","2014-10-09 10:58:36");
INSERT INTO tbl_activity VALUES("12815","Viewed Committee Meeting List for Resolution","21","2014-10-09 10:58:39");
INSERT INTO tbl_activity VALUES("12816","Added Another Resolution","21","2014-10-09 10:59:21");
INSERT INTO tbl_activity VALUES("12817","Viewed Resolution No. 130 - 2014","21","2014-10-09 10:59:21");
INSERT INTO tbl_activity VALUES("12818","Viewed Committee Meeting List for Resolution","21","2014-10-09 10:59:24");
INSERT INTO tbl_activity VALUES("12819","Viewed Committee Meeting List for Resolution","21","2014-10-09 10:59:41");
INSERT INTO tbl_activity VALUES("12820","Viewed List of Communication","21","2014-10-09 11:31:23");
INSERT INTO tbl_activity VALUES("12821","Return to Homepage","21","2014-10-09 11:32:19");
INSERT INTO tbl_activity VALUES("12822","Viewed Committee Meeting List for Resolution","21","2014-10-09 11:32:56");
INSERT INTO tbl_activity VALUES("12823","Viewed Resolution List","21","2014-10-09 11:32:59");
INSERT INTO tbl_activity VALUES("12824","Viewed Resolution List","21","2014-10-09 11:33:07");
INSERT INTO tbl_activity VALUES("12825","Viewed Resolution List","21","2014-10-09 11:33:11");
INSERT INTO tbl_activity VALUES("12826","Return to Homepage","21","2014-10-09 11:33:13");
INSERT INTO tbl_activity VALUES("12827","Added Another Resolution","21","2014-10-09 11:36:28");
INSERT INTO tbl_activity VALUES("12828","Viewed Resolution No. 127 - 2014","21","2014-10-09 11:36:28");
INSERT INTO tbl_activity VALUES("12829","Viewed Committee Meeting List for Resolution","21","2014-10-09 11:36:30");
INSERT INTO tbl_activity VALUES("12830","Viewed Committee Meeting List for Resolution","21","2014-10-09 11:36:36");
INSERT INTO tbl_activity VALUES("12831","Added Another Resolution","21","2014-10-09 11:43:42");
INSERT INTO tbl_activity VALUES("12832","Viewed Resolution No. 128 - 2014","21","2014-10-09 11:43:42");
INSERT INTO tbl_activity VALUES("12833","Viewed Committee Meeting List for Resolution","21","2014-10-09 11:43:46");
INSERT INTO tbl_activity VALUES("12834","Viewed Committee Meeting List for Resolution","21","2014-10-09 11:43:51");
INSERT INTO tbl_activity VALUES("12835","Added Another Resolution","21","2014-10-09 11:44:42");
INSERT INTO tbl_activity VALUES("12836","Viewed Resolution No. 166 - 2014","21","2014-10-09 11:44:42");
INSERT INTO tbl_activity VALUES("12837","Return to Homepage","21","2014-10-09 14:50:01");
INSERT INTO tbl_activity VALUES("12838","Viewed List of Communication","21","2014-10-09 14:50:22");
INSERT INTO tbl_activity VALUES("12839","Viewed Committee Meeting List for Resolution","21","2014-10-09 14:50:23");
INSERT INTO tbl_activity VALUES("12840","Viewed Committee Meeting List for Resolution","21","2014-10-09 14:50:25");
INSERT INTO tbl_activity VALUES("12841","Viewed Committee Meeting List for Resolution","21","2014-10-09 14:51:09");
INSERT INTO tbl_activity VALUES("12842","Viewed Committee Meeting List for Resolution","21","2014-10-09 14:51:12");
INSERT INTO tbl_activity VALUES("12843","Viewed Committee Meeting List for Resolution","21","2014-10-09 14:51:16");
INSERT INTO tbl_activity VALUES("12844","Viewed Resolution List","21","2014-10-09 14:51:25");
INSERT INTO tbl_activity VALUES("12845","Viewed Resolution List","21","2014-10-09 14:51:27");
INSERT INTO tbl_activity VALUES("12846","Viewed Committee Meeting List for Resolution","21","2014-10-09 14:51:34");
INSERT INTO tbl_activity VALUES("12847","Viewed Committee Meeting List for Resolution","21","2014-10-09 14:51:38");
INSERT INTO tbl_activity VALUES("12848","Viewed Committee Meeting List for Resolution","21","2014-10-09 14:51:38");
INSERT INTO tbl_activity VALUES("12849","Viewed Committee Meeting List for Resolution","21","2014-10-09 14:56:17");
INSERT INTO tbl_activity VALUES("12850","Viewed Resolution List","21","2014-10-09 14:56:20");
INSERT INTO tbl_activity VALUES("12851","Viewed Resolution List","21","2014-10-09 14:56:24");
INSERT INTO tbl_activity VALUES("12852","Viewed Resolution List","21","2014-10-09 15:03:33");
INSERT INTO tbl_activity VALUES("12853","Viewed Resolution List","21","2014-10-09 15:05:58");
INSERT INTO tbl_activity VALUES("12854","Viewed Resolution List","21","2014-10-09 15:06:03");
INSERT INTO tbl_activity VALUES("12855","Viewed Resolution List","21","2014-10-09 15:18:47");
INSERT INTO tbl_activity VALUES("12856","Viewed Resolution List","21","2014-10-09 15:19:37");
INSERT INTO tbl_activity VALUES("12857","Viewed Resolution List","21","2014-10-09 15:19:41");
INSERT INTO tbl_activity VALUES("12858","Viewed Resolution List","21","2014-10-09 15:20:07");
INSERT INTO tbl_activity VALUES("12859","Viewed Resolution List","21","2014-10-09 15:20:10");
INSERT INTO tbl_activity VALUES("12860","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:21:37");
INSERT INTO tbl_activity VALUES("12861","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:21:41");
INSERT INTO tbl_activity VALUES("12862","Viewed Resolution List","21","2014-10-09 15:21:56");
INSERT INTO tbl_activity VALUES("12863","Viewed Resolution List","21","2014-10-09 15:22:01");
INSERT INTO tbl_activity VALUES("12864","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:22:04");
INSERT INTO tbl_activity VALUES("12865","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:22:07");
INSERT INTO tbl_activity VALUES("12866","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:22:31");
INSERT INTO tbl_activity VALUES("12867","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:22:51");
INSERT INTO tbl_activity VALUES("12868","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:23:06");
INSERT INTO tbl_activity VALUES("12869","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:23:07");
INSERT INTO tbl_activity VALUES("12870","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:23:12");
INSERT INTO tbl_activity VALUES("12871","Viewed List of Communication","21","2014-10-09 15:23:31");
INSERT INTO tbl_activity VALUES("12872","Viewed Communication List","21","2014-10-09 15:23:35");
INSERT INTO tbl_activity VALUES("12873","Viewed Communication List","21","2014-10-09 15:23:38");
INSERT INTO tbl_activity VALUES("12874","Viewed Resolution List","21","2014-10-09 15:23:56");
INSERT INTO tbl_activity VALUES("12875","Viewed Resolution List","21","2014-10-09 15:24:01");
INSERT INTO tbl_activity VALUES("12876","Viewed Resolution List","21","2014-10-09 15:24:03");
INSERT INTO tbl_activity VALUES("12877","Viewed Resolution List","21","2014-10-09 15:24:05");
INSERT INTO tbl_activity VALUES("12878","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:24:07");
INSERT INTO tbl_activity VALUES("12879","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:24:50");
INSERT INTO tbl_activity VALUES("12880","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:24:54");
INSERT INTO tbl_activity VALUES("12881","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:24:59");
INSERT INTO tbl_activity VALUES("12882","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:25:02");
INSERT INTO tbl_activity VALUES("12883","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:25:06");
INSERT INTO tbl_activity VALUES("12884","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:25:10");
INSERT INTO tbl_activity VALUES("12885","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:25:16");
INSERT INTO tbl_activity VALUES("12886","Viewed Resolution List","21","2014-10-09 15:25:18");
INSERT INTO tbl_activity VALUES("12887","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:25:19");
INSERT INTO tbl_activity VALUES("12888","Viewed Resolution List","21","2014-10-09 15:25:20");
INSERT INTO tbl_activity VALUES("12889","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:25:22");
INSERT INTO tbl_activity VALUES("12890","Viewed Resolution List","21","2014-10-09 15:25:23");
INSERT INTO tbl_activity VALUES("12891","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:25:24");
INSERT INTO tbl_activity VALUES("12892","Viewed Resolution List","21","2014-10-09 15:25:25");
INSERT INTO tbl_activity VALUES("12893","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:25:26");
INSERT INTO tbl_activity VALUES("12894","Viewed List of Communication","21","2014-10-09 15:25:27");
INSERT INTO tbl_activity VALUES("12895","Return to Homepage","21","2014-10-09 15:25:29");
INSERT INTO tbl_activity VALUES("12896","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:25:33");
INSERT INTO tbl_activity VALUES("12897","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:25:38");
INSERT INTO tbl_activity VALUES("12898","Viewed List of Referral for Committee Meeting","21","2014-10-09 15:26:27");
INSERT INTO tbl_activity VALUES("12899","Viewed List of Referral for Committee Meeting","21","2014-10-09 15:26:30");
INSERT INTO tbl_activity VALUES("12900","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:26:33");
INSERT INTO tbl_activity VALUES("12901","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:26:47");
INSERT INTO tbl_activity VALUES("12902","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:26:59");
INSERT INTO tbl_activity VALUES("12903","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:27:09");
INSERT INTO tbl_activity VALUES("12904","Added Another Resolution","21","2014-10-09 15:27:50");
INSERT INTO tbl_activity VALUES("12905","Viewed Resolution No. 153 - 2014","21","2014-10-09 15:27:50");
INSERT INTO tbl_activity VALUES("12906","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:27:53");
INSERT INTO tbl_activity VALUES("12907","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:28:03");
INSERT INTO tbl_activity VALUES("12908","Viewed Communication List","21","2014-10-09 15:28:13");
INSERT INTO tbl_activity VALUES("12909","Viewed Communication List","21","2014-10-09 15:28:16");
INSERT INTO tbl_activity VALUES("12910","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:28:21");
INSERT INTO tbl_activity VALUES("12911","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:28:23");
INSERT INTO tbl_activity VALUES("12912","Viewed Resolution No. 153 - 2014","21","2014-10-09 15:28:43");
INSERT INTO tbl_activity VALUES("12913","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:34:33");
INSERT INTO tbl_activity VALUES("12914","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:34:36");
INSERT INTO tbl_activity VALUES("12915","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:35:17");
INSERT INTO tbl_activity VALUES("12916","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:35:20");
INSERT INTO tbl_activity VALUES("12917","Added Another Resolution","21","2014-10-09 15:36:48");
INSERT INTO tbl_activity VALUES("12918","Viewed Resolution No. 153 - 2014","21","2014-10-09 15:36:48");
INSERT INTO tbl_activity VALUES("12919","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:36:51");
INSERT INTO tbl_activity VALUES("12920","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:36:57");
INSERT INTO tbl_activity VALUES("12921","Added Another Resolution","21","2014-10-09 15:38:53");
INSERT INTO tbl_activity VALUES("12922","Viewed Resolution No. 210 - 2014","21","2014-10-09 15:38:53");
INSERT INTO tbl_activity VALUES("12923","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:38:55");
INSERT INTO tbl_activity VALUES("12924","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:39:03");
INSERT INTO tbl_activity VALUES("12925","Added Another Resolution","21","2014-10-09 15:40:34");
INSERT INTO tbl_activity VALUES("12926","Viewed Resolution No. 222 - 2014","21","2014-10-09 15:40:34");
INSERT INTO tbl_activity VALUES("12927","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:40:37");
INSERT INTO tbl_activity VALUES("12928","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:40:42");
INSERT INTO tbl_activity VALUES("12929","Added Another Resolution","21","2014-10-09 15:44:43");
INSERT INTO tbl_activity VALUES("12930","Viewed Resolution No. 179 - 2014","21","2014-10-09 15:44:43");
INSERT INTO tbl_activity VALUES("12931","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:45:05");
INSERT INTO tbl_activity VALUES("12932","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:45:12");
INSERT INTO tbl_activity VALUES("12933","Added Another Resolution","21","2014-10-09 15:46:22");
INSERT INTO tbl_activity VALUES("12934","Viewed Resolution No. 061 - 2014","21","2014-10-09 15:46:22");
INSERT INTO tbl_activity VALUES("12935","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:46:47");
INSERT INTO tbl_activity VALUES("12936","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:46:54");
INSERT INTO tbl_activity VALUES("12937","Added Another Resolution","21","2014-10-09 15:49:22");
INSERT INTO tbl_activity VALUES("12938","Viewed Resolution No. 208 - 2014","21","2014-10-09 15:49:22");
INSERT INTO tbl_activity VALUES("12939","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:49:24");
INSERT INTO tbl_activity VALUES("12940","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:49:30");
INSERT INTO tbl_activity VALUES("12941","Added Another Resolution","21","2014-10-09 15:50:26");
INSERT INTO tbl_activity VALUES("12942","Viewed Resolution No. 180 - 2014","21","2014-10-09 15:50:26");
INSERT INTO tbl_activity VALUES("12943","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:50:28");
INSERT INTO tbl_activity VALUES("12944","Viewed Committee Meeting List for Resolution","21","2014-10-09 15:50:32");
INSERT INTO tbl_activity VALUES("12945","Return to Homepage","21","2014-10-09 15:50:50");
INSERT INTO tbl_activity VALUES("12946","Viewed List of Communication","21","2014-10-09 15:51:26");
INSERT INTO tbl_activity VALUES("12947","Return to Homepage","21","2014-10-09 15:51:28");
INSERT INTO tbl_activity VALUES("12948","Viewed List of Communication","21","2014-10-09 15:56:52");
INSERT INTO tbl_activity VALUES("12949","Logged Out","21","2014-10-09 15:56:53");
INSERT INTO tbl_activity VALUES("12950","Logged In","23","2014-10-09 15:57:14");
INSERT INTO tbl_activity VALUES("12951","Return to Homepage","23","2014-10-09 15:57:14");
INSERT INTO tbl_activity VALUES("12952","Logged Out","23","2014-10-09 15:57:21");
INSERT INTO tbl_activity VALUES("12953","Logged In","22","2014-10-09 15:57:57");
INSERT INTO tbl_activity VALUES("12954","Return to Homepage","22","2014-10-09 15:57:58");
INSERT INTO tbl_activity VALUES("12955","Viewed Resolution List","22","2014-10-09 16:02:13");
INSERT INTO tbl_activity VALUES("12956","Logged Out","22","2014-10-09 16:02:18");
INSERT INTO tbl_activity VALUES("12957","Logged In","21","2014-10-09 16:11:28");
INSERT INTO tbl_activity VALUES("12958","Return to Homepage","21","2014-10-09 16:11:28");
INSERT INTO tbl_activity VALUES("12959","Viewed Committee Meeting List for Resolution","21","2014-10-09 16:11:33");
INSERT INTO tbl_activity VALUES("12960","Added Another Resolution","21","2014-10-09 16:16:02");
INSERT INTO tbl_activity VALUES("12961","Viewed Resolution No. 244 - 2014","21","2014-10-09 16:16:02");
INSERT INTO tbl_activity VALUES("12962","Viewed Committee Meeting List for Resolution","21","2014-10-09 16:16:06");
INSERT INTO tbl_activity VALUES("12963","Added Another Resolution","21","2014-10-09 16:17:10");
INSERT INTO tbl_activity VALUES("12964","Viewed Resolution No. 030 - 2014","21","2014-10-09 16:17:10");
INSERT INTO tbl_activity VALUES("12965","Viewed Committee Meeting List for Resolution","21","2014-10-09 16:17:12");
INSERT INTO tbl_activity VALUES("12966","Added Another Resolution","21","2014-10-09 16:18:21");
INSERT INTO tbl_activity VALUES("12967","Viewed Resolution No. 031 - 2014","21","2014-10-09 16:18:21");
INSERT INTO tbl_activity VALUES("12968","Viewed Committee Meeting List for Resolution","21","2014-10-09 16:18:24");
INSERT INTO tbl_activity VALUES("12969","Added Another Resolution","21","2014-10-09 16:19:18");
INSERT INTO tbl_activity VALUES("12970","Viewed Resolution No. 239 - 2014","21","2014-10-09 16:19:18");
INSERT INTO tbl_activity VALUES("12971","Viewed Committee Meeting List for Resolution","21","2014-10-09 16:19:21");
INSERT INTO tbl_activity VALUES("12972","Added Another Resolution","21","2014-10-09 16:20:02");
INSERT INTO tbl_activity VALUES("12973","Viewed Resolution No. 240 - 2014","21","2014-10-09 16:20:02");
INSERT INTO tbl_activity VALUES("12974","Viewed Committee Meeting List for Resolution","21","2014-10-09 16:20:04");
INSERT INTO tbl_activity VALUES("12975","Added Another Resolution","21","2014-10-09 16:20:58");
INSERT INTO tbl_activity VALUES("12976","Viewed Resolution No. 241 - 2014","21","2014-10-09 16:20:58");
INSERT INTO tbl_activity VALUES("12977","Viewed Committee Meeting List for Resolution","21","2014-10-09 16:21:01");
INSERT INTO tbl_activity VALUES("12978","Viewed Committee Meeting List for Resolution","21","2014-10-09 16:23:33");
INSERT INTO tbl_activity VALUES("12979","Viewed Committee Meeting List for Resolution","21","2014-10-09 16:23:35");
INSERT INTO tbl_activity VALUES("12980","Added Another Resolution","21","2014-10-09 16:24:40");
INSERT INTO tbl_activity VALUES("12981","Viewed Resolution No. 251 - 2014","21","2014-10-09 16:24:46");
INSERT INTO tbl_activity VALUES("12982","Viewed Committee Meeting List for Resolution","21","2014-10-09 16:26:01");
INSERT INTO tbl_activity VALUES("12983","Viewed Committee Meeting List for Resolution","21","2014-10-09 16:26:12");
INSERT INTO tbl_activity VALUES("12984","Viewed Committee Meeting List for Resolution","21","2014-10-09 16:28:42");
INSERT INTO tbl_activity VALUES("12985","Viewed Resolution List","21","2014-10-09 16:28:44");
INSERT INTO tbl_activity VALUES("12986","Viewed Resolution List","21","2014-10-09 16:28:47");
INSERT INTO tbl_activity VALUES("12987","Viewed Resolution List","21","2014-10-09 16:29:02");
INSERT INTO tbl_activity VALUES("12988","Viewed Committee Meeting List for Resolution","21","2014-10-09 16:29:15");
INSERT INTO tbl_activity VALUES("12989","Viewed Committee Meeting List for Resolution","21","2014-10-09 16:29:58");
INSERT INTO tbl_activity VALUES("12990","Added Another Resolution","21","2014-10-09 16:30:44");
INSERT INTO tbl_activity VALUES("12991","Viewed Resolution No. 252 - 2014","21","2014-10-09 16:30:45");
INSERT INTO tbl_activity VALUES("12992","Viewed Committee Meeting List for Resolution","21","2014-10-09 16:30:47");
INSERT INTO tbl_activity VALUES("12993","Viewed Committee Meeting List for Resolution","21","2014-10-09 16:30:51");
INSERT INTO tbl_activity VALUES("12994","Viewed Committee Meeting List for Resolution","21","2014-10-09 16:30:52");
INSERT INTO tbl_activity VALUES("12995","Added Another Resolution","21","2014-10-09 16:31:43");
INSERT INTO tbl_activity VALUES("12996","Viewed Resolution No. 253 - 2014","21","2014-10-09 16:31:43");
INSERT INTO tbl_activity VALUES("12997","Viewed Resolution List","21","2014-10-09 16:32:14");
INSERT INTO tbl_activity VALUES("12998","Viewed List of Communication","21","2014-10-09 16:32:18");
INSERT INTO tbl_activity VALUES("12999","Viewed Committee Meeting List for Resolution","21","2014-10-09 16:32:20");
INSERT INTO tbl_activity VALUES("13000","Viewed Committee Meeting List for Resolution","21","2014-10-09 16:32:23");
INSERT INTO tbl_activity VALUES("13001","Added Another Resolution","21","2014-10-09 16:33:38");
INSERT INTO tbl_activity VALUES("13002","Viewed Resolution No. 248 - 2014","21","2014-10-09 16:33:38");
INSERT INTO tbl_activity VALUES("13003","Viewed Committee Meeting List for Resolution","21","2014-10-09 16:33:40");
INSERT INTO tbl_activity VALUES("13004","Viewed Committee Meeting List for Resolution","21","2014-10-09 16:33:46");
INSERT INTO tbl_activity VALUES("13005","Added Another Resolution","21","2014-10-09 16:35:14");
INSERT INTO tbl_activity VALUES("13006","Viewed Resolution No. 265 - 2014","21","2014-10-09 16:35:14");
INSERT INTO tbl_activity VALUES("13007","Viewed Committee Meeting List for Resolution","21","2014-10-09 16:35:16");
INSERT INTO tbl_activity VALUES("13008","Viewed Committee Meeting List for Resolution","21","2014-10-09 16:35:19");
INSERT INTO tbl_activity VALUES("13009","Viewed Resolution List","21","2014-10-09 16:35:56");
INSERT INTO tbl_activity VALUES("13010","Added Another Resolution","21","2014-10-09 16:36:50");
INSERT INTO tbl_activity VALUES("13011","Viewed Resolution No. 250 - 2014","21","2014-10-09 16:36:50");
INSERT INTO tbl_activity VALUES("13012","Viewed Committee Meeting List for Resolution","21","2014-10-09 16:36:52");
INSERT INTO tbl_activity VALUES("13013","Viewed Committee Meeting List for Resolution","21","2014-10-09 16:37:00");
INSERT INTO tbl_activity VALUES("13014","Viewed Committee Meeting List for Resolution","21","2014-10-09 16:37:38");
INSERT INTO tbl_activity VALUES("13015","Viewed List of Communication","21","2014-10-09 16:37:42");
INSERT INTO tbl_activity VALUES("13016","Viewed List of Communication","21","2014-10-09 16:37:44");
INSERT INTO tbl_activity VALUES("13017","Return to Homepage","21","2014-10-09 16:37:46");
INSERT INTO tbl_activity VALUES("13018","Return to Homepage","21","2014-10-09 16:38:58");
INSERT INTO tbl_activity VALUES("13019","Logged In","21","2014-10-10 08:23:35");
INSERT INTO tbl_activity VALUES("13020","Return to Homepage","21","2014-10-10 08:23:35");
INSERT INTO tbl_activity VALUES("13021","Return to Homepage","21","2014-10-10 08:23:38");
INSERT INTO tbl_activity VALUES("13022","Logged In","21","2014-10-10 08:25:36");
INSERT INTO tbl_activity VALUES("13023","Return to Homepage","21","2014-10-10 08:25:37");
INSERT INTO tbl_activity VALUES("13024","Return to Homepage","21","2014-10-10 08:25:52");
INSERT INTO tbl_activity VALUES("13025","Return to Homepage","21","2014-10-10 08:25:56");
INSERT INTO tbl_activity VALUES("13026","Logged In","21","2014-10-10 08:33:07");
INSERT INTO tbl_activity VALUES("13027","Return to Homepage","21","2014-10-10 08:33:08");
INSERT INTO tbl_activity VALUES("13028","Return to Homepage","21","2014-10-10 08:33:14");
INSERT INTO tbl_activity VALUES("13029","Viewed Communication for Referral List","21","2014-10-10 08:34:07");
INSERT INTO tbl_activity VALUES("13030","Viewed List of Communication","21","2014-10-10 08:34:09");
INSERT INTO tbl_activity VALUES("13031","Viewed Committee Meeting List for Resolution","21","2014-10-10 08:34:12");
INSERT INTO tbl_activity VALUES("13032","Viewed Committee Meeting List for Resolution","21","2014-10-10 08:34:19");
INSERT INTO tbl_activity VALUES("13033","Viewed List of Referral for Committee Meeting","21","2014-10-10 08:34:23");
INSERT INTO tbl_activity VALUES("13034","Viewed List of Referral for Committee Meeting","21","2014-10-10 08:34:29");
INSERT INTO tbl_activity VALUES("13035","Viewed List of Referral for Committee Meeting","21","2014-10-10 08:34:38");
INSERT INTO tbl_activity VALUES("13036","Viewed List of Communication","21","2014-10-10 08:34:41");
INSERT INTO tbl_activity VALUES("13037","Logged Out","21","2014-10-10 08:36:46");
INSERT INTO tbl_activity VALUES("13038","Logged In","21","2014-10-10 08:42:15");
INSERT INTO tbl_activity VALUES("13039","Return to Homepage","21","2014-10-10 08:42:15");
INSERT INTO tbl_activity VALUES("13040","Logged In","23","2014-10-10 09:02:08");
INSERT INTO tbl_activity VALUES("13041","Return to Homepage","23","2014-10-10 09:02:09");
INSERT INTO tbl_activity VALUES("13042","Viewed Committee Meeting List for Resolution","23","2014-10-10 09:02:27");
INSERT INTO tbl_activity VALUES("13043","Added Another Resolution","23","2014-10-10 09:12:45");
INSERT INTO tbl_activity VALUES("13044","Viewed Resolution No. 028 - 2014","23","2014-10-10 09:12:45");
INSERT INTO tbl_activity VALUES("13045","Viewed Committee Meeting List for Resolution","23","2014-10-10 09:12:53");
INSERT INTO tbl_activity VALUES("13046","Viewed Committee Meeting List for Ordinance","23","2014-10-10 09:13:49");
INSERT INTO tbl_activity VALUES("13047","Viewed Committee Meeting List for Resolution","23","2014-10-10 09:13:59");
INSERT INTO tbl_activity VALUES("13048","Viewed Committee Meeting List for Resolution","23","2014-10-10 09:19:43");
INSERT INTO tbl_activity VALUES("13049","Viewed Committee Meeting List for Resolution","23","2014-10-10 09:19:54");
INSERT INTO tbl_activity VALUES("13050","Viewed Committee Meeting List for Resolution","23","2014-10-10 09:20:04");
INSERT INTO tbl_activity VALUES("13051","Viewed Committee Meeting List","23","2014-10-10 09:20:33");
INSERT INTO tbl_activity VALUES("13052","Viewed Committee Meeting List","23","2014-10-10 09:20:38");
INSERT INTO tbl_activity VALUES("13053","Viewed Referral List","23","2014-10-10 09:21:29");
INSERT INTO tbl_activity VALUES("13054","Logged Out","23","2014-10-10 09:21:31");
INSERT INTO tbl_activity VALUES("13055","Logged In","24","2014-10-10 09:21:53");
INSERT INTO tbl_activity VALUES("13056","Return to Homepage","24","2014-10-10 09:21:54");
INSERT INTO tbl_activity VALUES("13057","Viewed Communication for Referral List","24","2014-10-10 09:21:59");
INSERT INTO tbl_activity VALUES("13058","Viewed List of Referral for Committee Meeting","24","2014-10-10 09:22:06");
INSERT INTO tbl_activity VALUES("13059","Viewed List of Referral for Committee Meeting","24","2014-10-10 09:22:11");
INSERT INTO tbl_activity VALUES("13060","Viewed List of Referral for Committee Meeting","24","2014-10-10 09:22:13");
INSERT INTO tbl_activity VALUES("13061","Viewed List of Referral for Committee Meeting","24","2014-10-10 09:22:14");
INSERT INTO tbl_activity VALUES("13062","Viewed Communication for Referral List","24","2014-10-10 09:23:11");
INSERT INTO tbl_activity VALUES("13063","Viewed Communication List","24","2014-10-10 09:23:13");
INSERT INTO tbl_activity VALUES("13064","Viewed List of Referral for Committee Meeting","24","2014-10-10 09:23:15");
INSERT INTO tbl_activity VALUES("13065","Viewed Communication for Referral List","24","2014-10-10 09:23:17");
INSERT INTO tbl_activity VALUES("13066","Viewed List of Referral for Committee Meeting","24","2014-10-10 09:23:21");
INSERT INTO tbl_activity VALUES("13067","Viewed List of Referral for Committee Meeting","24","2014-10-10 09:23:46");
INSERT INTO tbl_activity VALUES("13068","Viewed List of Referral for Committee Meeting","24","2014-10-10 09:23:51");
INSERT INTO tbl_activity VALUES("13069","Viewed List of Communication","21","2014-10-10 10:43:14");
INSERT INTO tbl_activity VALUES("13070","Return to Homepage","21","2014-10-10 11:09:15");
INSERT INTO tbl_activity VALUES("13071","Return to Homepage","21","2014-10-10 11:09:38");
INSERT INTO tbl_activity VALUES("13072","Viewed List of Communication","21","2014-10-10 11:43:49");
INSERT INTO tbl_activity VALUES("13073","Assigned 2014 - 0006 To An Urgent Communication","21","2014-10-10 11:45:06");
INSERT INTO tbl_activity VALUES("13074","Viewed List of Communication","21","2014-10-10 11:45:06");
INSERT INTO tbl_activity VALUES("13075","Assigned 2014 - 0023 To An Urgent Communication","21","2014-10-10 11:46:02");
INSERT INTO tbl_activity VALUES("13076","Viewed List of Communication","21","2014-10-10 11:46:02");
INSERT INTO tbl_activity VALUES("13077","Viewed List of Communication","21","2014-10-10 11:46:54");
INSERT INTO tbl_activity VALUES("13078","Viewed List of Communication","21","2014-10-10 11:47:00");
INSERT INTO tbl_activity VALUES("13079","Assigned 2014 - 0024 To An Urgent Communication","21","2014-10-10 11:47:29");
INSERT INTO tbl_activity VALUES("13080","Viewed List of Communication","21","2014-10-10 11:47:30");
INSERT INTO tbl_activity VALUES("13081","Assigned 2014 - 0025 To An Urgent Communication","21","2014-10-10 11:48:29");
INSERT INTO tbl_activity VALUES("13082","Viewed List of Communication","21","2014-10-10 11:49:10");
INSERT INTO tbl_activity VALUES("13083","Viewed Committee Meeting List for Resolution","21","2014-10-10 12:04:45");
INSERT INTO tbl_activity VALUES("13084","Assigned 2014 - 0027 To An Urgent Communication","21","2014-10-10 12:04:45");
INSERT INTO tbl_activity VALUES("13085","Viewed List of Communication","21","2014-10-10 12:04:45");
INSERT INTO tbl_activity VALUES("13086","Assigned 2014 - 0030 To An Urgent Communication","21","2014-10-10 12:04:53");
INSERT INTO tbl_activity VALUES("13087","Viewed List of Communication","21","2014-10-10 12:04:53");
INSERT INTO tbl_activity VALUES("13088","Assigned 2014 - 0038 To An Urgent Communication","21","2014-10-10 12:05:43");
INSERT INTO tbl_activity VALUES("13089","Viewed List of Communication","21","2014-10-10 12:05:43");
INSERT INTO tbl_activity VALUES("13090","Assigned 2014 - 0039 To An Urgent Communication","21","2014-10-10 12:06:34");
INSERT INTO tbl_activity VALUES("13091","Viewed List of Communication","21","2014-10-10 12:06:34");
INSERT INTO tbl_activity VALUES("13092","Assigned 2014 - 0040 To An Urgent Communication","21","2014-10-10 12:06:42");
INSERT INTO tbl_activity VALUES("13093","Viewed List of Communication","21","2014-10-10 12:06:42");
INSERT INTO tbl_activity VALUES("13094","Assigned 2014 - 0041 To An Urgent Communication","21","2014-10-10 12:07:12");
INSERT INTO tbl_activity VALUES("13095","Viewed List of Communication","21","2014-10-10 12:07:12");
INSERT INTO tbl_activity VALUES("13096","Viewed List of Communication","21","2014-10-10 12:10:18");
INSERT INTO tbl_activity VALUES("13097","Viewed List of Communication","21","2014-10-10 12:12:27");
INSERT INTO tbl_activity VALUES("13098","Viewed List of Communication","21","2014-10-10 12:13:08");
INSERT INTO tbl_activity VALUES("13099","Viewed List of Communication","21","2014-10-10 12:17:07");
INSERT INTO tbl_activity VALUES("13100","Viewed List of Communication","21","2014-10-10 12:18:18");
INSERT INTO tbl_activity VALUES("13101","Viewed List of Communication","21","2014-10-10 12:19:43");
INSERT INTO tbl_activity VALUES("13102","Assigned 2014 - 0060 To An Urgent Communication","21","2014-10-10 12:20:13");
INSERT INTO tbl_activity VALUES("13103","Viewed List of Communication","21","2014-10-10 12:20:13");
INSERT INTO tbl_activity VALUES("13104","Assigned 2014 - 0060 To An Urgent Communication","21","2014-10-10 12:20:36");
INSERT INTO tbl_activity VALUES("13105","Viewed List of Communication","21","2014-10-10 12:20:37");
INSERT INTO tbl_activity VALUES("13106","Viewed List of Communication","21","2014-10-10 12:27:28");
INSERT INTO tbl_activity VALUES("13107","Viewed Committee Meeting List for Resolution","21","2014-10-10 12:28:10");
INSERT INTO tbl_activity VALUES("13108","Viewed Committee Meeting List for Resolution","21","2014-10-10 12:29:41");
INSERT INTO tbl_activity VALUES("13109","Viewed List of Communication","21","2014-10-10 12:29:41");
INSERT INTO tbl_activity VALUES("13110","Viewed Committee Meeting List for Resolution","21","2014-10-10 12:30:57");
INSERT INTO tbl_activity VALUES("13111","Viewed List of Communication","21","2014-10-10 12:31:00");
INSERT INTO tbl_activity VALUES("13112","Viewed Committee Meeting List for Resolution","21","2014-10-10 12:31:02");
INSERT INTO tbl_activity VALUES("13113","Viewed Committee Meeting List for Resolution","21","2014-10-10 12:31:06");
INSERT INTO tbl_activity VALUES("13114","Viewed List of Communication","21","2014-10-10 12:50:37");
INSERT INTO tbl_activity VALUES("13115","Viewed List of Communication","21","2014-10-10 12:50:43");
INSERT INTO tbl_activity VALUES("13116","Assigned 2014 - 0083 To An Urgent Communication","21","2014-10-10 12:52:09");
INSERT INTO tbl_activity VALUES("13117","Viewed List of Communication","21","2014-10-10 12:52:09");
INSERT INTO tbl_activity VALUES("13118","Viewed List of Communication","21","2014-10-10 12:52:25");
INSERT INTO tbl_activity VALUES("13119","Assigned 2014 - 0091 To An Urgent Communication","21","2014-10-10 12:52:58");
INSERT INTO tbl_activity VALUES("13120","Viewed List of Communication","21","2014-10-10 12:52:58");
INSERT INTO tbl_activity VALUES("13121","Viewed List of Communication","21","2014-10-10 12:53:01");
INSERT INTO tbl_activity VALUES("13122","Assigned 2014 - 0092 To An Urgent Communication","21","2014-10-10 12:53:16");
INSERT INTO tbl_activity VALUES("13123","Viewed List of Communication","21","2014-10-10 12:53:16");
INSERT INTO tbl_activity VALUES("13124","Viewed List of Communication","21","2014-10-10 12:53:35");
INSERT INTO tbl_activity VALUES("13125","Viewed List of Communication","21","2014-10-10 12:53:36");
INSERT INTO tbl_activity VALUES("13126","Assigned 2014 - 0109 To An Urgent Communication","21","2014-10-10 12:54:03");
INSERT INTO tbl_activity VALUES("13127","Viewed List of Communication","21","2014-10-10 12:54:03");
INSERT INTO tbl_activity VALUES("13128","Viewed List of Communication","21","2014-10-10 12:54:12");
INSERT INTO tbl_activity VALUES("13129","Assigned 2014 - 0110 To An Urgent Communication","21","2014-10-10 12:54:52");
INSERT INTO tbl_activity VALUES("13130","Viewed List of Communication","21","2014-10-10 12:54:52");
INSERT INTO tbl_activity VALUES("13131","Viewed List of Communication","21","2014-10-10 12:54:56");
INSERT INTO tbl_activity VALUES("13132","Assigned 2014 - 0111 To An Urgent Communication","21","2014-10-10 12:55:00");
INSERT INTO tbl_activity VALUES("13133","Viewed List of Communication","21","2014-10-10 12:55:00");
INSERT INTO tbl_activity VALUES("13134","Viewed List of Communication","21","2014-10-10 12:55:02");
INSERT INTO tbl_activity VALUES("13135","Assigned 2014 - 0112 To An Urgent Communication","21","2014-10-10 12:55:04");
INSERT INTO tbl_activity VALUES("13136","Viewed List of Communication","21","2014-10-10 12:55:05");
INSERT INTO tbl_activity VALUES("13137","Viewed List of Communication","21","2014-10-10 12:55:13");
INSERT INTO tbl_activity VALUES("13138","Assigned 2014 - 0115 To An Urgent Communication","21","2014-10-10 12:55:46");
INSERT INTO tbl_activity VALUES("13139","Viewed List of Communication","21","2014-10-10 12:55:46");
INSERT INTO tbl_activity VALUES("13140","Viewed List of Communication","21","2014-10-10 12:55:48");
INSERT INTO tbl_activity VALUES("13141","Assigned 2014 - 0116 To An Urgent Communication","21","2014-10-10 12:55:51");
INSERT INTO tbl_activity VALUES("13142","Viewed List of Communication","21","2014-10-10 12:55:51");
INSERT INTO tbl_activity VALUES("13143","Viewed List of Communication","21","2014-10-10 12:55:55");
INSERT INTO tbl_activity VALUES("13144","Viewed List of Communication","21","2014-10-10 12:56:13");
INSERT INTO tbl_activity VALUES("13145","Viewed List of Communication","21","2014-10-10 12:56:15");
INSERT INTO tbl_activity VALUES("13146","Viewed List of Communication","21","2014-10-10 12:56:18");
INSERT INTO tbl_activity VALUES("13147","Viewed Committee Meeting List for Resolution","21","2014-10-10 12:57:47");
INSERT INTO tbl_activity VALUES("13148","Viewed Committee Meeting List for Resolution","21","2014-10-10 12:57:53");
INSERT INTO tbl_activity VALUES("13149","Viewed Committee Meeting List for Resolution","21","2014-10-10 12:57:56");
INSERT INTO tbl_activity VALUES("13150","Viewed Committee Meeting List for Resolution","21","2014-10-10 12:57:58");
INSERT INTO tbl_activity VALUES("13151","Assigned 2014 - 0144 To An Urgent Communication","21","2014-10-10 13:00:07");
INSERT INTO tbl_activity VALUES("13152","Viewed List of Communication","21","2014-10-10 13:00:07");
INSERT INTO tbl_activity VALUES("13153","Viewed List of Communication","21","2014-10-10 13:00:09");
INSERT INTO tbl_activity VALUES("13154","Assigned 2014 - 0145 To An Urgent Communication","21","2014-10-10 13:00:12");
INSERT INTO tbl_activity VALUES("13155","Viewed List of Communication","21","2014-10-10 13:00:12");
INSERT INTO tbl_activity VALUES("13156","Viewed List of Communication","21","2014-10-10 13:00:14");
INSERT INTO tbl_activity VALUES("13157","Assigned 2014 - 0146 To An Urgent Communication","21","2014-10-10 13:00:16");
INSERT INTO tbl_activity VALUES("13158","Viewed List of Communication","21","2014-10-10 13:00:16");
INSERT INTO tbl_activity VALUES("13159","Viewed List of Communication","21","2014-10-10 13:00:18");
INSERT INTO tbl_activity VALUES("13160","Assigned 2014 - 0147 To An Urgent Communication","21","2014-10-10 13:00:19");
INSERT INTO tbl_activity VALUES("13161","Viewed List of Communication","21","2014-10-10 13:00:19");
INSERT INTO tbl_activity VALUES("13162","Viewed List of Communication","21","2014-10-10 13:00:29");
INSERT INTO tbl_activity VALUES("13163","Assigned 2014 - 0157 To An Urgent Communication","21","2014-10-10 13:01:09");
INSERT INTO tbl_activity VALUES("13164","Viewed List of Communication","21","2014-10-10 13:01:09");
INSERT INTO tbl_activity VALUES("13165","Viewed List of Communication","21","2014-10-10 13:01:11");
INSERT INTO tbl_activity VALUES("13166","Assigned 2014 - 0158 To An Urgent Communication","21","2014-10-10 13:01:15");
INSERT INTO tbl_activity VALUES("13167","Viewed List of Communication","21","2014-10-10 13:01:15");
INSERT INTO tbl_activity VALUES("13168","Viewed List of Communication","21","2014-10-10 13:01:28");
INSERT INTO tbl_activity VALUES("13169","Assigned 2014 - 0172 To An Urgent Communication","21","2014-10-10 13:01:56");
INSERT INTO tbl_activity VALUES("13170","Viewed List of Communication","21","2014-10-10 13:01:56");
INSERT INTO tbl_activity VALUES("13171","Viewed List of Communication","21","2014-10-10 13:01:59");
INSERT INTO tbl_activity VALUES("13172","Assigned 2014 - 0178 To An Urgent Communication","21","2014-10-10 13:02:24");
INSERT INTO tbl_activity VALUES("13173","Viewed List of Communication","21","2014-10-10 13:02:24");
INSERT INTO tbl_activity VALUES("13174","Viewed List of Communication","21","2014-10-10 13:02:28");
INSERT INTO tbl_activity VALUES("13175","Assigned 2014 - 0179 To An Urgent Communication","21","2014-10-10 13:03:08");
INSERT INTO tbl_activity VALUES("13176","Viewed List of Communication","21","2014-10-10 13:03:08");
INSERT INTO tbl_activity VALUES("13177","Viewed List of Communication","21","2014-10-10 13:03:10");
INSERT INTO tbl_activity VALUES("13178","Assigned 2014 - 0180 To An Urgent Communication","21","2014-10-10 13:03:13");
INSERT INTO tbl_activity VALUES("13179","Viewed List of Communication","21","2014-10-10 13:03:13");
INSERT INTO tbl_activity VALUES("13180","Viewed List of Communication","21","2014-10-10 13:03:19");
INSERT INTO tbl_activity VALUES("13181","Assigned 2014 - 0183 To An Urgent Communication","21","2014-10-10 13:03:46");
INSERT INTO tbl_activity VALUES("13182","Viewed List of Communication","21","2014-10-10 13:03:46");
INSERT INTO tbl_activity VALUES("13183","Viewed List of Communication","21","2014-10-10 13:03:48");
INSERT INTO tbl_activity VALUES("13184","Assigned 2014 - 0184 To An Urgent Communication","21","2014-10-10 13:03:52");
INSERT INTO tbl_activity VALUES("13185","Viewed List of Communication","21","2014-10-10 13:03:52");
INSERT INTO tbl_activity VALUES("13186","Viewed List of Communication","21","2014-10-10 13:03:54");
INSERT INTO tbl_activity VALUES("13187","Viewed List of Communication","21","2014-10-10 13:04:00");
INSERT INTO tbl_activity VALUES("13188","Viewed List of Communication","21","2014-10-10 13:04:07");
INSERT INTO tbl_activity VALUES("13189","Assigned 2014 - 0198 To An Urgent Communication","21","2014-10-10 13:04:43");
INSERT INTO tbl_activity VALUES("13190","Viewed List of Communication","21","2014-10-10 13:04:43");
INSERT INTO tbl_activity VALUES("13191","Viewed List of Communication","21","2014-10-10 13:04:45");
INSERT INTO tbl_activity VALUES("13192","Assigned 2014 - 0199 To An Urgent Communication","21","2014-10-10 13:04:48");
INSERT INTO tbl_activity VALUES("13193","Viewed List of Communication","21","2014-10-10 13:04:48");
INSERT INTO tbl_activity VALUES("13194","Viewed List of Communication","21","2014-10-10 13:04:50");
INSERT INTO tbl_activity VALUES("13195","Assigned 2014 - 0200 To An Urgent Communication","21","2014-10-10 13:04:52");
INSERT INTO tbl_activity VALUES("13196","Viewed List of Communication","21","2014-10-10 13:04:52");
INSERT INTO tbl_activity VALUES("13197","Viewed List of Communication","21","2014-10-10 13:04:56");
INSERT INTO tbl_activity VALUES("13198","Assigned 2014 - 0210 To An Urgent Communication","21","2014-10-10 13:05:27");
INSERT INTO tbl_activity VALUES("13199","Viewed List of Communication","21","2014-10-10 13:05:27");
INSERT INTO tbl_activity VALUES("13200","Viewed List of Communication","21","2014-10-10 13:05:29");
INSERT INTO tbl_activity VALUES("13201","Assigned 2014 - 0225 To An Urgent Communication","21","2014-10-10 13:06:29");
INSERT INTO tbl_activity VALUES("13202","Viewed List of Communication","21","2014-10-10 13:06:29");
INSERT INTO tbl_activity VALUES("13203","Viewed List of Communication","21","2014-10-10 13:06:31");
INSERT INTO tbl_activity VALUES("13204","Assigned 2014 - 0224 To An Urgent Communication","21","2014-10-10 13:06:34");
INSERT INTO tbl_activity VALUES("13205","Viewed List of Communication","21","2014-10-10 13:06:34");
INSERT INTO tbl_activity VALUES("13206","Viewed List of Communication","21","2014-10-10 13:06:40");
INSERT INTO tbl_activity VALUES("13207","Assigned 2014 - 0228 To An Urgent Communication","21","2014-10-10 13:07:00");
INSERT INTO tbl_activity VALUES("13208","Viewed List of Communication","21","2014-10-10 13:07:00");
INSERT INTO tbl_activity VALUES("13209","Viewed List of Communication","21","2014-10-10 13:07:03");
INSERT INTO tbl_activity VALUES("13210","Viewed List of Communication","21","2014-10-10 13:07:06");
INSERT INTO tbl_activity VALUES("13211","Viewed List of Communication","21","2014-10-10 13:07:09");
INSERT INTO tbl_activity VALUES("13212","Viewed Committee Meeting List for Resolution","21","2014-10-10 13:07:11");
INSERT INTO tbl_activity VALUES("13213","Viewed Committee Meeting List for Resolution","21","2014-10-10 13:07:14");
INSERT INTO tbl_activity VALUES("13214","Viewed Committee Meeting List for Resolution","21","2014-10-10 13:07:19");
INSERT INTO tbl_activity VALUES("13215","Viewed Committee Meeting List for Resolution","21","2014-10-10 13:07:22");
INSERT INTO tbl_activity VALUES("13216","Viewed Committee Meeting List for Resolution","21","2014-10-10 13:07:22");
INSERT INTO tbl_activity VALUES("13217","Viewed Committee Meeting List for Resolution","21","2014-10-10 13:07:23");
INSERT INTO tbl_activity VALUES("13218","Viewed Committee Meeting List for Resolution","21","2014-10-10 13:07:25");
INSERT INTO tbl_activity VALUES("13219","Viewed Committee Meeting List for Resolution","21","2014-10-10 13:07:26");
INSERT INTO tbl_activity VALUES("13220","Viewed List of Communication","21","2014-10-10 13:07:29");
INSERT INTO tbl_activity VALUES("13221","Viewed List of Communication","21","2014-10-10 13:07:30");
INSERT INTO tbl_activity VALUES("13222","Viewed List of Communication","21","2014-10-10 13:07:32");
INSERT INTO tbl_activity VALUES("13223","Viewed Committee Meeting List for Resolution","21","2014-10-10 13:11:14");
INSERT INTO tbl_activity VALUES("13224","Viewed Committee Meeting List for Resolution","21","2014-10-10 13:11:14");
INSERT INTO tbl_activity VALUES("13225","Viewed Committee Meeting List for Resolution","21","2014-10-10 13:11:17");
INSERT INTO tbl_activity VALUES("13226","Viewed Committee Meeting List for Resolution","21","2014-10-10 13:11:20");
INSERT INTO tbl_activity VALUES("13227","Viewed Committee Meeting List for Resolution","21","2014-10-10 13:11:22");
INSERT INTO tbl_activity VALUES("13228","Viewed Committee Meeting List for Resolution","21","2014-10-10 13:42:51");
INSERT INTO tbl_activity VALUES("13229","Viewed Committee Meeting List for Resolution","21","2014-10-10 14:32:56");
INSERT INTO tbl_activity VALUES("13230","Added Another Resolution","21","2014-10-10 14:40:43");
INSERT INTO tbl_activity VALUES("13231","Viewed Resolution No. 003 - 2014","21","2014-10-10 14:40:44");
INSERT INTO tbl_activity VALUES("13232","Viewed Committee Meeting List for Resolution","21","2014-10-10 14:54:40");
INSERT INTO tbl_activity VALUES("13233","Viewed Committee Meeting List for Resolution","21","2014-10-10 14:54:47");
INSERT INTO tbl_activity VALUES("13234","Added Another Resolution","21","2014-10-10 14:55:38");
INSERT INTO tbl_activity VALUES("13235","Viewed Resolution No. 008 - 2014","21","2014-10-10 14:55:40");
INSERT INTO tbl_activity VALUES("13236","Viewed Committee Meeting List for Resolution","21","2014-10-10 14:56:08");
INSERT INTO tbl_activity VALUES("13237","Viewed Committee Meeting List for Resolution","21","2014-10-10 14:56:11");
INSERT INTO tbl_activity VALUES("13238","Viewed Resolution List","21","2014-10-10 14:56:14");
INSERT INTO tbl_activity VALUES("13239","Viewed Resolution List","21","2014-10-10 14:56:17");
INSERT INTO tbl_activity VALUES("13240","Viewed Committee Meeting List for Resolution","21","2014-10-10 14:56:23");
INSERT INTO tbl_activity VALUES("13241","Viewed Committee Meeting List for Resolution","21","2014-10-10 14:56:26");
INSERT INTO tbl_activity VALUES("13242","Added Another Resolution","21","2014-10-10 14:59:07");
INSERT INTO tbl_activity VALUES("13243","Viewed Resolution No. 007 - 2014","21","2014-10-10 14:59:07");
INSERT INTO tbl_activity VALUES("13244","Viewed Committee Meeting List for Resolution","21","2014-10-10 14:59:10");
INSERT INTO tbl_activity VALUES("13245","Viewed Committee Meeting List for Resolution","21","2014-10-10 14:59:15");
INSERT INTO tbl_activity VALUES("13246","Viewed Committee Meeting List for Resolution","21","2014-10-10 14:59:17");
INSERT INTO tbl_activity VALUES("13247","Added Another Resolution","21","2014-10-10 14:59:49");
INSERT INTO tbl_activity VALUES("13248","Viewed Resolution No. 006 - 2014","21","2014-10-10 14:59:49");
INSERT INTO tbl_activity VALUES("13249","Viewed Committee Meeting List for Resolution","21","2014-10-10 14:59:51");
INSERT INTO tbl_activity VALUES("13250","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:00:09");
INSERT INTO tbl_activity VALUES("13251","Added Another Resolution","21","2014-10-10 15:00:32");
INSERT INTO tbl_activity VALUES("13252","Viewed Resolution No. 009 - 2014","21","2014-10-10 15:00:32");
INSERT INTO tbl_activity VALUES("13253","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:00:34");
INSERT INTO tbl_activity VALUES("13254","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:00:41");
INSERT INTO tbl_activity VALUES("13255","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:00:41");
INSERT INTO tbl_activity VALUES("13256","Added Another Resolution","21","2014-10-10 15:01:27");
INSERT INTO tbl_activity VALUES("13257","Viewed Resolution No. 010 - 2014","21","2014-10-10 15:01:27");
INSERT INTO tbl_activity VALUES("13258","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:01:31");
INSERT INTO tbl_activity VALUES("13259","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:01:34");
INSERT INTO tbl_activity VALUES("13260","Added Another Resolution","21","2014-10-10 15:02:25");
INSERT INTO tbl_activity VALUES("13261","Viewed Resolution No. 025 - 2014","21","2014-10-10 15:02:25");
INSERT INTO tbl_activity VALUES("13262","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:02:27");
INSERT INTO tbl_activity VALUES("13263","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:02:32");
INSERT INTO tbl_activity VALUES("13264","Added Another Resolution","21","2014-10-10 15:03:08");
INSERT INTO tbl_activity VALUES("13265","Viewed Resolution No. 026 - 2014","21","2014-10-10 15:03:08");
INSERT INTO tbl_activity VALUES("13266","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:03:10");
INSERT INTO tbl_activity VALUES("13267","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:03:16");
INSERT INTO tbl_activity VALUES("13268","Added Another Resolution","21","2014-10-10 15:05:00");
INSERT INTO tbl_activity VALUES("13269","Viewed Resolution No. 027 - 2014","21","2014-10-10 15:05:00");
INSERT INTO tbl_activity VALUES("13270","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:05:04");
INSERT INTO tbl_activity VALUES("13271","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:05:20");
INSERT INTO tbl_activity VALUES("13272","Added Another Resolution","21","2014-10-10 15:05:48");
INSERT INTO tbl_activity VALUES("13273","Viewed Resolution No. 024 - 2014","21","2014-10-10 15:05:48");
INSERT INTO tbl_activity VALUES("13274","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:05:50");
INSERT INTO tbl_activity VALUES("13275","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:05:54");
INSERT INTO tbl_activity VALUES("13276","Added Another Resolution","21","2014-10-10 15:07:56");
INSERT INTO tbl_activity VALUES("13277","Viewed Resolution No. 046 - 2014","21","2014-10-10 15:07:56");
INSERT INTO tbl_activity VALUES("13278","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:08:03");
INSERT INTO tbl_activity VALUES("13279","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:08:11");
INSERT INTO tbl_activity VALUES("13280","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:09:10");
INSERT INTO tbl_activity VALUES("13281","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:09:13");
INSERT INTO tbl_activity VALUES("13282","Added Another Resolution","21","2014-10-10 15:13:45");
INSERT INTO tbl_activity VALUES("13283","Viewed Resolution No. 046 - 2014","21","2014-10-10 15:13:45");
INSERT INTO tbl_activity VALUES("13284","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:14:03");
INSERT INTO tbl_activity VALUES("13285","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:14:05");
INSERT INTO tbl_activity VALUES("13286","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:14:35");
INSERT INTO tbl_activity VALUES("13287","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:14:37");
INSERT INTO tbl_activity VALUES("13288","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:14:37");
INSERT INTO tbl_activity VALUES("13289","Added Another Resolution","21","2014-10-10 15:15:29");
INSERT INTO tbl_activity VALUES("13290","Viewed Resolution No. 046 - 2014","21","2014-10-10 15:15:30");
INSERT INTO tbl_activity VALUES("13291","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:15:32");
INSERT INTO tbl_activity VALUES("13292","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:15:34");
INSERT INTO tbl_activity VALUES("13293","Added Another Resolution","21","2014-10-10 15:16:29");
INSERT INTO tbl_activity VALUES("13294","Viewed Resolution No. 089 - 2014","21","2014-10-10 15:16:29");
INSERT INTO tbl_activity VALUES("13295","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:16:32");
INSERT INTO tbl_activity VALUES("13296","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:16:33");
INSERT INTO tbl_activity VALUES("13297","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:17:20");
INSERT INTO tbl_activity VALUES("13298","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:17:22");
INSERT INTO tbl_activity VALUES("13299","Added Another Resolution","21","2014-10-10 15:18:02");
INSERT INTO tbl_activity VALUES("13300","Viewed Resolution No. 100 - 2014","21","2014-10-10 15:18:02");
INSERT INTO tbl_activity VALUES("13301","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:18:04");
INSERT INTO tbl_activity VALUES("13302","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:18:06");
INSERT INTO tbl_activity VALUES("13303","Added Another Resolution","21","2014-10-10 15:18:56");
INSERT INTO tbl_activity VALUES("13304","Viewed Resolution No. 099 - 2014","21","2014-10-10 15:18:56");
INSERT INTO tbl_activity VALUES("13305","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:18:59");
INSERT INTO tbl_activity VALUES("13306","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:19:03");
INSERT INTO tbl_activity VALUES("13307","Added Another Resolution","21","2014-10-10 15:19:50");
INSERT INTO tbl_activity VALUES("13308","Viewed Resolution No. 112 - 2014","21","2014-10-10 15:19:50");
INSERT INTO tbl_activity VALUES("13309","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:19:54");
INSERT INTO tbl_activity VALUES("13310","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:20:00");
INSERT INTO tbl_activity VALUES("13311","Added Another Resolution","21","2014-10-10 15:20:37");
INSERT INTO tbl_activity VALUES("13312","Viewed Resolution No. 110 - 2014","21","2014-10-10 15:20:37");
INSERT INTO tbl_activity VALUES("13313","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:20:42");
INSERT INTO tbl_activity VALUES("13314","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:20:44");
INSERT INTO tbl_activity VALUES("13315","Added Another Resolution","21","2014-10-10 15:21:24");
INSERT INTO tbl_activity VALUES("13316","Viewed Resolution No. 111 - 2014","21","2014-10-10 15:21:24");
INSERT INTO tbl_activity VALUES("13317","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:21:29");
INSERT INTO tbl_activity VALUES("13318","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:21:32");
INSERT INTO tbl_activity VALUES("13319","Added Another Resolution","21","2014-10-10 15:22:16");
INSERT INTO tbl_activity VALUES("13320","Viewed Resolution No. 109 - 2014","21","2014-10-10 15:22:16");
INSERT INTO tbl_activity VALUES("13321","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:22:22");
INSERT INTO tbl_activity VALUES("13322","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:22:26");
INSERT INTO tbl_activity VALUES("13323","Added Another Resolution","21","2014-10-10 15:23:10");
INSERT INTO tbl_activity VALUES("13324","Viewed Resolution No. 119 - 2014","21","2014-10-10 15:23:12");
INSERT INTO tbl_activity VALUES("13325","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:23:14");
INSERT INTO tbl_activity VALUES("13326","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:23:21");
INSERT INTO tbl_activity VALUES("13327","Added Another Resolution","21","2014-10-10 15:23:54");
INSERT INTO tbl_activity VALUES("13328","Viewed Resolution No. 120 - 2014","21","2014-10-10 15:23:54");
INSERT INTO tbl_activity VALUES("13329","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:23:56");
INSERT INTO tbl_activity VALUES("13330","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:23:59");
INSERT INTO tbl_activity VALUES("13331","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:24:01");
INSERT INTO tbl_activity VALUES("13332","Added Another Resolution","21","2014-10-10 15:24:58");
INSERT INTO tbl_activity VALUES("13333","Viewed Resolution No. 147 - 2014","21","2014-10-10 15:24:58");
INSERT INTO tbl_activity VALUES("13334","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:25:01");
INSERT INTO tbl_activity VALUES("13335","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:25:10");
INSERT INTO tbl_activity VALUES("13336","Added Another Resolution","21","2014-10-10 15:25:56");
INSERT INTO tbl_activity VALUES("13337","Viewed Resolution No. 148 - 2014","21","2014-10-10 15:25:56");
INSERT INTO tbl_activity VALUES("13338","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:25:58");
INSERT INTO tbl_activity VALUES("13339","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:26:02");
INSERT INTO tbl_activity VALUES("13340","Added Another Resolution","21","2014-10-10 15:26:42");
INSERT INTO tbl_activity VALUES("13341","Viewed Resolution No. 149 - 2014","21","2014-10-10 15:26:42");
INSERT INTO tbl_activity VALUES("13342","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:26:44");
INSERT INTO tbl_activity VALUES("13343","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:26:47");
INSERT INTO tbl_activity VALUES("13344","Added Another Resolution","21","2014-10-10 15:27:26");
INSERT INTO tbl_activity VALUES("13345","Viewed Resolution No. 150 - 2014","21","2014-10-10 15:27:26");
INSERT INTO tbl_activity VALUES("13346","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:27:27");
INSERT INTO tbl_activity VALUES("13347","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:27:31");
INSERT INTO tbl_activity VALUES("13348","Added Another Resolution","21","2014-10-10 15:28:15");
INSERT INTO tbl_activity VALUES("13349","Viewed Resolution No. 164 - 2014","21","2014-10-10 15:28:15");
INSERT INTO tbl_activity VALUES("13350","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:28:17");
INSERT INTO tbl_activity VALUES("13351","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:28:21");
INSERT INTO tbl_activity VALUES("13352","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:29:04");
INSERT INTO tbl_activity VALUES("13353","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:29:08");
INSERT INTO tbl_activity VALUES("13354","Added Another Resolution","21","2014-10-10 15:29:48");
INSERT INTO tbl_activity VALUES("13355","Viewed Resolution No. 185 - 2014","21","2014-10-10 15:29:49");
INSERT INTO tbl_activity VALUES("13356","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:29:50");
INSERT INTO tbl_activity VALUES("13357","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:30:07");
INSERT INTO tbl_activity VALUES("13358","Added Another Resolution","21","2014-10-10 15:30:55");
INSERT INTO tbl_activity VALUES("13359","Viewed Resolution No. 188 - 2014","21","2014-10-10 15:30:55");
INSERT INTO tbl_activity VALUES("13360","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:30:57");
INSERT INTO tbl_activity VALUES("13361","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:31:06");
INSERT INTO tbl_activity VALUES("13362","Added Another Resolution","21","2014-10-10 15:31:49");
INSERT INTO tbl_activity VALUES("13363","Viewed Resolution No. 186 - 2014","21","2014-10-10 15:31:49");
INSERT INTO tbl_activity VALUES("13364","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:31:51");
INSERT INTO tbl_activity VALUES("13365","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:32:03");
INSERT INTO tbl_activity VALUES("13366","Added Another Resolution","21","2014-10-10 15:32:37");
INSERT INTO tbl_activity VALUES("13367","Viewed Resolution No. 187 - 2014","21","2014-10-10 15:32:37");
INSERT INTO tbl_activity VALUES("13368","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:32:38");
INSERT INTO tbl_activity VALUES("13369","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:32:42");
INSERT INTO tbl_activity VALUES("13370","Added Another Resolution","21","2014-10-10 15:33:28");
INSERT INTO tbl_activity VALUES("13371","Viewed Resolution No. 197 - 2014","21","2014-10-10 15:33:28");
INSERT INTO tbl_activity VALUES("13372","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:33:30");
INSERT INTO tbl_activity VALUES("13373","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:33:34");
INSERT INTO tbl_activity VALUES("13374","Added Another Resolution","21","2014-10-10 15:34:18");
INSERT INTO tbl_activity VALUES("13375","Viewed Resolution No. 198 - 2014","21","2014-10-10 15:34:18");
INSERT INTO tbl_activity VALUES("13376","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:34:21");
INSERT INTO tbl_activity VALUES("13377","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:34:35");
INSERT INTO tbl_activity VALUES("13378","Added Another Resolution","21","2014-10-10 15:35:10");
INSERT INTO tbl_activity VALUES("13379","Viewed Resolution No. 202 - 2014","21","2014-10-10 15:35:10");
INSERT INTO tbl_activity VALUES("13380","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:35:12");
INSERT INTO tbl_activity VALUES("13381","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:35:17");
INSERT INTO tbl_activity VALUES("13382","Added Another Resolution","21","2014-10-10 15:35:53");
INSERT INTO tbl_activity VALUES("13383","Viewed Resolution No. 203 - 2014","21","2014-10-10 15:35:53");
INSERT INTO tbl_activity VALUES("13384","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:35:56");
INSERT INTO tbl_activity VALUES("13385","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:36:10");
INSERT INTO tbl_activity VALUES("13386","Added Another Resolution","21","2014-10-10 15:36:30");
INSERT INTO tbl_activity VALUES("13387","Viewed Resolution No. 204 - 2014","21","2014-10-10 15:36:31");
INSERT INTO tbl_activity VALUES("13388","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:36:32");
INSERT INTO tbl_activity VALUES("13389","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:36:37");
INSERT INTO tbl_activity VALUES("13390","Added Another Resolution","21","2014-10-10 15:37:26");
INSERT INTO tbl_activity VALUES("13391","Viewed Resolution No. 217 - 2014","21","2014-10-10 15:37:26");
INSERT INTO tbl_activity VALUES("13392","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:37:28");
INSERT INTO tbl_activity VALUES("13393","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:37:38");
INSERT INTO tbl_activity VALUES("13394","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:37:38");
INSERT INTO tbl_activity VALUES("13395","Added Another Resolution","21","2014-10-10 15:38:59");
INSERT INTO tbl_activity VALUES("13396","Viewed Resolution No. 233 - 2014","21","2014-10-10 15:38:59");
INSERT INTO tbl_activity VALUES("13397","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:39:01");
INSERT INTO tbl_activity VALUES("13398","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:39:10");
INSERT INTO tbl_activity VALUES("13399","Added Another Resolution","21","2014-10-10 15:39:42");
INSERT INTO tbl_activity VALUES("13400","Viewed Resolution No. 232 - 2014","21","2014-10-10 15:39:42");
INSERT INTO tbl_activity VALUES("13401","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:39:44");
INSERT INTO tbl_activity VALUES("13402","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:39:48");
INSERT INTO tbl_activity VALUES("13403","Added Another Resolution","21","2014-10-10 15:40:20");
INSERT INTO tbl_activity VALUES("13404","Viewed Resolution No. 234 - 2014","21","2014-10-10 15:40:21");
INSERT INTO tbl_activity VALUES("13405","Viewed Committee Meeting List for Resolution","21","2014-10-10 15:40:22");
INSERT INTO tbl_activity VALUES("13406","Viewed Resolution List","21","2014-10-10 15:40:25");
INSERT INTO tbl_activity VALUES("13407","Return to Homepage","21","2014-10-10 15:40:36");
INSERT INTO tbl_activity VALUES("13408","Viewed List of Communication","21","2014-10-10 15:44:02");
INSERT INTO tbl_activity VALUES("13409","Viewed List of Communication","21","2014-10-10 15:45:28");
INSERT INTO tbl_activity VALUES("13410","Viewed List of Communication","21","2014-10-10 15:45:42");
INSERT INTO tbl_activity VALUES("13411","Viewed Communication for Referral List","21","2014-10-10 15:45:43");
INSERT INTO tbl_activity VALUES("13412","Viewed List of Referrals for Committe Meeting","21","2014-10-10 15:45:46");
INSERT INTO tbl_activity VALUES("13413","Viewed Committee Meeting List for Ordinance","21","2014-10-10 15:45:54");
INSERT INTO tbl_activity VALUES("13414","Viewed Communication for Referral List","21","2014-10-10 15:45:57");
INSERT INTO tbl_activity VALUES("13415","Return to Homepage","21","2014-10-10 15:46:07");
INSERT INTO tbl_activity VALUES("13416","Return to Homepage","21","2014-10-10 15:49:10");
INSERT INTO tbl_activity VALUES("13417","Return to Homepage","21","2014-10-10 15:49:15");
INSERT INTO tbl_activity VALUES("13418","Return to Homepage","21","2014-10-10 15:49:18");
INSERT INTO tbl_activity VALUES("13419","Return to Homepage","21","2014-10-10 15:49:22");
INSERT INTO tbl_activity VALUES("13420","Logged In","21","2014-10-14 08:20:37");
INSERT INTO tbl_activity VALUES("13421","Return to Homepage","21","2014-10-14 08:20:37");
INSERT INTO tbl_activity VALUES("13422","Viewed List of Communication","21","2014-10-14 08:20:47");
INSERT INTO tbl_activity VALUES("13423","Viewed Communication for Referral List","21","2014-10-14 08:21:01");
INSERT INTO tbl_activity VALUES("13424","Viewed List of Referrals for Committe Meeting","21","2014-10-14 08:21:03");
INSERT INTO tbl_activity VALUES("13425","Viewed List of Referral for Committee Meeting","21","2014-10-14 08:21:05");
INSERT INTO tbl_activity VALUES("13426","Viewed List of Referrals for Committe Meeting","21","2014-10-14 08:21:06");
INSERT INTO tbl_activity VALUES("13427","Viewed Committee Meeting List for Resolution","21","2014-10-14 08:21:09");
INSERT INTO tbl_activity VALUES("13428","Viewed Committee Meeting List for Resolution","21","2014-10-14 08:21:11");
INSERT INTO tbl_activity VALUES("13429","Viewed Committee Meeting List for Ordinance","21","2014-10-14 08:21:18");
INSERT INTO tbl_activity VALUES("13430","Viewed Committee Meeting List for Resolution","21","2014-10-14 08:21:19");
INSERT INTO tbl_activity VALUES("13431","Viewed Resolution List","21","2014-10-14 08:21:20");
INSERT INTO tbl_activity VALUES("13432","Viewed Resolution List","21","2014-10-14 08:21:22");
INSERT INTO tbl_activity VALUES("13433","Viewed Committee Meeting List for Resolution","21","2014-10-14 08:21:27");
INSERT INTO tbl_activity VALUES("13434","Viewed Committee Meeting List for Resolution","21","2014-10-14 08:22:26");
INSERT INTO tbl_activity VALUES("13435","Viewed Resolution List","21","2014-10-14 08:22:32");
INSERT INTO tbl_activity VALUES("13436","Viewed Resolution List","21","2014-10-14 08:22:38");
INSERT INTO tbl_activity VALUES("13437","Viewed Resolution List","21","2014-10-14 08:22:44");
INSERT INTO tbl_activity VALUES("13438","Viewed Resolution List","21","2014-10-14 08:22:45");
INSERT INTO tbl_activity VALUES("13439","Viewed Resolution List","21","2014-10-14 08:23:00");
INSERT INTO tbl_activity VALUES("13440","Viewed Committee Meeting List for Resolution","21","2014-10-14 08:23:02");
INSERT INTO tbl_activity VALUES("13441","Viewed Committee Meeting List for Resolution","21","2014-10-14 08:23:05");
INSERT INTO tbl_activity VALUES("13442","Viewed Resolution List","21","2014-10-14 08:23:13");
INSERT INTO tbl_activity VALUES("13443","Viewed List of Communication","21","2014-10-14 08:23:16");
INSERT INTO tbl_activity VALUES("13444","Viewed Communication for Referral List","21","2014-10-14 08:23:23");
INSERT INTO tbl_activity VALUES("13445","Viewed List of Referrals for Committe Meeting","21","2014-10-14 08:23:25");
INSERT INTO tbl_activity VALUES("13446","Viewed List of Communication","21","2014-10-14 08:23:31");
INSERT INTO tbl_activity VALUES("13447","Viewed Communication for Referral List","21","2014-10-14 08:24:39");
INSERT INTO tbl_activity VALUES("13448","Return to Homepage","21","2014-10-14 08:24:42");
INSERT INTO tbl_activity VALUES("13449","Viewed List of Communication","21","2014-10-14 08:25:18");
INSERT INTO tbl_activity VALUES("13450","Viewed List of Communication","21","2014-10-14 08:25:50");
INSERT INTO tbl_activity VALUES("13451","Viewed List of Communication","21","2014-10-14 08:25:53");
INSERT INTO tbl_activity VALUES("13452","Viewed List of Communication","21","2014-10-14 08:27:09");
INSERT INTO tbl_activity VALUES("13453","Viewed Committee Meeting List for Resolution","21","2014-10-14 08:27:14");
INSERT INTO tbl_activity VALUES("13454","Viewed Committee Meeting List for Resolution","21","2014-10-14 08:27:17");
INSERT INTO tbl_activity VALUES("13455","Viewed Committee Meeting List for Resolution","21","2014-10-14 08:27:19");
INSERT INTO tbl_activity VALUES("13456","Viewed List of Referrals for Committe Meeting","21","2014-10-14 08:27:21");
INSERT INTO tbl_activity VALUES("13457","Viewed List of Referral for Committee Meeting","21","2014-10-14 08:27:23");
INSERT INTO tbl_activity VALUES("13458","Viewed List of Referral for Committee Meeting","21","2014-10-14 08:27:29");
INSERT INTO tbl_activity VALUES("13459","Viewed List of Referral for Committee Meeting","21","2014-10-14 08:27:30");
INSERT INTO tbl_activity VALUES("13460","Viewed List of Referral for Committee Meeting","21","2014-10-14 08:27:32");
INSERT INTO tbl_activity VALUES("13461","Viewed List of Referral for Committee Meeting","21","2014-10-14 08:27:35");
INSERT INTO tbl_activity VALUES("13462","Viewed List of Communication","21","2014-10-14 08:27:38");
INSERT INTO tbl_activity VALUES("13463","Viewed List of Communication","21","2014-10-14 08:27:41");
INSERT INTO tbl_activity VALUES("13464","Viewed List of Communication","21","2014-10-14 08:27:42");
INSERT INTO tbl_activity VALUES("13465","Viewed List of Referral for Committee Meeting","21","2014-10-14 08:27:46");
INSERT INTO tbl_activity VALUES("13466","Viewed List of Referrals for Committe Meeting","21","2014-10-14 08:27:48");
INSERT INTO tbl_activity VALUES("13467","Viewed Communication for Referral List","21","2014-10-14 08:27:49");
INSERT INTO tbl_activity VALUES("13468","Viewed Committee Meeting List for Resolution","21","2014-10-14 08:27:51");
INSERT INTO tbl_activity VALUES("13469","Return to Homepage","21","2014-10-14 08:27:58");
INSERT INTO tbl_activity VALUES("13470","Return to Homepage","21","2014-10-14 08:28:14");
INSERT INTO tbl_activity VALUES("13471","Return to Homepage","21","2014-10-14 08:28:18");
INSERT INTO tbl_activity VALUES("13472","Return to Homepage","21","2014-10-14 08:28:21");
INSERT INTO tbl_activity VALUES("13473","Return to Homepage","21","2014-10-14 08:28:28");
INSERT INTO tbl_activity VALUES("13474","Return to Homepage","21","2014-10-14 08:29:02");
INSERT INTO tbl_activity VALUES("13475","Viewed List of Communication","21","2014-10-14 08:29:05");
INSERT INTO tbl_activity VALUES("13476","Viewed Communication for Referral List","21","2014-10-14 08:29:09");
INSERT INTO tbl_activity VALUES("13477","Viewed List of Referrals for Committe Meeting","21","2014-10-14 08:29:10");
INSERT INTO tbl_activity VALUES("13478","Viewed List of Referral for Committee Meeting","21","2014-10-14 08:29:12");
INSERT INTO tbl_activity VALUES("13479","Viewed Committee Meeting List for Resolution","21","2014-10-14 08:29:13");
INSERT INTO tbl_activity VALUES("13480","Viewed Committee Meeting List for Ordinance","21","2014-10-14 08:29:14");
INSERT INTO tbl_activity VALUES("13481","Viewed Agency List","21","2014-10-14 08:29:16");
INSERT INTO tbl_activity VALUES("13482","Return to Homepage","21","2014-10-14 08:29:18");
INSERT INTO tbl_activity VALUES("13483","Viewed Communication for Referral List","21","2014-10-14 08:31:11");
INSERT INTO tbl_activity VALUES("13484","Viewed List of Communication","21","2014-10-14 08:31:13");
INSERT INTO tbl_activity VALUES("13485","Viewed Committee Meeting List for Resolution","21","2014-10-14 08:35:49");
INSERT INTO tbl_activity VALUES("13486","Viewed Resolution List","21","2014-10-14 08:35:53");
INSERT INTO tbl_activity VALUES("13487","Viewed Resolution No. 001 - 2012","21","2014-10-14 08:35:56");
INSERT INTO tbl_activity VALUES("13488","Searched Statistical Resolution Report","21","2014-10-14 08:36:06");
INSERT INTO tbl_activity VALUES("13489","Searched Resolution History","21","2014-10-14 08:36:32");
INSERT INTO tbl_activity VALUES("13490","Searched Resolution History","21","2014-10-14 08:36:44");
INSERT INTO tbl_activity VALUES("13491","Printed Resolution History of Resolution No. 431 - 2012","21","2014-10-14 08:36:47");
INSERT INTO tbl_activity VALUES("13492","Searched Resolution History","21","2014-10-14 08:36:51");
INSERT INTO tbl_activity VALUES("13493","Searched Resolution History","21","2014-10-14 08:37:05");
INSERT INTO tbl_activity VALUES("13494","Viewed List of Communication","21","2014-10-14 09:00:26");
INSERT INTO tbl_activity VALUES("13495","Viewed Communication for Referral List","21","2014-10-14 09:01:26");
INSERT INTO tbl_activity VALUES("13496","Viewed List of Communication","21","2014-10-14 09:01:28");
INSERT INTO tbl_activity VALUES("13497","Viewed Communication for Referral List","21","2014-10-14 09:01:36");
INSERT INTO tbl_activity VALUES("13498","Viewed List of Communication","21","2014-10-14 09:02:29");
INSERT INTO tbl_activity VALUES("13499","Viewed Communication List","21","2014-10-14 09:02:31");
INSERT INTO tbl_activity VALUES("13500","Viewed List of Communication","21","2014-10-14 09:02:36");
INSERT INTO tbl_activity VALUES("13501","Viewed Communication List","21","2014-10-14 09:02:38");
INSERT INTO tbl_activity VALUES("13502","Viewed List of Communication","21","2014-10-14 09:02:55");
INSERT INTO tbl_activity VALUES("13503","Viewed Communication List","21","2014-10-14 09:02:58");
INSERT INTO tbl_activity VALUES("13504","Viewed Communication List","21","2014-10-14 09:03:01");
INSERT INTO tbl_activity VALUES("13505","Viewed List of Communication","21","2014-10-14 09:04:14");
INSERT INTO tbl_activity VALUES("13506","Viewed List of Communication","21","2014-10-14 09:05:59");
INSERT INTO tbl_activity VALUES("13507","Viewed Communication for Referral List","21","2014-10-14 09:06:01");
INSERT INTO tbl_activity VALUES("13508","Viewed List of Communication","21","2014-10-14 09:06:02");
INSERT INTO tbl_activity VALUES("13509","Viewed List of Communication","21","2014-10-14 09:06:05");
INSERT INTO tbl_activity VALUES("13510","Viewed List of Communication","21","2014-10-14 09:06:06");
INSERT INTO tbl_activity VALUES("13511","Viewed List of Communication","21","2014-10-14 09:06:10");
INSERT INTO tbl_activity VALUES("13512","Viewed Communication List","21","2014-10-14 09:06:53");
INSERT INTO tbl_activity VALUES("13513","Viewed Communication List","21","2014-10-14 09:06:56");
INSERT INTO tbl_activity VALUES("13514","Viewed Communication List","21","2014-10-14 09:07:07");
INSERT INTO tbl_activity VALUES("13515","Viewed Communication List","21","2014-10-14 09:07:25");
INSERT INTO tbl_activity VALUES("13516","Viewed Communication List","21","2014-10-14 09:07:27");
INSERT INTO tbl_activity VALUES("13517","Viewed Communication List","21","2014-10-14 09:07:49");
INSERT INTO tbl_activity VALUES("13518","Viewed Communication List","21","2014-10-14 09:07:52");
INSERT INTO tbl_activity VALUES("13519","Viewed Communication List","21","2014-10-14 09:08:13");
INSERT INTO tbl_activity VALUES("13520","Viewed Communication List","21","2014-10-14 09:08:30");
INSERT INTO tbl_activity VALUES("13521","Viewed Communication List","21","2014-10-14 09:09:00");
INSERT INTO tbl_activity VALUES("13522","Viewed Communication List","21","2014-10-14 09:09:19");
INSERT INTO tbl_activity VALUES("13523","Viewed Communication List","21","2014-10-14 09:10:19");
INSERT INTO tbl_activity VALUES("13524","Viewed Communication List","21","2014-10-14 09:10:29");
INSERT INTO tbl_activity VALUES("13525","Viewed Communication List","21","2014-10-14 09:10:38");
INSERT INTO tbl_activity VALUES("13526","Viewed Communication List","21","2014-10-14 09:10:48");
INSERT INTO tbl_activity VALUES("13527","Viewed Communication List","21","2014-10-14 09:12:24");
INSERT INTO tbl_activity VALUES("13528","Viewed Communication List","21","2014-10-14 09:12:37");
INSERT INTO tbl_activity VALUES("13529","Viewed Communication List","21","2014-10-14 09:12:42");
INSERT INTO tbl_activity VALUES("13530","Viewed Communication List","21","2014-10-14 09:12:49");
INSERT INTO tbl_activity VALUES("13531","Viewed List of Communication","21","2014-10-14 09:12:54");
INSERT INTO tbl_activity VALUES("13532","Viewed List of Communication","21","2014-10-14 09:14:12");
INSERT INTO tbl_activity VALUES("13533","Viewed List of Communication","21","2014-10-14 09:14:19");
INSERT INTO tbl_activity VALUES("13534","Viewed List of Communication","21","2014-10-14 09:21:32");
INSERT INTO tbl_activity VALUES("13535","Return to Homepage","21","2014-10-14 09:29:36");
INSERT INTO tbl_activity VALUES("13536","Viewed List of Communication","21","2014-10-14 09:29:52");
INSERT INTO tbl_activity VALUES("13537","Return to Homepage","21","2014-10-14 09:29:55");
INSERT INTO tbl_activity VALUES("13538","Return to Homepage","21","2014-10-14 09:32:55");
INSERT INTO tbl_activity VALUES("13539","Return to Homepage","21","2014-10-14 09:36:39");
INSERT INTO tbl_activity VALUES("13540","Viewed List of Communication","21","2014-10-14 09:41:55");
INSERT INTO tbl_activity VALUES("13541","Return to Homepage","21","2014-10-14 09:41:58");
INSERT INTO tbl_activity VALUES("13542","Viewed Committee Meeting List for Resolution","21","2014-10-14 09:46:29");
INSERT INTO tbl_activity VALUES("13543","Viewed Committee Meeting List for Resolution","21","2014-10-14 09:46:30");
INSERT INTO tbl_activity VALUES("13544","Viewed List of Communication","21","2014-10-14 09:46:32");
INSERT INTO tbl_activity VALUES("13545","Viewed Committee Meeting List for Resolution","21","2014-10-14 09:46:34");
INSERT INTO tbl_activity VALUES("13546","Viewed Resolution List","21","2014-10-14 09:46:43");
INSERT INTO tbl_activity VALUES("13547","Viewed Resolution List","21","2014-10-14 09:47:15");
INSERT INTO tbl_activity VALUES("13548","Viewed Resolution List","21","2014-10-14 09:47:50");
INSERT INTO tbl_activity VALUES("13549","Downloaded Resolution No. 081 - 2012 file","21","2014-10-14 09:48:01");
INSERT INTO tbl_activity VALUES("13550","Viewed List of Communication","21","2014-10-14 09:49:42");
INSERT INTO tbl_activity VALUES("13551","Viewed Communication for Referral List","21","2014-10-14 09:49:48");
INSERT INTO tbl_activity VALUES("13552","Viewed List of Referrals for Committe Meeting","21","2014-10-14 09:49:53");
INSERT INTO tbl_activity VALUES("13553","Viewed Committee Meeting List for Resolution","21","2014-10-14 09:50:10");
INSERT INTO tbl_activity VALUES("13554","Viewed Committee Meeting List for Resolution","21","2014-10-14 09:50:15");
INSERT INTO tbl_activity VALUES("13555","Viewed Resolution List","21","2014-10-14 09:50:56");
INSERT INTO tbl_activity VALUES("13556","Return to Homepage","21","2014-10-14 09:51:27");
INSERT INTO tbl_activity VALUES("13557","Viewed Committee Meeting List for Resolution","21","2014-10-14 10:09:11");
INSERT INTO tbl_activity VALUES("13558","Viewed Resolution List","21","2014-10-14 10:10:25");
INSERT INTO tbl_activity VALUES("13559","Viewed List of Communication","21","2014-10-14 10:14:26");
INSERT INTO tbl_activity VALUES("13560","Viewed Communication for Referral List","21","2014-10-14 10:28:47");
INSERT INTO tbl_activity VALUES("13561","Viewed Communication for Referral List","21","2014-10-14 10:29:22");
INSERT INTO tbl_activity VALUES("13562","Viewed List of Communication","21","2014-10-14 10:29:46");
INSERT INTO tbl_activity VALUES("13563","Viewed Committee Meeting List for Resolution","21","2014-10-14 10:29:49");
INSERT INTO tbl_activity VALUES("13564","Viewed List of Communication","21","2014-10-14 10:29:58");
INSERT INTO tbl_activity VALUES("13565","Return to Homepage","21","2014-10-14 10:35:41");
INSERT INTO tbl_activity VALUES("13566","Return to Homepage","21","2014-10-14 10:38:13");
INSERT INTO tbl_activity VALUES("13567","Return to Homepage","21","2014-10-14 11:17:50");
INSERT INTO tbl_activity VALUES("13568","Viewed List of Communication","21","2014-10-14 11:24:57");
INSERT INTO tbl_activity VALUES("13569","Viewed Committee Meeting List for Resolution","21","2014-10-14 11:54:29");
INSERT INTO tbl_activity VALUES("13570","Viewed Resolution List","21","2014-10-14 11:54:35");
INSERT INTO tbl_activity VALUES("13571","Viewed Resolution List","21","2014-10-14 11:54:39");
INSERT INTO tbl_activity VALUES("13572","Downloaded Resolution No. 151 - 2014 file","21","2014-10-14 11:54:46");
INSERT INTO tbl_activity VALUES("13573","Viewed Communication for Referral List","21","2014-10-14 11:55:26");
INSERT INTO tbl_activity VALUES("13574","Viewed List of Referral for Committee Meeting","21","2014-10-14 11:55:27");
INSERT INTO tbl_activity VALUES("13575","Viewed Committee Meeting List","21","2014-10-14 11:55:31");
INSERT INTO tbl_activity VALUES("13576","Viewed List of Referral for Committee Meeting","21","2014-10-14 11:55:35");
INSERT INTO tbl_activity VALUES("13577","Viewed List of Referrals for Committe Meeting","21","2014-10-14 11:55:39");
INSERT INTO tbl_activity VALUES("13578","Viewed Committee Meeting List for Resolution","21","2014-10-14 11:55:55");
INSERT INTO tbl_activity VALUES("13579","Viewed Resolution List","21","2014-10-14 11:55:56");
INSERT INTO tbl_activity VALUES("13580","Viewed Resolution List","21","2014-10-14 11:55:59");
INSERT INTO tbl_activity VALUES("13581","Viewed Resolution No. 090 - 2014","21","2014-10-14 11:56:18");
INSERT INTO tbl_activity VALUES("13582","Viewed List of Referral for Committee Meeting","21","2014-10-14 11:56:30");
INSERT INTO tbl_activity VALUES("13583","Viewed Communication for Referral List","21","2014-10-14 11:56:32");
INSERT INTO tbl_activity VALUES("13584","Viewed Referral List","21","2014-10-14 11:56:33");
INSERT INTO tbl_activity VALUES("13585","Viewed Committee Meeting List for Resolution","21","2014-10-14 11:56:42");
INSERT INTO tbl_activity VALUES("13586","Viewed Resolution List","21","2014-10-14 11:56:44");
INSERT INTO tbl_activity VALUES("13587","Viewed Resolution List","21","2014-10-14 11:56:46");
INSERT INTO tbl_activity VALUES("13588","Viewed Resolution List","21","2014-10-14 11:56:55");
INSERT INTO tbl_activity VALUES("13589","Viewed Resolution List","21","2014-10-14 11:57:01");
INSERT INTO tbl_activity VALUES("13590","Viewed Resolution List","21","2014-10-14 11:57:19");
INSERT INTO tbl_activity VALUES("13591","Viewed Resolution List","21","2014-10-14 11:57:22");
INSERT INTO tbl_activity VALUES("13592","Viewed Committee Meeting List for Resolution","21","2014-10-14 11:57:31");
INSERT INTO tbl_activity VALUES("13593","Return to Homepage","21","2014-10-14 11:57:37");
INSERT INTO tbl_activity VALUES("13594","Viewed List of Communication","21","2014-10-14 12:09:18");
INSERT INTO tbl_activity VALUES("13595","Searched Statistical Resolution Report","21","2014-10-14 12:09:36");
INSERT INTO tbl_activity VALUES("13596","Viewed List of Referral for Committee Meeting","21","2014-10-14 12:13:18");
INSERT INTO tbl_activity VALUES("13597","Viewed List of Referral for Committee Meeting","21","2014-10-14 12:13:39");
INSERT INTO tbl_activity VALUES("13598","Viewed List of Communication","21","2014-10-14 12:13:46");
INSERT INTO tbl_activity VALUES("13599","Viewed Communication for Referral List","21","2014-10-14 12:13:49");
INSERT INTO tbl_activity VALUES("13600","Viewed List of Referrals for Committe Meeting","21","2014-10-14 12:13:52");
INSERT INTO tbl_activity VALUES("13601","Viewed Committee Meeting List for Resolution","21","2014-10-14 12:13:54");
INSERT INTO tbl_activity VALUES("13602","Viewed Committee Meeting List for Ordinance","21","2014-10-14 12:13:58");
INSERT INTO tbl_activity VALUES("13603","Viewed Committee Meeting List for Resolution","21","2014-10-14 12:14:04");
INSERT INTO tbl_activity VALUES("13604","Viewed Committee Meeting List for Resolution","21","2014-10-14 12:15:49");
INSERT INTO tbl_activity VALUES("13605","Viewed List of Communication","21","2014-10-14 12:15:54");
INSERT INTO tbl_activity VALUES("13606","Viewed Committee Meeting List for Resolution","21","2014-10-14 12:21:19");
INSERT INTO tbl_activity VALUES("13607","Viewed Committee Meeting List for Ordinance","21","2014-10-14 12:21:21");
INSERT INTO tbl_activity VALUES("13608","Viewed Committee Meeting List for Resolution","21","2014-10-14 12:21:22");
INSERT INTO tbl_activity VALUES("13609","Viewed List of Referrals for Committe Meeting","21","2014-10-14 12:21:24");
INSERT INTO tbl_activity VALUES("13610","Viewed Committee Meeting List for Resolution","21","2014-10-14 12:21:28");
INSERT INTO tbl_activity VALUES("13611","Viewed Communication for Referral List","21","2014-10-14 12:21:29");
INSERT INTO tbl_activity VALUES("13612","Viewed List of Referrals for Committe Meeting","21","2014-10-14 12:21:32");
INSERT INTO tbl_activity VALUES("13613","Viewed Committee Meeting List for Ordinance","21","2014-10-14 12:21:34");
INSERT INTO tbl_activity VALUES("13614","Viewed Committee Meeting List for Resolution","21","2014-10-14 12:21:46");
INSERT INTO tbl_activity VALUES("13615","Viewed Committee Meeting List for Ordinance","21","2014-10-14 12:21:47");
INSERT INTO tbl_activity VALUES("13616","Viewed List of Communication","21","2014-10-14 12:26:13");
INSERT INTO tbl_activity VALUES("13617","Viewed Communication List","21","2014-10-14 12:26:18");
INSERT INTO tbl_activity VALUES("13618","Viewed Communication List","21","2014-10-14 12:26:20");
INSERT INTO tbl_activity VALUES("13619","Viewed Communication List","21","2014-10-14 12:26:49");
INSERT INTO tbl_activity VALUES("13620","Viewed Communication List","21","2014-10-14 12:27:15");
INSERT INTO tbl_activity VALUES("13621","Viewed Communication List","21","2014-10-14 12:27:24");
INSERT INTO tbl_activity VALUES("13622","Viewed Communication List","21","2014-10-14 12:28:12");
INSERT INTO tbl_activity VALUES("13623","Viewed Communication List","21","2014-10-14 12:28:36");
INSERT INTO tbl_activity VALUES("13624","Viewed Committee Meeting List for Resolution","21","2014-10-14 12:29:11");
INSERT INTO tbl_activity VALUES("13625","Viewed List of Communication","21","2014-10-14 12:30:54");
INSERT INTO tbl_activity VALUES("13626","Viewed Communication List","21","2014-10-14 12:31:09");
INSERT INTO tbl_activity VALUES("13627","Viewed Communication List","21","2014-10-14 12:31:19");
INSERT INTO tbl_activity VALUES("13628","Viewed Committee Meeting List for Resolution","21","2014-10-14 12:33:28");
INSERT INTO tbl_activity VALUES("13629","Viewed Committee Meeting List for Resolution","21","2014-10-14 12:33:28");
INSERT INTO tbl_activity VALUES("13630","Viewed Resolution List","21","2014-10-14 12:33:33");
INSERT INTO tbl_activity VALUES("13631","Viewed Resolution List","21","2014-10-14 12:33:37");
INSERT INTO tbl_activity VALUES("13632","Viewed List of Communication","21","2014-10-14 12:33:53");
INSERT INTO tbl_activity VALUES("13633","Viewed List of Communication","21","2014-10-14 12:33:55");
INSERT INTO tbl_activity VALUES("13634","Viewed List of Communication","21","2014-10-14 12:33:57");
INSERT INTO tbl_activity VALUES("13635","Viewed List of Communication","21","2014-10-14 12:33:58");
INSERT INTO tbl_activity VALUES("13636","Viewed List of Communication","21","2014-10-14 12:34:01");
INSERT INTO tbl_activity VALUES("13637","Logged In","22","2014-10-14 13:00:23");
INSERT INTO tbl_activity VALUES("13638","Return to Homepage","22","2014-10-14 13:00:23");
INSERT INTO tbl_activity VALUES("13639","Viewed List of Communication","22","2014-10-14 13:00:26");
INSERT INTO tbl_activity VALUES("13640","Viewed Resolution List","21","2014-10-14 13:18:58");
INSERT INTO tbl_activity VALUES("13641","Viewed Resolution List","21","2014-10-14 13:19:35");
INSERT INTO tbl_activity VALUES("13642","Viewed Resolution List","21","2014-10-14 13:20:12");
INSERT INTO tbl_activity VALUES("13643","Viewed Resolution List","21","2014-10-14 13:20:19");
INSERT INTO tbl_activity VALUES("13644","Added Another Communication","22","2014-10-14 13:50:54");
INSERT INTO tbl_activity VALUES("13645","View Communication ID: 2014 - 0237","22","2014-10-14 13:50:55");
INSERT INTO tbl_activity VALUES("13646","Added Another Communication","22","2014-10-14 13:52:20");
INSERT INTO tbl_activity VALUES("13647","View Communication ID: 2014 - 0238","22","2014-10-14 13:52:20");
INSERT INTO tbl_activity VALUES("13648","Added Another Communication","22","2014-10-14 13:53:42");
INSERT INTO tbl_activity VALUES("13649","View Communication ID: 2014 - 0239","22","2014-10-14 13:53:43");
INSERT INTO tbl_activity VALUES("13650","Logged In","21","2014-10-14 13:55:14");
INSERT INTO tbl_activity VALUES("13651","Return to Homepage","21","2014-10-14 13:55:14");
INSERT INTO tbl_activity VALUES("13652","Viewed List of Communication","21","2014-10-14 13:55:25");
INSERT INTO tbl_activity VALUES("13653","Viewed List of Communication","21","2014-10-14 13:55:30");
INSERT INTO tbl_activity VALUES("13654","Viewed List of Communication","21","2014-10-14 13:55:32");
INSERT INTO tbl_activity VALUES("13655","Added Another Communication","22","2014-10-14 13:55:33");
INSERT INTO tbl_activity VALUES("13656","View Communication ID: 2014 - 0240","22","2014-10-14 13:55:34");
INSERT INTO tbl_activity VALUES("13657","Viewed List of Communication","21","2014-10-14 13:55:37");
INSERT INTO tbl_activity VALUES("13658","Viewed Audit Trails","21","2014-10-14 13:56:05");
INSERT INTO tbl_activity VALUES("13659","Viewed List of Communication","21","2014-10-14 13:56:15");
INSERT INTO tbl_activity VALUES("13660","Viewed List of Communication","21","2014-10-14 13:56:18");
INSERT INTO tbl_activity VALUES("13661","Added Another Communication","22","2014-10-14 13:59:05");
INSERT INTO tbl_activity VALUES("13662","View Communication ID: 2014 - 0241","22","2014-10-14 13:59:06");
INSERT INTO tbl_activity VALUES("13663","Added Another Communication","22","2014-10-14 14:01:53");
INSERT INTO tbl_activity VALUES("13664","View Communication ID: 2014 - 0242","22","2014-10-14 14:01:53");
INSERT INTO tbl_activity VALUES("13665","Added Another Communication","22","2014-10-14 14:04:28");
INSERT INTO tbl_activity VALUES("13666","View Communication ID: 2014 - 0243","22","2014-10-14 14:04:28");
INSERT INTO tbl_activity VALUES("13667","Downloaded Communication Letter","22","2014-10-14 14:04:31");
INSERT INTO tbl_activity VALUES("13668","Added Another Communication","21","2014-10-14 14:05:10");
INSERT INTO tbl_activity VALUES("13669","Viewed Communication List","21","2014-10-14 14:05:57");
INSERT INTO tbl_activity VALUES("13670","Viewed Communication List","21","2014-10-14 14:06:03");
INSERT INTO tbl_activity VALUES("13671","Viewed Communication List","21","2014-10-14 14:06:07");
INSERT INTO tbl_activity VALUES("13672","Viewed Communication List","21","2014-10-14 14:06:09");
INSERT INTO tbl_activity VALUES("13673","Viewed Communication List","21","2014-10-14 14:06:12");
INSERT INTO tbl_activity VALUES("13674","Viewed List of Communication","21","2014-10-14 14:06:17");
INSERT INTO tbl_activity VALUES("13675","Viewed List of Communication","21","2014-10-14 14:06:19");
INSERT INTO tbl_activity VALUES("13676","Assigned 2014 - 0244 To An Urgent Communication","21","2014-10-14 14:06:35");
INSERT INTO tbl_activity VALUES("13677","Viewed List of Communication","21","2014-10-14 14:06:35");
INSERT INTO tbl_activity VALUES("13678","Return to Homepage","21","2014-10-14 14:06:46");
INSERT INTO tbl_activity VALUES("13679","Viewed List of Communication","21","2014-10-14 14:07:47");
INSERT INTO tbl_activity VALUES("13680","Added Another Communication","22","2014-10-14 14:08:31");
INSERT INTO tbl_activity VALUES("13681","View Communication ID: 2014 - 0245","22","2014-10-14 14:08:31");
INSERT INTO tbl_activity VALUES("13682","Viewed List of Communication","21","2014-10-14 14:08:31");
INSERT INTO tbl_activity VALUES("13683","Viewed Communication List","21","2014-10-14 14:08:33");
INSERT INTO tbl_activity VALUES("13684","Viewed Communication List","21","2014-10-14 14:08:37");
INSERT INTO tbl_activity VALUES("13685","Viewed Communication List","21","2014-10-14 14:08:39");
INSERT INTO tbl_activity VALUES("13686","Viewed Communication List","21","2014-10-14 14:08:43");
INSERT INTO tbl_activity VALUES("13687","Viewed Communication List","21","2014-10-14 14:08:46");
INSERT INTO tbl_activity VALUES("13688","Viewed Communication List","21","2014-10-14 14:08:48");
INSERT INTO tbl_activity VALUES("13689","Viewed Communication List","21","2014-10-14 14:08:57");
INSERT INTO tbl_activity VALUES("13690","Viewed Communication List","21","2014-10-14 14:09:58");
INSERT INTO tbl_activity VALUES("13691","Viewed Communication List","21","2014-10-14 14:10:14");
INSERT INTO tbl_activity VALUES("13692","Viewed Communication List","21","2014-10-14 14:13:02");
INSERT INTO tbl_activity VALUES("13693","Viewed Communication List","21","2014-10-14 14:13:04");
INSERT INTO tbl_activity VALUES("13694","Viewed Communication List","21","2014-10-14 14:13:08");
INSERT INTO tbl_activity VALUES("13695","Viewed Communication List","21","2014-10-14 14:13:11");
INSERT INTO tbl_activity VALUES("13696","Viewed Communication List","21","2014-10-14 14:13:27");
INSERT INTO tbl_activity VALUES("13697","Viewed Communication List","21","2014-10-14 14:14:23");
INSERT INTO tbl_activity VALUES("13698","Added Another Communication","22","2014-10-14 14:15:25");
INSERT INTO tbl_activity VALUES("13699","View Communication ID: 2014 - 0246","22","2014-10-14 14:15:25");
INSERT INTO tbl_activity VALUES("13700","Viewed Communication List","21","2014-10-14 14:15:36");
INSERT INTO tbl_activity VALUES("13701","Viewed List of Communication","21","2014-10-14 14:15:46");
INSERT INTO tbl_activity VALUES("13702","Viewed List of Communication","21","2014-10-14 14:16:26");
INSERT INTO tbl_activity VALUES("13703","Viewed List of Communication","21","2014-10-14 14:16:29");
INSERT INTO tbl_activity VALUES("13704","Viewed List of Communication","21","2014-10-14 14:16:31");
INSERT INTO tbl_activity VALUES("13705","Viewed List of Communication","21","2014-10-14 14:16:34");
INSERT INTO tbl_activity VALUES("13706","Added Another Communication","22","2014-10-14 14:16:39");
INSERT INTO tbl_activity VALUES("13707","View Communication ID: 2014 - 0247","22","2014-10-14 14:16:39");
INSERT INTO tbl_activity VALUES("13708","Viewed Communication List","21","2014-10-14 14:16:40");
INSERT INTO tbl_activity VALUES("13709","Viewed List of Communication","21","2014-10-14 14:16:43");
INSERT INTO tbl_activity VALUES("13710","Viewed List of Communication","21","2014-10-14 14:16:45");
INSERT INTO tbl_activity VALUES("13711","Viewed Committee Meeting List for Resolution","21","2014-10-14 14:18:21");
INSERT INTO tbl_activity VALUES("13712","Viewed Committee Meeting List for Resolution","21","2014-10-14 14:18:24");
INSERT INTO tbl_activity VALUES("13713","Added Another Communication","22","2014-10-14 14:18:26");
INSERT INTO tbl_activity VALUES("13714","View Communication ID: 2014 - 0248","22","2014-10-14 14:18:27");
INSERT INTO tbl_activity VALUES("13715","Viewed List of Communication","21","2014-10-14 14:18:31");
INSERT INTO tbl_activity VALUES("13716","Viewed Communication List","21","2014-10-14 14:18:42");
INSERT INTO tbl_activity VALUES("13717","Viewed Communication List","21","2014-10-14 14:18:45");
INSERT INTO tbl_activity VALUES("13718","Viewed Communication List","21","2014-10-14 14:18:50");
INSERT INTO tbl_activity VALUES("13719","Viewed Communication List","21","2014-10-14 14:19:34");
INSERT INTO tbl_activity VALUES("13720","Added Another Communication","22","2014-10-14 14:20:01");
INSERT INTO tbl_activity VALUES("13721","View Communication ID: 2014 - 0249","22","2014-10-14 14:20:02");
INSERT INTO tbl_activity VALUES("13722","Viewed Communication List","21","2014-10-14 14:20:10");
INSERT INTO tbl_activity VALUES("13723","Viewed Communication List","21","2014-10-14 14:20:13");
INSERT INTO tbl_activity VALUES("13724","Viewed Communication List","21","2014-10-14 14:20:42");
INSERT INTO tbl_activity VALUES("13725","Viewed Communication List","21","2014-10-14 14:20:49");
INSERT INTO tbl_activity VALUES("13726","Viewed Communication List","21","2014-10-14 14:20:52");
INSERT INTO tbl_activity VALUES("13727","Viewed Communication List","21","2014-10-14 14:21:02");
INSERT INTO tbl_activity VALUES("13728","Viewed Communication List","21","2014-10-14 14:21:03");
INSERT INTO tbl_activity VALUES("13729","Viewed Communication List","21","2014-10-14 14:21:28");
INSERT INTO tbl_activity VALUES("13730","Added Another Communication","22","2014-10-14 14:21:36");
INSERT INTO tbl_activity VALUES("13731","View Communication ID: 2014 - 0250","22","2014-10-14 14:21:36");
INSERT INTO tbl_activity VALUES("13732","Viewed List of Communication","21","2014-10-14 14:21:42");
INSERT INTO tbl_activity VALUES("13733","Viewed List of Communication","21","2014-10-14 14:21:48");
INSERT INTO tbl_activity VALUES("13734","Added Another Communication","22","2014-10-14 14:22:47");
INSERT INTO tbl_activity VALUES("13735","View Communication ID: 2014 - 0251","22","2014-10-14 14:22:48");
INSERT INTO tbl_activity VALUES("13736","Viewed Communication List","21","2014-10-14 14:23:04");
INSERT INTO tbl_activity VALUES("13737","Viewed Communication List","21","2014-10-14 14:23:07");
INSERT INTO tbl_activity VALUES("13738","Added Another Communication","22","2014-10-14 14:23:47");
INSERT INTO tbl_activity VALUES("13739","View Communication ID: 2014 - 0252","22","2014-10-14 14:23:47");
INSERT INTO tbl_activity VALUES("13740","Viewed List of Communication","21","2014-10-14 14:24:43");
INSERT INTO tbl_activity VALUES("13741","Viewed List of Communication","21","2014-10-14 14:25:37");
INSERT INTO tbl_activity VALUES("13742","Added Another Communication","22","2014-10-14 14:26:03");
INSERT INTO tbl_activity VALUES("13743","View Communication ID: 2014 - 0253","22","2014-10-14 14:26:03");
INSERT INTO tbl_activity VALUES("13744","Added Another Communication","22","2014-10-14 14:27:15");
INSERT INTO tbl_activity VALUES("13745","View Communication ID: 2014 - 0254","22","2014-10-14 14:27:15");
INSERT INTO tbl_activity VALUES("13746","Viewed List of Communication","21","2014-10-14 14:27:55");
INSERT INTO tbl_activity VALUES("13747","Viewed List of Communication","21","2014-10-14 14:28:04");
INSERT INTO tbl_activity VALUES("13748","Added Another Communication","22","2014-10-14 14:30:10");
INSERT INTO tbl_activity VALUES("13749","View Communication ID: 2014 - 0255","22","2014-10-14 14:30:11");
INSERT INTO tbl_activity VALUES("13750","Viewed List of Communication","21","2014-10-14 14:30:23");
INSERT INTO tbl_activity VALUES("13751","Added Another Communication","22","2014-10-14 14:30:55");
INSERT INTO tbl_activity VALUES("13752","View Communication ID: 2014 - 0256","22","2014-10-14 14:30:55");
INSERT INTO tbl_activity VALUES("13753","Added Another Communication","22","2014-10-14 14:31:49");
INSERT INTO tbl_activity VALUES("13754","View Communication ID: 2014 - 0257","22","2014-10-14 14:31:50");
INSERT INTO tbl_activity VALUES("13755","Viewed List of Communication","21","2014-10-14 14:31:53");
INSERT INTO tbl_activity VALUES("13756","Viewed List of Communication","21","2014-10-14 14:31:56");
INSERT INTO tbl_activity VALUES("13757","Return to Homepage","21","2014-10-14 14:32:08");
INSERT INTO tbl_activity VALUES("13758","Viewed Communication for Referral List","21","2014-10-14 14:32:16");
INSERT INTO tbl_activity VALUES("13759","Added Another Communication","22","2014-10-14 14:32:44");
INSERT INTO tbl_activity VALUES("13760","View Communication ID: 2014 - 0258","22","2014-10-14 14:32:44");
INSERT INTO tbl_activity VALUES("13761","Viewed List of Communication","21","2014-10-14 14:34:01");
INSERT INTO tbl_activity VALUES("13762","Viewed List of Communication","21","2014-10-14 14:34:22");
INSERT INTO tbl_activity VALUES("13763","Viewed List of Communication","21","2014-10-14 14:35:03");
INSERT INTO tbl_activity VALUES("13764","Viewed List of Communication","21","2014-10-14 14:36:33");
INSERT INTO tbl_activity VALUES("13765","Viewed List of Communication","21","2014-10-14 14:36:34");
INSERT INTO tbl_activity VALUES("13766","Viewed List of Communication","21","2014-10-14 14:36:45");
INSERT INTO tbl_activity VALUES("13767","Viewed List of Communication","21","2014-10-14 14:36:46");
INSERT INTO tbl_activity VALUES("13768","Viewed List of Communication","21","2014-10-14 14:37:07");
INSERT INTO tbl_activity VALUES("13769","Viewed List of Communication","21","2014-10-14 14:37:08");
INSERT INTO tbl_activity VALUES("13770","Viewed List of Communication","21","2014-10-14 14:37:15");
INSERT INTO tbl_activity VALUES("13771","Viewed List of Communication","21","2014-10-14 14:37:22");
INSERT INTO tbl_activity VALUES("13772","Viewed List of Communication","21","2014-10-14 14:37:26");
INSERT INTO tbl_activity VALUES("13773","Viewed List of Communication","21","2014-10-14 14:48:03");
INSERT INTO tbl_activity VALUES("13774","Viewed Communication List","21","2014-10-14 14:48:17");
INSERT INTO tbl_activity VALUES("13775","Viewed Communication List","21","2014-10-14 14:48:21");
INSERT INTO tbl_activity VALUES("13776","Viewed List of Communication","21","2014-10-14 14:48:24");
INSERT INTO tbl_activity VALUES("13777","Viewed List of Communication","21","2014-10-14 14:48:27");
INSERT INTO tbl_activity VALUES("13778","Viewed List of Communication","21","2014-10-14 14:48:28");
INSERT INTO tbl_activity VALUES("13779","Viewed List of Communication","21","2014-10-14 14:48:30");
INSERT INTO tbl_activity VALUES("13780","View Communication ID: 2014 - 0258","22","2014-10-14 14:51:46");
INSERT INTO tbl_activity VALUES("13781","Viewed List of Communication","21","2014-10-14 14:52:19");
INSERT INTO tbl_activity VALUES("13782","Viewed List of Communication","21","2014-10-14 14:52:25");
INSERT INTO tbl_activity VALUES("13783","Added Another Communication","22","2014-10-14 14:52:54");
INSERT INTO tbl_activity VALUES("13784","View Communication ID: 2014 - 0259","22","2014-10-14 14:52:54");
INSERT INTO tbl_activity VALUES("13785","Viewed List of Communication","21","2014-10-14 14:53:04");
INSERT INTO tbl_activity VALUES("13786","Viewed List of Communication","21","2014-10-14 14:53:09");
INSERT INTO tbl_activity VALUES("13787","Viewed List of Communication","21","2014-10-14 14:53:17");
INSERT INTO tbl_activity VALUES("13788","Added Another Communication","22","2014-10-14 14:53:49");
INSERT INTO tbl_activity VALUES("13789","View Communication ID: 2014 - 0260","22","2014-10-14 14:53:49");
INSERT INTO tbl_activity VALUES("13790","Viewed List of Communication","21","2014-10-14 14:53:54");
INSERT INTO tbl_activity VALUES("13791","Added Another Communication","22","2014-10-14 14:54:53");
INSERT INTO tbl_activity VALUES("13792","View Communication ID: 2014 - 0261","22","2014-10-14 14:54:54");
INSERT INTO tbl_activity VALUES("13793","Added Another Communication","22","2014-10-14 14:56:45");
INSERT INTO tbl_activity VALUES("13794","View Communication ID: 2014 - 0262","22","2014-10-14 14:56:45");
INSERT INTO tbl_activity VALUES("13795","Added Another Communication","22","2014-10-14 15:06:25");
INSERT INTO tbl_activity VALUES("13796","View Communication ID: 2014 - 0263","22","2014-10-14 15:06:25");
INSERT INTO tbl_activity VALUES("13797","Added Another Communication","22","2014-10-14 15:07:34");
INSERT INTO tbl_activity VALUES("13798","View Communication ID: 2014 - 0264","22","2014-10-14 15:07:34");
INSERT INTO tbl_activity VALUES("13799","Added Another Communication","22","2014-10-14 15:12:41");
INSERT INTO tbl_activity VALUES("13800","View Communication ID: 2014 - 0265","22","2014-10-14 15:12:41");
INSERT INTO tbl_activity VALUES("13801","Added Another Communication","22","2014-10-14 15:14:30");
INSERT INTO tbl_activity VALUES("13802","View Communication ID: 2014 - 0266","22","2014-10-14 15:14:30");
INSERT INTO tbl_activity VALUES("13803","Viewed List of Communication","21","2014-10-14 15:23:32");
INSERT INTO tbl_activity VALUES("13804","Added Another Communication","22","2014-10-14 15:24:11");
INSERT INTO tbl_activity VALUES("13805","View Communication ID: 2014 - 0267","22","2014-10-14 15:24:11");
INSERT INTO tbl_activity VALUES("13806","Added Another Communication","22","2014-10-14 15:25:17");
INSERT INTO tbl_activity VALUES("13807","View Communication ID: 2014 - 0268","22","2014-10-14 15:25:18");
INSERT INTO tbl_activity VALUES("13808","Added Another Communication","22","2014-10-14 15:27:28");
INSERT INTO tbl_activity VALUES("13809","View Communication ID: 2014 - 0269","22","2014-10-14 15:27:28");
INSERT INTO tbl_activity VALUES("13810","Viewed List of Communication","21","2014-10-14 15:30:25");
INSERT INTO tbl_activity VALUES("13811","Viewed List of Communication","21","2014-10-14 15:30:59");
INSERT INTO tbl_activity VALUES("13812","Viewed List of Communication","21","2014-10-14 15:31:01");
INSERT INTO tbl_activity VALUES("13813","Viewed List of Communication","21","2014-10-14 15:31:04");
INSERT INTO tbl_activity VALUES("13814","Viewed List of Communication","21","2014-10-14 15:31:07");
INSERT INTO tbl_activity VALUES("13815","Viewed List of Communication","21","2014-10-14 15:31:08");
INSERT INTO tbl_activity VALUES("13816","Viewed List of Communication","21","2014-10-14 15:31:59");
INSERT INTO tbl_activity VALUES("13817","Viewed Communication for Referral List","21","2014-10-14 15:32:04");
INSERT INTO tbl_activity VALUES("13818","Added Another Communication","22","2014-10-14 15:32:05");
INSERT INTO tbl_activity VALUES("13819","View Communication ID: 2014 - 0270","22","2014-10-14 15:32:06");
INSERT INTO tbl_activity VALUES("13820","Viewed List of Communication","21","2014-10-14 15:32:10");
INSERT INTO tbl_activity VALUES("13821","Viewed List of Communication","21","2014-10-14 15:32:13");
INSERT INTO tbl_activity VALUES("13822","Viewed List of Communication","21","2014-10-14 15:32:15");
INSERT INTO tbl_activity VALUES("13823","Viewed List of Communication","21","2014-10-14 15:32:21");
INSERT INTO tbl_activity VALUES("13824","Viewed List of Communication","21","2014-10-14 15:32:23");
INSERT INTO tbl_activity VALUES("13825","Viewed List of Communication","21","2014-10-14 15:32:27");
INSERT INTO tbl_activity VALUES("13826","Viewed List of Communication","21","2014-10-14 15:32:29");
INSERT INTO tbl_activity VALUES("13827","Viewed List of Communication","21","2014-10-14 15:32:30");
INSERT INTO tbl_activity VALUES("13828","Added Another Communication","22","2014-10-14 15:33:07");
INSERT INTO tbl_activity VALUES("13829","View Communication ID: 2014 - 0271","22","2014-10-14 15:33:07");
INSERT INTO tbl_activity VALUES("13830","Viewed List of Communication","21","2014-10-14 15:34:07");
INSERT INTO tbl_activity VALUES("13831","Viewed Communication for Referral List","21","2014-10-14 15:34:16");
INSERT INTO tbl_activity VALUES("13832","Viewed List of Communication","21","2014-10-14 15:34:18");
INSERT INTO tbl_activity VALUES("13833","Viewed Communication for Referral List","21","2014-10-14 15:34:19");
INSERT INTO tbl_activity VALUES("13834","Added Another Communication","22","2014-10-14 15:34:39");
INSERT INTO tbl_activity VALUES("13835","View Communication ID: 2014 - 0272","22","2014-10-14 15:34:39");
INSERT INTO tbl_activity VALUES("13836","Viewed Referral List","21","2014-10-14 15:34:54");
INSERT INTO tbl_activity VALUES("13837","Viewed List of Communication","21","2014-10-14 15:34:57");
INSERT INTO tbl_activity VALUES("13838","Viewed Communication List","21","2014-10-14 15:34:59");
INSERT INTO tbl_activity VALUES("13839","Viewed Communication List","21","2014-10-14 15:35:02");
INSERT INTO tbl_activity VALUES("13840","Viewed Committee Meeting List for Resolution","21","2014-10-14 15:35:06");
INSERT INTO tbl_activity VALUES("13841","Viewed Resolution List","21","2014-10-14 15:35:09");
INSERT INTO tbl_activity VALUES("13842","Viewed Resolution List","21","2014-10-14 15:35:11");
INSERT INTO tbl_activity VALUES("13843","Viewed Resolution List","21","2014-10-14 15:35:23");
INSERT INTO tbl_activity VALUES("13844","Viewed List of Communication","21","2014-10-14 15:35:25");
INSERT INTO tbl_activity VALUES("13845","Viewed Communication List","21","2014-10-14 15:35:28");
INSERT INTO tbl_activity VALUES("13846","Viewed Communication List","21","2014-10-14 15:35:33");
INSERT INTO tbl_activity VALUES("13847","Added Another Communication","22","2014-10-14 15:37:03");
INSERT INTO tbl_activity VALUES("13848","View Communication ID: 2014 - 0273","22","2014-10-14 15:37:03");
INSERT INTO tbl_activity VALUES("13849","Viewed Communication List","21","2014-10-14 15:37:43");
INSERT INTO tbl_activity VALUES("13850","Viewed List of Communication","21","2014-10-14 15:39:03");
INSERT INTO tbl_activity VALUES("13851","Viewed List of Communication","21","2014-10-14 15:39:06");
INSERT INTO tbl_activity VALUES("13852","Added Another Communication","22","2014-10-14 15:40:35");
INSERT INTO tbl_activity VALUES("13853","View Communication ID: 2014 - 0274","22","2014-10-14 15:40:35");
INSERT INTO tbl_activity VALUES("13854","Viewed Committee Meeting List for Resolution","21","2014-10-14 15:41:06");
INSERT INTO tbl_activity VALUES("13855","Added Another Communication","22","2014-10-14 15:41:41");
INSERT INTO tbl_activity VALUES("13856","View Communication ID: 2014 - 0275","22","2014-10-14 15:41:41");
INSERT INTO tbl_activity VALUES("13857","Viewed Communication List","22","2014-10-14 15:42:03");
INSERT INTO tbl_activity VALUES("13858","Viewed Communication List","22","2014-10-14 15:42:09");
INSERT INTO tbl_activity VALUES("13859","Viewed Communication List","22","2014-10-14 15:42:11");
INSERT INTO tbl_activity VALUES("13860","Viewed Committee Meeting List for Resolution","21","2014-10-14 15:42:12");
INSERT INTO tbl_activity VALUES("13861","Viewed List of Communication","21","2014-10-14 15:42:12");
INSERT INTO tbl_activity VALUES("13862","Viewed Communication List","22","2014-10-14 15:42:23");
INSERT INTO tbl_activity VALUES("13863","Viewed Communication List","22","2014-10-14 15:42:43");
INSERT INTO tbl_activity VALUES("13864","Viewed List of Communication","21","2014-10-14 15:42:45");
INSERT INTO tbl_activity VALUES("13865","Viewed List of Communication","21","2014-10-14 15:43:54");
INSERT INTO tbl_activity VALUES("13866","Viewed List of Communication","21","2014-10-14 15:45:26");
INSERT INTO tbl_activity VALUES("13867","Viewed List of Communication","21","2014-10-14 15:45:26");
INSERT INTO tbl_activity VALUES("13868","Viewed List of Communication","21","2014-10-14 15:49:36");
INSERT INTO tbl_activity VALUES("13869","Viewed List of Communication","21","2014-10-14 15:50:02");
INSERT INTO tbl_activity VALUES("13870","Viewed Communication List","21","2014-10-14 15:50:55");
INSERT INTO tbl_activity VALUES("13871","Viewed Communication List","21","2014-10-14 15:51:23");
INSERT INTO tbl_activity VALUES("13872","Viewed Communication List","21","2014-10-14 15:51:46");
INSERT INTO tbl_activity VALUES("13873","Viewed Communication List","21","2014-10-14 15:52:05");
INSERT INTO tbl_activity VALUES("13874","Viewed Communication List","21","2014-10-14 15:52:16");
INSERT INTO tbl_activity VALUES("13875","Viewed Communication List","21","2014-10-14 15:53:34");
INSERT INTO tbl_activity VALUES("13876","Viewed List of Communication","21","2014-10-14 15:54:08");
INSERT INTO tbl_activity VALUES("13877","Viewed Communication List","21","2014-10-14 15:54:18");
INSERT INTO tbl_activity VALUES("13878","Viewed List of Communication","21","2014-10-14 15:54:23");
INSERT INTO tbl_activity VALUES("13879","Viewed List of Communication","21","2014-10-14 15:54:28");
INSERT INTO tbl_activity VALUES("13880","Viewed Communication List","21","2014-10-14 15:57:34");
INSERT INTO tbl_activity VALUES("13881","View Communication ID: 2014 - 0275","21","2014-10-14 15:57:36");
INSERT INTO tbl_activity VALUES("13882","Viewed Communication List","21","2014-10-14 15:58:50");
INSERT INTO tbl_activity VALUES("13883","Viewed Communication List","21","2014-10-14 15:58:54");
INSERT INTO tbl_activity VALUES("13884","Viewed Communication List","21","2014-10-14 15:59:07");
INSERT INTO tbl_activity VALUES("13885","Viewed Communication List","21","2014-10-14 15:59:22");
INSERT INTO tbl_activity VALUES("13886","Viewed Communication List","21","2014-10-14 15:59:31");
INSERT INTO tbl_activity VALUES("13887","Viewed Communication List","21","2014-10-14 15:59:39");
INSERT INTO tbl_activity VALUES("13888","Viewed Communication List","21","2014-10-14 15:59:50");
INSERT INTO tbl_activity VALUES("13889","Viewed Communication List","21","2014-10-14 15:59:54");
INSERT INTO tbl_activity VALUES("13890","Viewed Communication List","21","2014-10-14 16:00:08");
INSERT INTO tbl_activity VALUES("13891","Viewed Communication List","21","2014-10-14 16:00:18");
INSERT INTO tbl_activity VALUES("13892","Viewed Communication List","21","2014-10-14 16:00:21");
INSERT INTO tbl_activity VALUES("13893","Viewed Communication List","21","2014-10-14 16:00:29");
INSERT INTO tbl_activity VALUES("13894","Viewed Communication List","21","2014-10-14 16:00:32");
INSERT INTO tbl_activity VALUES("13895","Viewed Committee Meeting List for Resolution","21","2014-10-14 16:01:10");
INSERT INTO tbl_activity VALUES("13896","Viewed Resolution List","21","2014-10-14 16:01:15");
INSERT INTO tbl_activity VALUES("13897","Viewed Resolution List","21","2014-10-14 16:01:19");
INSERT INTO tbl_activity VALUES("13898","Viewed Resolution List","21","2014-10-14 16:01:25");
INSERT INTO tbl_activity VALUES("13899","Viewed Resolution List","21","2014-10-14 16:02:36");
INSERT INTO tbl_activity VALUES("13900","Viewed Resolution List","21","2014-10-14 16:04:32");
INSERT INTO tbl_activity VALUES("13901","Viewed Resolution No. 138 - 2014","21","2014-10-14 16:04:39");
INSERT INTO tbl_activity VALUES("13902","Viewed Resolution List","21","2014-10-14 16:04:43");
INSERT INTO tbl_activity VALUES("13903","Viewed Committee Meeting List for Resolution","21","2014-10-14 16:04:50");
INSERT INTO tbl_activity VALUES("13904","Viewed Resolution List","21","2014-10-14 16:04:56");
INSERT INTO tbl_activity VALUES("13905","Viewed Resolution List","21","2014-10-14 16:05:15");
INSERT INTO tbl_activity VALUES("13906","Viewed List of Communication","21","2014-10-14 16:05:18");
INSERT INTO tbl_activity VALUES("13907","Viewed Communication List","21","2014-10-14 16:05:20");
INSERT INTO tbl_activity VALUES("13908","Viewed Communication for Referral List","21","2014-10-14 16:05:25");
INSERT INTO tbl_activity VALUES("13909","Viewed Referral List","21","2014-10-14 16:05:27");
INSERT INTO tbl_activity VALUES("13910","Viewed List of Referrals for Committe Meeting","21","2014-10-14 16:05:31");
INSERT INTO tbl_activity VALUES("13911","Viewed Committee Meeting List","21","2014-10-14 16:05:33");
INSERT INTO tbl_activity VALUES("13912","Viewed List of Referrals for Committe Meeting","21","2014-10-14 16:05:38");
INSERT INTO tbl_activity VALUES("13913","Viewed Committee Meeting List","21","2014-10-14 16:05:40");
INSERT INTO tbl_activity VALUES("13914","Viewed Committee Meeting List for Resolution","21","2014-10-14 16:05:45");
INSERT INTO tbl_activity VALUES("13915","Viewed Resolution List","21","2014-10-14 16:05:46");
INSERT INTO tbl_activity VALUES("13916","Viewed Committee Meeting List for Ordinance","21","2014-10-14 16:05:51");
INSERT INTO tbl_activity VALUES("13917","Viewed Ordinance List","21","2014-10-14 16:05:52");
INSERT INTO tbl_activity VALUES("13918","Viewed Committee Meeting List for Ordinance","21","2014-10-14 16:05:56");
INSERT INTO tbl_activity VALUES("13919","Viewed List of Referral for Committee Meeting","21","2014-10-14 16:05:58");
INSERT INTO tbl_activity VALUES("13920","Viewed List of Referrals for Committe Meeting","21","2014-10-14 16:06:00");
INSERT INTO tbl_activity VALUES("13921","Viewed Committee Meeting List","21","2014-10-14 16:06:01");
INSERT INTO tbl_activity VALUES("13922","Viewed List of Referral for Committee Meeting","21","2014-10-14 16:06:06");
INSERT INTO tbl_activity VALUES("13923","Viewed Committee Meeting List","21","2014-10-14 16:06:07");
INSERT INTO tbl_activity VALUES("13924","Viewed List of Referrals for Committe Meeting","21","2014-10-14 16:06:09");
INSERT INTO tbl_activity VALUES("13925","Viewed Committee Meeting List","21","2014-10-14 16:06:11");
INSERT INTO tbl_activity VALUES("13926","View Committee Meeting ID: 1","21","2014-10-14 16:06:13");
INSERT INTO tbl_activity VALUES("13927","Viewed List of Referrals for Committe Meeting","21","2014-10-14 16:06:18");
INSERT INTO tbl_activity VALUES("13928","Viewed Committee Meeting List","21","2014-10-14 16:06:20");
INSERT INTO tbl_activity VALUES("13929","Viewed Communication for Referral List","21","2014-10-14 16:06:24");
INSERT INTO tbl_activity VALUES("13930","Viewed Referral List","21","2014-10-14 16:06:26");
INSERT INTO tbl_activity VALUES("13931","Viewed Communication for Referral List","21","2014-10-14 16:06:31");
INSERT INTO tbl_activity VALUES("13932","Viewed List of Communication","21","2014-10-14 16:06:33");
INSERT INTO tbl_activity VALUES("13933","Return to Homepage","21","2014-10-14 16:06:37");
INSERT INTO tbl_activity VALUES("13934","Return to Homepage","21","2014-10-14 16:08:32");
INSERT INTO tbl_activity VALUES("13935","Viewed List of Communication","21","2014-10-14 16:09:42");
INSERT INTO tbl_activity VALUES("13936","Viewed List of Communication","21","2014-10-14 16:09:45");
INSERT INTO tbl_activity VALUES("13937","Return to Homepage","21","2014-10-14 16:09:53");
INSERT INTO tbl_activity VALUES("13938","Viewed Committee Meeting List for Resolution","21","2014-10-14 16:10:10");
INSERT INTO tbl_activity VALUES("13939","Return to Homepage","21","2014-10-14 16:10:13");
INSERT INTO tbl_activity VALUES("13940","Viewed Committee Meeting List for Resolution","21","2014-10-14 16:10:20");
INSERT INTO tbl_activity VALUES("13941","Viewed Resolution List","21","2014-10-14 16:32:48");
INSERT INTO tbl_activity VALUES("13942","Viewed Resolution List","21","2014-10-14 16:34:17");
INSERT INTO tbl_activity VALUES("13943","Viewed Committee Meeting List for Resolution","21","2014-10-14 16:34:20");
INSERT INTO tbl_activity VALUES("13944","Viewed Resolution List","21","2014-10-14 16:34:30");
INSERT INTO tbl_activity VALUES("13945","Viewed Resolution List","21","2014-10-14 16:34:50");
INSERT INTO tbl_activity VALUES("13946","Viewed Committee Meeting List for Resolution","21","2014-10-14 16:34:52");
INSERT INTO tbl_activity VALUES("13947","Viewed Committee Meeting List for Resolution","21","2014-10-14 16:35:08");
INSERT INTO tbl_activity VALUES("13948","Viewed List of Communication","21","2014-10-14 16:35:14");
INSERT INTO tbl_activity VALUES("13949","Logged In","21","2014-10-16 08:29:10");
INSERT INTO tbl_activity VALUES("13950","Return to Homepage","21","2014-10-16 08:29:11");
INSERT INTO tbl_activity VALUES("13951","Viewed List of Communication","21","2014-10-16 08:29:16");
INSERT INTO tbl_activity VALUES("13952","Viewed List of Communication","21","2014-10-16 08:29:19");
INSERT INTO tbl_activity VALUES("13953","Viewed Committee Meeting List for Resolution","21","2014-10-16 08:29:24");
INSERT INTO tbl_activity VALUES("13954","Viewed Committee Meeting List for Resolution","21","2014-10-16 08:29:29");
INSERT INTO tbl_activity VALUES("13955","Viewed List of Referrals for Committe Meeting","21","2014-10-16 08:29:33");
INSERT INTO tbl_activity VALUES("13956","Viewed Communication for Referral List","21","2014-10-16 08:29:34");
INSERT INTO tbl_activity VALUES("13957","Viewed List of Communication","21","2014-10-16 08:29:35");
INSERT INTO tbl_activity VALUES("13958","Return to Homepage","21","2014-10-16 08:29:38");
INSERT INTO tbl_activity VALUES("13959","Return to Homepage","21","2014-10-16 08:29:54");
INSERT INTO tbl_activity VALUES("13960","Return to Homepage","21","2014-10-16 08:29:56");
INSERT INTO tbl_activity VALUES("13961","Return to Homepage","21","2014-10-16 08:29:59");
INSERT INTO tbl_activity VALUES("13962","Return to Homepage","21","2014-10-16 08:30:00");
INSERT INTO tbl_activity VALUES("13963","Return to Homepage","21","2014-10-16 08:30:04");
INSERT INTO tbl_activity VALUES("13964","Return to Homepage","21","2014-10-16 08:30:07");
INSERT INTO tbl_activity VALUES("13965","Viewed Audit Trails","21","2014-10-16 08:31:23");
INSERT INTO tbl_activity VALUES("13966","Viewed Audit Trails","21","2014-10-16 08:31:26");
INSERT INTO tbl_activity VALUES("13967","Viewed Audit Trails","21","2014-10-16 08:31:28");
INSERT INTO tbl_activity VALUES("13968","Viewed Audit Trails","21","2014-10-16 08:31:30");
INSERT INTO tbl_activity VALUES("13969","Viewed Audit Trails","21","2014-10-16 08:31:31");
INSERT INTO tbl_activity VALUES("13970","Viewed Audit Trails","21","2014-10-16 08:31:32");
INSERT INTO tbl_activity VALUES("13971","Viewed Audit Trails","21","2014-10-16 08:31:33");
INSERT INTO tbl_activity VALUES("13972","Viewed Audit Trails","21","2014-10-16 08:31:35");
INSERT INTO tbl_activity VALUES("13973","Viewed Audit Trails","21","2014-10-16 08:31:36");
INSERT INTO tbl_activity VALUES("13974","Viewed Audit Trails","21","2014-10-16 08:31:39");
INSERT INTO tbl_activity VALUES("13975","Viewed Audit Trails","21","2014-10-16 08:31:45");
INSERT INTO tbl_activity VALUES("13976","Viewed Audit Trails","21","2014-10-16 08:31:47");
INSERT INTO tbl_activity VALUES("13977","Viewed Audit Trails","21","2014-10-16 08:31:49");
INSERT INTO tbl_activity VALUES("13978","Viewed Audit Trails","21","2014-10-16 08:31:50");
INSERT INTO tbl_activity VALUES("13979","Viewed Audit Trails","21","2014-10-16 08:31:51");
INSERT INTO tbl_activity VALUES("13980","Viewed Audit Trails","21","2014-10-16 08:31:53");
INSERT INTO tbl_activity VALUES("13981","Viewed Audit Trails","21","2014-10-16 08:31:55");
INSERT INTO tbl_activity VALUES("13982","Viewed Audit Trails","21","2014-10-16 08:31:56");
INSERT INTO tbl_activity VALUES("13983","Viewed Audit Trails","21","2014-10-16 08:31:57");
INSERT INTO tbl_activity VALUES("13984","Viewed Audit Trails","21","2014-10-16 08:31:57");
INSERT INTO tbl_activity VALUES("13985","Viewed Audit Trails","21","2014-10-16 08:31:58");
INSERT INTO tbl_activity VALUES("13986","Viewed Audit Trails","21","2014-10-16 08:31:58");
INSERT INTO tbl_activity VALUES("13987","Viewed Audit Trails","21","2014-10-16 08:32:01");
INSERT INTO tbl_activity VALUES("13988","Viewed Audit Trails","21","2014-10-16 08:32:04");
INSERT INTO tbl_activity VALUES("13989","Viewed Audit Trails","21","2014-10-16 08:32:45");
INSERT INTO tbl_activity VALUES("13990","Viewed Audit Trails","21","2014-10-16 08:32:50");
INSERT INTO tbl_activity VALUES("13991","Viewed Audit Trails","21","2014-10-16 08:32:54");
INSERT INTO tbl_activity VALUES("13992","Viewed Audit Trails","21","2014-10-16 08:32:57");
INSERT INTO tbl_activity VALUES("13993","Viewed Audit Trails","21","2014-10-16 08:33:17");
INSERT INTO tbl_activity VALUES("13994","Viewed Audit Trails","21","2014-10-16 08:33:22");
INSERT INTO tbl_activity VALUES("13995","Viewed Audit Trails","21","2014-10-16 08:33:24");
INSERT INTO tbl_activity VALUES("13996","Viewed Audit Trails","21","2014-10-16 08:33:26");
INSERT INTO tbl_activity VALUES("13997","Viewed Audit Trails","21","2014-10-16 08:33:31");
INSERT INTO tbl_activity VALUES("13998","Viewed Audit Trails","21","2014-10-16 08:33:34");
INSERT INTO tbl_activity VALUES("13999","Viewed Audit Trails","21","2014-10-16 08:33:42");
INSERT INTO tbl_activity VALUES("14000","Viewed Audit Trails","21","2014-10-16 08:33:47");
INSERT INTO tbl_activity VALUES("14001","Viewed Audit Trails","21","2014-10-16 08:33:47");
INSERT INTO tbl_activity VALUES("14002","Searched Monthly Committee Report per Committee","21","2014-10-16 08:34:21");
INSERT INTO tbl_activity VALUES("14003","Searched Monthly Committee Report per Committee","21","2014-10-16 08:35:11");
INSERT INTO tbl_activity VALUES("14004","Searched Monthly Committee Report per Committee","21","2014-10-16 08:35:12");
INSERT INTO tbl_activity VALUES("14005","Searched Monthly Committee Report per Committee","21","2014-10-16 08:38:57");
INSERT INTO tbl_activity VALUES("14006","Searched Monthly Committee Report per Committee","21","2014-10-16 08:39:08");
INSERT INTO tbl_activity VALUES("14007","Searched Monthly Committe Report of Committee of Barangay Affairs","21","2014-10-16 08:39:08");
INSERT INTO tbl_activity VALUES("14008","Searched Monthly Committee Report per Committee","21","2014-10-16 08:39:20");
INSERT INTO tbl_activity VALUES("14009","Searched Monthly Committe Report of Committee of Ways and Means","21","2014-10-16 08:39:20");
INSERT INTO tbl_activity VALUES("14010","Searched Monthly Committee Report per Committee","21","2014-10-16 08:39:31");
INSERT INTO tbl_activity VALUES("14011","Searched Monthly Committe Report of Committee of Barangay Affairs","21","2014-10-16 08:39:31");
INSERT INTO tbl_activity VALUES("14012","Searched Monthly Committee Report per Committee","21","2014-10-16 08:39:41");
INSERT INTO tbl_activity VALUES("14013","Searched Monthly Committe Report of Committee of Barangay Affairs","21","2014-10-16 08:39:41");
INSERT INTO tbl_activity VALUES("14014","Searched Monthly Committee Report per Committee","21","2014-10-16 08:39:51");
INSERT INTO tbl_activity VALUES("14015","Searched Monthly Committe Report of Committee of Ways and Means","21","2014-10-16 08:39:51");
INSERT INTO tbl_activity VALUES("14016","Printed Monthly Committee Report of Committee of Ways and Means","21","2014-10-16 08:39:53");
INSERT INTO tbl_activity VALUES("14017","Return to Homepage","21","2014-10-16 08:40:24");
INSERT INTO tbl_activity VALUES("14018","Searched Monthly Committee Report per Committee","21","2014-10-16 08:40:28");
INSERT INTO tbl_activity VALUES("14019","Searched Yearly Committe Report per Committe","21","2014-10-16 08:40:31");
INSERT INTO tbl_activity VALUES("14020","Viewed Agenda List","21","2014-10-16 08:40:33");
INSERT INTO tbl_activity VALUES("14021","Printed Agenda ID: 1","21","2014-10-16 08:40:45");
INSERT INTO tbl_activity VALUES("14022","Viewed Agenda List","21","2014-10-16 08:40:49");
INSERT INTO tbl_activity VALUES("14023","Viewed Monitor Ordinance List","21","2014-10-16 08:40:58");
INSERT INTO tbl_activity VALUES("14024","Viewed Monitor Ordinance List","21","2014-10-16 08:41:01");
INSERT INTO tbl_activity VALUES("14025","Viewed Monitor Ordinance List","21","2014-10-16 08:41:10");
INSERT INTO tbl_activity VALUES("14026","Searched Monthly Committee Report per Committee","21","2014-10-16 08:41:12");
INSERT INTO tbl_activity VALUES("14027","Viewed Tracking List of Communication","21","2014-10-16 08:41:14");
INSERT INTO tbl_activity VALUES("14028","Viewed Tracking List of Communication","21","2014-10-16 08:41:37");
INSERT INTO tbl_activity VALUES("14029","Viewed Tracking List of Communication","21","2014-10-16 08:41:40");
INSERT INTO tbl_activity VALUES("14030","Viewed Tracking List of Communication","21","2014-10-16 08:41:41");
INSERT INTO tbl_activity VALUES("14031","Viewed Tracking List of Communication","21","2014-10-16 08:41:43");
INSERT INTO tbl_activity VALUES("14032","Viewed Tracking List of Communication","21","2014-10-16 08:41:44");
INSERT INTO tbl_activity VALUES("14033","Viewed Tracking List of Communication","21","2014-10-16 08:41:47");
INSERT INTO tbl_activity VALUES("14034","Viewed Tracking List of Communication","21","2014-10-16 08:41:49");
INSERT INTO tbl_activity VALUES("14035","Viewed Tracking List of Communication","21","2014-10-16 08:41:50");
INSERT INTO tbl_activity VALUES("14036","Viewed Tracking List of Communication","21","2014-10-16 08:41:52");
INSERT INTO tbl_activity VALUES("14037","Viewed Tracking List of Communication","21","2014-10-16 08:41:53");
INSERT INTO tbl_activity VALUES("14038","Viewed Tracking List of Communication","21","2014-10-16 08:41:55");
INSERT INTO tbl_activity VALUES("14039","Searched Yearly Committe Report per Committe","21","2014-10-16 08:42:04");
INSERT INTO tbl_activity VALUES("14040","Searched Yearly Committe Report per Committe","21","2014-10-16 08:42:10");
INSERT INTO tbl_activity VALUES("14041","Searched Yearly Committe Report of Committee of Ways and Means","21","2014-10-16 08:42:10");
INSERT INTO tbl_activity VALUES("14042","Searched Yearly Committe Report of Committee of Ways and Means","21","2014-10-16 08:42:15");
INSERT INTO tbl_activity VALUES("14043","Searched Yearly Committe Report per Committe","21","2014-10-16 08:42:20");
INSERT INTO tbl_activity VALUES("14044","Searched Monthly Committee Report per Committee","21","2014-10-16 08:42:23");
INSERT INTO tbl_activity VALUES("14045","Viewed Agenda List","21","2014-10-16 08:42:25");
INSERT INTO tbl_activity VALUES("14046","Viewed Agenda ID: 1","21","2014-10-16 08:42:30");
INSERT INTO tbl_activity VALUES("14047","Viewed List of Communication","21","2014-10-16 08:42:57");
INSERT INTO tbl_activity VALUES("14048","Viewed List of Communication","21","2014-10-16 08:43:01");
INSERT INTO tbl_activity VALUES("14049","Viewed List of Communication","21","2014-10-16 08:43:04");
INSERT INTO tbl_activity VALUES("14050","Viewed Communication for Referral List","21","2014-10-16 08:43:05");
INSERT INTO tbl_activity VALUES("14051","Viewed List of Referrals for Committe Meeting","21","2014-10-16 08:43:09");
INSERT INTO tbl_activity VALUES("14052","Viewed List of Referral for Committee Meeting","21","2014-10-16 08:43:12");
INSERT INTO tbl_activity VALUES("14053","Viewed List of Referral for Committee Meeting","21","2014-10-16 08:43:15");
INSERT INTO tbl_activity VALUES("14054","Viewed Committee Meeting List for Resolution","21","2014-10-16 08:43:22");
INSERT INTO tbl_activity VALUES("14055","Viewed Committee Meeting List for Resolution","21","2014-10-16 08:43:24");
INSERT INTO tbl_activity VALUES("14056","Viewed Committee Meeting List for Resolution","21","2014-10-16 08:43:26");
INSERT INTO tbl_activity VALUES("14057","Viewed List of Communication","21","2014-10-16 08:43:28");
INSERT INTO tbl_activity VALUES("14058","Return to Homepage","21","2014-10-16 08:43:29");
INSERT INTO tbl_activity VALUES("14059","Viewed User List","21","2014-10-16 08:43:37");
INSERT INTO tbl_activity VALUES("14060","Viewed User List","21","2014-10-16 08:43:40");
INSERT INTO tbl_activity VALUES("14061","Viewed User List","21","2014-10-16 08:43:42");
INSERT INTO tbl_activity VALUES("14062","Viewed User List","21","2014-10-16 08:43:56");
INSERT INTO tbl_activity VALUES("14063","Viewed User List","21","2014-10-16 08:43:59");
INSERT INTO tbl_activity VALUES("14064","Viewed User List","21","2014-10-16 08:44:01");
INSERT INTO tbl_activity VALUES("14065","Viewed User ID: yobi","21","2014-10-16 08:44:03");
INSERT INTO tbl_activity VALUES("14066","Viewed User List","21","2014-10-16 08:44:05");
INSERT INTO tbl_activity VALUES("14067","Viewed User List","21","2014-10-16 08:44:10");
INSERT INTO tbl_activity VALUES("14068","Viewed Backed-up System List","21","2014-10-16 08:44:18");
INSERT INTO tbl_activity VALUES("14069","Viewed Backed-up System List","21","2014-10-16 08:44:21");
INSERT INTO tbl_activity VALUES("14070","Viewed Backed-up System List","21","2014-10-16 08:44:23");



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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO tbl_comm_meeting_ordi VALUES("1","16","1","2014-05-29","0000-00-00","2014-05-29","21","1"," comm rprt DRAFT ORDI 058-2014 TANDOK.pdf","0","0");



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
  CONSTRAINT `FK__tbl_referral` FOREIGN KEY (`ref_id`) REFERENCES `tbl_referral` (`ref_id`),
  CONSTRAINT `FK_tbl_comm_meeting_reso_tbl_employee` FOREIGN KEY (`input_by`) REFERENCES `tbl_employee` (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=latin1;

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
INSERT INTO tbl_comm_meeting_reso VALUES("62","54","1","2014-07-03","2014-07-03","21","comm rprt MO no 08-2014 San Juan.pdf","1","0","0");
INSERT INTO tbl_comm_meeting_reso VALUES("63","58","1","2014-02-03","2014-02-03","21","comm rprt ord no 20 2013 bauang.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("64","59","1","2014-03-05","2014-03-05","21","comm rprt MO no. 167-2013 Aringay.pdf","1","0","0");
INSERT INTO tbl_comm_meeting_reso VALUES("65","60","1","2014-03-21","2014-03-21","21","comm rprt MO no 01, s 2014 Balaoan.pdf","1","0","0");
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
INSERT INTO tbl_comm_meeting_reso VALUES("85","103","1","2014-07-09","2014-07-09","21","comm rprt MO no 04-2014 Agoo.pdf","1","0","0");
INSERT INTO tbl_comm_meeting_reso VALUES("86","104","1","2014-01-30","2014-01-30","21"," comm rprt Ord no 19,09,10-2013 Bauang.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("87","105","1","2014-04-30","2014-04-30","21"," comm rprt MO 2013-108 Santol.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("88","106","1","2014-05-29","2014-05-29","21"," comm rprt MO no 23 Naguilian.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("89","108","1","2014-04-30","2014-04-30","21"," comm rprt MO 102, s 2014 Sudipen.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("90","109","1","2014-07-24","2014-07-24","21"," comm rprt MO no 2013-19 Rev code Agoo.pdf","1","0","0");



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

INSERT INTO tbl_communication VALUES("2014 - 0001","ORDINANCE NO. 161,\nTO AMEND SECTIONS 13, 19 AND 20 OF ORDINANCE NO.\n151, \"THE SCHOLARSHIP PROGRAM OF THE\nMUNICIPALITY OF ARINGAY, LA UNION. \"","2014-01-02","20","12","21","Ord 161 Aringay Scholarship.pdf","2014-01-02","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0002","Submit SB # 4, involving an appropriation of P20M for the enactment of the required appropriation ordinance.","2014-01-03","8","20","21","A SB No. 4.pdf","2014-01-09","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0003","Recommend approval of the FY 2014 GF AB of Sto. Toma, La Union.","2013-12-26","7","3","21","A1 FY 2014 GFAB Sto Tomas.pdf","2014-01-02","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0004","Recommend approval of the FY 2014 GF SB #4 of Sudipen, La Union.","2013-12-27","8","3","21","A2 FY GFSB 4 Sudipen.pdf","2014-01-02","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0005","An Ord Authorizing the Proposed Borrowing of the Mun of Caba, Province of La Union in the amount of P8M to Fund the Expansion of Caba Memorial Park (P5M) & Construction of Legislative Bldg (P3M)","2013-12-27","8","9","21","C Res 77 Caba.pdf","2014-01-02","2","0","0");
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
INSERT INTO tbl_communication VALUES("2014 - 0029","Commutation of the TLB claim of MR. JESUS WILLIAM M. RAQUEPO, Prison Guard I, OPG, in the amount of P93,190.68","2014-01-13","6","24","21","B Terminal Leave Mr. Jesus William M. Raquepo.pdf","2014-01-16","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0030","Recommend approval of the FY 2014 GF AB of Sudipen, LU","2014-01-13","7","3","21","A5 FY 2014 GFAB Sudipen.pdf","2014-01-16","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0031","Resolution commending the Agoo Children’s Choir for Winning the Silver Diploma in the Recently Concluded International Choral Competition held at the CCP, Manila","2014-01-14","23","28","21","I Agoo children\'s choir.pdf","2014-01-16","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0032","Mun Ord # 24-2013, An Ord Amending the Title, Sec 1, Sec 2.b, 3, 4, 6.a, 6.e, 12.a, 13, 14, 16 of Mun Ord # 29-2012, An Ord Designating Denny’s Park in Consolacion, Agoo, LU as a Special Economic Zone & Prescribing Rates & Regulations on the Rental of Stalls w/ the Area.","2014-01-14","20","27","21","E Mun Ord No. 24-2013 Agoo.pdf","2014-01-16","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0033","Mun Ord # 25-2013, An Ord Mandating All Parents/Guardians of School Children ages 5 Yrs. Old & Above to Enroll in Basic Education in Any Learning Institution in the Mun of Agoo, LU","2014-01-14","20","27","21","F Mun Ord No. 25-2013 Agoo.pdf","2014-01-16","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0034","Mun Ord # 27-2013, An Ord Amending Sec 2.B, Sec 5, & 6 of Mun Ord # 13-2013, An Ord Prohibiting Any Fishing Activity w/n the 200 Meters Radius from the Existing Artificial Reefs in the Mun Waters of Agoo, LU & Providing Penalties for Violation Thereof”","2014-01-14","20","27","21","G Mun Ord No. 27-2013 Agoo.pdf","2014-01-16","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0035","Mun Ord # 29-2013, An Ord Amending Chapter 14, No. 2, 3, 4 & 10 of Mun Ord # 02A-2013, “An Ord Enacting the Code of General Ordinances of the Mun of Agoo, LU & for Other Purposes”","2014-01-14","20","27","21","H mun ord no. 29-2013 agoo.pdf","2014-01-16","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0036","Letter of reconsideration on their Mun Ord # 164, Anti-Truancy Ordinance","2014-01-16","17","12","21","Ord 161 Aringay Scholarship.pdf","2014-02-06","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0037","Letter of clarification on their Mun Ord # 161, Amending their Scholarship Ord","2014-01-16","17","12","21","Ord 161 Aringay Scholarship.pdf","2014-02-13","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0038","Recommend approval of the FY 2014 GF SB # 1, of Tubao, La Union.","2014-01-22","8","3","21","B2 FY 2014 GSFB No. 1 Tubao.pdf","2014-01-30","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0039","Recommend approval of the FY 2014 GF AB, of Aringay, La Union.","2014-01-22","7","3","21","B3 FY 2014 GFAB Aringay.pdf","2014-01-30","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0040","Recommend approval of the FY 2014 GF AB, of Balaoan, La Union.","2014-01-22","7","3","21","B4 FY 2014 GFAB Balaoan.pdf","2014-01-30","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0041","Recommend approval of the FY 2013 GF SB # 1, of Naguilian, La Union","2014-01-22","8","3","21","B1 FY 2013 GFSB No. 1 Naguilian.pdf","2014-01-30","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0042","Request to enter into a Contract of Agreement w/ Dr. Eric Piscawen as Visiting Consultant in Orthopedics at Balaoan Dist Hosp","2014-01-22","17","20","21","AGE01-22.14 special.pdf","2014-01-23","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0043","Request to authorize the payment of Accounts Payable in the amount of P7,106,760.87 to be charged to the Current Appropriations","2014-01-22","17","20","21","AGE01-22.14 special.pdf","2014-01-23","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0044","Request authority to renew the Contract of Consultancy Services of the ff effective Jan 2 to Dec 31, 2014","2014-01-22","17","20","21","AGE01-22.14 special.pdf","2014-01-23","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0045","Ord # 23, s 2013, An Ord Prescribing a Doctor’s Certification Fee on all Death Certificates Signed by the Mun Health Officer of the Mun of Naguilian & Issued by the Office of the Local Civil Registrar & amending for the Purpose Sec 133, Art B of the 2011 Mun Revenue Code of the Mun of Naguilian, La Union.","2014-01-23","20","18","21","D Mun Ord No. 23 Naguilian.pdf","2014-01-30","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0046","Ord # 24, s 2013, An Ord Prescribing Fees for the Annotation of Decrees of Adoption & Nullity of Marriage at the Local Civil Registry Office Amending for the Purpose Sec 133 of the Revenue Code of the Mun of Naguilian, Prov of La Union","2014-01-23","20","18","21","E Mun Ord No. 24 Naguilian.pdf","2014-01-30","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0047","Ord # 31, s 2013, An Ord Prohibiting the Use of Modified Mufflers, Sirens & Horns that Create & Generate Loud & Deafening Sound in Motorcycles and All Types of Vehicles that Ply the Streets & Thoroughfares w/n the Territorial Jurisdiction of the Mun of Naguilian, Prov of LU, and Imposing Penalties in Violation or Infringement Thereof and for Other Purposes","2014-01-23","20","18","21","G Ord No. 31 Naguilian.pdf","2014-01-30","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0048","Commutation of the TLB claim of MR. JEFFERSON G. DOCTOR, Laborer I, OPG, in the amt of P26,031.78","2014-01-23","6","24","21","C1 leave benefit Mr. Jefferson G. Doctor.pdf","2014-01-30","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0049","Request authority to enter into a MOA w/ MERCK SHARP & DOHME (IA) CORP, Makati City for the effective, efficient and innovative implementation of a model LGU Access Program for Pneumonia and Cervical Cancer (HPV) Vaccination Program ","2014-01-24","1","20","21","A MOA PGLU-MSD.pdf","2014-01-30","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0050","Mun Ord # 98, s 2013, Internal Rules of Procedure of the SB of Sudipen, La Union","2014-01-24","20","14","21","H Mun Ord No. 98 s. 2013 Sudipen.pdf","2014-01-30","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0051","Mun Ord # 102, s 2014, An Ord Enacting the Market Code of the Mun of Sudipen, La Union.","2014-01-24","20","14","21","I Mun Ord No. 102 s. 2014 Sudipen.pdf","2014-01-30","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0052","Ord # 169, Prohibiting the Operation of Motorcycles w/o Mufflers or Silencers w/n the Jurisdiction of the Mun of Aringay, La Union.","2014-01-27","20","12","21","J Ord No. 169 Aringay.pdf","2014-01-30","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0053","An Ord Setting the Guidelines & Policies in the Use of the Heavy Equipments Owned & Maintained by the Mun of Aringay, LU","2014-01-27","20","12","21","K Ord 170 Aringay.pdf","2014-01-30","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0054","Commutation of the TLB claim of MS. BRESILDA C. JUCAR, Admin Aide II, PHO, in the amt of P16,539.81","2014-01-27","6","24","21","C2 leave benefit Mrs. Bresilda C. Jucar.pdf","2014-01-30","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0055","Commutation of the TLB claim of MR. RIZALDO M. BENITEZ, Construction Man, OPE, in the amt of P33,013.06","2014-01-27","6","24","21","C3 leave benefit Mr. Rizaldo M. Benitez.pdf","2014-01-30","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0056","SP Camarines Norte, Res # 489-2013 - Support HB 242, An Act Lowering the Mandatory Retirement Age of Gov’t Employee Amending for the Purpose Sec 13(B) & 13(A) of RA 8291, GSIS Act of 1997, & for Other Purposes","2014-01-27","17","34","21","M Res 489-2013 SP Cam Norte Daet.pdf","2014-01-30","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0057","Addendum to Mun Ord # 2013-19, Revenue Code of the Mun of Agoo, La Union.","2014-01-30","17","27","21","G letter - Municipal Ord. No. 2013-19 agoo .pdf","2014-02-05","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0058","Request for the realignment of P10M under the share of RA 7171 for the purchase of add’l lot for the Farmer’s Multi-Purpose Center & Demo Farm.","2014-01-30","9","20","21","RESOLUTION 044-2014.pdf","2014-01-30","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0059","Request authority to enter into a MOA w/ the Mun Gov’t of Rosario, LU, in connection w/ the construction of Farmer’s Multi-Purpose Hall (Phase I) in Brgy. Bangar, Rosario, La Union","2014-01-30","1","20","21","RESOLUTION 043-2014.pdf","2014-01-30","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0060","Recommend approval of the FY 2014 GF AB, of Rosario, LU","2014-02-03","7","3","21","C FY 2014 GFAB Rosario.pdf","2014-02-06","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0061","Commutation of the TLB claim of MR. IGMIDIO A. PADILLA, Farm Worker II, OPVet, in the amt of P24,864.14","2014-02-03","6","24","21","D3 leave benefit Mr. Igmidio.pdf","2014-02-06","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0062","Commutation of the TLB claim of MS. CRESENCIA D. ISIBIDO, Farm Foreman, OPVet, in the amt of P294,886.37","2014-02-03","6","24","21","D2 leave benefit Ms Isibido.pdf","2014-02-06","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0063","Commutation of the TLB claim of HON. KENNETH PAOLO C. TERENG, SPM, OSP, in the amt of P267,659.96","2014-02-03","6","24","21","D1 leave benefit Hon Tereng.pdf","2014-02-06","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0064","Request to authorize the payment of Accounts Payable in the amt of P6,949,627.38 to be charged to the Current Appropriations","2014-02-05","17","20","21","A Let Gov payment of Accounts Payables.pdf","2014-02-06","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0065","SP Misamis Occidental, R # 271-13 - Request GSIS Board of Trustees to adopt strategies to adjust the interest rates of all GSIS Loan in order to make existing loan windows less burdensome to gov’t employees for the benefit of its members","2014-02-05","17","34","21","H Res 271-13 SP Misamis Occidental.pdf","2014-02-06","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0066","Request to enter into the Amended Deed of Donation w/ Partial Revocation of Donation w/ the CDA, donating a 450 sq.m. property at Aguila Rd., Sevilla, CFLU.","2014-02-05","17","20","21","B CDA.pdf","2014-02-06","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0067","Request to enter into a Contract of Agreement, w/ Dr. Carolyn B. Tabora, OB-GYNE.","2014-02-11","17","20","21","A COA with Dr. Carolyn B. Tabora.pdf","2014-02-13","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0068","Request authority to Renew the MOA/Contract of Affiliation of all concerned colleges, universities and schools of Nursing, Caregivers and Midwifery & other Vocational & Technical Institutions for the 5 District Hospitals, Dept and Offices of the Prov for SY 2014-2015","2014-02-11","17","20","21","B renew MOA of all colleges & universities.pdf","2014-02-13","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0069","Request to pass a Res to adjust the present salary Grade of Dr. Godofredo G. Garcia, Chief of Hospital II, NDH from SG 24-5 (P51,975/mo) to SG 25-5 (P56,133/m0) effective April 5, 2014","2014-02-11","17","20","21","C Dr. Godofredo G. Garcia.pdf","2014-02-13","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0070","Commutation of the TLB claim of MR. LEANDRO R. MUPAS, Admin Aide III, SP Office, in the amt of P27,870.83","2014-02-11","6","24","21","D6 leave benefit Mr. Leandro R. Mupas.pdf","2014-02-13","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0071","Request for the realignment of the amount of P3M & the use from the Item Peace & Order Initiative Fund from CY 2014 to Intelligence & Confidential Fund.","2014-02-13","9","20","21","A COA with Dr. Carolyn B. Tabora.pdf","2014-02-13","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0072","Ord # 167, An Ord Creating the Aringay Mun Housing Board, Defining Its Clearinghouse Functions Pursuant to EO # 708, s 2008, and for Other Purposes.","2014-02-13","20","12","21","H Ord No. 167 Aringay.pdf","2014-02-20","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0073","Commutation of the TLB claim of MR. AGAPITO A. BUADO, Admin Aide VI, RDH in the amt of P9,868.84","2014-02-13","6","24","21","G1 terminal leave Mr. Agapito A. Buado, Jr..pdf","2014-02-20","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0074","Commutation of the TLB claim of MR. CIRILO T. JARAVATA, Farm Worker I, OPVet, in the amt of P159,684.14","2014-02-13","6","24","21","G2 terminal leave Mr. Cirilo T. Jaravata.pdf","2014-02-20","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0075","Commutation of the TLB claim of MRS. FELICITAS B. MIAGA, Laundry Worker I, NDH in the amt of P129,364.54","2014-02-13","6","24","21","G4 terminal leave Mrs. Felicitas B. Miaga.pdf","2014-02-20","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0076","Commutation of the TLB claim of MS. ANNABELLE F. SAMONG, Admin Aide III, SP Office, in the amt of P63,543.64","2014-02-14","6","24","21","G3 terminal leave Ms. Annabelle F. Samong.pdf","2014-02-20","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0077","Endorse the Application for Accreditation of the Sultanate League of Northern Luzon","2014-02-17","17","20","21","I Accreditation Sultanate League.pdf","2014-02-20","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0078","Endorse the draft resolutions:\n\na.	Establishing a Local Legislative-Executive Dev’t Advisory Committee (LLEDAC)\nb.	Creating an ELA Oversight Committee & for Other Purposes\n","2014-02-19","17","20","21","C LEDAC ELA oversight committee.pdf","2014-02-20","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0079","Request to enter into a MOA w/ the Population Services Pilipinas, Inc, Marie Stopes Clinic, Urdaneta, Pangasinan in connection w/ the Population & Dev’t of the Province thru the Bilateral Tubal Ligation (BTL) for qualified and interested women of reproductive age.","2014-02-19","17","20","21","B MOA Population Services Pilipinas Inc (BTL).pdf","2014-02-20","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0080","Submit the consolidated CY 2014 Supplemental AIP from the different offices of the PGLU\n\na.	OPG\nb.	PGSO\nc.	PHO","2014-02-19","13","20","21","A CY 2014 SAIP OPG PGSO PHO.pdf","2014-02-20","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0081","Commutation of the TLB Claim of MS. PRISCA A. PATACSIL, Midwife II, NDH, in the amt of P367,269.83","2014-02-19","6","24","21","B terminal leave Mrs. Prisca A. Patacsil.pdf","2014-02-27","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0082","Recommend approval of the FY 2014 GF AB, of San Gabriel, LU","2014-02-21","7","3","21","A FY 2014 GFAB San Gabriel.pdf","2014-02-27","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0083","Recommend approval of the FY 2014 GF AB, of Santol, LU","2014-02-27","7","3","21","C FY 2014 GFAB Santol.pdf","2014-03-06","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0084","An Ord Establishing the Mun Birthing Clinic of Pugo, LU & Defining Its Functions, Operations & Administration","2014-02-28","20","7","21","D Ord 2013-108 Pugo - Birthing Clinic.pdf","2014-03-06","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0085","Ord # 2013-109, A Code Promulgating Policies and Measures for the Prevention & Control of HIV/AIDS in the Mun of Pugo, LU","2014-02-28","20","7","21","D Ord 2013-108 Pugo.pdf","2014-03-06","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0086","Request to enact a Board Res of Congratulations to Mr. Sephi Marz Gines Liclican in recognition of his outstanding achievement in the International Math Competition.","2014-03-04","25","20","21","A Urgent Ltr Gov request Res of Congratz.pdf","2014-03-06","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0087","Mun Ord # 01-2014, An Ord Requiring All Elem & HS Principals/Administrators in the Mun of San Juan to Hold an Info Campaign Not Shorter than 5 Minutes Every Mon After Flag Ceremony on How to Prevent Drug Abuse","2014-03-04","20","6","21","F Mun Ord 01-2014 San Juan.pdf","2014-03-06","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0088","Ord # 1-2014, An Ord Amending Ord # 10-2013, An Ord Regulating the Sale, Distribution, Display, Storage & Use of Firecrackers & Other Pyrotechnic Devices w/n the Jurisdiction of San Gabriel, LU","2014-03-05","20","16","21","H Ord No 1-2014 San Gabriel amend Ord 10-2013.pdf","2014-03-20","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0089","Ord # 2-2014, An Ord Amending the 2013 Env’t Code of the Mun of San Gabriel, LU","2014-03-05","20","16","21","I Ord No 2-2014 San Gabriel environment code.pdf","2014-03-20","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0090","Commutation of the TLB claim of MR. JOVENTINO M. NISPEROS, Admin Aide I, Balaoan Dist Hosp, in the amt of P193,518.45","2014-03-05","6","24","21","F1 Terminal Leave Mr Joventino M Nisperos.pdf","2014-03-20","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0091","Recommend approval of the FY 2014 GF SB # 1, of Agoo, LU","2014-03-05","8","3","21","E2 FY 2014 GFSB No. 1 Agoo.pdf","2014-03-20","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0092","Recommend approval of the FY 2014 GF SB # 1, of Balaoan, LU","2014-03-05","8","3","21","E1 FY 2014 GFAB No. 1 Balaoan.pdf","2014-03-20","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0093","Ord # 480, s 2014, Market Code of Bacnotan, LU (2014 Version)","2014-02-05","20","19","21","J Ord 480 s 2014 Bacnotan Market Code.pdf","2014-02-20","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0094","Ord # 481, s 2014, The Amended Env’t Code of Bacnotan, LU, s 2014","2014-03-05","20","19","21","K Ord 481 s 2014 Bacnotan envi code.pdf","2014-03-20","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0095","Request to charge P94,660.00 to the Current Appropriation CY 2014 for the purchase guns, (Capital Outlay) and Ammunitions (Supplies) under the OPG","2014-03-06","17","20","21","E2 FY 2014 GFSB No. 1 Agoo.pdf","2014-03-06","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0096","Letter of Gov. Manuel C. Ortega respectfully endorsing to the Hon.\nBody the Three-Year Provincial Commodity Investment Plan (PCIP)\nof the Province of La Union for 2014-2017","2014-03-10","17","20","21","A 3 yr Provl Com invsmnt pln 2014-2017.pdf","2014-03-20","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0097","Mun Ord # 42-2012, An Ord to Prohibit the Unauthorized Wearing of PNP/AFP Uniforms by any Individual who is not a Legitimate Member of the PNP/AFP w/n the Territorial Jurisdiction of the Mun of Luna, LU","2014-03-10","20","2","21","G Mun Ord 42-2012 Luna PNP-AFP Unioform.pdf","2014-03-20","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0098","Commutation of the TLB claim of MS. AURORA R. BENGSON, Admin Asst III, PLO, in the amt of P80,857.62","2014-03-13","6","24","21","F2 Terminal Leave Ms. Aurora R. Bengson.pdf","2014-03-20","2","0","0");
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
INSERT INTO tbl_communication VALUES("2014 - 0124","Request to allow him to charge the wages and other benefits of casual employees against the appropriation of vacant positions of offices where they are detailed","2014-04-03","17","20","21","Ltr of Gov wages employees CY 2014.pdf","2014-04-03","2","0","0");
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
INSERT INTO tbl_communication VALUES("2014 - 0138","Ord # 23, s 2013, An Ord Prescribing a Doctor’s Certification Fee on All Death Certificates Signed by the Mun Health Officer of the Mun of Naguilian and Issued by the Office of the Local Civil Registrar and amending for the Purpose Sec 133, Article B of the 2011 Mun Revenue Code of the Mun of Naguilian, LU ","2014-04-21","20","18","21","H Ord 23 S 2013 and Ord 24-2013  Naguilian.pdf","2014-04-24","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0139","Ord # 24, s 2013, An Ord Prescribing Fees for the Annotation of Decrees of Adoption and Nullity of Marriage at the Local Civil Registry Office Amending for the Purpose Section 133 of the Revenue Code of the Mun of Naguilian, Prov of LU ","2014-04-21","20","18","21","I Mun Ord 24 Series 2013 Mun Naguilian.pdf","2014-04-24","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0140","Res # 64, s 2013, Request the SP, Prov of LU to Declare the Balecbec-Basca Rd as an Extension of the Naguilian-Caba Prov’l Rd","2014-04-21","22","18","21","G Res 64 Series 2013 Mun Naguilian .pdf","2014-04-24","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0141","Mun Ord # 03-2014, An Ord Imposing Penalty to Vendors from Selling Double Dead Meat (Bocha), Hot Meat and Spoiled Meat to Consuming Public.","2014-04-22","20","6","21","E Mun Ord 03-2014 Mun San Juan.pdf","2014-04-24","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0142","Request for the amendment of Section10 of SP Ordinance No.3-94 from the P50T to P1M appropriation intended for the promotion of voluntary blood ","2014-04-23","17","20","21","C Amend SP Ord 3-94  .pdf","2014-04-24","2","0","0");
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
INSERT INTO tbl_communication VALUES("2014 - 0159","Request to pass a Resolution adjusting the present Salary Step to one step higher of the salary of the ff RDH employees, effective Jan 1, 2014, to wit:\n\na.	Milagros F. Estabillo – Nurse I\nb.	Alexander N. Flores – Admin Off V\nc.	Anna Lorraine A. Rebadavia – Med Tech I\n","2014-05-14","17","20","21","F Request Salary Increment.pdf","2014-05-15","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0160","Mauro Libatique, PPDC - Forward the CLUP and Zoning Ord of the Mun of Bangar, LU for CY 2013-2022","2014-05-14","17","34","21","G CLUP  ZO Mun of Bangar La Union CY 2013-2022.pdf","2014-05-15","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0161","Letter of Governor Manuel C. Ortega respectfully submitting to the\nHonorable members Supplemental Budget No. 1 involving a Total Appropriation of P25,015,792.00 for the enactment of the required appropriation ordinance.","2014-05-14","8","20","21","MIN05-08.14.pdf","2014-05-15","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0162","Commutation of the TLB claim of MR. PAULUS O. FOLLOSCO, Laborer I, OVG, in the amt of P10,317.43","2014-05-14","6","24","21","C Terminal Leave Paulus O Follosco.pdf","2014-05-22","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0163","City Ord # 2014-01, An Ord Amending City Ord # 2013-01, An Ord Requiring the Foodservice Industry w/n the Territorial Jurisdiction of the CSF, LU to Include ½ Cup of Cooked Rice in their Menu","2014-05-14","20","5","21","D City Ord 2014-01 CSFLU.pdf","2014-05-22","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0164","City Ord # 2014-02, An Ord Prohibiting the Use, Sale, Distribution and Advertisement of Cigarettes and other Tobacco Products in Certain Places, Imposing Penalties for Violations Thereof, and Providing Funds Therefor, and for Other Purposes and Repealing City Ord # 2011-05, An Ord Regulating Smoking in the CSF and Providing Penalties for Violation Thereof","2014-05-14","20","5","21","E City Ord 2014-02 CSFLU.pdf","2014-05-22","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0165","Draft Ordinance No. 058-2014 entitled: \"An Act Prohibiting the Practice of “Tandok” in Treating Animal Bites within the Territorial Jurisdiction of the Province and Providing Penalties for Violation Thereof.\"","2014-05-21","21","36","21","H Draft Ord. No. 058-2014.pdf","2014-05-22","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0166","Mun Ord # 05-2014, An Ord Requiring Owners of Hotels and Resorts to Install Placards Informing the Foreign and Local Tourists that Night Swimming is Banned from 6PM to 6AM and Warning in the Hazards of Swimming Under the Influence of Liquor","2014-05-21","20","6","21","F Mun Ord No 05-2014 San Juan La Union.pdf","2014-05-22","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0167","Request the enactment of a Res for the granting of salary step increment to qualified employees for CY 2014","2014-05-26","17","20","21","B Ltr Gov Step Increment for CY 2014.pdf","2014-05-29","2","0","0");
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
INSERT INTO tbl_communication VALUES("2014 - 0181","Commutation of the TLB claim of MR. ARNOLD CASTANEDA, Revenue Collection Clerk I, PTO, in the amt of P66,780.92.\nCommutation of the TLB claim of MR. BEN DUCUSION, Admin Aide I, PTO, in the amt of P259,481.48.\nCommutation of the TLB claim of MR. GABRIEL C. FLORES, Prison Guard I, OPG, in the amt of P174,927.09.\n","2014-06-04","6","24","21","B1 TL Mr. Arnold L. Castañeda.pdf","2014-06-05","2","0","0");
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
INSERT INTO tbl_communication VALUES("2014 - 0197","Mun Ord # 42-2012, An Ord to Prohibit the Unauthorized Wearing of PNP/AFP Uniforms by any Individual who is not a Legitimate Member of the PNP/AFP w/n the Territorial Jurisdiction of the Mun of Luna, La union.","2014-06-13","20","2","21","I Mun Ord No 42-2012 Luna.pdf","2014-06-19","2","0","0");
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
INSERT INTO tbl_communication VALUES("2014 - 0221","Request to enter into a MOA w/ BFAR – Region I, the Mun of Bacnotan and the Baroro Fishermen Asso.. Relative to the grant of 2 units of Payao Project to the association in line w/ the fishery program of the province.","2014-07-02","17","20","21","A Ltr Gov Urgent MOA BFAR Bacnotan.pdf","2014-07-03","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0222","Request to enter into a Contract of Consultancy Service w/ Mr. Marc Christopher R. Ortega as Consultant of the Office of the Governor on Disaster Risk Reduction and Management Affairs effective July 1, 2014 to December 31, 2014 w/ a consultancy fee of P20,000.00.","2014-07-02","17","20","21","B Ltr Gov Consultant Marc Ortega.pdf","2014-07-03","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0223","Request the Municipal/City Mayors of the Prov ofLU to Install CCTV in Flood and Accident Prone Areas & w/n the Premises of Schools, Marketplaces and Other Public Establishments and Strategic Areas in their Respective Municipalities/City","2014-07-02","17","38","21","C FY 2014 GFAB Bacnotan.pdf","2014-07-03","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0224","Recommend approval of the FY 2014 GF SB # 1, of San Gabriel, La Union.","2014-07-03","8","3","21","D2 FY 2014 GFSB 1 San Gabriel .pdf","2014-07-10","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0225","Recommend approval of the FY 2014 GF SB # 3, of Agoo, La Union.","2014-07-03","8","3","21","D1 FY 2014 GFSB 3 Agoo .pdf","2014-07-10","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0226","Commutation of the TLB Claim of MR. EDMUNDO M. STA. MONICA, Admin Aide IV, OPG, in the amt of P47,574.87","2014-07-04","6","24","21","E1 TL Mr. Edmindo M. Sta. Monica, Jr..pdf","2014-07-10","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0227","Request to enter into a Contract of Lease (COL), w/ the Nat’l Commission on Indigenous Peoples (NCIP) in connection w/ the lot owned by the PGLU at the sub-regional gov’t center along Aguila Rd., for the construction of the NCIP regional office bldg.","2014-07-07","17","20","21","A Ltr Gov Contract Of Lease (NCIP).pdf","2014-07-10","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0228","Recommend approval of the FY 2014 GF SB # 1, of CSF, La Union.","2014-07-08","8","3","21","D3 FY 2014 GFS Budget No.1 of CSF.pdf","2014-07-10","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0229","Submit the consolidated CY 2015 Supplemental AIP of the ff offices of the PGLU:\n\na.	OPG\nb.	SP\nc.	Balaoan Dist Hosp\n","2014-07-08","13","20","21","B Ltr Gov CY-2014 Supplemental AIP.pdf","2014-07-10","2","0","0");
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

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
INSERT INTO tbl_officials VALUES("17","20","2004-01-01","2007-01-01");
INSERT INTO tbl_officials VALUES("18","26","2010-01-01","2013-01-01");
INSERT INTO tbl_officials VALUES("19","27","2010-01-01","2013-01-01");
INSERT INTO tbl_officials VALUES("20","28","2010-01-01","2013-01-01");
INSERT INTO tbl_officials VALUES("21","29","2010-01-01","2013-01-01");



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
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=latin1;

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
INSERT INTO tbl_referral VALUES("46","2014 - 0174","2014-06-06","13","17,22","0606 MO no 06-2014 SAN JUAN.pdf","21","0","0");
INSERT INTO tbl_referral VALUES("47","2014 - 0205","2014-06-30","13","17","0630 MO no 09-2014 AGOO.pdf","21","0","0");
INSERT INTO tbl_referral VALUES("48","2014 - 0011","2014-01-10","14","21","0110 Ord no. 2011-085 SANTOL .pdf","21","1","0");
INSERT INTO tbl_referral VALUES("49","2014 - 0084","2014-03-07","14","17","0307 ord no. 2013-108 & 2013-109 PUGO.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("50","2014 - 0085","2014-03-07","14","17","0307 ord no. 2013-108 & 2013-109 PUGO.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("51","2014 - 0129","2014-04-15","14","17","0415 Ord no. 02-2014 SAN JUAN.pdf","21","0","0");
INSERT INTO tbl_referral VALUES("52","2014 - 0135","2014-04-25","14","17","0425 Ord no. 482-2014 BACNOTAN.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("53","2014 - 0141","2014-04-25","14","17,22","0425 MO. no 03-2014 SAN JUAN.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("54","2014 - 0191","2014-06-23","14","17,22","0623 MO. no 08-2014 SAN JUAN.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("55","2014 - 0173","2014-06-30","14","5,17","0630 Draft Ordi no. 059-2014 LA UNION.pdf","21","0","0");
INSERT INTO tbl_referral VALUES("56","2014 - 0211","2014-07-04","14","17","0704 Ord no. 113-2014 PUGO.pdf","21","0","0");
INSERT INTO tbl_referral VALUES("57","2014 - 0212","2014-07-04","14","12,17","0704 Ord no. 2014-114 PUGO.pdf","21","0","0");
INSERT INTO tbl_referral VALUES("58","2014 - 0008","2014-01-10","25","17","0110 Ord no. 20 embodied in res. no 69-2013 BAUANG.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("59","2014 - 0072","2014-02-21","25","17","0221 Ord no. 167 ARINGAY.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("60","2014 - 0102","2014-03-21","25","17","0321 MO. ord no 01 s 2014 BALAOAN.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("61","2014 - 0136","2014-04-25","25","17","0425 Res no 14, s 2014 Bagulin.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("62","2014 - 0160","2014-05-16","25","","0516 ltr of Libatique CLUP Bangar.pdf","21","0","0");
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
INSERT INTO tbl_referral VALUES("76","2014 - 0101","2014-03-21","19","17","0321 Ord no 4, S 2014 BAUANG.pdf","21","0","0");
INSERT INTO tbl_referral VALUES("77","2014 - 0100","2014-03-21","19","17","0321 Ord no 14, S 2013 BAUANG.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("78","2014 - 0118","2014-04-04","19","17","0404 Draft Resolution LACAP.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("79","2014 - 0134","2014-04-25","19","14,17","0425 MO no 03, S 2014 SAN JUAN.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("80","2014 - 0208","2014-06-30","19","17,22","0630 Draft Ord no 060-2014 CCTV.pdf","21","0","0");
INSERT INTO tbl_referral VALUES("81","2014 - 0053","2014-02-03","20","17","0203 Ord no. 170 ARINGAY.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("82","2014 - 0132","2014-04-15","20","","0415 Draft Reso Rogelio SIngson DPWH.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("83","2014 - 0215","2014-07-04","20","10,17","0704 Ltr of Theodore Sarmiento TPHRI.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("84","2014 - 0137","2014-04-25","21","12,17","0425 Ord no 07, S 2013 NAGUILIAN.pdf","21","1","0");
INSERT INTO tbl_referral VALUES("85","2014 - 0176","2014-06-06","21","14,17","0606 Ord no 2014-111 PUGO.pdf","21","0","0");
INSERT INTO tbl_referral VALUES("86","2014 - 0186","2014-06-16","21","1,17","0616 MO no 07-2014 AGOO.pdf","21","0","0");
INSERT INTO tbl_referral VALUES("87","2014 - 0201","2014-06-30","21","17,24","0630 MO no 20, S 2013 NAGUILIAN.pdf","21","0","0");
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

INSERT INTO tbl_resolution VALUES("001 - 2012","","Approve the CY 2012 Supplemental Annual Investment Program (AIP) of the Office of the SP.","1","Resolution 001-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("001 - 2013","","RESOLVED, as it is hereby resolved, that Appropriation Ordinance No. 48-2012, of the Sangguniang Bayan of Agoo, La Union, approving the FY 2012 General Fund Supplemental Budget No. 11, of that municipality, be declared operative and given force and effect, subject, however, to the usual accounting and auditing rules and regulations, the policy of the office concerned, and other limitations set forth by law, attention being invited to the recommendation of the Provincial Budget officer in her Memorandum dded December 27,2012.","1,7,9,18,20","RES 001-2013 A.O. 48-2012 AGOO.pdf","21","2013-01-03","0");
INSERT INTO tbl_resolution VALUES("002 - 2012","","Approve FY 2011 GF SB #5, of the SB of San Juan, La Union.","1","Resolution 002-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("002 - 2013","","Approve Mun Ord # 93, s 2012, of the SB of Sudipen, LU, “An Ord Promulgating a Sustainable Anti-Dengue Program of Sudipen & Appropriating Funds Therefore”","18","RES 002-2013 MUN ORD. 93 2012 SUDIPEN.pdf","21","2013-01-03","0");
INSERT INTO tbl_resolution VALUES("002 - 2014","2014 - 0002","Submit SB # 4, involving an appropriation of P20M for the enactment of the required appropriation ordinance.","1","RESOLUTION 002-2014.pdf","21","2014-01-09","0");
INSERT INTO tbl_resolution VALUES("003 - 2012","","Return City Ord # 2011-05 of the SP of  SFC, LU “An Ord Regulating Smoking in the City of San Fdo, LU & Providing Penalties for the Violation”","10","Resolution 003-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("003 - 2013","","Return Ord # 21, s 2012, of the SB of Naguilian, LU, “An Ord Enacting the Health & Sanitation Code of the Mun of Naguilian, LU & Providing Penalties to Violation Thereof”.","1,7,10,18,20","RES 003-2013 ORD 21 2012 NAGUILIAN.pdf","21","2013-01-03","0");
INSERT INTO tbl_resolution VALUES("003 - 2014","2014 - 0006","Recommend approval of the FY 2014 GF AB, of Tubao, La Union.","1","RESOLUTION 003-2014.pdf","21","2014-01-09","0");
INSERT INTO tbl_resolution VALUES("004 - 2012","","Approve City Ord # 2011-06 of the SP of  SFC, LU, “An Ord Institutionalizing The Disaster Management & Resiliency System in the City of San Fdo & Providing Funds Thereof”","10","Resolution 004-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("004 - 2013","","Approve Mun Ord # 46-2012, of the SB of Agoo, LU, “An Ord Amending Sec 21 of Mun Ord # 26-2012, An Ord for the Prevention & Control of STD/HIV/AIDS in the Mun of Agoo, LU”.","18","RES 004-2013 ORD 46 2012 AGOO STD HIV.pdf","21","2013-01-03","0");
INSERT INTO tbl_resolution VALUES("005 - 2012","","Approve City Ord # 2011-07, of the SP of SFC, LU, “An Ord Ordaining the Consolidation of All Rules, Regulations & Ord in the Use, Operation, Maintenance& Issuance of Franchises of Motorized Tricycles for Hire & Private Motorized Tricycles in the SFC, LU & Repealing all Ord Inconsistent Herewith”","10","Resolution 005-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("005 - 2013","","Approve the CY 2013 Supplemental Annual Investment (AIP) for the purchase of ORT Community Multi-Purpose Coop properties.","1,7,10,11","RES 005-2013 AIP PURCHASE OF ORT.pdf","21","2013-01-10","0");
INSERT INTO tbl_resolution VALUES("006 - 2012","","Approve City Ord # 2011-12 of the SP of SFC, LU “An Ord Requiring the Standing At Attention & Singing of the Phil Nat’l Anthem”","10","Resolution 006-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("006 - 2013","","MOA with the Coop Bank of LU, Agoo, LU, to offer its services part. Salary loan to permanent employees & officials of the PGLU.","1,7","RES 006-2013 MOA CBLU.pdf","21","2013-01-10","0");
INSERT INTO tbl_resolution VALUES("006 - 2014","2014 - 0025","Recommend approval of the FY 2013 GF SB # 2, of Bacnotan, LU","1","RESOLUTION 006-2014.pdf","21","2014-01-16","0");
INSERT INTO tbl_resolution VALUES("007 - 2012","","Return City Ord #2011-13 of the SP of the SFC, LU, “An Ord Regulating the Sale, Serving and Drinking of Liquor in Places of Entertainment, Business Establishments & Public Places, &Providing Penalties for Violation Thereof, & Repealing City Ord #2010-013”","10","Resolution 007-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("007 - 2013","","MOA w/ Phil Nuclear Research Institute under DOST re: subscription of the Optically Stimulated Luminescent (OSL) Dosimeter Personnel Monitoring Service by the Bacnotan Dist Hospital.","1,7,10,20","RES 007-2013 MOA WITH PNRI.pdf","21","2013-01-10","0");
INSERT INTO tbl_resolution VALUES("007 - 2014","2014 - 0024","Recommend approval of the FY 2013 GF SB # 4, of Bagulin, LU","1","RESOLUTION 007-2014.pdf","21","2014-01-16","0");
INSERT INTO tbl_resolution VALUES("008 - 2012","","Approve City Ord # 2011-14 of the SP of the SFC, LU, “An Ord Prescribing the Rules & Regulations in the Operation of Baratillos, Flea Market, Night Markets, Trade Fairs & Other Seasonal Businesses in the City”","10","Resolution 008-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("008 - 2013","","Renew Contract of Consultancy of:\n\n1.	Eng’r Pablo A. Salanga, Infra Dev’t Affairs\n2.	Atty. Gerardo A. Viloria Sr, Legal Dev’t Affairs\n3.	Mr. Floresto C. Sayangda, Local Gov’t Dev’t Affairs, 1st Dist\n4.	Mr. Jose L. Macusi, Indigenous Peoples Dev’t Affairs\n5.	Mr. Justiniano A. Arzadon, Brgy Affairs\n6.	Judge Joven F. Costales, Sr. Citizens Dev’t Affairs\n7.	Dr. Jose C. Ostrea, Health, Sanitation, Env’t & Population Dev’t Affairs\n8.	Mr. Carlito V. dela Cruz, Tourism, Trade & Industry Dev’t Affairs\n9.	Eng’r Elmo B. Fama, Electrical Power Dev’t\n10.	Mr. Firth McEachern, Local Language Planning, Multilingual Services & Education Dev’t\n11.	Ms. Imelda C. Asiaten, Cultural & Music Dev’t\n12.	Ms. Laura-Amelie Riavitz, Marine Resources Dev’t\n","11,12,19","RES 008-2013 CONSULTANCY SERVICE.pdf","21","2013-01-10","0");
INSERT INTO tbl_resolution VALUES("008 - 2014","2014 - 0023","Recommend approval of the FY 2013 GF SB # 9, of Agoo, LU","1","RESOLUTION 008-2014.pdf","21","2014-01-16","0");
INSERT INTO tbl_resolution VALUES("009 - 2012","","Approve Mun Ord # 02-2011 of the SB of San Gabriel, LU, “An Ord Amending, Consolidating & Codifying All Laws of Rules Relative to the Operation of Land Transportation & Regulating the Use of Streets, Roads & Avenues w/n the Said Municipality &Providing Fines &Penalties for Every Violation Thereof”","10","Resolution 009-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("009 - 2013","","Approve FY 2012 GF SB # 10, of Bagulin, La Union.","1","RES 009-2013 .pdf","21","2013-01-10","0");
INSERT INTO tbl_resolution VALUES("009 - 2014","2014 - 0027","Recommend approval of the FY 2014 GF AB, of Burgos, LU ","1","RESOLUTION 009-2014.pdf","21","2014-01-16","0");
INSERT INTO tbl_resolution VALUES("010 - 2012","","Approve Mun Ord # 24-2011 of the SB of Agoo, LU, “The Comprehensive Anti-Smoking Ord of Agoo, LU”","10","Resolution 010-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("010 - 2013","","Approve FY 2012 GF SB # 2, of Santol, La Union.","1","RES 010-2013 .pdf","21","2013-01-10","0");
INSERT INTO tbl_resolution VALUES("010 - 2014","2014 - 0030","Recommend approval of the FY 2014 GF AB of Sudipen, LU","1","RESOLUTION 010-2014.pdf","21","2014-01-16","0");
INSERT INTO tbl_resolution VALUES("011 - 2012","","Approve Mun Ord # 33-2011 of the SB of Agoo, LU, An Ord Amending Sec 7, Items 2 & 5 of Mun Ord # 24-2011,”The Comprehensive Anti-Smoking Ord of Agoo, LU”","10","Resolution 011-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("011 - 2013","","Approve FY 2012 GF SB # 2, of Sto. Tomas, La Union.","1","RES 011-2013 .pdf","21","2013-01-10","0");
INSERT INTO tbl_resolution VALUES("012 - 2012","","Approve FY 2012 GF AB of Naguilian, La Union.","1","Resolution 012-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("012 - 2013","","Approve FY 2012 GF SB # 3, of Pugo, La Union.","1","RES 012-2013 .pdf","21","2013-01-10","0");
INSERT INTO tbl_resolution VALUES("013 - 2012","","Approve  FY 2011 GF SB #3 of Santol, La Union.","1","Resolution 013-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("013 - 2013","","Approve FY 2012 GF SB # 4, of Pugo, La Union.","1","RES 013-2013 .pdf","21","2013-01-10","0");
INSERT INTO tbl_resolution VALUES("014 - 2012","","Approve FY 2011 GF SB #4 of Balaoan, La Union. ","1","Resolution 014-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("014 - 2013","","Approve FY 2013 GF AB, of Burgos, La Union.","1","RES 014-2013 .pdf","21","2013-01-10","0");
INSERT INTO tbl_resolution VALUES("015 - 2012","","Approve FY 2011 GF SB #3 of Bauang, La Union.","1","Resolution 015-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("015 - 2013","","Approve FY 2013 GF AB, of San Juan, La Union.","1","RES 015-2013 .pdf","21","2013-01-10","0");
INSERT INTO tbl_resolution VALUES("016 - 2012","","Approve FY 2011 GF SB #4 of Bauang, La Union.","1","Resolution 016-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("016 - 2013","","Condole with the bereaved family of Brgy. Captain Felino H. Gorospe, Brgy. Dallipaoen, Naguilian, La Union.","9,20","RES 016-2013 condolence gorospe.pdf","21","2013-01-10","0");
INSERT INTO tbl_resolution VALUES("017 - 2012","","Approve FY 2011 GF SB #7 of Agoo, La Union.","1","Resolution 017-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("017 - 2013","","Approve Ord # 7-2012, of the SB of San Gabriel, La Union “Ord Regulating the Use of Plastic Bags in Comm’l Establishment in the Mun of San Gabriel, LU & Providing Penalties for Violation Thereof”","1,7,17","RES 017-2013.pdf","21","2013-01-10","0");
INSERT INTO tbl_resolution VALUES("018 - 2012","","Approve FY 2011 GF SB #1 of Naguilian, La Union.","1","Resolution 018-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("018 - 2013","","Condole with the bereaved family of Brgy. Captain Luciano E. Caluza, Brgy. Ballay, Bauang, La Union.","7","RES 018-2013.pdf","21","2013-01-10","0");
INSERT INTO tbl_resolution VALUES("018 - 2014","2014 - 0043","Request to authorize the payment of Accounts Payable in the amount of P7,106,760.87 to be charged to the Current Appropriations","1,7,8,10","RESOLUTION 018-2014_001.pdf","21","2014-01-23","0");
INSERT INTO tbl_resolution VALUES("019 - 2012","","Renew contract of Consultancy Services of the ff effective Jan. 2,2012 to Dec 31,2012\n\n1.	Gerardo A. Viloria\n2.	Firth McEachern\n3.	Manuel R.Borja\n4.	Justiniano A.  Arzadon\n5.	Joven F. Costales\n6.	Violeta L. Balbin\n7.	Jose L. Macusi\n8.	Carlito V. dela Cruz\n9.	Bellarmin A. Flores II\n10.	Mario A. Lacsamana\n11.	Jose C. Ostrea\n12.	Pablo A. Salanga\n13.	Floresto C. Sayangda\n14.	Roberto C. Ortega  ","1","Resolution 019-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("019 - 2013","","MOA with DOH re: 2012 Maternal Newborn Child Health & Nutrition (MNCHN).","1,5,20","RES 019-2013.pdf","21","2013-01-17","0");
INSERT INTO tbl_resolution VALUES("019 - 2014","2014 - 0042","Request to enter into a Contract of Agreement w/ Dr. Eric Piscawen as Visiting Consultant in Orthopedics at Balaoan Dist Hospital.","4","RESOLUTION 019-2014.pdf","21","2014-01-23","0");
INSERT INTO tbl_resolution VALUES("020 - 2012","","Renew Contract of Service, w/ Engr. Elmo B. Fama as PGLU’s Professional Electrical Eng’r ","1","Resolution 020-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("020 - 2013","","Approve FY 2012 GF SB # 3, of the City of San Fernando, La Union.","1,5,7,9,11,20","RES 020-2013.pdf","21","2013-01-17","0");
INSERT INTO tbl_resolution VALUES("020 - 2014","2014 - 0236","Request authority to enter into a MOA w/ SLC, UCC, DMMMSU, Lorma Colleges, St. John Bosco College, AMA Computer College, LUCST and other requesting colleges, universities and tertiary schools re: OJT/Practicum in the different departments, hospitals and offices of the PGLU.","4","RESOLUTION 020-2014.pdf","21","2014-01-23","0");
INSERT INTO tbl_resolution VALUES("021 - 2012","","Return Mun Ord #04, s 2011 of the SB of Sto Tomas, LU, “Revised Revenue Code of the Mun of Sto Tomas, Prov of LU”","20","Resolution 021-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("021 - 2013","","Approve FY 2012 GF SB # 4, of the City of San Fernando, La Union.","1,5,7,9,11,20","RES 021-2013.pdf","21","2013-01-17","0");
INSERT INTO tbl_resolution VALUES("022 - 2012","","Approve Mun Ord #31-2011 of the SB of San Juan, La Union “An Ord Prescribing Prices of Meat Sold at San Juan Public Market”","20","Resolution 022-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("022 - 2013","","Approve FY 2012 GF SB # 5, of the Pugo, La Union.","1,5,7,9,11,20","RES 022-2013.pdf","21","2013-01-17","0");
INSERT INTO tbl_resolution VALUES("023 - 2012","","Approve Mun Ord #05, s 2011, of the SB of Sto Tomas, LU, “An Ord Enacting the Market Code of Sto Tomas, LU”","20","Resolution 023-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("023 - 2013","","Propose for the adoption of Rules of Procedure of Manual of Admin Investigation Procedure in the Investigation/Hearing of Admin Cases against Elective Local Officials before the SP.","5,9,10","RES 023-2013.pdf","21","2013-01-17","0");
INSERT INTO tbl_resolution VALUES("023 - 2014","2014 - 0049","Letter of Gov. Manuel C. Ortega respectfully requesting the Honorable Body to authorize him to enter into a MOA with MERK SHARP and DOHME (L.A.) CORPORATION, Makati City to be represented by its President and Managing Director, DR. BEAVER R. TAMESIS,  for the effective, efficient and innovative implementation of a model LGU Access Program for Pneumonia and Cervical Cancer (HPV) Vaccination Program using quality and trustworthy products","4,5,9","RESOLUTION 023-2014.pdf","21","2014-01-30","0");
INSERT INTO tbl_resolution VALUES("024 - 2012","","Approve Ord #12, s 2011 of the SB of Bauang, La Union, “An Ord Imposing Fees on the Availment of Services, Use of Facilities, Including the Provision of Medicines & supplies at the Doña Corazon Campos Ortega Lying-in, Maternity, Geriatric& Therapeutic Center of the Mun of Bauang, La Union”","20","Resolution 024-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("024 - 2013","","Condole with the bereaved family of Ex-Councilor Sabino Z. Dacanay, Tubao.","7","RES 024-2013.pdf","21","2013-01-17","0");
INSERT INTO tbl_resolution VALUES("024 - 2014","2014 - 0041","Recommend approval of the FY 2013 GF SB # 1, of Naguilian, La Union","11","RESOLUTION 024-2014.pdf","21","2014-01-30","0");
INSERT INTO tbl_resolution VALUES("025 - 2012","","Approve Mun Ord #01-2011 of the SB of Bagulin, La Union, “Revenue Code of the Mun of Bagulin, Province of La Union”","20","Resolution 025-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("025 - 2013","","Condole with the bereaved family of Ex-BC Renato A. Nieva, Agoo, La Union.","20","RES 025-2013.pdf","21","2014-01-17","0");
INSERT INTO tbl_resolution VALUES("025 - 2014","2014 - 0038","Recommend approval of the FY 2014 GF SB # 1, of Tubao, La Union.","11","RESOLUTION 025-2014.pdf","21","2014-01-30","0");
INSERT INTO tbl_resolution VALUES("026 - 2012","","Approve Ord # 2010-02 of the SB of Caba, La Union “An Ord Adopting #2010 Revenue Code of the Mun of Caba, La Union”","20","Resolution 026-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("026 - 2013","","MOA with DA RFU for the establishment of “Organic Demo & Training Farms”.","1,5,7,17","RES 026-2013.pdf","21","2013-01-24","0");
INSERT INTO tbl_resolution VALUES("026 - 2014","2014 - 0039","Recommend approval of the FY 2014 GF AB, of Aringay, La Union.","11","RESOLUTION 026-2014.pdf","21","2014-01-30","0");
INSERT INTO tbl_resolution VALUES("027 - 2012","","2ndAmendment to Contract to Sell between 1590 Energy.","1","Resolution 027-2012.pdf","21","2012-01-05","0");
INSERT INTO tbl_resolution VALUES("027 - 2013","","MOA with SLC, UCC, DMMMSU, LORMA COLLEGES, ST. JOHN BOSCO, AMA COMPUTER COLLEGE, LUCST, & other requesting colleges, universities & tertiary schools for the accommodation of their students to undergo OJT/practicum in the different departments of the PGLU.","5,6,10,18","RES 027-2013.pdf","21","2013-01-24","0");
INSERT INTO tbl_resolution VALUES("027 - 2014","2014 - 0040","Recommend approval of the FY 2014 GF AB, of Balaoan, La Union.","11","RESOLUTION 027-2014.pdf","21","2014-01-30","0");
INSERT INTO tbl_resolution VALUES("028 - 2012","","Request Pres Benigno S. Aquino III, to declare March 2, 2012 as a holiday.","1","Resolution 028-2012.pdf","21","2012-01-12","0");
INSERT INTO tbl_resolution VALUES("028 - 2013","","Approve FY 2013 GF AB of Tubao, La Union.","1","RES 28-2013.pdf","21","2013-01-24","0");
INSERT INTO tbl_resolution VALUES("028 - 2014","2014 - 0003","Recommend approval of the FY 2014 GF AB of Sto. Toma, La Union.","11","RESOLUTION 028-2014.pdf","23","2014-01-30","0");
INSERT INTO tbl_resolution VALUES("029 - 2012","","Approve FY 2012 GF AB of the SB of Burgos, La Union.","20","Resolution 029-2012.pdf","21","2012-01-12","0");
INSERT INTO tbl_resolution VALUES("029 - 2013","","Approve FY 2013 GF AB of Bangar, La Union.","1","RES 29-2013.pdf","21","2013-01-24","0");
INSERT INTO tbl_resolution VALUES("030 - 2012","","Support HB # 4505 filed by Manila representative Theresa Bonoan-David to provide add’l 1 % levy on real property tax","20","Resolution 030-2012.pdf","21","2012-01-12","0");
INSERT INTO tbl_resolution VALUES("030 - 2013","","Congratulate & commend winners & coaches of the PNG & set aside P39,000.00 as their incentives.","12,18,20","RES 30-2013.pdf","21","2013-01-24","0");
INSERT INTO tbl_resolution VALUES("030 - 2014","2014 - 0020","Ord # 13-2013, Ord Adopting the Lyrics & Music of the Composition of Mrs. Ildefonsa Q. Guinomma, Luna Dingayan& Pearl Dingayan as the Official Mun Hymn of the Mun of San Gabriel, LU","9","RESOLUTION 030-2014.pdf","21","2014-01-30","0");
INSERT INTO tbl_resolution VALUES("031 - 2012","","Grant the excavation along the shoulder & carriageway of Poro Rd, K0269+600 for the laying of Fiber optic cable for Closed Circuit Television (CCTV) at the PilipinasShell Petroleum Corporation located at Poro, Sn Fdo, La Union.","1","Resolution 031-2012.pdf","21","2012-01-12","0");
INSERT INTO tbl_resolution VALUES("031 - 2013","","Condole with the bereaved family of Mr. Bibiano P. Viluan.","1","RES 31-2013.pdf","21","2013-01-24","0");
INSERT INTO tbl_resolution VALUES("031 - 2014","2014 - 0012","Ord # 2011-087, Ord Enjoining the Office of the DepEd Dist Supervisor, School Administrators Both High School, Elememtary or Primary Levels & Gov?t-Owned and Controlled Corp. Gov Instrumentalities to Include the Singing of the Santol Hymn, Recitation of Santol Credo & Dancing of the Santol Mun Jingle in their Flag Raising Ceremonies, General Assemblies and all Other Special Gatherings and Festivities in the Municipality.","6","RESOLUTION 031-2014.pdf","21","2014-01-30","0");
INSERT INTO tbl_resolution VALUES("032 - 2012","","Condole with the bereaved family of the late Mr. Anastacio A. Viloria, Jr., ","3","Resolution 032-2012.pdf","21","2012-01-12","0");
INSERT INTO tbl_resolution VALUES("032 - 2013","","Appoint BM Nancy Corazon M. Bacurnay as Chairperson of the Committee on Justice & Human Rights and the Vice Chairmanship & Membership vacated by BM Henry Bacurnay.","10","RES 32-2013.pdf","21","2013-01-24","0");
INSERT INTO tbl_resolution VALUES("033 - 2012","","Approve FY 2011 GF SB # 3, of the CSF, La Union.","1","Resolution 033-2012.pdf","21","2012-01-19","0");
INSERT INTO tbl_resolution VALUES("033 - 2013","","Charge P1,798.62 in the CY 2013 appropriation to the Office of the Governor as payment of the Nov 2012 telephone bill at the Prov’l Prosecutor’s Office.","1,5,6,20","RES 33-2013.pdf","21","2013-01-24","0");
INSERT INTO tbl_resolution VALUES("034 - 2012","","Approve FY 2011 GF SB # 4, of the CSF, La Union.","1","Resolution 034-2012.pdf","21","2012-01-19","0");
INSERT INTO tbl_resolution VALUES("034 - 2013","","Charge P4,110.42 in the current appropriation CY 2013 to the MOE-969 of the Office of the Governor as payment for the service rendered by Ms. Connie Marie C. Balbuena, Job Order detailed at the LUMC for Dec 3-31, 2012","1,5,7,10","RES 34-2013.pdf","21","2013-01-31","0");
INSERT INTO tbl_resolution VALUES("035 - 2012","","Approve FY 2012 GF AB of Tubao, La Union.","1","Resolution 035-2012.pdf","21","2012-01-19","0");
INSERT INTO tbl_resolution VALUES("035 - 2013","","Contract of Consultancy Service w/ Dr. Ernesto A. Gapasin as Consultant on Education & Employment effective Jan 2, 2013 to June 30, 2013 w/ a monthly consultancy fee of P20,000.00","1,5,6,7,10","RES 35-2013.pdf","21","2013-01-31","0");
INSERT INTO tbl_resolution VALUES("035 - 2014","2014 - 0013","Ord # 2012-096, Ord Amending the Title of Ord # 2000-01 of the SB of Santol, LU Including Sec 1 of Said Ordinance.","8","RESOLUTION 035-2014.pdf","21","2014-01-30","0");
INSERT INTO tbl_resolution VALUES("036 - 2012","","Approve  FY 2011 GF SB # 2 of Rosario, La Union.","1","Resolution 036-2012.pdf","21","2012-01-19","0");
INSERT INTO tbl_resolution VALUES("036 - 2013","","Approve FY 2013 GF AB, of Balaoan, La Union.","1,5,7,10","RES 36-2013.pdf","21","2013-01-31","0");
INSERT INTO tbl_resolution VALUES("036 - 2014","2014 - 0014","Ord # 2012-102, An Ord Declaring the Month of June of Every Year as Dengue Awareness Month in the Mun of Santol & Appropriating Funds Therefor","10","RESOLUTION 036-2014.pdf","21","2014-01-30","0");
INSERT INTO tbl_resolution VALUES("037 - 2012","","Approve FY 2012 GF AB of San Juan, La Union.","1","Resolution 037-2012.pdf","21","2012-01-19","0");
INSERT INTO tbl_resolution VALUES("037 - 2013","","Approve FY 2013 GF AB, of San Gabriel, La Union.","1,5,7,10","RES 37-2013.pdf","21","2013-01-31","0");
INSERT INTO tbl_resolution VALUES("038 - 2012","","Condole with the bereaved family of the late Hon. Natividad Q. Salomon","9","Resolution 038-2012.pdf","21","2012-01-19","0");
INSERT INTO tbl_resolution VALUES("038 - 2013","","Approve Board Res # 056, s 2013, of LUMC, “Recommending Cong. Eufranio C. Eriguel for a Saranay Award”.","12","RES 36-2013.pdf","21","2013-01-31","0");
INSERT INTO tbl_resolution VALUES("039 - 2012","","Note  Res # 401, s 2011 of the SP of Romblon “Res supporting and Favorably Endorsing Res # 401, s 2011, of the SP of Camarines Sur”","10","Resolution 039-2012.pdf","21","2012-01-19","0");
INSERT INTO tbl_resolution VALUES("039 - 2013","","Exempt GSIS from real property taxation, however, Nalinac Beach Resort is to pay the real property tax of said property being the beneficial user & a taxable entity.","1,10","RES 39-2013.pdf","21","2013-01-31","0");
INSERT INTO tbl_resolution VALUES("040 - 2012","","Return Mun Ord # 41-2011 of the SB of San Juan, LU, “An Ord Prohibiting the Slaughter, Killing, Buying & Selling of the Green Sea & Olive Reedley Turtle Better Known as Pawikan, as Well as the Gathering of its Eggs &All Destruction of its Nesting Habitat”","10","Resolution 040-2012.pdf","21","2012-01-19","0");
INSERT INTO tbl_resolution VALUES("040 - 2013","","Approve Ord # 2012-100, of the SB of Pugo, LU, “An Ord Imposing the Collection of an Admission Fee & Rentals of Cottages at the Asin Hot Spring, Cares, Pugo, La Union”.","5,10,20","RES 40-2013.pdf","21","2013-01-31","0");
INSERT INTO tbl_resolution VALUES("041 - 2012","","Approve Ord # 05-2011 of the SB of San Gabriel, La Union “An Ord Fixing the Time of Closure of All Commercial Establishment Such as Stores, Refreshment Stalls, Carinderias, Beer Houses & Karaoke/Videoke Bars, Regulating & Limiting the Serving Selling, Giving Away or Dispensing of Intoxicating Malt, Vinous, Mixed of Fermented Liquors W/n the Area of Jurisdiction of San Gabriel, La Union ”","10","Resolution 041-2012.pdf","21","2012-01-19","0");
INSERT INTO tbl_resolution VALUES("041 - 2013","","Approve Ord # 16, s 2012, of the SB of Naguilian, LU, “An Ord Requesting All Owners of Residential Houses w/n the Territorial Jurisdiction of the Mun of Naguilian, LU to Maintain a Sanitary Toilet & Providing Penalties to Violators Thereof”","5,6,10,20","RES 41-2013.pdf","21","2013-01-31","0");
INSERT INTO tbl_resolution VALUES("041 - 2014","2014 - 0017","Ord # 2013-106, An Ord Requiring the Foodservice Industry within the Territorial Jurisdiction of the Mun of Santol, LU to Include ? Cup Cooked Rice in their Menu.","3","RESOLUTION 041-2014.pdf","21","2014-01-30","0");
INSERT INTO tbl_resolution VALUES("042 - 2012","","Approve City Ord # 2011-003 of the SP of the City of San Fernando, La Union “An Ord Amending the Staffing Pattern of the City Gov’t of Sn Fdo, La Union”","10","Resolution 042-2012.pdf","21","2012-01-19","0");
INSERT INTO tbl_resolution VALUES("042 - 2013","","Charge P3,593.33 in the current appropriation CY 2013 to the Prisoner’s Subsistence Account (759) under the Office of the Governor.","1,5,7,11,20","RES 42-2013.pdf","21","2013-01-31","0");
INSERT INTO tbl_resolution VALUES("042 - 2014","2014 - 0028","MO # 2, s 2013, Requiring the Foodservice Industry w/n the Territorial Jurisdiction of Rosario, LU to Include ? Cup of Rice in their Menu & Providing Penalty to Violators Thereof","3","RESOLUTION 042-2014.pdf","21","2014-01-30","0");
INSERT INTO tbl_resolution VALUES("043 - 2012","","Approve Ord # 39, s 2011 of the SB of Burgos, La Union “An Ord Renaming Agpay Primary School to Agpay Elem School”","18","Resolution 043-2012.pdf","21","2012-01-19","0");
INSERT INTO tbl_resolution VALUES("043 - 2013","","Charge P367.79 in the current appropriation CY 2013 to the Account of the Prov’l Population Office.","1,5,7,10,20","RES 43-2013.pdf","21","2013-01-31","0");
INSERT INTO tbl_resolution VALUES("043 - 2014","2014 - 0059","Letter of Gov. Manuel C. Ortega respectfully requesting the Honorable Body to authorize him to enter into a Memorandum of Agreement with the Municipal Government of Rosario La Union and Barangay Bangar, Rosario, La Union in connection with the Construction of Farmer\'s Multi Purpose Hall (Phase I) in Barangay Bangar, Rosario, La Union.","4,5,6,7,8,9,11","RESOLUTION 043-2014.pdf","21","2014-01-30","0");
INSERT INTO tbl_resolution VALUES("044 - 2012","","Approve Ord # 40, s 2011 of the SB of Burgos, LU  “An Ord Renaming Upper Tumapoc Primary School to Upper Tumapoc E/S”","18","Resolution 044-2012.pdf","21","2012-01-19","0");
INSERT INTO tbl_resolution VALUES("044 - 2013","","MOA with DPWH re: implementation of the Special Local Roads Fund (SLRF) with funding under the MVUC Special Local Road Fund","1,5,11,20","RES 44-2013.pdf","21","2013-01-31","0");
INSERT INTO tbl_resolution VALUES("044 - 2014","2014 - 0058","Letter of Gov. Manuel C. Ortega respectfully requesting for the realignment of P 10,000,000.00 under the Provincial Share in the Virginia Tobacco Excise Tax RA 7171 for the purchase of additional lot for the Farmer\'s Multi Purpose Center and Demo Farm.","4,7,8,10,11","RESOLUTION 044-2014.pdf","21","2014-01-30","0");
INSERT INTO tbl_resolution VALUES("045 - 2012","","Return Mun Ord # 35- 2011 of the SB of San Juan, LU “An Ord Prescribing Rental of Collecting Booth at the Mun Treas Office by Private Companies”","20","Resolution 045-2012.pdf","21","2012-01-19","0");
INSERT INTO tbl_resolution VALUES("045 - 2013","","MOA with the Mun Gov’t of Rosario, & Caba, LU with beneficiaries/residents of Brgy. Parasapas, Tabtabungao (R) & San Jose (C) re: \n1.	Improvement of Rosario-Tubao Rd\n2.	Restoration of river slope protection, Brgy. Tabtabungao\n3.	Construction of a 90-m long steel matting suspension footbridge, Brgy San Jose","1,5,9,11,17,20","RES 45-2013.pdf","21","2013-01-31","0");
INSERT INTO tbl_resolution VALUES("045 - 2014","2014 - 0066","Letter of Gov. Manuel C. Ortega respectfully requesting the Honorable Body to authorize him to enter into the Amended Dead of Donation with Partial Revocation of Donation, for and on behalf of the PGLU with the Cooperative Development Authority (CDA), donating a 450 square meter PGLU property located at Aguila Road, Sevilla, City of San Fernando, La Union.  The property consisted previously of a 900 square meter lot, however, one of the conditions set forth in the Deed of Donation executed last1999 wast not met by CDA, hence the need to amend and partiallyrevoke the previous donation.","4","RESOLUTION 045-2014.pdf","21","2014-02-06","0");
INSERT INTO tbl_resolution VALUES("046 - 2012","","Return Mun Ord # 89, s 2011 of the SB of Sudipen, La Union “Local Revenue Code of the Mun of Sudipen, La Union”","1","Resolution 046-2012.pdf","21","2012-01-19","0");
INSERT INTO tbl_resolution VALUES("046 - 2013","","Contract of Consultancy Service w/ Dr. Leonardo N. Quitos, Jr as Consultant on Planning & Dev’t Mgt effective Feb 1, 2013 to June 30, 2013","1,6,10,11,20","RES 46-2013.pdf","21","2013-01-31","0");
INSERT INTO tbl_resolution VALUES("046 - 2014","2014 - 0060","Recommend approval of the FY 2014 GF AB, of Rosario, LU","1","RESOLUTION 046-2014.pdf","21","2014-02-06","0");
INSERT INTO tbl_resolution VALUES("047 - 2012","","Return Mun Ord # 38-2011 of the SB of San Juan, LU, “An Ord Prescribing Laboratory Fee for Hematology, Serology, Blood Banking, Clinical Microscopy & Microbiology ”","20","Resolution 047-2012.pdf","21","2012-01-19","0");
INSERT INTO tbl_resolution VALUES("047 - 2013","","Congratulate & commend Hon. Joseph M. de Guzman & Hon. Nonito A. Sales, CSF & Naguilian, respectively, as among the 10 Outstanding Councilors of Region I.","11","RES 47-2013.pdf","21","2013-01-31","0");
INSERT INTO tbl_resolution VALUES("047 - 2014","2014 - 0015","Ord # 2012-103, An Ord Prohibiting the Unauthorized Manufacture, Production, Use and Sale of Uniforms & Other Paraphernalia that are of Exclusive Use of the Uniformed Personnel of the PNP and the AFP in the Mun of Santol, LU","2","RESOLUTION 047-2014.pdf","21","2014-02-06","0");
INSERT INTO tbl_resolution VALUES("048 - 2012","","Approve Ord # 4, s 2011 of the SB of San Gabriel, La Union “Revised Tax Ord otherwise known as The Revised Revenue Code of San Gabriel, La Union”","9","Resolution 048-2012.pdf","21","2012-01-19","0");
INSERT INTO tbl_resolution VALUES("048 - 2013","","Congratulate & commend the Mun of Santol, LU, for being adjudged as the Regional Champion, Region I, during the Local Legislative Award 4th-6th Class Category  ","11","RES 48-2013.pdf","21","2013-01-31","0");
INSERT INTO tbl_resolution VALUES("048 - 2014","2014 - 0016","Ord # 2013-104, Ord to Curtail the Sale, Rental, Transfer, Distribution, Manufacture and or Production of Pirated, Counterfeit or Fake Goods, Articles or Services, & for Other Services, & for Other Purposes","2","RESOLUTION 048-2014.pdf","21","2014-02-06","0");
INSERT INTO tbl_resolution VALUES("049 - 2012","","Approve City Ord # 2011-10 of the SP of the City of San Fdo,  La Union “An Ord Regulating the Establishment, Operation & Maintenance of Entertainment Establishment in the City of San Fdo, La Union”","19","Resolution 049-2012.pdf","21","2012-01-19","0");
INSERT INTO tbl_resolution VALUES("049 - 2013","","Set aside P50,000.00 as F/A to the CURE THE SEA project ","1","RES 49-2013.pdf","21","2013-02-07","0");
INSERT INTO tbl_resolution VALUES("049 - 2014","2014 - 0034","Mun Ord # 27-2013, An Ord Amending Sec 2.B, Sec 5, & 6 of Mun Ord # 13-2013, An Ord Prohibiting Any Fishing Activity w/n the 200 Meters Radius from the Existing Artificial Reefs in the Mun Waters of Agoo, LU & Providing Penalties for Violation Thereof?","10","RESOLUTION 049-2014.pdf","21","2014-02-06","0");
INSERT INTO tbl_resolution VALUES("050 - 2012","","Return City Ord # 2011-04 of the SP of the City of San Fdo, LU “An Ord Providing Economic Opportunity  For Subsistence Farmers in the City of San Fdo”","19","Resolution 050-2012.pdf","21","2012-01-19","0");
INSERT INTO tbl_resolution VALUES("050 - 2013","","Congratulate Eng’r Cesar E. Higoy, Jr., No. 4 Topnotcher, CE Board Exam.","9","RES 50-2013.pdf","21","2013-02-07","0");
INSERT INTO tbl_resolution VALUES("050 - 2014","2014 - 0032","Mun Ord # 24-2013, An Ord Amending the Title, Sec 1, Sec 2.b, 3, 4, 6.a, 6.e, 12.a, 13, 14, 16 of Mun Ord # 29-2012, An Ord Designating Denny?s Park in Consolacion, Agoo, LU as a Special Economic Zone & Prescribing Rates & Regulations on the Rental of Stalls w/ the Area.","10","RESOLUTION 036-2014.pdf","21","2014-02-06","0");
INSERT INTO tbl_resolution VALUES("051 - 2012","","Authorize Gov MCO to claim or receive the checks for the redemption price of its Subscription Investment Plan (SIP) Shares from PLDT.","1","Resolution 051-2012.pdf","21","2012-01-19","0");
INSERT INTO tbl_resolution VALUES("051 - 2013","","Congratulate Hon. Jessie P. Cabrillos, MTC Judge, Balaoan, La Union.","10","RES 51-2013.pdf","21","2013-02-07","0");
INSERT INTO tbl_resolution VALUES("051 - 2014","2014 - 0026","Ord #  168, An Ord Prohibiting Littering in Public Places w/n the Jurisdiction of the Mun of Aringay, LU & Other Related Acts & Providing Penalties for Violation Thereof","10","RESOLUTION 051-2014.pdf","21","2014-02-06","0");
INSERT INTO tbl_resolution VALUES("052 - 2012","","Convey gratitude to the Aloha Medical Mission of Honolulu, Hawaii for their Medical Mission in Balaoan, La Union.","3","Resolution 052-2012.pdf","21","2012-01-19","0");
INSERT INTO tbl_resolution VALUES("052 - 2013","","Realign P5M from Peace & Order Initiative Fund for CY 2013 to Intelligence & Confidential Fund.","1,3","RES 52-2013.pdf","21","2013-02-07","0");
INSERT INTO tbl_resolution VALUES("052 - 2014","2014 - 0033","Mun Ord # 25-2013, An Ord Mandating All Parents/Guardians of School Children ages 5 Yrs. Old & Above to Enroll in Basic Education in Any Learning Institution in the Mun of Agoo, LU","10","RESOLUTION 052-2014.pdf","21","2014-02-06","0");
INSERT INTO tbl_resolution VALUES("053 - 2012","","Convey gratitude to the Balaonians of Hawaii for their Medical Mission in  Balaoan, La Union.","2","Resolution 053-2012.pdf","21","2012-01-19","0");
INSERT INTO tbl_resolution VALUES("053 - 2013","","Confer the 2013 AWARDEES\nSARANAY\nLUSA\nDIEGO SILANG\nABEL\nBASI\nENTREPINOY","1","RES 53-2013.pdf","21","2013-02-11","0");
INSERT INTO tbl_resolution VALUES("053 - 2014","2014 - 0035","Mun Ord # 29-2013, An Ord Amending Chapter 14, No. 2, 3, 4 & 10 of Mun Ord # 02A-2013, ?An Ord Enacting the Code of General Ordinances of the Mun of Agoo, LU & for Other Purposes?","10","RESOLUTION 053-2014.pdf","21","2014-02-06","0");
INSERT INTO tbl_resolution VALUES("054 - 2012","","MOA, w/ the ff Medical Specialists:\n\n1. Dr. Edward L. Chui, FFPOA, FPCS- Orthopedics\n2. Dr. Myra M. Padilla, FPOGS- Obstetrics &Gnecology\n3. Dr. Eloisa C. Balanon - Anesthesiology\n4. Dr. Loreto O. Balanon – ENT- Head & Neck Surgery\n5. Dr. Stella Marie P. Mabanag- Internal Medicine- \nCardiology\n6. Dr. Maria Victoria O. Fangonil- Ophthalmology\n","18","Resolution 054-2012.pdf","21","2012-01-26","0");
INSERT INTO tbl_resolution VALUES("054 - 2013","","Approve FY 2012 GF SB # 2, of Naguilian, La Union.","1,6,7,9,10","resolution 054-2013.pdf","21","2013-02-14","0");
INSERT INTO tbl_resolution VALUES("055 - 2012","","Approve FY 2011 GF Annual Budget of San Gabriel, La Union.","1","Resolution 055-2012.pdf","21","2012-01-26","0");
INSERT INTO tbl_resolution VALUES("055 - 2013","","Approve FY 2013 GF SB # 1, of Tubao, La Union.","1,6,7,9,10","resolution 055-2013.pdf","21","2013-02-14","0");
INSERT INTO tbl_resolution VALUES("055 - 2014","2014 - 0064","Letter of Gov. Manuel C. Ortega requesting the Honorable Body to authorize him for the payment of Accounts Payables in the amount of Six Million Nine Hundred Forty Nine Thousand Six  Hundred Forty Nine Thousand Six Hundred Twenty Seven Pesos and 38/100 (Php 6,949,627.38) to be charged to the Current Appropriations of the Province.\n","1","RESOLUTION 055-2014_001.pdf","21","2014-02-06","0");
INSERT INTO tbl_resolution VALUES("056 - 2012","","Condole w/ the bereaved family of the late Punong Brgy. Juanito C. Liclican of Brgy. Sili, Naguilian, La Union.","9","Resolution 056-2012.pdf","21","2012-01-26","0");
INSERT INTO tbl_resolution VALUES("056 - 2013","","Approve Ord # 6-2012, of the SB of San Gabriel, LU, “An Ord Prohibiting the Use, Sale, Distribution & Advertisement of Cigarettes & Tobacco Products in Certain Places, Imposing Penalties for Violations Thereof & Providing Funds Therefore & for Other Purposes”.","7,9,19","resolution 056-2013.pdf","21","2013-02-14","0");
INSERT INTO tbl_resolution VALUES("057 - 2012","","Condole w/ the bereaved family of the late Ms. Cyrel F. Lumbis, employee of the PGLU- SP","9","Resolution 057-2012.pdf","21","2012-01-26","0");
INSERT INTO tbl_resolution VALUES("057 - 2013","","Approve Mun Ord # 02, s 2012, of the SB of Sto. Tomas, LU, “An Ord Enacting the Revision of the Comprehensive Traffic Rules & Regulations & Transportation Code of the Mun of Sto. Tomas, LU & Providing Penalties to Violations Thereof”","9,10,11","resolution 057-2013.pdf","21","2013-02-14","0");
INSERT INTO tbl_resolution VALUES("058 - 2012","","Condole w/ the bereaeved family of the late Mrs. Maria Consolacion O. Sibuma, mother of VM Eric Sibuma of Aringay","9","Resolution 058-2012.pdf","21","2012-01-26","0");
INSERT INTO tbl_resolution VALUES("058 - 2013","","Grant exemption of Tubao Credit Coop from the payment of real property taxes of its properties.","7,9,10","resolution 058-2013.pdf","21","2013-02-14","0");
INSERT INTO tbl_resolution VALUES("058 - 2014","2014 - 0067","Letter of Gov. Manuel C. Ortega respectfully requesting the Honorable Body to authorize him to enter in a Contract of Agree-ment, for and on behalf of the Provincial Government of La Union (PGLU), with Dr. Carolyn B. Tabora, Obstetrics and Gynocology.\n","2,4,7,8","RESOLUTION 058-2014.pdf","21","2014-02-13","0");
INSERT INTO tbl_resolution VALUES("059 - 2012","","Approve the Top Ten Taxpayers in the province of LU for CY 2010:\n\n1.	LU Electric Company, Inc.\n2.	Soiltech Agricultural Products Corp.\n3.	Rang-ay Bank (a Rural Bank), Inc.\n4.	Nee Mee Foods Corp.\n5.	CJ Fernandez Enterprises, Inc.\n6.	Phil Topwood Industries & Trading Corp.\n7.	Lorma Medical Center, Inc.\n8.	Valbros Realty Corp.\n9.	ALCCO Realty Corp.\n10.	Purchase & Grow, Inc.\n11.	Costsaver’s Supermarket, Inc. \n","20","Resolution 059-2012.pdf","21","2012-01-26","0");
INSERT INTO tbl_resolution VALUES("059 - 2013","","Register strong objection to the grant/issuance of MGB, Q.C. of the offshore exploration to Colossal Mining Corp ","1,3,7,9,10","resolution 059-2013.pdf","21","2013-02-14","0");
INSERT INTO tbl_resolution VALUES("060 - 2012","","Return Tax Ord # 2011-01, of the SP of Sn Fdo, LU, “An Ord Amending Art A of Chap 2  & Art A & B of Chap 3 Tax Ord # 2009-002, Otherwise Known as the 2010 Revenue Code of the City of Sn Fdo”","20","Resolution 060-2012.pdf","21","2012-01-26","0");
INSERT INTO tbl_resolution VALUES("060 - 2013","","Approve the CY 2013 Supplemental AIP of:\n\n1.	Office of the Prov’l Governor\n2.	Office of the Prov’l Agriculturist\n3.	Office of the PSWD\n4.	Prov’l Health Officer\n5.	Prov’l Population Office\n6.	Office of the Prov’l Vet\n7.	Prov’l Budget Office\n8.	Office of the Prov’l Eng’r","1,7,11,19","resolution 060-2013.pdf","21","2013-02-14","0");
INSERT INTO tbl_resolution VALUES("061 - 2012","","Support the proposal of Hon  Rep. Hermilando I. Mandanas, Batangas, for a P5 B increase in the IRA for LGUs in 2012","20","Resolution 061-2012.pdf","21","2012-01-26","0");
INSERT INTO tbl_resolution VALUES("061 - 2013","","MOA w/ the Basic Needs Services Phils, Inc. re: consultancy services of BNS-Phils in preparation of a detailed design, supervise the construction & train the local operators of the low cost & maintenance wastewater treatment plant for Balaoan Dist Hosp.","6,10,18","resolution 061-2013.pdf","21","2013-02-14","0");
INSERT INTO tbl_resolution VALUES("061 - 2014","2014 - 0007","Ord # 19, s 2013, An Ord Amending Ord # 20, s 2008, Mun Revenue Code of Bauang, LU, Part Art # 22, Permit Fee for Zoning and Locational Clearance.","8","RESOLUTION 061-2014.pdf","21","2014-02-13","0");
INSERT INTO tbl_resolution VALUES("062 - 2012","","Approve Mun Ord # 10, s 2011 of the SB of Bauang, LU, “An Ord Amending Art 45, Cemetery Charge of Ord # 20, s 2008, Otherwise known as the Revenue Code of the Mun of Bauang”","20","Resolution 062-2012.pdf","21","2012-01-26","0");
INSERT INTO tbl_resolution VALUES("062 - 2013","","Approve the proposed programming of the FY 2010 Burley & Other Native Tobacco Excise Taxes amounting to P5,096,484.00.","1,3,6,10,11","resolution 062-2013.pdf","21","2013-02-14","0");
INSERT INTO tbl_resolution VALUES("063 - 2012","","Condole with the bereaved family of the late Mr. Reynaldo B. Fernandez, a model farmer & outstanding entrepreneur in Bangar","10","Resolution 063-2012.pdf","21","2012-01-26","0");
INSERT INTO tbl_resolution VALUES("063 - 2013","","Congratulate & commend BM Francisco Ortega Jr., Mayor Bellarmin C. Flores III, Mayor Ferdinand D. Tumbaga, VM Romeo L. Resurreccion, VM Angelo S. Aquino, VM Allan S. Sabangan, VM Vincent A. Rafanan for being recognized among former Councilors elected/appointed to higher positions in gov’t.","11","resolution 063-2013.pdf","21","2013-02-14","0");
INSERT INTO tbl_resolution VALUES("064 - 2012","","Congratulate Mrs. Florence E. Ducusin, for being awarded as the Most Outstanding Brgy Health Worker in Region I","18","Resolution 064-2012.pdf","21","2012-01-26","0");
INSERT INTO tbl_resolution VALUES("064 - 2013","","Contract of Agreement w/ the ff Medical Specialists as Visiting Consultants at Bacnotan Dist Hosp:\n\n1.	Dr. Loreto O. Balanon\n2.	Dr. Judith Efleda O. Chan\n3.	Dr. Edward L. Chiu\n4.	Dr. Joventino S. Espiritu\n5.	Dr. Maria Victoria O. Fangonil\n6.	Dr. Stella Marie P. Mabanag\n7.	Dr. Myra M. Padilla\n8.	Dr. Robito L. Poligrates\n9.	Dr. Cesar M. Duran III\n10.	Dr. Eloisa C. Balanon\n11.	Dr. Melanie O. Liclican\n","6,7,11,18","resolution 064-2013.pdf","21","2013-02-28","0");
INSERT INTO tbl_resolution VALUES("064 - 2014","2014 - 0008","Ord # 20, s 2013, Res Enacting an Ord Reclassifying the Parcel of Land Registered Under the Name of Sps. Dominador&LiberataUntalasco with an area of 5,890 sq.m. Located at Brgy Bagbag, this Mun from Agricultural to Comm?l Classification.","7","RESOLUTION 064-2014.pdf","21","2014-02-13","0");
INSERT INTO tbl_resolution VALUES("065 - 2012","","Amend Res # 419-2011 on the composition of TWG for the proposed Ord regulating the use & sale of all Single-use plastic bags, bottles, wrappers, containers & Styrofoam & other non-ecological friendly materials in the Prov.","1","Resolution 065-2012.pdf","21","2012-01-26","0");
INSERT INTO tbl_resolution VALUES("065 - 2013","","Approve the Consolidated CY 2013 Supplemental AIP from the diff Offices:\n\n1.	Office of the Prov’l Vet\n2.	Prov’l Health Office\n3.	Office of the Prov’l Agriculturist","3,7,17,18","resolution 065-2013.pdf","21","2013-02-28","0");
INSERT INTO tbl_resolution VALUES("066 - 2012","","Approval of the Proposed Ord Renaming Caba Medicare & Community Hospital to Caba Community Hospital:\n\n1.	request Dr. Gretchen Aromin, Chief of CMCH to submit endorsement letter along w/ a summary of activities undertaken to improve the hospital’s capabilities\n2.	consult Nat’l Historical Commission w/ regards to its renaming \n3.	request Prov’l Health Board to recommend its renaming  \n","18","Resolution 066-2012.pdf","21","2012-02-02","0");
INSERT INTO tbl_resolution VALUES("066 - 2013","","Approve the FY 2013 GF AB, of the SB of Rosario, La Union.","5,10,18","resolution 066-2013.pdf","21","2013-02-28","0");
INSERT INTO tbl_resolution VALUES("067 - 2012","","Approve Mun Ord # 31-2011 of the SB of Agoo, LU, Amending Sec 1 of Mun Ord # 28-2008, Granting Authority to Mayor Sandra Y. Eriguel to institute expropriation proceedings on Lot #s 1113-A; 1113-B-2-A; 1113-B-2-B, 1114; 115;1117 & 1118","20","Resolution 067-2012.pdf","21","2012-02-02","0");
INSERT INTO tbl_resolution VALUES("067 - 2013","","Approve Mun Ord # 01-2013, of the SB of Agoo, LU, “An Ord Amending Sec IX.02, Sec 9XL.04(1), Sec 9XLI.01, Sec 9XLII.03, Chapter 14 (Title), Sec 14 LVIII.01(8), Sec 14 LXI.03, Sec 16 LXV.04, Sec 16 LXVI.01(3), Sec 17 LXVIII.01 & Sec 20 LXXVII.01 of Mun Ord # 03-2012, An Ord Enacting the Sanitation Code of the Mun of Agoo, La Union”","5,6,7,9,10,18","resolution 067-2013.pdf","21","2013-02-28","0");
INSERT INTO tbl_resolution VALUES("067 - 2014","2014 - 0047","Ord # 31, s 2013, An Ord Prohibiting the Use of Modified Mufflers, Sirens & Horns that Create & Generate Loud & Deafening Sound in Motorcycles and All Types of Vehicles that Ply the Streets & Thoroughfares w/n the Territorial Jurisdiction of the Mun of Naguilian, Prov of LU, and Imposing Penalties in Violation or Infringement Thereof and for Other Purposes","10","RESOLUTION 067-2014.pdf","21","2014-02-13","0");
INSERT INTO tbl_resolution VALUES("068 - 2012","","Memoof Understanding, w/ the Mun of Caba, La Union, in connection w/ the disposal of waste materials of the Caba Medicare & Community Hospital due to Non-availability of Hospital Dumpsite","1","Resolution 068-2012.pdf","21","2012-02-02","0");
INSERT INTO tbl_resolution VALUES("068 - 2013","","General Authority to enter into a MOA/Contract of Affiliation w/ requesting colleges, universities & schools of Nursing, Caregivers & Midwifery & other Vocational & Technical Institutions in the 5 Dist Hosp, Depts& Offices for SY 2013-2014","5,6,7,10,18","resolution 068-2013.pdf","21","2013-02-28","0");
INSERT INTO tbl_resolution VALUES("069 - 2012","","MOA with the CSC RO-1 to renew the MOA allowing the latter to occupy the Liga ng mga Brgy Bldg as the CSC-LU Field Office","18","Resolution 069-2012.pdf","21","2012-02-02","0");
INSERT INTO tbl_resolution VALUES("069 - 2013","","Declare the province under a State of Calamity due to oil spill","11","resolution 069-2013.pdf","21","2013-02-28","0");
INSERT INTO tbl_resolution VALUES("069 - 2014","2014 - 0050","Mun Ord # 98, s 2013, Internal Rules of Procedure of the SB of Sudipen, La Union","10","RESOLUTION 069-2014.pdf","21","2014-02-13","0");
INSERT INTO tbl_resolution VALUES("070 - 2012","","MOA with the NFA- LU, San Juan, La Union, re: purchase of NFA rice for emergency relief distribution/emergency operation .","18","Resolution 070-2012.pdf","21","2012-02-02","0");
INSERT INTO tbl_resolution VALUES("070 - 2013","","Approve Res # 13-18, of the SP of the City of Sn Fdo, LU, “Res Granting Authority to the Hon Mayor Pablo Ortega to Enter into a MOA B/n & Among the Phil Red Cross, DepEd, League of Municipalities – LU Chapter & PGLU for the Implementation of the Community Based Disaster Risk Reduction Project in the Prov of LU”","1,5,10","resolution 070-2013.pdf","21","2013-03-07","0");
INSERT INTO tbl_resolution VALUES("070 - 2014","2014 - 0022","Pammadayaw 2014\n\nDate Agenda - Jan. 9, 2014\nPITO - Recommend KAPUSO MO, JESSICA SOHO for ABEL & BASI Nominee.\nPITO - Recommend NAIMBAG NGA MORNING KAPAMILYA, for ABEL & BASI Nominee.\n\nDate Agenda - Jan. 22, 2014\nBM V Aragon- Nominate the Special Olympics ? La Union for BASI AWARD\nBM J Ostrea Jr - Nominate FR. NOLAN R. NABUA, as LUSA\nOPAg - Nominate APOLONIO S. SITO, as LUSA\nBM NC Bacurnay - Nominate DR. LINDA H. LAUDENCIA as LUSA\nBM NC Bacurnay - Nominate GEN. ROLANDO PURUGGANAN as LUSA\nGeraldine Ortega - Nominate LA UNION MEDICAL SOCIETY as ABEL/BASI\n\nPD Delia Mingaracal, DTI - Nominate the ff as ENTREPINOY:\n1.	DOMINGO L. DINGAYAN, Dingayan?s Apiary\n2.	JANICE D. FLORENDO, Floredelz Knitted Garments\n\nBM R Mosuela - Nominate Atty. Benjamin P. Sapitula as LUSA\nBM NC Bacurnay- Nominate Gen Rolando R. Macusi as LUSA","4","RESOLUTION 070-2014.pdf","21","2014-02-13","0");
INSERT INTO tbl_resolution VALUES("071 - 2012","","Contract of Consultancy Service:\n\n1.	Ms. Laura-Amelie Riavitz- Marine Biologist \n2.	Mrs. Imelda C. Asiaten- Music Culture & Arts\n","18","Resolution 071-2012.pdf","21","2012-02-02","0");
INSERT INTO tbl_resolution VALUES("071 - 2013","","Approve the CY 2013 Supplemental AIP for the equipment upgrading of the Naguilian District Hospital.","5,6,7,9,10,18","resolution 071-2013.pdf","21","2013-03-14","0");
INSERT INTO tbl_resolution VALUES("071 - 2014","2014 - 0009","Ord # 2011-083, Ord Institutionalizing the S-olace I-nner Peace L-ove A-tonement& W-orship (SILAW) ? Moral Recovery Program (MRP) in All Gov?t Depts, Offices, Agencies and Gov?t-Owned & Controlled Corp thru the conduct of Recollection Called SILAW which Stands for Every Month of August of Every Year in the Mun of Santol, LU","12","RESOLUTION 071-2014.pdf","21","2014-02-13","0");
INSERT INTO tbl_resolution VALUES("072 - 2012","","Renew MOA/ Contract of Affiliation for CY 20112-2013 to all concerned colleges, universities & schools of Nursing, Midwifery & Caregivers & other vocational & technical institutions in the province to the 5 district hospitals, depts. & offices for SY 2012-2013 pertaining to OJT Program","18","Resolution 072-2012.pdf","21","2012-02-02","0");
INSERT INTO tbl_resolution VALUES("072 - 2013","","Deed of Conditional Sale w/ the ORT Community Multi-Purpose Coop (OCMC) in connection w/ the desire of the PGLU to purchase the OCMC’s 2-storey Comm’l Bldg & 1-storey Comm’l Bldg.","1,3,5,7","resolution 072-2013.pdf","21","2013-03-14","0");
INSERT INTO tbl_resolution VALUES("072 - 2014","2014 - 0071","Letter of Gov. Manuel C. Ortega respectfully requesting the August Body for the realignment of the amount of P3,000,000.00 and the use of the same from the item Peace and Order Initiative Fund of the Province of La Union from CY 2014 to Intelligence and Confidential Fund.","1,2,3,8,9","RESOLUTION 072-2014.pdf","21","2014-02-13","0");
INSERT INTO tbl_resolution VALUES("073 - 2012","","Condole with the bereaved family of the late Hon Mauro Nicha, of Balaoan.","3","Resolution 073-2012.pdf","21","2012-02-02","0");
INSERT INTO tbl_resolution VALUES("073 - 2013","","Authorize LUMC & PGLU (thru the Dist Hosp) to create a TRUST FUND/ACCOUNT for all Philhealth payments.","7,10,18","resolution 073-2013.pdf","21","2013-03-14","0");
INSERT INTO tbl_resolution VALUES("073 - 2014","2014 - 0080","\"Letter of Governor Manuel C. Ortega respectfully submitting to the Honorable Body the consolidated CY 2014 Supplemental Annual Investment Program (AIP) from the different offices of the Provincial Government of La Union as follows: Office of the Provincial Governor; Office of the Provincial GEneral Services Officer; and Office of the Provincial Health Officer.\"","1","RESOLUTION 073-2014.pdf","21","2014-02-20","0");
INSERT INTO tbl_resolution VALUES("074 - 2012","","Approve CY 2012 Supplemental AIP of the Office of the Office of the Prov’l Gov to be funded under the  SEF","1","Resolution 074-2012.pdf","21","2012-02-09","0");
INSERT INTO tbl_resolution VALUES("074 - 2013","","Charge P23,968.15 in the current appropriation of CY 2013 Telephone Expenses under the Office of the Prov’l Budget Officer for Mar 2012 to Jan 2013.","1","resolution 074-2013.pdf","21","2013-03-14","0");
INSERT INTO tbl_resolution VALUES("074 - 2014","2014 - 0079","AUTHORIZING GOV. MANUEL C. ORTEGA, FOR AND ON BEHALF OF THE PROVINCIAL GOVERNMENT OF LA UNION (PGLU), TO ENTER INTO A MEMORANDUM OF AGREEMENT (MOA), W|TH THE POPULATTON SERVICES PILIPINAS, lNC., MARIE STOPES CLINIC, URDANETA, PANGASINAN REPRESENTED HEREIN BY MS. JOCELYN D. DANIEL, BRANCH MANAGER IN CONNECTION WITH THE POPULATION MANAGEMENT PROGRAM OF THE PROVINCE THRU BILATERAL TUBAL LIGATTON (BTL) FOR QUALIFIED AND INTERESTED WOMEN OF REPRODUCTIVE AGE.","4","RESOLUTION 074-2014.pdf","21","2014-02-20","0");
INSERT INTO tbl_resolution VALUES("075 - 2012","","Condole with the bereaved family of the late Mr. Abraham O. Concepcion of Balaoan.","11","Resolution 075-2012.pdf","21","2012-02-09","0");
INSERT INTO tbl_resolution VALUES("075 - 2013","","Approve the FY 2013 GF AB of the SP of the City of San Fernando, La Union.","1","resolution 075-2013.pdf","21","2013-03-14","0");
INSERT INTO tbl_resolution VALUES("076 - 2012","","Return Mun Ord # 2011-092 of the SB of Santol, La Union, “An Ord Regulating the Operation of Single Motor for Hire & Granting of Franchise Thereof w/n the Mun of Santol”","20","Resolution 076-2012.pdf","21","2012-02-09","0");
INSERT INTO tbl_resolution VALUES("076 - 2013","","Approve the FY 2013 GF AB of the SB of Agoo, La Union.","1","resolution 076-2013.pdf","21","2013-03-14","0");
INSERT INTO tbl_resolution VALUES("077 - 2012","","SARANAY AWARD\n\n1.	Generoso De Guzman Calonge\n2.	George B. Reyes\n3.	Eulogio Clarence Martin P. de Guzman III\n4.	Jose B. Nisperos\n\nLU SERVICE AWARD\n1.	Daisy O. Sayangda\n2.	Dr. Jose P. Mainggang\n3.	Lydia G. Ordoño\n4.	Rodel G. Rillera\n\nDIEGO SILANG AWARD\n1.	Andy M. White\n\nBASI AWARD\n1.	Population Service Filipinas, Inc.\n2.	LU Hotels, Resorts & Restaurant Assoc\n3.	LU Girl Scout Council\n4.	LU Convention & Visitors Bureau\n5.	Phil Obstetrics & Gynecological Society- LU Group\n6.	LU Lions Club\n","20","Resolution 077-2012.pdf","21","2012-02-09","0");
INSERT INTO tbl_resolution VALUES("077 - 2013","","Approve the FY 2013 GF AB, of the SB of Santol, La Union.","1","resolution 077-2013.pdf","21","2013-03-14","0");
INSERT INTO tbl_resolution VALUES("078 - 2012","","MOA with the DOH Center for Health Dev’t-Ilocos re: construction, upgrading& repair of various hospital facilities such as LUMC, CMCH, NDH, BDH& Balaoan Dist Hosp.","18","Resolution 078-2012.pdf","21","2012-02-09","0");
INSERT INTO tbl_resolution VALUES("078 - 2013","","Approve the FY 2013 GF AB of the SB of Sudipen, La Union.","1","resolution 078-2013.pdf","21","2013-03-14","0");
INSERT INTO tbl_resolution VALUES("079 - 2012","","Charge P300,000.00 from current appropriation of CY 2012 of Prov, for the expenses incurred during LU Anti-Illegal Drug Summit  at Hotel Ariana Restaurant, Bauang.","5","Resolution 079-2012.pdf","21","2012-02-16","0");
INSERT INTO tbl_resolution VALUES("079 - 2013","","Congratulates the Coop Dev’t Authority (CDA) on its 23rd Anniversary & attaining its ISO 9001:2008 Certification.","1,6,7,10","resolution 079-2013.pdf","21","2013-03-14","0");
INSERT INTO tbl_resolution VALUES("080 - 2012","","MOA with Mun Gov’t of Rosario, LU, & beneficiaries/residents of Brgy. Parasapas, Rosario re: proposed construction of Line Canal, Repair of Damaged Stone Masonry & Concreting Roadway along Rosario-Tubao Rd.","1","Resolution 080-2012.pdf","21","2012-02-16","0");
INSERT INTO tbl_resolution VALUES("080 - 2013","","Return Mun Ord # 08-2012, of the SB of San Gabriel, La Union, “Sr. Citizens Code of the Mun of San Gabriel, La Union”","5,6,7,10","resolution 080-2013.pdf","21","2013-03-14","0");
INSERT INTO tbl_resolution VALUES("081 - 2012","","Condole with the bereaved family of the late Hon. Rufino H. Fontanilla, Mun Mayor of Bacnotan","18","Resolution 081-2012.pdf","21","2012-02-16","0");
INSERT INTO tbl_resolution VALUES("081 - 2013","","Return Ord # 03-2013, of the SB of Agoo, LU, “An Ord Prohibiting the Use, Sale, Distribution & Advertisement of Cigarettes & Tobacco Products in Certain Places, Imposing Penalties for Violations Thereof & Providing Funds Therefore & for Other Purposes”","3,6,7,17,20","resolution 081-2013.pdf","21","2013-03-14","0");
INSERT INTO tbl_resolution VALUES("082 - 2012","","Approve FY 2012 GF, AB of Agoo, La Union.","1","Resolution 082-2012.pdf","21","2012-02-16","0");
INSERT INTO tbl_resolution VALUES("082 - 2013","","Approve Mun Ord # 02-2013, of the SB of San Juan, LU, “An Ord Renaming Amparo Park to People’s Park”","1,5,7,10,20","resolution 082-2013.pdf","21","2013-03-14","0");
INSERT INTO tbl_resolution VALUES("083 - 2012","","Congratulate the LU Police Prov’l Office, Phil Nat’l Police, Camp Diego Silang, SFC, LU headed by PSupt Ramon O.Purugganan being the Best Police Prov’l Office in Region I","3","Resolution 083-2012.pdf","21","2012-02-23","0");
INSERT INTO tbl_resolution VALUES("083 - 2013","","Support & enter into a Partnership w/ the Region I Advocates for Gender Equality (RAGE) in the advocacy to the Information & Dissemination Campaign for Women’s Rights","1,5,6,10","RESOLUTION 83-2013.pdf","21","2013-03-14","0");
INSERT INTO tbl_resolution VALUES("084 - 2012","","Congratulate the Balaoan Police Station, Phil. Nat’l Police, Balaoan, LU headed by PSINSP Benjamin B. Diagan, Jr. as the Best Mun Police Station of the Year","3","Resolution 084-2012.pdf","21","2012-02-23","0");
INSERT INTO tbl_resolution VALUES("084 - 2013","","Condole w/ the bereaved family of Mrs. Lourdes P. Rivera.","1,3,5,6,7,9,10,11,12,13,18,19,20","RESOLUTION 84-2013.pdf","21","2013-03-14","0");
INSERT INTO tbl_resolution VALUES("085 - 2012","","MOA w/ DPWH, for the project implementation of Special Local Road Fund Project along Prov’l /City Roads of LU w/ funding under MVUC, Special Road Fund CY 2009 & 2010","18","Resolution 085-2012.pdf","21","2012-02-23","0");
INSERT INTO tbl_resolution VALUES("085 - 2013","","Congratulate PCSupt Franklin B Bucayu on his appt as the Acting Director of the Bureau of Corrections (BUCOR).","1,3,5,6,7,9,10,11,12,13,18,19,20","RESOLUTION 85-2013.pdf","21","2013-03-14","0");
INSERT INTO tbl_resolution VALUES("086 - 2012","","Return Ord # 41, s 2011, of the SB of Burgos, LU, “An Ord Adopting Burgos Land Transportation Code of 2011, Compiling & Rationalizing All Ord & Res of the Municipality Relative to Land Transportation”","9","Resolution 086-2012.pdf","21","2012-02-23","0");
INSERT INTO tbl_resolution VALUES("086 - 2013","","Approve the CY 2013 Supplemental AIP of the Office of the Prov’l Administrator for payment of services of the Prov’l Re-organizational Consultancy","1,5,7,10,18","RESOLUTION 86-2013.pdf","21","2013-03-21","0");
INSERT INTO tbl_resolution VALUES("087 - 2012","","Return City Ord # 2011-11, of the SP of the SFC, LU, “An Ord Governing Rules & Regulations In the Playing & Singing of the Phil Nat’l Anthem in all Movie Houses in the City, & Repealing City Ord # 2010-008”","20","Resolution 087-2012.pdf","21","2012-02-23","0");
INSERT INTO tbl_resolution VALUES("087 - 2013","","Enjoining all municipalities/city to pass an Ord to name & declare their own city/municipal Tree & Flower.","1,3,5,6,7,9,10,11,12,13,18,19,20","RESOLUTION 87-2013.pdf","21","2013-03-21","0");
INSERT INTO tbl_resolution VALUES("087 - 2014","2014 - 0086","\"Letter of Governor Manuel C. Ortega respectfully requesting the August Body to enact a Resolution Congratulating Mr. Sephi Marz Gines Liclican in recognition of his outstanding achievement during the International Mathematics Competition held on August 2-5, 2013 and won a Bronze Prize in Singapore.\"","4","RESOLUTION 087-2014.pdf","21","2014-03-06","0");
INSERT INTO tbl_resolution VALUES("088 - 2012","","Contract of Service w/ Dr. Claire Maramat-Lucina, as a Visiting Consultant, on Ob Gyne at Balaoan District Hospital","18","Resolution 088-2012.pdf","21","2012-02-23","0");
INSERT INTO tbl_resolution VALUES("088 - 2013","","MOA w/ the LUMS in connection w/ the renewal of LUMS’ free use of the vacant space at the southern portion of the 1-storey bldg in Quezon Ave., CSF","5,6,7,10,18","RESOLUTION 88-2013.pdf","21","2013-03-21","0");
INSERT INTO tbl_resolution VALUES("089 - 2012","","Approve Consolidated CY 2012 Supplemental AIP\n(Annual Investment Planning ) of the Diff Offices of the Province ","18","Resolution 089-2012.pdf","21","2012-02-23","0");
INSERT INTO tbl_resolution VALUES("089 - 2013","","Approve Res # 13-02, of the SP of CSF, LU “Granting Final Approval to the Sagayad Resettlement Project 2 Located at Brgy Sagayad, this City” ","6,7,10","RESOLUTION 89-2013.pdf","21","2013-03-21","0");
INSERT INTO tbl_resolution VALUES("089 - 2014","2014 - 0083","Recommend approval of the FY 2014 GF AB, of Santol, LU","2","RESOLUTION 089-2014.pdf","21","2014-03-06","0");
INSERT INTO tbl_resolution VALUES("090 - 2012","","Congratulate Ms. Luz Danielle O. Bolong& Mr. Christian Louie c. Gonzales, No. 2 & No. 5, respectively, 2011 Bar Exams.","1,3,5,6,7,9,10,11,13,18,19","Resolution 090-2012.pdf","21","2012-03-01","0");
INSERT INTO tbl_resolution VALUES("090 - 2013","","Return Mun Ord # 04-2013, of the SB of San Juan, LU, “An Ord Authorizing the Supplemental Appropriation for the Implementation of Local Budget Circular No. 102”","1","RESOLUTION 90-2013.pdf","21","2013-03-21","0");
INSERT INTO tbl_resolution VALUES("090 - 2014","2014 - 0011","Ord # 2011-085, Ord Assuring the Continuity of Supplies for Family Planning Services in the Mun of Santol, LU, Calling for the Adopting of a Contraceptive Self-Reliance (CSR) Plan & Allocating Funds for Purpose Thereof.","9","RESOLUTION 090-2014.pdf","21","2014-03-06","0");
INSERT INTO tbl_resolution VALUES("091 - 2012","","Congratulate all Bar Passers from the Province during the 2011 Bar Exams.","1,3,5,6,7,9,10,11,13,18,19","Resolution 091-2012.pdf","21","2012-03-01","0");
INSERT INTO tbl_resolution VALUES("091 - 2013","","MOA w/ 1590 Energy Corp for a period of 1 year (June 26, 2013 to June 25, 2014) for the continued operation, preservation, maintenance & management of the Bauang Diesel Power Plant","1","RESOLUTION 91-2013.pdf","21","2013-03-21","0");
INSERT INTO tbl_resolution VALUES("092 - 2012","","Congratulate Denmark M. Rillera for topping the Entrance Exam for the PNP.","1,3,5,6,7,8,9,10,11,12,13,18,19","Resolution 092-2012.pdf","21","2012-03-01","0");
INSERT INTO tbl_resolution VALUES("092 - 2013","","Requesting the municipalities/city to switch their lights off for an hour on March 23, 2013 as a show of concern for the environment symbolized by the Earth Hour Movement","1,3,5,6,7,9,10,11,12,13,18,19,20","RESOLUTION 92-2013_001.pdf","21","2013-03-21","0");
INSERT INTO tbl_resolution VALUES("092 - 2014","2014 - 0010","Ord # 2011-084, Ord Establishing the Mayor?s Action Center 24 7 (MAC 24 7) in the Mun of Santol, LU","3","RESOLUTION 092-2014.pdf","21","2014-03-06","0");
INSERT INTO tbl_resolution VALUES("093 - 2012","","Approve Res # 12-25, s 2012, of the SP of the City of San Fernando, LU, approving the Supplemental AIP FY 2012 of the City of Sn Fdo","1","Resolution 093-2012.pdf","21","2012-03-01","0");
INSERT INTO tbl_resolution VALUES("093 - 2013","","Congratulate Atty. Albert F. Padilla, for passing the Oct 2012 Bar Exam.","1,3,5,6,7,9,10,11,12,13,18,19,20","RESOLUTION 93-2013.pdf","21","2013-03-21","0");
INSERT INTO tbl_resolution VALUES("094 - 2012","","Approve the FY 2012 GF AB of Bangar, La Union.","1","Resolution 094-2012.pdf","21","2012-03-01","0");
INSERT INTO tbl_resolution VALUES("094 - 2013","","Congratulate Atty. RemediosMupas, Crista Ma. Taguiam, Harvey Espiritu, Lovella May Huliganga, JobertRillera& Paolo Gonzalo Garcinez for passing the Oct 2012 Bar Exam.","1,3,5,6,7,9,10,11,12,13,18,19","RESOLUTION 94-2013.pdf","21","2013-03-21","0");
INSERT INTO tbl_resolution VALUES("094 - 2014","2014 - 0095","\"Letter of Gov. Manuel C. Ortega respectfully requesting approval of the August Body to charge the amount of Ninety Four Thousand Six Hundred Sixty Pesos (P94,660.00) to the Current Appropriations CY 2014 for the purchase of Guns (Capital Outlay) and Ammunitions (Supplies) under the Office of the Governor (OPG).  Said items were not yet delivered by the winning bidder, ARMSCOR SHOOTING CENTER, INC. San Fernando, La Union\"","4","RESOLUTION 094-2014.pdf","21","2014-03-06","0");
INSERT INTO tbl_resolution VALUES("095 - 2012","","Approve the FY 2012 GF SB # 2, of Naguilian, La Union.","1","Resolution 095-2012.pdf","21","2012-03-01","0");
INSERT INTO tbl_resolution VALUES("095 - 2013","","Congratulate all Bar Passers of the 2012 Bar Exam .","1,3,5,6,7,9,10,11,12,13,18,19","RESOLUTION 95-2013.pdf","21","2013-03-21","0");
INSERT INTO tbl_resolution VALUES("096 - 2012","","Approve the FY 2011 GF SB # 5, of Bauang, La Union.","1","Resolution 096-2012.pdf","21","2012-03-01","0");
INSERT INTO tbl_resolution VALUES("096 - 2013","","Congratulate Sudipen, Bacnotan & San Juan (LU) for being conferred among the Top 48 Outstanding Municipalities Agri-Pinoy Rice Achievers’ Awardees 2012 (ParangalsamgaBosing ng Palayan)  ","1,3,5,6,7,10,11,12,13,18,19,20","RESOLUTION 96-2013.pdf","21","2013-03-21","0");
INSERT INTO tbl_resolution VALUES("096 - 2014","2014 - 0096","Letter of Gov. Manuel C. Ortega respectfully endorsing to the Hon.\nBody the Three-Year Provincial Commodity Investment Plan (PCIP)\nof the Province of La Union for 2014-2017","2,3,5","RESOLUTION 096-2014.pdf","21","2014-03-20","0");
INSERT INTO tbl_resolution VALUES("097 - 2012","","Approve the FY 2012 GF SB # 6, of Bauang, La Union.","1","Resolution 097-2012.pdf","21","2012-03-01","0");
INSERT INTO tbl_resolution VALUES("097 - 2013","","Congratulate Imelda Sannadan for being chosen as an Outstanding Prov’l Agriculturist by the Dept of Agriculture during the 2012 Agri-Pinoy Rice Achievers’ Awards (ParangalsamgaBosing ng Palayan).","1,3,5,6,7,9,10,11,12,13,18,19,20","RESOLUTION 97-2013.pdf","21","2013-03-21","0");
INSERT INTO tbl_resolution VALUES("097 - 2014","2014 - 0104","\"Letter of Gov. Manuel C. Ortega respectfully requesting approval of this August Body to charge the amount of Eighteen Thousand One Hundred Sixty and 23/100 (P18,160.23) to the Current Appropriation CY 2014 for the Installation of Micro Mini Blinds at the Office of Board Member Reynaldo M. Mosuela under MOE CY 2014 Appropriaton of the Sangguniang Panlalawigan Office\"","2,3,5","RESOLUTION 097-2014.pdf","21","2014-03-20","0");
INSERT INTO tbl_resolution VALUES("098 - 2012","","Approve the FY 2012 GF SB # 7, of Bauang, La Union.","1","Resolution 098-2012.pdf","21","2012-03-01","0");
INSERT INTO tbl_resolution VALUES("098 - 2013","","Congratulate Myrna O. Picazo for being chosen asn an Outstanding Rice Program Coordinator by the Dept of Agriculture during the 2012 Agri-Pinoy Rice Achievers’ Awards (ParangalsamgaBosing ng Palayan).","1,3,5,6,7,9,10,11,12,13,18,19,20","RESOLUTION 98-2013.pdf","21","2013-03-21","0");
INSERT INTO tbl_resolution VALUES("098 - 2014","2014 - 0105","\"Letter of Gov. Manuel C. Ortega respectfully informing the Hon. Presiding Officer and the Honorable members of the Sangguniang Panlalawigan that Mr. Francisco D. Ventura (Radiologic Technolist II of Rosario District Hospital will be retiring on May 26, 2014 and requesting the August Body to pass a resolution adjusting his  present Salary Grade to one grade to one grade higher specifically from Salary Grade 13 Step 7 (22,755/mon) to Salary Grade 14 step 7 (P24,461/month) effective February 26, 2014 to be appropriated from the PS Savings. Said adjustment is pursuant to Section 30, of RA 7305 known as the \"\"Magna Carta of Public Health Workers\"\" and DOH Administrative Order No. 32-B s. 1994\"\n","2,3,5","RESOLUTION 098-2014.pdf","21","2014-03-20","0");
INSERT INTO tbl_resolution VALUES("099 - 2012","","Approve Mun Ord # 01-2012, of the SB of Naguilian, LU, : “An Ord to Declare All Public Facilities & Structures, Commercial Establishments & Schools as No Smoking Zone w/n the Territorial Jurisdiction of the Mun of Naguilian, LU & Imposing Penalties to Violators Thereof”","18","Resolution 099-2012.pdf","21","2012-03-01","0");
INSERT INTO tbl_resolution VALUES("099 - 2013","","Approve the FY 2013 GF SB # 1, of the SB of Agoo, La Union","1","RESOLUTION 99-2013.pdf","21","2013-03-26","0");
INSERT INTO tbl_resolution VALUES("099 - 2014","2014 - 0092","Recommend approval of the FY 2014 GF SB # 1, of Balaoan, LU","3","RESOLUTION 099-2014.pdf","21","2014-03-20","0");
INSERT INTO tbl_resolution VALUES("100 - 2012","","Approve Ord # 01-2011, of the SB of Tubao, LU, “Enacting the Gender & Dev’t Code (GAD) of the Mun of Tubao, LU”","5","Resolution 100-2012.pdf","21","2012-03-01","0");
INSERT INTO tbl_resolution VALUES("100 - 2013","","Approve the FY 2013 GF SB # 1, of the SB of San Gabriel, La Union","1","RESOLUTION 101-2013.pdf","21","2013-03-26","0");
INSERT INTO tbl_resolution VALUES("100 - 2014","2014 - 0091","Recommend approval of the FY 2014 GF SB # 1, of Agoo, LU","3","RESOLUTION 100-2014.pdf","21","2014-03-20","0");
INSERT INTO tbl_resolution VALUES("101 - 2012","","Approve the FY 2012 GF AB, of Rosario, La Union.","1","Resolution 101-2012.pdf","21","2012-03-01","0");
INSERT INTO tbl_resolution VALUES("101 - 2013","","Approve the FY 2013 GF AB, of the SB of Sudipen, La Union.","1","RESOLUTION 101-2013.pdf","21","2013-03-26","0");
INSERT INTO tbl_resolution VALUES("102 - 2012","","Approve Mun Ord # 90, s 2011, of the SB of Sudipen, LU, “An Ord Prohibiting the Use of Plastic Bags on Dry Goods & Regulating its Utilization on Wet Goods & Prohibiting the Use of Styrofoam in the Mun of Sudipen, LU & Prescribing Penalties Thereof”","1","Resolution 102-2012.pdf","21","2012-03-01","0");
INSERT INTO tbl_resolution VALUES("102 - 2013","","Approve the FY 2013 GF SB # 1, of City of San Fernando, La Union.","1","RESOLUTION 102-2013.pdf","21","2013-03-26","0");
INSERT INTO tbl_resolution VALUES("103 - 2012","","Approve City Ord # 2011-08, of the SP of the City of San Fernando, LU, “An Ord Regulating the Construction/Installation/Upgrading/Operation of Cellular Sites in the City of San Fdo”","1","Resolution 103-2012.pdf","21","2012-03-01","0");
INSERT INTO tbl_resolution VALUES("103 - 2013","","Approve the FY 2013 GF AB, of the SB of Bauang, La Union.","1","RESOLUTION 103-2013_001.pdf","21","2013-03-26","0");
INSERT INTO tbl_resolution VALUES("104 - 2012","","Approve FY 2012 GF AB of the SB of Luna, La Union.","1","Resolution 104-2012.pdf","21","2012-03-08","0");
INSERT INTO tbl_resolution VALUES("104 - 2013","","Request the BFP to include all schools, public & private in pre-school, elementary, secondary & tertiary & all public buildings in their regular inspection to ensure the compliance w/ fire safety measures of said facilities","6","RESOLUTION 104-2013.pdf","21","2013-03-26","0");
INSERT INTO tbl_resolution VALUES("105 - 2012","","Approve FY 2012 GF AB of the SB of Balaoan, La Union.","1","Resolution 105-2012.pdf","21","2012-03-08","0");
INSERT INTO tbl_resolution VALUES("105 - 2013","","Return Mun Ord # 05, s 2012, of the SB of Sto. Tomas, La Union, “Ord Regulating the Maintenance, Care & Safekeeping of Animals for the Welfare & Protection of the Residents of the Mun of Sto. Tomas, La Union”","1,3,5,7","RESOLUTION 105-2013.pdf","21","2013-03-26","0");
INSERT INTO tbl_resolution VALUES("106 - 2012","","Contract of Lease with the Naguilian Federation of Sr. Citizens pertaining to the parcel of land for the construction of the Mun Asso. of NGO & Sr. Citizens.","7,10","Resolution 106-2012.pdf","21","2012-03-08","0");
INSERT INTO tbl_resolution VALUES("106 - 2013","","Authorize/allow Gov to charge the wages & other benefits of Casual/Emergency Employees against the PS Appropriation Savings of offices ","1","RESOLUTION 106-2013.pdf","21","2013-03-26","0");
INSERT INTO tbl_resolution VALUES("107 - 2012","","Approve Mun Ord # 88, s 2011, of the SB of Sudipen, LU, “An Ord Prescribing the Rules & Regulations for the Use & Operation of Motorcycles on Highways & Roads in the Mun of Sudipen”","10","Resolution 107-2012.pdf","21","2012-03-08","0");
INSERT INTO tbl_resolution VALUES("107 - 2013","","Approve Mun Ord # 08-2013, of the SB of Agoo, LU, “An Ord Providing for the Agoo Reproductive Health Care Code of 2013”","1,3,6,7,9,10","RESOLUTION 107-2013.pdf","21","2013-04-04","0");
INSERT INTO tbl_resolution VALUES("107 - 2014","2014 - 0114","\"Letter of Gov. Manuel C. Ortega respectfully requesting the Honorable Body to amend Resolution No. 355-2013 only as regards the area of the lot to be leased to the Department of Agriculture, i.e. from 664.65 to 1,248 square meters\"","4","RESOLUTION 107-2014.pdf","21","2014-03-27","0");
INSERT INTO tbl_resolution VALUES("108 - 2012","","Approve Mun Ord # 40-2100, of the SB of Luna, LU, “An Ord Requiring All Privately Operated & managed Resorts, Picnic Places & Similar Vacation & Recreation Establishments w/ Swimming Areas or Facility w/n the Jurisdiction of the Mun of Luna, LU to Employ Lifeguards & Install Safety Measures & Equipment as a Pre-requisite to the Issuances of Business Permits”","10","Resolution 108-2012.pdf","21","2012-03-08","0");
INSERT INTO tbl_resolution VALUES("108 - 2013","","Approve the Prov’l Migration Dev’t Plan, CY 2012-2015.","5,7,10,11","RESOLUTION 108-2013.pdf","21","2013-04-11","0");
INSERT INTO tbl_resolution VALUES("109 - 2012","","Approve Ord # 156, of the SB of Aringay, LU, “An Ord Amending Sec 5 of Ord # 155, Prohibiting the Sale & Illegal Use of Police & Military Uniforms, Insignia & Other Accessories w/n the Territorial Jurisdiction of the Mun of Aringay”","1","Resolution 109-2012.pdf","21","2012-03-08","0");
INSERT INTO tbl_resolution VALUES("109 - 2013","","Approve the LU Tourism Strategic Master Plan, CY 2012-2015.","5,10,18","RESOLUTION 109-2013.pdf","21","2013-04-11","0");
INSERT INTO tbl_resolution VALUES("109 - 2014","2014 - 0112","Recommend approval of the FY 2014 GF SB # 1, of Sto. Tomas, LU","4","RESOLUTION 109-2014.pdf","21","2014-03-27","0");
INSERT INTO tbl_resolution VALUES("110 - 2012","","Support Women & their Cause in the Province ","1,2,5,6,9,10,13,18,20","Resolution 110-2012.pdf","21","2012-03-08","0");
INSERT INTO tbl_resolution VALUES("110 - 2013","","COL with LTO RI, OWWA, CSC, BOT, BIR, BPI, PPA, PVAO in connection with the lot owned along Aguila Rd, CSF, LU, for the construction of their respective office building","5,10","RESOLUTION 110-2013.pdf","21","2013-04-11","0");
INSERT INTO tbl_resolution VALUES("110 - 2014","2014 - 0110","Recommend approval of the FY 2014 GF AB, of Luna, LU","4","RESOLUTION 110-2014.pdf","21","2014-03-27","0");
INSERT INTO tbl_resolution VALUES("111 - 2012","","Contract of Agreement with Dr Marianne G. Manangan as Visiting Consultant in Pediatrics at RDH.","10","Resolution 111-2012.pdf","21","2012-03-15","0");
INSERT INTO tbl_resolution VALUES("111 - 2013","","Approve the FY 2013 GF SB # 2, of the City of San Fernando, La Union.","11","RESOLUTION 111-2013.pdf","21","2013-04-11","0");
INSERT INTO tbl_resolution VALUES("111 - 2014","2014 - 0111","Recommend approval of the FY 2014 GF AB, of San Juan, LU","4","RESOLUTION 111-2014.pdf","21","2014-03-27","0");
INSERT INTO tbl_resolution VALUES("112 - 2012","","MOA w/ Lorma Medical Center as service provider in the conduct of Drug Testing to all PGLU Drivers, Security Guards & Jail Guards.","10,20","Resolution 112-2012.pdf","21","2012-03-15","0");
INSERT INTO tbl_resolution VALUES("112 - 2013","","Approve the FY 2013 GF SB # 3, of the City of San Fernando, La Union.","11","RESOLUTION 112-2013.pdf","21","2013-04-11","0");
INSERT INTO tbl_resolution VALUES("112 - 2014","2014 - 0109","Recommend approval of the FY 2014 GF AB, of CSF, LU","4","RESOLUTION 112-2014.pdf","21","2014-03-27","0");
INSERT INTO tbl_resolution VALUES("113 - 2012","","Approve FY 2012 GF SB # 1, of Agoo, La Union.","1","Resolution 113-2012.pdf","21","2012-03-15","0");
INSERT INTO tbl_resolution VALUES("113 - 2013","","Approve the FY 2013 GF SB # 1, of Balaoan, La Union.","11","RESOLUTION 113-2013.pdf","21","2013-04-11","0");
INSERT INTO tbl_resolution VALUES("114 - 2012","","Approve Res # 03, s 2012, of the SB of Burgos, La Union, “Res Revising Proposed Mun Ord # 38, s 2011, “An Ord Adopting Rules & Procedures in the Conduct of Administrative Investigation Against Elective Barangay Officials of the Mun of Burgos, La Union”","20","Resolution 114-2012.pdf","21","2012-03-15","0");
INSERT INTO tbl_resolution VALUES("114 - 2013","","Approve Ord # 37, s 2012, of the SB of Naguilian, LU, “An Ord Adopting the Rules & Regulations Governing the Implementation of RA 10172, An Act Further Authorizing the Mun Civil Registrar to Correct Clerical or Typographical Errors in the Day & Month in the Date of Birth or Sex Appearing in the Civil Register w/o Need of Judicial Order”","5,7,10","RESOLUTION 114-2013.pdf","21","2013-04-11","0");
INSERT INTO tbl_resolution VALUES("114 - 2014","2014 - 0019","Ord # 2013-109, An Ord Creating the Santol Motorized Tricycle Franchising & Regulatory Board (SMTFRB), Providing for its Powers & Functions, & For Other Purposes","4","RESOLUTION 114-2014.pdf","21","2014-03-27","0");
INSERT INTO tbl_resolution VALUES("115 - 2012","","Approve Mun Ord # 41-2011, of the SB of Luna, LU, “An Ord to Fix & Impose Reasonable Fees & Charges for All Services Rendered and/or Prescribing the Terms & Conditions Under w/c Public Utilities Owned by the Mun Shall be Operated by the Mun Gov’t or Leased to Private Person or Entities, Preferably Coops”","20","Resolution 115-2012.pdf","21","2012-03-15","0");
INSERT INTO tbl_resolution VALUES("115 - 2013","","Approve Ord # 06-2013, of the SB of San Juan, LU, “An Ord Authorizing the San Juan Auxiliary Contingent To Issue Traffic Citation Tickets (TCTs), as Amended”","3,6,7,10","RESOLUTION 115-2013.pdf","21","2013-04-11","0");
INSERT INTO tbl_resolution VALUES("116 - 2012","","Approve Mun Ord # 12-2012, of the SB of Bauang, LU, “An Ord Imposing Fees on the Availment of Service, Use of Facilities, Including the Provision of Medicines & Supplies at the Doña Corazon Campos Ortega Lying-in, Maternity, Geriatric & Therapeutic Center of the Mun of Bauang”","20","Resolution 116-2012.pdf","21","2012-03-15","0");
INSERT INTO tbl_resolution VALUES("116 - 2013","","Approve Ord # 14, s 2012, of the SB of Bauang, LU, “An Ord Prescribing Rules & Regulations in the Use & Operation of the New Cemetery”","7,9,10,11","RESOLUTION 116-2013.pdf","21","2013-04-11","0");
INSERT INTO tbl_resolution VALUES("117 - 2012","","Return the Mun Revenue Code of 2011 of Bangar, La Union for proper amendments","20","Resolution 117-2012.pdf","21","2012-03-15","0");
INSERT INTO tbl_resolution VALUES("117 - 2013","","Return Ord # 5, s 2012, of the SB of Bauang, LU, “An Ord Creating, Formulating & Establishing the Bauang Tourism Code w/c Provides for the Rules & Regulations Governing & Prescribing Penalties for Violation Thereof”","5,7,10","RESOLUTION 117-2013.pdf","21","2013-04-11","0");
INSERT INTO tbl_resolution VALUES("117 - 2014","2014 - 0120","\"Letter of Gov. Manuel C. Ortega, respectfully requesting the Hon. Body to authorize him to enter into a MOA with the Commission on Population (POPCOM) Region I represented by Ms. Erma R. Yapit, OIC Regional Director, in connection with the donation of One (1) Unit complete set of Computer with Printer for the data base management and other population-related activities of the PGLU\"","4","RESOLUTION 117-2014.pdf","21","2014-04-03","0");
INSERT INTO tbl_resolution VALUES("118 - 2012","","Approve Mun Ord 3 89, s 2011, of the SB of Sudipen, LU, “Local Revenue Code of the Mun of Sudipen, LU”","20","Resolution 118-2012.pdf","21","2012-03-15","0");
INSERT INTO tbl_resolution VALUES("118 - 2013","","Approve Mun Ord # 06-2013, of the SB of Agoo, LU, “An Ord Authorizing the Mun Civil Registrar (MCR), to Correct Clerical or Typographical Errors in the Day & Month in the Date of Birth or Sex of a Person Appearing in the Civil Register w/o Need of a Judicial Order & to Collect Fees in Accordance to Rule 10 of the IRR of RA 10171”","5,7,10,18","RESOLUTION 118-2013.pdf","21","2013-04-11","0");
INSERT INTO tbl_resolution VALUES("118 - 2014","2014 - 0121","\"Letter of Gov. Manuel C. Ortega respectfully submitting the consolidated CY 2014 Supplemental Annual Investment Program (AIP) of the following Offices of the Provincial Government of La Union (PGLU) for the August Body\'s consideration and approval\"","1","RESOLUTION 118-2014.pdf","21","2014-04-03","0");
INSERT INTO tbl_resolution VALUES("119 - 2012","","Approve the Revised Mun Revenue Code of the Mun of Sto. Tomas, La Union.","20","Resolution 119-2012.pdf","21","2012-03-15","0");
INSERT INTO tbl_resolution VALUES("119 - 2013","","Approve Ord # 3-2013, of the SB of San Gabriel, LU, “An Ord Authorizing the Mun Civil Registrar through the Mun Treas to Collect Fees for Every Petition to the Day and/or Month in the Date of Birth or Sex at the Rate Prescribed under Admin Order No. 1, s 2012, of the Civil Register General”","7,10","RESOLUTION 119-2013.pdf","21","2013-04-11","0");
INSERT INTO tbl_resolution VALUES("119 - 2014","2014 - 0115","Recommend approval of the FY 2014 GF SB # 2, of Balaoan, LU","1","RESOLUTION 119.-2014.pdf","21","2014-04-03","0");
INSERT INTO tbl_resolution VALUES("120 - 2012","","Refer to the LUPPO the issues raised by Hon. JM Ortega & Henry Balbin re:","3","Resolution 120-2012.pdf","21","2012-03-15","0");
INSERT INTO tbl_resolution VALUES("120 - 2013","","Approve the FY 2013 GF AB, of the SB of Sto. Tomas, La Union.","1,6,7,20","RESOLUTION 120-2013.pdf","21","2013-04-17","0");
INSERT INTO tbl_resolution VALUES("120 - 2014","2014 - 0116","Recommend Approval of the FY 2014 GF AB, of Bauang, La Union.","1","RESOLUTION 120-2014.pdf","21","2014-04-03","0");
INSERT INTO tbl_resolution VALUES("121 - 2012","","Return Ord # 02-2012, of the SB of Agoo, LU, “An Ord Regulating the Maintenance & Safekeeping of Animals for the Welfare & Protection of Residents in the 49 Brgys of the Mun of Agoo”","3","Resolution 121-2012.pdf","21","2012-03-15","0");
INSERT INTO tbl_resolution VALUES("121 - 2013","","Approve the FY 2013 GF SB # 2, of Agoo, La Union.","1,6,7,20","RESOLUTION 121-2013.pdf","21","2013-04-17","0");
INSERT INTO tbl_resolution VALUES("122 - 2012","","Approve Ord # 05, s 2011, of the SB of Naguilian, LU, “An Ord Authorizing All Peace-Keeping Forces to Check on the Drivers Licenses & Registration Papers of Vehicles Entering the Territorial Jurisdiction of the Mun of Naguilian & Providing Penalties to Violators Thereof”","3","Resolution 122-2012.pdf","21","2012-03-15","0");
INSERT INTO tbl_resolution VALUES("122 - 2013","","Condole w/ the bereaved family of Atty. Ceferino V. Argueza.","1,3,5,6,7,9,10,11,12,13,18,19,20","RESOLUTION 122-2013.pdf","21","2013-04-17","0");
INSERT INTO tbl_resolution VALUES("123 - 2012","","Approve the CY 2012 Supplemental AIP for the Office of the Prov’l Treasurer","1","Resolution 123-2012.pdf","21","2012-03-22","0");
INSERT INTO tbl_resolution VALUES("123 - 2013","","Approve Mun Ord # 1-2013, of the SB of San Gabriel, LU, “An Ord Amending Chapter 5, Sec 5A.07, of the Revised Revenue Code of San Gabriel, LU","1,3,7,10,20","RESOLUTION 123-2013.pdf","21","2013-04-17","0");
INSERT INTO tbl_resolution VALUES("123 - 2014","2014 - 0123","\"Letter of Gov. Manuel C. Ortega respectfully endorsing the 5-Year Provincial Disaster Risk Reduction and Management (PDRRMC) Plan, CY 2014-2018 for the August Body\'s kind consideration and Approval for effective and efficient implementation to protect lives, property and livelihood of our people as planned.\"","11","RESOLUTION 123-2014.pdf","21","2014-04-03","0");
INSERT INTO tbl_resolution VALUES("124 - 2012","","Refer to the LTO, Ord # 91, s 2012, of the SB of Sudipen, LU, “An Ord Amending Certain Provision of Mun Ord # 17, s 1999, Known as the An Ord Regulating Traffic in the Nat’l Highways of Sudipen”","9","Resolution 124-2012.pdf","21","2012-03-22","0");
INSERT INTO tbl_resolution VALUES("124 - 2013","","Return Mun Ord # 2-2013, of the SB of San Gabriel, LU, “Public Market Code of the Mun of San Gabriel, La Union”","1,3,7,10,20","RESOLUTION 124-2013.pdf","21","2013-04-17","0");
INSERT INTO tbl_resolution VALUES("125 - 2012","","Approve Mun Ord # 02-2012, of the SB of San Gabriel, LU, “An Ord Prohibiting the Cutting & Putting Up of Any Object Destroying or Injuring Planted or Flowering Trees, Flowering Plants & Shrubs or Plants of Scenic Value w/n the Area of Jurisdiction of San Gabriel”","1","Resolution 125-2012.pdf","21","2012-03-22","0");
INSERT INTO tbl_resolution VALUES("125 - 2013","","Approve Ord # 4, s 2013, of the SB of Naguilian, LU “An Ord Authorizing the Proposed Borrowing of the Mun of Naguilian, Prov of LU, in the amount of P53,600,000.00to Fund the Implementation of Various Priority Projects of the Mun Gov’t of Naguilian, La Union”","1,7,10,20","RESOLUTION 125-2013.pdf","21","2013-04-17","0");
INSERT INTO tbl_resolution VALUES("125 - 2014","2014 - 0127","\"Letter of Gov. Manuel C. Ortega respectfully requesting the Hon. Body to authorize him for and on behalf of the PGLU to enter into a MOA with the Bureau of Fisheries and Aquatic Resources Regional Fisheries Office I (BFAR-RFOi), the Municipality of Sto. Tomas, and the small Fishermen Association of Casantaan, the Municipality of Bacnotan and the Pandan Fishermen Assciation, the Municipality of San  Juan and the Taboc Fishermen Association, the Mun. of Bauang and the Bauang Fishing Group Consumers Cooperative, the Municipality of Bangar and the Mindoro Fisherfolk Association, the Municipality of Balaoan and the Paraoir Fisherfolk Assciation- all of the Province of La Union, in connection the grant of Payao Projects for the afore mentioned Local Government Units and  their respective beneficiaries for the Implementation of Fishery Program and Projects in the Province.\"\n","3","RESOLUTION 125-2014.pdf","21","2014-04-10","0");
INSERT INTO tbl_resolution VALUES("126 - 2012","","Approve Ord # 01-2012, of the SB of San Gabriel, LU, “An Ord Prohibiting the Encroachment & Any Use of Any Portion of Nat’l, Prov’l, Mun & Brgy Rds., Avenues, Sts., & Bridges w/n the Area of Jurisdiction of San Gabriel Other Than for Mobility Purposes”","1","Resolution 126-2012.pdf","21","2012-03-22","0");
INSERT INTO tbl_resolution VALUES("126 - 2013","","Approve Ord # 9-2012, of the SB of San Gabriel, LU “The Environmental Code of the Mun of San Gabriel, La Union”","1,7,9,18","RESOLUTION 126-2013.pdf","21","2013-04-17","0");
INSERT INTO tbl_resolution VALUES("127 - 2012","","Endorse to VP JejomarBinay the request of DMMMSU for allocation of P25 M College of Law Bldg.","1,10,18","Resolution 127-2012.pdf","21","2012-03-22","0");
INSERT INTO tbl_resolution VALUES("127 - 2013","","Approve Res # 12-2011, of the SB of San Juan, LU and the MOA entered into by the Mun Mayor.","3,6,7,10,20","RESOLUTION 127-2013.pdf","21","2013-04-17","0");
INSERT INTO tbl_resolution VALUES("127 - 2014","2014 - 0099","Ord # 13, s 2013, An Ord Amending the 2002 Traffic Ord of the Mun of Bauang, LU, Part Art II ? Parking, No Parking, Loading and Unloading Zones and Providing Add?l Provisions Thereto","3","RESOLUTION 127-2014.pdf","21","2014-04-10","0");
INSERT INTO tbl_resolution VALUES("128 - 2012","","Approve Ord # 18, s 2011, of the SB of Bauang, LU, “An Ord Amending Ord # 8, s 2011, An Ord Amending Art 10, Sec 99 of Ord # 9, s 2010, An Ord Promulgating the Children’s Code of the Mun of Bauang”","5","Resolution 128-2012.pdf","21","2012-03-22","0");
INSERT INTO tbl_resolution VALUES("128 - 2013","","MOA with BFAR, Mun of LU &Paraoir Rural Improvement Club of Paraoir, Balaoan, La Union for the implementation of the Bangus Deboning Project for the beneficiary-fisherfolk livelihood & income generation.","3,6,7,11,20","RESOLUTION 128-2013.pdf","21","2013-04-17","0");
INSERT INTO tbl_resolution VALUES("128 - 2014","2014 - 0100","Ord # 14, s 2013, An Ord Amending Art II, Sec 17 of Ord # 11, s 2011, ?An Ord Amending Ord # 15, s 2008, An Ord Adopting a Comprehensive Transportation and Traffic Regulations for the Administration and Enforcement, Providing Penalties for Violation Thereof, and for the Repeal of All Ordinances in Conflict Therewith, for the Enforcement of the ?No Left Turn Policy? and the ?Modification of the Route of Traffic During Interment and & Providing Add?l Provisions Thereof?","3","RESOLUTION 128-2014.pdf","21","2014-04-10","0");
INSERT INTO tbl_resolution VALUES("129 - 2012","","Return City Ord # 2011-09, of the SP of the City of San Fdo, LU, : “An Ord Amending City Ord # 2004-006, An Ord Promulgating Rules & Regulations for the Protection of Children in the City of San Fdo","5","Resolution 129-2012.pdf","21","2012-03-22","0");
INSERT INTO tbl_resolution VALUES("129 - 2013","","Approve the FY 2013 GF SB # 1, of the SB of Burgos, La Union.","1,6,7,9,10","RESOLUTION 129-2013.pdf","21","2013-04-25","0");
INSERT INTO tbl_resolution VALUES("130 - 2012","","Realign P4M from the Peace & Order Initiative Fund to Intelligence & Confidential Fund","1","Resolution 130-2012.pdf","21","2012-03-22","0");
INSERT INTO tbl_resolution VALUES("130 - 2013","","MOA w/ the Yuanhong Investment Corp re: proposed preliminary study of “An Integrated Amburayan River Flood Control Project Cum Livelihood Along Lower Amburayan River”","1,3,10","RESOLUTION 130-2013.pdf","21","2013-05-02","0");
INSERT INTO tbl_resolution VALUES("130 - 2014","2014 - 0097","Mun Ord # 42-2012, An Ord to Prohibit the Unauthorized Wearing of PNP/AFP Uniforms by any Individual who is not a Legitimate Member of the PNP/AFP w/n the Territorial Jurisdiction of the Mun of Luna, LU","3","RESOLUTION 130-2014.pdf","21","2014-04-10","0");
INSERT INTO tbl_resolution VALUES("131 - 2012","","Condole w/ the bereaved family of SBM Franklin M. Lales, Pugo","1,3,5,6,7,9,10,11,12,13,18,19,20","Resolution 131-2012.pdf","21","2012-03-22","0");
INSERT INTO tbl_resolution VALUES("131 - 2013","","Approve FY 2013 GF AB, of Luna, La Union.","6,9,10,11","RESOLUTION 131-2013.pdf","21","2013-05-09","0");
INSERT INTO tbl_resolution VALUES("132 - 2012","","Realign P1.4 M to Gasoline, Oil & Lubricants for the maintenance of roads.","20","Resolution 132-2012.pdf","21","2012-03-29","0");
INSERT INTO tbl_resolution VALUES("132 - 2013","","COL with SITEL Phils Inc., Baguio City in connection w/ the continued use of the office use at LUPAC Bldg","6,9","RESOLUTION 132-2013.pdf","21","2013-05-09","0");
INSERT INTO tbl_resolution VALUES("133 - 2012","","Approve SB # 1, of the Economic Enterprise involving an appropriation of P3,343,477.27.","18,20","Resolution 133-2012.pdf","21","2012-03-29","0");
INSERT INTO tbl_resolution VALUES("133 - 2013","","Adjust Salary of Ms. Elsa Barreto (Midwife III) & Ms. ErlindaOstrea (Nurse IV), from SG-13, S-5 to SG-19, S-8 & SG-14, S-5 to SG-20, S-8, respectively","3,20","RESOLUTION 133-2013.pdf","21","2013-05-09","0");
INSERT INTO tbl_resolution VALUES("134 - 2012","","Approve Mun Ord # 04-2012, of the SB of Agoo, LU, “An Ord Mandating All Parents/Guardians in the Mun of Agoo to Enroll their Children Ages 3-4 Yrs Old in Day Care Education in Any Dare Care Institution”.","18","Resolution 134-2012.pdf","21","2012-03-29","0");
INSERT INTO tbl_resolution VALUES("134 - 2013","","Approve the FY 2013 GF, SB # 1, of Sto. Tomas, La Union.","1","RESOLUTION 134-2013.pdf","21","2013-05-16","0");
INSERT INTO tbl_resolution VALUES("135 - 2012","","Return Ord # 2012-96 of the SB of Pugo, LU, “An Ord Creating a Philhealth Capitation Fund from the Proceeds of the Outpatient Benefit Package to be Provided by the PhilHealth for LGU Identified Indigent Families of the Mun of Pugo, through the Partial Subsidy Scheme of the NHIP”","18","Resolution 135-2012.pdf","21","2012-03-29","0");
INSERT INTO tbl_resolution VALUES("135 - 2013","","Approve the FY 2013 GF, SB # 1, of Luna, La Union.","1","RESOLUTION 135-2013.pdf","21","2013-05-16","0");
INSERT INTO tbl_resolution VALUES("135 - 2014","2014 - 0089","Ord # 2-2014, An Ord Amending the 2013 Env?t Code of the Mun of San Gabriel, LU","1","RESOLUTION 135-2014 (2).pdf","21","2014-04-15","0");
INSERT INTO tbl_resolution VALUES("136 - 2012","","Approve FY 2012 GF SB # 1, of Tubao, La Union.","20","Resolution 136-2012.pdf","21","2012-03-29","0");
INSERT INTO tbl_resolution VALUES("136 - 2013","","Approve the FY 2013 GF, AB, of Bagulin, La Union.","1","RESOLUTION 136-2013.pdf","21","2013-05-16","0");
INSERT INTO tbl_resolution VALUES("137 - 2012","","Return Ord # 2011-002, emb in Res # 2011-074, of the SB of Bangar, La Union, “An Ord Regulating the Use of Plastic Bags & Styrofoam in the Mun of Bangar, La Union”.","10","Resolution 137-2012.pdf","21","2012-03-29","0");
INSERT INTO tbl_resolution VALUES("137 - 2013","","MOA with BM Nancy Corazon M. Bacurnay, LUMC, Balaoan Dist Hosp& Bacnotan Dist Hosp, pertaining to the implementation of the Prov’l Indigency Medial Assistance Program with the nat’l governments assistance funds.","1,7,10,18","RESOLUTION 137-2013_001.pdf","21","2013-05-23","0");
INSERT INTO tbl_resolution VALUES("137 - 2014","2014 - 0133","\"Letter of Gov. Manuel C. Ortega respectfully requesting the Hon. Body to authorize him to enter into a joint Memorandum of Agreement (MOA) with the Bureau of Fisheries and Aquatic Resources -Regional Office I (BFAR-RFO I), the Don Mariano Marcos Memorial State University-Institute of Fisheries (DMMMSU-IF), the Municipality of Rosario, La Union and Barangay Rabon Cluster of Seaweed Growers, all of the Province of La Union, in connection with the implementation of Seaweed Development Program in the said area.\"\n","4","RESOLUTION 137-2014.pdf","21","2014-04-24","0");
INSERT INTO tbl_resolution VALUES("138 - 2012","","Approve FY 2012 GF AB of Sto. Tomas, La Union.","1","Resolution 138-2012.pdf","21","2012-04-04","0");
INSERT INTO tbl_resolution VALUES("138 - 2013","","MOA with Phil Red Cross, Dep Ed – Div of LU & the Mun of Agoo, LU, pertaining to the implementation of the Disaster Risk Reduction in Schools in Agoo","18","RESOLUTION 138-2013.pdf","21","2013-05-23","0");
INSERT INTO tbl_resolution VALUES("138 - 2014","2014 - 0131","Letter of Governor Manuel C. Ortega respectfully requesting the \nHonorable Body to kindly review for adoption the attached 10-year Provincial Solid Waste Management Plan CY 2014-2023 approved by the Provincial Solid Waste Management Board (PSWMB) on 23 January 2014. This plan is vital and necessary in our major environment program detailed planning and implementation for effective preservation, protection of public health, conservation of our environment, life and natural resources.","4","RESOLUTION 138-2014.pdf","21","2014-04-24","0");
INSERT INTO tbl_resolution VALUES("139 - 2012","","Realign P1M from the Peace & Order Initiative Fund for CY 2012 to Intelligence & Confidential Fund.","20","Resolution 139-2012.pdf","21","2012-04-12","0");
INSERT INTO tbl_resolution VALUES("139 - 2013","","Approve the FY 2013 GF AB of Caba, La Union.","1,7,9","RESOLUTION 139-2013.pdf","21","2013-05-23","0");
INSERT INTO tbl_resolution VALUES("139 - 2014","2014 - 0119","Ord # 33, s 2013, An Ord Requiring the Brgys in the Mun of Naguilian, LU to Install Flood Gauge/s in Flood Prone Areas","11","RESOLUTION 139-2014.pdf","21","2014-04-24","0");
INSERT INTO tbl_resolution VALUES("140 - 2012","","Realign P10M from the Economic Services to the Dev’t Fund for:\n\na. La Union Medical Center\nb. Community/Dist Hospital\n","20","Resolution 140-2012.pdf","21","2012-04-12","0");
INSERT INTO tbl_resolution VALUES("140 - 2013","","Approve Mun Ord # 001-2013, of the SB of Rosario, LU, “An Ord Enacting the New Traffic Mgt of the Mun of Rosario, LU & Implementing a Unified Route System for Tricycles”","6,7,9,10","RESOLUTION 140-2013.pdf","21","2013-05-23","0");
INSERT INTO tbl_resolution VALUES("140 - 2014","2014 - 0107","Ord # 28, s 2013, An Ord Institutionalizing a Program on Awards and Incentives for the 37 Brgys in the Mun, Appropriating Funds Therefor and for other Purposes","10","RESOLUTION 140-2014.pdf","21","2014-04-24","0");
INSERT INTO tbl_resolution VALUES("141 - 2012","","Approve FY 2012 GF AB of Santol, La Union.","20","Resolution 141-2012.pdf","21","2012-04-12","0");
INSERT INTO tbl_resolution VALUES("141 - 2013","","Return Ord # 06, s 2013, of the SB of Naguilian, La Union, “An Ord Adopting Malunggay as the Official Vegetable of the of Mun of Naguilian, La Union”","1,6,7,10","RESOLUTION 141-2013.pdf","21","2013-05-23","0");
INSERT INTO tbl_resolution VALUES("142 - 2012","","Condole with family of BC Emilio A. Lubid, Brgy Delles, Burgos","7","Resolution 142-2012.pdf","21","2012-04-12","0");
INSERT INTO tbl_resolution VALUES("142 - 2013","","Approve Mun Ord # 10-2013, of the SB of Agoo, LU, “An Ord Adopting the Official Meaning of the Mun Seal of the Mun of Agoo, La Union”","1,6,7,10","RESOLUTION 142-2013.pdf","21","2013-05-23","0");
INSERT INTO tbl_resolution VALUES("143 - 2012","","Approve the Consolidated CY 2012 Supplemental AIP of:\n\na. Office of the Prov’l Governor\nb. Office of the Prov’l Vet\nc. Office of the Prov’l Eng’r\n","20","Resolution 143-2012.pdf","21","2012-04-19","0");
INSERT INTO tbl_resolution VALUES("143 - 2013","","Return Ord # 02, s 2013, of the SB of Naguilian, La Union, “An Ord Prescribing Curfew Hours w/n the Territorial Jurisdiction of the Mun of Naguilian, La Union After the Campaign Period”.","1,9,10","RESOLUTION 143-2013.pdf","21","2013-05-23","0");
INSERT INTO tbl_resolution VALUES("144 - 2012","","Approve the FY 2012 GF SB # 1, of Sudipen, La Union.","1","Resolution 144-2012.pdf","21","2012-04-19","0");
INSERT INTO tbl_resolution VALUES("144 - 2013","","Approve Mun Ord # 09-2013, of the SB of San Juan, LU, “An Ord Requesting the Food Service Industry w/n the Territorial Jurisdiction of the Mun of San Juan, LU to Include ½ Cup of Cooked Rice in their Menu”.","6,9,10,19","RESOLUTION 144-2013.pdf","21","2013-05-23","0");
INSERT INTO tbl_resolution VALUES("145 - 2012","","Grant P5,000.00 F/A to Mr. Jose Almeida, DepEd for the purchase of gasoline.","1","Resolution 145-2012.pdf","21","2012-04-19","0");
INSERT INTO tbl_resolution VALUES("145 - 2013","","Return Ord # 10, s 2013, of the SB of Naguilian, La Union, “An Ord Requiring the Food Service Industry w/n the Territorial Jurisdiction of the Mun of Naguilian, La Union to Include ½ Cup of Cooked Rice in their Menu”  ","6,9,10,19","RESOLUTION 145-2013.pdf","21","2013-05-23","0");
INSERT INTO tbl_resolution VALUES("145 - 2014","2014 - 0150","\"Letter of Governor Manuel C. Ortega respectfully requesting the Honorable Body to pass a resolution for the transfer of the position Assistant Provincial Government Department head, Item No. 2, Grade/Step 24/1 under the Provincial Office (PLO) and its corresponding appropriation to the Office of the Provincial Accountant.\"","4","RESOLUTION 145-2014.pdf","21","2014-04-30","0");
INSERT INTO tbl_resolution VALUES("146 - 2012","","Condole with family of SPM Roque Tiu, Leyte.","10","Resolution 146-2012.pdf","21","2012-04-19","0");
INSERT INTO tbl_resolution VALUES("146 - 2013","","Approve SB # 1, Involving the amount of P10,746,853.57.","1,3,9,10","RESOLUTION 146-2013.pdf","21","2013-05-23","0");
INSERT INTO tbl_resolution VALUES("146 - 2014","2014 - 0149","\"Letter of Governor Manuel C. Ortega respectfully requesting the Honorable Body to authorize him for and on behalf of the Provincial Government of La Union (PGLU) to enter into a MOA with the Department of Public Works and Highways (DPWH) to be represented by its OIC Assistant Regional Director Rommel N. Tan, OIC Assistant District Engineer Raul P. Gali, 1st Engineering District - La Union, in connection with the implementation of the Special Local Road Fund (SLRF) with funding under the Motor Vehicle User\'s charge Law (MVUC) Special Local Road Fund.\"","4","RESOLUTION 146-2014.pdf","21","2014-04-30","0");
INSERT INTO tbl_resolution VALUES("147 - 2012","","Approve the FY 2012 GF AB of the SB of Bauang, La Union.","1","Resolution 147-2012.pdf","21","2012-04-19","0");
INSERT INTO tbl_resolution VALUES("147 - 2013","","Approve the CY 2013 Supplemental AIP for the equipment upgrading & maintenance of the sound system at Diego Silang Hall for the PITO","1,6,7,10","RESOLUTION 147-2013.pdf","21","2013-05-23","0");
INSERT INTO tbl_resolution VALUES("147 - 2014","2014 - 0144","Recommend approval of the FY 2014 GF AB, of Bagulin, LU","1","RESOLUTION 147-2014.pdf","21","2014-04-30","0");
INSERT INTO tbl_resolution VALUES("148 - 2012","","Approve the FY 2012 GF AB of the SB of Sudipen, La Union.","1","Resolution 148-2012.pdf","21","2012-04-19","0");
INSERT INTO tbl_resolution VALUES("148 - 2013","","Allow the Metro Agoo Waterworks Corp to operate & install water system for water consumption","10,20","RESOLUTION 148-2013.pdf","21","2013-05-23","0");
INSERT INTO tbl_resolution VALUES("148 - 2014","2014 - 0145","Recommend approval of the FY 2014 GF AB, of Pugo, LU","1","RESOLUTION 148-2014.pdf","21","2014-04-30","0");
INSERT INTO tbl_resolution VALUES("149 - 2012","","Approve Ord # 03, s 2012, of the SB of Naguilian, LU, “An Ord Prohibiting the Destruction of Gov’t-Owned Facilities & Structures w/n the Territorial Jurisdiction of the Mun of Naguilian, & Imposing Penalties to Violators Thereof”","1","Resolution 149-2012.pdf","21","2012-04-19","0");
INSERT INTO tbl_resolution VALUES("149 - 2013","","MOU with the NDRRMC pertaining to the turn-over of 1 unit rigid Hull Inflatable Rubber Boat ","11","RESOLUTION 149-2013.pdf","21","2013-05-30","0");
INSERT INTO tbl_resolution VALUES("149 - 2014","2014 - 0146","Recommend approval of the FY 2014 GF SB # 1, of Sudipen, La Union.","1","RESOLUTION 149-2014.pdf","21","2014-04-30","0");
INSERT INTO tbl_resolution VALUES("150 - 2012","","Approve Ord # 2011-095, of the SB of Santol, LU, “An Ord Establishing the Santol Handicrafts Business Center & Declaring the Same as an Economic Enterprise in the Mun of Santol”","10","Resolution 150-2012.pdf","21","2012-04-19","0");
INSERT INTO tbl_resolution VALUES("150 - 2013","","Renewal of Contract of Lease w/ the Viva Video City for 2 yrs.","7","RESOLUTION 150-2013.pdf","21","2013-05-30","0");
INSERT INTO tbl_resolution VALUES("150 - 2014","2014 - 0147","Recommend approval of the FY 2014 GF SB # 2, of Agoo, La Union.","1","RESOLUTION 150-2014.pdf","21","2014-04-30","0");
INSERT INTO tbl_resolution VALUES("151 - 2012","","Return Ord # 2011-003, of the SB of Bangar, LU, “An Ord Prescribing the Schedule of Computer Services for Minors w/n the Mun of Bangar”.","10","Resolution 151-2012.pdf","21","2012-04-19","0");
INSERT INTO tbl_resolution VALUES("151 - 2013","","Grant the excavation along road shoulders of Manila North Rd; Agoo – Baguio City Rd; Agoo Beach Rd; Processional Rd “A” & Agoo Processional Rd ‘B” by Metro Agoo Waterworks Inc., for the installation/laying of water supply/distribution pipes in Agoo","3,20","RESOLUTION 151-2013.pdf","21","2013-05-30","0");
INSERT INTO tbl_resolution VALUES("151 - 2014","2014 - 0084","An Ord Establishing the Mun Birthing Clinic of Pugo, LU & Defining Its Functions, Operations & Administration","9","RESOLUTION 151-2014.pdf","21","2014-04-30","0");
INSERT INTO tbl_resolution VALUES("152 - 2012","","Congratulate Atty. Placido O. Garcia III for passing the 2011 Bar Exams.","13","Resolution 152-2012.pdf","21","2012-04-19","0");
INSERT INTO tbl_resolution VALUES("152 - 2013","","Grant the excavation along the shoulder of the Nat’l Hi-way from Sudipen to San Fernando City by Underground Technologies, Inc. for the installation of underground fiber optic cable including aerial installation & bridge attachment","1","RESOLUTION 152-2013.pdf","21","2013-05-30","0");
INSERT INTO tbl_resolution VALUES("152 - 2014","2014 - 0085","Ord # 2013-109, A Code Promulgating Policies and Measures for the Prevention & Control of HIV/AIDS in the Mun of Pugo, LU","9","RESOLUTION 152-2014.pdf","21","2014-04-30","0");
INSERT INTO tbl_resolution VALUES("153 - 2012","","Return Ord # 01-2012, of the SB of San Juan, La Union, “An Ord Prescribing Fees of the Gov’t Issued ID Cards by the Local Gov’t of San Juan, La Union”","1","Resolution 153-2012.pdf","21","2012-04-26","0");
INSERT INTO tbl_resolution VALUES("153 - 2013","","Approve Ord # 08, s 2013, of the SB of Naguilian, LU, ”An Ord Institutionalizing, Promoting & Developing Organic Agriculture in Sudipen, LU, Providing Funds Therefore & for Other Purposes”","1,3,7,10,12,20","RESOLUTION 153-2013.pdf","21","2013-05-30","0");
INSERT INTO tbl_resolution VALUES("153 - 2014","2014 - 0132","Request Sec. Rogelio L. Singson, DPWH, to cause the immediate repair of the damaged portions of the AmburayanRiver Dike Part. at Brgys. Ma. Cristina West, Ma. Cristina East and Gen. Prim West, all of the Mun of Bangar, LU","10","RESOLUTION 153-2014.pdf","21","2014-04-30","0");
INSERT INTO tbl_resolution VALUES("154 - 2012","","Approve Ord # 2011-001, emb in Res # 2011-073, of the SB of Bangar, LU, “The Mun Cemetery Ord of Bangar, LU & Prescribing the Rules & Regulations in the Use & Operation of the Same”","18","Resolution 154-2012.pdf","21","2012-04-26","0");
INSERT INTO tbl_resolution VALUES("154 - 2013","","Approve Ord # 94, s 2013, of the SB of Sudipen, LU, “An Ord Institutionalizing, Promoting & Developing Organic Agriculture in Sudipen, LU, Providing Funds Therefore & for Other Purposes”","1,3,7,10,12,20","RESOLUTION 154-2013.pdf","21","2013-05-30","0");
INSERT INTO tbl_resolution VALUES("154 - 2014","2014 - 0153","\"Letter of MCO respectfully requesting the August Body to authorize him to enter into a MOA with DTI- Provincial Office represented by Director Daria R. Mingaracal relative  to the DTI\'s grant of financial assistance in the amount of P950,000.00 under the agency\'s Shared Service Facility (SSF) Program which will be used for the enhanced operation and acquisition of additional equipments of the La Union Honey Bee Center located at Barangay Raois, Bacnotan, La Union.\"","4","RESOLUTION 154-2014.pdf","21","2014-04-30","0");
INSERT INTO tbl_resolution VALUES("155 - 2012","","Approve Ord # 2011-094, of the SB of Santol, LU, “Ord Declaring Every Third Wk of Nov & Every Year Thereafter as “Santol Drug-Abuse Prevention & Control Wk Held Annually Every Month of Nov & Providing Funds Therefore”.","3","Resolution 155-2012.pdf","21","2012-04-26","0");
INSERT INTO tbl_resolution VALUES("155 - 2013","","Grant the excavation along the road shoulders of Agoo-Baguio City Rd for the reburying of temporary aerial DFON FOC by PLDT at Brgy. Tabora, Pugo","1,6,7,10","RESOLUTION 155-2013.pdf","21","2013-05-30","0");
INSERT INTO tbl_resolution VALUES("155 - 2014","2014 - 0154","\"Letter of Gov MCO respectfully requesting approval of this August Body to charge the amount of 15,200 incurred by Hon. Nancy M. Bacurnay during  the 4th Quarter Regular National Council Meeting of the Provincial Board Members League of the Philippines on December 11, 2013 to the Current Appropriation CY 2014 under the Traveling and Registration Fee CY 2014 Appropriation of the Sangguniang Panlalawigan Office.\"\n","4","RESOLUTION 155-2014.pdf","21","2014-04-30","0");
INSERT INTO tbl_resolution VALUES("156 - 2012","","Return Ord # 04, s 2012, of the SB of Naguilian, LU, “An Ord Regulating the Use of Motorcycles w/n the Territorial Jurisdiction of the Mun of Naguilian, LU & Providing Penalties in Violation Thereof”","9","Resolution 156-2012.pdf","21","2012-04-26","0");
INSERT INTO tbl_resolution VALUES("156 - 2013","","Approve Ord # 26, s 2012, of the SB of Naguilian, LU, “An Ord Creating the Local AIDS Council in the Mun of Naguilian, LU, & Providing Appropriations Thereof”","10","RESOLUTION 156-2013.pdf","21","2013-05-30","0");
INSERT INTO tbl_resolution VALUES("157 - 2012","","Authorize Gov MCO to charge wages & other benefits of Casual employees against the PS savings of offices","1","Resolution 157-2012.pdf","21","2012-04-26","0");
INSERT INTO tbl_resolution VALUES("157 - 2013","","Approve Ord # 21, s 2012, of the SB of Naguilian, LU, “An Ord Enacting the Health & Sanitation Code of the Mun of Naguilian, LU & Providing Penalties to Violators Thereof”","10","RESOLUTION 157-2013.pdf","21","2013-05-30","0");
INSERT INTO tbl_resolution VALUES("158 - 2012","","Adjust salary of Pop Program Worker II from SG 7, Step 1 to SG 7, Step 2","1","Resolution 158-2012.pdf","21","2012-04-26","0");
INSERT INTO tbl_resolution VALUES("158 - 2013","","Congratulate Judge JovenCostales, for translating into the Iloko Language SP Ord # 026-2012 (Iloko Code).","1,3,5,6,7,9,10,11,12,13,18,19,20","RESOLUTION 158-2013.pdf","21","2013-05-30","0");
INSERT INTO tbl_resolution VALUES("159 - 2012","","Condole w/ family of Ambrocio “Ambie L. Valero III.","1,3,5,7,9,10,11,12,13,18,19,20,21","Resolution 159-2012.pdf","21","2012-04-26","0");
INSERT INTO tbl_resolution VALUES("159 - 2013","","Thank the New Love Ministries Inc. for sending MV Logos Hope to the Port of San Fernando from May 22 – June 2 Request BFAR & DENR to conduct a study on the adverse effect on the fish & aquatic animals in connection w/ the proposed dredging of the Amburayan River in Bangar.","1,3,5,6,7,9,10,11,12,13,18,19,20","RESOLUTION 159-2013.pdf","21","2013-05-30","0");
INSERT INTO tbl_resolution VALUES("160 - 2012","","Confirm the authority of Gov MCO to enter into an Agreement on the Rescission of the Contract to Sell w/ 1590 Energy Corp","1","Resolution 160-2012.pdf","21","2012-04-26","0");
INSERT INTO tbl_resolution VALUES("160 - 2013","","Request BFAR & DENR to conduct a study on the adverse effect on the fish & aquatic animals in connection w/ the proposed dredging of the Amburayan River in Bangar.","10","RESOLUTION 160-2013.pdf","21","2013-05-30","0");
INSERT INTO tbl_resolution VALUES("161 - 2012","","Authorize Gov MCO to enter into a Contract of Lease w/ any interested & qualified entity for the operation of the Bauang Diesel Power Plant, Payocpoc Sur, Bauang, LU","1","Resolution 161-2012.pdf","21","2012-04-26","0");
INSERT INTO tbl_resolution VALUES("161 - 2013","","Ratify the loan agreement, assignment and other supporting documents including future amendments pertaining to the loan/credit facility w/ LBP in the amount of P11M for the rehab of the LUPACB","1","RESOLUTION 161-2013.pdf","21","2013-05-30","0");
INSERT INTO tbl_resolution VALUES("162 - 2012","","Approve the FY 2012 GF AB of Pugo, La Union.","20","Resolution 162-2012.pdf","21","2012-05-03","0");
INSERT INTO tbl_resolution VALUES("162 - 2013","","Contract of Agreement with:\n\n1.	Dr. Daisy V. Long – Radiologist/Sonologist\n2.	Dr. William S. Padilla – Anesthesiologist","1,7,10,19,20","RESOLUTION 162-2013.pdf","21","2013-06-06","0");
INSERT INTO tbl_resolution VALUES("163 - 2012","","Approve the FY 2012 GF AB of the City of San Fdo, La Union.","20","Resolution 163-2012.pdf","21","2012-05-03","0");
INSERT INTO tbl_resolution VALUES("163 - 2013","","Deed of Absolute Sale w/ ORT Community Multi-Purpose Coop (OCMPC) for the purchase of the 2-storey Comm’l Bldg & 1-Storey Comm’l Bldg at Guerrero Rd., CSF","1,7,11,20","RESOLUTION 163-2013.pdf","21","2013-06-06","0");
INSERT INTO tbl_resolution VALUES("164 - 2012","","Return Mun Ord # 003-2011, of the SB of Rosario, LU, “An Ord Enacting the Gender & Dev’t Code GAD) of the Mun of Rosario, Province of LU & Mandating its Implementation of a Comprehensive & Sustainable Program”","5","Resolution 164-2012.pdf","21","2012-05-03","0");
INSERT INTO tbl_resolution VALUES("164 - 2013","","Approve FY 2013 GF SB # 1, of the SB of Bagulin, La Union.","1,6,7,20","RESOLUTION 164-2013.pdf","21","2013-06-06","0");
INSERT INTO tbl_resolution VALUES("164 - 2014","2014 - 0157","Recommend approval of the FY 2014 GF SB # 1, of Bagulin, LU","1","RESOLUTION 164-2014.pdf","21","2014-05-15","0");
INSERT INTO tbl_resolution VALUES("165 - 2012","","Return Mun Ord # 12-2012, of the SB of Agoo, LU, “An Ord Empowering the 49 Brgys in the Mun of Agoo to Conduct Regular & sustained Community Based Research & Destroy of Breeding Places of Mosquitoes & Providing Penalties Thereof\"","10","Resolution 165-2012.pdf","21","2012-05-03","0");
INSERT INTO tbl_resolution VALUES("165 - 2013","","Approve Mun Ord # 03-2013, of the SB of San Juan, LU, “An Ord Prescribing Rental of an Office Space at the Ground Flr Beneath the Stairway at the 2-Storey Comm’l Bldg Situated w/n the Perimeter of the Public Market”","6,7,10,20","RESOLUTION 165-2013.pdf","21","2013-06-06","0");
INSERT INTO tbl_resolution VALUES("166 - 2012","","Approve Ord # 3-2012, of the SB of San Gabriel, La Union, “An Ord Revising Ord # 5-2011, of the Mun of San Gabriel, La Union”","10","Resolution 166-2012.pdf","21","2012-05-03","0");
INSERT INTO tbl_resolution VALUES("166 - 2013","","Approve Mun Ord # 7-2013, of the SB of San Juan, LU, “An Ord Prescribing rental of an Office Space of the PCSO”","6,7,10,20","RESOLUTION 166-2013.pdf","21","2013-06-06","0");
INSERT INTO tbl_resolution VALUES("166 - 2014","2014 - 0118","Enjoining all municipalities/city of the Prov of La Union to come up w/ their own Localized Anti-Crime Action Plan (LACAP)","3","RESOLUTION 166-2014.pdf","21","2014-05-15","0");
INSERT INTO tbl_resolution VALUES("167 - 2012","","Approve Ord # 4-2012, of the SB of San Gabriel, La Union, “An Ord Revising Ord # 3-2010 of the Mun of San Gabriel”","10","Resolution 167-2012.pdf","21","2012-05-03","0");
INSERT INTO tbl_resolution VALUES("167 - 2013","","Approve Mun Ord # 08-2013, of the SB of San Juan, LU, “An Ord Prescribing Rental for the Use of the People’s Hall”","6,7,10,20","RESOLUTION 167-2013.pdf","21","2013-06-06","0");
INSERT INTO tbl_resolution VALUES("167 - 2014","2014 - 0106","Ord # 10, s 2013, An Ord Requiring the Foodservice Industry w/n the Territorial Jurisdiction of the Mun of Naguilian, LU to Include ? Cup of Cooked Rice in their Menu","3","RESOLUTION 167-2014.pdf","21","2014-05-15","0");
INSERT INTO tbl_resolution VALUES("168 - 2012","","Approve Mun Ord # 05-20-12, of the SB of San Juan, LU, “An Ord Prescribing the Terms & Conditions in Contracting Consultants”","10","Resolution 168-2012.pdf","21","2012-05-03","0");
INSERT INTO tbl_resolution VALUES("168 - 2013","","Return Mun Ord # 29-2012, of the SB of Agoo, LU, “An Ord Designating Denny’s Park in Consolacion, Agoo, LU, as a Special Economic Zone & Prescribing Rates & Regulations on the Rental of Stalls w/n the Area”","1,3,7,10,20","RESOLUTION 168-2013.pdf","21","2013-06-06","0");
INSERT INTO tbl_resolution VALUES("168 - 2014","2014 - 0136","Res # 14, s 2014, Giving full authority to Hon. Ferdinand Tumbaga, Mun Mayor, to donate 400 sq.m. from the lot owned by the Mun of Bagulin, LU to the PNP to be utilized in the construction of a ?Type C? Police Station of this municipality (Basis SP Res # 123-2008)","7","RESOLUTION 168-2014.pdf","21","2014-05-15","0");
INSERT INTO tbl_resolution VALUES("169 - 2012","","Approve Mun Ord # 11-2012, of the SB of Agoo, LU, “An Ord Empowering the 59 Brgys in the Mun of Agoo to Initiate Adoption of Vacant Lots Through a MOA Between the Lot Owner/Administrator & the Brgy Council for Vegetable Planting/Nursery & Clean-up”","10","Resolution 169-2012.pdf","21","2012-05-03","0");
INSERT INTO tbl_resolution VALUES("169 - 2013","","Request the SB of San Juan, La Union, thru the Sec to the SB, to submit a proof of compliance with the provision of Sec. 186, RA 7160, part. Public Hearing.","1,3,7,10,20","RESOLUTION 169-2013.pdf","21","2013-06-06","0");
INSERT INTO tbl_resolution VALUES("170 - 2012","","MOA w/ DA pertaining to the implementation of the Nat’l Gov’ts Banner Program on Food Security & Sufficiency in Partnership w/ LGUs for efficient & effective utilization of gov’t resources","3","Resolution 170-2012.pdf","21","2012-05-03","0");
INSERT INTO tbl_resolution VALUES("170 - 2013","","Approve Mun Ord # 05-2013, of the SB of Agoo, LU, “An Ord Imposing Service Fees for Every Document Acquired from the NSO thru the Batch Request Entry System”","1,7,10,20","RESOLUTION 170-2013.pdf","21","2013-06-06","0");
INSERT INTO tbl_resolution VALUES("170 - 2014","2014 - 0161","\"Letter of Governor Manuel C. Ortega respectfully submitting to the\nHonorable members Supplemental Budget No. 1 involving a Total Appropriation of P25,015,792.00 for the enactment of the required appropriation ordinance.\"\n","1,3,4,8,10","RESOLUTION 170-2014.pdf","21","2014-05-15","0");
INSERT INTO tbl_resolution VALUES("171 - 2012","","MOA w/ DAR pertaining to the implementation of the nat’l gov’ts Comprehensive Agrarian Program through implementation, rehab of farm-to-market roads & agrarian reform communities & adjoining areas","3","Resolution 171-2012.pdf","21","2012-05-03","0");
INSERT INTO tbl_resolution VALUES("171 - 2013","","Approve Mun Ord # 2-2013, of the SB of San Gabriel, La Union, “Public Market Code of the Mun of San Gabriel, La Union”","1,7,10,20","RESOLUTION 171-2013.pdf","21","2013-06-06","0");
INSERT INTO tbl_resolution VALUES("172 - 2012","","Renew/Enter into a MOA/COL w/ qualified lessees of the PGLU Livelihood Stalls Program at Mabanag Justice Hall &Aguila Rd","10","Resolution 172-2012.pdf","21","2012-05-10","0");
INSERT INTO tbl_resolution VALUES("172 - 2013","","Approve Ord # 2, emb in Res # 449, s 2013, of the MC of Bauang, LU, “Ord Creating & Maintaining a Philhealth Trust Fund from the Proceeds of the Primary Care Benefit 1 (PCB1) to be Provided by the PHILHEALTH for the Qualified Beneficiaries & Dependents Enrolled Under the Sponsored Program (SP), Overseas Worker Program (OWP) and Organized Group (OG) Enlisted by the Rural Health Unit (RHU)”","1,6,7,10,20","RESOLUTION 172-2013.pdf","21","2013-06-06","0");
INSERT INTO tbl_resolution VALUES("173 - 2012","","Approve FY 2012 GF AB of the SB of Bagulin, La Union.","20","Resolution 173-2012.pdf","21","2012-05-10","0");
INSERT INTO tbl_resolution VALUES("173 - 2013","","Approve Ord # 3, emb in Res # 450, s 2013, of the MC of Bauang, LU, “An Ord Moving the Celebration of the Annual Town Fiesta of the Mun of Bauang, LU from April to January to coincide w/ the Foundation Anniversary of the Mun”","10","RESOLUTION 173-2013.pdf","21","2013-06-06","0");
INSERT INTO tbl_resolution VALUES("173 - 2014","2014 - 0135","Ord # 482, s 2014, Ord Amending Ord # 480, s 2013, Ord Creating the Mun HIV/AIDS Council.","2","RESOLUTION 173-2014.pdf","21","2014-05-22","0");
INSERT INTO tbl_resolution VALUES("174 - 2012","","Approve FY 2012 GF SB # 1, of Balaoan, La Union.","20","Resolution 174-2012.pdf","21","2012-05-10","0");
INSERT INTO tbl_resolution VALUES("174 - 2013","","Approve Ord # 4, emb in Res # 452, s 2013, of the MC of Bauang, LU, “Ord Requiring Foodservice Industries w/n the Territorial Jurisdiction of the Mun of Bauang, LU to Include ½ Cup of Cooked Rice in the Menu”","1,3,6,7,10,20","RESOLUTION 174-2013.pdf","21","2013-06-06","0");
INSERT INTO tbl_resolution VALUES("174 - 2014","2014 - 0141","Mun Ord # 03-2014, An Ord Imposing Penalty to Vendors from Selling Double Dead Meat (Bocha), Hot Meat and Spoiled Meat to Consuming Public.","2","RESOLUTION 174-2014.pdf","21","2014-05-22","0");
INSERT INTO tbl_resolution VALUES("175 - 2012","","Approve FY 2012 GF SB # 1, of Bangar, La Union.","20","Resolution 175-2012.pdf","21","2012-05-10","0");
INSERT INTO tbl_resolution VALUES("175 - 2013","","MOA with the Solid Waste MgtAsso. Of the Phils (SWAPP), in connection w/ the consultancy  services of SWAPP for the preparation, completion and approval of the Prov’l 10-yr solid waste mgt plan of the province.","1,6,7","RESOLUTION 175-2013.pdf","21","2013-06-06","0");
INSERT INTO tbl_resolution VALUES("176 - 2012","","Approve Mun Ord # 03-2012, of the SB of San Juan, LU, “An Ord Prohibiting the Slaughter, Killing, Buying & Selling of the Green Sea & Olive Ridley Turtles Better Known as Pawikan, as Well as the Gathering of Its Eggs & the Destruction of its Nesting Habitat, as Amended”","1","Resolution 176-2012.pdf","21","2012-05-10","0");
INSERT INTO tbl_resolution VALUES("176 - 2013","","MOA w/ PNRC, DepEd – Div of LU and the Mun Gov’ts of Aringay, Balaoan, Luna, San Gabriel, Sto. Tomas, Bacnotan, Bangar, Santol, San Juan and the City of San Fernando,  pertaining to the implementation of the Disaster Risk Reduction in Schools (DRR SCHOOLS) .","11","RESOLUTION 176-2013.pdf","21","2013-06-13","0");
INSERT INTO tbl_resolution VALUES("177 - 2012","","Approve Mun Ord # 20-2011, of the SB of Agoo, LU, “An Ord Prohibiting the Use of Plastic Bags on Dry Goods, Regulating Its Use on Wet Goods & Providing Penalties Thereof”","19","Resolution 177-2012.pdf","21","2012-05-10","0");
INSERT INTO tbl_resolution VALUES("177 - 2013","","Call on the 1st& 2ndEng’g Districts of DPWH to immediately determine potential hazards to traffic and commuters along the nat’l hi-way w/ the onset of the rainy season & take appropriate action in order to prevent injuries or loss of lives and damage to properties","10","RESOLUTION 177-2013.pdf","21","2013-06-13","0");
INSERT INTO tbl_resolution VALUES("178 - 2012","","Approve Mun Ord # 10-2012, of the SB of Agoo, LU, “An Ord Regulating the Purchase & Sale, Trade-in, Pawning, Repair, Servicing & Maintenance of Brand New, Used or Pre-Owned & Reconditioned Mobile Phone Units in the Mun of Agoo, LU & for Other Purposes”","19","Resolution 178-2012.pdf","21","2012-05-10","0");
INSERT INTO tbl_resolution VALUES("178 - 2013","","Enjoin all officials and employees, as well as scholars of the PGLU to plant a tree in observance of the Arbor Day.","10,19","RESOLUTION 178-2013.pdf","21","2013-06-13","0");
INSERT INTO tbl_resolution VALUES("178 - 2014","2014 - 0169","\"Letter of Governor Manuel C. Ortega respectfully requesting the Honorable Body to authorize him to enter into an implementation Management Agreement (IMA) with the Department of Agriculture (DA) to be represented by its Regional Executive Director, ANDREW B. VILLACORTA, PRDP Program Director, Program Support Office-Luzon A of DA in connection with the implementation of the sub project of the Philippine Rural Development Program (PRDP) in the Province of La Union\"","4","RESOLUTION 178-2014.pdf","21","2014-05-29","0");
INSERT INTO tbl_resolution VALUES("179 - 2012","","MOA w/ DA relative to the joint venture for the establishment of Plant Nursery under the High Value Crops Dev’t Program (HVCDP)","3","Resolution 179-2012.pdf","21","2012-05-10","0");
INSERT INTO tbl_resolution VALUES("179 - 2013","","Condole w/ the bereaved family of Florentino G. Flores, Jr., SPM, CSF","1,3,5,6,7,9,10,11,12,13,18,19,20","RESOLUTION 179-2013.pdf","21","2013-06-13","0");
INSERT INTO tbl_resolution VALUES("179 - 2014","2014 - 0018","Ord # 2013-108, Ord Amending Ord # 2010-082, known as the Revenue Code of Santol, LU, Part Chapter III, Mayor?s Permit Fees, Art B, Administrative Provision, Sec 5, Duration & Renewal of Permit","8","RESOLUTION 179-2014.pdf","21","2014-05-29","0");
INSERT INTO tbl_resolution VALUES("179A- 2012","","MOA w/ 1590 Energy Corp for the continued operation, preservation, maintenance & mgt of the Bauang Diesel Power Plant","1","Resolution 179A-2012.pdf","21","2012-05-10","0");
INSERT INTO tbl_resolution VALUES("180 - 2012","","Approve FY 2012 GF SB # 1, of San Gabriel, La Union.","20","Resolution 180-2012.pdf","21","2012-05-17","0");
INSERT INTO tbl_resolution VALUES("180 - 2013","","Approve the FY 2013 GF SB # 3, of Agoo, La Union.","1","RESOLUTION 180-2013.pdf","21","2013-06-20","0");
INSERT INTO tbl_resolution VALUES("180 - 2014","2014 - 0051","Mun Ord # 102, s 2014, An Ord Enacting the Market Code of the Mun of Sudipen, La Union.","8","RESOLUTION 180-2014.pdf","21","2014-05-29","0");
INSERT INTO tbl_resolution VALUES("181 - 2012","","Approve FY 2012 GF AB, of Caba, La Union.","20","Resolution 181-2012.pdf","21","2012-05-17","0");
INSERT INTO tbl_resolution VALUES("181 - 2013","","Approve the FY 2013 GF AB, of Pugo, La Union.","1","RESOLUTION 181-2013.pdf","21","2013-06-20","0");
INSERT INTO tbl_resolution VALUES("181 - 2014","2014 - 0152","Mun Ord # 4-2014, An Ord Granting Franchise of Tricycle-for-Hire to Qualified Applicants & Regulating their Operations w/n the Mun of San Gabriel, LU","4","RESOLUTION 181-2014.pdf","21","2014-05-29","0");
INSERT INTO tbl_resolution VALUES("182 - 2012","","Approve Ord # 42, s 2011, of the SB of Burgos, LU, “An Ord Promulgating the Gender & Dev’t (GAD) Code of the Mun of Burgos, LU & For Other Purposes”","5","Resolution 182-2012.pdf","21","2012-05-17","0");
INSERT INTO tbl_resolution VALUES("182 - 2013","","Commend Judge Ferdinand Fe, Branch 67, RTC, Bauang, La Union, for sentencing Supt Dionicio Borromeo, former Asst Prov’l Dir for Administration of Cavite PNP, with life imprisonment for protecting a shabu lab in Naguilian","20","RESOLUTION 182-2013.pdf","21","2013-06-20","0");
INSERT INTO tbl_resolution VALUES("183 - 2012","","Return Res # 12, s 2012, of the SB of Luna, LU, “Res Amending Certain Provisions of Mun Ord # 37-2012, Known as the “Municipal Gender & Dev’t (GAD) Code”","5","Resolution 183-2012.pdf","21","2012-05-17","0");
INSERT INTO tbl_resolution VALUES("183 - 2013","","Commend PP DaniloBumacod, Asst Pros Gaudencio Valdez, Jr.& Asst Pros Manuel Dulnuan, Jr. for the successful prosecution of the case involving the shabu lab in Naguilian","20","RESOLUTION 183-2013.pdf","21","2013-06-20","0");
INSERT INTO tbl_resolution VALUES("184 - 2012","","Return Res # 13, s 2012, of the SB of Luna, LU, “Res Amending Certain Provisions of Mun Ord # 38-2010, Known as “The Child Welfare Code of Luna”","5","Resolution 184-2012.pdf","21","2012-05-17","0");
INSERT INTO tbl_resolution VALUES("184 - 2013","","Express gratitude to Rev Fr. Nolan Nabua, in protecting the citizens against the proliferation of drugs.","20","RESOLUTION 184-2013.pdf","21","2013-06-20","0");
INSERT INTO tbl_resolution VALUES("185 - 2012","","Approve Mun Ord # 09-2012, of the SB of Agoo, LU, “An Ord Prohibiting Children of School age Enrolled in Any Institution in the Mun of Agoo, Loitering/Roaming Around During Class Hours”","5","Resolution 185-2012.pdf","21","2012-05-17","0");
INSERT INTO tbl_resolution VALUES("185 - 2013","","Express gratitude to Bishop ArtemioRillera, for his concern in protecting the citizens against proliferation of drugs.","20","RESOLUTION 185-2013.pdf","21","2013-06-20","0");
INSERT INTO tbl_resolution VALUES("185 - 2014","2014 - 0172","Recommend approval of the FY 2014 GF SB # 2, of Tubao, LU","1","RESOLUTION 185-2014.pdf","21","2014-06-05","0");
INSERT INTO tbl_resolution VALUES("186 - 2012","","Congratulate & commend the ff athletes who won in IRAA &PalarongPambansa held at Pangasinan:\n\n1.	Gerik Nestor Oliveros\n2.	Derek Rene Oliveros\n3.	Keneth Chin\n","13","Resolution 186-2012.pdf","21","2012-05-17","0");
INSERT INTO tbl_resolution VALUES("186 - 2013","","Approve Mun Ord # 04-2013, of the SB of San Juan, LU, “An Ord Authorizing the Supplemental for the Implementation of Local Budget Circular No. 102”","1","RESOLUTION 186-2013.pdf","21","2013-06-20","0");
INSERT INTO tbl_resolution VALUES("186 - 2014","2014 - 0179","Recommend approval of the FY 2014 GF SB # 2, of Pugo, La Union.","1","RESOLUTION 186-2014.pdf","21","2014-06-05","0");
INSERT INTO tbl_resolution VALUES("187 - 2012","","MOA with NHA to use the 2-hectare ppy in Sagayad, CSF, LU as a resettlement site for displaced families","1","Resolution 187-2012.pdf","21","2012-05-24","0");
INSERT INTO tbl_resolution VALUES("187 - 2013","","Approve Mun Ord # 08-2012, of the SB of San Gabriel, La Union, “Sr. Citizens Code of the Mun of San Gabriel, La Union”","5","RESOLUTION 187-2013.pdf","21","2013-06-20","0");
INSERT INTO tbl_resolution VALUES("187 - 2014","2014 - 0180","Recommend approval of the FY 2014 GF SB # 2, of Sudipen, La Union.","1","RESOLUTION 187-2014.pdf","21","2014-06-05","0");
INSERT INTO tbl_resolution VALUES("188 - 2012","","MOA w/ BFAR, LGU of San Juan, LU & the Asosasyon ng mgaKababaihan ng Taboc, San Juan, pertaining to the implementation of the Bangus Deboning Project","3","Resolution 188-2012.pdf","21","2012-05-24","0");
INSERT INTO tbl_resolution VALUES("188 - 2013","","Condole w/ the bereaved family of ex-VM Gregorio Hufano, CSF","1,3,5,6,7,9,10,11,12,13,18,19,20","RESOLUTION 188-2013.pdf","21","2013-06-27","0");
INSERT INTO tbl_resolution VALUES("188 - 2014","2014 - 0178","Recommend approval of the FY 2014 GF AB, of Caba, La Union.","1","RESOLUTION 188-2014.pdf","21","2014-06-05","0");
INSERT INTO tbl_resolution VALUES("189 - 2012","","Approve the FY 2011 GF SB # 1, of Bacnotan, La Union.","1","Resolution 189-2012.pdf","21","2012-05-24","0");
INSERT INTO tbl_resolution VALUES("189 - 2013","","Approve request of MARAND to excavate along the unpaved shoulder of the Nat’l Hi-way for water supply line at the eastern portion of the road shoulder .","1","RESOLUTION 189-2013.pdf","21","2013-06-27","0");
INSERT INTO tbl_resolution VALUES("190 - 2012","","Approve the FY 2012 GF SB # 1, of Bagulin, La Union.","1","Resolution 190-2012.pdf","21","2012-05-24","0");
INSERT INTO tbl_resolution VALUES("190 - 2013","","MOA w/ DOH re: release of the Sub-Allotment Fund of P500,000.00 to be used for the improvement of the Prov’l Warehouse to include an External Quality Assurance (EQA) System Rm for PHO & the Prov’l Health Team Office","1","RESOLUTION 190-2013.pdf","21","2013-06-27","0");
INSERT INTO tbl_resolution VALUES("190 - 2014","2014 - 0163","City Ord # 2014-01, An Ord Amending City Ord # 2013-01, An Ord Requiring the Foodservice Industry w/n the Territorial Jurisdiction of the CSF, LU to Include ? Cup of Cooked Rice in their Menu","3","RESOLUTION 190-2014.pdf","21","2014-06-05","0");
INSERT INTO tbl_resolution VALUES("191 - 2012","","Approve the FY 2012 GF SB # 2, of Agoo, La Union.","1","Resolution 191-2012.pdf","21","2012-05-24","0");
INSERT INTO tbl_resolution VALUES("191 - 2013","","Request Pres Benigno S. Aquino III, to donate 6 Emergency Ambulances for the different Dist Hos & granting the Gov to request for such service vehicles w/ a provision for an allocation of necessary funds for their operation utilization & maintenance.","18","RESOLUTION 191-2013.pdf","21","2013-06-27","0");
INSERT INTO tbl_resolution VALUES("192 - 2012","","Approve SB # 1, amounting P11,682,506.05","1","Resolution 192-2012.pdf","21","2012-05-24","0");
INSERT INTO tbl_resolution VALUES("192 - 2013","","Agreement w/ DOH re: 2013 Service Level Agreement (SLA) that covers the Management & Implementation of the Annual Operational Plan (AOP) for 2013 ","18","RESOLUTION 192-2013.pdf","21","2013-06-27","0");
INSERT INTO tbl_resolution VALUES("193 - 2012","","Contract of Service with Dr. Melinda O. Javillonar as Visiting Consultant at Rosario Dist Hosp.","20","Resolution 193-2012.pdf","21","2012-05-24","0");
INSERT INTO tbl_resolution VALUES("193 - 2013","","MOA w/ DOH-CHD ILOCOS re: implementation of the improvement of TB DOTS Bldg Project at RDH","18","RESOLUTION 193-2013.pdf","21","2013-06-27","0");
INSERT INTO tbl_resolution VALUES("193 - 2014","2014 - 0088","Ord # 1-2014, An Ord Amending Ord # 10-2013, An Ord Regulating the Sale, Distribution, Display, Storage & Use of Firecrackers & Other Pyrotechnic Devices w/n the Jurisdiction of San Gabriel, LU","10","RESOLUTION 193-2014.pdf","21","2014-06-05","0");
INSERT INTO tbl_resolution VALUES("194 - 2012","","Adjusting Salary Grade of Mr. Florencio C. Celino to One Grade higher than his present salary.","20","Resolution 194-2012.pdf","21","2012-05-24","0");
INSERT INTO tbl_resolution VALUES("194 - 2013","","Contract of Consultancy Service w/ Mr. Jose Maria  C. Ortega as Consultant on Legislative Affairs","10","RESOLUTION 194-2013.pdf","21","2013-06-27","0");
INSERT INTO tbl_resolution VALUES("195 - 2012","","Approve the FY 2012, GF SB # 1, of Pugo, La Union.","20","Resolution 195-2012.pdf","21","2012-05-24","0");
INSERT INTO tbl_resolution VALUES("195 - 2013","","MOA w/ the Operation SMILE Phils Found Inc. re: possible conduct of a 3-day Medical Mission at LUMC in Nov 2013","18","RESOLUTION 195-2013.pdf","21","2013-06-27","0");
INSERT INTO tbl_resolution VALUES("196 - 2012","","Approve Ord # 470, s 2011, entitle: “Market Code of the Mun of Bacnotan, LU” pursuant to Sec 16, R.A. 7160","19","Resolution 196-2012.pdf","21","2012-05-24","0");
INSERT INTO tbl_resolution VALUES("196 - 2013","","Realign P6M to:\n\na.	PHILHEALTH  =  P4M\nb.	Social Welfare Dev’t = 2M","1","RESOLUTION 196-2013.pdf","21","2013-06-27","0");
INSERT INTO tbl_resolution VALUES("197 - 2012","","Approve Ord # 201-093, entitled: “An Ord Declaring Every First Week of Nov. & Every Year Thereafter as PalarongPambayan in the Mun of Santol& Providing Funds Therefore”","10","Resolution 197-2012.pdf","21","2012-05-24","0");
INSERT INTO tbl_resolution VALUES("197 - 2013","","2013 Internal Rules of Procedure of the 20th SP","10","RESOLUTION  197-2013.pdf","21","2013-07-04","0");
INSERT INTO tbl_resolution VALUES("197 - 2014","2014 - 0183","Recommend approval of the FY 2014 GF SB # 1, of Bangar, La Union.","1","RESOLUTION 197-2014.pdf","21","2014-06-11","0");
INSERT INTO tbl_resolution VALUES("198 - 2012","","Return Ord # 472, s 2011, of Bacnotan, LU, “Ord Prescribing the Regular & Discounted Fares of Motorized Tricycles For Hire & Prescribing Penalties For Violations”","9","Resolution 198-2012.pdf","21","2012-05-24","0");
INSERT INTO tbl_resolution VALUES("198 - 2013","","Standing Committees 2013-2016.","1","RESOLUTION 198-2013.pdf","21","2013-07-04","0");
INSERT INTO tbl_resolution VALUES("198 - 2014","2014 - 0184","Recommend approval of the FY 2014 GF SB # 1, of Luna, La Union.","1","RESOLUTION 198-2014.pdf","21","2014-06-11","0");
INSERT INTO tbl_resolution VALUES("199 - 2012","","Expressing the Province’s Unequivocal & Full Support for the Jan 31 Subcommittee Report # 6","3,5,7,9,10,11,19,20","Resolution 199-2012.pdf","21","2012-05-24","0");
INSERT INTO tbl_resolution VALUES("199 - 2013","","Adopt findings of the Office of the Vice Governor as to the ranking of the Members of the SP pending COMELEC’S promulgation","10","RESOLUTION 199-2013.pdf","21","2013-07-04","0");
INSERT INTO tbl_resolution VALUES("200 - 2012","","Approve Ord # 17-2012, of the SB of Agoo, LU, “An Ord Authorizing the Proposed Borrowing of the Mun of Agoo, LU in the Amount of P25 M to Fund the Agoo Public Cemetery Expansion (Phase II)","10","Resolution 200-2012.pdf","21","2012-06-05","0");
INSERT INTO tbl_resolution VALUES("200 - 2013","","Support retention/non-abolition of SK","10","RESOLUTION 200-2013.pdf","21","2013-07-11","0");
INSERT INTO tbl_resolution VALUES("201 - 2012","","Express the intent of the province to establish a sister-province or twinning relationship with the Prov’l Gov’t of Tarlac.","20","Resolution 201-2012.pdf","21","2012-06-05","0");
INSERT INTO tbl_resolution VALUES("201 - 2013","","Approve the CY 2013 Prov’l Integrated Implementation Plan.","1","RESOLUTION 201-2013.pdf","21","2013-07-11","0");
INSERT INTO tbl_resolution VALUES("202 - 2012","","Signify the interest & intent of the province to establish a sisterhood or twinning relationship w/ Daly City, CA, USA","20","Resolution 202-2012.pdf","21","2012-06-05","0");
INSERT INTO tbl_resolution VALUES("202 - 2013","","Approve the FY 2013 GF SB # 1, of Pugo, La Union.","1","RESOLUTION 202-2013_001.pdf","21","2013-07-11","0");
INSERT INTO tbl_resolution VALUES("202 - 2014","2014 - 0198","Recommend approval of the FY 2014 GF SB # 2, of Bagulin, La Union.","1","RESOLUTION 202-2014.pdf","21","2014-06-19","0");
INSERT INTO tbl_resolution VALUES("203 - 2012","","MOA w/ DA pertaining to the implementation of the DA’s goat & chicken livelihood assistance ","3","Resolution 203-2012.pdf","21","2012-06-05","0");
INSERT INTO tbl_resolution VALUES("203 - 2013","","Approve the FY 2013 GF SB # 2, of Balaoan, La Union.","1","RESOLUTION 203-2013_001.pdf","21","2013-07-11","0");
INSERT INTO tbl_resolution VALUES("203 - 2014","2014 - 0199","Recommend approval of the FY 2014 GF SB # 3, of Bagulin, LU","1","RESOLUTION 203-2014.pdf","21","2014-06-19","0");
INSERT INTO tbl_resolution VALUES("204 - 2012","","Request PCSO to donate two ambulances for:\n\na. LUMC\nb. PDRRMC\n","18","Resolution 204-2012.pdf","21","2012-06-13","0");
INSERT INTO tbl_resolution VALUES("204 - 2013","","Approve the FY 2013 GF SB # 1, of Caba, La Union.","1","RESOLUTION 204-2013_001.pdf","21","2013-07-11","0");
INSERT INTO tbl_resolution VALUES("204 - 2014","2014 - 0200","Recommend approval of the FY 2014 GF SB # 4, of Bagulin, La Union.","1","RESOLUTION 204-2014.pdf","21","2014-06-19","0");
INSERT INTO tbl_resolution VALUES("205 - 2012","","Approve FY 2012 GF SB # 1 of Luna, La Union.","1","Resolution 205-2012.pdf","21","2012-06-13","0");
INSERT INTO tbl_resolution VALUES("205 - 2013","","Fix the date, time & place of SP Session at 3:00 PM, Thursdays at the Speaker Protempore Francisco Ortega I Ortega Prov’l Legislative Bldg & Session Hall.","10","RESOLUTION 205-2013.pdf","21","2013-07-11","0");
INSERT INTO tbl_resolution VALUES("205 - 2014","2014 - 0094","Ord # 481, s 2014, The Amended Env?t Code of Bacnotan, LU, s 2014","1","RESOLUTION 205-2014.pdf","21","2014-06-19","0");
INSERT INTO tbl_resolution VALUES("206 - 2012","","Approve FY 2012 GF SB # 2, of Bagulin, La Union.","1","Resolution 206-2012.pdf","21","2012-06-13","0");
INSERT INTO tbl_resolution VALUES("206 - 2013","","Contract w/ pre-qualified and winning bidder/s in the implementation of infrastructure projects, endorsed by the Bids and Awards Committee (BAC)","1","RESOLUTION 206-2013.pdf","21","2013-07-18","0");
INSERT INTO tbl_resolution VALUES("207 - 2012","","Approve FY 2012 GF SB # 3, Bagulin, La Union","1","Resolution 207-2012.pdf","21","2012-06-13","0");
INSERT INTO tbl_resolution VALUES("207 - 2013","","Approve the salary adjustment of Ms. PriscaPatacsil, Midwife II, NDH, to one grade higher effective Sept 12, 2013","1","RESOLUTION 207-2013.pdf","21","2013-07-18","0");
INSERT INTO tbl_resolution VALUES("208 - 2012","","Condole with the Bereaved family of SPM Reynaldo Paras, Laguna.","1,3,5,7,9,10,11,12,13,18,19,20,21","Resolution 208-2012.pdf","21","2012-06-13","0");
INSERT INTO tbl_resolution VALUES("208 - 2013","","Renew Contract of Consultancy Services of the ff to the OPG effective July 1 to Dec 31, 2013\n\n1.	Mr. FlorestoSayangda, Local Gov’t Affairs, 1st Dist\n2.	Mr. JustinianoArzadon, Brgy Dev’t Affairs \n3.	Judge JovenCostales, Sr. Citizen’s Affairs\n4.	Mr. Carlitodela Cruz, Tourism, Trade & Industry\n5.	Engr. Elmo B. Fama, Electric & Power Dev’t\n6.	Dr. Jose Ostrea, Health, Sanitation, Env’t & Pop \n7.	Dr. Leonardo Quitos, Jr, Planning & Dev’t Mgt\n8.	Ms. Imelda Asiaten, Cultural & Music Dev’t Affairs\n9.	Ms. Laura-Amelie Riavitz, Marine Biology/Resource Dev’t Affairs","4","RESOLUTION 208-2013_001.pdf","21","2013-07-18","0");
INSERT INTO tbl_resolution VALUES("208 - 2014","2014 - 0045","Ord # 23, s 2013, An Ord Prescribing a Doctor?s Certification Fee on all Death Certificates Signed by the Mun Health Officer of the Mun of Naguilian & Issued by the Office of the Local Civil Registrar & amending for the Purpose Sec 133, Art B of the 2011 Mun Revenue Code of the Mun of Naguilian, La Union.","8","RESOLUTION 208-2014.pdf","21","2014-06-19","0");
INSERT INTO tbl_resolution VALUES("209 - 2012","","MOU with Bacnotan, LU re: waste material disposal of Bacnotan Dist Hosp.","1","Resolution 209-2012.pdf","21","2012-06-21","0");
INSERT INTO tbl_resolution VALUES("209 - 2013","","Congratulate INC on its 97th Anniversary.","1,2,3,4,5,6,7,8,9,10,11,12,13","RESOLUTION 209-2013.pdf","21","2013-07-18","0");
INSERT INTO tbl_resolution VALUES("209 - 2014","2014 - 0117","Mun Ord # 02-2014, An Ord Institutionalizing the Granting of an Award of Recognition to the Centenarian Sr. Citizens of the Mun of Agoo, LU","5","RESOLUTION 209-2014.pdf","21","2014-06-19","0");
INSERT INTO tbl_resolution VALUES("210 - 2012","","Congratulate & Commend Mrs. Belinda Calip-Zafra, as the Most Outstanding Nat’l Employee of the Parole & Probation Administration for the year 2011","1,3,5,7,9,10,11,12,13,18,19,20,21","Resolution 210-2012.pdf","21","2012-06-21","0");
INSERT INTO tbl_resolution VALUES("210 - 2013","","Support increase in compensation of the Brgy Elective and Appointive officials (HB No. 134) including BHWs, BNS & Brgy-Funded Day Care Workers","10","RESOLUTION 210-2013.pdf","21","2013-07-18","0");
INSERT INTO tbl_resolution VALUES("210 - 2014","2014 - 0137","Ord # 07, s 2013, An Ord Institutionalizing the Pre-Marriage Counselling Program of the Mun of Naguilian, LU, Providing its Policy, Guidelines and Other Purposes (Amendment Sec 6(a) and (b) Pre Marriage Counselling Fee)","5","RESOLUTION 210-2014.pdf","21","2014-06-19","0");
INSERT INTO tbl_resolution VALUES("211 - 2012","","Approve Ord # 91, s 2012, of the SB of Sudipen, La Union, entitled: ‘AN ORDINANCE AMENDING CERTAIN PROVISIONS OF MO # 17, S 1999’","9","Resolution 211-2012.pdf","21","2012-06-21","0");
INSERT INTO tbl_resolution VALUES("211 - 2013","","Approve Mun Ord # 5, s 2012, of the SB of Sto. Tomas, LU, “Revised Ord Regulating the Maintenance, Care & Safekeeping of Animals for the Welfare & Protection of the Residents of the Mun of Sto. Tomas, La Union”","10","RESOLUTION 211-2013.pdf","21","2013-07-18","0");
INSERT INTO tbl_resolution VALUES("212 - 2012","","MOA with BFAR re: proposed rehab of the Sta. Rita Fish Farm/Nursery & Enhancement of Coastal Resources Mgt Program","3","Resolution 212-2012.pdf","21","2012-06-21","0");
INSERT INTO tbl_resolution VALUES("212 - 2013","","Return for amendment, Ord # 15, s 2011, of the SB of Naguilian, LU, “An Ord Regulating Birthing Homes Situated in the Mun of Naguilian, LU to be Known as the Mun of Naguilian Birthing Homes Regulating Act of 2011”","10","RESOLUTION 212-2013.pdf","21","2013-07-18","0");
INSERT INTO tbl_resolution VALUES("213 - 2012","","MOA with the Child Protection Network Foundation, Inc., LU Medical Center, Bacnotan Dist Hosp. & LU Prov’l Police Office re: proposed establishment of Women & Child Protection Unit","5","Resolution 213-2012.pdf","21","2012-06-21","0");
INSERT INTO tbl_resolution VALUES("213 - 2013","","Confirm appt of the ff:\n\n1.	Dr. Geoffrey S Tilan, Prov’l Administrator\n2.	Mr. Adamor L Dagang, Prov’l Info & Tourism Officer\n3.	Ms. Mila L Gamboa, Prov’l Population Officer","1,2,3,5,6,7,8,9,10,11,13","RESOLUTION 213-2013.pdf","21","2013-07-18","0");
INSERT INTO tbl_resolution VALUES("214 - 2012","","MOA with the Bureau of Soils & Water Management, Dept of Agriculture & Mun Gov’t of Naguilian, LU re: establishment of the Expanded Modified Proposed Composting Pdxn Farm & Related Activities.","3","Resolution 214-2012.pdf","21","2012-06-21","0");
INSERT INTO tbl_resolution VALUES("214 - 2013","","Return for amendment, Ord # 07, s 2013, of the SB of Naguilian, LU, “An Ord Institutionalizing the Pre-Marriage Counseling Program of the Mun of Naguilian, LU, Providing its Policy, Guidelines and Other Purposes”","5","RESOLUTION 214-2013.pdf","21","2013-07-18","0");
INSERT INTO tbl_resolution VALUES("215 - 2012","","MOA with DOH-CHD ILOCOS re: implementation of the Unified Health Mgt Info System in the province.","18","Resolution 215-2012.pdf","21","2012-06-21","0");
INSERT INTO tbl_resolution VALUES("215 - 2013","","Institutionalizing the PESO (Public Employment Service Office – La Union)","1,2,3,4,5,6,7,8,9,10,11,12,13","RESOLUTION 215-2013.pdf","21","2013-07-18","0");
INSERT INTO tbl_resolution VALUES("216 - 2012","","Amended MOA with LBP re: Livelihood Loan Program in terms & conditions of the loan amount, terms/payment, borrower’s eligibility & past due account.","1","Resolution 216-2012.pdf","21","2012-06-21","0");
INSERT INTO tbl_resolution VALUES("216 - 2013","","Enjoin City/Municipal Mayors to strictly enforce Prov’l Ord # 006-2003 (BOLTING).","3,4","RESOLUTION 216-2013.pdf","21","2013-07-18","0");
INSERT INTO tbl_resolution VALUES("217 - 2012","","Condole with the bereaved family of Former Manager Amante R. Rimando, Brgy. Ortiz, Naguilian, La Union.","9","Resolution 217-2012.pdf","21","2012-06-21","0");
INSERT INTO tbl_resolution VALUES("217 - 2013","","Deed of Absolute Sale w/ all interested landowners at Brgys. Tanqui and Sagayad, CSF, w/c are adjacent to the area proposed Prov’l Organic Agriculture Demo Farm Cum Farmers Tech Training Center Project.","7","RESOLUTION 217-2013.pdf","21","2013-07-18","0");
INSERT INTO tbl_resolution VALUES("217 - 2014","2014 - 0210","Recommend approval of the FY 2014 GF AB, of Bacnotan, La Union.","1","RESOLUTION 217-2014.pdf","21","2014-07-03","0");
INSERT INTO tbl_resolution VALUES("218 - 2012","","Congratulate Atty. HilarioJustino F. Morales on his Appointment as the Dean of The College of Law, SLU, Baguio City.","9","Resolution 218-2012.pdf","21","2012-06-21","0");
INSERT INTO tbl_resolution VALUES("218 - 2013","","Request PNP LUPPO to monitor enforcement of Prov’l Ord # 006-2003 (BOLTING) and RA # 71 (NON CUTTING OF TREES)","4","RESOLUTION 218-2013.pdf","21","2013-07-18","0");
INSERT INTO tbl_resolution VALUES("218 - 2014","2014 - 0194","Mun Ord # 03, s 2014, An Ord Enacting a Forced/Pre-Emptive Evacuation Policy of the Mun of Balaoan, LU During Times of Calamity/Disaster","11","RESOLUTION 218-2014.pdf","21","2014-07-03","0");
INSERT INTO tbl_resolution VALUES("219 - 2012","","Condole with the bereaved family of BC Blandino S. Manahan, Luzong Norte, Bangar, La Union.","1,3,5,7,10,11,12,13,18,19,20,21","Resolution 219-2012.pdf","21","2012-06-28","0");
INSERT INTO tbl_resolution VALUES("219 - 2013","","Return Ord # 2013-101, of the SB of Pugo, LU, “Reclassifying Lot No. TCT-15613, a piece of Agricultural Land Located at Brgy, San Luis, Pugo, LU, from Agricultural to Residential”","7","RESOLUTION 219-2013.pdf","21","2013-07-25","0");
INSERT INTO tbl_resolution VALUES("219 - 2014","2014 - 0195","Res # 18, s 2014, Res Creating the Local Disaster Risk and Reduction Management Office Under the Office of the Mun Mayor and the Corresponding Permanent Positions to Complement the Office.","11","RESOLUTION 219-2014.pdf","21","2014-07-03","0");
INSERT INTO tbl_resolution VALUES("220 - 2012","","Condole with the bereaved family of SBM Rodrigo D. de Vera, Rosario, La Union.","1,3,5,7,9,10,11,12,13,18,19,20,21","Resolution 220-2012.pdf","21","2012-06-28","0");
INSERT INTO tbl_resolution VALUES("220 - 2013","","Return Ord # 5, emb in Res # 464, s 2013, of the SB of Bauang, LU, “An Ord Reclassifying the Parcel of Land Owned by Mr. Laurence Delim w/ an Area of 3,014 sq.m. Located at Sitio Magan, Brgy. Calumbaya, Bauang, LU, from Agricultural to Comm’l Classification” ","7","RESOLUTION 220-2013.pdf","21","2013-07-25","0");
INSERT INTO tbl_resolution VALUES("221 - 2012","","Return for amendment, EO # 07, s 2012, of Pugo, La Union, “Re-organizing the Mun Disaster Risk Reduction Mgt Council of the Mun of Pugo, La Union”","11","Resolution 221-2012.pdf","21","2012-06-28","0");
INSERT INTO tbl_resolution VALUES("221 - 2013","","Return Ord # 6, emb in Res # 465, s 2013, of the SB of Bauang, LU, “An Ord Reclassifying the Parcel of Land Owned by Mr. DionisioAromin w/ an Area of 500 sq.m. Located at Naguilian Rd., Brgy. Acao, Bauang, LU, from Agricultural to Comm’l Classification”","7","RESOLUTION 221-2013.pdf","21","2013-07-25","0");
INSERT INTO tbl_resolution VALUES("221 - 2014","2014 - 0170","City Ord # 2014-03, An Ord Regulating the Use of Plastic and Styrofoam in the City of San Fernando and Providing Penalties for Violations Thereof","1","RESOLUTION 221-2014.pdf","21","2014-07-03","0");
INSERT INTO tbl_resolution VALUES("222 - 2012","","Approve EO # 01, s 2012, of the Mun Mayor of Bacnotan, LU, “Creating LGU Performance Challenge Fund (PCF) Project Implementation Team","10","Resolution 222-2012.pdf","21","2012-06-28","0");
INSERT INTO tbl_resolution VALUES("222 - 2013","","MOA with UP-LB, the Fostering Education & Env’t for Dev’t (FEED), ALON PTE LTD, DENR-PENRO & the Local Gov’t of San Gabriel, LU re: proposed project “The Sustainable Upland Farming, the Case of Baroro Watershed”","4","RESOLUTION 222-2013.pdf","21","2013-07-25","0");
INSERT INTO tbl_resolution VALUES("222 - 2014","2014 - 0164","City Ord # 2014-02, An Ord Prohibiting the Use, Sale, Distribution and Advertisement of Cigarettes and other Tobacco Products in Certain Places, Imposing Penalties for Violations Thereof, and Providing Funds Therefor, and for Other Purposes and Repealing City Ord # 2011-05, An Ord Regulating Smoking in the CSF and Providing Penalties for Violation Thereof","2","RESOLUTION 222-2014.pdf","21","2014-07-03","0");
INSERT INTO tbl_resolution VALUES("223 - 2012","","Approve EO # 02, s 2012, of the Mun Mayor of Bacnotan, LU, “Creation of Technical Working Group (TWG) and Joint Inspection Team (JIT) of the Business Permits & Licensing System (BPLS) Streaming Program”","10","Resolution 223-2012.pdf","21","2012-06-28","0");
INSERT INTO tbl_resolution VALUES("223 - 2013","","Request DPWH (1st& 2ndEng’g Dist) to paint and re-paint pedestrian crossing lines, highway center lines and roadsides on all nat’l roads","9","RESOLUTION 223-2013.pdf","21","2013-07-25","0");
INSERT INTO tbl_resolution VALUES("224 - 2012","","Approve Ord # 92, s 2012, of  Sudipen, LU, “An Ord Creating the Sudipen Mun Housing Board, Defining its Clearing House Function Pursuant To Executive Order # 708, s 2008, And for other Purposes” ","10","Resolution 224-2012.pdf","21","2012-06-28","0");
INSERT INTO tbl_resolution VALUES("224 - 2013","","Authorize Gov MCO to sign the CONFORME as requested by 1590 Energy Corp for a Waiver of Confidentiality of the Rescinded Contract to Sell of the Bauang Diesel Power Plant, Bauang, LU","10","RESOLUTION 224-2013_001.pdf","21","2013-07-25","0");
INSERT INTO tbl_resolution VALUES("225 - 2012","","Approve Mun Ord # 1, s 2012, of Santo Tomas, LU,  “Regulating the Use & Scale of all Single-Use Plastic Bags, Bottles, Wrappers, Containers & Styrofoam & Other Non-Ecological Friendly Materials in Gov’t Offices, & Prohibiting The Use of Styrofoams/Stryrophor w/n the Territorial Jurisdiction of said Mun” ","10","Resolution 225-2012.pdf","21","2012-06-28","0");
INSERT INTO tbl_resolution VALUES("225 - 2013","","Set aside P14,000.00 as cash incentives to the winners of the King of Math Cup & Environmental Cup in HK to the ff:\n\n1.	Nullar, Lovely Anne\n2.	Calica, Lorraine Joy\n3.	Calubayan, PhulineCristel\n4.	Montemayor, Gabriel Angelo\n","12","RESOLUTION 225-2013.pdf","21","2013-08-01","0");
INSERT INTO tbl_resolution VALUES("226 - 2012","","Supporting House Bill 6222 Filed By Rep. Dennis Socrates, Seeking to repeal Sections 69 to 75 of the Local Gov’t Code of 1991","10","Resolution 226-2012.pdf","21","2012-06-28","0");
INSERT INTO tbl_resolution VALUES("226 - 2013","","Appropriate P75M as counterpart of the PGLU relative to the NDRRMC’s request for F/A to the ff projects:\n\n1.	Rehab of Guesset Bridge & River Slope Protection\n2.	Rehab of Caba Beach Rd\n3.	Rehab of Calumbaya-Boy-utan-CabalayanganRd\n4.	Rehab of Rosario-Tubao Rd\n5.	Rehab of Ilocanos Norte Seawall","4","RESOLUTION 226-2013.pdf","21","2013-08-01","0");
INSERT INTO tbl_resolution VALUES("227 - 2012","","Approve EO # 04, s 2012 of the Mun Mayor of Pugo, LU, entitled: “Re-Organizing/Updating of the Mun Anti-Drug Abuse Council”","3","Resolution 227-2012.pdf","21","2012-06-28","0");
INSERT INTO tbl_resolution VALUES("227 - 2013","","Approve the request of Bayantel Telecom Inc. to excavate along the shoulder of Manila North Rd for the purpose of construction/installation of concrete pipes for Fiber Optic Cable","10","resolution 227-2013.pdf","21","2013-08-01","0");
INSERT INTO tbl_resolution VALUES("228 - 2012","","Approve EO # 05, s 2012 of the Mun Mayor of Pugo, LU, “Re-Organization of the Mun Peace & Order Council”","3","Resolution 228-2012.pdf","21","2012-06-28","0");
INSERT INTO tbl_resolution VALUES("228 - 2013","","Return for amendment, Ord # 14, s 2012, of the SB of Naguilian, La Union, “An Ord Promoting Breastfeeding in the Mun of Naguilian, La Union”","9","resolution 228-2013.pdf","21","2013-08-01","0");
INSERT INTO tbl_resolution VALUES("229 - 2012","","Approve Annual Investment Plan (AIP) of the Province of LU for CY 2013","1","Resolution 229-2012.pdf","21","2012-07-05","0");
INSERT INTO tbl_resolution VALUES("229 - 2013","","Enjoin Operators of School Canteens of Public Elem & Secondary Schools to Observe & Comply w/ DepEd Order # 17, s 2005, particularly to promote & make available nutritious foods, & to refrain from selling & dispensing so-called “junk foods” & carbonated sugar-based & artificially-flavored drinks","6","RESOLUTION 229-2013.pdf","21","2013-08-01","0");
INSERT INTO tbl_resolution VALUES("230 - 2012","","Endorsing the Option 1 Plan for the Construction of the Tarlac-Pangasinan-LU expressway (TPLEX)","18","Resolution 230-2012.pdf","21","2012-07-05","0");
INSERT INTO tbl_resolution VALUES("230 - 2013","","Declare Ord # 31, s 2012, of the SB of Naguilian, LU, as ultra vires or beyond the power of the Council to enact","8","resolution 230-2013.pdf","21","2013-08-01","0");
INSERT INTO tbl_resolution VALUES("231 - 2012","","Approve FY 2012 GF SB # 3, of Agoo, La Union.","1","Resolution 231-2012.pdf","21","2012-07-05","0");
INSERT INTO tbl_resolution VALUES("231 - 2013","","Approve Res # 12, s 2013, of the SB of Tubao, LU, “Adopting the IRP for the SB of Tubao, LU”","10","resolution 231-2013_001.pdf","21","2013-08-01","0");
INSERT INTO tbl_resolution VALUES("232 - 2012","","Approve FY 2012 GF SB # 2, of Balaoan, La Union.","1","Resolution 232-2012.pdf","21","2012-07-05","0");
INSERT INTO tbl_resolution VALUES("232 - 2013","","Approve Res # 18, s 2013, of the SB of Balaoan, La Union, “Adopting the IRP for the SB of Balaoan, La Union”","10","resolution 232-2013.pdf","21","2013-08-01","0");
INSERT INTO tbl_resolution VALUES("232 - 2014","2014 - 0225","Recommend approval of the FY 2014 GF SB # 3, of Agoo, La Union.","11","RESOLUTION 232-2014.pdf","21","2014-07-10","0");
INSERT INTO tbl_resolution VALUES("233 - 2012","","Approve FY 2012 GF SB # 2, of Bangar, La Union","1","Resolution 233-2012.pdf","21","2012-07-05","0");
INSERT INTO tbl_resolution VALUES("233 - 2013","","Return for amendment, Mun Ord # 96, s 2013, of the SB of Sudipen, LU, “An Ord Requiring the Food Service Industry w/n the Territorial Jurisdiction of the Mun of Sudipen, to Include ½ Cup of Cooked Rice in their Menu”","10","resolution 233-2013.pdf","21","2013-08-01","0");
INSERT INTO tbl_resolution VALUES("233 - 2014","2014 - 0224","Recommend approval of the FY 2014 GF SB # 1, of San Gabriel, La Union.","11","RESOLUTION 233-2014.pdf","21","2014-07-10","0");
INSERT INTO tbl_resolution VALUES("234 - 2012","","Approve Res # 119-2012, of Agoo, La Union, authorizing Sandra Y. Eriguel, M.D. to represent LGU-AGOO to a MOA for the extension of the MOU with Calapan Waterworks Corporation ","20","Resolution 234-2012.pdf","21","2012-07-05","0");
INSERT INTO tbl_resolution VALUES("234 - 2013","","Approve Mun Ord # 97, s 2013, of the SB of Sudipen, LU, “Creating the Mun HIV/AIDS Council”","10","RESOLUTION 234-2013.pdf","21","2013-08-01","0");
INSERT INTO tbl_resolution VALUES("234 - 2014","2014 - 0228","Recommend approval of the FY 2014 GF SB # 1, of CSF, La Union.","10","RESOLUTION 234-2014.pdf","21","2014-07-10","0");
INSERT INTO tbl_resolution VALUES("235 - 2012","","Approve Res # 11-2011, of Agoo, La Union, authorizing Mayor Sandra Y. Eriguel to enter into a MOU with Calapan Waterworks Corporation.","20","Resolution 235-2012.pdf","21","2012-07-05","0");
INSERT INTO tbl_resolution VALUES("235 - 2013","","Request Gov thru MISD to develop the Legislative Tracking System of the SP & appropriate P150,000.00 for its hardware","2","RESOLUTION 235-2013.pdf","21","2013-08-01","0");
INSERT INTO tbl_resolution VALUES("236 - 2012","","Approve Ord # 14-2012, of Agoo, La Union, “An Ord Prescribing Rates & Regulations on the Commercial Stalls for Rent &Pasalubong Center at the Jose D. Aspiras Civic Center”","20","Resolution 236-2012.pdf","21","2012-07-05","0");
INSERT INTO tbl_resolution VALUES("236 - 2013","","Congratulate Cong. FrannyEriguel for being elected as the Chairperson of the House Committee on Health of the 16th Congress","9","RESOLUTION 236-2013.pdf","21","2013-08-01","0");
INSERT INTO tbl_resolution VALUES("237 - 2012","","Approve Ord # 18-2012, of Agoo, La Union, “An Ord Prescribing the Rates in the Market Stall Fees, Payment of Privilege Rights & Parking Fees at the Agoo Public Market w/ Basement Parking (Phase III)”","20","Resolution 237-2012.pdf","21","2012-07-05","0");
INSERT INTO tbl_resolution VALUES("237 - 2013","","Congratulate Cong. Pacoy R. Ortega III for being elected as Deputy Majority Floor Leader of the 16th Congress","9","RESOLUTION 237-2013.pdf","21","2013-08-01","0");
INSERT INTO tbl_resolution VALUES("238 - 2012","","Approve Ord # 476-2012, of Bacnotan, LU, “An Ord Prohibiting the Use & Sale of Plastic Bags & Wrappers on Dry Goods, Regulating Its Utilization on Wet Goods & Prohibiting the Use Sale & Give Away of Styrofoam/Styrophor w/n the said Mun & Prescribing Penalties for the Violation”","1","Resolution 238-2012.pdf","21","2012-07-05","0");
INSERT INTO tbl_resolution VALUES("238 - 2013","","Request LU 1stEng’gDist (DPWH) to make the necessary repairs to the San Juan-City of Sn Fdo By-Pass Rd","3","RESOLUTION 238-2013.pdf","21","2013-08-01","0");
INSERT INTO tbl_resolution VALUES("239 - 2012","","Adjust SG of Ms. Lorenza D. Mazon, Admin Aide IV, Naguilian Dist Hosp.","1","Resolution 239-2012.pdf","21","2012-07-05","0");
INSERT INTO tbl_resolution VALUES("239 - 2013","","Approve programming of RA 7171 Fund amounting to P100,851,155.00.","4,8","RESOLUTION 239-2013.pdf","21","2013-08-08","0");
INSERT INTO tbl_resolution VALUES("239 - 2014","2014 - 0087","Mun Ord # 01-2014, An Ord Requiring All Elem & HS Principals/Administrators in the Mun of San Juan to Hold an Info Campaign Not Shorter than 5 Minutes Every Mon After Flag Ceremony on How to Prevent Drug Abuse","6","RESOLUTION 239-2014.pdf","21","2014-07-10","0");
INSERT INTO tbl_resolution VALUES("240 - 2012","","Urge all Component Local Gov’t Units of LU to Relocate Junkshops Embedded in \nResidential Areas .\n","10","Resolution 240-2012.pdf","21","2012-07-05","0");
INSERT INTO tbl_resolution VALUES("240 - 2013","","Approve FY 2013 GF SB # 3, of Balaoan, La Union.","1","RESOLUTION 240-2013.pdf","21","2013-08-08","0");
INSERT INTO tbl_resolution VALUES("240 - 2014","2014 - 0128","Ord # 164, The Anti-Truancy Ord for Elem & H/S Students in Aringay, LU","6","RESOLUTION 240-2014.pdf","21","2014-07-10","0");
INSERT INTO tbl_resolution VALUES("241 - 2012","","Request the Prov’l Assessor’s Office to Assess all the real estate properties of Globe Telecommunications, Inc for the payment of all their back accounts on such real properties as well as SMART, PLDT, etc.","20","Resolution 241-2012.pdf","21","2012-07-05","0");
INSERT INTO tbl_resolution VALUES("241 - 2013","","Approve FY 2013 GF SB # 4, of Agoo, La Union.","1","RESOLUTION 241-2013.pdf","21","2013-08-08","0");
INSERT INTO tbl_resolution VALUES("241 - 2014","2014 - 0187","Mun Ord # 08-2014, An Ord Amending the Title, Sec 4 & 5 of Mun Ord # 25-2013 as an Ord Mandating All Parents/Guardians in Agoo to Enroll Their Children Ages 5 Yrs. Old & Above in Basic Education in Any Learning Institution w/n the Mun of Agoo, LU","6","RESOLUTION 241-2014.pdf","21","2014-07-10","0");
INSERT INTO tbl_resolution VALUES("242 - 2012","","MOA w/ DA re: fund allotment of P366,000.00 by the former to the latter’s project “Strengthening the Beekeeping Industry”","3","Resolution 242-2012.pdf","21","2012-07-09","0");
INSERT INTO tbl_resolution VALUES("242 - 2013","","Approve FY 2013 SB # 2, of Bagulin, La Union.","1","RESOLUTION 242-2013.pdf","21","2013-08-08","0");
INSERT INTO tbl_resolution VALUES("243 - 2012","","Endorse DMMMSU’s request to Sen. Juan Ponce Enrile to cause the allotment of P10 M for the construction of a College of Law Bldg (Phase II)","1,3,5,6,7,9,10,19,20","Resolution 243-2012.pdf","21","2012-07-09","0");
INSERT INTO tbl_resolution VALUES("243 - 2013","","Approve FY 2013 GF SB # 1, of Bangar, La Union.","1","RESOLUTION 243-2013.pdf","21","2013-08-08","0");
INSERT INTO tbl_resolution VALUES("244 - 2012","","Endorse DMMMSU’s request to Sen. Aquilino Pimentel III to cause the allotment of P10 M for the construction of a College of Law Bldg (Phase II)","1,3,5,7,9,10,19,20,21","Resolution 244-2012.pdf","21","2012-07-09","0");
INSERT INTO tbl_resolution VALUES("244 - 2013","","Return Mun Ord # 01-2013, of the SB of San Juan, LU, An Ord Authorizing the zoning of Cockpit in Brgy. Nadsaag.","7","RESOLUTION 244-2013.pdf","21","2013-08-08","0");
INSERT INTO tbl_resolution VALUES("244 - 2014","2014 - 0177","Ord # 2014-112, Establishing the Mun Abattoir of Pugo, LU and Prescribing Policies for the Management and Operation Thereof, and Regulating the Sale of Meat and Meat Products for Public Consumption, Imposition of Fees and Charges and Imposing Penalties in Violation Thereof.","3","RESOLUTION 244-2014.pdf","21","2014-07-17","0");
INSERT INTO tbl_resolution VALUES("245 - 2012","","Congratulate INC on its 98th Anniversary","1,3,5,7,9,10,11,12,13,18,19,20,21","Resolution 245-2012.pdf","21","2012-07-09","0");
INSERT INTO tbl_resolution VALUES("245 - 2013","","Approve Res # 18,, s 2013, of the SB of Sudipen, LU, “Fixing the Date, Time and Venue of the Regular Session of the SB”","10","RESOLUTION 245-2013.pdf","21","2013-08-08","0");
INSERT INTO tbl_resolution VALUES("246 - 2012","","MOA w/ DOH CHD re: implementation of the enhancement program of RDH","20","Resolution 246-2012.pdf","21","2012-07-09","0");
INSERT INTO tbl_resolution VALUES("246 - 2013","","Approve Ord # 48, s 2013, of the SB of Burgos, LU, “An Ord Adopting the internal Rules of Procedure of the SB of Burgos, LU”","10","RESOLUTION 246-2013.pdf","21","2013-08-08","0");
INSERT INTO tbl_resolution VALUES("247 - 2012","","Assure that whatever amount that will be provided by the Office of the President for the ff projects will be funded & completed by the Province as its counterpart, to wit:\n\n1.	Reconstruction of 3 classroom school bldg,             P1,950,000.00\nLuna Community School, Luna, LU\n          2.       Rehab of Santol-San Gabriel Rd (FMR)                        1,000,000.00\n          3.       Rehab of Naguilian-Bagulin Rd                                    10,000,000.00\n","1","Resolution 247-2012.pdf","21","2012-07-27","0");
INSERT INTO tbl_resolution VALUES("247 - 2013","","Approve Mun Ord No. 49-2013, of the SB of Luna, LU, “An Ord Declaring GliciridiaSepium/Kakawate” and Orchid as Mun Tree and Flower, Respectively”","10","RESOLUTION 247-2013.pdf","21","2013-08-08","0");
INSERT INTO tbl_resolution VALUES("248 - 2012","","Condole with the late Dr. Pedro G. Orille, former Supervisor, DepEd & Pres., Sr. Citizens.","20","Resolution 248-2012.pdf","21","2012-07-27","0");
INSERT INTO tbl_resolution VALUES("248 - 2013","","Renew Contract of Consultancy of:\n\n1.	Engr Pablo Salanga\n2.	Atty. Gerardo A. Viloria\n3.	Mr. Firth McEachern\n4.	Atty. Rolando V. Rivera\n","4","RESOLUTION 248-2013.pdf","21","2013-08-08","0");
INSERT INTO tbl_resolution VALUES("248 - 2014","2014 - 0215","Theodore Sarmiento, VP for Legal & Corporate Affairs Thunderbird Resorts - Authorization to Lay Underground Pipe Along Don Joaquin Ortega Avenue.","11","RESOLUTION 248-2014.pdf","21","2014-07-17","0");
INSERT INTO tbl_resolution VALUES("249 - 2012","","Congratulate Hon. Nonnatus Caesar Rojas on his appointment as the new NBI Director, Dept of Justice","20","Resolution 249-2012.pdf","21","2012-07-27","0");
INSERT INTO tbl_resolution VALUES("249 - 2013","","Endorse the candidacy of Hon. Francisco “Kit” Ortega, Jr. for the Presidency of the PBMLP – RO I","4","RESOLUTION 249-2013.pdf","21","2013-08-08","0");
INSERT INTO tbl_resolution VALUES("250 - 2012","","Condole with the family of the late Ronnie Esquivel, one-legged surfer","11","Resolution 250-2012.pdf","21","2012-07-27","0");
INSERT INTO tbl_resolution VALUES("250 - 2013","","Designate BM Nancy Corazon M. Bacurnay as Liaison Officer of the SP to the NC of PBMLP","9","RESOLUTION 250-2013.pdf","21","2013-08-08","0");
INSERT INTO tbl_resolution VALUES("250 - 2014","2014 - 0166","Mun Ord # 05-2014, An Ord Requiring Owners of Hotels and Resorts to Install Placards Informing the Foreign and Local Tourists that Night Swimming is Banned from 6PM to 6AM and Warning in the Hazards of Swimming Under the Influence of Liquor","4","RESOLUTION 250-2014.pdf","21","2014-07-17","0");
INSERT INTO tbl_resolution VALUES("251 - 2012","","Condole with the bereaved family of BC ApolonioRenonos, Brgy. Cabarsican, Bacnotan.","20","Resolution 251-2012.pdf","21","2012-07-27","0");
INSERT INTO tbl_resolution VALUES("251 - 2013","","Condole w/ bereaved family of the SBM Nestor Dilodilo.","1,2,3,4,5,6,7,8,9,10,11,12,13","RESOLUTION 251-2013.pdf","21","2013-08-08","0");
INSERT INTO tbl_resolution VALUES("251 - 2014","2014 - 0168","Dr. Mauro Libatique, Jr, PPDC - Forward the CLUP/Zoning Ord of the Mun of San Juan, LU for CY 2013-2022","7","RESOLUTION 251-2014.pdf","21","2014-07-17","0");
INSERT INTO tbl_resolution VALUES("252 - 2012","","Approve the FY 2011 GF, SB # 2, of Bacnotan, La Union.","1","Resolution 252-2012.pdf","21","2012-07-27","0");
INSERT INTO tbl_resolution VALUES("252 - 2013","","Approve the FY 2013 GF SB # 2, of Luna, La Union.","1","RESOLUTION 252-2013.pdf","21","2013-08-15","0");
INSERT INTO tbl_resolution VALUES("252 - 2014","2014 - 0188","Romeo Ramos/\nFlorenda Flores - Request an advise/proper action to solve the problem of the selling of one Pedro Flores to Ms Cristina Ordinado at Pindangan Access Rd, San Fernando City.","7","RESOLUTION 252-2014.pdf","21","2014-07-17","0");
INSERT INTO tbl_resolution VALUES("253 - 2012","","Approve the FY 2012 GF, AB of Bacnotan, La Union.","1","Resolution 253-2012.pdf","21","2012-07-27","0");
INSERT INTO tbl_resolution VALUES("253 - 2013","","Approve The FY 2013 GF AB, of Aringay, La Union.","1","RESOLUTION 253-2013.pdf","21","2013-08-15","0");
INSERT INTO tbl_resolution VALUES("253 - 2014","2014 - 0218","Mun Ord # 06-2014, An Ord Granting the Authority to Mayor Sandra Eriguel to Institute Expropriation Proceedings on Lot Nos. 823, 832, and 834 Registered in the Names of Alicia Panes, Simeon Padilla Sr.,/Naguilian Rural Bank and Eusebio and AdelinaAsprer, Respectively, located at Brgy. Consolacion for the Expansion of the Road right of Way for Don EufemioEriguel Memorial Nat?l H/S (DEFEMNHS), Agoo, La Union.","7","RESOLUTION 253-2014.pdf","21","2014-07-17","0");
INSERT INTO tbl_resolution VALUES("254 - 2012","","Approve the FY 2012 GF, SB # 4, of Bagulin, La Union.","1","Resolution 254-2012.pdf","21","2012-07-27","0");
INSERT INTO tbl_resolution VALUES("254 - 2013","","Condole w/ the bereaved family of the late Prof. Danilo M. Aragon.","1,2,3,4,6,7,8,9,10,11,12,13","RESOLUTION 254-2013.pdf","21","2013-08-15","0");
INSERT INTO tbl_resolution VALUES("255 - 2012","","Approve the FY 2012 GF, SB # 5, of Bagulin, La Union.","1","Resolution 255-2012.pdf","21","2012-07-27","0");
INSERT INTO tbl_resolution VALUES("255 - 2013","","MOA w/ BFAR & ECOFISH re: implementation of the Ecosystem Improved for Sustainable Fisheries in San Fdo City, Bauang, Aringay, Agoo, Sto. Tomas & Rosario.","3","RESOLUTION 255-2013.pdf","21","2013-08-15","0");
INSERT INTO tbl_resolution VALUES("256 - 2012","","Approve the FY 2012 GF, SB # 4, of Agoo, La Union.","1","Resolution 256-2012.pdf","21","2012-07-27","0");
INSERT INTO tbl_resolution VALUES("256 - 2013","","MOA w/ DSWD re: implementation of the Upgrading of Brgy. Lower Nagyubuyuban Day Care Center, CSF &NadsaagChild Dev’t Center, San Juan","6","RESOLUTION 256-2013.pdf","21","2013-08-15","0");
INSERT INTO tbl_resolution VALUES("257 - 2012","","Approve the FY 2012 GF, SB # 2, of Luna, La Union.","1","Resolution 257-2012.pdf","21","2012-07-27","0");
INSERT INTO tbl_resolution VALUES("257 - 2013","","Renew Contract of Consultancy Services of Mr. JOSE MACUSI as OPG Consultant on Indigenous People’s Affairs.","1","RESOLUTION 257-2013.pdf","21","2013-08-15","0");
INSERT INTO tbl_resolution VALUES("258 - 2012","","Authorize the Governor to enter into 7th Renewal of Lease Agreement with GLOBE Telecom from July 15, 2012 to July 14, 2015 w/ a monthly rate of P35,128.42.","1","Resolution 258-2012.pdf","21","2012-07-27","0");
INSERT INTO tbl_resolution VALUES("258 - 2013","","Enjoin VMs and SBMs to incorporate in their Comprehensive Environmental Code, their Ecological Solid Waste Mgt Ordinance.","4","RESOLUTION 258-2013.pdf","21","2013-08-15","0");
INSERT INTO tbl_resolution VALUES("259 - 2012","","Congratulate winners & coach of the 2012 Phil Nat’l Games & set aside P54,000.00 as their incentives","1,3,5,7,9,10,11,12,13,18,19,20,21","Resolution 259-2012.pdf","21","2012-07-27","0");
INSERT INTO tbl_resolution VALUES("259 - 2013","","MOA w/ BFAR, LGU of Bauang & Brgy Council of ParianOeste re: establishment of a Community-Based Multi-Species Hatchery (CBMSH) &AquasilvicultureTechnodemo Project components of the Phil Nat’l Aquasilviculture Program.","3","RESOLUTION 259-2013.pdf","21","2013-08-22","0");
INSERT INTO tbl_resolution VALUES("260 - 2012","","Approve the proposed programming of RA 7171 Fund amounting P100,851,155.00.","1","Resolution 260-2012.pdf","21","2012-08-02","0");
INSERT INTO tbl_resolution VALUES("260 - 2013","","Approve the FY 2013 GF AB, of Bacnotan, La Union.","11","RESOLUTION 260-2013.pdf","21","2013-08-22","0");
INSERT INTO tbl_resolution VALUES("261 - 2012","","Approve the FY 2012 GF SB # 1, of CSF","1","Resolution 261-2012.pdf","21","2012-08-02","0");
INSERT INTO tbl_resolution VALUES("261 - 2013","","Approve Res # 19-2013, of the SB of Burgos, LU, “Re-organizing the 2013-2016 Standing Committees of the SB of Burgos, LU”","10","RESOLUTION 261-2013.pdf","21","2013-08-22","0");
INSERT INTO tbl_resolution VALUES("262 - 2012","","Approve the FY 2012 GF SB # 1, of Burgos, La Union.","1","Resolution 262-2012.pdf","21","2012-08-02","0");
INSERT INTO tbl_resolution VALUES("262 - 2013","","Approve Ord # 17, s 2013, of the SB of Naguilian, LU “An Ord to Declare Rosal Known Scientifically as Gardenia Jasminoides as the Official Flower of the Mun of Naguilian, LU”","10","RESOLUTION 262-2013.pdf","21","2013-08-22","0");
INSERT INTO tbl_resolution VALUES("263 - 2012","","Approve the FY 2012 GF SB # 2, of Tubao, La Union.","1","Resolution 263-2012.pdf","21","2012-08-02","0");
INSERT INTO tbl_resolution VALUES("263 - 2013","","Approve the FY 2013 GF SB # 1, of Rosario, La Union.","11","RESOLUTION 263-2013.pdf","21","2013-08-22","0");
INSERT INTO tbl_resolution VALUES("264 - 2012","","Congratulate & commend Atty. Maria Paz Rivera-Basangan for placing 9th in the Real Estate Appraiser Licensure Exam.","9","Resolution 264-2012.pdf","21","2012-08-02","0");
INSERT INTO tbl_resolution VALUES("264 - 2013","","Return for proper amendment, Ord # 1, s 2013, of the SB of Sto. Tomas, LU, “An Ord Enacting the Comprehensive Ecological Mgt Ord of the Mun of Sto. Tomas, LU & Providing Penalties to Violations Thereof”","4","RESOLUTION 264-2013.pdf","21","2013-08-22","0");
INSERT INTO tbl_resolution VALUES("265 - 2012","","Recommend to DepEd Sec Armin Luistro, for the retention of Dr. Edna Leal, as the Schools Division Superintendent ","1,7,9,10,11,12,13,18","Resolution 265-2012.pdf","21","2012-08-02","0");
INSERT INTO tbl_resolution VALUES("265 - 2013","","Return for amendment/correction, Ord # 2, s 2013, of the SB of Sto. Tomas, LU, “An Ord Enacting the Environmental Code of the Mun of Sto. Tomas, LU”","4","RESOLUTION 265-2013.pdf","21","2013-08-22","0");
INSERT INTO tbl_resolution VALUES("265 - 2014","2014 - 0190","Mun Ord # 07-2014, An Ord Increasing the Number of Tricycle Franchise to 1000 Units, as Amended Furthermore.","4","RESOLUTION 265-2014.pdf","21","2014-07-24","0");
INSERT INTO tbl_resolution VALUES("266 - 2012","","Authorize the Records Officer of PGSO to testify on the fact of loss of the Title of the lot covering the Sagayad Resettlement Project, CSF.","1","Resolution 266-2012.pdf","21","2012-08-09","0");
INSERT INTO tbl_resolution VALUES("266 - 2013","","Approve the Strategic Development Thrust, CY 2013-2017.","11","RESOLUTION 266-2013.pdf","21","2013-08-22","0");
INSERT INTO tbl_resolution VALUES("267 - 2012","","Approve EO # 09, s 2012, of the MC of Pugo, LU, “An EO to Enforce Pre-emptive Evacuation of People, Particularly those Living Near Danger Zones Such as Riverbanks & Other Waterways & Mt. Slopes”","10","Resolution 267-2012.pdf","21","2012-08-09","0");
INSERT INTO tbl_resolution VALUES("267 - 2013","","Enjoin all Mun Mayors, being the Chairman of the Local Health Board (LHB), to strictly enforce RA No. 7883, Otherwise known as An Act Granting Benefits & Incentives to Accredited BHWs & for Other Purposes &its IRR","4","RESOLUTION 267-2013.pdf","21","2013-08-22","0");
INSERT INTO tbl_resolution VALUES("268 - 2012","","Declare the Province under a State of Calamity due to monsoon rains.","11","Resolution 268-2012.pdf","21","2012-08-09","0");
INSERT INTO tbl_resolution VALUES("268 - 2013","","Appeal to Cong. Eriguel to cause the review of RA No. 7883, otherwise known as the BHW & Incentives Act of 1995 & for Other Purposes.","4","RESOLUTION 268-2013.pdf","21","2013-08-22","0");
INSERT INTO tbl_resolution VALUES("269 - 2012","","Congratulate & commend Cesar Higoy, Jr., from Luna, LU, as finalist to the 2012 Ten Outstanding Students of the Phils (TOSP) & for graduating Summa Cum Laude, SLU (BSCE)","21","Resolution 269-2012.pdf","21","2012-08-09","0");
INSERT INTO tbl_resolution VALUES("269 - 2013","","Condole w/ the bereaved family of SBM Rodolfo V. Mique, Balaoan.","2,3,4,5,6,7,8,9,10,11,12,13","RESOLUTION 269-2013.pdf","21","2013-08-22","0");
INSERT INTO tbl_resolution VALUES("270 - 2012","","Congratulate & commend SephiMarzLiclican, of Payocpoc Sur, Bauang, LU, for winning Bronze Medal during the 2012 International Math Competition at Singapore","21","Resolution 270-2012.pdf","21","2012-08-09","0");
INSERT INTO tbl_resolution VALUES("270 - 2013","","Congratulate & commend Dr. Ma. Theresa M. Bautista, English Dept, BNHS for being adjudged as 1 of the 2013 Metrobank Foundation Outstanding Teachers in the Phils","6","RESOLUTION 270-2013.pdf","21","2013-08-29","0");
INSERT INTO tbl_resolution VALUES("271 - 2012","","Approve the FY 2012 GF AB of Aringay, La Union.","1","Resolution 271-2012.pdf","21","2012-08-16","0");
INSERT INTO tbl_resolution VALUES("271 - 2013","","P10,000 cash incentive to Dr. Ma. Theresa M. Bautista.","1","RESOLUTION 271-2013.pdf","21","2013-08-29","0");
INSERT INTO tbl_resolution VALUES("272 - 2012","","Approve the FY 2012 GF SB # 2, of Pugo, La Union.","1","Resolution 272-2012.pdf","21","2012-08-16","0");
INSERT INTO tbl_resolution VALUES("272 - 2013","","Approve SB # 2, involving P11 M.","1","RESOLUTION 272-2013.pdf","21","2013-08-29","0");
INSERT INTO tbl_resolution VALUES("273 - 2012","","Approve the FY 2012 GF SB # 3, of Balaoan, La Union.","1","Resolution 273-2012.pdf","21","2012-08-16","0");
INSERT INTO tbl_resolution VALUES("273 - 2013","","Approve the FY 2013 GF SB # 2, of San Gabriel, La Union.","1","RESOLUTION 273-2013.pdf","21","2013-08-29","0");
INSERT INTO tbl_resolution VALUES("274 - 2012","","Approve the FY 2012 GF SB # 3, of Tubao, La Union.","1","Resolution 274-2012.pdf","21","2012-08-16","0");
INSERT INTO tbl_resolution VALUES("274 - 2013","","Approve the FY 2013 GF SB # 2, of Sudipen, La Union.","1","RESOLUTION 274-2013.pdf","21","2013-08-29","0");
INSERT INTO tbl_resolution VALUES("275 - 2012","","Condole w/ the bereaved family of the late Mrs. Maria B. Lictao, Population Worker I, PPO.","1,3,5,7,9,10,11,12,13,18,19,20,21","Resolution 275-2012.pdf","21","2012-08-16","0");
INSERT INTO tbl_resolution VALUES("275 - 2013","","Approve Res # 001-2013, of the SB of Bangar, LU, “Adopting the IRP of the SB of Bangar, LU”","10","RESOLUTION 275-2013.pdf","21","2013-08-29","0");
INSERT INTO tbl_resolution VALUES("276 - 2012","","Approve Ord # 7, s 2012, of the SB of Bauang, LU, “An Ord Creating the Bauang Mun Housing Board, Defining its Clearinghouse Functions Pursuant to EO # 708, s 2008, & for All Other Purposes","7","Resolution 276-2012.pdf","21","2012-08-16","0");
INSERT INTO tbl_resolution VALUES("276 - 2013","","Approve Res # 24, s 2013, of the SB of Balaoan, La Union, “Naming the Gumamela as the Official Mun Flower of the Mun of Balaoan, La Union”","10","RESOLUTION 276-2013.pdf","21","2013-08-29","0");
INSERT INTO tbl_resolution VALUES("277 - 2012","","Approve Mun Ord # 01, s 2012, of the SB of Balaoan, LU, “An Ord Creating the Balaoan Mun Housing Board, Defining its Clearing House Functions Pursuant to EO # 708, s 2008, & For Other Purposes”","7","Resolution 277-2012.pdf","21","2012-08-16","0");
INSERT INTO tbl_resolution VALUES("277 - 2013","","Approve Res # 25, s 2013, of the SB of Balaoan, La Union, “Naming the Phil Mahogany as the Official Mun Tree of the Mun of Balaoan, La Union”","10","RESOLUTION 277-2013.pdf","21","2013-08-29","0");
INSERT INTO tbl_resolution VALUES("278 - 2012","","Return Ord # 02, s 2011 of the SB of Sto. Tomas, LU, “An Ord Regulating the Deposition of Pulverized Materials Such as Ores, Coal, Gypsum, Silica, Betonies & Other Mineral Components That are Utilized by All Industries Operating w/n the Mun of Sto. Tomas, LU","1","Resolution 278-2012.pdf","21","2012-08-16","0");
INSERT INTO tbl_resolution VALUES("278 - 2013","","Return Ord # 18, s 2013, of the SB of Naguilian, LU, “An Ord Requiring Gram Staining on Guest Relation Officer (GRO) Employed in Videoke Establishments & Sing-Along Bars w/n the Territorial Jurisdiction of the Mun of Naguilian, LU, Providing Penalties for Non-Compliance & Appropriating Funds for the Purpose”","10","RESOLUTION 278-2013.pdf","21","2013-08-29","0");
INSERT INTO tbl_resolution VALUES("279 - 2012","","Negotiate & Contract a Loan w/ LBP to finance the repair &rehab of the La Union Admin & Comm’l Bldg","1,18","Resolution 279-2012.pdf","21","2012-08-16","0");
INSERT INTO tbl_resolution VALUES("279 - 2013","","MOA w/ LBP re: new features of the LBP Enhanced Livelihood Loan Facility","1","RESOLUTION 279-2013.pdf","21","2013-08-29","0");
INSERT INTO tbl_resolution VALUES("280 - 2012","","MOA with the Mun Gov’t of Rosario, LU, re: services of a Med Tech I of Rosario Dist Hosp at the RHU thereat","18","Resolution 280-2012.pdf","21","2012-08-16","0");
INSERT INTO tbl_resolution VALUES("280 - 2013","","Endorse to Pres Benigno S. Aquino III, the appointment of Dr. Lorna G. Bugayong as a full time Asst Schools Div Superintendent","6","RESOLUTION 280-2013.pdf","21","2013-08-29","0");
INSERT INTO tbl_resolution VALUES("281 - 2012","","Condole with the bereaved family of BC HerminigildoDabalos, Bangaoilan West, Bangar","1,3,5,7,9,10,11,12,13,18,19,20,21","Resolution 281-2012.pdf","21","2012-08-16","0");
INSERT INTO tbl_resolution VALUES("281 - 2013","","Extend appreciation to the most active participating agencies in the LU Jobs Fair CY 2007-2013\n\nI.	Private Business Establishments for Local Employment\nII.	Overseas Recruitment Agencies\nIII.	National Agencies\nIV.	Non-Gov’t Organization\nV.	Host Venue","9","RESOLUTION 281-2013.pdf","21","2013-09-05","0");
INSERT INTO tbl_resolution VALUES("282 - 2012","","Condole w/ the bereaved family of the late Cong. Salvador “Sonny” H. Escudero III, Sorsogon","1","Resolution 282-2012.pdf","21","2012-08-16","0");
INSERT INTO tbl_resolution VALUES("282 - 2013","","Call for the Comprehensive Review of the Nutrition Program of the province.","4","RESOLUTION 282-2013.pdf","21","2013-09-05","0");
INSERT INTO tbl_resolution VALUES("283 - 2012","","Approve the CY 2012 Supplemental AIP for the Rehab of the LUPAC Bldg ","1","Resolution 283-2012.pdf","21","2012-08-23","0");
INSERT INTO tbl_resolution VALUES("283 - 2013","","Request Cong. VFO, FrannyEriguel, Pacoy Ortega III, to cause the allocation of funds to cover Monthly Allowances of all Brgy Nutrition Scholars & the possible introduction of a HB increasing the allowances/stipend of BNS and/or making permanent the position of BNS in the Plantilla positions in the brgy.","4","RESOLUTION 283-2013.pdf","21","2013-09-05","0");
INSERT INTO tbl_resolution VALUES("284 - 2012","","MOA with DOH-CHD I pertaining to the actual transfer of the proposed Reg’l Blood Bank Center at Bacnotan, La Union.","1","Resolution 284-2012.pdf","21","2012-08-23","0");
INSERT INTO tbl_resolution VALUES("284 - 2013","","Request support of all SP in the country to adopt the same or similar as Res # 210-2013, of this Body","3","RESOLUTION 284-2013.pdf","21","2013-09-05","0");
INSERT INTO tbl_resolution VALUES("285 - 2012","","Condole with the bereaved family of the late Sec. Jesse M. Robredo, DILG.","1,3,5,7,9,10,11,12,13,18,19,20","Resolution 285-2012.pdf","21","2012-08-23","0");
INSERT INTO tbl_resolution VALUES("285 - 2013","","Set aside P15,000.00 as F/A to Mr. Erwin C. Llavore, Youth Ambassador of Goodwill for Region I, to the 40th Ship for Southeast Asian Youth Program (SSEAYP).","1","RESOLUTION 285-2013.pdf","21","2013-09-05","0");
INSERT INTO tbl_resolution VALUES("286 - 2012","","Approve EO # 10, s 2012, of the Mun Mayor of Pugo, LU, “Creating the Mun Advisory Committee of the Mun of Pugo, LU for the PantawidPamilyang Pilipino Program”","5","Resolution 286-2012.pdf","21","2012-08-23","0");
INSERT INTO tbl_resolution VALUES("286 - 2013","","Condole with Atty. Josephine M. Ducusin, Pres, IBP LU Chapter.","1,2,3,4,5,6,7,8,9,10,11,12,13","RESOLUTION 286-2013.pdf","21","2013-09-05","0");
INSERT INTO tbl_resolution VALUES("287 - 2012","","Approve Mun Ord # 44, s 2012, of the SB of Burgos, La Union, “An Ord Declaring Nov 27 as the Foundation Day of the Mun of Burgos, La Union”","10","Resolution 287-2012.pdf","21","2012-08-23","0");
INSERT INTO tbl_resolution VALUES("287 - 2013","","Approve the FY 2013 GF SB # 5, of San Gabriel, La Union.","1","RESOLUTION 287-2013.pdf","21","2013-09-05","0");
INSERT INTO tbl_resolution VALUES("288 - 2012","","Return Ord # 6, emb in Res # 357, s 2012, of the SB of Bauang, LU, “An Ord Penalizing Any Person Who Shall Cross or Breach a Police & Fire Line Cordon in the Mun of Bauang, LU”","10","Resolution 288-2012.pdf","21","2012-08-23","0");
INSERT INTO tbl_resolution VALUES("288 - 2013","","MOA on the creation of Multi-Partite Monitoring Team (MMT), Environmental Monitoring Fund and Environmental Guarantee Fund & authorizing Gov MCO to enter such MOA.","1","RESOLUTION 288-2013.pdf","21","2013-09-05","0");
INSERT INTO tbl_resolution VALUES("289 - 2012","","Approve Mun Ord # 27-2012, of the SB of Agoo, LU, “An Ord Amending Sec 3, 3.1 of Mun Ord # 17, s 2012, An Ord Authorizing the Proposed Borrowing of the Mun of Agoo, LU in the Amount of P25 M to Fund the Agoo Public Cemetery Expansion (Phase II)","10","Resolution 289-2012.pdf","21","2012-08-23","0");
INSERT INTO tbl_resolution VALUES("289 - 2013","","Return for amendment, Mun Ord # 03, s 2013, of the SB of Sto. Tomas, LU, “Health & Sanitation Code of the Mun of Sto. Tomas, LU”","9","RESOLUTION 289-2013.pdf","21","2013-09-05","0");
INSERT INTO tbl_resolution VALUES("290 - 2012","","Approve Mun Ord # 21-2012, of the SB of Agoo, LU, “An Ord Amending the Title & Sec VI of Mun Ord # 12-2012, An Ord Empowering the 49 Brgys. In the Mun of Agoo, LU to Conduct Regular & Sustained Community Based Research & Destroy of Breeding Places of Mosquitoes & Providing Penalties Thereof”","10","Resolution 290-2012.pdf","21","2012-08-23","0");
INSERT INTO tbl_resolution VALUES("290 - 2013","","Return for amendment, Mun Ord # 10-2013, of the SB of San Juan, LU, “An Ord Promulgating Policies & Prescribing Measures for the Prevention & Control of HIV/AIDS in the Mun of San Juan”.","9","RESOLUTION 290-2013.pdf","21","2013-09-05","0");
INSERT INTO tbl_resolution VALUES("291 - 2012","","Declare a vacancy in the Members of the SP w/ the resignation of BM Henry Bacurnay, Jr. effective August 21, 2012","10","Resolution 291-2012.pdf","21","2012-08-23","0");
INSERT INTO tbl_resolution VALUES("291 - 2013","","Return for amendment, Mun Ord # 01, s 2013, of the SB of Balaoan, LU, “An Ord Creating the Mun HIV/AIDS Council”.","9","RESOLUTION 291-2013.pdf","21","2013-09-05","0");
INSERT INTO tbl_resolution VALUES("292 - 2012","","Condole w/ the bereaved family of ex-Mayor Alfredo B. Abansi, Burgos, La Union.","3,5,7,9,10,11,12,13,18,19,20","Resolution 292-2012.pdf","21","2012-08-30","0");
INSERT INTO tbl_resolution VALUES("292 - 2013","","TOPPLU 2013\n\n1.	PCI Artemio C Infante\n2.	PO3 Lani E Peralta\n3.	PS Eduardo L Danguecan Jr\n4.	PCI Marlon D Paiste\n5.	PSI Christian Joy Q Alqueza\n6.	PO3 Ritche M Fabian\n7.	SPO1 Nieva Liza C Castro\n8.	PSI Rogelio B Miedes\n9.	PS Raymund C Calano\n10.	SPO1 Leila Mariecres B Arellano","1,2,3,5,6,7,8,9,10,11,12,13","RESOLUTION 292-2013.pdf","21","2013-09-05","0");
INSERT INTO tbl_resolution VALUES("293 - 2012","","Condole with the bereaved family of Ex-ABC Pres Pacifico S. Jucutan, Sr., Bagulin, LU","3,5,7,9,10,11,12,13,18,19,20","Resolution 293-2012.pdf","21","2012-08-30","0");
INSERT INTO tbl_resolution VALUES("293 - 2013","","Approve the website of the Province of La Union for Tourism Promotion.","2","RESOLUTION 293-2013.pdf","21","2013-09-05","0");
INSERT INTO tbl_resolution VALUES("294 - 2012","","Return Mun Ord # 02, s 2012, of the SB of Sto. Tomas, LU, “An Ord Enacting the Revision of the Comprehensive Traffic Rules & Regulations & Transportation Code of the Mun of Sto. Tomas, LY & Providing Penalties to Violations Thereof”","9","Resolution 294-2012.pdf","21","2012-08-30","0");
INSERT INTO tbl_resolution VALUES("294 - 2013","","Approve Res # 31, s 2013, of the SB of Tubao, LU, “Temporarily Suspending the Issuance of Public Utility Franchise to Operate w/n the Territorial Jurisdiction of the Mun of Tubao, LU”.","4","RESOLUTION 294-2013.pdf","21","2013-09-05","0");
INSERT INTO tbl_resolution VALUES("295 - 2012","","Return Mun Ord # 002-2012, of the SB of Rosario, LU, “An Ord Enacting the New Traffic Management of the Mun of Rosario, Province of LU & Implementing a Unified Route System for Tricycles”","9","Resolution 295-2012.pdf","21","2012-08-30","0");
INSERT INTO tbl_resolution VALUES("295 - 2013","","Approve Res # 32, s 2013, of the SB of Tubao, LU, “requesting Mayor Jonalyn Fontanilla to re-organize the Mun Tourism Council of the Mun”.","4","RESOLUTION 295-2013.pdf","21","2013-09-05","0");
INSERT INTO tbl_resolution VALUES("296 - 2012","","Approve EO # 11, s 2012, of the Mun Mayor of Pugo, La Union, “To Re-organize the Mun Health Board of Pugo, La Union”","18","Resolution 296-2012.pdf","21","2012-08-30","0");
INSERT INTO tbl_resolution VALUES("296 - 2013","","Approve the Consolidated CY 2013 Supplemental AIP of the diff offices:\n\n1.	Office of the Prov’l Governor\n2.	Office of the Prov’l Agriculturist\n","1","RESOLUTION 296-2013.pdf","21","2013-09-05","0");
INSERT INTO tbl_resolution VALUES("297 - 2012","","Approve SB # 2, of the Economic Enterprise involving a total appropriation of P2,279,500.00","18","Resolution 297-2012.pdf","21","2012-08-30","0");
INSERT INTO tbl_resolution VALUES("297 - 2013","","Congratulate the Mun of Agoo as a Nat’l Awardee of the Excellence in Literacy for Outstanding LGU – Mun Level.","1,2,3,4,5,6,7,8,9,10,11,12,13","RESOLUTION 297-2013.pdf","21","2013-09-05","0");
INSERT INTO tbl_resolution VALUES("298 - 2012","","P10,000.00 as F/A to the family of Ms. Mica Almorfe, Nagsabaran Norte, Balaoan, La Union.","3,18","Resolution 298-2012.pdf","21","2012-08-30","0");
INSERT INTO tbl_resolution VALUES("298 - 2013","","Urge Cong. VFO, Cong FrannyEriguel, & Cong. Pacoy Ortega III to immediately & w/o delay sponsor, co-author, and file a HB entitled: “An Act Establishing the Final Forestland Boundary of the Prov of LU”.","4","RESOLUTION 298-2013.pdf","21","2013-09-12","0");
INSERT INTO tbl_resolution VALUES("299 - 2012","","P10,000.00 as F/A to the family of Mr. SabinoMosquite, Lioac Sur, Naguilian, LU","3,18","Resolution 299-2012.pdf","21","2012-08-30","0");
INSERT INTO tbl_resolution VALUES("299 - 2013","","Extend gratitude to all elementary and secondary teachers and commending them for a job well done.","1,2,3,4,5,6,7,8,9,10,11,12,13","RESOLUTION 299-2013.pdf","21","2013-09-12","0");
INSERT INTO tbl_resolution VALUES("300 - 2012","","P10,000.00 as F/A to the family of Mr. Jhun Ray Gapuz, Tanqui, CSF, LU","3,18","Resolution 300-2012.pdf","21","2012-08-30","0");
INSERT INTO tbl_resolution VALUES("300 - 2013","","Extend appreciation to all tertiary/college Masteral, Doctorate, Technical/Vocational Courses Professors, Instructors and Tutors and commending them for a job well done","1,2,3,4,5,6,7,8,9,11,12,13","RESOLUTION 300-2013.pdf","21","2013-09-12","0");
INSERT INTO tbl_resolution VALUES("301 - 2012","","P10,000.00 as F/A to the family of Mr. Jimmy Jesus Gapuz, Tanqui, CSF, LU","3,18","Resolution 301-2012.pdf","21","2012-08-30","0");
INSERT INTO tbl_resolution VALUES("301 - 2013","","Approve the FY 2013 GF SB # 4, of Balaoan, La Union.","1","RESOLUTION 301-2013.pdf","21","2013-09-12","0");
INSERT INTO tbl_resolution VALUES("302 - 2012","","P10,000.00 as F/A to the family of Mr. Michael Estacio, Balaoc, Sto. Tomas, La Union.","3,18","Resolution 302-2012.pdf","21","2012-08-30","0");
INSERT INTO tbl_resolution VALUES("302 - 2013","","Approve Res # 34, s 2013, of the SB of Tubao, La Union, “Requesting Mayor Jonalyn Fontanilla, to adopt the Propose Plan on the Ongoing Dev’t of the Pepito’s Park of the Mun of Tubao, La Union”.","4","RESOLUTION 302-2013.pdf","21","2013-09-12","0");
INSERT INTO tbl_resolution VALUES("303 - 2012","","P10,000.00 as F/A to the family of Mr. ReynanteFrigillana, San Juan East, Aringay, LU","3,18","Resolution 303-2012.pdf","21","2012-08-30","0");
INSERT INTO tbl_resolution VALUES("303 - 2013","","Approve Mun Ord # 13-2013, of the SB of San Juan, LU, “An Ord Naming and Declaring Acacia (SamaneaSaman) and Yellow Bell as the Mun Tree and Flower, Respectively”.","10","RESOLUTION 303-2013.pdf","21","2013-09-12","0");
INSERT INTO tbl_resolution VALUES("304 - 2012","","P10,000.00 as F/A to the family of Mr. Jessie Boy Calaur, Central East, Bauang, LU","3,18","Resolution 304-2012.pdf","21","2012-08-30","0");
INSERT INTO tbl_resolution VALUES("304 - 2013","","Return Res # 30, s 2013, of the SB of Tubao, La Union, “Requesting Cong. FrannyEriguel, & Mayor Sandra Eriguel that the on-going dev’t of the People’’s Park be named as Franny’s Jurassic Park & Sandra’s Zoological Park of the Mun of Tubao, La Union”.","10","RESOLUTION 304-2013.pdf","21","2013-09-12","0");
INSERT INTO tbl_resolution VALUES("305 - 2012","","P10,000.00 as F/A to the family of Mr. Eduardo Solomon, Sta. Monica, Bauang, LU","3,18","Resolution 305-2012.pdf","21","2012-08-30","0");
INSERT INTO tbl_resolution VALUES("305 - 2013","","Support the Petition filed w/ Supreme Court asking to compel the Nat’l Gov’t to give the LGUs their IRA.","4","RESOLUTION 305-2013.pdf","21","2013-09-19","0");
INSERT INTO tbl_resolution VALUES("306 - 2012","","Approve the CY 2012 Supplemental AIP for the Equipment Upgrading of Balaoan Dist Hosp","1","Resolution 306-2012.pdf","21","2012-09-06","0");
INSERT INTO tbl_resolution VALUES("306 - 2013","","MOA w/ DSWD & the Mun Gov’t of Tubao, LU re: implementation of the Bottom-Up Budgeting (BUB) Project.","1","RESOLUTION 306-2013.pdf","21","2013-09-19","0");
INSERT INTO tbl_resolution VALUES("307 - 2012","","Approve the FY 2012 GF SB # 5, of Agoo, La Union.","1","Resolution 307-2012.pdf","21","2012-09-06","0");
INSERT INTO tbl_resolution VALUES("307 - 2013","","MOA w/ DA RFO, re: fund transfer amounting P91,000.00 for the Planning Workshop for the Updating of Agriculture & Fisheries Modernization (AFMP) 2013-2016","3","RESOLUTION 307-2013.pdf","21","2013-09-19","0");
INSERT INTO tbl_resolution VALUES("308 - 2012","","Approve the FY 2012 GF SB # 6, of Agoo, La Union.","1","Resolution 308-2012.pdf","21","2012-09-06","0");
INSERT INTO tbl_resolution VALUES("308 - 2013","","Commend Hon. Nonnatus Caesar Rojas, former NBI Director, for rekindling the flickering light of Delicadeza or Sense of Propriety","4,10","RESOLUTION 308-2013.pdf","21","2013-09-19","0");
INSERT INTO tbl_resolution VALUES("309 - 2012","","Approve the FY 2012 GF SB # 2, of the City of San Fernando, La Union.","1","Resolution 309-2012.pdf","21","2012-09-06","0");
INSERT INTO tbl_resolution VALUES("309 - 2013","","Outstanding Teachers 2013:\n\nELEMENTARY\n1. Lourdes A. Floria\n2. Mary Jane T. Ganggangan\n3. Gloria F. Carbonell\n4. Arthur N. Balala\n5. Yolanda L. Valdez\n6. Jeanette Z. Bagtas\n\nSECONDARY\n1.	Leticia M. Balanon\n2.	Fe D. Gali\n3.	Yolanda P. San Agustin\n4.	Gema D. Jarata","6","RESOLUTION 309-2013.pdf","21","2013-09-19","0");
INSERT INTO tbl_resolution VALUES("310 - 2012","","Approve EO # 08, s 2012, of the Mun Mayor of Pugo, LU, “An Order Creating the Pugo Mun Technical Committee on Organic Agricultural Program & for Other Purposes”","3","Resolution 310-2012.pdf","21","2012-09-06","0");
INSERT INTO tbl_resolution VALUES("310 - 2013","","Approve Mun Ord # 02, s 2013, emb in Res # 23, s 2013, of the SB of Balaoan, LU, “An Ord Establishing the Balaoan Academic Scholarship Assistance (BASA) Program for the Poor But Deserving Students of the Mun of Balaoan & Appropriating Funds Therefore”.","6","RESOLUTION 310-2013.pdf","21","2013-09-19","0");
INSERT INTO tbl_resolution VALUES("311 - 2012","","Approve EO # 12, s 2012, of the Mun Mayor of Pugo, LU, “Re-organizing/Updating of the Mun Anti-Drug Abuse Council of Pugo, LU (MADAC)”","3","Resolution 311-2012.pdf","21","2012-09-06","0");
INSERT INTO tbl_resolution VALUES("311 - 2013","","MOA w/ DA for the full implementation of the Agriculture Fishery Modernization Program (AFMP) as one of the Components of the Phil Rural Dev’t Program (PRDP) of the Nat’l Gov’t","3","RESOLUTION 311-2013.pdf","21","2013-09-19","0");
INSERT INTO tbl_resolution VALUES("312 - 2012","","Condole with the bereaved family of Mrs. Pacifica C. Posadas.","1,3,5,7,9,10,11,12,13,18,19,20","Resolution 312-2012.pdf","21","2012-09-06","0");
INSERT INTO tbl_resolution VALUES("312 - 2013","","MOA w/ DENR, 1590 Energy Corp., LGU Bauang & Brgy Payocpoc Sur in connection w/ the “Creation of the Multi-Partite Monitoring Team, Environmental Monitoring Fund & Environmental Guarantee Fund & Related Matters at the Bauang Diesel Power Plant ","1","RESOLUTION 312-2013.pdf","21","2013-09-19","0");
INSERT INTO tbl_resolution VALUES("313 - 2012","","Revise the amount under SP Res # 247-2012 for the rehab of Santol-San Gabriel Rd from P1M to P5M","1","Resolution 313-2012.pdf","21","2012-09-13","0");
INSERT INTO tbl_resolution VALUES("313 - 2013","","MOA with DA in connection with the implementation of the PRDP.","3,4","RESOLUTION 313-2013.pdf","21","2013-09-26","0");
INSERT INTO tbl_resolution VALUES("314 - 2012","","Approve the FY 2012 GF SB # 7, of Agoo, La Union.","1","Resolution 314-2012.pdf","21","2012-09-13","0");
INSERT INTO tbl_resolution VALUES("314 - 2013","","Approve implementation of PRDP of the DA w/ the commitment of the PGLU to provide its counterpart under the I-BUILD (10% LGU Equity), and I-REAP (20% LGU Equity)","1","RESOLUTION 314-2013.pdf","21","2013-09-26","0");
INSERT INTO tbl_resolution VALUES("315 - 2012","","Support HB # 6395 “Mandating All Public Utility Buses Plying the Streets of Metro Manila & all Prov’l Rds in the Country to Install Speed Limiters”","10","Resolution 315-2012.pdf","21","2012-09-13","0");
INSERT INTO tbl_resolution VALUES("315 - 2013","","Appropriate P50,000.00 for the 2013 10 Outstanding Elem and Secondary School Teachers.","1","RESOLUTION 315-2013.pdf","21","2013-09-26","0");
INSERT INTO tbl_resolution VALUES("316 - 2012","","Assure that whatever amount will be provided by the Office of the President for the prov’l roadways/infra damaged during Typhoon Helen will be completed by the PGLU","1,18","Resolution 316-2012.pdf","21","2012-09-13","0");
INSERT INTO tbl_resolution VALUES("316 - 2013","","MOA w/ DA re: fund transfer amounting P4M to support the implementation of the “Sustaining the Rice Self-Sufficiency Program of LU”","1","RESOLUTION 316-2013.pdf","21","2013-09-26","0");
INSERT INTO tbl_resolution VALUES("317 - 2012","","Approve SB # 3 of the Economic Enterprise involving P965,182.00","1","Resolution 317-2012.pdf","21","2012-09-13","0");
INSERT INTO tbl_resolution VALUES("317 - 2013","","Adjust SG of Ms. Bresilda Jucar to SG 3/Step 1 effective September 29, 2013","1","RESOLUTION 317-2013.pdf","21","2013-09-26","0");
INSERT INTO tbl_resolution VALUES("318 - 2012","","Authorize the Governor to waive our rights to confidentiality of information relating to the Secrecy of Bank Deposits","1","Resolution 318-2012.pdf","21","2012-09-13","0");
INSERT INTO tbl_resolution VALUES("318 - 2013","","Approve the FY 2013 GF SB # 1, of the SB of Santol, La Union.","1","RESOLUTION 318-2013.pdf","21","2013-09-26","0");
INSERT INTO tbl_resolution VALUES("319 - 2012","","MOA with BFAR re: turn-over of 1 patrol boat for fishery law enforcement, coastal resource management & rescue & relief operations.","3","Resolution 319-2012.pdf","21","2012-09-13","0");
INSERT INTO tbl_resolution VALUES("319 - 2013","","Approve the FY 2013 GF SB # 2, of the SB of Pugo, La Union.","1","RESOLUTION 319-2013.pdf","21","2013-09-26","0");
INSERT INTO tbl_resolution VALUES("320 - 2012","","Condole with family of the late Rev. Fr. Esteban M. Mosuela, Bangar, La Union.","1,3,5,7,9,10,11,12,13,18,19,20","Resolution 320-2012.pdf","21","2012-09-13","0");
INSERT INTO tbl_resolution VALUES("320 - 2013","","Approve the FY 2013 GF SB #  3, of Sudipen, La Union.","1","RESOLUTION 320-2013.pdf","21","2013-09-26","0");
INSERT INTO tbl_resolution VALUES("321 - 2012","","Condole with the bereaved family of SBM Teresita Dumaguin.","1,3,5,7,9,10,11,12,13,18,19,20","Resolution 321-2012.pdf","21","2012-09-13","0");
INSERT INTO tbl_resolution VALUES("321 - 2013","","Contract of Consultancy with Dr. Manuel R. Borja as OPG Consultant on CSF Dev’t Affairs.","1","RESOLUTION 321-2013.pdf","21","2013-09-26","0");
INSERT INTO tbl_resolution VALUES("322 - 2012","","Commend PNP for recovering the getaway vehicle used to assassinate Mayor Dante Garcia of Tubao, La Union.","20","Resolution 322-2012.pdf","21","2012-09-13","0");
INSERT INTO tbl_resolution VALUES("323 - 2012","","Approve SB # 2, of the province in the amount of P10,350,447.34","1","Resolution 323-2012.pdf","21","2012-09-20","0");
INSERT INTO tbl_resolution VALUES("323 - 2013","","Approve the CY2014 Supplemental AIP of the Province","1","RESOLUTION 323-2013.pdf","21","2013-10-02","0");
INSERT INTO tbl_resolution VALUES("324 - 2012","","Approve the FY 2012 GF SB # 6, of Bagulin, La Union.","1","Resolution 324-2012.pdf","21","2012-09-20","0");
INSERT INTO tbl_resolution VALUES("324 - 2013","","Approve the FY 2013 GF SB # 1, of Bacnotan, La Union.","1","RESOLUTION 324-2013.pdf","21","2013-10-02","0");
INSERT INTO tbl_resolution VALUES("325 - 2012","","Approve the FY 2012 GF SB # 7, of Bagulin, La Union.","1","Resolution 325-2012.pdf","21","2012-09-20","0");
INSERT INTO tbl_resolution VALUES("325 - 2013","","Approve Mun Ord # 01-2013, of the SB of San Juan, LU, “An Ord Authorizing the Zoning of Cockpit in Brgy Nadsaag, as Amended”.","7","RESOLUTION 325-2013.pdf","21","2013-10-02","0");
INSERT INTO tbl_resolution VALUES("326 - 2012","","Condole with the bereaved family of Mr. Norberto Paulino.","1,3,5,7,9,10,11,12,13,18,19,20","Resolution 326-2012.pdf","21","2012-09-20","0");
INSERT INTO tbl_resolution VALUES("326 - 2013","","Approve Mun Ord # 11-2013, of the SB of San Juan, LU, “An Ord Allowing the Relocation of the Present Dumpsite in Brgy Lubing”","7","RESOLUTION 326-2013.pdf","21","2013-10-02","0");
INSERT INTO tbl_resolution VALUES("327 - 2012","","Condole with the bereaved family of Mrs. Valeriana S. Valencia.","1,3,5,7,9,10,11,12,13,18,19,20","Resolution 327-2012.pdf","21","2012-09-20","0");
INSERT INTO tbl_resolution VALUES("327 - 2013","","Approve Mun Ord # 50-2013, of the SB of Luna, LU, “An Ord Creating a Local Youth Dev’t Council of the Mun of Luna, LU & for Other Purposes”","10","RESOLUTION 327-2013.pdf","21","2013-10-02","0");
INSERT INTO tbl_resolution VALUES("328 - 2012","","Condole with the bereaved family of Mrs. Priscilla A. Boado.","1,3,5,7,9,10,11,12,13,18,19,20","Resolution 328-2012.pdf","21","2012-09-20","0");
INSERT INTO tbl_resolution VALUES("328 - 2013","","Approve Mun Ord # 15-2013, of the SB of San Juan, LU, “An Ord Creating the San Juan Tourism & Cultural Council Defining its Composition, Duties & Functions”","4","RESOLUTION 328-2013.pdf","21","2013-10-02","0");
INSERT INTO tbl_resolution VALUES("329 - 2012","","Approve Mun Ord # 20-2012, of the SB of Agoo, LU, “An Ord Creating a Land Information Office to Facilitate the Land Titling of Public Lands in Agoo, LU”","10","Resolution 329-2012.pdf","21","2012-09-27","0");
INSERT INTO tbl_resolution VALUES("329 - 2013","","Approve Ord # 18, s 2013, of the SB of Naguilian, LU, “An Ord to Declare Kakawate or Madre de Cacao Known Scientifically as GliciridiaSepium as the Official Tree of the Mun of Naguilian, LU”","10","RESOLUTION 329-2013.pdf","21","2013-10-02","0");
INSERT INTO tbl_resolution VALUES("330 - 2012","","Approve Mun Ord # 08-2012, of the SB of San Juan, LU, “An Ord Naming the 2 New Bldgs w/n the San Juan Public Market”","10","Resolution 330-2012.pdf","21","2012-09-27","0");
INSERT INTO tbl_resolution VALUES("330 - 2013","","Approve Mun Ord # 5-2013, of the SB of San Gabriel, LU, “An Ord Requiring the Foodservice Industry w/n the Territorial Jurisdiction of the Mun of San Gabriel, LU to Include ½ Cup of Cooked Rice in their Menu”","10","RESOLUTION 330-2013.pdf","21","2013-10-02","0");
INSERT INTO tbl_resolution VALUES("331 - 2012","","Confirm the Awardees of the 10 Most Outstanding Public School Teachers for SY 2012-2013.","1,3,5,7,9,10,11,12,13,18,19,20","Resolution 331-2012.pdf","21","2012-09-27","0");
INSERT INTO tbl_resolution VALUES("331 - 2013","","Require SB Tubao, LU to submit requirements/documents relative to their Res # 33, s 2013 (upgrade Mun Dumpsite from Category 1 to Category 3 Landfill for the construction of an Engineered Sanitary Landfill for Baguio City)","10","RESOLUTION 331-2013.pdf","21","2013-10-02","0");
INSERT INTO tbl_resolution VALUES("332 - 2012","","Service Level Agreement (SLA) w/ DOH-CHD-ILOCOS in connection w/ the management & implementation of the Annual Operational Plan (AOP) of the Provincewide Investment Plan for Health for CY 2012","18","Resolution 332-2012.pdf","21","2012-09-27","0");
INSERT INTO tbl_resolution VALUES("332 - 2013","","Approve the FY 2013 GF SB # 6, of Agoo, La Union.","8","RESOLUTION 332-2013.pdf","21","2013-10-10","0");
INSERT INTO tbl_resolution VALUES("333 - 2012","","Approve the programming for RA 7171 & Burley Excise Tax amounting P105,947,639.00","1","Resolution 333-2012.pdf","21","2012-10-04","0");
INSERT INTO tbl_resolution VALUES("333 - 2013","","Approve Mun Ord # 165, “Transport & Traffic Code of Aringay, La Union.”","4","RESOLUTION 333-2013_001.pdf","21","2013-10-10","0");
INSERT INTO tbl_resolution VALUES("334 - 2012","","Approve Ord # 2012-99, of the SB of Pugo, LU, “An Ord Abolishing the Position of Midwife III, SG 13 & Creating the Position of Midwife I, SG 9, under the Office of the Mun Health Officer”","12","Resolution 334-2012.pdf","21","2012-10-04","0");
INSERT INTO tbl_resolution VALUES("334 - 2013","","Return Ord # 161, of the SB of Aringay, La Union, “An Ord to Amend Sec 13, 19 & 20 of Ord # 151, “The Scholarship Program of the Mun of Aringay, La Union”","6","RESOLUTION 334-2013.pdf","21","2013-10-10","0");
INSERT INTO tbl_resolution VALUES("335 - 2012","","Approve Mun Ord # 10, s 2012, of the SB of San Juan, LU, “An Ord Authorizing the Conversion of the Position of Midwife II to Med Tech in the Plantilla of Regular Personnel”","12","Resolution 335-2012.pdf","21","2012-10-04","0");
INSERT INTO tbl_resolution VALUES("335 - 2013","","Return Ord # 164, of the SB of Aringay, La Union “The Anti-Truancy Ord for Elem & H/S Students in Aringay, La Union”","6","RESOLUTION 335-2013.pdf","21","2013-10-10","0");
INSERT INTO tbl_resolution VALUES("336 - 2012","","Approve Res # 377, s 2012, of the SB of Bauang, LU, “Res Authorizing the Proposed Positions to be Created Under the Office of the Mun Eng’r, this Mun”","12","Resolution 336-2012.pdf","21","2012-10-04","0");
INSERT INTO tbl_resolution VALUES("336 - 2013","","Approve Mun Ord # 7-2013, of the SB of San Gabriel, La Union, “An Ord Regulating the Time of Operation of Business Establishments in the Mun of San Gabriel, La Union”","10","RESOLUTION 336-2013.pdf","21","2013-10-10","0");
INSERT INTO tbl_resolution VALUES("337 - 2012","","MOA with DA re: establishment of 1 Unit Greenhouse Project at Bungol Demo Far, Balaoan, La Union.","2","Resolution 337-2012.pdf","21","2012-10-04","0");
INSERT INTO tbl_resolution VALUES("337 - 2013","","Approve Mun Ord # 6-2013, of the SB of San Gabriel, La Union, “An Ord Declaring & Fixing the First Monday of June Every Year as the Arbor Day or Tree Planting Day of the Mun of San Gabriel, La Union”.","10","RESOLUTION 337-2013.pdf","21","2013-10-10","0");
INSERT INTO tbl_resolution VALUES("338 - 2012","","Congratulate students of BHC Educational Institution Inc., CSF as the Nat’l Champion during the 2012 Phil Society of Youth Science Clubs Science Olympiad – Bracket I (Elem Level), namely:\n\nJosef Alexis F. Estoque\nAndrei Janesa G. Liclican\nJan Vincent A. Simbol\n","1","Resolution 338-2012.pdf","21","2012-10-11","0");
INSERT INTO tbl_resolution VALUES("338 - 2013","","Return Mun Ord # 02-A-2013, of the SB of Agoo, LU, “An Ord Enacting the Code of General Ordinance of the Mun of Agoo, LU & for Other Purposes”.","10","RESOLUTION 338-2013.pdf","21","2013-10-10","0");
INSERT INTO tbl_resolution VALUES("339 - 2012","","Congratulate Ms. Marianne V. Cruz, Bronze Medalist on the 2012 Asia Internat’l Mathematical Olympiad.","1,3,5,7,9,10,11,12,13,18,19,20","Resolution 339-2012.pdf","21","2012-10-11","0");
INSERT INTO tbl_resolution VALUES("339 - 2013","","Condole with the bereaved family of the late Engr. Pablo A. Salanga.","2,3,4,5,6,7,8,9,10,11,12,13","RESOLUTION 339-2013.pdf","21","2013-10-10","0");
INSERT INTO tbl_resolution VALUES("340 - 2012","","Congratulate Mr. Moses Christopher C. Carpio, Silver Medalist on the 2012 8th Asia Cup Stars of the Olympic Math Finals & Outstanding Prize Awardee of the 2012 KMC Internat’l Mathematics Competition","1,3,5,7,9,10,11,12,13,18,19,20","Resolution 340-2012.pdf","21","2012-10-11","0");
INSERT INTO tbl_resolution VALUES("340 - 2013","","MOA with the Office of Sen. Aquilino “Koko” L. Pimentel III, pertaining to the implementation of the Indigency Medical Assistance Program at the Balaoan Dist Hosp in the amt of P200,000.00.","1","RESOLUTION 340-2013.pdf","21","2013-10-17","0");
INSERT INTO tbl_resolution VALUES("341 - 2012","","Approve Mun Ord # 15, s 2012, of the SB of Agoo, LU, “An Ord Requiring All Owners of Hotels, Inns w/ Swimming Pool Facilities & Beach Resorts w/ Cottages for Rent in the Mun of Agoo, LU, to Provide Lifeguards to their Clients/Costumers for their Safety & Security”","10","Resolution 341-2012.pdf","21","2012-10-11","0");
INSERT INTO tbl_resolution VALUES("341 - 2013","","MOA with LGU Bacnotan, LU and HOLCIM Phils Inc in connection with the Emergency Repair of Ballogo and NarraBridge Approaches along Rodriguez Rd (Bitalag to Quirino), Bacnotan, LU","1","RESOLUTION 341-2013.pdf","21","2013-10-17","0");
INSERT INTO tbl_resolution VALUES("342 - 2012","","Return for correction/modification/amendments Mun Ord # 07-2012, of the SB of San Juan, LU, “An Ord Enacting the Code of General Ordinances of the Mun of San Juan, LU & for Other Purposes”","10","Resolution 342-2012.pdf","21","2012-10-11","0");
INSERT INTO tbl_resolution VALUES("342 - 2013","","Condole with the bereaved family of the late Eng’r Mariano M. Chan.","1,2,3,4,5,6,7,8,9,10,11,12,13","RESOLUTION 342-2013.pdf","21","2013-10-17","0");
INSERT INTO tbl_resolution VALUES("343 - 2012","","MOA with DA RFU re: establishment of a Plant Nursery under the High Value Crops Dev’t Program to be funded by DA.","3","Resolution 343-2012.pdf","21","2012-10-11","0");
INSERT INTO tbl_resolution VALUES("343 - 2013","","Condole with the bereaved family of the late BC Rodrigo M. Hernandez, Santiago Norte, Caba, La Union","1,2,3,4,5,7,8,9,10,11,12,13","RESOLUTION 343-2013.pdf","21","2013-10-17","0");
INSERT INTO tbl_resolution VALUES("344 - 2012","","MOA w/ MGB, DENR re: conduct of Hydrogeological & Geophysical Investigations at the Prov’l Capitol, Prov’l Motorpool& Prov’l Sports Complex Site, Brgy. Sibuan-Otong, Masicong&Pias, CSF, Rosario Dist Hosp & at the LU Honeybee Processing Center","1","Resolution 344-2012.pdf","21","2012-10-11","0");
INSERT INTO tbl_resolution VALUES("344 - 2013","","Return for amendment, Ord # 166, of the SB of Aringay, LU, “To Amend Sec 5, 6, 8 & 9, of Ord # 150, To Penalize Owners and/or Proprietors of Internet Café/Computer & Video Game Shops & Billiard Hall in Permitting Students/Pupils to Enter their Establishments During School Days & Providing Penalties Thereof”","2","RESOLUTION 344-2013.pdf","21","2013-10-17","0");
INSERT INTO tbl_resolution VALUES("345 - 2012","","Congratulate pupils of BHC for winning in the various Internat’l& Nat’l Competitions","1","Resolution 345-2012.pdf","21","2012-10-11","0");
INSERT INTO tbl_resolution VALUES("345 - 2013","","Return for amendment, Ord # 162, of the SB of Aringay, La Union, “An Ord Enacting the Local Investments & Incentives Code of Aringay, La Union”","2","RESOLUTION 345-2013.pdf","21","2013-10-17","0");
INSERT INTO tbl_resolution VALUES("346 - 2012","","Approve SB # 4, of the Economic Enterprise involving P3,253,000.00","1","Resolution 346-2012.pdf","21","2012-10-18","0");
INSERT INTO tbl_resolution VALUES("346 - 2013","","Approve Mun Ord # 99, s 2013, of the SB of Sudipen, LU, “An Ord Institutionalizing a Voluntary Blood Donation Program in the Mun of Sudipen, LU & Appropriating Funds Thereof”","9","RESOLUTION 346-2013.pdf","21","2013-10-17","0");
INSERT INTO tbl_resolution VALUES("347 - 2012","","MOA with DOH, PHIC, public health sector facilities, private sector hospitals, pharmaceutical companies, drugstores, pharmacies, logistics & distribution companies, alternative distribution points of outlets, transportation/companies/outlets, association of midwives/birthing homes & independent midwife practitioners & civil society organizations in connection w/ the expanded implementation of Service Delivery Networks (SDN) for Family Planning (FP) & Maternal, Neonatal, Child Health & Nutrition (MNCHN)","1,3,10,18","Resolution 347-2012.pdf","21","2012-10-18","0");
INSERT INTO tbl_resolution VALUES("347 - 2013","","Return for amendment, Mun Ord # 13-2013, of the SB of Agoo, LU, “An Ord Prohibiting Any Fishing Activity w/n the 200 Meters Radius from the Existing Artificial Reefs Dropped in the Mun Waters of Agoo, LU & Providing Penalties for Violation Thereof”","10","RESOLUTION 347-2013.pdf","21","2013-10-17","0");
INSERT INTO tbl_resolution VALUES("348 - 2012","","MOA with City Health & Mun RHUs in connection w/ the establishment of a partnership & referral system in order to improve the delivery of quality health care to all","5","Resolution 348-2012.pdf","21","2012-10-18","0");
INSERT INTO tbl_resolution VALUES("348 - 2013","","Approve Ord # 18, s 2013, of the SB of Naguilian, LU, “An Ord Requiring Gram Staining on GRO Employed in Videoke Establishments & Sing-Along Bars w/n the Territorial Jurisdiction of the Mun of Naguilian, LU, Providing Penalties for Non-Compliance & Appropriating Funds for the Purpose”.","10","RESOLUTION 348-2013.pdf","21","2013-10-17","0");
INSERT INTO tbl_resolution VALUES("349 - 2012","","MOA w/ City Health & Mun RHUs in connection w/ the establishment of a partnership & referral system in order to improve the delivery of quality health care to all","1","Resolution 349-2012.pdf","21","2012-10-18","0");
INSERT INTO tbl_resolution VALUES("349 - 2013","","Approve Ord # 158, of the SB of Aringay, La Union, “An Ord Initiating a System for Partnership in Local Governance B/n the Mun Gov’t and the People of Aringay”","10","RESOLUTION 349-2013.pdf","21","2013-10-17","0");
INSERT INTO tbl_resolution VALUES("350 - 2012","","Approve Res # 30, s 2012, of the SB of San Juan, LU, “A Res Approving the AIP of the Local Gov’t of San Juan for the CY 2013”","1","Resolution 350-2012.pdf","21","2012-10-18","0");
INSERT INTO tbl_resolution VALUES("350 - 2013","","Approve Ord # 159, of the SB of Aringay, LU, “An Ord Prohibiting the Burning of Agricultural Residues Particularly Rice Straw & Other Biodegradable Materials for Compost Making & Utilization in the Mun of Aringay, LU & Providing Penalties for the Violation Thereof”.","10","RESOLUTION 350-2013.pdf","21","2013-10-17","0");
INSERT INTO tbl_resolution VALUES("351 - 2012","","Approve the request of PHILKO UBINS LTS Corp, requesting for clearance/permit to install poles, aerials HDD & open trench cables at the north-western of GLOBE Telecom in front of Caltex Gas Station, at Central West, Bauang.","1,18","Resolution 351-2012.pdf","21","2012-10-18","0");
INSERT INTO tbl_resolution VALUES("351 - 2013","","Approve the request of Mr. LunioSina, INTELE Builders & Dev’t Corp to excavate along the shoulder of Manila North Rd for the construction/installation of concrete poles for fiber optic cable","11","RESOLUTION 351-2013_001.pdf","21","2013-10-17","0");
INSERT INTO tbl_resolution VALUES("352 - 2012","","Approve the request of PHILKO UBINS LTD Corp. requesting for the clearance/permit to install poles, aerials HDD & open trench cables along the shoulder of the Manila North Rd, southwestern side of Agoo Cement Center","1,18","Resolution 352-2012.pdf","21","2012-10-18","0");
INSERT INTO tbl_resolution VALUES("352 - 2013","","Endorse the Draft DENR Admin Order “Declaring & Establishing a Portion of the Public Forest Located in BrgysCadaclanb, Apaleng&Cabarsican, SFC Under Land Classification Map No. 1395 Site of the LU Botanical & Zoological Garden & Agroforestry Area” to Sec. Ramon Paje, DENR Sec.","2,3,4,5,6,7,8,9,10,11,12,13","RESOLUTION 352-2013.pdf","21","2013-10-24","0");
INSERT INTO tbl_resolution VALUES("353 - 2012","","Approve the request of PLDT to excavate along the shoulders of Manila North Rd regarding civil works for the creation of fiber connection between LUCLS &Dagupan at the ff splice locations: (1) Lossoc Bridge, Bauang; (2) Bauang Bridge; (3) San Vicente, Agoo","1,18","Resolution 353-2012.pdf","21","2012-10-18","0");
INSERT INTO tbl_resolution VALUES("353 - 2013","","Approve the FY 2013 GF SB # 1, of Aringay, La Union.","11","RESOLUTION 353-2013.pdf","21","2013-10-24","0");
INSERT INTO tbl_resolution VALUES("354 - 2012","","Return Mun Ord # 43-2012, of the SB of Luna, La Union, “An Ord that Provides the Prevention & Control of Dengue Disease in the Mun of Luna, La Union”","20","Resolution 354-2012.pdf","21","2012-10-18","0");
INSERT INTO tbl_resolution VALUES("354 - 2013","","Approve Ord # 8, s 2013, emb in Res # 12, of the SB of Bauang, LU, “An Ord Establishing Programs for the Career Dev’t of the Mun Employees of the LGU of Bauang, LU, Regardless of their Status of Employment & Providing Funds Thereof”","12","RESOLUTION 354-2013.pdf","21","2013-10-24","0");
INSERT INTO tbl_resolution VALUES("355 - 2012","","Return Mun Ord # 26-2012, of the SB of Agoo, La Union, “An Ord for the Prevention & Control of STD/HIV/AIDS in the Mun of Agoo, La Union”","10","Resolution 355-2012.pdf","21","2012-10-18","0");
INSERT INTO tbl_resolution VALUES("355 - 2013","","COL with DA for allowing the latter to lease a 664.65 sq.m. at Aguila Rd. formerly leased to the Bureau of Animal Industry.","10","RESOLUTION 355-2013.pdf","21","2013-10-24","0");
INSERT INTO tbl_resolution VALUES("356 - 2012","","Contract of Lease w/ GLOBE to lease the 2nd flr of LUPAC Bldg","20","Resolution 356-2012.pdf","21","2012-10-18","0");
INSERT INTO tbl_resolution VALUES("356 - 2013","","Congratulate all newly elected Punong Brgy &Kgds","2,3,4,5,6,7,8,9,10,11,12,13","RESOLUTION 356-2013.pdf","21","2013-10-30","0");
INSERT INTO tbl_resolution VALUES("357 - 2012","","Approve the FY 2012 GF SB # 8, of Bagulin, La Union.","1","Resolution 357-2012.pdf","21","2012-10-25","0");
INSERT INTO tbl_resolution VALUES("357 - 2013","","Extend P100,000.00 to Bohol in connection with the earthquake","4","RESOLUTION 357-2013.pdf","21","2013-10-30","0");
INSERT INTO tbl_resolution VALUES("358 - 2012","","Approve the FY 2012 GF SB # 4, of Balaoan, La Union.","1","Resolution 358-2012.pdf","21","2012-10-25","0");
INSERT INTO tbl_resolution VALUES("358 - 2013","","Extend P50,000.00 to Cebu in connection with the earthquake.","2,3,4,5,6,7,8,9,10,11,12,13","RESOLUTION 358-2013.pdf","21","2013-10-30","0");
INSERT INTO tbl_resolution VALUES("359 - 2012","","Approve the FY 2012 GF SB # 8, of Agoo, La Union.","1","Resolution 359-2012.pdf","21","2012-10-25","0");
INSERT INTO tbl_resolution VALUES("359 - 2013","","Congratulate & commend COMELEC, PNP, & other law enforcement agencies for a peaceful Barangay Election","9,12","RESOLUTION 359-2013.pdf","21","2013-10-30","0");
INSERT INTO tbl_resolution VALUES("360 - 2012","","Approve the FY 2012 GF SB # 1, of Naguilian, La Union.","1","Resolution 360-2012.pdf","21","2012-10-25","0");
INSERT INTO tbl_resolution VALUES("360 - 2013","","Congratulate & commend Mayor Daisy Sayangda as one of the Awardees of the Lingkod Bayan Award or the Presidential Award for Outstanding Public Service of the CSC.","2,3,4,5,6,7,8,9,10,11,12,13","RESOLUTION 360-2013.pdf","21","2013-10-30","0");
INSERT INTO tbl_resolution VALUES("361 - 2012","","Congratulate the Table Tennis Team of Agoo, LU for placing 2nd& Bronze Medalist during the BatangPinoy Games 2012","1,3,5,7,9,10,11,12,13,18,19,20","Resolution 361-2012.pdf","21","2012-10-25","0");
INSERT INTO tbl_resolution VALUES("361 - 2013","","Greet Exec Min Eduardo V. Manalo of INC on his 58th Birth Anniv.","2,3,4,5,6,7,8,9,10,11,12,13","RESOLUTION 361-2013.pdf","21","2013-10-30","0");
INSERT INTO tbl_resolution VALUES("362 - 2012","","P107,330.00 F/A to the Champions of the BatangPinoy 2012","1","Resolution 362-2012.pdf","21","2012-10-25","0");
INSERT INTO tbl_resolution VALUES("362 - 2013","","Authorize Gov MCO or Dr. Gretchen F Aromin  to pick up 1 Ambulance from PCSO.","9","RESOLUTION 362-2013.pdf","21","2013-10-30","0");
INSERT INTO tbl_resolution VALUES("363 - 2012","","Return Res # 89, s 2012, of the SB of Luna, LU, “Res # 12, s 2012, Res Amending Certain Provisions of Mun Ord # 37-2012, Known as the Mun Gender & Dev’t (GAD) Code”","10","Resolution 363-2012.pdf","21","2012-10-25","0");
INSERT INTO tbl_resolution VALUES("363 - 2013","","Approve the CY 2013 Supplemental AIP of MISD under OPG for the maintenance of the CCTV Monitoring System","1","RESOLUTION 363-2013.pdf","21","2013-11-07","0");
INSERT INTO tbl_resolution VALUES("364 - 2012","","Return Res # 90, s 2012, of the SB of Luna, LU, “Res # 13, s 2012, Res Amending Certain Provisions of Mun Ord # 38-2012 Known as the Child Welfare Code of Luna, LU”","10","Resolution 364-2012.pdf","21","2012-10-25","0");
INSERT INTO tbl_resolution VALUES("364 - 2013","","Adjust the SG of Joventino M. Nisperos, Admin Aide II, Balaoan Dist Hosp. from SG 1 S-6 to SG 2 S-6","1","RESOLUTION 364-2013.pdf","21","2013-11-07","0");
INSERT INTO tbl_resolution VALUES("365 - 2012","","Return Mun Ord # 03-2012, of the SB of Agoo, La Union, “An Ord Enacting the Sanitation Code of the Mun of Agoo, La Union”","18","Resolution 365-2012.pdf","21","2012-10-25","0");
INSERT INTO tbl_resolution VALUES("365 - 2013","","Approve Ord # 9-2013, of the SB of San Gabriel, LU, “An Ord Creating the HIV/AIDS Council”.","9","RESOLUTION 365-2013.pdf","21","2013-11-07","0");
INSERT INTO tbl_resolution VALUES("366 - 2012","","Accredit NATIONAL CHAPLAINCY PHILS. as NGO","7","Resolution 366-2012.pdf","21","2012-10-25","0");
INSERT INTO tbl_resolution VALUES("366 - 2013","","Approve “The Mun of San Gabriel, La Union Investment & Incentive Code of 2013”","2","RESOLUTION 366-2013.pdf","21","2013-11-07","0");
INSERT INTO tbl_resolution VALUES("367 - 2012","","Condole with the bereaved family of SPM Tars DC Halili, Pampanga.","1,3,5,7,9,10,11,12,13,18,19,20","Resolution 367-2012.pdf","21","2012-10-25","0");
INSERT INTO tbl_resolution VALUES("367 - 2013","","Approve the programming of the RA 7171 Fund in the amount of P71,975,096.00","1","RESOLUTION 367-2013.pdf","21","2013-11-14","0");
INSERT INTO tbl_resolution VALUES("368 - 2012","","Approve SB # 3, of the GF involving P6,292,556.91","1","Resolution 368-2012.pdf","21","2012-10-31","0");
INSERT INTO tbl_resolution VALUES("368 - 2013","","Approve SB # 3 involving the amount of P13,823,621.20","1","RESOLUTION 368-2013.pdf","21","2013-11-14","0");
INSERT INTO tbl_resolution VALUES("369 - 2012","","MOA with the Australian Volunteer for Internat’l Dev’t (AVID) & the Phil Nat’l Volunteer Service Coordinating Agency (PNVSCA) re: deployment of Ms. Diana Maree O’Donnel to assist in the design & implementation of the Organic Agricultural Technology Dev’t Program &establishment of Organic Farm Demo Centers ","3","Resolution 369-2012.pdf","21","2012-10-31","0");
INSERT INTO tbl_resolution VALUES("369 - 2013","","Approve the FY 2013 GF SB # 7, of Agoo, La Union.","1","RESOLUTION 369-2013.pdf","21","2013-11-14","0");
INSERT INTO tbl_resolution VALUES("370 - 2012","","MOA with the partner agencies & selected LGUs of LU for the bamboo dev’t& utilization program for poverty alleviation","3","Resolution 370-2012.pdf","21","2012-10-31","0");
INSERT INTO tbl_resolution VALUES("370 - 2013","","Approve the FY 2013 GF SB # 3, of Bagulin, La Union.","1","RESOLUTION 370-2013.pdf","21","2013-11-14","0");
INSERT INTO tbl_resolution VALUES("371 - 2012","","Condole with the bereaved family of the late ex-VM Lazaro C. Gayo, Tubao","1,3,5,7,9,10,11,12,13,18,19,20","Resolution 371-2012.pdf","21","2012-10-31","0");
INSERT INTO tbl_resolution VALUES("371 - 2013","","Approve the FY 2013 GF SB # 5, of Balaoan, La Union.","1","RESOLUTION 371-2013.pdf","21","2013-11-14","0");
INSERT INTO tbl_resolution VALUES("372 - 2012","","Approve the Consolidated CY 2013 Supplemental AIP of the diff. offices:\n\na. Office of the Prov’l Governor\nb. Office of the Prov’l Vet\nc. Prov’l Health Office\nd. La Union Medical Center\ne. Rosario Dist Hospital\nf. Bacnotan Dist Hospital\n","1","Resolution 372-2012.pdf","21","2012-11-08","0");
INSERT INTO tbl_resolution VALUES("372 - 2013","","Condole with the bereaved family of SBM Alejandrito M. Cariaso, Bacnotan.","1,2,3,4,5,6,7,8,9,10,11,12,13","RESOLUTION 372-2013.pdf","21","2013-11-14","0");
INSERT INTO tbl_resolution VALUES("373 - 2012","","Approve the FY 2012 GF SB # 1, of Santol, La Union.","1","Resolution 373-2012.pdf","21","2012-11-08","0");
INSERT INTO tbl_resolution VALUES("373 - 2013","","Approve the renewal of Contract of 5 PGLU Casual Employees from Jan 1, 2014 to Mar 31, 2014 & 6 PGLU Job Orders from Jan 1, 2014 to June 30, 2014 at the LUMC","1","RESOLUTION 373-2013.pdf","21","2013-11-14","0");
INSERT INTO tbl_resolution VALUES("374 - 2012","","Approve the FY 2012 GF SB # 1, of Bauang, La Union.","1","Resolution 374-2012.pdf","21","2012-11-08","0");
INSERT INTO tbl_resolution VALUES("374 - 2013","","Congratulate the ff BHC students who won in the 9th International Math Competition in Singapore:\n\na.	Ordoño, Brylle Jaden Louise\nb.	Simbol, Ronn Derick\nc.	Argana, Ralph Ernest\nd.	Liclican, SephiMarz\ne.	Simbol, Jan Vincent\nf.	Prestoza, Bert Joseph\ng.	Mendoza, Anthony Gabriel\n","1,2,3,4,5,6,7,8,9,10,11,12,13","RESOLUTION 374-2013.pdf","21","2013-11-14","0");
INSERT INTO tbl_resolution VALUES("375 - 2012","","Approve the FY 2012 GF SB # 2, of Bauang, La Union.","1","Resolution 375-2012.pdf","21","2012-11-08","0");
INSERT INTO tbl_resolution VALUES("375 - 2013","","Appropriate P400,000.00 as F/A to the ff typhoon Yolanda devastated areas:\n\na.	Eastern Samar – P100,000.00\nb.	Leyte – P100,000.00\nc.	Tacloban City – P100,000.00\nd.	Western Samar – P50,000.00\ne.	Northern Cebu – P50,000.00\n","1,2,3,4,5,6,7,8,9,10,11,12,13","RESOLUTION 375-2013.pdf","21","2013-11-14","0");
INSERT INTO tbl_resolution VALUES("376 - 2012","","Approve the FY 2012 GF SB # 3, of Luna, La Union.","1","Resolution 376-2012.pdf","21","2012-11-08","0");
INSERT INTO tbl_resolution VALUES("376 - 2013","","Ask NIA Admin Claro V. Maranan to cause the conversion of the P3M Rehab Fund Extended as a Loan to Bued Communal Irrigation System Dam I Irrigators Service Asso., Inc. of Rosario, LU into a grant under the Bottom-Up Budgeting Program of Pres Aquino & to include other towns or focal municipalities having the same problem as experienced by farmer-irrigators in Rosario","4","RESOLUTION 376- 2013.pdf","21","2013-11-21","0");
INSERT INTO tbl_resolution VALUES("377 - 2012","","Approve the FY 2012 GF SB # 1, of Sto. Tomas, La Union.","1","Resolution 377-2012.pdf","21","2012-11-08","0");
INSERT INTO tbl_resolution VALUES("377 - 2013","","Extend gratitude to the Mun of Santol, La Union for the warm reception extended to the 1st Out-of-Town Session.","1,2,3,4,5,6,7,8,9,10,11,12,13","RESOLUTION 377-2013.pdf","21","2013-11-21","0");
INSERT INTO tbl_resolution VALUES("378 - 2012","","Approve Ord # 2012-001, of the SB of Bangar, LU, “An Ord Prescribing the Schedule of Computer Services for Minors w/n the School Years (10-Month Period) of the Mun of Bangar, LU”","5","Resolution 378-2012.pdf","21","2012-11-08","0");
INSERT INTO tbl_resolution VALUES("378 - 2013","","Contract of Consultancy with Mr. Jose C. Basallo as Governor’s Consultant on Indigenous Cultural Communities/Peoples – 2nd Dist.","7","RESOLUTION 378-2013.pdf","21","2013-11-21","0");
INSERT INTO tbl_resolution VALUES("379 - 2012","","Approve Ord # 4, s 2012, of the SB of Rosario, LU, “An Ord Amending the Penalties of Sec 74.6,82, U (a, b & c), 85, 86, 88, 89, 90, 91 & 95 of the GAD Code of Rosario, LU”","5","Resolution 379-2012.pdf","21","2012-11-08","0");
INSERT INTO tbl_resolution VALUES("379 - 2013","","Approve the FY 2013 GF SB # 2, of Rosario, La Union.","11","RESOLUTION 379-2013.pdf","21","2013-11-21","0");
INSERT INTO tbl_resolution VALUES("380 - 2012","","Approve Ord # 5, s 2012, of the SB of San Gabriel, LU, “An Ord Prescribing the Use of Police/Fire Line w/n the Territorial Jurisdiction of San Gabriel, LU & Prescribing Penalties for Violation Thereof”","3","Resolution 380-2012.pdf","21","2012-11-08","0");
INSERT INTO tbl_resolution VALUES("380 - 2013","","Approve Mun Ord # 23-2013, of the SB of San Juan, LU, “An Ord Declaring the Temporary Closure of a Portion of Velasco St from Dec 16, 2013 to Jan 3, 2014 to Pave Way for the Pre-Fiesta, Post-Fiesta & Fiesta Proper Celebs”.","10","RESOLUTION 380-2013.pdf","21","2013-11-21","0");
INSERT INTO tbl_resolution VALUES("381 - 2012","","Congratulate Dir. Gen. Arturo G. Cacdac, Jr. on his appointment as PDEA Director.","1,3,5,7,9,10,11,12,13,18,19,20","Resolution 381-2012.pdf","21","2012-11-08","0");
INSERT INTO tbl_resolution VALUES("381 - 2013","","Approve Mun Ord # 24-2013, of the SB of San Juan, La Union “An Ord Fixing the Dates of Town Fiesta Celebs”","10","RESOLUTION 381-2013.pdf","21","2013-11-21","0");
INSERT INTO tbl_resolution VALUES("382 - 2012","","Condole with Mrs. Juliana M. Mosuela, Bangar.","1,3,5,7,9,11,12,13,18,19,20","Resolution 382-2012.pdf","21","2012-11-15","0");
INSERT INTO tbl_resolution VALUES("382 - 2013","","Congratulate Caila Jean Munar of Rosario, La Union for being adjudged 6th Placer during the PantawidPamilya Nat’l Search for Exemplary PantawidPamilya at PICC.","6","RESOLUTION 382-2013.pdf","21","2013-11-21","0");
INSERT INTO tbl_resolution VALUES("383 - 2012","","Return Mun Ord # 02, s 2012, of the SB of Sto. Tomas, LU, “An Ord Enacting the Revision of the Comprehensive Traffic Rules & Regulations & Transportation Code of the Mun of Sto. Tomas, LU, & Providing Penalties to Violations Thereof”.","9","Resolution 383-2012.pdf","21","2012-11-15","0");
INSERT INTO tbl_resolution VALUES("383 - 2013","","Extend gratitude to the 3-termer PunongBrgys of the province.","9","RESOLUTION 383-2013.pdf","21","2013-11-21","0");
INSERT INTO tbl_resolution VALUES("384 - 2012","","Return Ord # 2012-002, emb in Res # 2012-184, of the SB of Bangar, LU, “An Ord Regulating the Sale & Use of Plastic Bags & Styrofoam in the Mun of Bangar, LU”","1","Resolution 384-2012.pdf","21","2012-11-15","0");
INSERT INTO tbl_resolution VALUES("384 - 2013","","P35,200.00 F/A to the “IBTUR 88”","4","RESOLUTION 384-2013.pdf","21","2013-11-21","0");
INSERT INTO tbl_resolution VALUES("385 - 2012","","Return Ord # 2012-003, of the SB of Bangar, La Union, “Amending the Anti-Littering Ord of the Mun of Bangar, La Union”","1","Resolution 385-2012.pdf","21","2012-11-15","0");
INSERT INTO tbl_resolution VALUES("385 - 2013","","Approve the FY 2014 GF AB, of Agoo, La Union.","2","RESOLUTION 385-2013.pdf","21","2013-11-28","0");
INSERT INTO tbl_resolution VALUES("386 - 2012","","Return Ord # 7-2012, of the SB of San Gabriel, LU, “An Ord Regulating the Use of Plastic Bags in Commercial Establishments in the Mun of San Gabriel, LU & Providing Penalties for Violation Thereof”","1","Resolution 386-2012.pdf","21","2012-11-15","0");
INSERT INTO tbl_resolution VALUES("386 - 2013","","Approve the FY 2013 GF SB # 1, of San Juan, La Union.","2","RESOLUTION 386-2013.pdf","21","2013-11-28","0");
INSERT INTO tbl_resolution VALUES("387 - 2012","","MOA with AGLAUN re: utilization of the PGLUs Culture & Art Gallery to exhibit the former’s art works.","20","Resolution 387-2012.pdf","21","2012-11-15","0");
INSERT INTO tbl_resolution VALUES("387 - 2013","","Approve the FY 2013 GF SB # 2, of Sto. Tomas, La Union.","2","RESOLUTION 387-2013.pdf","21","2013-11-28","0");
INSERT INTO tbl_resolution VALUES("388 - 2012","","Endorse & support the City of Vigan, Ilocos Sur to become 1 of the New 7 Wonders – Cities of the World.","1,3,5,7,9,10,11,12,13,18,19,20","Resolution 388-2012.pdf","21","2012-11-15","0");
INSERT INTO tbl_resolution VALUES("388 - 2013","","Approve the FY 2013 GF SB # 8, of Agoo, La Union.","2","RESOLUTION 388-2013.pdf","21","2013-11-28","0");
INSERT INTO tbl_resolution VALUES("389 - 2012","","Congratulate Mayor Daisy Sayangda, Santol, La Union for being chosen as this year’s awardee of the US Dept of State’s Ninoy& Cory Aquino Fellowship for Professional Dev’t","1,3,5,7,9,10,11,12,13,18,19,20","Resolution 389-2012.pdf","21","2012-11-15","0");
INSERT INTO tbl_resolution VALUES("389 - 2013","","Approve Mun Ord # 21-2013, of the SB of San Juan, LU, “An Ord Promulgating Policies and Prescribing Measures for the Prevention & Control of HIV/AIDS in the Mun of San Juan, As Amended”","9","RESOLUTION 389-2013.pdf","21","2013-11-28","0");
INSERT INTO tbl_resolution VALUES("390 - 2012","","Approve the Consolidated CY 2012 Supplemental AIP of:\n\na.	Office of the Prov’l Governor\nb.	Office of the Prov’l Eng’r\nc.	Balaoan Dist Hospital\n","1","Resolution 390-2012.pdf","21","2012-11-22","0");
INSERT INTO tbl_resolution VALUES("390 - 2013","","Return Ord # 19-2013, of the SB of San Juan, LU, “An Ord Authorizing the Reclassification of Agricultural Land At Brgy Cacapian, this Mun, in Favor of the LSC Homes Subdivision”","7","RESOLUTION 390-2013.pdf","21","2013-11-28","0");
INSERT INTO tbl_resolution VALUES("391 - 2012","","Adjust salary of Ms. Delia Concepcion, Admin Officer IV, Balaoan Dist Hosp from SG 15, Step 6 to SG 16, Step 6.","1","Resolution 391-2012.pdf","21","2012-11-22","0");
INSERT INTO tbl_resolution VALUES("391 - 2013","","Return Ord # 2013-104, of the SB of Pugo, LU, “Reclassifying a Piece of Agricultural Land Owned by the Mun of Pugo, LU & Represented by Mayor Noemi Balloguing, Situated in Sitio Castilla, Cares, Pugo, LU for Non-Agricultural Purposes”","7","RESOLUTION 391-2013.pdf","21","2013-11-28","0");
INSERT INTO tbl_resolution VALUES("392 - 2012","","Approve Mun Ord # 42-2012, of the SB of Agoo, LU, “An Ord Imposing a Service Fee in the Amount of P20.00 for Client Who Will Secure a NBI Clearance at the NBIO Office in Agoo, LU”","10","Resolution 392-2012.pdf","21","2012-11-22","0");
INSERT INTO tbl_resolution VALUES("392 - 2013","","Return Ord # 2013-105, of the SB of Pugo, LU, “Reclassifying a Piece of Agricultural Land Purchased by the BilreyConst& Dev’t Corp Situated in Maoasoas Sur, Pugo, LU for Residential Purposes”","7","RESOLUTION 392-2013.pdf","21","2013-11-28","0");
INSERT INTO tbl_resolution VALUES("393 - 2012","","Approve Mun Ord # 11, s 2012, of the SB of Bauang, La Union, “An Ord Creating a Land Info Office to Facilitate the Land Titling of Public Lands in Bauang, La Union”","10","Resolution 393-2012.pdf","21","2012-11-22","0");
INSERT INTO tbl_resolution VALUES("393 - 2013","","Approve Mun Ord # 22-2013, of the SB of San Juan, LU, “An Ord Creating the Mun Housing Board, Defining its Clearinghouse Functions Pursuant to EO # 708, s 2008 & for Other Purposes”","7","RESOLUTION 393-2013.pdf","21","2013-11-28","0");
INSERT INTO tbl_resolution VALUES("394 - 2012","","MOA with DSWD & ABONO Partylist re: Supplementary Feeding Program.","5","Resolution 394-2012.pdf","21","2012-11-22","0");
INSERT INTO tbl_resolution VALUES("394 - 2013","","TOPPS 2013\n\n1.	MR. RANDY O. DOMONDON – LUMC\n2.	MR. BEN D. DUCUSIN – PTO\n3.	MR. GABRIEL C. FLORES JR – LUPJ\n4.	MS. NILDA P. GAMBOA – Acctg\n5.	MS. SENTINELLA G. HALOG – RDH\n6.	MS. SHIRLEY O. MUNAR – Assessor\n7.	MS. ANGELITA E. OFIANA – SP\n8.	SR. ZENSERLY D. PAGADUAN – BDH\n9.	MR. GIL Z. PAJIMOLA – PGSO\n10.	MS. BABYLING T. VILLANUEVA - PPO","12","RESOLUTION 394-2013.pdf","21","2013-11-28","0");
INSERT INTO tbl_resolution VALUES("395 - 2012","","Request DSWD &PantawidPamilyang Pilipino Program (4Ps) to study other means of remittance of the cash grants to the recipients where ATM machines are not available.","5","Resolution 395-2012.pdf","21","2012-11-22","0");
INSERT INTO tbl_resolution VALUES("395 - 2013","","MOA with DOH re: 2013 Maternal, Newborn, Child Health & Nutrition (MNCHN) Grants to support activities/programs to improve provision of reproductive health services by the LGUs towards the achievement of MDGs 4 & 5 by 2015","9","RESOLUTION 395-2013.pdf","21","2013-11-28","0");
INSERT INTO tbl_resolution VALUES("396 - 2012","","Realign P3M from RA 7171 to the repair & maintenance of construction & heavy equipment.","1","Resolution 396-2012.pdf","21","2012-11-29","0");
INSERT INTO tbl_resolution VALUES("396 - 2013","","Congratulate “Think God Basketball Team” for winning as Champion of the International Basketball Asso Invitational Exhibition Game in Bangkok, Thailand","1,2,3,4,5,6,7,8,9,10,11,13","RESOLUTION 396-2013.pdf","21","2013-11-28","0");
INSERT INTO tbl_resolution VALUES("397 - 2012","","Approve the FY 2012 GF SB # 9, of Agoo, La Union.","1","Resolution 397-2012.pdf","21","2012-11-29","0");
INSERT INTO tbl_resolution VALUES("397 - 2013","","Return Ord # 163, of the SB of Aringay, LU, “Prescribing Rules & Regulations on the Use of the Amphitheater & Providing Charges/Fees Thereof”","2","RESOLUTION 397 - 2013.pdf","21","2013-12-05","0");
INSERT INTO tbl_resolution VALUES("398 - 2012","","Approve the FY 2012 GF SB # 2, of Sudipen, La Union.","1","Resolution 398-2012.pdf","21","2012-11-29","0");
INSERT INTO tbl_resolution VALUES("398 - 2013","","Return Res # 35, s 2013, of the SB of Tubao, LU, requesting Mayor Jonalyn Fontanilla to regulate the ambulant vendors to sell their merchandise at the Tubao Public Market","2","RESOLUTION 398 - 2013.pdf","21","2013-12-05","0");
INSERT INTO tbl_resolution VALUES("399 - 2012","","Approve the FY GF SB # 9, of Bagulin, La Union.","1","Resolution 399-2012.pdf","21","2012-11-29","0");
INSERT INTO tbl_resolution VALUES("399 - 2013","","Approve the FY 2014 GF AB of the PGLU.","1","RESOLUTION 399- 2013.pdf","21","2013-12-05","0");
INSERT INTO tbl_resolution VALUES("400 - 2012","","Approve the FY 2013 GF AB of Naguilian, La Union.","1","Resolution 400-2012.pdf","21","2012-11-29","0");
INSERT INTO tbl_resolution VALUES("400 - 2013","","Approve the FY 2014 GF AB of the Economic Enterprise.","1","RESOLUTION 400- 2013.pdf","21","2013-12-05","0");
INSERT INTO tbl_resolution VALUES("401 - 2012","","Contract of Service w/ Dr. Melanie O. Liclican, as Visiting Consultant (Anesthesiology) at Balaoan Dist Hosp","3","Resolution 401-2012.pdf","21","2012-11-29","0");
INSERT INTO tbl_resolution VALUES("401 - 2013","","Return Ord # 10-2013, of the SB of San Gabriel, LU, “An Ord Regulating the Sale, Distribution, Display, Storage & Use of Firecrackers & Other Pyrotechnic Devices w/n the Jurisdiction of San Gabriel, LU”","9","RESOLUTION 401 - 2013.pdf","21","2013-12-05","0");
INSERT INTO tbl_resolution VALUES("402 - 2012","","Congratulate & set aside P43,000.00 to the Special Olympics-LU Chapter for garnering medals during the 4th Special Olympics Bocce Competition in Brunei Darussalam","1,3,5,7,9,10,11,12,13,18,19,20","Resolution 402-2012.pdf","21","2012-12-06","0");
INSERT INTO tbl_resolution VALUES("402 - 2013","","Amended MOA w/ 1590 EC for the continued operation, preservation, maintenance and management of the Bauang Diesel Power Plant","1,2,3,4,5,6,7,8,9,10,11,12","RESOLUTION 402-2013.pdf","21","2013-12-12","0");
INSERT INTO tbl_resolution VALUES("403 - 2012","","Approve Mun Ord # 12-2012, of the SB of San Juan, LU, “An Ord Declaring the Temporary Closure of a Portion of Velasco St from Dec 16, 2012 to Jan 03, 2013 to pave way for the Pre-Fiesta & Fiesta Proper Celebrations”","10","Resolution 403-2012.pdf","21","2012-12-06","0");
INSERT INTO tbl_resolution VALUES("403 - 2013","","COL & MOU with the LU Skymall Corp (Manna Mall) & Concerned Frontline Service NGAs for the lease of the One-Stop-Shop at Manna Mall.","11","RESOLUTION 403-2013.pdf","21","2013-12-12","0");
INSERT INTO tbl_resolution VALUES("404 - 2012","","Condole with the family of the late Gil Gallardo, ex-Mayor of Naguilian.","1,3,5,7,9,10,11,12,13,18,19,20","Resolution 404-2012.pdf","21","2012-12-06","0");
INSERT INTO tbl_resolution VALUES("405 - 2012","","Request PCSO to donate 1 Ambulance & commitment to provide annual budget allocation for its repair & maintenance.","18","Resolution 405-2012.pdf","21","2012-12-06","0");
INSERT INTO tbl_resolution VALUES("405 - 2013","","Approve the FY 2014 GF AB, of Bangar, La Union.","1","RESOLUTION 405-2013.pdf","21","2013-12-19","0");
INSERT INTO tbl_resolution VALUES("406 - 2012","","Congratulate VG AureoNisce for being awarded as the Most Outstanding League of Vice Gov of the Phils Nat’l Board Member","3,5,7,9,10,11,12,13,18,19,20","Resolution 406-2012.pdf","21","2012-12-06","0");
INSERT INTO tbl_resolution VALUES("406 - 2013","","Require SB of San Juan, LU to forward a Certification that Public Hearings had been conducted on the ff:\n\n1.	MO # 17-2013, Prescribing Fee for Recognition/Re-recognition of NGO\n2.	MO # 12-2013, Prescribing Fee Monthly Rental of the Foodcourt Stalls at the Public Market\n3.	MO # 18-2013, Prescribing Fee for the Filing of Admin Case\n4.	MO # 16-2013, Prescribing the Cost of Burial Lots & Rental of Tombs in the Condo Type Niches","4","RESOLUTION 406-2013.pdf","21","2013-12-19","0");
INSERT INTO tbl_resolution VALUES("407 - 2012","","Congratulate VG AureoNisce for earning the Master in Public Mgt Major in Local Governance & Dev’t by the Graduate School of Public & Dev’t Mgt of DAP","3,5,7,9,10,11,12,13,18,19,20","Resolution 407-2012.pdf","21","2012-12-06","0");
INSERT INTO tbl_resolution VALUES("407 - 2013","","Return Mun Ord # 167-2013, of the SB of Aringay, LU, “An Ord Creating the Mun Housing Board, Defining Its Clearinghouse Functions Pursuant to EO # 708, s 2008 & for Other Purposes”","4","RESOLUTION 407-2013.pdf","21","2013-12-19","0");
INSERT INTO tbl_resolution VALUES("408 - 2012","","Enjoin the PGLU & authorize the Governor to be a Member-Institution of the NAKEM Conferences International – Phil Chapter","3","Resolution 408-2012.pdf","21","2012-12-06","0");
INSERT INTO tbl_resolution VALUES("409 - 2012","","MOA with the House of Representatives, ABONO Partylist, City Gov’t of San Fdo & the Mun of San Juan, San Gabriel & Bacnotan, Bauang, Naguilian & Bagulin, Selected NGAs, Private Sector Groups & Other NGOs re: creation of the Metro LU Dev’t Coordinating Council.","1","Resolution 409-2012.pdf","21","2012-12-13","0");
INSERT INTO tbl_resolution VALUES("409 - 2013","","Approve SB # 1, of the Economic Enterprise amounting to P1,610,000.00 for BDH & CMCH","4","RESOLUTION 409-2013.pdf","21","2013-12-19","0");
INSERT INTO tbl_resolution VALUES("410 - 2012","","Approve the FY 2012 GF SB # 10, of Agoo, La Union.","1","Resolution 410-2012.pdf","21","2012-12-13","0");
INSERT INTO tbl_resolution VALUES("410 - 2013","","Approve the FY 2014 GF AB, of Naguilian, La Union.","4","RESOLUTION 410-2013.pdf","21","2013-12-19","0");
INSERT INTO tbl_resolution VALUES("411 - 2012","","Endorse the approval, funding & early implementation of the Sn Fdo City Airport upgrading.","1","Resolution 411-2012.pdf","21","2012-12-13","0");
INSERT INTO tbl_resolution VALUES("411 - 2013","","Approve the FY 2013 GF SB # 2, of Santol, La Union.","4","RESOLUTION 411-2013.pdf","21","2013-12-19","0");
INSERT INTO tbl_resolution VALUES("412 - 2012","","Request Pres Benigno S. Aquino III to issue a Proclamation Order for a Special Non-Working Holiday on Mar 2, 2013 in the province.","1,3,5,7,9,10,11,12,13,18,19,20","Resolution 412-2012.pdf","21","2012-12-13","0");
INSERT INTO tbl_resolution VALUES("412 - 2013","","Approve the FY 2013 GF SB # 2, of Caba, La Union.","4","RESOLUTION 412-2013.pdf","21","2013-12-19","0");
INSERT INTO tbl_resolution VALUES("413 - 2012","","TOPPS 2012\n\n1.	Alfredo R. Buenaventura Jr\n2.	Ghenny Rose P. Estipular\n3.	Allily R. Galapon\n4.	Norma H. Flora\n5.	Nestor G. Gapuz\n6.	Rochelle A. Mamaril\n7.	Josephine A. Manantan\n8.	Alan C. Ochoco\n9.	Erlinda C. Ostrea\n10.	Vicenta O. Regacho\n","12","Resolution 413-2012.pdf","21","2012-12-13","0");
INSERT INTO tbl_resolution VALUES("413 - 2013","","Approve the FY 2013 GF SB # 3, of Caba, La Union.","4","RESOLUTION 413-2013.pdf","21","2013-12-19","0");
INSERT INTO tbl_resolution VALUES("414 - 2012","","Approve Mun Ord # 13-2012, of the SB of San Juan, LU, “An Ord Prohibiting Operators or Owners, as the Case Maybe, to Tricycle & Single Motorcycles from Using Open Exhaust Pipes & Imposing Penalty for Violation Thereof”","9","Resolution 414-2012.pdf","21","2012-12-13","0");
INSERT INTO tbl_resolution VALUES("414 - 2013","","Return Mun Ord # 101, s 2013, of the SB of Sudipen, LU, “An Ord Amending Sec 8 Under Mun Ord # 70, s 2007, An Ord Promulgating Rules & Regulations in the Operation of Public Motorized Tricycle & Utility Motorized Tricycle & Utility Motorized Single Motor, Providing Penalties for Violation Thereof & for Other Purposes”","4","RESOLUTION 414-2013.pdf","21","2013-12-19","0");
INSERT INTO tbl_resolution VALUES("415 - 2012","","Return Mun Ord # 002-2012 of the SB of Rosario, La Union, “An Ord Enacting the New Traffic Mgt of the Mun of Rosario, Prov of La Union & Implementing a Unified Route System for Tricycles”","9","Resolution 415-2012.pdf","21","2012-12-13","0");
INSERT INTO tbl_resolution VALUES("415 - 2013","","Return Mun Ord # 13, s 2013, of the SB of Bauang, LU, “An Ord Amending the 2002 Traffic Ord of the Mun of Bauang, LU Part Art II – Parking, No Parking, Loading & Unloading Zones & Providing Add’l Provisions Thereto”","4","RESOLUTION 415-2013.pdf","21","2013-12-19","0");
INSERT INTO tbl_resolution VALUES("416 - 2012","","Return Ord # 6, s 2012 of the SB of San Gabriel, LU, “An Ord Prohibiting the Use, Sale, Distribution & Advertisement of Cigarettes & Other Tobacco Products in Certain Places, Imposing Penalties for Violations Thereof & Providing Funds Therefore & for Other Purposes”","10","Resolution 416-2012.pdf","21","2012-12-13","0");
INSERT INTO tbl_resolution VALUES("416 - 2013","","Return Mun Ord # 14, s 2013, of the SB of Bauang, LU, “An Ord Amending Art D, Sec 17 Ord # 11, s 2011, An Ord Amending Ord # 15, s 2008, An Ord Adopting a Comprehensive Transportation & Traffic Regulations for the Administration & enforcement, Providing Penalties for Violation Thereof, & for the Repeal of all Ordinances in Conflict Therewith”","4","RESOLUTION 416-2013.pdf","21","2013-12-19","0");
INSERT INTO tbl_resolution VALUES("417 - 2012","","MOA with Red Ribbon re: rental of a portion of Mabanag Quadrangle","18","Resolution 417-2012.pdf","21","2012-12-13","0");
INSERT INTO tbl_resolution VALUES("417 - 2013","","MOA w/ BFAR, LGU of Bauang & the Bauang Fishing Group Consumer Coop for the establishment of a Community-Based Multi-Species Hatchery (CBMSH) &AquasilvicultureTechnodemo Project Components of the Phil Nat’l Aquasilviculture Program.","4","RESOLUTION 417-2013.pdf","21","2013-12-19","0");
INSERT INTO tbl_resolution VALUES("418 - 2012","","Approve the FY 2012 GF SB # 3, of Bauang, La Union.","1","Resolution 418-2012.pdf","21","2012-12-18","0");
INSERT INTO tbl_resolution VALUES("418 - 2013","","Authorize the enrolment of the existing current accounts of the PGLU in the E-Tax Payment Facility of the LBP & designating OIC-Prov’l Acct Jolly Balancio or her representatives as the authorized users thereof","1","RESOLUTION 418-2013-4.pdf","21","2013-12-19","0");
INSERT INTO tbl_resolution VALUES("419 - 2012","","Approve the FY 2012 GF SB # 4, of Bauang, La Union.","1","Resolution 419-2012.pdf","21","2012-12-18","0");
INSERT INTO tbl_resolution VALUES("419 - 2013","","Approve the Prov’l ELA CY 2013-2016","4","RESOLUTION 419-2013.pdf","21","2013-12-19","0");
INSERT INTO tbl_resolution VALUES("420 - 2012","","Approve the FY 2012 GF SB # 5, of Bauang, La Union.","1","Resolution 420-2012.pdf","21","2012-12-18","0");
INSERT INTO tbl_resolution VALUES("420 - 2013","","Approve the Medium-Term Prov’l Dev’t Plan (PDP) CY 2013-2017","4","RESOLUTION 420-2013.pdf","21","2013-12-19","0");
INSERT INTO tbl_resolution VALUES("421 - 2012","","Approve the FY 2012 GF SB # 6, of Bauang, La Union.","1","Resolution 421-2012.pdf","21","2012-12-18","0");
INSERT INTO tbl_resolution VALUES("421 - 2013","","Approve the FY 2013 GF SB # 4, of the CSF, La Union.","1","RESOLUTION 421-2013.pdf","21","2013-12-26","0");
INSERT INTO tbl_resolution VALUES("422 - 2012","","Approve the FY 2012 GF SB # 7, of Bauang, La Union.","1","Resolution 422-2012.pdf","21","2012-12-18","0");
INSERT INTO tbl_resolution VALUES("422 - 2013","","Approve the FY 2013 GF SB # 5, of the CSF, La Union.","1","RESOLUTION 422-2013.pdf","21","2013-12-26","0");
INSERT INTO tbl_resolution VALUES("423 - 2012","","Approve the Economic Enterprise’s AB 2013","1","Resolution 423-2012.pdf","21","2012-12-18","0");
INSERT INTO tbl_resolution VALUES("423 - 2013","","Approve the FY 2013 GF SB # 6, of the CSF, La Union.","1","RESOLUTION 423-2013.pdf","21","2013-12-26","0");
INSERT INTO tbl_resolution VALUES("424 - 2012","","Approve the PGLU’s AB 2013","1","Resolution 424-2012.pdf","21","2012-12-18","0");
INSERT INTO tbl_resolution VALUES("424 - 2013","","Return City Ord # 2013-02, of the SP of the CSF, LU, “An Ord Amending City Ord # 2011-013, An Ord Regulating the Sale, Serving & Drinking of Liquor of Entertainment, Business Establishments in Public Places, & Providing Penalties for Violation Thereof, & Repealing City Ord # 2012-13”","2","RESOLUTION 424-2013.pdf","21","2013-12-26","0");
INSERT INTO tbl_resolution VALUES("425 - 2012","","Approve City Ord # 2012-04, of the City of Sn Fdo, LU, “An Ord Authorizing the Proposed Borrowing of the City Gov’t of Sn Fdo, Prov of LU, in the Amount of P99 M to Fund the Amortization of the Loan of the Dev’t of the Sanitary Landfill at Brgy Mameltac”","1","Resolution 425-2012.pdf","21","2012-12-18","0");
INSERT INTO tbl_resolution VALUES("425 - 2013","","Approve Ord # 47, s 2013, of the SB of Naguilian, La Union, “An Ord Authorizing the Proposed Borrowing of the Mun of Naguilian, Prov of LU, in the Amt of P53,600.000.00 to Fund the Implementation of Various Priority Projects of the Mun Gov’t of Naguilian, La Union”","10","RESOLUTION 425-2013.pdf","21","2013-12-26","0");
INSERT INTO tbl_resolution VALUES("426 - 2012","","Approve the construction of the Bacnotan Tap-Bacnotan Substation 230 KV Transmission Line Project of the Nat’l Grid Corp of the Phils (NGCP)","1","Resolution 426-2012.pdf","21","2012-12-18","0");
INSERT INTO tbl_resolution VALUES("426 - 2013","","Approve Res # 26, s 2013, of the SB of Caba, La Union, “Res Adopting the 2013 IRP of the SB of Caba, La Union”","10","RESOLUTION 426-2013.pdf","21","2013-12-26","0");
INSERT INTO tbl_resolution VALUES("427 - 2012","","Return Ord # 9-2012, of the SB of San Gabriel, La Union, “The Environmental Code of the Mun of San Gabriel, La Union”","1","Resolution 427-2012.pdf","21","2012-12-18","0");
INSERT INTO tbl_resolution VALUES("427 - 2013","","Return Ord # 22, s 2013, of the SB of Naguilian, La Union, “An Ord Deputizing All Barangay Officials in the Enforcement of Mun Ordinances & Providing Guidelines in the Implementation Thereof”","10","RESOLUTION 427-2013.pdf","21","2013-12-26","0");
INSERT INTO tbl_resolution VALUES("428 - 2012","","Approve Mun Ord # 43-2012, of the SB of Agoo, LU, “An Ord Amending Sec 19 (d) of Mun Ord # 02-2012, An Ord Regulating the Maintenance & Safekeeping of Animals for the Welfare & Protection of Residents in the 49 Brgys of the Mun of Agoo, LU”","3","Resolution 428-2012.pdf","21","2012-12-18","0");
INSERT INTO tbl_resolution VALUES("428 - 2013","","Condole w/ the bereaved family of Mrs. Delia R. Concepcion","1,2,3,4,5,6,7,8,9,10,11,12","RESOLUTION 428-2013.pdf","21","2013-12-26","0");
INSERT INTO tbl_resolution VALUES("429 - 2012","","Approve SB # 4, of the PGLU involving P15,257,088.00","1","Resolution 429-2012.pdf","21","2012-12-18","0");
INSERT INTO tbl_resolution VALUES("430 - 2012","","Approve SB # 5, of the PGLU involving P36,003,493.00","1","Resolution 430-2012.pdf","21","2012-12-18","0");
INSERT INTO tbl_resolution VALUES("431 - 2012","","Approve Mun Ord # 33, s 2012, of the SB of Naguilian, LU, “An Ord Authorizing the Proposed Borrowing of the Mun of Naguilian, Prov of LU, in the Amount of P26,474,860.00 to Fund the Implementation of Various Projects of the Mun Gov’t of Naguilian, LU”","1,10","Resolution 431-2012.pdf","21","2012-12-18","0");
INSERT INTO tbl_resolution VALUES("432 - 2012","","Grant Authority to the Prov’l Governor to enter into a MOA w/ DILG re: availment& release of the latter’s Performance Challenge Fund Subsidy & approving the implementation of the PCF Project/s & certifying that the proposed project is included in the 2013 AIP","1,3,7,9,10,18,20","Resolution 432-2012.pdf","21","2012-12-18","0");
INSERT INTO tbl_resolution VALUES("433 - 2012","","MOA with the Phil Nuclear Research Institute (PNRI) re: subscription of the Optically Stimulated Luminescent (OSL) Dosimeter Personnel Monitoring Service by RDH.","1","Resolution 433-2012.pdf","21","2012-12-27","0");



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
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=latin1;

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
INSERT INTO tbl_status VALUES("49","2014 - 0165","0","1","1","0");
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
INSERT INTO tbl_status VALUES("79","2014 - 0174","0","0","0","0");
INSERT INTO tbl_status VALUES("80","2014 - 0205","0","0","0","0");
INSERT INTO tbl_status VALUES("81","2014 - 0011","0","1","1","1");
INSERT INTO tbl_status VALUES("82","2014 - 0085","0","1","1","1");
INSERT INTO tbl_status VALUES("83","2014 - 0129","0","0","0","0");
INSERT INTO tbl_status VALUES("84","2014 - 0141","0","1","1","1");
INSERT INTO tbl_status VALUES("85","2014 - 0084","0","1","1","1");
INSERT INTO tbl_status VALUES("86","2014 - 0135","0","1","1","1");
INSERT INTO tbl_status VALUES("87","2014 - 0191","0","1","1","0");
INSERT INTO tbl_status VALUES("88","2014 - 0173","0","0","0","0");
INSERT INTO tbl_status VALUES("89","2014 - 0211","0","0","0","0");
INSERT INTO tbl_status VALUES("90","2014 - 0212","0","0","0","0");
INSERT INTO tbl_status VALUES("91","2014 - 0008","0","1","1","1");
INSERT INTO tbl_status VALUES("92","2014 - 0072","0","1","1","0");
INSERT INTO tbl_status VALUES("93","2014 - 0102","0","1","1","0");
INSERT INTO tbl_status VALUES("94","2014 - 0136","0","1","1","1");
INSERT INTO tbl_status VALUES("95","2014 - 0160","0","0","0","0");
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
INSERT INTO tbl_status VALUES("108","2014 - 0101","0","0","0","0");
INSERT INTO tbl_status VALUES("109","2014 - 0099","0","1","1","1");
INSERT INTO tbl_status VALUES("110","2014 - 0100","0","1","1","1");
INSERT INTO tbl_status VALUES("111","2014 - 0118","0","1","1","1");
INSERT INTO tbl_status VALUES("112","2014 - 0134","0","1","1","1");
INSERT INTO tbl_status VALUES("113","2014 - 0208","0","0","0","0");
INSERT INTO tbl_status VALUES("114","2014 - 0053","0","1","1","1");
INSERT INTO tbl_status VALUES("115","2014 - 0132","0","1","1","1");
INSERT INTO tbl_status VALUES("116","2014 - 0215","0","1","1","1");
INSERT INTO tbl_status VALUES("117","2014 - 0137","0","1","1","1");
INSERT INTO tbl_status VALUES("118","2014 - 0176","0","0","0","0");
INSERT INTO tbl_status VALUES("119","2014 - 0186","0","0","0","0");
INSERT INTO tbl_status VALUES("120","2014 - 0201","0","0","0","0");
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
INSERT INTO tbl_status VALUES("136","2014 - 0217","0","1","1","0");
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
INSERT INTO tbl_status VALUES("172","2014 - 0158","1","1","1","0");
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
INSERT INTO tbl_status VALUES("186","2014 - 0244","1","1","1","0");



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
INSERT INTO tbl_user VALUES("lara","3b07c768071e6175ced9ea12764baf2c","23","SCR-T","2014-01-01","2020-01-01");
INSERT INTO tbl_user VALUES("matet","371db6d80205b0164ed02c60bb3730ea","25","SCR-RF","2014-01-01","2020-01-01");
INSERT INTO tbl_user VALUES("receiving","0639f5c0e2228ccdf3385f88f1579491","1","SCR-RC","2013-10-10","2016-10-10");
INSERT INTO tbl_user VALUES("receiving sec","0639f5c0e2228ccdf3385f88f1579491","2","SCR-RC","2013-10-10","2016-10-10");
INSERT INTO tbl_user VALUES("referral","cd9bcdcbf9ef392bb2bce89a7c150638","2","SCR-RF","2013-10-10","2016-10-10");
INSERT INTO tbl_user VALUES("rhea","60579e7c700c3f17aae0d9924b46cef7","24","SCR-RF","2014-01-01","2020-01-01");
INSERT INTO tbl_user VALUES("sample","5e8ff9bf55ba3508199d22e984129be6","1","SCR-RC","2013-10-10","2013-10-10");
INSERT INTO tbl_user VALUES("tracking","1879966223c3e382e14c6524c84942f1","3","SCR-T","2013-10-10","2016-10-10");
INSERT INTO tbl_user VALUES("Vee","0951ba11ae1427612d3de66ed5dafacc","22","SCR-RC","2014-01-02","2020-01-02");
INSERT INTO tbl_user VALUES("yobi","ef80d6a456354c87c7e6b0c918b2d7c1","21","SYSAD","2013-10-10","2013-10-10");



