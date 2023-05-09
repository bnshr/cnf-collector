create database if not exists cnf;
use cnf;

create table claim (
  id int not null AUTO_INCREMENT,
  cnf_version varchar(50) not null,
  created_by  varchar(50) not null,
  upload_time datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  partner_name varchar(50),
  primary key (id)
);

create table claim_result (
  id int not null AUTO_INCREMENT,
  claim_id int not null,
  suite_name varchar(255),
  test_id varchar(255),
  test_status varchar(10) not null,
  primary key (id),
  foreign key (claim_id) references claim(id)
);

create index claim_upload_datetime on claim (upload_time);
