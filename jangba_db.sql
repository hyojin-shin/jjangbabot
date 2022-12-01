CREATE DATABASE jangba_db default CHARACTER SET UTF8;
show databases;
USE jangba_db;

#명령문
SELECT * FROM jangba_db.GoodsInfo_table;
SELECT * FROM GoodsInfo_table;
desc jangba_db.GoodsInfo_table;
desc GoodsInfo_table;

alter table GoodsInfo_table add id int(10) not null;
alter table GoodsInfo_table add spot int(10) not null;
alter table GoodsInfo_table add pmsdata int(10) not null;
alter table GoodsInfo_table add date datetime not null; 

drop table GoodsInfo_table;

#테이블 생성 
Create table GoodsInfo_table(
		barcodeID int(10) not null auto_increment,
        goodsName VARCHAR(20) not null,
		section int(10) not null,
		stock int(10) not null,
        price int(10) not null,
    primary key(barcodeID));
    
    
#test용 데이터 추가   
  
INSERT INTO GoodsInfo_table(goodsName,section,stock,price) VALUES('snack',1,100,2000);
INSERT INTO GoodsInfo_table(goodsName,section,stock,price) VALUES('ramyun',2,200,1000);
INSERT INTO GoodsInfo_table(goodsName,section,stock,price) VALUES('coke',3,50,1500);
INSERT INTO GoodsInfo_table(goodsName,section,stock,price) VALUES('bread',4,20,1000);
INSERT INTO GoodsInfo_table(goodsName,section,stock,price) VALUES('choco',5,0,800);
INSERT INTO GoodsInfo_table(goodsName,section,stock,price) VALUES('water',6,3,500);
INSERT INTO GoodsInfo_table(goodsName,section,stock,price) VALUES('hyojin',7,1,7);
    
update GoodsInfo_table set stock = stock + 3 where goodsName = 'hyojin';
update GoodsInfo_table set stock = stock + 3 where goodsName = 'water';

#잡동사니
select @ROWNUM := @ROWNUM + 1 AS id,
		T.*
	FROM test_table T,(SELECT @ROWNUM :=0) TMP
ORDER BY date ASC