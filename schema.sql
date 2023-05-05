create database cnf;
use cnf;

create table claim (
  id int not null,
  cnf_version varchar(40) not null, 
  created_by  varchar(40) not null,
  upload_time DATETIME not null,
  partner_name varchar(40),
  primary key (id)
);

create table claim_result (
  id int not null,
  claim_id int not null,
  suite_name varchar(50),
  test_id varchar(100),
  test_status varchar(10) not null,
  primary key (id),
  foreign key (claim_id) references claim(id)
);
