
/*drop database db_bank;
drop table tbl_branch;
*/

/*
show databases;
create database db_bank;
show databases;
use db_bank;

create table tbl_branch
(
branchID int,

br_name varchar(200),
br_city varchar(200),
br_assets double,
primary key(branchID)
);



describe tbl_branch;

insert into tbl_branch values(1,'Zindabazar','Sylhet',100.00);
insert into tbl_branch values(2,'Zindabazar','Sylhet',200.00);
insert into tbl_branch values(3,'Zindabazar','Sylhet',300.00);
insert into tbl_branch values(4,'Zindabazar','Sylhet',400.00);
insert into tbl_branch values(5,'Zindabazar','Sylhet',500.00);
insert into tbl_branch values(6,'Zindabazar','Sylhet',600.00);
insert into tbl_branch values(7,'Zindabazar','Sylhet',700.00);
insert into tbl_branch values(8,'Zindabazar','Sylhet',800.00);
insert into tbl_branch values(9,'Zindabazar','Sylhet',900.00);
insert into tbl_branch values(10,'Zindabazar','Sylhet',1000.00);
describe tbl_branch;
select * from tbl_branch;


*/


create table tbl_account
(
  br_id int,
  acc_balance varchar(200),
  acc_no double,
  branchID int

);
/*
insert into tbl_account values(1,'hhhhh',50.00,100.00);
insert into tbl_account values(1,'jjjjjjjjjjjjj',40.0,100.00);
describe tbl_account;
select * from tbl_account;


	alter table tbl_account
		add column ac_type enum ('savings','current')
			     not null default 'savings';
				 
	describe tbl_account;
	*/
	


 alter table tbl_account
				add constraint fk_tbl_account_tbl_branch
							foreign key (br_id)
								references tbl_branch(br_id);	
ON DELETE NO ACTION
ON UPDATE CASCADE;
								
								
								
				 /*
				 source D:/dbms/db_bank_devolap.sql
				 */