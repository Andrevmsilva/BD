create database escola;

use escola;

create table alunos(
id int not null primary key auto_increment,
nome varchar (100),
idade int

);

create table cursos(
id int not null primary key auto_increment,
nome_curso varchar(100)

);

create table matriculas(
aluno_id int not null,
curso_id int not null,
foreign key (aluno_id) references alunos(id),
foreign key (curso_id) references cursos(id)
);

insert into alunos(nome,idade) values ('João Paulo',26);
insert into alunos(nome,idade) values ('João Passo',28);
insert into alunos(nome,idade) values ('João Padulo',268);

insert into cursos(nome_curso) values ('Desenvolvimento de Sistemas');

insert into matriculas(aluno_id,curso_id) values (1,1);


select alunos.nome,alunos.idade,cursos.nome_curso from matriculas
inner join alunos on matriculas.aluno_id = aluno_id
inner join cursos on matriculas.curso_id = curso_id;
