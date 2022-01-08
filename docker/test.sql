DROP DATABASE pucsdStudents;
CREATE DATABASE pucsdStudents;

USE pucsdStudents;

create table studentData(
    name varchar(20),
    roll_no varchar(20),
    address text,
    mobile_number varchar(13),
    pan_number varchar(12)
);


insert into studentData values('Vikrant1','11','pune1','84464856431','12345678901');
insert into studentData values('Vikrant2','12','pune2','84464856432','12345678902');
insert into studentData values('Vikrant3','13','pune3','84464856433','12345678903');
insert into studentData values('Vikrant4','14','pune4','84464856434','12345678904');
insert into studentData values('Vikrant5','15','pune5','84464856435','12345678905');
