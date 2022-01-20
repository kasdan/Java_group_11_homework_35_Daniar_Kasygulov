CREATE DATABASE IF NOT EXISTS human_resources;
USE human_resources;
CREATE TABLE departments (
  id int(11) NOT NULL AUTO_INCREMENT,
  department_name varchar(60) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE employees(
  id int(11) NOT NULL AUTO_INCREMENT,
  full_name varchar(60) NOT NULL,
  PRIMARY KEY (id),
  key FK_manager_idx(manager_id)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE positions(
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(60) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE employment (
id int(11) NOT NULL AUTO_INCREMENT,
employee_id int(11) not null,
position_id int(11) not null,
department_id int(11) not null,
manager_id int(11),
date_started date not null,
date_finished date,
salary int not null,
date_change_made date not null,
  PRIMARY KEY (id),
  CONSTRAINT FK_employee FOREIGN KEY (employee_id) REFERENCES employees (id) ON UPDATE CASCADE,
CONSTRAINT FK_position FOREIGN KEY (position_id) REFERENCES positions (id) ON UPDATE CASCADE,
CONSTRAINT FK_department FOREIGN KEY (department_id) REFERENCES departments (id) ON UPDATE CASCADE,
CONSTRAINT FK_manager FOREIGN KEY (manager_id) REFERENCES employees (id) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1;

insert into departments (department_name) 
values ('IT');
insert into departments (department_name) 
values ('HR');
insert into departments (department_name) 
values ('Marketing');

insert into employees(full_name)
values('Daniar Kasygulov');
insert into employees(full_name)
values('Sultan Nurgaziev');
insert into employees(full_name)
values('Aibek Alynbaev');
insert into employees(full_name)
values('Saadat Kasymova');

insert into positions(name)
values('Head of department');
insert into positions(name)
values('Main specialist');
insert into positions(name)
values('Specialist');

insert into employment(employee_id,position_id,department_id,date_started,salary,date_change_made)
values(1,1,1,'2011-1-1',80000,'2011-1-1');
insert into employment(employee_id,position_id,department_id,date_started,salary,date_change_made)
values(3,1,3,'2011-1-1',78000,'2011-1-1');

insert into employment(employee_id,position_id,department_id,date_started,salary,date_change_made,manager_id)
values(2,2,1,'2011-1-1',70000,'2011-1-1',1);
insert into employment(employee_id,position_id,department_id,date_started,salary,date_change_made,manager_id)
values(4,2,3,'2011-1-1',70000,'2011-1-1',3);

insert into employment(employee_id,position_id,department_id,date_started,salary,date_change_made)
values(1,1,1,'2011-1-1',85000,'2012-1-1');
insert into employment(employee_id,position_id,department_id,date_started,salary,date_change_made)
values(3,1,3,'2011-1-1',85000,'2012-4-1');

insert into employment(employee_id,position_id,department_id,date_started,salary,date_change_made,manager_id,date_finished)
values(4,2,3,'2011-1-1',70000,'2011-1-1',3,'2012-1-1');

insert into employment(employee_id,position_id,department_id,date_started,salary,date_change_made)
values(4,1,2,'2012-2-1',75000,'2012-2-1');
