
Create database db_bank;
use db_bank;
select database();

CREATE TABLE tbl_branch
(
	branchID int,
	br_name varchar(20),
	br_city varchar(22),
	br_assets float,
	PRIMARY KEY(branchID)
)engine = innodb;




CREATE TABLE tbl_account
(
	accountNO int,
	ac_balance int,
	branchID int
);

CREATE TABLE tbl_depositor
(
	customerID int,
	accountNO int
);

CREATE TABLE tbl_customer
(
	customerID int,
	cs_name varchar(20),
	cs_street varchar(30),
	cs_city varchar(10),
	PRIMARY KEY(customerID)
);






ALTER TABLE tbl_account
ADD COLUMN ac_type ENUM ('savings','current','depossitor') NOT NULL DEFAULT 'savings';
describe tbl_account;




/*ALTER TABLE tbl_branch
CHANGE COLUMN ac_type ac_nature ENUM ('savings','current','depossitor') NOT NULL DEFAULT 'savings';
describe tbl_branch;
*/




ALTER TABLE tbl_account
ADD CONSTRAINT fk_tbl_account_tbl_branch
FOREIGN KEY (branchID)
REFERENCES tbl_branch(branchID)
ON DELETE NO ACTION
ON UPDATE CASCADE;
	
ALTER TABLE tbl_depositor
ADD CONSTRAINT fk_tbl_depositor_tbl_customer
FOREIGN KEY(customerID)
REFERENCES tbl_customer(customerID)
ON DELETE NO ACTION
ON UPDATE CASCADE;
	
ALTER TABLE tbl_depositor
ADD CONSTRAINT fk_tbl_depositor_tbl_account
FOREIGN KEY(accountNO)
REFERENCES tbl_account(accountNO)	
ON DELETE NO ACTION
ON UPDATE CASCADE;
	
		
describe tbl_branch;
describe tbl_customer;
describe tbl_account;
describe tbl_depositor;

	
INSERT INTO tbl_branch(branchID,br_name,br_city,br_assets)
VALUES(1,'ChitagongBranch','Chitagong',70000000);	
INSERT INTO tbl_branch(branchID,br_name,br_city,br_assets)
VALUES(2,'DhakaBranch','Dhaka',90000000);
	
INSERT INTO tbl_branch(branchID,br_name,br_city,br_assets)
VALUES(3,'RajshahiBranch','Rajshahi',40000000);
	
INSERT INTO tbl_branch(branchID,br_name,br_city,br_assets)
VALUES(4,'KhulnaBranch','Khulna',30000000);

INSERT INTO tbl_branch(branchID,br_name,br_city,br_assets)
VALUES(5,'SylhetBranch','Sylhet',20000000);
INSERT INTO tbl_branch(branchID,br_name,br_city,br_assets)
VALUES(6,'CChitagongBranch','Chitagong',70000000);	
INSERT INTO tbl_branch(branchID,br_name,br_city,br_assets)
VALUES(7,'DDhakaBranch','Dhaka',90000000);
	
INSERT INTO tbl_branch(branchID,br_name,br_city,br_assets)
VALUES(8,'RRajshahiBranch','Rajshahi',40000000);
	
INSERT INTO tbl_branch(branchID,br_name,br_city,br_assets)
VALUES(9,'KKhulnaBranch','Khulna',30000000);

INSERT INTO tbl_branch(branchID,br_name,br_city,br_assets)
VALUES(10,'SSylhetBranch','Sylhet',20000000);
	
SELECT * FROM tbl_branch;





INSERT INTO tbl_account (accountNO,branchID,ac_balance)
VALUES(10010,1,1000);
	
INSERT INTO tbl_account(accountNO,branchID,ac_balance)
VALUES(20011,2,2000);
	
INSERT INTO tbl_account(accountNO,branchID,ac_balance)
VALUES(30012,3,3000);
	
INSERT INTO tbl_account(accountNO,branchID,ac_balance)
VALUES(40013,4,4000);
	
INSERT INTO tbl_account(accountNO,branchID,ac_balance)
VALUES(50014,5,5000);

INSERT INTO tbl_account(accountNO,branchID,ac_balance)
VALUES(30015,6,6000);	
	
INSERT INTO tbl_account(accountNO,branchID,ac_balance)
VALUES(10016,7,7000);

INSERT INTO tbl_account (accountNO,branchID,ac_balance)
VALUES(1001011,8,1000);
	
INSERT INTO tbl_account(accountNO,branchID,ac_balance)
VALUES(2001111,9,2000);
	
INSERT INTO tbl_account(accountNO,branchID,ac_balance)
VALUES(3001211,10,3000);
	

SELECT * FROM tbl_account;





INSERT INTO tbl_customer(customerID,cs_name,cs_street,cs_city)
VALUES(111,'Jakaria','BoroBazar','Sylhet');

INSERT INTO tbl_customer(customerID,cs_name,cs_street,cs_city)
VALUES(112,'rabel','10 Housing State','Dhaka');
	
INSERT INTO tbl_customer(customerID,cs_name,cs_street,cs_city)
VALUES(113,'Mazz','10 A Lamapara','Rajshahi');
	
INSERT INTO tbl_customer(customerID,cs_name,cs_street,cs_city)
VALUES(114,'dipu','43 D Airport Road','Khulna');

INSERT INTO tbl_customer(customerID,cs_name,cs_street,cs_city)
VALUES(115,'uzall','10 M Ambarkhana','Sylhet');

INSERT INTO tbl_customer(customerID,cs_name,cs_street,cs_city)
VALUES(116,'juna','353 Shibgonj','Chitagong');
	
INSERT INTO tbl_customer(customerID,cs_name,cs_street,cs_city)
VALUES(117,'tusar','76 Supply Road','Dhaka');
	INSERT INTO tbl_customer(customerID,cs_name,cs_street,cs_city)
VALUES(118,'proma','10 M Ambarkhana','Sylhet');

INSERT INTO tbl_customer(customerID,cs_name,cs_street,cs_city)
VALUES(119,'rajib','353 Shibgonj','Chitagong');
	
INSERT INTO tbl_customer(customerID,cs_name,cs_street,cs_city)
VALUES(120,'toki','76 Supply Road','Dhaka');
	
SELECT * FROM tbl_customer;




INSERT INTO tbl_depositor(customerID,accountNO)
VALUES(111,10010);

INSERT INTO tbl_depositor(customerID,accountNO)
VALUES(112,30012);

INSERT INTO tbl_depositor(customerID,accountNO)
VALUES(113,40013);

INSERT INTO tbl_depositor(customerID,accountNO)
VALUES(114,50014);

INSERT INTO tbl_depositor(customerID,accountNO)
VALUES(115,10016);

INSERT INTO tbl_depositor(customerID,accountNO)
VALUES(116,20011);

INSERT INTO tbl_depositor(customerID,accountNO)
VALUES(117,30015);

INSERT INTO tbl_depositor(customerID,accountNO)
VALUES(118,10016);

INSERT INTO tbl_depositor(customerID,accountNO)
VALUES(119,20011);

INSERT INTO tbl_depositor(customerID,accountNO)
VALUES(120,30015);


SELECT * FROM tbl_depositor;




/*alter table tbl_depositor
add column cell_num varchar(15);
describe tbl_depositor;
*/




















/*
source E:/dbb_bank.sql

*/


 
 select c.*, a.* from tbl_branch as b join tbl_account as a on (a.branchID=b.branchID) join tbl_depositor as d on (a.accountNO=d.accountNO) 
 join tbl_customer as c on(d.customerID=c.customerID) where b.br_city='Sylhet';
 
 
 
 create view vw_customer_details as
(
select c.*, a.* from tbl_branch as b join tbl_account as a on (a.branchID=b.branchID) join tbl_depositor as d on (a.accountNO=d.accountNO) 
 join tbl_customer as c on(d.customerID=c.customerID) where b.br_city='Sylhet');
 
 select * from vw_customer_details;
 
 
 
 
 update tbl_account set  ac_type= 'current' where ac_balance>2000;
 
 
 
 
 
 