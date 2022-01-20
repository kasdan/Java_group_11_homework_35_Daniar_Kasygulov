CREATE DATABASE IF NOT EXISTS library_directory;
USE library_directory;
CREATE TABLE authors (
  id int(11) NOT NULL AUTO_INCREMENT,
  full_name varchar(60) NOT NULL,
  date_of_birth date NOT NULL,
  date_of_death date,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE type (
  id int(11) NOT NULL AUTO_INCREMENT,
  type_name varchar(60) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE category (
id int(11) NOT NULL AUTO_INCREMENT,
  category varchar(45) NOT NULL DEFAULT 'name category',
  description varchar(100) DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY category_UNIQUE (category)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE sub_category (
  id int(11) NOT NULL AUTO_INCREMENT,
  sub_category_name varchar(60) NOT NULL,
  category_id int(11) NOT NULL,
  PRIMARY KEY (id),
  KEY FK_category_idx (category_id),
  CONSTRAINT FK_category foreign key (category_id) references category (id) on update cascade
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE works (
  id int(11) NOT NULL AUTO_INCREMENT,
  name_of_article varchar(60) NOT NULL,
  year_of_publishing int(4) NOT NULL,
  publisher varchar(60) NOT NULL,
  author_id int(11) NOT NULL,
  type_id int(11) not null,
  category_id int(11) NOT NULL,
  sub_category_id int(11) NOT NULL,
   PRIMARY KEY (id),
  KEY FK_category_idx (category_id),
   KEY FK_type_idx (type_id),
  KEY FK_author_idx (author_id),
   KEY FK_sub_category_idx (sub_category_id),
  CONSTRAINT FK_author5 FOREIGN KEY (author_id) REFERENCES authors (id) ON UPDATE CASCADE,
   CONSTRAINT FK_category5 FOREIGN KEY (category_id) REFERENCES category (id) ON UPDATE CASCADE,
  CONSTRAINT FK_sub_category5 FOREIGN KEY (sub_category_id) REFERENCES sub_category (id) ON UPDATE CASCADE,
  CONSTRAINT FK_type FOREIGN KEY (type_id) REFERENCES type (id) ON UPDATE CASCADE
  
) ENGINE=InnoDB AUTO_INCREMENT=1;
alter table works change name_of_article name varchar(60) not null;
insert into authors (full_name,date_of_birth,date_of_death) 
values ('Isaac Asimov','1920-01-02','1992-04-06');
insert into authors (full_name,date_of_birth,date_of_death) 
values ('Victor Hugo','1802-02-26','1885-05-22');
insert into authors (full_name,date_of_birth) 
values ('Richard Warburton','1996-01-01');

insert into category(category) values('Fiction');
insert into category(category) values('Sci-Fi');
insert into category(category) values('Technical literature');
insert into category(category) values('Physics');
insert into category(category) values('Theoritical mechanics');

insert into sub_category(sub_category_name,category_id) values('Mechanics',4);
insert into sub_category(sub_category_name,category_id) values('Thermodinamics',4);
insert into sub_category(sub_category_name,category_id) values('Mechanics',4);
insert into sub_category(sub_category_name,category_id) values('Electromagnetism',4);
insert into sub_category(sub_category_name,category_id) values('Relativity theory',4);
insert into sub_category(sub_category_name,category_id) values('Quantum mechanics',4);
insert into sub_category(sub_category_name,category_id) values('Popular Science',4);

insert into sub_category(sub_category_name,category_id) values('Short story',1);
insert into sub_category(sub_category_name,category_id) values('Novella',1);
insert into sub_category(sub_category_name,category_id) values('Novel',1);

insert into sub_category(sub_category_name,category_id) values('Hard sci-fi',2);
insert into sub_category(sub_category_name,category_id) values('Soft sci-fi',2);

insert into sub_category(sub_category_name,category_id) values('Product manuals',3);
insert into sub_category(sub_category_name,category_id) values('Repair Manuals',3);
insert into sub_category(sub_category_name,category_id) values('User Guides',3);
insert into sub_category(sub_category_name,category_id) values('API Documentation',3);
insert into sub_category(sub_category_name,category_id) values('SDK Documentation',3);
insert into sub_category(sub_category_name,category_id) values('Project Plans',3);

insert into type(type_name) values('Article');
insert into type(type_name) values('Story');
insert into type(type_name) values('Novel');
insert into type(type_name) values('Directory');
insert into type(type_name) values('Textbook');

insert into works(name,year_of_publishing,publisher,author_id,type_id,category_id,sub_category_id)
values('Java 8 Lambdas: Pragmatic Functional Programming','2014','OReilly Media',3,5,3,15);
insert into works(name,year_of_publishing,publisher,author_id,type_id,category_id,sub_category_id)
values('Inside the Atom','1974','Abelard-Schuman',1,5,3,18);

insert into works(name,year_of_publishing,publisher,author_id,type_id,category_id,sub_category_id)
values('Foundation','1951','Gnome Press',1,3,2,11);
insert into works(name,year_of_publishing,publisher,author_id,type_id,category_id,sub_category_id)
values('Foundation and Empire','1952','Gnome Press',1,3,2,11);
insert into works(name,year_of_publishing,publisher,author_id,type_id,category_id,sub_category_id)
values('Second Foundation','1953','Gnome Press',1,3,2,11);

insert into works(name,year_of_publishing,publisher,author_id,type_id,category_id,sub_category_id)
values('The Man Who Laughs','1869','A. Lacroix, Verboeckhoven & Ce',2,3,1,1);
insert into works(name,year_of_publishing,publisher,author_id,type_id,category_id,sub_category_id)
values('Notre-Dame de Paris','1831','A. Lacroix, Verboeckhoven & Ce',2,3,1,1);

insert into works(name,year_of_publishing,publisher,author_id,type_id,category_id,sub_category_id)
values('Bug-Jargal','1820','Le Conservateur littéraire',2,2,1,7);
insert into works(name,year_of_publishing,publisher,author_id,type_id,category_id,sub_category_id)
values('The Last Question','1956','Science Fiction Quarterly',1,2,2,7);

insert into works(name,year_of_publishing,publisher,author_id,type_id,category_id,sub_category_id)
values('Back Through Time',1986,'New York Times',1,1,4,18);

insert into works(name,year_of_publishing,publisher,author_id,type_id,category_id,sub_category_id)
values('Understanding the JDK’s New Superfast Garbage Collectors',2019,'Oracle Magazine',3,1,3,12);
