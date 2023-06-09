DROP DATABASE IF EXISTS minecraft;
CREATE DATABASE minecraft;
USE minecraft;

CREATE TABLE Jugador (
    id_jugador INT ,      
    nombre VARCHAR(20) ,
    correo_electronico VARCHAR(25),
    nivel INT,
    PRIMARY KEY (id_jugador)
    
);

CREATE TABLE Tipo_Jugador (
    tipo_jugador VARCHAR(20),
    id_jugador INT,  
    fecha_registro date,
    primary key (tipo_jugador)
);


CREATE TABLE Bloque (
    id_bloque INT ,
    nombre VARCHAR(20),
    tipo VARCHAR(10), 
    primary key (id_bloque)
);

CREATE TABLE Mundo (
    id_mundo INT,
    nombre VARCHAR(20),
    descripcion VARCHAR(100),
    tecnico varchar(2),
    PRIMARY KEY (id_mundo)
);

CREATE TABLE Tipo_Mundo (
    Tipo_mundo  VARCHAR(10),
    id_mundo INT,  
    version int,
    PRIMARY KEY (Tipo_mundo)
);

CREATE TABLE Evento (
    id_evento INT,
    nombre VARCHAR(20) ,
    fecha DATE,
    descripcion VARCHAR(100),     
    PRIMARY KEY (id_evento)
);

CREATE TABLE Tipo_Evento (
	tipo_evento VARCHAR(100),
    id_evento INT,        
    primary key (tipo_evento)
);

CREATE TABLE Jugador_Bloque (
    id_jugador INT,
    id_bloque INT,             
    PRIMARY KEY (id_jugador, id_bloque)
);

CREATE TABLE Jugador_Mundo (
    id_jugador INT,
    id_mundo INT,               
    PRIMARY KEY (id_jugador, id_mundo)
);

CREATE TABLE Bloque_Mundo (
    id_bloque INT,             
    id_mundo INT,
    PRIMARY KEY (id_bloque, id_mundo)
);

CREATE TABLE Jugador_Evento (
    id_jugador INT,               
    id_evento INT,
    PRIMARY KEY (id_jugador, id_evento)
);



alter table Tipo_Jugador
add constraint fk_Jugador4 foreign key (id_jugador) references Jugador (id_jugador);

alter table Tipo_Mundo
add constraint fk_Mundo3 foreign key (id_mundo) references Mundo (id_mundo);

alter table Tipo_Evento
add constraint fk_Evento2 foreign key (id_evento) references Evento (id_evento);

alter table Jugador_Bloque
add constraint fk_Jugador1 foreign key (id_jugador) references Jugador (id_jugador),
add constraint fk_Bloque1 foreign key (id_bloque) references Bloque (id_bloque);

alter table Jugador_Mundo
add constraint fk_Jugador2 foreign key (id_jugador) references Jugador (id_jugador),
add constraint fk_Mundo1 foreign key (id_mundo) references Mundo (id_mundo);

alter table Bloque_Mundo
add constraint fk_Bloque2 foreign key (id_bloque) references Bloque (id_bloque),
add constraint fk_Mundo2 foreign key (id_mundo) references Mundo (id_mundo);

alter table Jugador_Evento
add constraint fk_Jugador3 foreign key (id_jugador) references Jugador (id_jugador),
add constraint fk_Evento1 foreign key (id_evento) references Evento (id_evento);



insert into Jugador (id_jugador, nombre, correo_electronico, nivel) values 
(01, "Osuna", "osuna132@gmail.com", 10 ),
(02, "Mixwell", "bienmezclado@gmail.com", 100),
(03, "Kakaroto", "cacaroto69@gmail.com", 142 ),
(04, "Elma-Tamoros", "matamoros@gmail.com", 87 ),
(05, "Ruperto", "eldelpuerto@gmail.com", 44 );


insert into Tipo_Jugador (tipo_jugador, id_jugador) values 
("Tecnico", 01),
("Constructor", 02),
("Agricultor", 03),
("Tecnico", 04),
("Minero", 05);


insert into Bloque (id_bloque, nombre, tipo) values 
(01, "Madera", "Solido" ),
(02, "Hierro", "Solido" ),
(03, "Piedra", "Solido" ),
(04, "Terracota", "Solido" ),
(05, "Arena", "Solido" );


insert into Mundo (id_mundo, nombre, descripcion) values 
(01, "MundoTecnico", "Para pasarse el juego",'SI'),
(02, "MundoCreativo", "Para ser creativo" ,'SI'),
(03, "Survival", "Aprender a jugar", 'NO'),
(04, "Hardcore", "Si mueres pierdes el mundo",'SI' ),
(05, "Aventura", "Para divertirse", 'NO');


insert into Tipo_Mundo (Tipo_mundo, id_mundo) values 
("Llano", 01, 1.20 ),
("Montañoso", 02, 1.14 ),
("Pantanoso", 03, 1.16 ),
("Bosque", 04, 1.14 ),
("Marino", 05, 1.14 );


insert into Evento (id_evento, nombre, fecha, descripcion) values 
(01, "Evento1", '2020-06-09', "Este es el Evento1" ),
(02, "Evento2", '2012-28-1', "Este es el Evento2" ),
(03, "Evento3", '2021-09-26', "Este es el Evento3" ),
(04, "Evento4", '2000-10-21', "Este es el Evento4" ),
(05, "Evento5", '2002-12-31', "Este es el Evento5" );


insert into Tipo_Evento (tipo_evento, id_evento) values 
("Cooperativo", 01),
("Con amigos", 02),
("Cooperativo", 03),
("Individual", 04),
("Individual", 01);


insert into Jugador_Bloque (id_jugador, id_bloque) values 
(01, 01),
(02, 02),
(03, 03),
(04, 04),
(05, 05);


insert into Jugador_Mundo (id_jugador, id_mundo) values 
(01, 01),
(02, 02),
(03, 03),
(04, 04),
(05, 05);


insert into Bloque_Mundo (id_bloque, id_mundo) values 
(01, 01),
(02, 02),
(03, 03),
(04, 04),
(05, 05);


insert into Jugador_Evento (id_jugador, id_evento) values 
(01, 01),
(02, 02),
(03, 03),
(04, 04),
(05, 05);
