
CREATE TABLE spapply (			-- ���͵�&������Ʈ ���� ��û�� Tb
	spa_code	 VARCHAR(10) 	NOT NULL, 			
	spa_no		 INT 			NOT NULL,			
	spa_part	 VARCHAR(20)	NOT NULL,			
	spa_id	 	 VARCHAR(15)	NOT NULL,			
	spa_memo	 VARCHAR(200)	NULL,				
	spa_select	 VARCHAR(10)	NOT NULL 	default 'N'	
);
