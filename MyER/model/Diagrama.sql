CREATE DATABASE Diagrama;

CREATE TABLE clase1
(
	id_clase1 int PRIMARY KEY,
	atributo1 int NOT NULL,
	atributo2 real NOT NULL
);

CREATE TABLE clase2
(
	id_clase2 int PRIMARY KEY,
	atributo3 varchar(10) NOT NULL,
	id_fk_clase1 int NOT NULL,
	CONSTRAINT ca_de_clase2_a_clase1 FOREIGN KEY (id_fk_clase1) REFERENCES clase1(id_clase1)
);

CREATE TABLE clase3
(
	id_clase3 int PRIMARY KEY,
	atributo4 int NOT NULL,
	id_fk_clase1 int NOT NULL,
	id_fk_clase4 int NOT NULL,
	CONSTRAINT ca_de_clase3_a_clase1 FOREIGN KEY (id_fk_clase1) REFERENCES clase1(id_clase1),
	CONSTRAINT ca_de_clase3_a_clase4 FOREIGN KEY (id_fk_clase4) REFERENCES clase4(id_clase4)
);

CREATE TABLE clase3hija
(
	id_clase3hija int PRIMARY KEY,
	id_fk_clase3 int NOT NULL,
	CONSTRAINT ca_de_clase3hija_a_clase3 FOREIGN KEY (id_fk_clase3) REFERENCES clase3(id_clase3)
);

CREATE TABLE clase4
(
	id_clase4 int PRIMARY KEY
);

CREATE TABLE clase5
(
	id_clase5 int PRIMARY KEY
);

CREATE TABLE clase6
(
	id_clase6 int PRIMARY KEY,
	id_fk_clase5 int NOT NULL,
	CONSTRAINT ca_de_clase6_a_clase5 FOREIGN KEY (id_fk_clase5) REFERENCES clase5(id_clase5)
);

CREATE TABLE clase7
(
	id_clase7 int PRIMARY KEY,
	id_fk_clase5 int NOT NULL,
	CONSTRAINT ca_de_clase7_a_clase5 FOREIGN KEY (id_fk_clase5) REFERENCES clase5(id_clase5)
);

CREATE TABLE clase8
(
	id_clase8 int PRIMARY KEY
);

CREATE TABLE asociacion_clase2_clase8
(
	id_asociacion_clase2_clase8 int PRIMARY KEY,
	id_fk_clase2 int NOT NULL,
	id_fk_clase8 int NOT NULL,
	CONSTRAINT ca_de_asociacion_clase2_clase8_a_clase2 FOREIGN KEY (id_fk_clase2) REFERENCES clase2(id_clase2),
	CONSTRAINT ca_de_asociacion_clase2_clase8_a_clase8 FOREIGN KEY (id_fk_clase8) REFERENCES clase8(id_clase8)
);

CREATE TABLE clase4_clase5
(
	id_fk_clase5 int NOT NULL,
	id_fk_clase4 int NOT NULL,
	CONSTRAINT ca_de_clase4_a_clase5 FOREIGN KEY (id_fk_clase5) REFERENCES clase5(id_clase5),
	CONSTRAINT ca_de_clase5_a_clase4 FOREIGN KEY (id_fk_clase4) REFERENCES clase4(id_clase4)
);
