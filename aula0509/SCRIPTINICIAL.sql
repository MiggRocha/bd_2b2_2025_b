create database empregados_db;
use empregados_db;

create table departamento(
	cod_depto int auto_increment not null unique,
    nome varchar(100) not null,
    constraint primary key(cod_depto) 
);
create table empregado(
	cod_emp int not null auto_increment unique,
    cod_depto int not null,
    nome varchar(100) not null,
    dt_nascimento date not null,
    sexo char(1),
    dt_admissao date not null,
    civil char(1),
    salario decimal(10, 2) not null,
    constraint primary key(cod_emp),
    constraint fk_depto_emp foreign key(cod_depto) references departamento(cod_depto)
);
create table dependente(
	cod_dep int not null auto_increment,
    cod_emp int,
    nome varchar(100),
    dt_nascimento date,
    sexo char(1),
    constraint pk_dependente primary key (cos_dep, cod_emp),
    constraint fk_emp_dep foreign key (cod_emp) references empregado(cod_emp)
);