create table "SYSTEM".professors (
	prof_id NUMBER primary key,
	first_name VARCHAR2(100) NOT NULL,
	last_name VARCHAR2(100) NOT NULL,
  nickname VARCHAR2(100)
);

insert into "SYSTEM".professors (prof_id, first_name, last_name, nickname) values (1, 'Roger', 'Smith', 'Rog');
insert into "SYSTEM".professors (prof_id, first_name, last_name, nickname) values (2, 'Frank', 'Pitt', 'Frankie');
insert into "SYSTEM".professors (prof_id, first_name, last_name, nickname) values (3, 'John', 'Depp', 'Johnny');
insert into "SYSTEM".professors (prof_id, first_name, last_name, nickname) values (4, 'Michael', 'Jackson', 'King of Pop');
insert into "SYSTEM".professors (prof_id, first_name, last_name) values (5, 'Diego', 'Gamper');
insert into "SYSTEM".professors (prof_id, first_name, last_name) values (6, 'Johann', 'Helmer');
insert into "SYSTEM".professors (prof_id, first_name, last_name) values (7, 'Barbara', 'Dodero');
insert into "SYSTEM".professors (prof_id, first_name, last_name) values (8, 'Mary', 'Poppins');

create table "SYSTEM".teaching (
	course_id VARCHAR2(100) NOT NULL,
	prof_id NUMBER NOT NULL,
	foreign key (prof_id) REFERENCES professors(prof_id)
);

insert into "SYSTEM".teaching (course_id, prof_id) values ('LinearAlgebra', 1);
insert into "SYSTEM".teaching (course_id, prof_id) values ('DiscreteMathematics', 1);
insert into "SYSTEM".teaching (course_id, prof_id) values ('AdvancedDatabases', 3);
insert into "SYSTEM".teaching (course_id, prof_id) values ('ScientificWriting', 8);