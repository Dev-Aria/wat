
CREATE TABLE spapply (			-- ���͵�&������Ʈ ���� ��û�� Tb
	spa_code	 VARCHAR(10) 	NOT NULL, 			
	spa_no		 INT 			NOT NULL,			
	spa_part	 VARCHAR(20)	NOT NULL,			
	spa_id	 	 VARCHAR(15)	NOT NULL,			
	spa_memo	 VARCHAR(200)	NULL,				
	spa_select	 VARCHAR(10)	NOT NULL 	default 'N'	
);


select * from spapply;


drop table spapply;

  
Insert into 
spapply(spa_code, spa_no, spa_part, spa_id, spa_memo, spa_select)
values('S', 10, 'db', 'nayoung', 'dkassasdff', 0);