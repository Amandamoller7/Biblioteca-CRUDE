create database Biblioteca_Db;

use Biblioteca_db;

CREATE TABLE autores(
	id_autor  INT AUTO_INCREMENT PRIMARY KEY,
	nome varchar(45) not null,
	nacionalidade varchar(100) not null,
	ano_nacimento date not null
 ); 
 
 CREATE TABLE livros(
     id_livro INT AUTO_INCREMENT PRIMARY KEY,
     titulo varchar (100) not null, 
     genero varchar (100) not null,
     ano_publicacao date not null,
     autor INT,
     FOREIGN KEY (autores) REFERENCES autores (id_autor)
     
);


CREATE TABLE leitores(
    id_leitor INT AUTO_INCREMENT PRIMARY KEY,
    nome varchar (100) not null,
    email varchar (100) not null,
    telefone int not null
   
);

CREATE TABLE emprestimos(
   id_emprestimos INT AUTO_INCREMENT  PRIMARY KEY,
   data_emprestimo date not null,
   data_devolucao date not null,
   livro INT,
   leitor INT,
   FOREIGN KEY(livro) REFERENCES livros(id_livro),
   FOREIGN KEY(leitor) REFERENCES leitores(id_leitor)
);
 
 