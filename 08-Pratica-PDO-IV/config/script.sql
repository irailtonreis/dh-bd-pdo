create database aula_pdo;

use aula_pdo;

create table usuarios(
id int(11) primary key not null auto_increment,
nome varchar(50),
email varchar(50),
senha varchar(200),
nivel_acesso char(1)
);

create table contatos(
id int(11) primary key not null auto_increment,
nome varchar(50),
email varchar(50),
mensagem text
);

create table noticias (
id int (11) primary key auto_increment not null,
titulo varchar(50),
descricao varchar(200),
imagem varchar(100),
data_criacao date
);









