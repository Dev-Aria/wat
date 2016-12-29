
CREATE TABLE chiefapplicant (		-- 의뢰공고 팀장 신청자 Tb
	ca_no	 	 INT			NOT NULL	 primary key, 	
	ca_rqno		 INT			NOT NULL,
	ca_id		 VARCHAR(15) 	NOT NULL,				
	ca_price	 INT			NOT NULL,				
	ca_date	 	 INT			NOT NULL,				
	ca_memo		 VARCHAR(200)	NULL,					
	ca_newdate	 DATETIME		NOT NULL,				
	ca_select	 VARCHAR(10)	NOT NULL 	default 'N'
);

select * from chiefapplicant;