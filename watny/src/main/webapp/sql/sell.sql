
CREATE TABLE sell(			-- ÆÇ¸Å Tb
	sell_no			INT					not null 		primary key,
	sell_id			VARCHAR(15)			not null,
	sell_title 		VARCHAR(100)		not null,
	sell_category	VARCHAR(30)			not null,
	sell_content	VARCHAR(5000)		not null,
	sell_price		INT					not null,
	sell_preview	VARCHAR(50)			not null,
	sell_file		VARCHAR(50)			not null,
	sell_downcnt	INT					not null 		default 0,
	sell_newdate	DATETIME			null
);


select * from sell;