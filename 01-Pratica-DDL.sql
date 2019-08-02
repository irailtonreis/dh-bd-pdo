create database dh_sistema;

use dh_sistema;

create table professores(
id int(11) auto_increment primary key not null,
nome varchar(30),
email varchar(30),
cpf int(11) unique
);

create table alunos(
id int(11) primary key auto_increment not null,
descricao varchar(30)
);

create table cursos(
id int(11) primary key auto_increment not null,
descricao varchar(30)
);

create table turmas (
id int(11) primary key auto_increment not null,
descricao varchar(30)
);

create table turmas_geradas(
id int(11) primary key auto_increment not null,
id_alunos int(11),
id_professores int(11),
id_cursos int(11),
id_turmas int(11)
);

alter table turmas_geradas add foreign key (id_alunos) references alunos (id);
alter table turmas_geradas add foreign key (id_professores) references professores(id);
alter table turmas_geradas add foreign key (id_cursos) references cursos (id);
alter table turmas_geradas add foreign key (id_turmas) references turmas(id);

drop table turmas_geradas;
drop database dh_sistema;




