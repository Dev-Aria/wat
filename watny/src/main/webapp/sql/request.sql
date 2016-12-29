
CREATE TABLE request(			-- �Ƿ� Tb
	rq_no			INT					not null 		primary key,
	rq_id			VARCHAR(15)			not null,
	rq_title 		VARCHAR(100)		not null,
	rq_content		VARCHAR(5000)		not null,
	rq_templete		VARCHAR(50)			null,
	rq_newdate		DATETIME			not null,
	rq_enddate		DATETIME			null,
	rq_state		INT					not null
);


select * from request;


Insert into 
request(rq_no, rq_id, rq_title, rq_content, rq_templete, rq_newdate, rq_enddate, rq_state)
values(1, 'nayoung', '�����Դϴ�', '�����Դϴ�.', 'templete_nayoung1.png', now(), null, 0);
       

Insert into 
request(rq_no, rq_id, rq_title, rq_content, rq_templete, rq_newdate, rq_enddate, rq_state)
values(2, 'sangyeop', '�����Դϴ�', '�����Դϴ�.\n�����Դϴ�.\n�����Դϴ�.', 'templete_sangyeop1.png', now(), null, 0);


INSERT INTO request(rq_no, rq_id, rq_title, rq_content, rq_templete, 
			  				rq_newdate, rq_enddate, rq_state)
		VALUES(3,
		       'nayoung', '����', '�����Դϴ�\n�����Դϴ�.', 'templete_nayoung2.png', 
				now(), '2017-02-11 10:00:00', 0	);


       