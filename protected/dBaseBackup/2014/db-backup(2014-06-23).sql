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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=3613 DEFAULT CHARSET=latin1;

INSERT INTO tbl_activity VALUES("2499","Viewed Audit Trails","1","2014-04-29 08:32:24");
INSERT INTO tbl_activity VALUES("2500","Searched Monthly Committee Report per Committee","1","2014-04-29 08:32:44");
INSERT INTO tbl_activity VALUES("2501","Return to Homepage","1","2014-04-29 10:37:28");
INSERT INTO tbl_activity VALUES("2502","Return to Homepage","1","2014-04-29 10:38:22");
INSERT INTO tbl_activity VALUES("2503","Searched Monthly Committee Report per Committee","1","2014-04-29 10:38:36");
INSERT INTO tbl_activity VALUES("2504","Viewed List of Communication","1","2014-04-29 10:38:43");
INSERT INTO tbl_activity VALUES("2505","Added Another Communication","1","2014-04-29 10:41:17");
INSERT INTO tbl_activity VALUES("2506","View Communication ID: 2014 - 0079","1","2014-04-29 10:41:23");
INSERT INTO tbl_activity VALUES("2507","Added Another Communication","1","2014-04-29 10:43:19");
INSERT INTO tbl_activity VALUES("2508","View Communication ID: 2014 - 0080","1","2014-04-29 10:43:24");
INSERT INTO tbl_activity VALUES("2509","Added Another Communication","1","2014-04-29 10:44:43");
INSERT INTO tbl_activity VALUES("2510","View Communication ID: 2014 - 0081","1","2014-04-29 10:44:49");
INSERT INTO tbl_activity VALUES("2511","Added Another Communication","1","2014-04-29 10:46:20");
INSERT INTO tbl_activity VALUES("2512","View Communication ID: 2014 - 0082","1","2014-04-29 10:46:25");
INSERT INTO tbl_activity VALUES("2513","Added Another Communication","1","2014-04-29 10:47:09");
INSERT INTO tbl_activity VALUES("2514","View Communication ID: 2014 - 0083","1","2014-04-29 10:47:15");
INSERT INTO tbl_activity VALUES("2515","Added Another Communication","1","2014-04-29 10:47:52");
INSERT INTO tbl_activity VALUES("2516","View Communication ID: 2014 - 0084","1","2014-04-29 10:47:57");
INSERT INTO tbl_activity VALUES("2517","Added Another Communication","1","2014-04-29 10:48:48");
INSERT INTO tbl_activity VALUES("2518","View Communication ID: 2014 - 0085","1","2014-04-29 10:48:53");
INSERT INTO tbl_activity VALUES("2519","Added Another Communication","1","2014-04-29 10:49:37");
INSERT INTO tbl_activity VALUES("2520","View Communication ID: 2014 - 0086","1","2014-04-29 10:49:42");
INSERT INTO tbl_activity VALUES("2521","Viewed List of Communication","1","2014-04-29 10:50:46");
INSERT INTO tbl_activity VALUES("2522","Viewed List of Communication","1","2014-04-29 10:50:50");
INSERT INTO tbl_activity VALUES("2523","Searched Monthly Committee Report per Committee","1","2014-04-29 10:50:57");
INSERT INTO tbl_activity VALUES("2524","Viewed Agenda List","1","2014-04-29 10:51:01");
INSERT INTO tbl_activity VALUES("2525","Viewed List of Referral for Committee Meeting","1","2014-04-29 10:51:10");
INSERT INTO tbl_activity VALUES("2526","Return to Homepage","1","2014-04-29 10:51:15");
INSERT INTO tbl_activity VALUES("2527","Viewed List of Communication","1","2014-04-29 10:51:19");
INSERT INTO tbl_activity VALUES("2528","Viewed Communication for Referral List","1","2014-04-29 10:51:36");
INSERT INTO tbl_activity VALUES("2529","Viewed List of Communication","1","2014-04-29 10:51:37");
INSERT INTO tbl_activity VALUES("2530","Viewed Communication for Referral List","1","2014-04-29 10:51:39");
INSERT INTO tbl_activity VALUES("2531","Added Another Referral","1","2014-04-29 10:52:31");
INSERT INTO tbl_activity VALUES("2532","Viewed Referral ID: 15","1","2014-04-29 10:52:36");
INSERT INTO tbl_activity VALUES("2533","Viewed Communication for Referral List","1","2014-04-29 10:52:40");
INSERT INTO tbl_activity VALUES("2534","Added Another Referral","1","2014-04-29 10:53:09");
INSERT INTO tbl_activity VALUES("2535","Viewed Referral ID: 16","1","2014-04-29 10:53:14");
INSERT INTO tbl_activity VALUES("2536","Viewed List of Referral for Committee Meeting","1","2014-04-29 10:53:22");
INSERT INTO tbl_activity VALUES("2537","Added Another Committee Meeting","1","2014-04-29 10:53:42");
INSERT INTO tbl_activity VALUES("2538","Viewed Committee Meeting ID: 7","1","2014-04-29 10:53:47");
INSERT INTO tbl_activity VALUES("2539","Viewed Committee Meeting ID: 7","1","2014-04-29 10:53:58");
INSERT INTO tbl_activity VALUES("2540","Assigned Date of Committe Report of Committee Meeting ID: 7","1","2014-04-29 10:53:59");
INSERT INTO tbl_activity VALUES("2541","Viewed Committee Meeting ID: 7","1","2014-04-29 10:54:04");
INSERT INTO tbl_activity VALUES("2542","Viewed List of Referral for Committee Meeting","1","2014-04-29 10:54:08");
INSERT INTO tbl_activity VALUES("2543","Added Another Committee Meeting","1","2014-04-29 10:54:23");
INSERT INTO tbl_activity VALUES("2544","Viewed Committee Meeting ID: 8","1","2014-04-29 10:54:28");
INSERT INTO tbl_activity VALUES("2545","Viewed Committee Meeting ID: 8","1","2014-04-29 10:54:39");
INSERT INTO tbl_activity VALUES("2546","Assigned Date of Committe Report of Committee Meeting ID: 8","1","2014-04-29 10:54:39");
INSERT INTO tbl_activity VALUES("2547","Viewed Committee Meeting ID: 8","1","2014-04-29 10:54:45");
INSERT INTO tbl_activity VALUES("2548","Searched Monthly Committee Report per Committee","1","2014-04-29 10:54:49");
INSERT INTO tbl_activity VALUES("2549","Viewed Agenda List","1","2014-04-29 10:54:57");
INSERT INTO tbl_activity VALUES("2550","Viewed Agenda List","1","2014-04-29 10:55:30");
INSERT INTO tbl_activity VALUES("2551","Viewed Agenda ID: 1","1","2014-04-29 10:55:36");
INSERT INTO tbl_activity VALUES("2552","Viewed Agenda List","1","2014-04-29 10:55:44");
INSERT INTO tbl_activity VALUES("2553","Printed Agenda ID: 1","1","2014-04-29 10:55:49");
INSERT INTO tbl_activity VALUES("2554","Viewed Agenda List","1","2014-04-29 10:56:51");
INSERT INTO tbl_activity VALUES("2555","Viewed Backed-up System List","1","2014-04-29 10:57:06");
INSERT INTO tbl_activity VALUES("2556","Backed-up System","1","2014-04-29 10:57:15");
INSERT INTO tbl_activity VALUES("2557","Viewed Backed-up System List","1","2014-04-29 10:57:20");
INSERT INTO tbl_activity VALUES("2558","Return to Homepage","1","2014-04-29 10:57:51");
INSERT INTO tbl_activity VALUES("2559","Searched Monthly Committee Report per Committee","1","2014-04-29 10:59:08");
INSERT INTO tbl_activity VALUES("2560","Viewed Monitor Ordinance List","1","2014-04-29 10:59:12");
INSERT INTO tbl_activity VALUES("2561","Added Another Monitor Ordinance","1","2014-04-29 11:07:29");
INSERT INTO tbl_activity VALUES("2562","Viewed Monitor Ordinance ID: 1","1","2014-04-29 11:07:34");
INSERT INTO tbl_activity VALUES("2563","Added Another Monitor Ordinance","1","2014-04-29 11:08:26");
INSERT INTO tbl_activity VALUES("2564","Viewed Monitor Ordinance ID: 2","1","2014-04-29 11:08:32");
INSERT INTO tbl_activity VALUES("2565","Viewed Monitor Ordinance List","1","2014-04-29 11:08:41");
INSERT INTO tbl_activity VALUES("2566","Added Another Monitor Ordinance","1","2014-04-29 11:09:11");
INSERT INTO tbl_activity VALUES("2567","Viewed Monitor Ordinance ID: 3","1","2014-04-29 11:09:17");
INSERT INTO tbl_activity VALUES("2568","Added Another Monitor Ordinance","1","2014-04-29 11:10:08");
INSERT INTO tbl_activity VALUES("2569","Viewed Monitor Ordinance ID: 4","1","2014-04-29 11:10:14");
INSERT INTO tbl_activity VALUES("2570","Added Another Monitor Ordinance","1","2014-04-29 11:10:42");
INSERT INTO tbl_activity VALUES("2571","Viewed Monitor Ordinance ID: 5","1","2014-04-29 11:10:48");
INSERT INTO tbl_activity VALUES("2572","Viewed Monitor Ordinance List","1","2014-04-29 11:10:52");
INSERT INTO tbl_activity VALUES("2573","Viewed Monitor Ordinance ID: 1","1","2014-04-29 11:11:05");
INSERT INTO tbl_activity VALUES("2574","Downloaded Monitor Ordinance Form","1","2014-04-29 11:11:09");
INSERT INTO tbl_activity VALUES("2575","Downloaded Ordinance No. 0001 - 2014","1","2014-04-29 11:11:13");
INSERT INTO tbl_activity VALUES("2576","Viewed List of Communication","1","2014-04-29 11:11:20");
INSERT INTO tbl_activity VALUES("2577","Searched Statistical Resolution Report","1","2014-04-29 11:11:25");
INSERT INTO tbl_activity VALUES("2578","Viewed Statistical Report of Ordinance","1","2014-04-29 11:11:28");
INSERT INTO tbl_activity VALUES("2579","Viewed Committee Meeting List for Resolution","1","2014-04-29 11:11:44");
INSERT INTO tbl_activity VALUES("2580","Viewed Statistical Report of Ordinance","1","2014-04-29 11:19:04");
INSERT INTO tbl_activity VALUES("2581","Viewed Statistical Report of Ordinance","1","2014-04-29 11:24:03");
INSERT INTO tbl_activity VALUES("2582","Viewed User List","1","2014-04-29 11:25:34");
INSERT INTO tbl_activity VALUES("2583","Searched Monthly Committee Report per Committee","1","2014-04-29 11:25:38");
INSERT INTO tbl_activity VALUES("2584","Viewed Agenda List","1","2014-04-29 11:25:42");
INSERT INTO tbl_activity VALUES("2585","Viewed Monitor Ordinance List","1","2014-04-29 11:25:44");
INSERT INTO tbl_activity VALUES("2586","Added Another Monitor Ordinance","1","2014-04-29 11:26:14");
INSERT INTO tbl_activity VALUES("2587","Viewed Monitor Ordinance ID: 6","1","2014-04-29 11:26:19");
INSERT INTO tbl_activity VALUES("2588","Downloaded Ordinance No. 0001 - 2013","1","2014-04-29 11:26:23");
INSERT INTO tbl_activity VALUES("2589","Viewed Monitor Ordinance ID: 6","1","2014-04-29 11:27:40");
INSERT INTO tbl_activity VALUES("2590","Searched Monthly Committee Report per Committee","1","2014-04-29 11:27:45");
INSERT INTO tbl_activity VALUES("2591","Viewed Monitor Ordinance List","1","2014-04-29 11:27:49");
INSERT INTO tbl_activity VALUES("2592","Downloaded Ordinance No. 0003 - 2014","1","2014-04-29 11:27:53");
INSERT INTO tbl_activity VALUES("2593","Downloaded Ordinance No. 0001 - 2013","1","2014-04-29 11:27:57");
INSERT INTO tbl_activity VALUES("2594","Added Another Monitor Ordinance","1","2014-04-29 11:29:15");
INSERT INTO tbl_activity VALUES("2595","Viewed Monitor Ordinance ID: 7","1","2014-04-29 11:29:20");
INSERT INTO tbl_activity VALUES("2596","Viewed Committee Meeting List for Resolution","1","2014-04-29 11:44:16");
INSERT INTO tbl_activity VALUES("2597","Viewed List of Communication","1","2014-04-29 11:44:25");
INSERT INTO tbl_activity VALUES("2598","Searched Statistical Resolution Report","1","2014-04-29 11:46:16");
INSERT INTO tbl_activity VALUES("2599","Added Another Communication","1","2014-04-29 11:51:52");
INSERT INTO tbl_activity VALUES("2600","View Communication ID: 2014 - 0087","1","2014-04-29 11:51:58");
INSERT INTO tbl_activity VALUES("2601","Viewed List of Communication","1","2014-04-29 11:52:05");
INSERT INTO tbl_activity VALUES("2602","Viewed Communication for Referral List","1","2014-04-29 11:55:07");
INSERT INTO tbl_activity VALUES("2603","Viewed Communication for Referral List","1","2014-04-29 11:55:12");
INSERT INTO tbl_activity VALUES("2604","Viewed List of Communication","1","2014-04-29 11:55:14");
INSERT INTO tbl_activity VALUES("2605","Viewed Archived Communication List","1","2014-04-29 11:55:18");
INSERT INTO tbl_activity VALUES("2606","Viewed Communication List","1","2014-04-29 11:55:19");
INSERT INTO tbl_activity VALUES("2607","Viewed List of Communication","1","2014-04-29 11:55:23");
INSERT INTO tbl_activity VALUES("2608","Viewed List of Communication","1","2014-04-29 11:55:27");
INSERT INTO tbl_activity VALUES("2609","Viewed Committee Meeting List for Resolution","1","2014-04-29 11:55:35");
INSERT INTO tbl_activity VALUES("2610","Viewed Committee Meeting List for Resolution","1","2014-04-29 11:55:39");
INSERT INTO tbl_activity VALUES("2611","Viewed Resolution List","1","2014-04-29 11:55:42");
INSERT INTO tbl_activity VALUES("2612","Viewed Resolution List","1","2014-04-29 11:55:46");
INSERT INTO tbl_activity VALUES("2613","Viewed List of Communication","1","2014-04-29 11:55:50");
INSERT INTO tbl_activity VALUES("2614","Viewed List of Communication","1","2014-04-29 11:55:55");
INSERT INTO tbl_activity VALUES("2615","Viewed Communication List","1","2014-04-29 11:55:57");
INSERT INTO tbl_activity VALUES("2616","Viewed Communication List","1","2014-04-29 11:56:01");
INSERT INTO tbl_activity VALUES("2617","Viewed List of Communication","1","2014-04-29 11:56:22");
INSERT INTO tbl_activity VALUES("2618","Viewed List of Communication","1","2014-04-29 11:56:27");
INSERT INTO tbl_activity VALUES("2619","Assigned 2014 - 0087 To An Urgent Communication","1","2014-04-29 11:56:32");
INSERT INTO tbl_activity VALUES("2620","Viewed List of Communication","1","2014-04-29 11:56:33");
INSERT INTO tbl_activity VALUES("2621","Viewed Committee Meeting List for Resolution","1","2014-04-29 11:56:36");
INSERT INTO tbl_activity VALUES("2622","Viewed Committee Meeting List for Resolution","1","2014-04-29 11:56:41");
INSERT INTO tbl_activity VALUES("2623","Added Another Resolution","1","2014-04-29 11:57:11");
INSERT INTO tbl_activity VALUES("2624","Viewed Resolution No. 0011 - 2014","1","2014-04-29 11:57:17");
INSERT INTO tbl_activity VALUES("2625","Viewed List of Communication","1","2014-04-29 11:57:23");
INSERT INTO tbl_activity VALUES("2626","Added Another Communication","1","2014-04-29 12:00:12");
INSERT INTO tbl_activity VALUES("2627","View Communication ID: 2014 - 0088","1","2014-04-29 12:00:17");
INSERT INTO tbl_activity VALUES("2628","Downloaded Communication Letter","1","2014-04-29 12:00:21");
INSERT INTO tbl_activity VALUES("2629","Viewed List of Communication","1","2014-04-29 12:00:23");
INSERT INTO tbl_activity VALUES("2630","Viewed List of Communication","1","2014-04-29 12:00:27");
INSERT INTO tbl_activity VALUES("2631","Assigned 2014 - 0088 To An Urgent Communication","1","2014-04-29 12:00:33");
INSERT INTO tbl_activity VALUES("2632","Viewed List of Communication","1","2014-04-29 12:00:34");
INSERT INTO tbl_activity VALUES("2633","Viewed Committee Meeting List for Resolution","1","2014-04-29 12:00:39");
INSERT INTO tbl_activity VALUES("2634","Viewed Committee Meeting List for Resolution","1","2014-04-29 12:00:47");
INSERT INTO tbl_activity VALUES("2635","Added Another Resolution","1","2014-04-29 12:01:17");
INSERT INTO tbl_activity VALUES("2636","Viewed Resolution No. 0011 - 2014","1","2014-04-29 12:01:23");
INSERT INTO tbl_activity VALUES("2637","Downloaded Resolution No. 0011 - 2014 file","1","2014-04-29 12:02:03");
INSERT INTO tbl_activity VALUES("2638","Viewed Resolution No. 0011 - 2014","1","2014-04-29 12:02:05");
INSERT INTO tbl_activity VALUES("2639","Viewed Resolution No. 0011 - 2012","1","2014-04-29 12:02:12");
INSERT INTO tbl_activity VALUES("2640","Downloaded Resolution No. 0011 - 2012 file","1","2014-04-29 12:02:15");
INSERT INTO tbl_activity VALUES("2641","Searched Statistical Resolution Report","1","2014-04-29 12:02:19");
INSERT INTO tbl_activity VALUES("2642","Viewed Statistical Report of Ordinance","1","2014-04-29 12:02:28");
INSERT INTO tbl_activity VALUES("2643","Searched Ordinance History","1","2014-04-29 12:02:43");
INSERT INTO tbl_activity VALUES("2644","Printed Ordinance History Ordinance No. 0001 - 2013","1","2014-04-29 12:02:50");
INSERT INTO tbl_activity VALUES("2645","Searched Ordinance History","1","2014-04-29 12:03:44");
INSERT INTO tbl_activity VALUES("2646","Viewed List of Communication","1","2014-04-29 12:04:00");
INSERT INTO tbl_activity VALUES("2647","Return to Homepage","1","2014-04-29 12:06:20");
INSERT INTO tbl_activity VALUES("2648","Return to Homepage","1","2014-04-29 12:07:32");
INSERT INTO tbl_activity VALUES("2649","Return to Homepage","1","2014-04-29 12:08:27");
INSERT INTO tbl_activity VALUES("2650","Return to Homepage","1","2014-04-29 12:10:53");
INSERT INTO tbl_activity VALUES("2651","Return to Homepage","1","2014-04-29 12:11:10");
INSERT INTO tbl_activity VALUES("2652","Return to Homepage","1","2014-04-29 12:11:16");
INSERT INTO tbl_activity VALUES("2653","Return to Homepage","1","2014-04-29 12:12:03");
INSERT INTO tbl_activity VALUES("2654","Return to Homepage","1","2014-04-29 12:12:40");
INSERT INTO tbl_activity VALUES("2655","Return to Homepage","1","2014-04-29 12:20:12");
INSERT INTO tbl_activity VALUES("2656","Viewed Received Topics","1","2014-04-29 12:22:17");
INSERT INTO tbl_activity VALUES("2657","Return to Homepage","1","2014-04-29 12:22:26");
INSERT INTO tbl_activity VALUES("2658","Return to Homepage","1","2014-04-29 14:10:28");
INSERT INTO tbl_activity VALUES("2659","Logged Out","1","2014-04-29 14:11:47");
INSERT INTO tbl_activity VALUES("2660","Logged In","1","2014-04-29 14:12:17");
INSERT INTO tbl_activity VALUES("2661","Viewed Received Topics","1","2014-04-29 14:12:23");
INSERT INTO tbl_activity VALUES("2662","Approved and Posted a Topic ID: 37","1","2014-04-29 14:12:48");
INSERT INTO tbl_activity VALUES("2663","Viewed Received Topics","1","2014-04-29 14:12:52");
INSERT INTO tbl_activity VALUES("2664","Logged Out","1","2014-04-29 14:13:46");
INSERT INTO tbl_activity VALUES("2665","Logged In","2","2014-04-29 14:58:48");
INSERT INTO tbl_activity VALUES("2666","Return to Homepage","2","2014-04-29 14:58:52");
INSERT INTO tbl_activity VALUES("2667","Logged In","2","2014-04-29 14:58:58");
INSERT INTO tbl_activity VALUES("2668","Return to Homepage","2","2014-04-29 14:58:59");
INSERT INTO tbl_activity VALUES("2669","Viewed Referral List","2","2014-04-29 14:59:40");
INSERT INTO tbl_activity VALUES("2670","Downloaded Indorsement Letter","2","2014-04-29 14:59:50");
INSERT INTO tbl_activity VALUES("2671","Viewed List of Communication","2","2014-04-29 14:59:55");
INSERT INTO tbl_activity VALUES("2672","Added Another Communication","2","2014-04-29 15:01:51");
INSERT INTO tbl_activity VALUES("2673","View Communication ID: 2014 - 0089","2","2014-04-29 15:01:57");
INSERT INTO tbl_activity VALUES("2674","Downloaded Communication Letter","2","2014-04-29 15:02:11");
INSERT INTO tbl_activity VALUES("2675","Viewed List of Communication","2","2014-04-29 15:02:40");
INSERT INTO tbl_activity VALUES("2676","Assigned 2014 - 0072 for Referral","2","2014-04-29 15:03:16");
INSERT INTO tbl_activity VALUES("2677","Viewed List of Communication","2","2014-04-29 15:03:16");
INSERT INTO tbl_activity VALUES("2678","Assigned 2014 - 0072 for Referral","2","2014-04-29 15:03:18");
INSERT INTO tbl_activity VALUES("2679","Assigned 2014 - 0072 for Referral","2","2014-04-29 15:03:18");
INSERT INTO tbl_activity VALUES("2680","Viewed List of Communication","2","2014-04-29 15:03:20");
INSERT INTO tbl_activity VALUES("2681","Assigned 2014 - 0072 for Referral","2","2014-04-29 15:03:21");
INSERT INTO tbl_activity VALUES("2682","Viewed List of Communication","2","2014-04-29 15:03:26");
INSERT INTO tbl_activity VALUES("2683","Logged Out","2","2014-04-29 15:03:38");
INSERT INTO tbl_activity VALUES("2684","Logged In","2","2014-04-29 15:04:06");
INSERT INTO tbl_activity VALUES("2685","Return to Homepage","2","2014-04-29 15:04:11");
INSERT INTO tbl_activity VALUES("2686","Viewed Communication for Referral List","2","2014-04-29 15:04:27");
INSERT INTO tbl_activity VALUES("2687","Added Another Referral","2","2014-04-29 15:05:32");
INSERT INTO tbl_activity VALUES("2688","Viewed Referral ID: 17","2","2014-04-29 15:05:32");
INSERT INTO tbl_activity VALUES("2689","Viewed List of Referral for Committee Meeting","2","2014-04-29 15:05:47");
INSERT INTO tbl_activity VALUES("2690","Added Another Committee Meeting","2","2014-04-29 15:06:18");
INSERT INTO tbl_activity VALUES("2691","Viewed Committee Meeting ID: 9","2","2014-04-29 15:06:19");
INSERT INTO tbl_activity VALUES("2692","Viewed Committee Meeting ID: 9","2","2014-04-29 15:06:53");
INSERT INTO tbl_activity VALUES("2693","Assigned Date of Committe Report of Committee Meeting ID: 9","2","2014-04-29 15:06:54");
INSERT INTO tbl_activity VALUES("2694","Viewed Committee Meeting ID: 9","2","2014-04-29 15:06:59");
INSERT INTO tbl_activity VALUES("2695","Viewed Resolution List","2","2014-04-29 15:07:18");
INSERT INTO tbl_activity VALUES("2696","Logged Out","2","2014-04-29 15:07:20");
INSERT INTO tbl_activity VALUES("2697","Logged In","3","2014-04-29 15:07:45");
INSERT INTO tbl_activity VALUES("2698","Return to Homepage","3","2014-04-29 15:07:51");
INSERT INTO tbl_activity VALUES("2699","Viewed Committee Meeting List for Resolution","3","2014-04-29 15:08:11");
INSERT INTO tbl_activity VALUES("2700","Viewed Committee Meeting List for Resolution","3","2014-04-29 15:08:29");
INSERT INTO tbl_activity VALUES("2701","Added Another Resolution","3","2014-04-29 15:09:59");
INSERT INTO tbl_activity VALUES("2702","Viewed Resolution No. 0011 - 2014","3","2014-04-29 15:10:05");
INSERT INTO tbl_activity VALUES("2703","Downloaded Resolution No. 0011 - 2014 file","3","2014-04-29 15:10:17");
INSERT INTO tbl_activity VALUES("2704","Viewed Committee Meeting List for Ordinance","3","2014-04-29 15:10:29");
INSERT INTO tbl_activity VALUES("2705","Viewed Committee Meeting List for Resolution","3","2014-04-29 15:10:39");
INSERT INTO tbl_activity VALUES("2706","Searched Statistical Resolution Report","3","2014-04-29 15:10:49");
INSERT INTO tbl_activity VALUES("2707","Searched Resolution History","3","2014-04-29 15:11:19");
INSERT INTO tbl_activity VALUES("2708","Printed Resolution History of Resolution No. 0001 - 2014","3","2014-04-29 15:11:30");
INSERT INTO tbl_activity VALUES("2709","Searched Resolution History","3","2014-04-29 15:14:33");
INSERT INTO tbl_activity VALUES("2710","Searched Monthly Resolution Report","3","2014-04-29 15:14:40");
INSERT INTO tbl_activity VALUES("2711","Searched Monthly Resolution Report","3","2014-04-29 15:14:53");
INSERT INTO tbl_activity VALUES("2712","Searched 04 2014 Resolution Report","3","2014-04-29 15:14:53");
INSERT INTO tbl_activity VALUES("2713","Printed2014-04 Resolution Report","3","2014-04-29 15:15:00");
INSERT INTO tbl_activity VALUES("2714","Printed2014-04 Resolution Report","3","2014-04-29 15:16:21");
INSERT INTO tbl_activity VALUES("2715","Searched Monthly Resolution Report","3","2014-04-29 15:17:15");
INSERT INTO tbl_activity VALUES("2716","Searched Fiscal Yearly Resolution Report","3","2014-04-29 15:17:21");
INSERT INTO tbl_activity VALUES("2717","Searched Yearly Authored Resolution","3","2014-04-29 15:17:28");
INSERT INTO tbl_activity VALUES("2718","Searched Yearly Authored Resolution","3","2014-04-29 15:17:47");
INSERT INTO tbl_activity VALUES("2719","Searched Yearly Authored Resolution of Francisco \"Kit\" C. Ortega","3","2014-04-29 15:17:47");
INSERT INTO tbl_activity VALUES("2720","Printed Yearly Authored Resolution of Francisco \"Kit\" C. Ortega","3","2014-04-29 15:17:58");
INSERT INTO tbl_activity VALUES("2721","Searched Yearly Authored Resolution","3","2014-04-29 15:19:10");
INSERT INTO tbl_activity VALUES("2722","Viewed Statistical Report of Ordinance","3","2014-04-29 15:19:24");
INSERT INTO tbl_activity VALUES("2723","Searched Ordinance History","3","2014-04-29 15:19:38");
INSERT INTO tbl_activity VALUES("2724","Printed Ordinance History Ordinance No. 0002 - 2012","3","2014-04-29 15:19:48");
INSERT INTO tbl_activity VALUES("2725","Searched Ordinance History","3","2014-04-29 15:20:43");
INSERT INTO tbl_activity VALUES("2726","Searched Yearly Ordinance","3","2014-04-29 15:20:48");
INSERT INTO tbl_activity VALUES("2727","Searched Yearly Ordinance","3","2014-04-29 15:21:06");
INSERT INTO tbl_activity VALUES("2728","Searched Fiscal Yearly 2013 - 2014 Ordinance Report","3","2014-04-29 15:21:06");
INSERT INTO tbl_activity VALUES("2729","Viewed Committee Meeting List for Ordinance","3","2014-04-29 15:22:02");
INSERT INTO tbl_activity VALUES("2730","Viewed Ordinance List","3","2014-04-29 15:22:07");
INSERT INTO tbl_activity VALUES("2731","Viewed Ordinance List","3","2014-04-29 15:22:22");
INSERT INTO tbl_activity VALUES("2732","Viewed Ordinance List","3","2014-04-29 15:23:03");
INSERT INTO tbl_activity VALUES("2733","Viewed Ordinance List","3","2014-04-29 15:23:07");
INSERT INTO tbl_activity VALUES("2734","Downloaded Ordinance No. 0004 - 2014","3","2014-04-29 15:23:17");
INSERT INTO tbl_activity VALUES("2735","Viewed Committee Meeting List for Resolution","3","2014-04-29 15:23:56");
INSERT INTO tbl_activity VALUES("2736","Viewed Resolution List","3","2014-04-29 15:24:00");
INSERT INTO tbl_activity VALUES("2737","Viewed Resolution List","3","2014-04-29 15:24:18");
INSERT INTO tbl_activity VALUES("2738","Viewed Resolution List","3","2014-04-29 15:24:28");
INSERT INTO tbl_activity VALUES("2739","Viewed Resolution List","3","2014-04-29 15:24:41");
INSERT INTO tbl_activity VALUES("2740","Viewed Resolution List","3","2014-04-29 15:24:54");
INSERT INTO tbl_activity VALUES("2741","Viewed Resolution List","3","2014-04-29 15:24:59");
INSERT INTO tbl_activity VALUES("2742","Searched Monthly Committee Report per Committee","3","2014-04-29 15:25:16");
INSERT INTO tbl_activity VALUES("2743","Viewed Agenda List","3","2014-04-29 15:25:21");
INSERT INTO tbl_activity VALUES("2744","Viewed Agenda List","3","2014-04-29 15:25:50");
INSERT INTO tbl_activity VALUES("2745","Viewed Agenda List","3","2014-04-29 15:26:03");
INSERT INTO tbl_activity VALUES("2746","Viewed Agenda List","3","2014-04-29 15:26:04");
INSERT INTO tbl_activity VALUES("2747","Printed Agenda ID: 1","3","2014-04-29 15:26:20");
INSERT INTO tbl_activity VALUES("2748","Viewed Agenda List","3","2014-04-29 15:27:26");
INSERT INTO tbl_activity VALUES("2749","Viewed Tracking List of Communication","3","2014-04-29 15:27:34");
INSERT INTO tbl_activity VALUES("2750","Viewed Tracking List of Communication","3","2014-04-29 15:28:14");
INSERT INTO tbl_activity VALUES("2751","Viewed Monitor Ordinance List","3","2014-04-29 15:28:34");
INSERT INTO tbl_activity VALUES("2752","Viewed Monitor Ordinance ID: 4","3","2014-04-29 15:29:05");
INSERT INTO tbl_activity VALUES("2753","Downloaded Monitor Ordinance Form","3","2014-04-29 15:29:24");
INSERT INTO tbl_activity VALUES("2754","Added Another Monitor Ordinance","3","2014-04-29 15:31:10");
INSERT INTO tbl_activity VALUES("2755","Viewed Monitor Ordinance ID: 8","3","2014-04-29 15:31:16");
INSERT INTO tbl_activity VALUES("2756","Logged Out","3","2014-04-29 15:33:54");
INSERT INTO tbl_activity VALUES("2757","Logged In","1","2014-04-29 15:34:19");
INSERT INTO tbl_activity VALUES("2758","Return to Homepage","1","2014-04-29 15:34:24");
INSERT INTO tbl_activity VALUES("2759","Viewed Received Topics","1","2014-04-29 15:34:35");
INSERT INTO tbl_activity VALUES("2760","Viewed Topic ID: 47","1","2014-04-29 15:34:40");
INSERT INTO tbl_activity VALUES("2761","Approved and Posted a Topic ID: 47","1","2014-04-29 15:34:50");
INSERT INTO tbl_activity VALUES("2762","Viewed Received Topics","1","2014-04-29 15:34:50");
INSERT INTO tbl_activity VALUES("2763","Viewed Audit Trails","1","2014-04-29 15:35:45");
INSERT INTO tbl_activity VALUES("2764","Viewed User List","1","2014-04-29 15:36:28");
INSERT INTO tbl_activity VALUES("2765","Viewed Backed-up System List","1","2014-04-29 15:37:10");
INSERT INTO tbl_activity VALUES("2766","Backed-up System","1","2014-04-29 15:37:19");
INSERT INTO tbl_activity VALUES("2767","Viewed Backed-up System List","1","2014-04-29 15:37:19");
INSERT INTO tbl_activity VALUES("2768","Downloaded Database File","1","2014-04-29 15:38:17");
INSERT INTO tbl_activity VALUES("2769","Return to Homepage","1","2014-05-03 18:34:46");
INSERT INTO tbl_activity VALUES("2770","Return to Homepage","1","2014-05-03 19:10:39");
INSERT INTO tbl_activity VALUES("2771","Logged In","1","2014-05-04 07:20:41");
INSERT INTO tbl_activity VALUES("2772","Return to Homepage","1","2014-05-04 07:20:47");
INSERT INTO tbl_activity VALUES("2773","Logged In","1","2014-05-16 12:54:02");
INSERT INTO tbl_activity VALUES("2774","Return to Homepage","1","2014-05-16 12:54:03");
INSERT INTO tbl_activity VALUES("2775","Viewed Committee Meeting List for Resolution","1","2014-05-16 12:54:17");
INSERT INTO tbl_activity VALUES("2776","Viewed Committee Meeting List for Resolution","1","2014-05-16 12:55:24");
INSERT INTO tbl_activity VALUES("2777","Added Another Old Resolution","1","2014-05-16 13:17:35");
INSERT INTO tbl_activity VALUES("2778","Viewed Resolution No. 2009 - 2009","1","2014-05-16 13:17:40");
INSERT INTO tbl_activity VALUES("2779","Downloaded Resolution No. 2009 - 2009 file","1","2014-05-16 13:17:51");
INSERT INTO tbl_activity VALUES("2780","Downloaded Resolution No. 2009 - 2009 file","1","2014-05-16 13:18:51");
INSERT INTO tbl_activity VALUES("2781","Viewed Resolution List","1","2014-05-16 13:19:53");
INSERT INTO tbl_activity VALUES("2782","Downloaded Resolution No. 0001 - 2014 file","1","2014-05-16 13:19:57");
INSERT INTO tbl_activity VALUES("2783","Viewed Resolution No. 2009 - 2009","1","2014-05-16 13:21:31");
INSERT INTO tbl_activity VALUES("2784","Viewed Committee Meeting List for Ordinance","1","2014-05-16 13:28:35");
INSERT INTO tbl_activity VALUES("2785","Added Another Old Ordinance","1","2014-05-16 13:34:52");
INSERT INTO tbl_activity VALUES("2786","Viewed Ordinance No. 2001 - 2003","1","2014-05-16 13:34:58");
INSERT INTO tbl_activity VALUES("2787","Downloaded Ordinance No. 2001 - 2003","1","2014-05-16 13:35:03");
INSERT INTO tbl_activity VALUES("2788","Return to Homepage","1","2014-05-20 07:38:11");
INSERT INTO tbl_activity VALUES("2789","Logged In","1","2014-05-21 20:00:20");
INSERT INTO tbl_activity VALUES("2790","Return to Homepage","1","2014-05-21 20:00:26");
INSERT INTO tbl_activity VALUES("2791","Viewed List of Referrals for Committe Meeting","1","2014-05-21 20:00:51");
INSERT INTO tbl_activity VALUES("2792","Logged In","1","2014-06-09 21:43:02");
INSERT INTO tbl_activity VALUES("2793","Return to Homepage","1","2014-06-09 21:43:02");
INSERT INTO tbl_activity VALUES("2794","Viewed List of Referrals for Committe Meeting","1","2014-06-09 21:43:07");
INSERT INTO tbl_activity VALUES("2795","Viewed List of Communication","1","2014-06-09 21:43:10");
INSERT INTO tbl_activity VALUES("2796","Viewed Communication for Referral List","1","2014-06-09 21:43:12");
INSERT INTO tbl_activity VALUES("2797","Return to Homepage","1","2014-06-09 21:43:14");
INSERT INTO tbl_activity VALUES("2798","Viewed List of Communication","1","2014-06-09 21:43:24");
INSERT INTO tbl_activity VALUES("2799","Viewed Communication for Referral List","1","2014-06-09 21:43:26");
INSERT INTO tbl_activity VALUES("2800","Viewed List of Referrals for Committe Meeting","1","2014-06-09 21:43:28");
INSERT INTO tbl_activity VALUES("2801","Viewed Committee Meeting List for Resolution","1","2014-06-09 21:43:30");
INSERT INTO tbl_activity VALUES("2802","Viewed Agency List","1","2014-06-09 21:43:33");
INSERT INTO tbl_activity VALUES("2803","Viewed Audit Trails","1","2014-06-09 21:43:35");
INSERT INTO tbl_activity VALUES("2804","Searched Statistical Resolution Report","1","2014-06-09 21:43:38");
INSERT INTO tbl_activity VALUES("2805","Logged Out","1","2014-06-09 21:59:22");
INSERT INTO tbl_activity VALUES("2806","Logged In","1","2014-06-09 22:08:28");
INSERT INTO tbl_activity VALUES("2807","Return to Homepage","1","2014-06-09 22:08:29");
INSERT INTO tbl_activity VALUES("2808","Logged In","1","2014-06-10 18:53:52");
INSERT INTO tbl_activity VALUES("2809","Return to Homepage","1","2014-06-10 18:53:52");
INSERT INTO tbl_activity VALUES("2810","Viewed List of Communication","1","2014-06-10 18:56:18");
INSERT INTO tbl_activity VALUES("2811","Downloaded Communication Letter","1","2014-06-10 18:56:30");
INSERT INTO tbl_activity VALUES("2812","Downloaded Communication Letter","1","2014-06-10 18:57:07");
INSERT INTO tbl_activity VALUES("2813","Viewed List of Communication","1","2014-06-10 18:57:10");
INSERT INTO tbl_activity VALUES("2814","Downloaded Communication Letter","1","2014-06-10 18:57:13");
INSERT INTO tbl_activity VALUES("2815","Downloaded Communication Letter","1","2014-06-10 18:57:15");
INSERT INTO tbl_activity VALUES("2816","Viewed List of Communication","1","2014-06-10 18:58:37");
INSERT INTO tbl_activity VALUES("2817","Viewed Communication List","1","2014-06-10 18:59:11");
INSERT INTO tbl_activity VALUES("2818","Viewed Communication List","1","2014-06-10 18:59:12");
INSERT INTO tbl_activity VALUES("2819","Viewed Communication for Referral List","1","2014-06-10 18:59:18");
INSERT INTO tbl_activity VALUES("2820","Viewed List of Communication","1","2014-06-10 18:59:26");
INSERT INTO tbl_activity VALUES("2821","Viewed Communication for Referral List","1","2014-06-10 19:03:07");
INSERT INTO tbl_activity VALUES("2822","Viewed List of Communication","1","2014-06-10 19:03:11");
INSERT INTO tbl_activity VALUES("2823","Return to Homepage","1","2014-06-10 19:40:26");
INSERT INTO tbl_activity VALUES("2824","Viewed List of Communication","1","2014-06-10 19:40:41");
INSERT INTO tbl_activity VALUES("2825","Downloaded Communication Letter","1","2014-06-10 19:40:54");
INSERT INTO tbl_activity VALUES("2826","Viewed List of Referrals for Committe Meeting","1","2014-06-10 20:17:51");
INSERT INTO tbl_activity VALUES("2827","Viewed Committee Meeting List","1","2014-06-10 20:25:08");
INSERT INTO tbl_activity VALUES("2828","Viewed Committee Meeting List for Resolution","1","2014-06-10 20:25:10");
INSERT INTO tbl_activity VALUES("2829","Viewed Committee Meeting List for Ordinance","1","2014-06-10 20:31:47");
INSERT INTO tbl_activity VALUES("2830","Viewed List of Communication","1","2014-06-10 20:42:14");
INSERT INTO tbl_activity VALUES("2831","Logged Out","1","2014-06-10 21:01:55");
INSERT INTO tbl_activity VALUES("2832","Logged In","1","2014-06-10 21:02:39");
INSERT INTO tbl_activity VALUES("2833","Return to Homepage","1","2014-06-10 21:02:40");
INSERT INTO tbl_activity VALUES("2834","Viewed List of Communication","1","2014-06-10 21:02:45");
INSERT INTO tbl_activity VALUES("2835","Viewed List of Communication","1","2014-06-10 21:02:53");
INSERT INTO tbl_activity VALUES("2836","Viewed List of Communication","1","2014-06-10 21:02:53");
INSERT INTO tbl_activity VALUES("2837","Logged Out","1","2014-06-10 21:03:22");
INSERT INTO tbl_activity VALUES("2838","Logged In","1","2014-06-11 21:38:33");
INSERT INTO tbl_activity VALUES("2839","Return to Homepage","1","2014-06-11 21:38:34");
INSERT INTO tbl_activity VALUES("2840","Viewed List of Communication","1","2014-06-11 21:38:40");
INSERT INTO tbl_activity VALUES("2841","Viewed Archived Communication List","1","2014-06-11 21:39:07");
INSERT INTO tbl_activity VALUES("2842","Viewed Communication List","1","2014-06-11 21:39:19");
INSERT INTO tbl_activity VALUES("2843","Viewed List of Communication","1","2014-06-11 21:43:02");
INSERT INTO tbl_activity VALUES("2844","Viewed Communication List","1","2014-06-11 21:43:07");
INSERT INTO tbl_activity VALUES("2845","Viewed List of Communication","1","2014-06-11 21:43:11");
INSERT INTO tbl_activity VALUES("2846","Viewed Communication List","1","2014-06-11 21:43:13");
INSERT INTO tbl_activity VALUES("2847","Viewed List of Communication","1","2014-06-11 21:43:21");
INSERT INTO tbl_activity VALUES("2848","Viewed Communication List","1","2014-06-11 21:43:24");
INSERT INTO tbl_activity VALUES("2849","Viewed Communication List","1","2014-06-11 21:43:31");
INSERT INTO tbl_activity VALUES("2850","Viewed List of Communication","1","2014-06-11 21:43:35");
INSERT INTO tbl_activity VALUES("2851","Viewed Communication List","1","2014-06-11 21:43:39");
INSERT INTO tbl_activity VALUES("2852","Viewed Communication List","1","2014-06-11 21:43:53");
INSERT INTO tbl_activity VALUES("2853","Viewed Communication List","1","2014-06-11 21:44:00");
INSERT INTO tbl_activity VALUES("2854","Viewed List of Communication","1","2014-06-11 21:44:02");
INSERT INTO tbl_activity VALUES("2855","Viewed List of Communication","1","2014-06-11 21:44:07");
INSERT INTO tbl_activity VALUES("2856","Viewed Communication List","1","2014-06-11 21:44:13");
INSERT INTO tbl_activity VALUES("2857","Viewed Communication List","1","2014-06-11 21:44:16");
INSERT INTO tbl_activity VALUES("2858","Viewed Communication List","1","2014-06-11 21:44:22");
INSERT INTO tbl_activity VALUES("2859","Viewed Communication List","1","2014-06-11 21:44:27");
INSERT INTO tbl_activity VALUES("2860","Viewed Communication List","1","2014-06-11 21:44:30");
INSERT INTO tbl_activity VALUES("2861","Viewed Communication List","1","2014-06-11 21:44:35");
INSERT INTO tbl_activity VALUES("2862","Viewed List of Communication","1","2014-06-11 21:44:45");
INSERT INTO tbl_activity VALUES("2863","Viewed Communication List","1","2014-06-11 21:44:51");
INSERT INTO tbl_activity VALUES("2864","Viewed Communication List","1","2014-06-11 21:44:59");
INSERT INTO tbl_activity VALUES("2865","Viewed Communication List","1","2014-06-11 21:45:03");
INSERT INTO tbl_activity VALUES("2866","Viewed Communication List","1","2014-06-11 21:45:05");
INSERT INTO tbl_activity VALUES("2867","Viewed Communication List","1","2014-06-11 21:45:06");
INSERT INTO tbl_activity VALUES("2868","Viewed Communication List","1","2014-06-11 21:45:13");
INSERT INTO tbl_activity VALUES("2869","Viewed List of Communication","1","2014-06-11 21:45:15");
INSERT INTO tbl_activity VALUES("2870","Viewed Communication List","1","2014-06-11 21:45:34");
INSERT INTO tbl_activity VALUES("2871","Viewed Referral List","1","2014-06-11 21:46:29");
INSERT INTO tbl_activity VALUES("2872","Viewed Referral List","1","2014-06-11 21:46:56");
INSERT INTO tbl_activity VALUES("2873","Downloaded Indorsement Letter","1","2014-06-11 21:47:03");
INSERT INTO tbl_activity VALUES("2874","Viewed Referral List","1","2014-06-11 21:47:06");
INSERT INTO tbl_activity VALUES("2875","Viewed Referral List","1","2014-06-11 21:47:16");
INSERT INTO tbl_activity VALUES("2876","Viewed Committee Meeting List","1","2014-06-11 21:47:21");
INSERT INTO tbl_activity VALUES("2877","Viewed Committee Meeting List","1","2014-06-11 21:47:33");
INSERT INTO tbl_activity VALUES("2878","Downloaded Committee Report File","1","2014-06-11 21:47:46");
INSERT INTO tbl_activity VALUES("2879","Viewed Committee Meeting List","1","2014-06-11 21:47:49");
INSERT INTO tbl_activity VALUES("2880","Downloaded Committee Report File","1","2014-06-11 21:47:53");
INSERT INTO tbl_activity VALUES("2881","Viewed Resolution List","1","2014-06-11 21:47:58");
INSERT INTO tbl_activity VALUES("2882","Viewed Monitor Ordinance List","1","2014-06-11 21:48:17");
INSERT INTO tbl_activity VALUES("2883","Searched Statistical Resolution Report","1","2014-06-11 21:48:26");
INSERT INTO tbl_activity VALUES("2884","Return to Homepage","1","2014-06-11 21:48:43");
INSERT INTO tbl_activity VALUES("2885","Viewed Monitor Ordinance List","1","2014-06-11 21:49:15");
INSERT INTO tbl_activity VALUES("2886","Viewed Referral List","1","2014-06-11 21:49:19");
INSERT INTO tbl_activity VALUES("2887","Viewed List of Communication","1","2014-06-11 21:49:22");
INSERT INTO tbl_activity VALUES("2888","Logged Out","1","2014-06-11 21:49:24");
INSERT INTO tbl_activity VALUES("2889","Logged In","2","2014-06-11 21:49:37");
INSERT INTO tbl_activity VALUES("2890","Return to Homepage","2","2014-06-11 21:49:37");
INSERT INTO tbl_activity VALUES("2891","Viewed Communication for Referral List","2","2014-06-11 21:49:42");
INSERT INTO tbl_activity VALUES("2892","Viewed List of Referrals for Committe Meeting","2","2014-06-11 21:49:49");
INSERT INTO tbl_activity VALUES("2893","Viewed List of Referral for Committee Meeting","2","2014-06-11 21:49:54");
INSERT INTO tbl_activity VALUES("2894","Viewed Resolution List","2","2014-06-11 21:50:01");
INSERT INTO tbl_activity VALUES("2895","Viewed Communication List","2","2014-06-11 21:50:04");
INSERT INTO tbl_activity VALUES("2896","Viewed List of Referrals for Committe Meeting","2","2014-06-11 21:50:09");
INSERT INTO tbl_activity VALUES("2897","Viewed Communication for Referral List","2","2014-06-11 21:50:11");
INSERT INTO tbl_activity VALUES("2898","Viewed List of Referral for Committee Meeting","2","2014-06-11 21:50:14");
INSERT INTO tbl_activity VALUES("2899","Viewed Communication for Referral List","2","2014-06-11 21:50:16");
INSERT INTO tbl_activity VALUES("2900","Viewed Communication for Referral List","2","2014-06-11 21:50:17");
INSERT INTO tbl_activity VALUES("2901","Viewed Communication List","2","2014-06-11 21:50:31");
INSERT INTO tbl_activity VALUES("2902","Viewed List of Referrals for Committe Meeting","2","2014-06-11 21:50:35");
INSERT INTO tbl_activity VALUES("2903","Viewed List of Referral for Committee Meeting","2","2014-06-11 21:50:38");
INSERT INTO tbl_activity VALUES("2904","Viewed Communication for Referral List","2","2014-06-11 21:50:40");
INSERT INTO tbl_activity VALUES("2905","Viewed List of Referral for Committee Meeting","2","2014-06-11 21:50:44");
INSERT INTO tbl_activity VALUES("2906","Viewed List of Referrals for Committe Meeting","2","2014-06-11 21:50:48");
INSERT INTO tbl_activity VALUES("2907","Logged Out","2","2014-06-11 21:50:52");
INSERT INTO tbl_activity VALUES("2908","Logged In","3","2014-06-11 21:52:06");
INSERT INTO tbl_activity VALUES("2909","Return to Homepage","3","2014-06-11 21:52:07");
INSERT INTO tbl_activity VALUES("2910","Viewed Monitor Ordinance List","3","2014-06-11 21:52:13");
INSERT INTO tbl_activity VALUES("2911","Viewed Committee Meeting List for Ordinance","3","2014-06-11 21:52:16");
INSERT INTO tbl_activity VALUES("2912","Viewed Committee Meeting List for Resolution","3","2014-06-11 21:52:19");
INSERT INTO tbl_activity VALUES("2913","Viewed Committee Meeting List for Ordinance","3","2014-06-11 21:52:22");
INSERT INTO tbl_activity VALUES("2914","Viewed Committee Meeting List for Resolution","3","2014-06-11 21:52:25");
INSERT INTO tbl_activity VALUES("2915","Viewed Committee Meeting List for Ordinance","3","2014-06-11 21:52:31");
INSERT INTO tbl_activity VALUES("2916","Viewed Committee Meeting List for Resolution","3","2014-06-11 21:52:33");
INSERT INTO tbl_activity VALUES("2917","Viewed Committee Meeting List for Ordinance","3","2014-06-11 21:52:38");
INSERT INTO tbl_activity VALUES("2918","Viewed Monitor Ordinance List","3","2014-06-11 21:52:40");
INSERT INTO tbl_activity VALUES("2919","Viewed Committee Meeting List for Ordinance","3","2014-06-11 21:52:47");
INSERT INTO tbl_activity VALUES("2920","Viewed Committee Meeting List for Ordinance","3","2014-06-11 21:52:50");
INSERT INTO tbl_activity VALUES("2921","Viewed Committee Meeting List for Resolution","3","2014-06-11 21:52:52");
INSERT INTO tbl_activity VALUES("2922","Viewed Monitor Ordinance List","3","2014-06-11 21:52:57");
INSERT INTO tbl_activity VALUES("2923","Viewed Monitor Ordinance List","3","2014-06-11 21:52:58");
INSERT INTO tbl_activity VALUES("2924","Viewed Monitor Ordinance List","3","2014-06-11 21:53:08");
INSERT INTO tbl_activity VALUES("2925","Searched Statistical Resolution Report","3","2014-06-11 21:53:11");
INSERT INTO tbl_activity VALUES("2926","Logged Out","3","2014-06-11 21:53:18");
INSERT INTO tbl_activity VALUES("2927","Logged In","1","2014-06-11 21:53:32");
INSERT INTO tbl_activity VALUES("2928","Return to Homepage","1","2014-06-11 21:53:33");
INSERT INTO tbl_activity VALUES("2929","Return to Homepage","1","2014-06-11 21:54:02");
INSERT INTO tbl_activity VALUES("2930","Logged Out","1","2014-06-11 21:54:45");
INSERT INTO tbl_activity VALUES("2931","Logged In","2","2014-06-16 20:26:27");
INSERT INTO tbl_activity VALUES("2932","Return to Homepage","2","2014-06-16 20:26:28");
INSERT INTO tbl_activity VALUES("2933","Viewed Communication List","2","2014-06-16 20:30:02");
INSERT INTO tbl_activity VALUES("2934","Viewed Communication for Referral List","2","2014-06-16 20:30:10");
INSERT INTO tbl_activity VALUES("2935","Viewed List of Referrals for Committe Meeting","2","2014-06-16 20:30:14");
INSERT INTO tbl_activity VALUES("2936","Viewed List of Referral for Committee Meeting","2","2014-06-16 20:30:16");
INSERT INTO tbl_activity VALUES("2937","Logged Out","2","2014-06-16 20:30:17");
INSERT INTO tbl_activity VALUES("2938","Logged In","1","2014-06-16 20:30:33");
INSERT INTO tbl_activity VALUES("2939","Return to Homepage","1","2014-06-16 20:30:34");
INSERT INTO tbl_activity VALUES("2940","Return to Homepage","1","2014-06-16 20:31:58");
INSERT INTO tbl_activity VALUES("2941","Viewed List of Communication","1","2014-06-16 20:56:34");
INSERT INTO tbl_activity VALUES("2942","Viewed List of Communication","1","2014-06-16 20:56:36");
INSERT INTO tbl_activity VALUES("2943","Viewed List of Communication","1","2014-06-16 20:56:40");
INSERT INTO tbl_activity VALUES("2944","Viewed List of Communication","1","2014-06-16 20:56:44");
INSERT INTO tbl_activity VALUES("2945","Viewed List of Communication","1","2014-06-16 20:56:48");
INSERT INTO tbl_activity VALUES("2946","Return to Homepage","1","2014-06-16 20:56:53");
INSERT INTO tbl_activity VALUES("2947","Logged In","1","2014-06-18 20:29:21");
INSERT INTO tbl_activity VALUES("2948","Return to Homepage","1","2014-06-18 20:29:22");
INSERT INTO tbl_activity VALUES("2949","Viewed List of Referrals for Committe Meeting","1","2014-06-18 20:29:32");
INSERT INTO tbl_activity VALUES("2950","Viewed List of Referral for Committee Meeting","1","2014-06-18 20:29:37");
INSERT INTO tbl_activity VALUES("2951","Viewed Communication for Referral List","1","2014-06-18 20:29:40");
INSERT INTO tbl_activity VALUES("2952","Viewed List of Communication","1","2014-06-18 20:29:43");
INSERT INTO tbl_activity VALUES("2953","Downloaded Communication Letter","1","2014-06-18 20:29:45");
INSERT INTO tbl_activity VALUES("2954","Downloaded Communication Letter","1","2014-06-18 20:29:55");
INSERT INTO tbl_activity VALUES("2955","Viewed List of Communication","1","2014-06-18 20:29:58");
INSERT INTO tbl_activity VALUES("2956","Downloaded Communication Letter","1","2014-06-18 20:30:28");
INSERT INTO tbl_activity VALUES("2957","Downloaded Communication Letter","1","2014-06-18 20:30:59");
INSERT INTO tbl_activity VALUES("2958","Viewed List of Communication","1","2014-06-18 20:31:04");
INSERT INTO tbl_activity VALUES("2959","Downloaded Communication Letter","1","2014-06-18 20:31:15");
INSERT INTO tbl_activity VALUES("2960","Viewed Communication List","1","2014-06-18 20:31:41");
INSERT INTO tbl_activity VALUES("2961","Downloaded Communication Letter","1","2014-06-18 20:32:21");
INSERT INTO tbl_activity VALUES("2962","Viewed Communication List","1","2014-06-18 20:34:24");
INSERT INTO tbl_activity VALUES("2963","Downloaded Communication Letter","1","2014-06-18 20:34:30");
INSERT INTO tbl_activity VALUES("2964","Downloaded Communication Letter","1","2014-06-18 20:34:46");
INSERT INTO tbl_activity VALUES("2965","Viewed Communication List","1","2014-06-18 20:35:33");
INSERT INTO tbl_activity VALUES("2966","Viewed Committee Meeting List for Resolution","1","2014-06-18 20:35:41");
INSERT INTO tbl_activity VALUES("2967","Viewed Resolution List","1","2014-06-18 20:35:51");
INSERT INTO tbl_activity VALUES("2968","Downloaded Resolution No. 0001 - 2014 file","1","2014-06-18 20:35:56");
INSERT INTO tbl_activity VALUES("2969","Viewed Resolution List","1","2014-06-18 20:36:06");
INSERT INTO tbl_activity VALUES("2970","Downloaded Resolution No. 0001 - 2014 file","1","2014-06-18 20:36:16");
INSERT INTO tbl_activity VALUES("2971","Viewed Resolution List","1","2014-06-18 20:43:22");
INSERT INTO tbl_activity VALUES("2972","Logged In","1","2014-06-19 09:54:10");
INSERT INTO tbl_activity VALUES("2973","Return to Homepage","1","2014-06-19 09:54:11");
INSERT INTO tbl_activity VALUES("2974","Viewed List of Communication","1","2014-06-19 09:54:17");
INSERT INTO tbl_activity VALUES("2975","Viewed Referral List","1","2014-06-19 09:54:30");
INSERT INTO tbl_activity VALUES("2976","Viewed Referral List","1","2014-06-19 09:54:34");
INSERT INTO tbl_activity VALUES("2977","Viewed List of Communication","1","2014-06-19 09:54:38");
INSERT INTO tbl_activity VALUES("2978","Assigned 2014 - 0073 To An Urgent Communication","1","2014-06-19 09:54:40");
INSERT INTO tbl_activity VALUES("2979","Viewed List of Communication","1","2014-06-19 09:54:41");
INSERT INTO tbl_activity VALUES("2980","Viewed Referral List","1","2014-06-19 09:54:43");
INSERT INTO tbl_activity VALUES("2981","Viewed Referral List","1","2014-06-19 09:54:47");
INSERT INTO tbl_activity VALUES("2982","Viewed Referral List","1","2014-06-19 09:54:54");
INSERT INTO tbl_activity VALUES("2983","Viewed Referral List","1","2014-06-19 09:54:58");
INSERT INTO tbl_activity VALUES("2984","Viewed Referral List","1","2014-06-19 09:54:59");
INSERT INTO tbl_activity VALUES("2985","Viewed Committee Meeting List","1","2014-06-19 09:55:12");
INSERT INTO tbl_activity VALUES("2986","Viewed Committee Meeting List","1","2014-06-19 09:55:23");
INSERT INTO tbl_activity VALUES("2987","Viewed Committee Meeting List","1","2014-06-19 09:55:30");
INSERT INTO tbl_activity VALUES("2988","Viewed Committee Meeting List","1","2014-06-19 09:55:33");
INSERT INTO tbl_activity VALUES("2989","Viewed Committee Meeting List","1","2014-06-19 09:55:41");
INSERT INTO tbl_activity VALUES("2990","Viewed Referral List","1","2014-06-19 09:55:45");
INSERT INTO tbl_activity VALUES("2991","Viewed Referral List","1","2014-06-19 09:55:47");
INSERT INTO tbl_activity VALUES("2992","Viewed Committee Meeting List","1","2014-06-19 09:55:49");
INSERT INTO tbl_activity VALUES("2993","Viewed Committee Meeting List","1","2014-06-19 09:55:52");
INSERT INTO tbl_activity VALUES("2994","Viewed Committee Meeting List","1","2014-06-19 09:55:56");
INSERT INTO tbl_activity VALUES("2995","Viewed Monitor Ordinance List","1","2014-06-19 09:56:03");
INSERT INTO tbl_activity VALUES("2996","Logged Out","1","2014-06-19 09:56:17");
INSERT INTO tbl_activity VALUES("2997","Logged In","2","2014-06-19 09:56:27");
INSERT INTO tbl_activity VALUES("2998","Return to Homepage","2","2014-06-19 09:56:28");
INSERT INTO tbl_activity VALUES("2999","Viewed Communication for Referral List","2","2014-06-19 09:56:33");
INSERT INTO tbl_activity VALUES("3000","Viewed Communication for Referral List","2","2014-06-19 09:56:38");
INSERT INTO tbl_activity VALUES("3001","Viewed Communication for Referral List","2","2014-06-19 09:56:41");
INSERT INTO tbl_activity VALUES("3002","Viewed Communication for Referral List","2","2014-06-19 09:56:49");
INSERT INTO tbl_activity VALUES("3003","Viewed Communication for Referral List","2","2014-06-19 09:56:52");
INSERT INTO tbl_activity VALUES("3004","Viewed Referral List","2","2014-06-19 09:56:53");
INSERT INTO tbl_activity VALUES("3005","Viewed Referral List","2","2014-06-19 09:56:59");
INSERT INTO tbl_activity VALUES("3006","Viewed Communication for Referral List","2","2014-06-19 09:57:01");
INSERT INTO tbl_activity VALUES("3007","Viewed Communication for Referral List","2","2014-06-19 09:57:03");
INSERT INTO tbl_activity VALUES("3008","Viewed Communication for Referral List","2","2014-06-19 09:57:06");
INSERT INTO tbl_activity VALUES("3009","Viewed List of Referrals for Committe Meeting","2","2014-06-19 09:57:12");
INSERT INTO tbl_activity VALUES("3010","Viewed Committee Meeting List","2","2014-06-19 09:57:14");
INSERT INTO tbl_activity VALUES("3011","Viewed List of Referral for Committee Meeting","2","2014-06-19 09:57:17");
INSERT INTO tbl_activity VALUES("3012","Viewed List of Referrals for Committe Meeting","2","2014-06-19 09:57:20");
INSERT INTO tbl_activity VALUES("3013","Viewed Committee Meeting List","2","2014-06-19 09:57:22");
INSERT INTO tbl_activity VALUES("3014","Viewed List of Referral for Committee Meeting","2","2014-06-19 09:57:26");
INSERT INTO tbl_activity VALUES("3015","Viewed Committee Meeting List","2","2014-06-19 09:57:28");
INSERT INTO tbl_activity VALUES("3016","Viewed Monitor Ordinance List","2","2014-06-19 09:57:44");
INSERT INTO tbl_activity VALUES("3017","Logged Out","2","2014-06-19 09:57:46");
INSERT INTO tbl_activity VALUES("3018","Logged In","3","2014-06-19 09:57:56");
INSERT INTO tbl_activity VALUES("3019","Return to Homepage","3","2014-06-19 09:57:57");
INSERT INTO tbl_activity VALUES("3020","Viewed Monitor Ordinance List","3","2014-06-19 09:58:04");
INSERT INTO tbl_activity VALUES("3021","Viewed Committee Meeting List for Ordinance","3","2014-06-19 09:58:09");
INSERT INTO tbl_activity VALUES("3022","Viewed Committee Meeting List for Resolution","3","2014-06-19 09:58:14");
INSERT INTO tbl_activity VALUES("3023","Viewed Committee Meeting List for Resolution","3","2014-06-19 09:58:19");
INSERT INTO tbl_activity VALUES("3024","Viewed Committee Meeting List for Resolution","3","2014-06-19 09:58:20");
INSERT INTO tbl_activity VALUES("3025","Logged Out","3","2014-06-19 09:58:36");
INSERT INTO tbl_activity VALUES("3026","Logged In","1","2014-06-19 09:58:46");
INSERT INTO tbl_activity VALUES("3027","Return to Homepage","1","2014-06-19 09:58:47");
INSERT INTO tbl_activity VALUES("3028","Viewed List of Communication","1","2014-06-19 09:58:52");
INSERT INTO tbl_activity VALUES("3029","Viewed List of Communication","1","2014-06-19 09:58:56");
INSERT INTO tbl_activity VALUES("3030","Assigned 2014 - 0074 for Referral","1","2014-06-19 09:59:00");
INSERT INTO tbl_activity VALUES("3031","Viewed List of Communication","1","2014-06-19 09:59:01");
INSERT INTO tbl_activity VALUES("3032","Viewed Referral List","1","2014-06-19 09:59:03");
INSERT INTO tbl_activity VALUES("3033","Viewed Referral List","1","2014-06-19 09:59:07");
INSERT INTO tbl_activity VALUES("3034","Viewed Committee Meeting List","1","2014-06-19 09:59:11");
INSERT INTO tbl_activity VALUES("3035","Viewed Committee Meeting List","1","2014-06-19 09:59:14");
INSERT INTO tbl_activity VALUES("3036","Viewed Committee Meeting List","1","2014-06-19 09:59:16");
INSERT INTO tbl_activity VALUES("3037","Viewed Committee Meeting List","1","2014-06-19 09:59:19");
INSERT INTO tbl_activity VALUES("3038","Viewed Committee Meeting List","1","2014-06-19 09:59:22");
INSERT INTO tbl_activity VALUES("3039","Viewed Committee Meeting List","1","2014-06-19 09:59:24");
INSERT INTO tbl_activity VALUES("3040","Viewed Committee Meeting List","1","2014-06-19 09:59:26");
INSERT INTO tbl_activity VALUES("3041","Viewed Referral List","1","2014-06-19 09:59:28");
INSERT INTO tbl_activity VALUES("3042","Viewed Referral List","1","2014-06-19 09:59:31");
INSERT INTO tbl_activity VALUES("3043","Viewed Referral List","1","2014-06-19 09:59:32");
INSERT INTO tbl_activity VALUES("3044","Viewed Referral List","1","2014-06-19 09:59:35");
INSERT INTO tbl_activity VALUES("3045","Logged Out","1","2014-06-19 09:59:40");
INSERT INTO tbl_activity VALUES("3046","Logged In","2","2014-06-19 09:59:51");
INSERT INTO tbl_activity VALUES("3047","Return to Homepage","2","2014-06-19 09:59:52");
INSERT INTO tbl_activity VALUES("3048","Viewed Communication for Referral List","2","2014-06-19 09:59:56");
INSERT INTO tbl_activity VALUES("3049","Viewed Communication for Referral List","2","2014-06-19 09:59:59");
INSERT INTO tbl_activity VALUES("3050","Logged Out","2","2014-06-19 10:00:14");
INSERT INTO tbl_activity VALUES("3051","Logged In","3","2014-06-19 10:00:45");
INSERT INTO tbl_activity VALUES("3052","Return to Homepage","3","2014-06-19 10:00:46");
INSERT INTO tbl_activity VALUES("3053","Viewed Committee Meeting List for Ordinance","3","2014-06-19 10:00:52");
INSERT INTO tbl_activity VALUES("3054","Viewed Committee Meeting List for Resolution","3","2014-06-19 10:00:56");
INSERT INTO tbl_activity VALUES("3055","Return to Homepage","3","2014-06-19 10:05:02");
INSERT INTO tbl_activity VALUES("3056","Viewed Monitor Ordinance List","3","2014-06-19 10:06:27");
INSERT INTO tbl_activity VALUES("3057","Viewed Monitor Ordinance ID: 4","3","2014-06-19 10:06:54");
INSERT INTO tbl_activity VALUES("3058","Downloaded Monitor Ordinance Form","3","2014-06-19 10:07:07");
INSERT INTO tbl_activity VALUES("3059","Downloaded Monitor Ordinance Form","3","2014-06-19 10:07:10");
INSERT INTO tbl_activity VALUES("3060","Viewed Monitor Ordinance ID: 4","3","2014-06-19 10:07:12");
INSERT INTO tbl_activity VALUES("3061","Viewed Monitor Ordinance List","3","2014-06-19 10:11:59");
INSERT INTO tbl_activity VALUES("3062","Return to Homepage","3","2014-06-19 10:13:38");
INSERT INTO tbl_activity VALUES("3063","Return to Homepage","3","2014-06-19 10:18:28");
INSERT INTO tbl_activity VALUES("3064","Return to Homepage","3","2014-06-19 10:19:05");
INSERT INTO tbl_activity VALUES("3065","Return to Homepage","3","2014-06-19 10:20:16");
INSERT INTO tbl_activity VALUES("3066","Return to Homepage","3","2014-06-19 10:20:49");
INSERT INTO tbl_activity VALUES("3067","Return to Homepage","3","2014-06-19 10:21:13");
INSERT INTO tbl_activity VALUES("3068","Return to Homepage","3","2014-06-19 10:22:04");
INSERT INTO tbl_activity VALUES("3069","Return to Homepage","3","2014-06-19 10:23:14");
INSERT INTO tbl_activity VALUES("3070","Return to Homepage","3","2014-06-19 10:26:12");
INSERT INTO tbl_activity VALUES("3071","Viewed Communication List","3","2014-06-19 10:29:16");
INSERT INTO tbl_activity VALUES("3072","Return to Homepage","3","2014-06-19 10:29:21");
INSERT INTO tbl_activity VALUES("3073","Viewed Committee Meeting List for Ordinance","3","2014-06-19 10:29:32");
INSERT INTO tbl_activity VALUES("3074","Viewed Committee Meeting List for Resolution","3","2014-06-19 10:29:34");
INSERT INTO tbl_activity VALUES("3075","Return to Homepage","3","2014-06-19 10:34:33");
INSERT INTO tbl_activity VALUES("3076","Viewed Communication List","3","2014-06-19 11:41:15");
INSERT INTO tbl_activity VALUES("3077","Return to Homepage","3","2014-06-19 11:41:21");
INSERT INTO tbl_activity VALUES("3078","Logged In","1","2014-06-21 10:59:37");
INSERT INTO tbl_activity VALUES("3079","Return to Homepage","1","2014-06-21 10:59:38");
INSERT INTO tbl_activity VALUES("3080","Viewed List of Communication","1","2014-06-21 10:59:59");
INSERT INTO tbl_activity VALUES("3081","Downloaded Communication Letter","1","2014-06-21 11:00:46");
INSERT INTO tbl_activity VALUES("3082","Viewed List of Communication","1","2014-06-21 11:00:49");
INSERT INTO tbl_activity VALUES("3083","Viewed Referral List","1","2014-06-21 11:00:55");
INSERT INTO tbl_activity VALUES("3084","Return to Homepage","1","2014-06-21 11:37:28");
INSERT INTO tbl_activity VALUES("3085","Viewed List of Communication","1","2014-06-21 11:41:51");
INSERT INTO tbl_activity VALUES("3086","Viewed Referral List","1","2014-06-21 11:43:12");
INSERT INTO tbl_activity VALUES("3087","Searched Statistical Resolution Report","1","2014-06-21 11:45:46");
INSERT INTO tbl_activity VALUES("3088","Logged Out","1","2014-06-21 11:48:34");
INSERT INTO tbl_activity VALUES("3089","Logged In","1","2014-06-21 11:48:49");
INSERT INTO tbl_activity VALUES("3090","Return to Homepage","1","2014-06-21 11:48:50");
INSERT INTO tbl_activity VALUES("3091","Viewed List of Communication","1","2014-06-21 11:48:55");
INSERT INTO tbl_activity VALUES("3092","Viewed Communication List","1","2014-06-21 11:49:08");
INSERT INTO tbl_activity VALUES("3093","Viewed Communication List","1","2014-06-21 11:49:26");
INSERT INTO tbl_activity VALUES("3094","Viewed List of Communication","1","2014-06-21 11:49:29");
INSERT INTO tbl_activity VALUES("3095","Viewed Archived Communication List","1","2014-06-21 11:49:39");
INSERT INTO tbl_activity VALUES("3096","Viewed Communication List","1","2014-06-21 11:49:41");
INSERT INTO tbl_activity VALUES("3097","Viewed List of Communication","1","2014-06-21 11:49:48");
INSERT INTO tbl_activity VALUES("3098","Viewed Communication List","1","2014-06-21 11:49:56");
INSERT INTO tbl_activity VALUES("3099","Viewed Communication List","1","2014-06-21 11:49:59");
INSERT INTO tbl_activity VALUES("3100","Viewed Communication List","1","2014-06-21 11:50:03");
INSERT INTO tbl_activity VALUES("3101","Viewed Communication List","1","2014-06-21 11:51:00");
INSERT INTO tbl_activity VALUES("3102","Viewed List of Communication","1","2014-06-21 11:51:04");
INSERT INTO tbl_activity VALUES("3103","Viewed Communication List","1","2014-06-21 11:51:08");
INSERT INTO tbl_activity VALUES("3104","Viewed List of Communication","1","2014-06-21 11:51:20");
INSERT INTO tbl_activity VALUES("3105","Viewed Communication List","1","2014-06-21 11:51:25");
INSERT INTO tbl_activity VALUES("3106","Viewed Referral List","1","2014-06-21 11:51:27");
INSERT INTO tbl_activity VALUES("3107","Viewed List of Communication","1","2014-06-21 11:51:30");
INSERT INTO tbl_activity VALUES("3108","Added Another Communication","1","2014-06-21 11:52:46");
INSERT INTO tbl_activity VALUES("3109","View Communication ID: 2014 - 0090","1","2014-06-21 11:52:46");
INSERT INTO tbl_activity VALUES("3110","Viewed Communication List","1","2014-06-21 11:52:51");
INSERT INTO tbl_activity VALUES("3111","Viewed Communication List","1","2014-06-21 11:52:54");
INSERT INTO tbl_activity VALUES("3112","Viewed List of Communication","1","2014-06-21 11:52:57");
INSERT INTO tbl_activity VALUES("3113","Viewed Communication List","1","2014-06-21 11:53:01");
INSERT INTO tbl_activity VALUES("3114","Viewed Communication List","1","2014-06-21 11:53:05");
INSERT INTO tbl_activity VALUES("3115","Viewed Communication List","1","2014-06-21 11:53:11");
INSERT INTO tbl_activity VALUES("3116","View Communication ID: 2014 - 0010","1","2014-06-21 11:53:20");
INSERT INTO tbl_activity VALUES("3117","Viewed Communication List","1","2014-06-21 11:53:25");
INSERT INTO tbl_activity VALUES("3118","Viewed List of Communication","1","2014-06-21 11:53:33");
INSERT INTO tbl_activity VALUES("3119","Viewed Communication List","1","2014-06-21 11:53:47");
INSERT INTO tbl_activity VALUES("3120","Viewed Communication List","1","2014-06-21 11:53:52");
INSERT INTO tbl_activity VALUES("3121","Viewed List of Communication","1","2014-06-21 11:59:00");
INSERT INTO tbl_activity VALUES("3122","Viewed Communication List","1","2014-06-21 11:59:07");
INSERT INTO tbl_activity VALUES("3123","Viewed Communication List","1","2014-06-21 11:59:17");
INSERT INTO tbl_activity VALUES("3124","Viewed List of Communication","1","2014-06-21 11:59:21");
INSERT INTO tbl_activity VALUES("3125","Viewed Referral List","1","2014-06-21 11:59:30");
INSERT INTO tbl_activity VALUES("3126","Viewed Referral List","1","2014-06-21 11:59:34");
INSERT INTO tbl_activity VALUES("3127","Viewed List of Communication","1","2014-06-21 11:59:38");
INSERT INTO tbl_activity VALUES("3128","Viewed List of Communication","1","2014-06-21 11:59:47");
INSERT INTO tbl_activity VALUES("3129","Viewed Communication List","1","2014-06-21 11:59:49");
INSERT INTO tbl_activity VALUES("3130","Viewed Archived Communication List","1","2014-06-21 11:59:56");
INSERT INTO tbl_activity VALUES("3131","Viewed Communication List","1","2014-06-21 11:59:59");
INSERT INTO tbl_activity VALUES("3132","Viewed Communication List","1","2014-06-21 12:00:08");
INSERT INTO tbl_activity VALUES("3133","Viewed List of Communication","1","2014-06-21 12:00:12");
INSERT INTO tbl_activity VALUES("3134","Viewed Communication List","1","2014-06-21 12:00:19");
INSERT INTO tbl_activity VALUES("3135","View Communication ID: 2014 - 0001","1","2014-06-21 12:00:29");
INSERT INTO tbl_activity VALUES("3136","Viewed Communication List","1","2014-06-21 12:00:48");
INSERT INTO tbl_activity VALUES("3137","Added Another Communication","1","2014-06-21 12:01:23");
INSERT INTO tbl_activity VALUES("3138","View Communication ID: 2014 - 0091","1","2014-06-21 12:01:24");
INSERT INTO tbl_activity VALUES("3139","Viewed Communication List","1","2014-06-21 12:01:26");
INSERT INTO tbl_activity VALUES("3140","Viewed Communication List","1","2014-06-21 12:01:30");
INSERT INTO tbl_activity VALUES("3141","Viewed List of Communication","1","2014-06-21 12:01:35");
INSERT INTO tbl_activity VALUES("3142","Viewed List of Communication","1","2014-06-21 12:01:38");
INSERT INTO tbl_activity VALUES("3143","Assigned 2014 - 0091 To An Urgent Communication","1","2014-06-21 12:01:44");
INSERT INTO tbl_activity VALUES("3144","Viewed List of Communication","1","2014-06-21 12:01:45");
INSERT INTO tbl_activity VALUES("3145","Logged Out","1","2014-06-21 12:01:49");
INSERT INTO tbl_activity VALUES("3146","Logged In","2","2014-06-21 12:02:03");
INSERT INTO tbl_activity VALUES("3147","Return to Homepage","2","2014-06-21 12:02:04");
INSERT INTO tbl_activity VALUES("3148","Viewed Communication for Referral List","2","2014-06-21 12:02:08");
INSERT INTO tbl_activity VALUES("3149","Viewed Communication for Referral List","2","2014-06-21 12:02:11");
INSERT INTO tbl_activity VALUES("3150","Viewed Communication for Referral List","2","2014-06-21 12:02:13");
INSERT INTO tbl_activity VALUES("3151","Viewed List of Referral for Committee Meeting","2","2014-06-21 12:02:18");
INSERT INTO tbl_activity VALUES("3152","Viewed List of Referrals for Committe Meeting","2","2014-06-21 12:02:21");
INSERT INTO tbl_activity VALUES("3153","Viewed Communication for Referral List","2","2014-06-21 12:02:24");
INSERT INTO tbl_activity VALUES("3154","Viewed Communication for Referral List","2","2014-06-21 12:02:29");
INSERT INTO tbl_activity VALUES("3155","Logged Out","2","2014-06-21 12:02:33");
INSERT INTO tbl_activity VALUES("3156","Logged In","3","2014-06-21 12:02:42");
INSERT INTO tbl_activity VALUES("3157","Return to Homepage","3","2014-06-21 12:02:42");
INSERT INTO tbl_activity VALUES("3158","Viewed Monitor Ordinance List","3","2014-06-21 12:02:49");
INSERT INTO tbl_activity VALUES("3159","Viewed Committee Meeting List","3","2014-06-21 12:02:56");
INSERT INTO tbl_activity VALUES("3160","Viewed Monitor Ordinance List","3","2014-06-21 12:03:03");
INSERT INTO tbl_activity VALUES("3161","Viewed Committee Meeting List for Resolution","3","2014-06-21 12:03:06");
INSERT INTO tbl_activity VALUES("3162","Viewed Committee Meeting List for Ordinance","3","2014-06-21 12:03:08");
INSERT INTO tbl_activity VALUES("3163","Viewed Committee Meeting List for Resolution","3","2014-06-21 12:03:10");
INSERT INTO tbl_activity VALUES("3164","Viewed Referral List","3","2014-06-21 12:03:16");
INSERT INTO tbl_activity VALUES("3165","Viewed Referral List","3","2014-06-21 12:03:19");
INSERT INTO tbl_activity VALUES("3166","Logged Out","3","2014-06-21 12:03:22");
INSERT INTO tbl_activity VALUES("3167","Logged In","2","2014-06-21 12:03:32");
INSERT INTO tbl_activity VALUES("3168","Return to Homepage","2","2014-06-21 12:03:33");
INSERT INTO tbl_activity VALUES("3169","Viewed Communication for Referral List","2","2014-06-21 12:03:36");
INSERT INTO tbl_activity VALUES("3170","Viewed Communication for Referral List","2","2014-06-21 12:03:41");
INSERT INTO tbl_activity VALUES("3171","Viewed Communication for Referral List","2","2014-06-21 12:03:44");
INSERT INTO tbl_activity VALUES("3172","Viewed Communication for Referral List","2","2014-06-21 12:03:47");
INSERT INTO tbl_activity VALUES("3173","Viewed Referral List","2","2014-06-21 12:03:54");
INSERT INTO tbl_activity VALUES("3174","Viewed Referral List","2","2014-06-21 12:03:57");
INSERT INTO tbl_activity VALUES("3175","Viewed Communication for Referral List","2","2014-06-21 12:04:02");
INSERT INTO tbl_activity VALUES("3176","Viewed Communication for Referral List","2","2014-06-21 12:04:04");
INSERT INTO tbl_activity VALUES("3177","Viewed Communication List","2","2014-06-21 12:04:07");
INSERT INTO tbl_activity VALUES("3178","Viewed Communication List","2","2014-06-21 12:04:10");
INSERT INTO tbl_activity VALUES("3179","Logged Out","2","2014-06-21 12:04:18");
INSERT INTO tbl_activity VALUES("3180","Logged In","1","2014-06-21 12:04:27");
INSERT INTO tbl_activity VALUES("3181","Return to Homepage","1","2014-06-21 12:04:28");
INSERT INTO tbl_activity VALUES("3182","Viewed List of Communication","1","2014-06-21 12:04:32");
INSERT INTO tbl_activity VALUES("3183","Viewed Communication List","1","2014-06-21 12:04:39");
INSERT INTO tbl_activity VALUES("3184","Viewed Communication List","1","2014-06-21 12:04:43");
INSERT INTO tbl_activity VALUES("3185","Viewed Communication List","1","2014-06-21 12:04:51");
INSERT INTO tbl_activity VALUES("3186","Viewed List of Communication","1","2014-06-21 12:04:53");
INSERT INTO tbl_activity VALUES("3187","Logged Out","1","2014-06-21 12:04:59");
INSERT INTO tbl_activity VALUES("3188","Logged In","2","2014-06-21 12:05:12");
INSERT INTO tbl_activity VALUES("3189","Return to Homepage","2","2014-06-21 12:05:13");
INSERT INTO tbl_activity VALUES("3190","Viewed Communication for Referral List","2","2014-06-21 12:05:16");
INSERT INTO tbl_activity VALUES("3191","Viewed Communication for Referral List","2","2014-06-21 12:05:22");
INSERT INTO tbl_activity VALUES("3192","Viewed List of Referrals for Committe Meeting","2","2014-06-21 12:05:29");
INSERT INTO tbl_activity VALUES("3193","Viewed List of Referral for Committee Meeting","2","2014-06-21 12:05:31");
INSERT INTO tbl_activity VALUES("3194","Viewed Resolution List","2","2014-06-21 12:05:35");
INSERT INTO tbl_activity VALUES("3195","Viewed Ordinance List","2","2014-06-21 12:05:38");
INSERT INTO tbl_activity VALUES("3196","Viewed Monitor Ordinance List","2","2014-06-21 12:05:39");
INSERT INTO tbl_activity VALUES("3197","Logged Out","2","2014-06-21 12:05:49");
INSERT INTO tbl_activity VALUES("3198","Logged In","1","2014-06-21 12:05:59");
INSERT INTO tbl_activity VALUES("3199","Return to Homepage","1","2014-06-21 12:05:59");
INSERT INTO tbl_activity VALUES("3200","Viewed List of Communication","1","2014-06-21 12:06:05");
INSERT INTO tbl_activity VALUES("3201","Added Another Communication","1","2014-06-21 12:06:42");
INSERT INTO tbl_activity VALUES("3202","View Communication ID: 2014 - 0092","1","2014-06-21 12:06:43");
INSERT INTO tbl_activity VALUES("3203","Viewed Communication List","1","2014-06-21 12:06:51");
INSERT INTO tbl_activity VALUES("3204","Viewed Communication List","1","2014-06-21 12:06:55");
INSERT INTO tbl_activity VALUES("3205","Viewed List of Communication","1","2014-06-21 12:07:00");
INSERT INTO tbl_activity VALUES("3206","Viewed List of Communication","1","2014-06-21 12:07:03");
INSERT INTO tbl_activity VALUES("3207","Assigned 2014 - 0092 for Referral","1","2014-06-21 12:07:07");
INSERT INTO tbl_activity VALUES("3208","Viewed List of Communication","1","2014-06-21 12:07:08");
INSERT INTO tbl_activity VALUES("3209","Logged Out","1","2014-06-21 12:07:13");
INSERT INTO tbl_activity VALUES("3210","Logged In","2","2014-06-21 12:07:28");
INSERT INTO tbl_activity VALUES("3211","Return to Homepage","2","2014-06-21 12:07:29");
INSERT INTO tbl_activity VALUES("3212","Viewed Communication for Referral List","2","2014-06-21 12:07:33");
INSERT INTO tbl_activity VALUES("3213","Viewed Communication for Referral List","2","2014-06-21 12:07:36");
INSERT INTO tbl_activity VALUES("3214","Logged In","1","2014-06-21 21:57:16");
INSERT INTO tbl_activity VALUES("3215","Return to Homepage","1","2014-06-21 21:57:16");
INSERT INTO tbl_activity VALUES("3216","Viewed List of Communication","1","2014-06-21 21:57:50");
INSERT INTO tbl_activity VALUES("3217","Logged Out","1","2014-06-21 22:05:08");
INSERT INTO tbl_activity VALUES("3218","Logged In","2","2014-06-21 22:05:19");
INSERT INTO tbl_activity VALUES("3219","Return to Homepage","2","2014-06-21 22:05:19");
INSERT INTO tbl_activity VALUES("3220","Viewed Communication for Referral List","2","2014-06-21 22:07:09");
INSERT INTO tbl_activity VALUES("3221","Viewed Communication for Referral List","2","2014-06-21 22:07:14");
INSERT INTO tbl_activity VALUES("3222","Viewed Communication for Referral List","2","2014-06-21 22:07:15");
INSERT INTO tbl_activity VALUES("3223","Viewed List of Referrals for Committe Meeting","2","2014-06-21 22:07:20");
INSERT INTO tbl_activity VALUES("3224","Viewed Communication for Referral List","2","2014-06-21 22:07:23");
INSERT INTO tbl_activity VALUES("3225","Viewed List of Referrals for Committe Meeting","2","2014-06-21 22:07:27");
INSERT INTO tbl_activity VALUES("3226","Viewed List of Referral for Committee Meeting","2","2014-06-21 22:07:58");
INSERT INTO tbl_activity VALUES("3227","Viewed List of Referral for Committee Meeting","2","2014-06-21 22:08:01");
INSERT INTO tbl_activity VALUES("3228","Viewed List of Referrals for Committe Meeting","2","2014-06-21 22:08:08");
INSERT INTO tbl_activity VALUES("3229","Viewed List of Referrals for Committe Meeting","2","2014-06-21 22:08:10");
INSERT INTO tbl_activity VALUES("3230","Viewed List of Referral for Committee Meeting","2","2014-06-21 22:08:16");
INSERT INTO tbl_activity VALUES("3231","Viewed List of Referral for Committee Meeting","2","2014-06-21 22:08:18");
INSERT INTO tbl_activity VALUES("3232","Viewed Committee Meeting List","2","2014-06-21 22:08:20");
INSERT INTO tbl_activity VALUES("3233","Viewed List of Referral for Committee Meeting","2","2014-06-21 22:08:24");
INSERT INTO tbl_activity VALUES("3234","Viewed List of Referrals for Committe Meeting","2","2014-06-21 22:08:26");
INSERT INTO tbl_activity VALUES("3235","Viewed Communication for Referral List","2","2014-06-21 22:08:55");
INSERT INTO tbl_activity VALUES("3236","Viewed Communication for Referral List","2","2014-06-21 22:08:57");
INSERT INTO tbl_activity VALUES("3237","Viewed Resolution List","2","2014-06-21 22:08:59");
INSERT INTO tbl_activity VALUES("3238","Logged Out","2","2014-06-21 22:09:04");
INSERT INTO tbl_activity VALUES("3239","Logged In","3","2014-06-21 22:09:13");
INSERT INTO tbl_activity VALUES("3240","Return to Homepage","3","2014-06-21 22:09:14");
INSERT INTO tbl_activity VALUES("3241","Viewed Committee Meeting List","3","2014-06-21 22:09:22");
INSERT INTO tbl_activity VALUES("3242","Viewed Committee Meeting List","3","2014-06-21 22:09:27");
INSERT INTO tbl_activity VALUES("3243","Viewed Committee Meeting List for Resolution","3","2014-06-21 22:09:29");
INSERT INTO tbl_activity VALUES("3244","Viewed Committee Meeting List for Ordinance","3","2014-06-21 22:09:38");
INSERT INTO tbl_activity VALUES("3245","Viewed Ordinance List","3","2014-06-21 22:09:41");
INSERT INTO tbl_activity VALUES("3246","Viewed Committee Meeting List for Ordinance","3","2014-06-21 22:09:43");
INSERT INTO tbl_activity VALUES("3247","Viewed Committee Meeting List for Resolution","3","2014-06-21 22:09:46");
INSERT INTO tbl_activity VALUES("3248","Viewed Resolution List","3","2014-06-21 22:09:48");
INSERT INTO tbl_activity VALUES("3249","Viewed Committee Meeting List for Resolution","3","2014-06-21 22:09:52");
INSERT INTO tbl_activity VALUES("3250","Viewed Monitor Ordinance List","3","2014-06-21 22:09:56");
INSERT INTO tbl_activity VALUES("3251","Viewed Monitor Ordinance List","3","2014-06-21 22:14:25");
INSERT INTO tbl_activity VALUES("3252","Viewed Committee Meeting List","3","2014-06-21 22:14:33");
INSERT INTO tbl_activity VALUES("3253","Viewed Committee Meeting List for Resolution","3","2014-06-21 22:14:34");
INSERT INTO tbl_activity VALUES("3254","Viewed Committee Meeting List for Ordinance","3","2014-06-21 22:14:37");
INSERT INTO tbl_activity VALUES("3255","Viewed Communication List","3","2014-06-21 22:15:41");
INSERT INTO tbl_activity VALUES("3256","Viewed Communication List","3","2014-06-21 22:16:02");
INSERT INTO tbl_activity VALUES("3257","Viewed Communication List","3","2014-06-21 22:20:12");
INSERT INTO tbl_activity VALUES("3258","Viewed Referral List","3","2014-06-21 22:20:15");
INSERT INTO tbl_activity VALUES("3259","Viewed Committee Meeting List","3","2014-06-21 22:20:17");
INSERT INTO tbl_activity VALUES("3260","Viewed Committee Meeting List","3","2014-06-21 22:20:24");
INSERT INTO tbl_activity VALUES("3261","Viewed Committee Meeting List for Resolution","3","2014-06-21 22:20:26");
INSERT INTO tbl_activity VALUES("3262","Viewed Monitor Ordinance List","3","2014-06-21 22:20:32");
INSERT INTO tbl_activity VALUES("3263","Viewed Committee Meeting List for Resolution","3","2014-06-21 22:20:35");
INSERT INTO tbl_activity VALUES("3264","Viewed Resolution List","3","2014-06-21 22:20:40");
INSERT INTO tbl_activity VALUES("3265","Viewed Resolution List","3","2014-06-21 22:20:46");
INSERT INTO tbl_activity VALUES("3266","Viewed Committee Meeting List for Resolution","3","2014-06-21 22:20:55");
INSERT INTO tbl_activity VALUES("3267","Viewed Committee Meeting List for Resolution","3","2014-06-21 22:20:59");
INSERT INTO tbl_activity VALUES("3268","Added Another Resolution","3","2014-06-21 22:21:38");
INSERT INTO tbl_activity VALUES("3269","Viewed Resolution No. 0012 - 2014","3","2014-06-21 22:21:39");
INSERT INTO tbl_activity VALUES("3270","Viewed Resolution List","3","2014-06-21 22:21:41");
INSERT INTO tbl_activity VALUES("3271","Viewed Resolution List","3","2014-06-21 22:21:47");
INSERT INTO tbl_activity VALUES("3272","Viewed Resolution List","3","2014-06-21 22:22:48");
INSERT INTO tbl_activity VALUES("3273","Viewed Committee Meeting List for Ordinance","3","2014-06-21 22:22:51");
INSERT INTO tbl_activity VALUES("3274","Viewed Committee Meeting List for Ordinance","3","2014-06-21 22:22:54");
INSERT INTO tbl_activity VALUES("3275","Viewed Ordinance List","3","2014-06-21 22:22:56");
INSERT INTO tbl_activity VALUES("3276","Return to Homepage","3","2014-06-21 22:23:02");
INSERT INTO tbl_activity VALUES("3277","Return to Homepage","3","2014-06-21 22:23:21");
INSERT INTO tbl_activity VALUES("3278","Return to Homepage","3","2014-06-21 22:23:26");
INSERT INTO tbl_activity VALUES("3279","Return to Homepage","3","2014-06-21 22:23:27");
INSERT INTO tbl_activity VALUES("3280","Return to Homepage","3","2014-06-21 22:23:29");
INSERT INTO tbl_activity VALUES("3281","Return to Homepage","3","2014-06-21 22:23:30");
INSERT INTO tbl_activity VALUES("3282","Return to Homepage","3","2014-06-21 22:23:32");
INSERT INTO tbl_activity VALUES("3283","Return to Homepage","3","2014-06-21 22:23:33");
INSERT INTO tbl_activity VALUES("3284","Return to Homepage","3","2014-06-21 22:23:35");
INSERT INTO tbl_activity VALUES("3285","Viewed Referral List","3","2014-06-21 22:24:41");
INSERT INTO tbl_activity VALUES("3286","Viewed Communication List","3","2014-06-21 22:24:42");
INSERT INTO tbl_activity VALUES("3287","Logged Out","3","2014-06-21 22:24:52");
INSERT INTO tbl_activity VALUES("3288","Logged In","1","2014-06-21 22:25:00");
INSERT INTO tbl_activity VALUES("3289","Return to Homepage","1","2014-06-21 22:25:01");
INSERT INTO tbl_activity VALUES("3290","Logged Out","1","2014-06-21 22:26:01");
INSERT INTO tbl_activity VALUES("3291","Logged In","1","2014-06-21 22:26:23");
INSERT INTO tbl_activity VALUES("3292","Return to Homepage","1","2014-06-21 22:26:24");
INSERT INTO tbl_activity VALUES("3293","Logged Out","1","2014-06-21 22:26:31");
INSERT INTO tbl_activity VALUES("3294","Logged In","1","2014-06-21 22:27:05");
INSERT INTO tbl_activity VALUES("3295","Return to Homepage","1","2014-06-21 22:27:05");
INSERT INTO tbl_activity VALUES("3296","Logged Out","1","2014-06-21 22:27:11");
INSERT INTO tbl_activity VALUES("3297","Logged In","1","2014-06-21 22:27:42");
INSERT INTO tbl_activity VALUES("3298","Return to Homepage","1","2014-06-21 22:27:42");
INSERT INTO tbl_activity VALUES("3299","Viewed List of Communication","1","2014-06-21 22:29:13");
INSERT INTO tbl_activity VALUES("3300","Viewed Communication for Referral List","1","2014-06-21 22:29:16");
INSERT INTO tbl_activity VALUES("3301","Viewed List of Referrals for Committe Meeting","1","2014-06-21 22:29:20");
INSERT INTO tbl_activity VALUES("3302","Viewed List of Referral for Committee Meeting","1","2014-06-21 22:29:23");
INSERT INTO tbl_activity VALUES("3303","Viewed List of Referrals for Committe Meeting","1","2014-06-21 22:29:28");
INSERT INTO tbl_activity VALUES("3304","Viewed List of Referrals for Committe Meeting","1","2014-06-21 22:29:31");
INSERT INTO tbl_activity VALUES("3305","Viewed Committee Meeting List","1","2014-06-21 22:29:32");
INSERT INTO tbl_activity VALUES("3306","Viewed List of Referral for Committee Meeting","1","2014-06-21 22:29:36");
INSERT INTO tbl_activity VALUES("3307","Viewed Committee Meeting List for Resolution","1","2014-06-21 22:29:38");
INSERT INTO tbl_activity VALUES("3308","Viewed List of Referral for Committee Meeting","1","2014-06-21 22:29:41");
INSERT INTO tbl_activity VALUES("3309","Viewed List of Referral for Committee Meeting","1","2014-06-21 22:29:43");
INSERT INTO tbl_activity VALUES("3310","Viewed Committee Meeting List","1","2014-06-21 22:29:46");
INSERT INTO tbl_activity VALUES("3311","Viewed Committee Meeting List","1","2014-06-21 22:30:48");
INSERT INTO tbl_activity VALUES("3312","Viewed List of Referral for Committee Meeting","1","2014-06-21 22:30:53");
INSERT INTO tbl_activity VALUES("3313","Logged Out","1","2014-06-21 22:30:56");
INSERT INTO tbl_activity VALUES("3314","Logged In","1","2014-06-21 23:02:02");
INSERT INTO tbl_activity VALUES("3315","Return to Homepage","1","2014-06-21 23:02:02");
INSERT INTO tbl_activity VALUES("3316","Viewed List of Communication","1","2014-06-21 23:02:11");
INSERT INTO tbl_activity VALUES("3317","Added Another Communication","1","2014-06-21 23:03:54");
INSERT INTO tbl_activity VALUES("3318","View Communication ID: 2014 - 0093","1","2014-06-21 23:03:55");
INSERT INTO tbl_activity VALUES("3319","Viewed Communication List","1","2014-06-21 23:04:34");
INSERT INTO tbl_activity VALUES("3320","Viewed Communication List","1","2014-06-21 23:04:39");
INSERT INTO tbl_activity VALUES("3321","Viewed List of Communication","1","2014-06-21 23:04:45");
INSERT INTO tbl_activity VALUES("3322","Viewed List of Communication","1","2014-06-21 23:04:48");
INSERT INTO tbl_activity VALUES("3323","Assigned 2014 - 0093 To An Urgent Communication","1","2014-06-21 23:04:53");
INSERT INTO tbl_activity VALUES("3324","Viewed List of Communication","1","2014-06-21 23:04:54");
INSERT INTO tbl_activity VALUES("3325","Viewed Communication List","1","2014-06-21 23:04:58");
INSERT INTO tbl_activity VALUES("3326","Viewed Communication List","1","2014-06-21 23:05:01");
INSERT INTO tbl_activity VALUES("3327","Viewed Monitor Ordinance List","1","2014-06-21 23:05:06");
INSERT INTO tbl_activity VALUES("3328","Logged Out","1","2014-06-21 23:05:08");
INSERT INTO tbl_activity VALUES("3329","Logged In","3","2014-06-21 23:05:21");
INSERT INTO tbl_activity VALUES("3330","Return to Homepage","3","2014-06-21 23:05:22");
INSERT INTO tbl_activity VALUES("3331","Viewed Committee Meeting List for Resolution","3","2014-06-21 23:05:29");
INSERT INTO tbl_activity VALUES("3332","Viewed Committee Meeting List for Resolution","3","2014-06-21 23:05:34");
INSERT INTO tbl_activity VALUES("3333","Added Another Resolution","3","2014-06-21 23:06:06");
INSERT INTO tbl_activity VALUES("3334","Viewed Resolution No. 0013 - 2014","3","2014-06-21 23:06:06");
INSERT INTO tbl_activity VALUES("3335","Viewed Resolution List","3","2014-06-21 23:06:11");
INSERT INTO tbl_activity VALUES("3336","Viewed Resolution List","3","2014-06-21 23:06:19");
INSERT INTO tbl_activity VALUES("3337","Viewed Communication List","3","2014-06-21 23:07:28");
INSERT INTO tbl_activity VALUES("3338","Viewed Communication List","3","2014-06-21 23:10:18");
INSERT INTO tbl_activity VALUES("3339","Logged Out","3","2014-06-21 23:10:21");
INSERT INTO tbl_activity VALUES("3340","Logged In","1","2014-06-21 23:10:31");
INSERT INTO tbl_activity VALUES("3341","Return to Homepage","1","2014-06-21 23:10:32");
INSERT INTO tbl_activity VALUES("3342","Viewed List of Communication","1","2014-06-21 23:10:35");
INSERT INTO tbl_activity VALUES("3343","Viewed Communication List","1","2014-06-21 23:10:55");
INSERT INTO tbl_activity VALUES("3344","Return to Homepage","1","2014-06-21 23:13:49");
INSERT INTO tbl_activity VALUES("3345","Viewed List of Communication","1","2014-06-21 23:13:56");
INSERT INTO tbl_activity VALUES("3346","Assigned 2014 - 0089 for Referral","1","2014-06-21 23:15:51");
INSERT INTO tbl_activity VALUES("3347","Viewed List of Communication","1","2014-06-21 23:15:51");
INSERT INTO tbl_activity VALUES("3348","Logged Out","1","2014-06-21 23:15:56");
INSERT INTO tbl_activity VALUES("3349","Logged In","2","2014-06-21 23:16:12");
INSERT INTO tbl_activity VALUES("3350","Return to Homepage","2","2014-06-21 23:16:12");
INSERT INTO tbl_activity VALUES("3351","Viewed Communication for Referral List","2","2014-06-21 23:16:17");
INSERT INTO tbl_activity VALUES("3352","Viewed Communication for Referral List","2","2014-06-21 23:16:24");
INSERT INTO tbl_activity VALUES("3353","Return to Homepage","2","2014-06-21 23:16:41");
INSERT INTO tbl_activity VALUES("3354","Viewed Resolution List","2","2014-06-21 23:21:30");
INSERT INTO tbl_activity VALUES("3355","Viewed Ordinance List","2","2014-06-21 23:21:42");
INSERT INTO tbl_activity VALUES("3356","Viewed Resolution List","2","2014-06-21 23:21:52");
INSERT INTO tbl_activity VALUES("3357","Viewed Resolution List","2","2014-06-21 23:21:58");
INSERT INTO tbl_activity VALUES("3358","Viewed Resolution List","2","2014-06-21 23:27:09");
INSERT INTO tbl_activity VALUES("3359","Viewed List of Referrals for Committe Meeting","2","2014-06-21 23:29:07");
INSERT INTO tbl_activity VALUES("3360","Viewed Resolution List","2","2014-06-21 23:29:10");
INSERT INTO tbl_activity VALUES("3361","Viewed Monitor Ordinance List","2","2014-06-21 23:29:53");
INSERT INTO tbl_activity VALUES("3362","Viewed Communication List","2","2014-06-21 23:30:01");
INSERT INTO tbl_activity VALUES("3363","Searched Statistical Resolution Report","2","2014-06-21 23:30:08");
INSERT INTO tbl_activity VALUES("3364","Searched Monthly Committee Report per Committee","2","2014-06-21 23:30:13");
INSERT INTO tbl_activity VALUES("3365","Logged Out","2","2014-06-21 23:30:25");
INSERT INTO tbl_activity VALUES("3366","Logged In","2","2014-06-22 16:41:16");
INSERT INTO tbl_activity VALUES("3367","Return to Homepage","2","2014-06-22 16:41:17");
INSERT INTO tbl_activity VALUES("3368","Viewed Resolution List","2","2014-06-22 16:41:31");
INSERT INTO tbl_activity VALUES("3369","Viewed Resolution List","2","2014-06-22 16:42:21");
INSERT INTO tbl_activity VALUES("3370","Viewed Monitor Ordinance List","2","2014-06-22 16:44:07");
INSERT INTO tbl_activity VALUES("3371","Viewed Communication List","2","2014-06-22 16:44:12");
INSERT INTO tbl_activity VALUES("3372","Viewed Communication List","2","2014-06-22 16:44:16");
INSERT INTO tbl_activity VALUES("3373","Viewed Communication for Referral List","2","2014-06-22 16:44:20");
INSERT INTO tbl_activity VALUES("3374","Logged Out","2","2014-06-22 16:44:23");
INSERT INTO tbl_activity VALUES("3375","Logged In","1","2014-06-22 16:44:40");
INSERT INTO tbl_activity VALUES("3376","Return to Homepage","1","2014-06-22 16:44:41");
INSERT INTO tbl_activity VALUES("3377","Viewed List of Communication","1","2014-06-22 16:45:19");
INSERT INTO tbl_activity VALUES("3378","Viewed Committee Meeting List","1","2014-06-22 16:45:23");
INSERT INTO tbl_activity VALUES("3379","Viewed Referral List","1","2014-06-22 16:45:25");
INSERT INTO tbl_activity VALUES("3380","Viewed Referral List","1","2014-06-22 16:59:53");
INSERT INTO tbl_activity VALUES("3381","Viewed Committee Meeting List","1","2014-06-22 17:00:02");
INSERT INTO tbl_activity VALUES("3382","Viewed Resolution List","1","2014-06-22 17:00:13");
INSERT INTO tbl_activity VALUES("3383","Viewed Monitor Ordinance List","1","2014-06-22 17:05:51");
INSERT INTO tbl_activity VALUES("3384","Viewed List of Communication","1","2014-06-22 17:05:53");
INSERT INTO tbl_activity VALUES("3385","Viewed Resolution List","1","2014-06-22 17:06:38");
INSERT INTO tbl_activity VALUES("3386","Viewed Ordinance List","1","2014-06-22 17:06:42");
INSERT INTO tbl_activity VALUES("3387","Viewed List of Communication","1","2014-06-22 17:07:06");
INSERT INTO tbl_activity VALUES("3388","Viewed Referral List","1","2014-06-22 17:07:07");
INSERT INTO tbl_activity VALUES("3389","Logged Out","1","2014-06-22 17:07:13");
INSERT INTO tbl_activity VALUES("3390","Logged In","2","2014-06-22 17:07:26");
INSERT INTO tbl_activity VALUES("3391","Return to Homepage","2","2014-06-22 17:07:27");
INSERT INTO tbl_activity VALUES("3392","Viewed Resolution List","2","2014-06-22 17:07:42");
INSERT INTO tbl_activity VALUES("3393","Viewed Communication for Referral List","2","2014-06-22 17:07:55");
INSERT INTO tbl_activity VALUES("3394","Viewed Communication for Referral List","2","2014-06-22 17:08:44");
INSERT INTO tbl_activity VALUES("3395","Viewed Resolution List","2","2014-06-22 17:08:48");
INSERT INTO tbl_activity VALUES("3396","Viewed Communication for Referral List","2","2014-06-22 17:09:11");
INSERT INTO tbl_activity VALUES("3397","Viewed Resolution List","2","2014-06-22 17:09:25");
INSERT INTO tbl_activity VALUES("3398","Viewed Ordinance List","2","2014-06-22 17:09:29");
INSERT INTO tbl_activity VALUES("3399","Viewed Resolution List","2","2014-06-22 17:09:41");
INSERT INTO tbl_activity VALUES("3400","Viewed Communication List","2","2014-06-22 17:09:48");
INSERT INTO tbl_activity VALUES("3401","Viewed Resolution List","2","2014-06-22 17:11:06");
INSERT INTO tbl_activity VALUES("3402","Viewed Resolution List","2","2014-06-22 17:14:24");
INSERT INTO tbl_activity VALUES("3403","Viewed Communication for Referral List","2","2014-06-22 17:14:37");
INSERT INTO tbl_activity VALUES("3404","Viewed Communication for Referral List","2","2014-06-22 17:17:03");
INSERT INTO tbl_activity VALUES("3405","Viewed List of Referrals for Committe Meeting","2","2014-06-22 17:17:06");
INSERT INTO tbl_activity VALUES("3406","Viewed Resolution List","2","2014-06-22 17:17:08");
INSERT INTO tbl_activity VALUES("3407","Viewed Ordinance List","2","2014-06-22 17:17:14");
INSERT INTO tbl_activity VALUES("3408","Viewed Ordinance List","2","2014-06-22 17:17:51");
INSERT INTO tbl_activity VALUES("3409","Viewed Resolution List","2","2014-06-22 17:17:56");
INSERT INTO tbl_activity VALUES("3410","Logged Out","2","2014-06-22 17:18:01");
INSERT INTO tbl_activity VALUES("3411","Logged In","2","2014-06-22 17:18:14");
INSERT INTO tbl_activity VALUES("3412","Return to Homepage","2","2014-06-22 17:18:14");
INSERT INTO tbl_activity VALUES("3413","Viewed Resolution List","2","2014-06-22 17:18:20");
INSERT INTO tbl_activity VALUES("3414","Viewed Resolution List","2","2014-06-22 17:19:38");
INSERT INTO tbl_activity VALUES("3415","Viewed Resolution List","2","2014-06-22 17:19:43");
INSERT INTO tbl_activity VALUES("3416","Viewed Resolution List","2","2014-06-22 17:25:21");
INSERT INTO tbl_activity VALUES("3417","Viewed Ordinance List","2","2014-06-22 17:25:38");
INSERT INTO tbl_activity VALUES("3418","Viewed Ordinance List","2","2014-06-22 17:26:25");
INSERT INTO tbl_activity VALUES("3419","Viewed Resolution List","2","2014-06-22 17:26:29");
INSERT INTO tbl_activity VALUES("3420","Viewed Resolution List","2","2014-06-22 17:26:36");
INSERT INTO tbl_activity VALUES("3421","Viewed Resolution List","2","2014-06-22 17:27:00");
INSERT INTO tbl_activity VALUES("3422","Viewed Communication List","2","2014-06-22 17:27:40");
INSERT INTO tbl_activity VALUES("3423","Viewed Communication for Referral List","2","2014-06-22 17:27:44");
INSERT INTO tbl_activity VALUES("3424","Viewed List of Referrals for Committe Meeting","2","2014-06-22 17:27:46");
INSERT INTO tbl_activity VALUES("3425","Viewed List of Referral for Committee Meeting","2","2014-06-22 17:27:49");
INSERT INTO tbl_activity VALUES("3426","Viewed Resolution List","2","2014-06-22 17:27:52");
INSERT INTO tbl_activity VALUES("3427","Viewed Ordinance List","2","2014-06-22 17:27:55");
INSERT INTO tbl_activity VALUES("3428","Viewed Monitor Ordinance List","2","2014-06-22 17:27:59");
INSERT INTO tbl_activity VALUES("3429","Searched Statistical Resolution Report","2","2014-06-22 17:28:04");
INSERT INTO tbl_activity VALUES("3430","Return to Homepage","2","2014-06-22 17:28:08");
INSERT INTO tbl_activity VALUES("3431","Viewed Resolution List","2","2014-06-22 17:28:19");
INSERT INTO tbl_activity VALUES("3432","Viewed Resolution No. 0001 - 2014","2","2014-06-22 17:32:05");
INSERT INTO tbl_activity VALUES("3433","Viewed Resolution List","2","2014-06-22 17:32:08");
INSERT INTO tbl_activity VALUES("3434","Viewed Communication List","2","2014-06-22 17:33:00");
INSERT INTO tbl_activity VALUES("3435","Viewed Communication for Referral List","2","2014-06-22 17:33:03");
INSERT INTO tbl_activity VALUES("3436","Viewed List of Referrals for Committe Meeting","2","2014-06-22 17:33:05");
INSERT INTO tbl_activity VALUES("3437","Viewed Resolution List","2","2014-06-22 17:33:07");
INSERT INTO tbl_activity VALUES("3438","Viewed Ordinance List","2","2014-06-22 17:33:10");
INSERT INTO tbl_activity VALUES("3439","Return to Homepage","2","2014-06-22 17:33:13");
INSERT INTO tbl_activity VALUES("3440","Return to Homepage","2","2014-06-22 17:34:10");
INSERT INTO tbl_activity VALUES("3441","Viewed Resolution List","2","2014-06-22 17:34:15");
INSERT INTO tbl_activity VALUES("3442","Viewed Ordinance List","2","2014-06-22 17:34:20");
INSERT INTO tbl_activity VALUES("3443","Viewed Ordinance No. 0001 - 2013","2","2014-06-22 17:34:23");
INSERT INTO tbl_activity VALUES("3444","Return to Homepage","2","2014-06-22 17:34:26");
INSERT INTO tbl_activity VALUES("3445","Logged Out","2","2014-06-22 17:36:00");
INSERT INTO tbl_activity VALUES("3446","Logged In","1","2014-06-22 17:36:12");
INSERT INTO tbl_activity VALUES("3447","Return to Homepage","1","2014-06-22 17:36:13");
INSERT INTO tbl_activity VALUES("3448","Viewed List of Communication","1","2014-06-22 17:36:17");
INSERT INTO tbl_activity VALUES("3449","Viewed Referral List","1","2014-06-22 17:36:19");
INSERT INTO tbl_activity VALUES("3450","Viewed Ordinance List","1","2014-06-22 17:36:39");
INSERT INTO tbl_activity VALUES("3451","Viewed Resolution List","1","2014-06-22 17:36:43");
INSERT INTO tbl_activity VALUES("3452","Viewed Resolution No. 0001 - 2014","1","2014-06-22 17:37:23");
INSERT INTO tbl_activity VALUES("3453","Return to Homepage","1","2014-06-22 17:37:25");
INSERT INTO tbl_activity VALUES("3454","Viewed List of Communication","1","2014-06-22 17:37:30");
INSERT INTO tbl_activity VALUES("3455","Viewed Monitor Ordinance List","1","2014-06-22 17:38:47");
INSERT INTO tbl_activity VALUES("3456","Return to Homepage","1","2014-06-22 17:51:35");
INSERT INTO tbl_activity VALUES("3457","Logged Out","1","2014-06-22 17:52:29");
INSERT INTO tbl_activity VALUES("3458","Logged In","3","2014-06-22 17:53:04");
INSERT INTO tbl_activity VALUES("3459","Return to Homepage","3","2014-06-22 17:53:05");
INSERT INTO tbl_activity VALUES("3460","Viewed Communication List","3","2014-06-22 17:53:10");
INSERT INTO tbl_activity VALUES("3461","Viewed Committee Meeting List for Resolution","3","2014-06-22 17:59:30");
INSERT INTO tbl_activity VALUES("3462","Logged Out","3","2014-06-22 17:59:33");
INSERT INTO tbl_activity VALUES("3463","Logged In","1","2014-06-22 18:09:42");
INSERT INTO tbl_activity VALUES("3464","Return to Homepage","1","2014-06-22 18:09:43");
INSERT INTO tbl_activity VALUES("3465","Viewed List of Communication","1","2014-06-22 18:11:31");
INSERT INTO tbl_activity VALUES("3466","Viewed Communication for Referral List","1","2014-06-22 18:11:34");
INSERT INTO tbl_activity VALUES("3467","Viewed List of Referral for Committee Meeting","1","2014-06-22 18:11:37");
INSERT INTO tbl_activity VALUES("3468","Viewed Committee Meeting List for Resolution","1","2014-06-22 18:11:40");
INSERT INTO tbl_activity VALUES("3469","Viewed Committee Meeting List for Resolution","1","2014-06-22 18:12:59");
INSERT INTO tbl_activity VALUES("3470","Viewed Committee Meeting List for Ordinance","1","2014-06-22 18:13:01");
INSERT INTO tbl_activity VALUES("3471","Viewed Committee Meeting List for Resolution","1","2014-06-22 18:13:05");
INSERT INTO tbl_activity VALUES("3472","Viewed List of Referrals for Committe Meeting","1","2014-06-22 18:13:08");
INSERT INTO tbl_activity VALUES("3473","Viewed List of Referral for Committee Meeting","1","2014-06-22 18:13:11");
INSERT INTO tbl_activity VALUES("3474","Viewed Communication for Referral List","1","2014-06-22 18:13:13");
INSERT INTO tbl_activity VALUES("3475","Viewed List of Communication","1","2014-06-22 18:13:14");
INSERT INTO tbl_activity VALUES("3476","Viewed Agency List","1","2014-06-22 18:13:20");
INSERT INTO tbl_activity VALUES("3477","Viewed User List","1","2014-06-22 18:13:56");
INSERT INTO tbl_activity VALUES("3478","Viewed Communication for Referral List","1","2014-06-22 18:14:03");
INSERT INTO tbl_activity VALUES("3479","Viewed Archived Referral List","1","2014-06-22 18:14:07");
INSERT INTO tbl_activity VALUES("3480","Viewed List of Communication","1","2014-06-22 18:14:09");
INSERT INTO tbl_activity VALUES("3481","Viewed Archived Communication List","1","2014-06-22 18:14:11");
INSERT INTO tbl_activity VALUES("3482","Viewed List of Communication","1","2014-06-22 18:14:14");
INSERT INTO tbl_activity VALUES("3483","Viewed List of Referrals for Committe Meeting","1","2014-06-22 18:14:19");
INSERT INTO tbl_activity VALUES("3484","Viewed List of Communication","1","2014-06-22 18:14:21");
INSERT INTO tbl_activity VALUES("3485","Viewed List of Communication","1","2014-06-22 18:16:38");
INSERT INTO tbl_activity VALUES("3486","Viewed Communication List","1","2014-06-22 18:16:48");
INSERT INTO tbl_activity VALUES("3487","Viewed Communication List","1","2014-06-22 18:16:59");
INSERT INTO tbl_activity VALUES("3488","Viewed Communication List","1","2014-06-22 18:17:01");
INSERT INTO tbl_activity VALUES("3489","Logged Out","1","2014-06-22 18:21:22");
INSERT INTO tbl_activity VALUES("3490","Logged In","1","2014-06-22 18:21:32");
INSERT INTO tbl_activity VALUES("3491","Return to Homepage","1","2014-06-22 18:21:34");
INSERT INTO tbl_activity VALUES("3492","Viewed List of Communication","1","2014-06-22 18:29:49");
INSERT INTO tbl_activity VALUES("3493","Logged Out","1","2014-06-22 18:29:56");
INSERT INTO tbl_activity VALUES("3494","Logged In","1","2014-06-22 18:30:07");
INSERT INTO tbl_activity VALUES("3495","Return to Homepage","1","2014-06-22 18:30:07");
INSERT INTO tbl_activity VALUES("3496","Viewed List of Communication","1","2014-06-22 18:30:11");
INSERT INTO tbl_activity VALUES("3497","Viewed Communication List","1","2014-06-22 18:30:17");
INSERT INTO tbl_activity VALUES("3498","Viewed Communication List","1","2014-06-22 18:30:21");
INSERT INTO tbl_activity VALUES("3499","Viewed List of Communication","1","2014-06-22 18:30:27");
INSERT INTO tbl_activity VALUES("3500","Assigned 2014 - 0075 for Referral","1","2014-06-22 18:30:34");
INSERT INTO tbl_activity VALUES("3501","Viewed List of Communication","1","2014-06-22 18:30:35");
INSERT INTO tbl_activity VALUES("3502","Viewed Communication List","1","2014-06-22 18:30:40");
INSERT INTO tbl_activity VALUES("3503","Viewed Communication List","1","2014-06-22 18:30:43");
INSERT INTO tbl_activity VALUES("3504","Viewed Communication List","1","2014-06-22 18:30:47");
INSERT INTO tbl_activity VALUES("3505","Viewed List of Communication","1","2014-06-22 18:30:49");
INSERT INTO tbl_activity VALUES("3506","Viewed Communication for Referral List","1","2014-06-22 18:30:54");
INSERT INTO tbl_activity VALUES("3507","Viewed Communication for Referral List","1","2014-06-22 18:30:58");
INSERT INTO tbl_activity VALUES("3508","Added Another Referral","1","2014-06-22 18:31:37");
INSERT INTO tbl_activity VALUES("3509","Viewed Referral ID: 18","1","2014-06-22 18:31:37");
INSERT INTO tbl_activity VALUES("3510","Viewed Referral List","1","2014-06-22 18:31:45");
INSERT INTO tbl_activity VALUES("3511","Viewed Referral List","1","2014-06-22 18:31:49");
INSERT INTO tbl_activity VALUES("3512","Viewed List of Referrals for Committe Meeting","1","2014-06-22 18:32:04");
INSERT INTO tbl_activity VALUES("3513","Viewed List of Referral for Committee Meeting","1","2014-06-22 18:32:06");
INSERT INTO tbl_activity VALUES("3514","Viewed Committee Meeting List for Resolution","1","2014-06-22 18:32:16");
INSERT INTO tbl_activity VALUES("3515","Viewed Committee Meeting List for Resolution","1","2014-06-22 18:32:19");
INSERT INTO tbl_activity VALUES("3516","Viewed Resolution List","1","2014-06-22 18:32:26");
INSERT INTO tbl_activity VALUES("3517","Viewed Resolution List","1","2014-06-22 18:32:31");
INSERT INTO tbl_activity VALUES("3518","Viewed Resolution List","1","2014-06-22 18:32:38");
INSERT INTO tbl_activity VALUES("3519","Viewed Committee Meeting List for Resolution","1","2014-06-22 18:32:55");
INSERT INTO tbl_activity VALUES("3520","Viewed Committee Meeting List for Resolution","1","2014-06-22 18:33:00");
INSERT INTO tbl_activity VALUES("3521","Viewed List of Referrals for Committe Meeting","1","2014-06-22 18:33:03");
INSERT INTO tbl_activity VALUES("3522","Viewed List of Referral for Committee Meeting","1","2014-06-22 18:33:06");
INSERT INTO tbl_activity VALUES("3523","Added Another Committee Meeting","1","2014-06-22 18:33:21");
INSERT INTO tbl_activity VALUES("3524","Viewed Committee Meeting ID: 10","1","2014-06-22 18:33:21");
INSERT INTO tbl_activity VALUES("3525","Viewed Committee Meeting ID: 10","1","2014-06-22 18:33:37");
INSERT INTO tbl_activity VALUES("3526","Assigned Date of Committe Report of Committee Meeting ID: 10","1","2014-06-22 18:33:38");
INSERT INTO tbl_activity VALUES("3527","Viewed Committee Meeting ID: 10","1","2014-06-22 18:33:38");
INSERT INTO tbl_activity VALUES("3528","Viewed Committee Meeting List for Resolution","1","2014-06-22 18:33:44");
INSERT INTO tbl_activity VALUES("3529","Viewed Committee Meeting List for Resolution","1","2014-06-22 18:33:47");
INSERT INTO tbl_activity VALUES("3530","Added Another Resolution","1","2014-06-22 18:34:06");
INSERT INTO tbl_activity VALUES("3531","Viewed Resolution No. 0014 - 2014","1","2014-06-22 18:34:07");
INSERT INTO tbl_activity VALUES("3532","Viewed Committee Meeting List for Resolution","1","2014-06-22 18:34:11");
INSERT INTO tbl_activity VALUES("3533","Viewed Resolution List","1","2014-06-22 18:34:13");
INSERT INTO tbl_activity VALUES("3534","Viewed Resolution List","1","2014-06-22 18:34:18");
INSERT INTO tbl_activity VALUES("3535","Viewed Committee Meeting List for Resolution","1","2014-06-22 18:34:31");
INSERT INTO tbl_activity VALUES("3536","Viewed Resolution List","1","2014-06-22 18:34:34");
INSERT INTO tbl_activity VALUES("3537","Logged Out","1","2014-06-22 18:34:40");
INSERT INTO tbl_activity VALUES("3538","Logged In","3","2014-06-22 18:34:48");
INSERT INTO tbl_activity VALUES("3539","Return to Homepage","3","2014-06-22 18:34:49");
INSERT INTO tbl_activity VALUES("3540","Viewed Monitor Ordinance List","3","2014-06-22 18:34:52");
INSERT INTO tbl_activity VALUES("3541","Viewed Committee Meeting List for Resolution","3","2014-06-22 18:35:01");
INSERT INTO tbl_activity VALUES("3542","Viewed Committee Meeting List for Ordinance","3","2014-06-22 18:40:21");
INSERT INTO tbl_activity VALUES("3543","Viewed Committee Meeting List for Ordinance","3","2014-06-22 18:50:42");
INSERT INTO tbl_activity VALUES("3544","Viewed Committee Meeting List for Resolution","3","2014-06-22 18:51:14");
INSERT INTO tbl_activity VALUES("3545","Viewed Committee Meeting List for Ordinance","3","2014-06-22 18:51:16");
INSERT INTO tbl_activity VALUES("3546","Viewed Committee Meeting List for Ordinance","3","2014-06-22 18:51:43");
INSERT INTO tbl_activity VALUES("3547","Viewed Committee Meeting List for Ordinance","3","2014-06-22 18:51:46");
INSERT INTO tbl_activity VALUES("3548","Viewed Committee Meeting List for Resolution","3","2014-06-22 18:51:48");
INSERT INTO tbl_activity VALUES("3549","Return to Homepage","3","2014-06-22 18:52:14");
INSERT INTO tbl_activity VALUES("3550","Return to Homepage","3","2014-06-22 18:53:48");
INSERT INTO tbl_activity VALUES("3551","Viewed Committee Meeting List for Resolution","3","2014-06-22 18:53:53");
INSERT INTO tbl_activity VALUES("3552","Viewed Committee Meeting List for Ordinance","3","2014-06-22 18:53:56");
INSERT INTO tbl_activity VALUES("3553","Viewed Communication List","3","2014-06-22 18:53:58");
INSERT INTO tbl_activity VALUES("3554","Viewed Committee Meeting List for Resolution","3","2014-06-22 19:03:01");
INSERT INTO tbl_activity VALUES("3555","Logged Out","3","2014-06-22 19:03:03");
INSERT INTO tbl_activity VALUES("3556","Logged In","2","2014-06-22 19:03:15");
INSERT INTO tbl_activity VALUES("3557","Return to Homepage","2","2014-06-22 19:03:16");
INSERT INTO tbl_activity VALUES("3558","Viewed Resolution List","2","2014-06-22 19:03:35");
INSERT INTO tbl_activity VALUES("3559","Viewed Ordinance List","2","2014-06-22 19:03:41");
INSERT INTO tbl_activity VALUES("3560","Viewed Communication for Referral List","2","2014-06-22 22:32:46");
INSERT INTO tbl_activity VALUES("3561","Viewed List of Referrals for Committe Meeting","2","2014-06-22 23:02:00");
INSERT INTO tbl_activity VALUES("3562","Viewed List of Referral for Committee Meeting","2","2014-06-22 23:02:07");
INSERT INTO tbl_activity VALUES("3563","Viewed Committee Meeting List","2","2014-06-22 23:02:12");
INSERT INTO tbl_activity VALUES("3564","Viewed Monitor Ordinance List","2","2014-06-22 23:16:27");
INSERT INTO tbl_activity VALUES("3565","Searched Statistical Resolution Report","2","2014-06-22 23:18:06");
INSERT INTO tbl_activity VALUES("3566","Searched Monthly Committee Report per Committee","2","2014-06-22 23:18:13");
INSERT INTO tbl_activity VALUES("3567","Viewed Communication List","2","2014-06-22 23:22:02");
INSERT INTO tbl_activity VALUES("3568","Logged Out","2","2014-06-22 23:22:09");
INSERT INTO tbl_activity VALUES("3569","Logged In","1","2014-06-22 23:22:20");
INSERT INTO tbl_activity VALUES("3570","Return to Homepage","1","2014-06-22 23:22:20");
INSERT INTO tbl_activity VALUES("3571","Viewed List of Communication","1","2014-06-22 23:22:25");
INSERT INTO tbl_activity VALUES("3572","Viewed Communication List","1","2014-06-22 23:22:27");
INSERT INTO tbl_activity VALUES("3573","Viewed List of Communication","1","2014-06-22 23:22:34");
INSERT INTO tbl_activity VALUES("3574","Viewed Archived Communication List","1","2014-06-22 23:22:38");
INSERT INTO tbl_activity VALUES("3575","Viewed Communication List","1","2014-06-22 23:22:42");
INSERT INTO tbl_activity VALUES("3576","Logged In","1","2014-06-23 18:53:31");
INSERT INTO tbl_activity VALUES("3577","Return to Homepage","1","2014-06-23 18:53:31");
INSERT INTO tbl_activity VALUES("3578","Viewed List of Communication","1","2014-06-23 18:53:52");
INSERT INTO tbl_activity VALUES("3579","Viewed Committee Meeting List","1","2014-06-23 18:53:55");
INSERT INTO tbl_activity VALUES("3580","Viewed Resolution List","1","2014-06-23 18:53:58");
INSERT INTO tbl_activity VALUES("3581","Viewed Resolution No. 0001 - 2014","1","2014-06-23 18:54:00");
INSERT INTO tbl_activity VALUES("3582","Viewed List of Communication","1","2014-06-23 18:54:02");
INSERT INTO tbl_activity VALUES("3583","Viewed Communication List","1","2014-06-23 18:54:06");
INSERT INTO tbl_activity VALUES("3584","Viewed List of Communication","1","2014-06-23 18:54:09");
INSERT INTO tbl_activity VALUES("3585","Viewed Communication List","1","2014-06-23 18:54:13");
INSERT INTO tbl_activity VALUES("3586","Viewed Communication List","1","2014-06-23 18:54:19");
INSERT INTO tbl_activity VALUES("3587","Viewed Referral List","1","2014-06-23 18:54:22");
INSERT INTO tbl_activity VALUES("3588","Viewed Referral List","1","2014-06-23 18:54:26");
INSERT INTO tbl_activity VALUES("3589","Viewed List of Communication","1","2014-06-23 18:54:33");
INSERT INTO tbl_activity VALUES("3590","Viewed Communication List","1","2014-06-23 18:54:35");
INSERT INTO tbl_activity VALUES("3591","Viewed Communication List","1","2014-06-23 18:54:38");
INSERT INTO tbl_activity VALUES("3592","Viewed Communication List","1","2014-06-23 18:54:42");
INSERT INTO tbl_activity VALUES("3593","Viewed Communication List","1","2014-06-23 18:54:53");
INSERT INTO tbl_activity VALUES("3594","Viewed Referral List","1","2014-06-23 18:55:09");
INSERT INTO tbl_activity VALUES("3595","Viewed Referral List","1","2014-06-23 18:55:12");
INSERT INTO tbl_activity VALUES("3596","Viewed Committee Meeting List","1","2014-06-23 18:55:17");
INSERT INTO tbl_activity VALUES("3597","Viewed List of Communication","1","2014-06-23 19:04:20");
INSERT INTO tbl_activity VALUES("3598","Viewed List of Communication","1","2014-06-23 19:05:55");
INSERT INTO tbl_activity VALUES("3599","Logged Out","1","2014-06-23 19:05:58");
INSERT INTO tbl_activity VALUES("3600","Logged In","1","2014-06-23 19:18:09");
INSERT INTO tbl_activity VALUES("3601","Return to Homepage","1","2014-06-23 19:18:09");
INSERT INTO tbl_activity VALUES("3602","Return to Homepage","1","2014-06-23 19:23:47");
INSERT INTO tbl_activity VALUES("3603","Viewed List of Communication","1","2014-06-23 19:23:50");
INSERT INTO tbl_activity VALUES("3604","Searched Monthly Committee Report per Committee","1","2014-06-23 19:24:10");
INSERT INTO tbl_activity VALUES("3605","Viewed Audit Trails","1","2014-06-23 19:24:13");
INSERT INTO tbl_activity VALUES("3606","Viewed Audit Trails","1","2014-06-23 19:24:17");
INSERT INTO tbl_activity VALUES("3607","Viewed Audit Trails","1","2014-06-23 19:24:19");
INSERT INTO tbl_activity VALUES("3608","Viewed User List","1","2014-06-23 19:24:24");
INSERT INTO tbl_activity VALUES("3609","Viewed Backed-up System List","1","2014-06-23 19:24:42");
INSERT INTO tbl_activity VALUES("3610","Viewed Backed-up System List","1","2014-06-23 19:24:59");
INSERT INTO tbl_activity VALUES("3611","Viewed Backed-up System List","1","2014-06-23 19:25:01");
INSERT INTO tbl_activity VALUES("3612","Viewed Backed-up System List","1","2014-06-23 19:25:04");



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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

INSERT INTO tbl_comm_meeting_ordi VALUES("1","6","0","2014-02-12","0000-00-00","","2","0","","0","0");
INSERT INTO tbl_comm_meeting_ordi VALUES("2","6","0","2014-02-18","0000-00-00","","2","0","","0","0");
INSERT INTO tbl_comm_meeting_ordi VALUES("3","6","0","0000-00-00","2014-03-04","","2","0","","0","0");
INSERT INTO tbl_comm_meeting_ordi VALUES("4","6","1","2014-03-04","0000-00-00","2014-03-06","2","1","Ord 026-12 iloco code.pdf","1","0");
INSERT INTO tbl_comm_meeting_ordi VALUES("5","7","0","2013-03-05","0000-00-00","","2","0","","0","0");
INSERT INTO tbl_comm_meeting_ordi VALUES("6","7","1","2013-06-11","0000-00-00","2013-07-17","2","1","Ord 026-12 iloco code.pdf","1","0");
INSERT INTO tbl_comm_meeting_ordi VALUES("7","14","1","2014-03-05","0000-00-00","2014-03-06","1","1","Ord 026-12 iloco code.pdf","1","0");
INSERT INTO tbl_comm_meeting_ordi VALUES("8","13","1","0000-00-00","2014-03-12","2014-03-20","1","1","CO2008-022ExpropriationProceedingsLotNo.37826.pdf","1","0");
INSERT INTO tbl_comm_meeting_ordi VALUES("9","12","1","2014-04-01","0000-00-00","2014-04-03","1","1","CO2008-023AdoptingGenderAndDevelopmentCode.pdf","1","0");



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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

INSERT INTO tbl_comm_meeting_reso VALUES("1","1","1","2014-03-20","2014-03-20","2","RESOLUTION 001-2014.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("2","2","1","2014-03-05","2014-03-20","2","RESOLUTION 002-2014.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("3","3","2","2014-03-20","2014-03-20","2","RESOLUTION 003-2014.pdf","1","1","0");
INSERT INTO tbl_comm_meeting_reso VALUES("4","4","1","2014-03-20","2014-03-20","2","RESOLUTION 004-2014.pdf","1","0","0");
INSERT INTO tbl_comm_meeting_reso VALUES("5","5","1","2014-04-01","2014-04-03","2","RESOLUTION 006-2014.pdf","1","0","0");
INSERT INTO tbl_comm_meeting_reso VALUES("6","9","2","2014-03-27","2014-03-25","2","RESOLUTION 007-2014.pdf","1","0","0");
INSERT INTO tbl_comm_meeting_reso VALUES("7","10","2","2014-04-30","2014-05-01","1","1-9-2014 Trade-K.doc","1","0","0");
INSERT INTO tbl_comm_meeting_reso VALUES("8","11","1","2014-05-01","2014-05-01","1","1-9-2014 Peace-F.doc","1","0","0");
INSERT INTO tbl_comm_meeting_reso VALUES("9","17","1","2014-04-29","2014-05-01","2","RESOLUTION 010-2014.pdf","1","0","0");
INSERT INTO tbl_comm_meeting_reso VALUES("10","18","1","2014-06-22","2014-06-22","1","pds2005.pdf","1","0","0");



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

INSERT INTO tbl_communication VALUES("2014 - 0001","Submit SB # 4, involving an appropriation of P20M for the enactment of the required appropriation ordinance","2014-01-03","17","20","2","A SB No. 4.pdf","2014-01-09","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0002","Recommend approval of the FY 2014 GF AB, of Tubao, LU","2014-01-06","1","10","2","B GFAB 2014 Tubao.pdf","2014-01-09","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0003","An Ord Amending Ord # 20, s 2008, Mun Revenue Code of Bauang, LU, Part Art # 22, Permit Fee for Zoning/Locational Clearance","2014-01-07","20","13","2","C Ord No. 19 Bauang.pdf","2014-01-09","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0004","Res Enacting an Ord Reclassifying the Parcel of Land Registered Under the Name of Sps. Dominador & Liberata Untalasco w/ an area of 5,890 sq.m. Located at Brgy Bagbag, this Mun from Agricultural to Comm’l Classification","2014-01-07","20","13","2","D Ord No. 20 Bauang.pdf","2014-01-09","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0005","Ord Institutionalizing the S-olace I-nner Peace L-ove A-tonement & W-orship (SILAW) – Moral Recovery Program (MRP) in All Gov’t Depts, Offices, Agencies and Gov’t-Owned & Controlled Corp thru the conduct of Recollection Called SILAW w/c Stands for Every Month of August of Every Year in the Mun of Santol, LU","2014-01-07","20","15","2","E Ord No. 2011-083 Santol.pdf","2014-01-09","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0006","Ord Establishing the Mayor’s Action Center 24/7 (MAC 24/7) in the Mun of Santol, LU ","2014-01-07","20","15","2","F Ord No. 2011-084 Santol.pdf","2014-01-09","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0007","Ord Assuring the Continuity of Supplies for Family Planning Services in the Mun of Santol, LU, Calling for the Adopting of a Contraceptive Self-Reliance (CSR) Plan & Allocating Funds for Purpose Thereof","2014-01-07","20","15","2","G Ord No. 2011-085 Santol.pdf","2014-04-09","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0008","Ord Enjoining the Office of the DepEd Dist Supervisor, School Administrators Both H/S and Elem/Primary Levels & Gov’t-Owned and Controlled Corp/Gov Instrumentalities to Include the Singing of the Santol Hymn, Recitation of Santol Credo & Dancing of the Santol Mun Jingle in their Flag Raising Ceremonies, General Assemblies and all Other Special Gatherings/Festivities in the Mun","2014-01-07","20","15","2","H Ord No. 2011-087 Santol.pdf","2014-01-09","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0009","Ord Amending the Title of Ord # 2000-01 of the SB of Santol, LU Including Sec 1 of Said Ord","2014-01-07","20","15","2","I Ord No. 2012-096 Santol.pdf","2014-01-09","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0010","An Ord Declaring the Month of June of Every Year as Dengue Awareness Month in the Mun of Santol & Appropriating Funds Therefor","2014-01-07","20","15","2","J Ord No. 2012-102 Santol.pdf","2014-01-09","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0011","An Ord Prohibiting the Unauthorized Manufacture, Production, Use and Sale of Uniforms & Other Paraphernalia that are of Exclusive Use of the Uniformed Personnel of the PNP and the AFP in the Mun of Santol, LU","2014-01-07","20","15","2","K Ord No. 2012-103 Santol.pdf","2014-01-09","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0012","Ord to Curtail the Sale, Rental, Transfer, Distribution, Manufacture and/or Production of Pirated, Counterfeit or Fake Goods, Articles or Services, & for Other Services, & for Other Purposes","2014-01-07","20","15","2","L Ord No, 2013-104 Santol.pdf","2014-01-09","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0013","An Ord Requiring the Foodservice Industry w/n the Territorial Jurisdiction of the Mun of Santol, LU to Include ½ Cup Cooked Rice in their Menu","2014-01-07","20","15","2","M Ord No. 2013-106 Santol.pdf","2014-01-09","1","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0014","Ord Amending Ord # 2010-082, known as the Revenue Code of Santol, LU, Part Chapter III, Mayor’s Permit Fees, Art B, Administrative Provision, Sec 5, Duration & Renewal of Permit","2014-01-07","20","15","2","N Ord 2013-108 Santol.pdf","2014-01-09","1","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0015","An Ord Creating the Santol Motorized Tricycle Franchising & Regulatory Board (SMTFRB), Providing for its Powers & Functions, & For Other Purposes","2014-01-07","20","15","2","O Ord 2013-109 Santol.pdf","2014-01-09","1","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0016","Ord Adopting the Lyrics & Music of the Composition of Mrs. Ildefonsa Q. Guinomma, Luna Dingayan & Pearl Dingayan as the Official Mun Hymn of the Mun of San Gabriel, LU","2014-01-07","20","16","2","P Ord No. 13-2013 San Gabriel.pdf","2014-01-09","1","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0017","Transmit Res # 82, s 2013, of the SB of Bauang, LU, supporting MDRRMC Res # 01 s 2014, Urging Concerned Agencies of the Gov’t, the PGLU, the DENR-EMB & DENR-MGB, & the DPWH & other agencies to immediately facilitate a coordinated & concrete action plan on preventive measures to address calamities in the Mun of Bauang","2014-01-08","17","13","2","Q Ord No. 82 Bauang.pdf","2014-01-09","1","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0018","Recommend KAPUSO MO, JESSICA SOHO for ABEL & BASI Nominee","2014-01-08","23","21","2","R2a Nominee Profile (Kapuso mo Jessica Soho).pdf","2014-01-09","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0019","Recommend KAPUSO MO, JESSICA SOHO for ABEL & BASI Nominee","2014-01-08","23","21","2","R2b Nominees Profile (Naimbag nga Morning Kapamilya).pdf","2014-01-09","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0020","Recommend approval of the FY 2013 GF SB # 9, of Agoo, LU","2014-01-08","8","3","2","A3 FY 2013 GFSB No. 9 Agoo.pdf","2014-04-09","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0021","Recommend approval of the FY 2013 GF SB # 4, of Bagulin, LU","2014-01-09","8","3","2","A2 FY 2013 GFSB No. 4 Bagulin.pdf","2014-01-16","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0022","Recommend approval of the FY 2013 GF SB # 2, of Bacnotan, LU","2014-01-09","8","3","2","A1 FY 2013 GFAB No. 2 Bacnotan.pdf","2014-01-16","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0023","An Ord Prohibiting Littering in Public Places w/n the Jurisdiction of the Mun of Aringay, LU & Other Related Acts & Providing Penalties for Violation Thereof","2014-01-09","20","12","2","C Ord No. 168 - Aringay.pdf","2014-01-16","1","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0024","Request for voluntary F/A to the bereaved family of Ms. Noemi Ambrocio, sister of SG Romeo Ambrocio","2014-01-09","17","22","2","L condolence Morales.pdf","2014-01-09","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0025","T-shirt Design Preference for CY 2014 Uniform","2014-01-09","17","22","2","L condolence Morales.pdf","2014-01-09","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0026","Recommend approval of the FY 2014 GF AB, of Burgos, LU ","2014-01-10","7","3","2","A4 FY 2014 GFAB Burgos.pdf","2014-01-16","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0027","Requiring the Foodservice Industry w/n the Territorial Jurisdiction of Rosario, LU to Include ½ Cup of Cooked Rice in their Menu & Providing Penalty to Violators Thereof","2014-01-10","20","17","2","D Municipal Ord. 2 s. 2013 Rosario.pdf","2014-01-16","1","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0028","Commutation of the TLB claim of MR. JESUS WILLIAM M. RAQUEPO, Prison Guard I, OPG, in the amount of P93,190.68","2014-01-10","6","24","2","B Terminal Leave Mr. Jesus William M. Raquepo.pdf","2014-01-16","1","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0029","Scholarship Opportunity for Master in Nat’l Security Admin","2014-01-13","1","25","2","A4 FY 2014 GFAB Burgos.pdf","2014-01-16","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0030","Reminder on Frequent Unauthorized Tardiness:\n\na.	Lara Geraldine D. Bacer – July & Aug\nb.	Florante R. Valencia – Aug & Sept\nc.	Delila M. Viluan – Jul & Sept","2014-01-13","3","26","2","B Terminal Leave Mr. Jesus William M. Raquepo.pdf","2014-01-16","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0031","Best in Attendance for Nov \n\na.	Angelita E. Ofiana\nb.	Rechel T. Torcedo","2014-01-13","17","25","2","B Terminal Leave Mr. Jesus William M. Raquepo.pdf","2014-01-16","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0032","Recommend approval of the FY 2014 GF AB of Sudipen, LU","2014-01-13","7","3","2","A5 FY 2014 GFAB Sudipen.pdf","2014-01-16","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0033","An Ord Amending the Title, Sec 1, Sec 2.b, 3, 4, 6.a, 6.e, 12.a, 13, 14, 16 of Mun Ord # 29-2012. An Ord Designating Denny’s Park in Consolacion, Agoo, LU as a Special Economic Zone & Prescribing Rates & Regulations on the Rental of Stalls w/ the Area","2014-01-14","20","27","2","E Mun Ord No. 24-2013 Agoo.pdf","2014-01-16","1","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0034","An Ord Mandating All Parents/Guardians of School Children ages 5 Yrs. Old & Above to Enroll in Basic Education in Any Learning Institution in the Mun of Agoo, LU","2014-01-14","20","27","2","F Mun Ord No. 25-2013 Agoo.pdf","2014-01-16","1","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0035","An Ord Amending Sec 2.B, Sec 5, & 6 of Mun Ord # 13-2013, An Ord Prohibiting Any Fishing Activity w/n the 200 Meters Radius from the Existing Artificial Reefs in the Mun Waters of Agoo, LU & Providing Penalties for Violation Thereof”","2014-01-14","20","27","2","G Mun Ord No. 27-2013 Agoo.pdf","2014-01-16","1","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0036","An Ord Amending Chapter 14, No. 2, 3, 4 & 10 of Mun Ord # 02A-2013, “An Ord Enacting the Code of General Ordinances of the Mun of Agoo, LU & for Other Purposes”","2014-01-14","20","27","2","H mun ord no. 29-2013 agoo.pdf","2014-01-16","1","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0037","Recommendation for Project Endorsement/Approval:\n\n1.	SB Res # 54, s 2013, Authorizing Mayor ECM de Guzman III to invite private companies to dredge the Bauang River Bain to allow free flow of water during monsoon rains and develop it into an eco-tourism area;\n2.	MDRRMC Res # 01, s 2014, Urging the SB of Bauang, ABC, the PGLU, DENR-EMB, OCD, DPWH & other agencies to immediately facilitate a coordinated concrete action on preventive measures on calamities in the Mun of Bauang;\n3.	SP Res # 82, s 2014, Supporting by the SB of Bauang to MDRRMC Res # 1, s 2014","2014-01-14","17","20","2","P1 CR 1a Public Ubins Globe.pdf","2014-01-16","1","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0038","Invite all SLC Grads to the SLC Golden Foundation Anniv","2014-01-15","24","26","2","P CR Public.pdf","2014-01-16","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0039","Invite all Steering Committee Chairmen to the meeting on the 164th Founding Anniv","2014-01-15","24","20","2","P CR Public.pdf","2014-01-16","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0040","Letter of reconsideration on their Mun Ord # 164, Anti-Truancy Ordinance","2014-01-15","17","29","2","P1 CR 1c Public BANI SOUTH_STIRRUPS DETAILS.pdf","2014-01-16","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0041","Invite all Steering Committee Chairmen to the meeting on the 164th Founding Anniv","2014-01-15","24","20","2","O JCR Laws, Peace and Brgy.pdf","2014-01-16","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0042","Letter of reconsideration on their Mun Ord # 164, Anti-Truancy Ordinance","2014-01-16","17","12","2","C Ord No. 168 - Aringay.pdf","2014-01-16","1","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0043","Letter of clarification on their Mun Ord # 161, Amending their Scholarship Ord","2014-01-16","17","12","2","C Ord No. 168 - Aringay.pdf","2014-01-16","1","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0044","Commutation of the TLB claim of MRS. ERLINDA C. OSTREA, Nurse IV, Balaoan Dist Hosp, in the amount of P351,421.04","2014-01-17","6","24","2","A1 leave benifit Mrs. Erlinda C. Ostrea.pdf","2014-02-13","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0045","Commutation of the TLB claim of  MR. ERNESTO F. BAUTISTA, Sanitation Inspector I, PHO, in the amount of P192,727.53","2014-01-17","6","24","2","A2 leave benefit Mr. Ernesto F. Baustita.pdf","2014-02-13","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0046","2014 AWARDEES\n\nSARANAY AWARD\n1.	HON. HENRY A. BACURNAY, JR\n\nDIEGO SILANG AWARD\n1.	Dr. Zenaida Napa-Natividad, PhD\n2.	Col Jonathan G Ponce INF (GSC) PA\n3.	PSSupt Ramon L Rafael\n\nLA UNION SERVICE AWARD\n1.	Hon. Apolonio Laoagan Apusen (Posthumous)\n2.	PCSupt Edgar O. Basbas\n3.	Mr. Arthur M. Florendo\n4.	Mrs. Yolanda Lamar Lasmarias, RN, MA ED, ADM MPA, BSN\n5.	Dr. Linda H. Laudencia, PhD\n6.	Gen Rolando R Macusi\n7.	Fr. Nolan R. Nabua\n8.	Atty. Benjamin P. Sapitula, PhD\n9.	Dr. Apolonio S. Sito\n10.	Hon. Kenneth Paolo C. Tereng\n11.	Mr. Oscar A. Torralba\n\nBASI AWARD\n1.	Think God Basketball Team\n2.	Special Olympics – LU Chapter\n3.	La Union Medical Society\n4.	Health Emergency Management Services (HEMS)\n\nABEL AWARD\n1.	Kapuso Mo, Jessica Soho\n2.	Naimbag Nga Morning Kapamilya\n\nMOST OUTSTANDING ENTREPINOY \n1.	Floredel’s Knitted Garments","2014-01-20","25","20","2","Aa1 Special Olympics La Union Chapter.pdf","2014-01-22","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0047","Solicit for the advertisement to the 2014 Region I Athletic Asso. Meet","2014-01-21","26","31","2","Aa1 Special Olympics La Union Chapter.pdf","2014-01-22","1","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0048","Request that Ord # 022-2012 , 2012 Code of General Ordinances of the Prov of LU be amended to include provisions that would penalize persons or entities who/which would illegally use the Prov’l Seal","2014-01-21","17","32","2","AGE01-22.14 special.pdf","2014-01-22","1","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0049","Recommend approval of the FY 2014 GF SB # 1, of Tubao, LU","2014-01-22","8","3","2","B2 FY 2014 GSFB No. 1 Tubao.pdf","2014-01-30","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0050","Recommend approval of the FY 2014 GF AB, of Aringay, LU ","2014-01-22","7","3","2","B3 FY 2014 GFAB Aringay.pdf","2014-01-30","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0051","Recommend approval of the FY 2014 GF AB, of Balaoan, LU","2014-01-22","7","3","2","B4 FY 2014 GFAB Balaoan.pdf","2014-01-30","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0052","Recommend approval of the FY 2013 GF SB # 1, of Naguilian, LU","2014-01-22","8","3","2","B1 FY 2013 GFSB No. 1 Naguilian.pdf","2014-01-30","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0053","Request authority to enter into a MOA w/ SLC, UCC, DMMMSU, Lorma Colleges, St. John Bosco College, AMA Computer College, LUCST and other requesting colleges, universities and tertiary schools re: OJT/Practicum in the different departments, hospitals and offices of the PGLU","2014-01-22","1","20","2","A MOA PGLU-MSD.pdf","2014-01-30","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0054","Request to enter into a Contract of Agreement w/ Dr. Eric Piscawen as Visiting Consultant in Orthopedics at Balaoan Dist Hosp","2014-01-22","10","20","2","B renew MOA of all colleges & universities.pdf","2014-01-23","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0055","Request to authorize the payment of Accounts Payable in the amount of P7,106,760.87 to be charged to the Current Appropriations","2014-01-22","17","20","2","M Res 489-2013 SP.pdf","2014-01-23","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0056","Request authority to renew the Contract of Consultancy Services of the ff effective Jan 2 to Dec 31, 2014","2014-01-22","16","20","2","B Ord No 161 Aringay.pdf","2014-01-23","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0057","2014 Search for CSC Outstanding Public Officials and Employees Nomination","2014-01-22","25","26","2","B Ord No 161 Aringay.pdf","2014-01-23","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0058","An Ord Prescribing a Doctor’s Certification Fee on all Death Certificates Signed by the Mun Health Officer of the Mun of Naguilian & Issued by the Office of the Local Civil Registrar & amending for the Purpose Sec 133, Art B of the 2011 Mun Revenue Code of the Mun of Naguilian, LU","2014-01-23","20","18","2","D Mun Ord No. 23 Naguilian.pdf","2014-01-30","1","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0059","An Ord Prescribing Fees for the Annotation of Decrees of Adoption & Nullity of Marriage at the Local Civil Registry Office Amending for the Purpose Sec 133 of the Revenue Code of the Mun of Naguilian, Prov of LU","2014-01-23","20","18","2","E Mun Ord No. 24 Naguilian.pdf","2014-01-30","1","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0060","An Ord Creating Obligatory the Setting Up & Installation of Closed Circuit TV (CCTV) in Certain Business Establishments w/n the Territorial Jurisdiction of the Mun of Naguilian, Prov of LU, Providing Penalties in Violation or Infringement Thereof, & for Other Purposes","2014-01-23","20","18","2","CR10a ord 06 naguilian.pdf","2014-01-30","1","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0061","An Ord Prohibiting the Use of Modified Mufflers, Sirens & Horns that Create & Generate Loud & Deafening Sound in Motorcycles and All Types of Vehicles that Ply the Streets & Thoroughfares w/n the Territorial Jurisdiction of the Mun of Naguilian, Prov of LU, and Imposing Penalties in Violation or Infringement Thereof and for Other Purposes","2014-01-23","20","18","2","F Ord No. 26 Naguilian.pdf","2014-01-30","1","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0062","Withdraw nomination of Gen Rolando A. Purugganan, for LUSA","2014-01-23","17","33","2","L Memorandum Order (Mr. Arnold Castañeda).pdf","2014-01-30","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0063","Commutation of the TLB claim of MR. JEFFERSON G. DOCTOR, Laborer I, OPG, in the amt of P26,031.78","2014-01-23","6","24","2","C1 leave benefit Mr. Jefferson G. Doctor.pdf","2014-01-30","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0064","CY 2014 PGLU Admin & Financial Policy Updates","2014-01-23","11","25","2","G Ord No. 31 Naguilian.pdf","2014-01-30","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0065","Request authority to enter into a MOA w/ MERCK SHARP & DOHME (IA) CORP, Makati City for the effective, efficient and innovative implementation of a model LGU Access Program for Pneumonia and Cervical Cancer (HPV) Vaccination Program ","2014-01-24","1","20","2","A MOA PGLU-MSD.pdf","2014-01-30","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0066","IRP of the SB of Sudipen, LU","2014-01-24","8","14","2","B1 FY 2013 GFSB No. 1 Naguilian.pdf","2014-01-30","1","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0067","An Ord Enacting the Market Code of the Mun of Sudipen, LU","2014-01-24","20","14","2","B4 FY 2014 GFAB Balaoan.pdf","2014-01-30","1","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0068","The\nScholarship Program of the Municipality of Aringay, La Union,\" be returned to the Council of\nOrigin for proper amendmenUcorrection/action","2013-12-02","17","33","2","RESOLUTION 001-2014.pdf","2014-12-04","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0069","ESTABLISHING ILOKO AS AN OFFICIAL PROVINCIAL LANGUAGE OF LA UNION AND\nINSTITUTIONALIZING ITS USE IN RELEVANT SECTORS, ALONGSIDE EXISTING NATIONAL AND OFFICIAL LANGUAGES","2012-05-04","21","20","2","Ord 026-12 iloco code.pdf","2012-05-10","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0070","AN ORDINANCE PROHIBITING, REGULATING AND PRESCRIBING CERTAIN USES OF PLASTICS FOR GOODS AND COMMODITIES THAT END UP AS RESIDUAL WASTES AND PROMOTING THE USE OF ECO BAGS AND OTHER ENVIRONMENT FRIENDLY PRACTICES AS AN ALTERNATIVE AND PROVIDING PENALTIES FOR VIOLATION THEREOF","2013-06-03","21","33","2","PROVINCIAL-ORDINANCE-NO.007-2012Regulating-the-use-of-Plastic.pdf","2013-06-06","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0071","AN ORDINANCE PROTECTING AND PROMOTING ANIMAL WELFARE\nPURSUANT TO AND IN LINE WITH THE PROVISIONS OF REPUBLIC ACT 8485 OR\nTHE ANIMAL WELFARE ACT OF 1998","2014-02-03","21","28","2","Provincial Ord-2007-068 Province of Iloilo.pdf","2014-02-06","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0072","Prohibiting the Operation of Motorcycles w/o Mufflers or Silencers w/n the Jurisdiction of the Mun of Aringay, LU","2014-01-27","20","12","2","G Draft Honeybee Ordinance.pdf","2014-01-30","1","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0073","An Ord Setting the Guidelines & Policies in the Use of the Heavy Equipments Owned & Maintained by the Mun of Aringay, LU","2014-01-27","20","12","2","D Ord 2013-108 Pugo - Birthing Clinic.pdf","2014-01-30","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0074","Commutation of the TLB claim of MS. BRESILDA C. JUCAR, Admin Aide II, PHO, in the amt of P16,539.81","2014-01-27","6","24","2","J JCR1 Peace Disaster Ord No. 2011-084 Santol.pdf","2014-01-30","1","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0075","Request to pass a Res adjusting the present SG of MR. FRANCISCO D. VENTURA, Radiologic Technologist II, Rosario, Dist Hosp from SG 13/S-7 (P22,755/mo) to SG 14/S-7 (P24,461/mo) effective Feb 26, 2014","2014-03-19","17","20","2","C FY 2014 GFAB Santol.pdf","2014-03-20","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0076","AN ORDINANCE APPROPRIATING THE AMOUNT OF EIGHT HUNDRED ONE\nTHOUSAND FOUR HUNDRED EIGHTY PESOS (P801,480.00) TO BE SOURCED OUT\nFROM THE TRUST FUND FROM PHILIPPINE AMUSEMENT AND GAMING\nCORPORATION (PAGCOR) TO BE USED IN AUGMENTING THE SCHOLARSHIP\nFUND OF THE CITY GOVERNMENT THAT SUPPORTS ONE HUNDRED TWENTY\nSEVEN (127) ACADEMIC SCHOLARS ENROLLED IN VARIOUS EDUCATIONAL\nINSTITUTIONS.","2014-02-25","21","33","1","CO2008-001ScholarshipFund.pdf","2014-02-27","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0077","AN ORDINANCE AUTHORIZING THE HONORABLE CITY MAYOR TO INITIATE\nEXPROPRIATION PROCEEDINGS ON A PORTION OF LOT NO. 37826 OF THE LAOAG\nCADASTRAL SURVEY WHICH IS PRESENTLY BEING USED AS A BARANGAY ROAD WITH A WIDTH OF 14 METERS AND A LENGTH OF MORE OR LESS 200 METERS.","2014-02-18","21","28","1","CO2008-022ExpropriationProceedingsLotNo.37826.pdf","2014-02-20","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0078","AN ORDINANCE ADOPTING THE GENDER AND DEVELOPMENT CODE (GAD) OF\nTHE PROVINCE OF ILOCOS NORTE AS THE GAD CODE OF THE CITY OF LAOAG.","2014-01-13","21","20","1","CO2008-023AdoptingGenderAndDevelopmentCode.pdf","2014-01-16","1","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0079","Request to pass a Res adjusting the present SG of MR. FRANCISCO D. VENTURA, Radiologic Technologist II, Rosario, Dist Hosp from SG 13/S-7 (P22,755/mo) to SG 14/S-7 (P24,461/mo) effective Feb 26, 2014","2014-04-29","17","20","1","D Mr Francisco D Ventura salary grade step increment.pdf","2014-05-01","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0080","Request  to charge the amt of P18,160.23 to the Current Appropriation CY 2014 for the installation of Micro Mini Blinds at the Office of BM Reynaldo M. Mosuela under the MOE CY 2014 Appropriation of the SP","2014-04-29","17","20","1","V1 CR Social Service Julita C Benedicto Pos Womens Right.doc","2014-05-01","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0081","Submit the draft of the IRRs of Prov’l Ord # 011-2010, An Ord Amending Ord # 005-1999, La Union Investment and Incentive Code (LUIIC) of 1999”","2014-04-29","2","20","1","P Draft Ord 054-2014 use life vest while sailing La Union.pdf","2014-05-01","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0082","Ord Governing the Sale, Use & Disposition of Burial Lots at the Newly Developed Area of the Mun Cemetery of the Mun of Balaoan, LU","2014-04-29","20","1","1","O Mun Ord 01 S 2014 Balaoan new Mun Cemetery.pdf","2014-05-01","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0083","Request the PGLU to extend Sports Dev’t Fund to all PCL Members of the Mun of Bauang, LU in the Amt of P70,000.00 for the Year 2014","2014-04-29","17","13","1","N Ord 4 s 2014 Bauang amend Ord 2 s 2006.pdf","2014-05-01","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0084","An Ord Amending Ord # 2, s 2006, “An Ord Fixing the Operation of Carnival Amusement Shows and Carnival Rides by any Individual or Establishment to 60 Days & Establishing a Distance of not Less than 20 Lineal Meters from Schools w/n the Jurisdiction of the Mun of Bauang,” Part Sec 3 & Providing Add’l Provisions Thereof","2014-04-29","20","13","1","M Ord 14 s 2013 Bauang amend art II sec 17 of Ord 11 s 2011.pdf","2014-05-01","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0085","An Ord amending Art II, Sec 17 of Ord # 11, s 2011, “An Ord Amending Ord # 15, s 2008, An Ord Adopting a Comprehensive Transportation and Traffic Regulations for the Administration and Enforcement, Providing Penalties for Violation Thereof, and for the Repeal of All Ordinances in Conflict Therewith, fo the Enforcement of the “No Left Turn Policy” and the ‘Modification of the Route of Traffic During Interment’ and & Providing Add’l Provisions Thereof”","2014-04-29","20","13","1","S Ord 13 s 2013 Bauang amend 2002 traffic ordinance par art II.pdf","2014-05-01","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0086","An Ord Amending the 2002 Traffic Ord of the Mun of Bauang, LU, Part Art II – Parking, No Parking, Loading and Unloading Zones and Providing Add’l Provisions Thereto","2014-04-29","20","13","1","S Ord 13 s 2013 Bauang amend 2002 traffic ordinance par art II.pdf","2014-05-01","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0087","Commutation of the TLB claim of MS. AURORA R. BENGSON, Admin Asst III, PLO, in the amt of P80,857.62","2013-06-12","6","24","1","A5 FY 2014 GFAB Sudipen.pdf","2013-06-13","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0088","An Ord Creating the Local Franchising Regulatory Board (LFRB) of Rosario, LU Defining its Power, Duties and Functions","2012-06-12","20","17","1","A2 FY GFSB 4 Sudipen.pdf","2012-06-14","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0089","memorandum from the provincial budget officer","2014-04-29","8","3","2","RESOLUTION 032-2014.pdf","2014-05-01","1","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0090","YOBI TESTING","2014-06-21","20","18","1","pds2005.pdf","2014-06-26","2","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0091","TESTING YOBI 2","2014-06-18","17","20","1","pds2005.pdf","2014-06-19","0","1","0");
INSERT INTO tbl_communication VALUES("2014 - 0092","TESTING YOBI 3","2014-06-12","19","20","1","pds2005.pdf","2014-06-19","1","0","0");
INSERT INTO tbl_communication VALUES("2014 - 0093","RESOTUTION APPROVING THE CY 2012 SUPPLEMENTAT ANNUAL INVESTIIiENT\nPROGRAM (ArP) OF THE OFFTCE OF THE SANGGUNIANG\nPANLALAWIGAN, PROVINCE OT tA UNION","2014-06-12","8","20","1","pds2005.pdf","2014-06-19","0","1","0");



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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

INSERT INTO tbl_monitor_ord VALUES("4","0003 - 2014","AN ORDINANCE APPROPRIATING THE AMOUNT OF EIGHT HUNDRED ONE\nTHOUSAND FOUR HUNDRED EIGHTY PESOS (P801,480.00) TO BE SOURCED OUT\nFROM THE TRUST FUND FROM PHILIPPINE AMUSEMENT AND GAMING\nCORPORATION (PAGCOR) TO BE USED IN AUGMENTING THE SCHOLARSHIP\nFUND OF THE CITY GOVERNMENT THAT SUPPORTS ONE HUNDRED TWENTY\nSEVEN (127) ACADEMIC SCHOLARS ENROLLED IN VARIOUS EDUCATIONAL\nINSTITUTIONS.","18","2014-04-22","Not Implemeted","2","Lack of Fund","Need more Fund","2014-04-29","1","monitor form sample.pdf","0","2014-04-29");
INSERT INTO tbl_monitor_ord VALUES("5","0004 - 2014","AN ORDINANCE AUTHORIZING THE HONORABLE CITY MAYOR TO INITIATE\nEXPROPRIATION PROCEEDINGS ON A PORTION OF LOT NO. 37826 OF THE LAOAG\nCADASTRAL SURVEY WHICH IS PRESENTLY BEING USED AS A BARANGAY ROAD WITH A WIDTH OF 14 METERS AND A LENGTH OF MORE OR LESS 200 METERS.","18","2014-04-28","None","0","","","2014-04-29","1","monitor form sample.pdf","0","2014-04-29");
INSERT INTO tbl_monitor_ord VALUES("6","0001 - 2013","AN ORDINANCE PROTECTING AND PROMOTING ANIMAL WELFARE\nPURSUANT TO AND IN LINE WITH THE PROVISIONS OF REPUBLIC ACT 8485 OR\nTHE ANIMAL WELFARE ACT OF 1998","8","2014-04-29","None","0","","","2014-04-29","1","monitor form sample.pdf","0","2014-04-29");
INSERT INTO tbl_monitor_ord VALUES("7","0001 - 2013","AN ORDINANCE PROTECTING AND PROMOTING ANIMAL WELFARE\nPURSUANT TO AND IN LINE WITH THE PROVISIONS OF REPUBLIC ACT 8485 OR\nTHE ANIMAL WELFARE ACT OF 1998","17","2014-04-29","Not Implemented","2","Lack of Funds and workload","Need funds and employees","2014-04-29","1","monitor form sample.pdf","0","2014-04-29");
INSERT INTO tbl_monitor_ord VALUES("8","0004 - 2014","AN ORDINANCE AUTHORIZING THE HONORABLE CITY MAYOR TO INITIATE\nEXPROPRIATION PROCEEDINGS ON A PORTION OF LOT NO. 37826 OF THE LAOAG\nCADASTRAL SURVEY WHICH IS PRESENTLY BEING USED AS A BARANGAY ROAD WITH A WIDTH OF 14 METERS AND A LENGTH OF MORE OR LESS 200 METERS.","4","2014-04-29","implemented","0","none","none","2014-04-30","3","RESOLUTION 017-2014.pdf","0","2014-04-29");



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

INSERT INTO tbl_ordinance VALUES("0001 - 2013","4","AN ORDINANCE PROTECTING AND PROMOTING ANIMAL WELFARE\nPURSUANT TO AND IN LINE WITH THE PROVISIONS OF REPUBLIC ACT 8485 OR\nTHE ANIMAL WELFARE ACT OF 1998","2013-11-14","1,2,3,4,5,6,7,8,9,10,11,12,13","1,2,3,4","Provincial Ord-2007-068 Province of Iloilo.pdf","1","0");
INSERT INTO tbl_ordinance VALUES("0002 - 2012","6","AN ORDINANCE PROHIBITING, REGULATING AND PRESCRIBING CERTAIN USES OF PLASTICS FOR GOODS AND COMMODITIES THAT END UP AS RESIDUAL WASTES AND PROMOTING THE USE OF ECO BAGS AND OTHER ENVIRONMENT FRIENDLY PRACTICES AS AN ALTERNATIVE AND PROVIDING PENALTIES FOR VIOLATION THEREOF","2012-11-29","1,2,3,4,5,6,7,8,9,10,11,12,13","1,2,3,4","Provincial Ordinance No.007-2012.pdf","1","0");
INSERT INTO tbl_ordinance VALUES("0003 - 2014","7","AN ORDINANCE APPROPRIATING THE AMOUNT OF EIGHT HUNDRED ONE\nTHOUSAND FOUR HUNDRED EIGHTY PESOS (P801,480.00) TO BE SOURCED OUT\nFROM THE TRUST FUND FROM PHILIPPINE AMUSEMENT AND GAMING\nCORPORATION (PAGCOR) TO BE USED IN AUGMENTING THE SCHOLARSHIP\nFUND OF THE CITY GOVERNMENT THAT SUPPORTS ONE HUNDRED TWENTY\nSEVEN (127) ACADEMIC SCHOLARS ENROLLED IN VARIOUS EDUCATIONAL\nINSTITUTIONS.","2014-04-03","1,2,3,4,5,6,7,8,9,10","1,2,3,4","CO2008-001ScholarshipFund.pdf","1","0");
INSERT INTO tbl_ordinance VALUES("0004 - 2014","8","AN ORDINANCE AUTHORIZING THE HONORABLE CITY MAYOR TO INITIATE\nEXPROPRIATION PROCEEDINGS ON A PORTION OF LOT NO. 37826 OF THE LAOAG\nCADASTRAL SURVEY WHICH IS PRESENTLY BEING USED AS A BARANGAY ROAD WITH A WIDTH OF 14 METERS AND A LENGTH OF MORE OR LESS 200 METERS.","2014-04-10","1,2,3,4,5,6,7,8,9,10,11,12,13","1,2,3,4","CO2008-022ExpropriationProceedingsLotNo.37826.pdf","1","0");
INSERT INTO tbl_ordinance VALUES("2001 - 2003","","Thank the Phil Professional Asso for the Medical Mission conducted as part of the 164th Founding Anniv of the Prov","2001-05-16","1,2,3","1,2","Ord 026-12 iloco code.pdf","1","0");



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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

INSERT INTO tbl_referral VALUES("1","2014 - 0001","2014-01-13","12","","1-2-13 CFBA.doc","2","1","0");
INSERT INTO tbl_referral VALUES("2","2014 - 0003","2014-01-10","2","12","1-2-14 cwm.doc","2","1","0");
INSERT INTO tbl_referral VALUES("3","2014 - 0004","2014-01-13","2","5,10","1-9-2014waysnmeans.doc","2","1","0");
INSERT INTO tbl_referral VALUES("4","2014 - 0005","2014-02-03","17","6","1-9-2014 CLRP-I.doc","2","1","0");
INSERT INTO tbl_referral VALUES("5","2014 - 0006","2014-01-22","6","7","1-9-2014Civil Service-E.doc","2","1","0");
INSERT INTO tbl_referral VALUES("6","2014 - 0071","2014-02-03","5","17","PROVINCIAL-ORDINANCE-NO.007-2012Regulating-the-use-of-Plastic.pdf","2","1","0");
INSERT INTO tbl_referral VALUES("7","2014 - 0070","2013-06-04","17","10","Provincial Ordinance No.007-2012.pdf","2","1","0");
INSERT INTO tbl_referral VALUES("8","2014 - 0069","2012-06-12","10","11,17","PROVINCIAL-ORDINANCE-NO.007-2012Regulating-the-use-of-Plastic.pdf","2","0","0");
INSERT INTO tbl_referral VALUES("9","2014 - 0007","2014-02-18","21","","1-9-2014 Health-G.doc","2","1","0");
INSERT INTO tbl_referral VALUES("10","2014 - 0008","2014-02-25","9","17","1-9-2014 Education-H.doc","2","1","0");
INSERT INTO tbl_referral VALUES("11","2014 - 0009","2014-02-20","17","","1-9-2014 CLRP-I.doc","2","1","0");
INSERT INTO tbl_referral VALUES("12","2014 - 0078","2014-02-28","15","17","1-9-2014 Peace-F.doc","1","1","0");
INSERT INTO tbl_referral VALUES("13","2014 - 0077","2014-02-27","1","2,12","1-9-2014Housing-D.doc","1","1","0");
INSERT INTO tbl_referral VALUES("14","2014 - 0076","2014-03-04","12","9","1-9-2014 Trade-L.doc","1","1","0");
INSERT INTO tbl_referral VALUES("15","2014 - 0010","2014-04-30","1","1,3,2","1-9-2014Transportation-O.doc","1","0","0");
INSERT INTO tbl_referral VALUES("16","2014 - 0011","2014-02-26","7","1,3,2","1-9-2014Civil Service-R.doc","1","0","0");
INSERT INTO tbl_referral VALUES("17","2014 - 0012","2014-05-01","6","3","RESOLUTION 020-2014.pdf","2","1","0");
INSERT INTO tbl_referral VALUES("18","2014 - 0075","2014-06-22","12","3","pds2005.pdf","1","1","0");



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

INSERT INTO tbl_resolution VALUES("0001 - 2014","2014 - 0001","Submit SB # 4, involving an appropriation of P20M for the enactment of the required appropriation ordinance","1,2,3,4,5,6,7,8,9,10,11,12,13","RESOLUTION 001-2014.pdf","3","2014-04-03","0");
INSERT INTO tbl_resolution VALUES("0002 - 2014","2014 - 0002","Recommend approval of the FY 2014 GF AB, of Tubao, LU","1,2,3,4,5,6,7,8,9,10,11,12,13","RESOLUTION 002-2014.pdf","3","2014-04-03","0");
INSERT INTO tbl_resolution VALUES("0003 - 2014","2014 - 0003","An Ord Amending Ord # 20, s 2008, Mun Revenue Code of Bauang, LU, Part Art # 22, Permit Fee for Zoning/Locational Clearance","1,2,3,4,5","RESOLUTION 003-2014.pdf","3","2014-03-27","0");
INSERT INTO tbl_resolution VALUES("0004 - 2014","2014 - 0004","Res Enacting an Ord Reclassifying the Parcel of Land Registered Under the Name of Sps. Dominador & Liberata Untalasco w/ an area of 5,890 sq.m. Located at Brgy Bagbag, this Mun from Agricultural to Comm?l Classification","5,7,9,11","RESOLUTION 004-2014.pdf","3","2014-04-03","0");
INSERT INTO tbl_resolution VALUES("0005 - 2014","2014 - 0005","Ord Institutionalizing the S-olace I-nner Peace L-ove A-tonement & W-orship (SILAW) ? Moral Recovery Program (MRP) in All Gov?t Depts, Offices, Agencies and Gov?t-Owned & Controlled Corp thru the conduct of Recollection Called SILAW w/c Stands for Every Month of August of Every Year in the Mun of Santol, LU","2","RESOLUTION 005-2014.pdf","3","2014-04-10","0");
INSERT INTO tbl_resolution VALUES("0006 - 2014","2014 - 0006","Ord Establishing the Mayor?s Action Center 24/7 (MAC 24/7) in the Mun of Santol, LU ","1,2,3,4,5,6,7,8,9","RESOLUTION 006-2014.pdf","3","2014-04-03","0");
INSERT INTO tbl_resolution VALUES("0007 - 2014","2014 - 0007","Ord Assuring the Continuity of Supplies for Family Planning Services in the Mun of Santol, LU, Calling for the Adopting of a Contraceptive Self-Reliance (CSR) Plan & Allocating Funds for Purpose Thereof","3,5","RESOLUTION 007-2014.pdf","3","2014-03-27","0");
INSERT INTO tbl_resolution VALUES("0008 - 2014","2014 - 0018","Recommend KAPUSO MO, JESSICA SOHO for ABEL & BASI Nominee","1,2,3,4,5,6,7,8,9,10,11,12,13","RESOLUTION 008-2014.pdf","3","2014-04-10","0");
INSERT INTO tbl_resolution VALUES("0009 - 2014","2014 - 0019","Recommend KAPUSO MO, JESSICA SOHO for ABEL & BASI Nominee","1,2,3,4,5,6,7,8,9,10,11,12,13","RESOLUTION 009-2014.pdf","3","2014-03-27","0");
INSERT INTO tbl_resolution VALUES("0010 - 2014","2014 - 0020","Recommend approval of the FY 2013 GF SB # 9, of Agoo, LU","1,2,3,4,5,6,7,8,9,10,11,12,13","RESOLUTION 010-2014.pdf","3","2014-03-20","0");
INSERT INTO tbl_resolution VALUES("0011 - 2012","2014 - 0088","An Ord Creating the Local Franchising Regulatory Board (LFRB) of Rosario, LU Defining its Power, Duties and Functions","1,2,3,4","RESOLUTION 011-2014.pdf","1","2012-06-14","0");
INSERT INTO tbl_resolution VALUES("0011 - 2013","2014 - 0087","Commutation of the TLB claim of MS. AURORA R. BENGSON, Admin Asst III, PLO, in the amt of P80,857.62","1,2,3,4,5,6,7,8,9,10,11,12,13","A4 FY 2014 GFAB Burgos.pdf","1","2013-06-19","0");
INSERT INTO tbl_resolution VALUES("0011 - 2014","2014 - 0032","Recommend approval of the FY 2014 GF AB of Sudipen, LU","1,2","RESOLUTION 027-2014.pdf","3","2014-05-01","0");
INSERT INTO tbl_resolution VALUES("0012 - 2014","2014 - 0091","TESTING YOBI 2","2","pds2005.pdf","3","2014-06-21","0");
INSERT INTO tbl_resolution VALUES("0013 - 2014","2014 - 0093","RESOTUTION APPROVING THE CY 2012 SUPPLEMENTAT ANNUAL INVESTIIiENT\nPROGRAM (ArP) OF THE OFFTCE OF THE SANGGUNIANG\nPANLALAWIGAN, PROVINCE OT tA UNION","1","pds2005.pdf","3","2014-06-21","0");
INSERT INTO tbl_resolution VALUES("0014 - 2014","2014 - 0075","Request to pass a Res adjusting the present SG of MR. FRANCISCO D. VENTURA, Radiologic Technologist II, Rosario, Dist Hosp from SG 13","5","pds2005.pdf","1","2014-06-22","0");
INSERT INTO tbl_resolution VALUES("2009 - 2009","","MOA w/ DOH-CHD I re: Bottom-up Budget for the dev’t of additional nurses in selected LGUs to be Assigned at their Respective Health Facilities or PHU/Office","1,2,3","res 014-12.pdf","1","2009-05-13","0");



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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;

INSERT INTO tbl_status VALUES("11","2014 - 0001","1","1","1","1");
INSERT INTO tbl_status VALUES("12","2014 - 0002","1","1","1","1");
INSERT INTO tbl_status VALUES("13","2014 - 0003","1","1","1","1");
INSERT INTO tbl_status VALUES("14","2014 - 0004","1","1","1","1");
INSERT INTO tbl_status VALUES("15","2014 - 0005","1","1","1","1");
INSERT INTO tbl_status VALUES("16","2014 - 0006","1","1","1","1");
INSERT INTO tbl_status VALUES("17","2014 - 0007","1","1","1","1");
INSERT INTO tbl_status VALUES("18","2014 - 0008","1","1","1","0");
INSERT INTO tbl_status VALUES("19","2014 - 0009","1","1","1","0");
INSERT INTO tbl_status VALUES("20","2014 - 0010","1","0","0","0");
INSERT INTO tbl_status VALUES("21","2014 - 0011","1","0","0","0");
INSERT INTO tbl_status VALUES("22","2014 - 0012","1","1","1","0");
INSERT INTO tbl_status VALUES("23","2014 - 0013","0","0","0","0");
INSERT INTO tbl_status VALUES("24","2014 - 0014","0","0","0","0");
INSERT INTO tbl_status VALUES("25","2014 - 0015","0","0","0","0");
INSERT INTO tbl_status VALUES("26","2014 - 0016","0","0","0","0");
INSERT INTO tbl_status VALUES("27","2014 - 0017","0","0","0","0");
INSERT INTO tbl_status VALUES("28","2014 - 0018","1","1","1","1");
INSERT INTO tbl_status VALUES("29","2014 - 0019","1","1","1","1");
INSERT INTO tbl_status VALUES("30","2014 - 0020","1","1","1","1");
INSERT INTO tbl_status VALUES("31","2014 - 0021","1","1","1","1");
INSERT INTO tbl_status VALUES("32","2014 - 0022","1","1","1","0");
INSERT INTO tbl_status VALUES("33","2014 - 0023","0","0","0","0");
INSERT INTO tbl_status VALUES("34","2014 - 0024","1","1","1","0");
INSERT INTO tbl_status VALUES("35","2014 - 0025","1","1","1","0");
INSERT INTO tbl_status VALUES("36","2014 - 0026","1","1","1","0");
INSERT INTO tbl_status VALUES("37","2014 - 0027","0","0","0","0");
INSERT INTO tbl_status VALUES("38","2014 - 0028","0","0","0","0");
INSERT INTO tbl_status VALUES("39","2014 - 0029","1","1","1","0");
INSERT INTO tbl_status VALUES("40","2014 - 0030","1","1","1","0");
INSERT INTO tbl_status VALUES("41","2014 - 0031","1","1","1","0");
INSERT INTO tbl_status VALUES("42","2014 - 0032","1","1","1","1");
INSERT INTO tbl_status VALUES("43","2014 - 0033","0","0","0","0");
INSERT INTO tbl_status VALUES("44","2014 - 0034","0","0","0","0");
INSERT INTO tbl_status VALUES("45","2014 - 0035","0","0","0","0");
INSERT INTO tbl_status VALUES("46","2014 - 0036","0","0","0","0");
INSERT INTO tbl_status VALUES("47","2014 - 0037","0","0","0","0");
INSERT INTO tbl_status VALUES("48","2014 - 0038","1","1","1","0");
INSERT INTO tbl_status VALUES("49","2014 - 0039","1","1","1","0");
INSERT INTO tbl_status VALUES("50","2014 - 0040","1","1","1","0");
INSERT INTO tbl_status VALUES("51","2014 - 0041","1","1","1","0");
INSERT INTO tbl_status VALUES("52","2014 - 0042","0","0","0","0");
INSERT INTO tbl_status VALUES("53","2014 - 0043","0","0","0","0");
INSERT INTO tbl_status VALUES("54","2014 - 0044","1","1","1","0");
INSERT INTO tbl_status VALUES("55","2014 - 0045","1","1","1","0");
INSERT INTO tbl_status VALUES("56","2014 - 0046","1","1","1","0");
INSERT INTO tbl_status VALUES("57","2014 - 0047","0","0","0","0");
INSERT INTO tbl_status VALUES("58","2014 - 0048","0","0","0","0");
INSERT INTO tbl_status VALUES("59","2014 - 0049","1","1","1","0");
INSERT INTO tbl_status VALUES("60","2014 - 0050","1","1","1","0");
INSERT INTO tbl_status VALUES("61","2014 - 0051","1","1","1","0");
INSERT INTO tbl_status VALUES("62","2014 - 0052","1","1","1","0");
INSERT INTO tbl_status VALUES("63","2014 - 0053","1","1","1","0");
INSERT INTO tbl_status VALUES("64","2014 - 0054","1","1","1","0");
INSERT INTO tbl_status VALUES("65","2014 - 0055","1","1","1","0");
INSERT INTO tbl_status VALUES("66","2014 - 0056","1","1","1","0");
INSERT INTO tbl_status VALUES("67","2014 - 0057","1","1","1","0");
INSERT INTO tbl_status VALUES("68","2014 - 0058","0","0","0","0");
INSERT INTO tbl_status VALUES("69","2014 - 0059","0","0","0","0");
INSERT INTO tbl_status VALUES("70","2014 - 0060","0","0","0","0");
INSERT INTO tbl_status VALUES("71","2014 - 0061","0","0","0","0");
INSERT INTO tbl_status VALUES("72","2014 - 0062","1","1","1","0");
INSERT INTO tbl_status VALUES("73","2014 - 0063","1","1","1","0");
INSERT INTO tbl_status VALUES("74","2014 - 0064","1","1","1","0");
INSERT INTO tbl_status VALUES("75","2014 - 0065","1","1","1","0");
INSERT INTO tbl_status VALUES("76","2014 - 0066","0","0","0","0");
INSERT INTO tbl_status VALUES("77","2014 - 0067","0","0","0","0");
INSERT INTO tbl_status VALUES("78","2014 - 0069","1","0","0","0");
INSERT INTO tbl_status VALUES("79","2014 - 0070","1","1","1","1");
INSERT INTO tbl_status VALUES("80","2014 - 0071","1","1","1","1");
INSERT INTO tbl_status VALUES("81","2014 - 0078","1","1","1","1");
INSERT INTO tbl_status VALUES("82","2014 - 0077","1","1","1","1");
INSERT INTO tbl_status VALUES("83","2014 - 0076","1","1","1","1");
INSERT INTO tbl_status VALUES("84","2014 - 0087","1","1","1","1");
INSERT INTO tbl_status VALUES("85","2014 - 0088","1","1","1","1");
INSERT INTO tbl_status VALUES("86","2014 - 0072","0","0","0","0");
INSERT INTO tbl_status VALUES("87","2014 - 0072","0","0","0","0");
INSERT INTO tbl_status VALUES("88","2014 - 0072","0","0","0","0");
INSERT INTO tbl_status VALUES("89","2014 - 0072","0","0","0","0");
INSERT INTO tbl_status VALUES("90","2014 - 0073","1","1","1","0");
INSERT INTO tbl_status VALUES("91","2014 - 0074","0","0","0","0");
INSERT INTO tbl_status VALUES("92","2014 - 0091","1","1","1","1");
INSERT INTO tbl_status VALUES("93","2014 - 0092","0","0","0","0");
INSERT INTO tbl_status VALUES("94","2014 - 0093","1","1","1","1");
INSERT INTO tbl_status VALUES("95","2014 - 0089","0","0","0","0");
INSERT INTO tbl_status VALUES("96","2014 - 0075","1","1","1","1");



DROP TABLE tbl_sysbackup;

CREATE TABLE `tbl_sysbackup` (
  `db_id` int(11) NOT NULL AUTO_INCREMENT,
  `db_name` varchar(50) DEFAULT NULL,
  `date_backed_up` datetime DEFAULT NULL,
  `backed_up_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`db_id`),
  KEY `backed_up_by` (`backed_up_by`),
  CONSTRAINT `FK__tbl_user` FOREIGN KEY (`backed_up_by`) REFERENCES `tbl_user` (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

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



