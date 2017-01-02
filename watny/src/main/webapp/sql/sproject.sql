
drop table sproject;

CREATE TABLE sproject (			-- 스터디&프로젝트 Tb
	sp_code		 VARCHAR(10) 	NOT NULL, 				 
	sp_no		 INT 			NOT NULL 	primary key, 
	sp_rqno		 INT			NULL,
	sp_id		 VARCHAR(15)	NOT NULL,				 
	sp_title	 VARCHAR(100)	NOT NULL,				 
	sp_content	 VARCHAR(5000)	NOT NULL,				 
	sp_pay		 INT			NOT NULL,				 
	sp_startdate DATETIME		NOT NULL,				 
	sp_findate	 DATETIME		NOT NULL, 				 
	sp_dbcnt 	 INT			NOT NULL 	default 0,		 
	sp_uicnt	 INT			NOT NULL 	default 0,		 
	sp_backcnt	 INT			NOT NULL 	default 0,		 
	sp_servercnt INT			NOT NULL 	default 0,		 
	sp_etccnt	 INT			NOT NULL 	default 0,		 
	sp_dbpay	 INT			NOT NULL 	default 0,		 
	sp_uipay	 INT			NOT NULL 	default 0,		 
	sp_backpay	 INT			NOT NULL 	default 0,		 
	sp_serverpay INT			NOT NULL 	default 0,		 
	sp_etcpay	 INT			NOT NULL 	default 0,		 
	sp_state	 INT			NOT NULL, 				 
	sp_newdate	 DATETIME		NOT NULL, 				 
	sp_enddate	 DATETIME		NULL				 	 
);


select * from sproject;



Insert into 
sproject(sp_code, sp_no, sp_rqno, sp_id, sp_title, sp_content, sp_pay, sp_startdate, sp_findate, 
         sp_dbcnt, sp_uicnt, sp_backcnt, sp_servercnt, sp_etccnt, sp_dbpay, sp_uipay, 
         sp_backpay, sp_serverpay, sp_etcpay, sp_state, sp_newdate, sp_enddate)
values('P', 1, 2, 'nayoung', '제목입니다', '내용입니다.', 0, '2017-01-01 12:23:55', '2017-01-21 12:23:55',
       1, 0, 2, 0, 0, 20, 0, 20, 0, 0, 0, '2016-12-23 12:23:55', null);
       
Insert into 
sproject(sp_code, sp_no, sp_rqno, sp_id, sp_title, sp_content, sp_pay, sp_startdate, sp_findate, 
         sp_dbcnt, sp_uicnt, sp_backcnt, sp_servercnt, sp_etccnt, sp_dbpay, sp_uipay, 
         sp_backpay, sp_serverpay, sp_etcpay, sp_state, sp_newdate, sp_enddate)
values('S', 4, null, 'habin', '제목입니다', '내용입니다.', 0, '2017-01-02 10:00:51', '2017-01-15 12:23:55',
       1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 2, '2016-12-23 12:23:55', null);
       
       
UPDATE sproject
SET sp_state=2
WHERE sp_no=2;
       
