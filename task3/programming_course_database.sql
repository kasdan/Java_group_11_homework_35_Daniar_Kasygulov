CREATE DATABASE IF NOT EXISTS attendance_programing_course;
USE attendance_programing_course;

CREATE TABLE groups_of_java(
  id int(11) NOT NULL AUTO_INCREMENT,
  group_name varchar(60) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1;

insert into groups_of_java(group_name)
values('Java group 10');
insert into groups_of_java(group_name)
values('Java group 11');


CREATE TABLE students(
  id int(11) NOT NULL AUTO_INCREMENT,
  full_name varchar(60) NOT NULL,
  group_id int(11) not null,
  PRIMARY KEY (id),
  CONSTRAINT FK_group FOREIGN KEY (group_id) REFERENCES groups_of_java (id) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1;

insert into students(full_name,group_id)
values('Daniar Kasygulov',1);
insert into students(full_name,group_id)
values('Alfit Bashirov',1);
insert into students(full_name,group_id)
values('Jamila Tilekbekova',1);
insert into students(full_name,group_id)
values('Albert Almazbekov',1);

insert into students(full_name,group_id)
values('Vagiz Vazitdinov',2);
insert into students(full_name,group_id)
values('Emir Nasirov',2);
insert into students(full_name,group_id)
values('Suban Tashbaltaev',2);
insert into students(full_name,group_id)
values('Atabek Akbalaev',2);

CREATE TABLE study_material(
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(60) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1;

insert into study_material(name)
values('Introduction to programming');
insert into study_material(name)
values('Introduction to Java');
insert into study_material(name)
values('Java variable types in Java');
insert into study_material(name)
values('Primitive variables in Java');
insert into study_material(name)
values('Strings in Java');
insert into study_material(name)
values('Int,double in Java');
insert into study_material(name)
values('Arrays in Java');

CREATE TABLE lessons(
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(60) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1;

insert into lessons(name)
values('Lesson 1');
insert into lessons(name)
values('Lesson 2');
insert into lessons(name)
values('Lesson 3');
insert into lessons(name)
values('Lesson 4');
insert into lessons(name)
values('Lesson 5');
insert into lessons(name)
values('Lesson 6');
insert into lessons(name)
values('Lesson 7');

CREATE TABLE lesson_plans(
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(60) NOT NULL,
  lesson_id int(11) not null,
  material_id int(11) not null,
  PRIMARY KEY (id),
  CONSTRAINT FK_lesson FOREIGN KEY (lesson_id) REFERENCES lessons (id) ON UPDATE CASCADE,
CONSTRAINT FK_material FOREIGN KEY (material_id) REFERENCES study_material (id) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1;

insert into lesson_plans(name,lesson_id,material_id)
values('Begining of the course',1,1);
insert into lesson_plans(name,lesson_id,material_id)
values('Begining of the course',2,1);
insert into lesson_plans(name,lesson_id,material_id)
values('Introduction into Java',3,2);
insert into lesson_plans(name,lesson_id,material_id)
values('Introduction into Java',4,2);
insert into lesson_plans(name,lesson_id,material_id)
values('Introduction into Java',4,3);
insert into lesson_plans(name,lesson_id,material_id)
values('Introduction into Java',4,4);
insert into lesson_plans(name,lesson_id,material_id)
values('Java variables and expressions',4,5);
insert into lesson_plans(name,lesson_id,material_id)
values('Java variables and expressions',5,6);
insert into lesson_plans(name,lesson_id,material_id)
values('Java variables and expressions',6,7);
insert into lesson_plans(name,lesson_id,material_id)
values('Java variables and expressions',6,7);

CREATE TABLE lesson_attendance(
  id int(11) NOT NULL AUTO_INCREMENT,
  lesson_id int(11) not null,
  group_id int(11) not null,
  student_id int(11) not null,
  date_of_lesson date not null,
  PRIMARY KEY (id),
  CONSTRAINT FK_lesson1 FOREIGN KEY (lesson_id) REFERENCES lessons (id) ON UPDATE CASCADE,
	CONSTRAINT FK_group1 FOREIGN KEY (group_id) REFERENCES groups_of_java (id) ON UPDATE CASCADE,
CONSTRAINT FK_student FOREIGN KEY (student_id) REFERENCES students (id) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1;
insert into lesson_attendance(lesson_id,group_id,student_id,date_of_lesson)
values(1,1,1,'2021-09-09');
insert into lesson_attendance(lesson_id,group_id,student_id,date_of_lesson)
values(1,1,2,'2021-09-09');
insert into lesson_attendance(lesson_id,group_id,student_id,date_of_lesson)
values(1,1,3,'2021-09-09');
insert into lesson_attendance(lesson_id,group_id,student_id,date_of_lesson)
values(1,1,4,'2021-09-09');
insert into lesson_attendance(lesson_id,group_id,student_id,date_of_lesson)
values(1,2,5,'2021-09-10');
insert into lesson_attendance(lesson_id,group_id,student_id,date_of_lesson)
values(1,2,6,'2021-09-10');
insert into lesson_attendance(lesson_id,group_id,student_id,date_of_lesson)
values(1,2,7,'2021-09-10');
insert into lesson_attendance(lesson_id,group_id,student_id,date_of_lesson)
values(1,2,8,'2021-09-10');
insert into lesson_attendance(lesson_id,group_id,student_id,date_of_lesson)
values(2,1,1,'2021-09-11');
insert into lesson_attendance(lesson_id,group_id,student_id,date_of_lesson)
values(2,1,2,'2021-09-11');
insert into lesson_attendance(lesson_id,group_id,student_id,date_of_lesson)
values(2,1,3,'2021-09-11');
insert into lesson_attendance(lesson_id,group_id,student_id,date_of_lesson)
values(2,1,4,'2021-09-11');
insert into lesson_attendance(lesson_id,group_id,student_id,date_of_lesson)
values(2,2,5,'2021-09-12');
insert into lesson_attendance(lesson_id,group_id,student_id,date_of_lesson)
values(2,2,6,'2021-09-12');
insert into lesson_attendance(lesson_id,group_id,student_id,date_of_lesson)
values(2,2,7,'2021-09-12');
insert into lesson_attendance(lesson_id,group_id,student_id,date_of_lesson)
values(2,2,8,'2021-09-12');