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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

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
INSERT INTO tbl_category VALUES("17","Request City","RCMM");
INSERT INTO tbl_category VALUES("18","Provincial Supplemental Budget","PSB");
INSERT INTO tbl_category VALUES("19","Provincial Annual Budget","PAB");
INSERT INTO tbl_category VALUES("20","Municipal Ordinance","MO");
INSERT INTO tbl_category VALUES("21","Provincial Ordinance","PO");



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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

INSERT INTO tbl_comm_meeting_ordi VALUES("22","40","0","2014-02-03","","","1","0","","0","0");
INSERT INTO tbl_comm_meeting_ordi VALUES("23","40","0","2014-02-04","","","1","0","","0","0");
INSERT INTO tbl_comm_meeting_ordi VALUES("24","40","1","2014-02-05","0000-00-00","2014-02-06","1","1","CR Laws 1a municipal ordinance no. 23-2013.pdf","1","0");
INSERT INTO tbl_comm_meeting_ordi VALUES("25","42","0","0000-00-00","2014-02-10","","1","0","","0","1");
INSERT INTO tbl_comm_meeting_ordi VALUES("26","42","1","0000-00-00","2014-02-12","2014-02-13","1","1","03chapters_5-10.pdf","1","1");
INSERT INTO tbl_comm_meeting_ordi VALUES("27","43","0","2014-02-13","0000-00-00","","1","0","","0","1");
INSERT INTO tbl_comm_meeting_ordi VALUES("28","43","0","2014-02-11","0000-00-00","","1","0","","0","1");
INSERT INTO tbl_comm_meeting_ordi VALUES("29","43","1","0000-00-00","2014-02-13","2014-02-13","1","1","D Ord no. 52 luna, LU.pdf","1","0");
INSERT INTO tbl_comm_meeting_ordi VALUES("30","44","0","2014-02-11","0000-00-00","","1","0","","0","0");
INSERT INTO tbl_comm_meeting_ordi VALUES("31","44","1","0000-00-00","2014-02-12","2014-02-13","1","1","03chapters3-4.pdf","1","0");
INSERT INTO tbl_comm_meeting_ordi VALUES("32","45","0","2014-02-10","0000-00-00","","1","0","","0","0");
INSERT INTO tbl_comm_meeting_ordi VALUES("33","45","1","2014-02-11","0000-00-00","2014-02-13","1","1","11.pdf","1","0");
INSERT INTO tbl_comm_meeting_ordi VALUES("34","46","1","2012-01-16","0000-00-00","2012-01-19","1","1","02chapter4-5_2.pdf","1","0");



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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

INSERT INTO tbl_comm_meeting_reso VALUES("11","38","0","2014-02-03","","1","","0","0","0");
INSERT INTO tbl_comm_meeting_reso VALUES("12","38","0","2014-02-04","","1","","0","0","0");
INSERT INTO tbl_comm_meeting_reso VALUES("13","38","1","2014-02-16","2014-02-06","1","A contract of service of Mr. Jose C. Basallo.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("14","39","0","2014-02-03","","1","","0","0","0");
INSERT INTO tbl_comm_meeting_reso VALUES("15","39","0","2014-02-04","","1","","0","0","0");
INSERT INTO tbl_comm_meeting_reso VALUES("16","39","1","2014-02-05","2014-02-06","1","B FY 13 GFSB No. 2 Rosario, LU.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("17","41","0","2014-02-10","","1","","0","0","0");
INSERT INTO tbl_comm_meeting_reso VALUES("18","41","0","2014-02-11","","1","","0","0","0");
INSERT INTO tbl_comm_meeting_reso VALUES("19","41","1","2014-02-12","2014-02-13","1","CR Laws 1a municipal ordinance no. 23-2013.pdf","1","1","0");



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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO tbl_committee VALUES("1","Committee of Barangay Affairs","CBA","2","3","4");
INSERT INTO tbl_committee VALUES("2","Committee of Waste and Means","CWM","2","3","1");
INSERT INTO tbl_committee VALUES("3","Committee of Communication and Information Technology","CCIT","3","1","2");
INSERT INTO tbl_committee VALUES("4","Committee of Boundary Disputes","CBD","1","2","3");



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

INSERT INTO tbl_communication VALUES("2012 - 0001","asdf asdf sdfddd dfa","2012-02-27","2","2","1","02chapter4-5_3 (1).pdf","2012-02-27","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0001","Letter of Gov. Manuel C. Ortega respectfully requesting the Honorable __ (A)\nBody to authorize him, for and on behalf of the Provincial Government of La Union (PGLU), to enter into a Contract of Service with Mr. Jose C. Basallo as Governor’s Consultant on Indigenous Cultural Communities/Indigenous Peoples (IPs), 2nd District of La Union, for a period of one (1) month from December 01, 2013 to December 31, 2013 with a Consulting Fee of Twenty Thousand Pesos (Php 20,000.00) payable at the end of the month.\nThe Governor certifies the matter as urgent.","2014-01-27","14","2","1","A contract of service of Mr. Jose C. Basallo.pdf","2014-01-30","1","1","1");
INSERT INTO tbl_communication VALUES("2014 - 0002","Memorandum from the Provincial Budget Officer recommending________ (B)\napproval of FY 2013 General Fund Supplemental Budget No. 2, of Rosario, La Union.","2014-01-27","11","2","1","B FY 13 GFSB No. 2 Rosario, LU.pdf","2014-01-30","1","1","1");
INSERT INTO tbl_communication VALUES("2014 - 0003","Municipal Ordinance No. 101, S. 2013 of the Sangguniang Bayan of ____ (C)\nSudipen, La Union entitled: “An Ordinance Amending Section 8 Under Municipal Ordinance No. 70, S. 2007 Entitled “ An Ordinance Promulgating Rules And Regulations In The Operation Of Public Motorized Tricycle And Utility Motorized Tricycle And Utility Motorized Single Motor, Providing Penalties For Violation Thereof And For Other Purposes”.","2014-01-20","10","1","1","B FY 13 GFSB No. 2 Rosario, LU.pdf","2014-01-23","0","1","1");
INSERT INTO tbl_communication VALUES("2014 - 0004","Municipal Ordinance No. 52-2013 of the Sangguniang Bayan of Luna, ___ (D)\nLa Union entitled: “An Ordinance Regulating the Services of Mananabang (HILOT)”.","2014-01-13","2","2","1","C Ord No. 101 Sudipen, LU.pdf","2014-01-16","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0005","Ordinance No. 161 of the Sangguniang Bayan of Aringay, La Union _____ (E)\nentitled: To Amend Sections 13,19 and 20 of Ordinance No. 151, “The Scholarship Program of the Municipality of Aringay, La Union”.","2014-01-27","21","1","1","E Ord 161 Aringay, LU.pdf","2014-01-30","1","1","0");
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
INSERT INTO tbl_ordinance VALUES("0002 - 2014","33","ordinance date meeting only","2014-02-13","1,2,3,10","1","61-322-1-PB.pdf","1","0");
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
  `contact_num` int(20) NOT NULL,
  PRIMARY KEY (`orig_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO tbl_origin VALUES("1","Municipality of Balaoan","Balaoan","jex obejas","2147483647");
INSERT INTO tbl_origin VALUES("2","Municipality of Luna","Luna","John Billy Marbellla","2147483647");
INSERT INTO tbl_origin VALUES("3","Provincial Budget Officer","PBO","Juan Dela Cruz","2147483647");



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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

INSERT INTO tbl_referral VALUES("38","2014 - 0001","2014-01-31","4","","A contract of service of Mr. Jose C. Basallo.pdf","1","1","0");
INSERT INTO tbl_referral VALUES("39","2014 - 0002","2014-01-31","1","","B FY 13 GFSB No. 2 Rosario, LU.pdf","1","1","0");
INSERT INTO tbl_referral VALUES("40","2014 - 0005","2014-01-31","3","1,4,3,2","C Ord No. 101 Sudipen, LU.pdf","1","1","0");
INSERT INTO tbl_referral VALUES("41","2014 - 0004","2014-01-31","4","1","res 014-12.pdf","1","1","0");
INSERT INTO tbl_referral VALUES("42","2014 - 0008","2014-02-07","4","1,4,3,2","D Ord no. 52 luna, LU.pdf","1","1","0");
INSERT INTO tbl_referral VALUES("43","2014 - 0013","2014-02-07","3","1,4,3,2","CR Laws 1a municipal ordinance no. 23-2013.pdf","1","1","0");
INSERT INTO tbl_referral VALUES("44","2014 - 0014","2014-02-14","3","4","11.pdf","1","1","0");
INSERT INTO tbl_referral VALUES("45","2014 - 0015","2014-02-07","3","4","11.pdf","1","1","0");
INSERT INTO tbl_referral VALUES("46","2014 - 0017","2012-01-13","3","1,4,3,2","02chapter4-5_2.pdf","1","1","0");



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
INSERT INTO tbl_resolution VALUES("0002 - 2013","2014 - 0016","adf asdf asdf asdf asdf asdf","1,2,3,10","02chapter4-5_2 (1).pdf","1","2013-02-07","0");
INSERT INTO tbl_resolution VALUES("0002 - 2014","2014 - 0003","Municipal Ordinance No. 101, S. 2013 of the Sangguniang Bayan of ____ (C)\nSudipen, La Union entitled: ?An Ordinance Amending Section 8 Under Municipal Ordinance No. 70, S. 2007 Entitled ? An Ordinance Promulgating Rules And Regulations In The Operation Of Public Motorized Tricycle And Utility Motorized Tricycle And Utility Motorized Single Motor, Providing Penalties For Violation Thereof And For Other Purposes?.aafdsfa","1,2,3,10","B FY 13 GFSB No. 2 Rosario, LU.pdf","1","2014-02-06","0");
INSERT INTO tbl_resolution VALUES("0003 - 2014","2014 - 0002","Memorandum from the Provincial Budget Officer recommending________ (B)\napproval of FY 2013 General Fund Supplemental Budget No. 2, of Rosario, La Union.","2","Ord 026-12 iloco code.pdf","3","2014-02-19","0");
INSERT INTO tbl_resolution VALUES("0004 - 2014","2014 - 0004","Municipal Ordinance No. 52-2013 of the Sangguniang Bayan of Luna, ___ (D)\nLa Union entitled: ?An Ordinance Regulating the Services of Mananabang (HILOT)?.","1,2,3,10","02chapter4-5_2.pdf","3","2014-02-14","0");
INSERT INTO tbl_resolution VALUES("0005 - 2014","2014 - 0007","Municipal Ordinance No. 101, S. 2013 of the Sangguniang Bayan of ____ (C)\nSudipen, La Union entitled: ?An Ordinance Amending Section 8 Under Municipal Ordinance No. 70, S. 2007 Entitled ? An Ordinance Promulgating Rules And Regulations In The Operation Of Public Motorized Tricycle And Utility Motorized Tricycle And Utility Motorized Single Motor, Providing","1,2,3,10","11.pdf","3","2014-02-13","0");
INSERT INTO tbl_resolution VALUES("0006 - 2014","2014 - 0009","supplemental budget","1,2,3,10","61-322-1-PB.pdf","3","2014-02-13","0");
INSERT INTO tbl_resolution VALUES("0007 - 2014","2014 - 0010","annual budget","1,2,3,10","11.pdf","3","2014-02-13","0");
INSERT INTO tbl_resolution VALUES("0008 - 2014","2014 - 0011","contract of service","1,2,3,10","11.pdf","3","2014-02-13","0");
INSERT INTO tbl_resolution VALUES("0009 - 2012","2012 - 0001","asdf asdf sdfddd dfa","1,2,3,10","02chapter4-5.pdf","1","2012-02-27","0");



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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=latin1;

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



DROP TABLE tbl_sysbackup;

CREATE TABLE `tbl_sysbackup` (
  `db_id` int(11) NOT NULL AUTO_INCREMENT,
  `db_name` varchar(50) DEFAULT NULL,
  `date_backed_up` datetime DEFAULT NULL,
  `backed_up_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`db_id`),
  KEY `backed_up_by` (`backed_up_by`),
  CONSTRAINT `FK__tbl_user` FOREIGN KEY (`backed_up_by`) REFERENCES `tbl_user` (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO tbl_sysbackup VALUES("1","db-backup(2014-03-02).sql","2014-03-02 23:41:26","1");
INSERT INTO tbl_sysbackup VALUES("2","db-backup(2014-03-02).sql","2014-03-02 23:45:03","1");
INSERT INTO tbl_sysbackup VALUES("3","db-backup(2014-03-02).sql","2014-03-02 23:46:00","1");
INSERT INTO tbl_sysbackup VALUES("4","db-backup(2014-03-03).sql","2014-03-03 00:29:04","1");
INSERT INTO tbl_sysbackup VALUES("5","db-backup(2014-03-03).sql","2014-03-03 09:29:25","1");



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



