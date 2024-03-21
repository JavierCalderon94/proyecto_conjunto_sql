/****************** QUERIES PARA CREAR TABLAS ******************/

CREATE TABLE alumnos (
    id_alumnos VARCHAR(5),
	nombre VARCHAR(32),
	email VARCHAR(64),
	id_grupo VARCHAR(2),
    PRIMARY KEY (id_alumnos),
	FOREIGN KEY (id_grupo) REFERENCES grupo(id_grupo)
);

CREATE TABLE campus (
    id_campus VARCHAR(2),
    nombre VARCHAR(32),
    direccion VARCHAR(64),
    ciudad VARCHAR(32),
    PRIMARY KEY (id_campus)
);

CREATE TABLE grupo (
    id_grupo VARCHAR(2),
	id_promocion VARCHAR(2),
	id_campus VARCHAR(2),
	id_modalidad VARCHAR(2),
	aula VARCHAR(32),
    PRIMARY KEY (id_grupo),
	FOREIGN KEY (id_promocion) REFERENCES promocion(id_promocion),
	FOREIGN KEY (id_campus) REFERENCES campus(id_campus),
	FOREIGN KEY (id_modalidad) REFERENCES modalidad(id_modalidad)
);

CREATE TABLE modalidad (
    id_modalidad VARCHAR(2),
    nombre VARCHAR(32),
	modalidad VARCHAR(32),
    PRIMARY KEY (id_modalidad)
);

CREATE TABLE notas (
    id_notas VARCHAR(10),
	id_alumnos VARCHAR(2),
	id_proyecto VARCHAR(2),
	calificacion VARCHAR(8),
    PRIMARY KEY (id_notas)
	FOREIGN KEY (id_alumnos) REFERENCES alumnos(id_alumnos)
    FOREIGN KEY (id_proyecto) REFERENCES proyecto(id_proyecto)
);

CREATE TABLE profesorado_clase (
	id_profesorado_clase VARCHAR(2),
    id_profesor VARCHAR(2),
	id_grupo VARCHAR(2),
    PRIMARY KEY (id_profesorado_clase),
	FOREIGN KEY (id_profesor) REFERENCES profesroes(id_profesor),
    FOREIGN KEY (id_grupo) REFERENCES grupo(id_grupo)
);

CREATE TABLE profesores (
    id_profesor VARCHAR(2) NOT NULL,
    nombre VARCHAR(32) NOT NULL,
    id_rol VARCHAR(2) NOT NULL,
    id_vertical VARCHAR(2) NOT NULL,
    PRIMARY KEY (id_profesor),
    FOREIGN KEY (id_rol) REFERENCES rol(id_rol),
    FOREIGN KEY (id_vertical) REFERENCES vertical(id_vertical)
);

CREATE TABLE promocion (
    id_promocion VARCHAR(2),
    fecha DATE,
	mes VARCHAR(32),
    PRIMARY KEY (id_promocion)
);

CREATE TABLE proyecto (
    id_proyecto VARCHAR(2),
    nombre VARCHAR(32),
    PRIMARY KEY (id_proyecto)
);

CREATE TABLE reparto_tareas (
	id_reparto_tareas VARCHAR(2),
    id_rol VARCHAR(2),
	id_tareas VARCHAR(2),
    PRIMARY KEY (id_reparto_tareas),
	FOREIGN KEY (id_rol) REFERENCES rol(id_rol),
    FOREIGN KEY (id_tareas) REFERENCES tareas(id_tareas)
);

CREATE TABLE rol (
    id_rol VARCHAR(2),
    nombre VARCHAR(32),
    PRIMARY KEY (id_rol)
);

CREATE TABLE tareas (
    id_tareas VARCHAR(2),
	nombre VARCHAR(32),
    PRIMARY KEY (id_tareas)
);

CREATE TABLE vertical (
    id_vertical VARCHAR(2),
    nombre VARCHAR(32),
    PRIMARY KEY (id_vertical)
);



/****************** QUERIES PARA HACER LOS INSERT ******************/

INSERT INTO alumnos (id_alumnos, nombre, email, id_grupo) 
VALUES ('01','Jafet Casals','Jafet_Casals@gmail.com','01'),
('02','Jorge Manzanares','Jorge_Manzanares@gmail.com','01'),
('03','Onofre Adadia','Onofre_Adadia@gmail.com','01'),
('04','Merche Prada','Merche_Prada@gmail.com','01'),
('05','Pilar Abella','Pilar_Abella@gmail.com','01'),
('06','Leoncio Tena','Leoncio_Tena@gmail.com','01'),
('07','Odalys Torrijos','Odalys_Torrijos@gmail.com','01'),
('08','Eduardo Caparrós','Eduardo_Caparrós@gmail.com','01'),
('09','Ignacio Goicoechea','Ignacio_Goicoechea@gmail.com','02'),
('10','Clementina Santos','Clementina_Santos@gmail.com','02'),
('11','Daniela Falcó','Daniela_Falcó@gmail.com','02'),
('12','Abraham Vélez','Abraham_Vélez@gmail.com','02'),
('13','Maximiliano Menéndez','Maximiliano_Menéndez@gmail.com','03'),
('14','Anita Heredia','Anita_Heredia@gmail.com','03'),
('15','Eli Casas','Eli_Casas@gmail.com','03'),
('16','Guillermo Borrego','Guillermo_Borrego@gmail.com','10'),
('17','Sergio Aguirre','Sergio_Aguirre@gmail.com','10'),
('18','Carlito Carrión','Carlito_Carrión@gmail.com','10'),
('19','Haydée Figueroa','Haydée_Figueroa@gmail.com','10'),
('20','Chita Mancebo','Chita_Mancebo@gmail.com','10'),
('21','Joaquina Asensio','Joaquina_Asensio@gmail.com','10'),
('22','Cristian Sarabia','Cristian_Sarabia@gmail.com','10'),
('23','Isabel Ibáñez','Isabel_Ibáñez@gmail.com','10'),
('24','Desiderio Jordá','Desiderio_Jordá@gmail.com','10'),
('25','Rosalina Llanos','Rosalina_Llanos@gmail.com','10'),
('26','Amor Larrañaga','Amor_Larrañaga@gmail.com','04'),
('27','Teodoro Alberola','Teodoro_Alberola@gmail.com','04'),
('28','Cleto Plana','Cleto_Plana@gmail.com','04'),
('29','Aitana Sebastián','Aitana_Sebastián@gmail.com','04'),
('30','Dolores Valbuena','Dolores_Valbuena@gmail.com','04'),
('31','Julie Ferrer','Julie_Ferrer@gmail.com','04'),
('32','Mireia Cabañas','Mireia_Cabañas@gmail.com','04'),
('33','Flavia Amador','Flavia_Amador@gmail.com','06'),
('34','Albino Macias','Albino_Macias@gmail.com','06'),
('35','Ester Sánchez','Ester_Sánchez@gmail.com','06'),
('36','Luis Miguel Galvez','Luis_Miguel_Galvez@gmail.com','06'),
('37','Loida Arellano','Loida_Arellano@gmail.com','06'),
('38','Heraclio Duque','Heraclio_Duque@gmail.com','06'),
('39','Herberto Figueras','Herberto_Figueras@gmail.com','06'),
('40','Teresa Laguna','Teresa_Laguna@gmail.com','07'),
('41','Estrella Murillo','Estrella_Murillo@gmail.com','07'),
('42','Ernesto Uriarte','Ernesto_Uriarte@gmail.com','07'),
('43','Daniela Guitart','Daniela_Guitart@gmail.com','07'),
('44','Timoteo Trillo','Timoteo_Trillo@gmail.com','07'),
('45','Ricarda Tovar','Ricarda_Tovar@gmail.com','07'),
('46','Alejandra Vilaplana','Alejandra_Vilaplana@gmail.com','07'),
('47','Daniel Rosselló','Daniel_Rosselló@gmail.com','09'),
('48','Rita Olivares','Rita_Olivares@gmail.com','09'),
('49','Cleto Montes','Cleto_Montes@gmail.com','09'),
('50','Marino Castilla','Marino_Castilla@gmail.com','09'),
('51','Estefanía Valcárcel','Estefanía_Valcárcel@gmail.com','09'),
('52','Noemí Vilanova','Noemí_Vilanova@gmail.com','09'),
('53','Hilario Pinilla','Hilario_Pinilla@gmail.com','05'),
('54','Maria Angels Melendez','Maria_Angels_Melendez@gmail.com','05'),
('55','Emilia Parra','Emilia_Parra@gmail.com','05'),
('56','Soledad Fajardo','Soledad_Fajardo@gmail.com','05'),
('57','Josu Luengo','Josu_Luengo@gmail.com','05'),
('58','Norberto Huerta','Norberto_Huerta@gmail.com','05'),
('59','Benita Morillas','Benita_Morillas@gmail.com','05'),
('60','Pedro Jesus Mayor','Pedro_Jesus_Mayor@gmail.com','08'),
('61','Rosa Ana Castilla','Rosa_Ana_Castilla@gmail.com','08'),
('62','Alexandra Mariño','Alexandra_Mariño@gmail.com','08'),
('63','Jairo Laguna','Jairo_Laguna@gmail.com','08'),
('64','Agustina Costas','Agustina_Costas@gmail.com','08'),
('65','Eva Maria Barrios','Eva_Maria_Barrios@gmail.com','08'),
('66','Dionisio Chamorro','Dionisio_Chamorro@gmail.com','08'),
('67','Jennifer Carpio','Jennifer_Carpio@gmail.com','08');

INSERT INTO campus (id_campus, nombre, direccion, ciudad) 
VALUES  ('01','Madrid','Paseo de Recoletos 15','Madrid'),
('02','Valencia','La Marina de Valencia, Muelle de la Aduana','Valencia'),
('03','Sevilla','Av. de Andalucía, 1','Sevilla'),
('04','Bilbao','Urazurrutia Kalea, 3','Bilbao');

INSERT INTO grupo (id_grupo, id_promocion, id_campus, id_modalidad, aula) 
VALUES  ('01','01','01','01','2.1'),
('02','01','01','02','2.2'),
('03','01','01','03',''),
('04','01','01','01','2.4'),
('05','01','02','01','1.5'),
('06','01','01','03',''),
('07','02','02','02','2.3'),
('08','02','01','02','2.4'),
('09','02','02','03',''),
('10','02','01','01','3.2');

INSERT INTO notas (id_notas, id_alumnos, id_proyecto, calificaciones)
VALUES ('01','26','01','APTO'),
('02','26','02','APTO'),
('03','26','03','APTO'),
('04','26','04','NO APTO'),
('05','26','05','NO APTO'),
('06','27','01','APTO'),
('07','27','02','APTO'),
('08','27','03','APTO'),
('09','27','04','APTO'),
('10','27','05','APTO'),
('11','28','01','APTO'),
('12','28','02','NO APTO'),
('13','28','03','APTO'),
('14','28','04','NO APTO'),
('15','28','05','APTO'),
('16','29','01','APTO'),
('17','29','02','APTO'),
('18','29','03','NO APTO'),
('19','29','04','NO APTO'),
('20','29','05','NO APTO'),
('21','30','01','APTO'),
('22','30','02','NO APTO'),
('23','30','03','NO APTO'),
('24','30','04','NO APTO'),
('25','30','05','APTO'),
('26','31','01','APTO'),
('27','31','02','APTO'),
('28','31','03','NO APTO'),
('29','31','04','APTO'),
('30','31','05','NO APTO'),
('31','32','01','APTO'),
('32','32','02','APTO'),
('33','32','03','APTO'),
('34','32','04','NO APTO'),
('35','32','05','APTO'),
('36','33','01','NO APTO'),
('37','33','02','APTO'),
('38','33','03','NO APTO'),
('39','33','04','APTO'),
('40','33','05','APTO'),
('41','34','01','APTO'),
('42','34','02','NO APTO'),
('43','34','03','NO APTO'),
('44','34','04','NO APTO'),
('45','34','05','APTO'),
('46','35','01','NO APTO'),
('47','35','02','APTO'),
('48','35','03','NO APTO'),
('49','35','04','APTO'),
('50','35','05','NO APTO'),
('51','36','01','APTO'),
('52','36','02','NO APTO'),
('53','36','03','APTO'),
('54','36','04','APTO'),
('55','36','05','APTO'),
('56','37','01','APTO'),
('57','37','02','NO APTO'),
('58','37','03','NO APTO'),
('59','37','04','APTO'),
('60','37','05','NO APTO'),
('61','38','01','APTO'),
('62','38','02','APTO'),
('63','38','03','APTO'),
('64','38','04','NO APTO'),
('65','38','05','APTO'),
('66','39','01','NO APTO'),
('67','39','02','APTO'),
('68','39','03','NO APTO'),
('69','39','04','NO APTO'),
('70','39','05','NO APTO'),
('71','40','01','APTO'),
('72','40','02','APTO'),
('73','40','03','APTO'),
('74','40','04','NO APTO'),
('75','40','05','APTO'),
('76','41','01','NO APTO'),
('77','41','02','APTO'),
('78','41','03','NO APTO'),
('79','41','04','APTO'),
('80','41','05','APTO'),
('81','42','01','APTO'),
('82','42','02','NO APTO'),
('83','42','03','APTO'),
('84','42','04','NO APTO'),
('85','42','05','NO APTO'),
('86','43','01','NO APTO'),
('87','43','02','APTO'),
('88','43','03','APTO'),
('89','43','04','APTO'),
('90','43','05','NO APTO'),
('91','44','01','APTO'),
('92','44','02','APTO'),
('93','44','03','APTO'),
('94','44','04','NO APTO'),
('95','44','05','APTO'),
('96','45','01','NO APTO'),
('97','45','02','APTO'),
('98','45','03','NO APTO'),
('99','45','04','APTO'),
('100','45','05','NO APTO'),
('101','46','01','APTO'),
('102','46','02','APTO'),
('103','46','03','APTO'),
('104','46','04','NO APTO'),
('105','46','05','APTO'),
('106','47','01','APTO'),
('107','47','02','APTO'),
('108','47','03','NO APTO'),
('109','47','04','APTO'),
('110','47','05','NO APTO'),
('111','48','01','APTO'),
('112','48','02','NO APTO'),
('113','48','03','APTO'),
('114','48','04','APTO'),
('115','48','05','APTO'),
('116','49','01','NO APTO'),
('117','49','02','APTO'),
('118','49','03','NO APTO'),
('119','49','04','NO APTO'),
('120','49','05','NO APTO'),
('121','50','01','APTO'),
('122','50','02','NO APTO'),
('123','50','03','APTO'),
('124','50','04','NO APTO'),
('125','50','05','APTO'),
('126','51','01','NO APTO'),
('127','51','02','APTO'),
('128','51','03','NO APTO'),
('129','51','04','APTO'),
('130','51','05','NO APTO'),
('131','52','01','APTO'),
('132','52','02','APTO'),
('133','52','03','APTO'),
('134','52','04','NO APTO'),
('135','52','05','APTO'),
('136','53','01','APTO'),
('137','53','02','APTO'),
('138','53','03','NO APTO'),
('139','53','04','APTO'),
('140','53','05','APTO'),
('141','54','01','NO APTO'),
('142','54','02','NO APTO'),
('143','54','03','NO APTO'),
('144','54','04','NO APTO'),
('145','54','05','NO APTO'),
('146','55','01','NO APTO'),
('147','55','02','NO APTO'),
('148','55','03','NO APTO'),
('149','55','04','APTO'),
('150','55','05','NO APTO'),
('151','56','01','APTO'),
('152','56','02','APTO'),
('153','56','03','APTO'),
('154','56','04','NO APTO'),
('155','56','05','APTO'),
('156','57','01','APTO'),
('157','57','02','APTO'),
('158','57','03','APTO'),
('159','57','04','APTO'),
('160','57','05','NO APTO'),
('161','58','01','APTO'),
('162','58','02','NO APTO'),
('163','58','03','APTO'),
('164','58','04','NO APTO'),
('165','58','05','APTO'),
('166','59','01','APTO'),
('167','59','02','NO APTO'),
('168','59','03','NO APTO'),
('169','59','04','APTO'),
('170','59','05','NO APTO'),
('171','60','01','APTO'),
('172','60','02','NO APTO'),
('173','60','03','APTO'),
('174','60','04','NO APTO'),
('175','60','05','APTO'),
('176','61','01','NO APTO'),
('177','61','02','APTO'),
('178','61','03','NO APTO'),
('179','61','04','APTO'),
('180','61','05','NO APTO'),
('181','62','01','APTO'),
('182','62','02','APTO'),
('183','62','03','APTO'),
('184','62','04','NO APTO'),
('185','62','05','APTO'),
('186','63','01','APTO'),
('187','63','02','APTO'),
('188','63','03','NO APTO'),
('189','63','04','APTO'),
('190','63','05','NO APTO'),
('191','64','01','APTO'),
('192','64','02','NO APTO'),
('193','64','03','APTO'),
('194','64','04','NO APTO'),
('195','64','05','APTO'),
('196','65','01','APTO'),
('197','65','02','APTO'),
('198','65','03','NO APTO'),
('199','65','04','APTO'),
('200','65','05','NO APTO'),
('201','66','01','APTO'),
('202','66','02','APTO'),
('203','66','03','APTO'),
('204','66','04','APTO'),
('205','66','05','APTO'),
('206','67','01','APTO'),
('207','67','02','APTO'),
('208','67','03','APTO'),
('209','67','04','APTO'),
('210','67','05','NO APTO'),
('211','01','06','APTO'),
('212','01','07','APTO'),
('213','01','08','APTO'),
('214','01','09','APTO'),
('215','01','10','NO APTO'),
('216','02','06','APTO'),
('217','02','07','NO APTO'),
('218','02','08','APTO'),
('219','02','09','NO APTO'),
('220','02','10','APTO'),
('221','03','06','APTO'),
('222','03','07','APTO'),
('223','03','08','NO APTO'),
('224','03','09','NO APTO'),
('225','03','10','APTO'),
('226','04','06','NO APTO'),
('227','04','07','APTO'),
('228','04','08','NO APTO'),
('229','04','09','NO APTO'),
('230','04','10','APTO'),
('231','05','06','APTO'),
('232','05','07','APTO'),
('233','05','08','APTO'),
('234','05','09','APTO'),
('235','05','10','APTO'),
('236','06','06','NO APTO'),
('237','06','07','NO APTO'),
('238','06','08','APTO'),
('239','06','09','APTO'),
('240','06','10','NO APTO'),
('241','07','06','NO APTO'),
('242','07','07','APTO'),
('243','07','08','NO APTO'),
('244','07','09','APTO'),
('245','07','10','APTO'),
('246','08','06','NO APTO'),
('247','08','07','APTO'),
('248','08','08','APTO'),
('249','08','09','NO APTO'),
('250','08','10','APTO'),
('251','09','06','APTO'),
('252','09','07','NO APTO'),
('253','09','08','APTO'),
('254','09','09','APTO'),
('255','09','10','NO APTO'),
('256','10','06','APTO'),
('257','10','07','NO APTO'),
('258','10','08','NO APTO'),
('259','10','09','APTO'),
('260','10','10','APTO'),
('261','11','06','APTO'),
('262','11','07','NO APTO'),
('263','11','08','APTO'),
('264','11','09','NO APTO'),
('265','11','10','APTO'),
('266','12','06','APTO'),
('267','12','07','APTO'),
('268','12','08','APTO'),
('269','12','09','NO APTO'),
('270','12','10','APTO'),
('271','13','06','NO APTO'),
('272','13','07','NO APTO'),
('273','13','08','APTO'),
('274','13','09','NO APTO'),
('275','13','10','APTO'),
('276','14','06','NO APTO'),
('277','14','07','NO APTO'),
('278','14','08','NO APTO'),
('279','14','09','NO APTO'),
('280','14','10','NO APTO'),
('281','15','06','APTO'),
('282','15','07','APTO'),
('283','15','08','NO APTO'),
('284','15','09','APTO'),
('285','15','10','APTO'),
('286','16','06','NO APTO'),
('287','16','07','NO APTO'),
('288','16','08','APTO'),
('289','16','09','APTO'),
('290','16','10','NO APTO'),
('291','17','06','APTO'),
('292','17','07','NO APTO'),
('293','17','08','APTO'),
('294','17','09','NO APTO'),
('295','17','10','APTO'),
('296','18','06','NO APTO'),
('297','18','07','APTO'),
('298','18','08','APTO'),
('299','18','09','NO APTO'),
('300','18','10','NO APTO'),
('301','19','06','APTO'),
('302','19','07','NO APTO'),
('303','19','08','NO APTO'),
('304','19','09','APTO'),
('305','19','10','APTO'),
('306','20','06','APTO'),
('307','20','07','NO APTO'),
('308','20','08','APTO'),
('309','20','09','APTO'),
('310','20','10','APTO'),
('311','21','06','APTO'),
('312','21','07','NO APTO'),
('313','21','08','NO APTO'),
('314','21','09','APTO'),
('315','21','10','NO APTO'),
('316','22','06','APTO'),
('317','22','07','APTO'),
('318','22','08','NO APTO'),
('319','22','09','NO APTO'),
('320','22','10','APTO'),
('321','23','06','NO APTO'),
('322','23','07','APTO'),
('323','23','08','APTO'),
('324','23','09','NO APTO'),
('325','23','10','APTO'),
('326','24','06','NO APTO'),
('327','24','07','NO APTO'),
('328','24','08','APTO'),
('329','24','09','APTO'),
('330','24','10','NO APTO'),
('331','25','06','APTO'),
('332','25','07','APTO'),
('333','25','08','APTO'),
('334','25','09','APTO'),
('335','25','10','APTO');

INSERT INTO modalidad (id_modalidad, nombre, modalidad) 
VALUES  ('01','Full Time','Presencial'),
('02','Part Time','Presencial'),
('03','Online','Online');

INSERT INTO promocion (id_promocion, mes, fecha) 
VALUES  ('01','Septiembre','20230918'),
('02','Febrero','20240212');

INSERT INTO profesores (id_profesor, nombre, id_rol, id_vertical) 
VALUES  ('01','Noa Yáñez','02','01'),
('02','Saturnina Benitez','02','01'),
('03','Anna Feliu','02','02'),
('04','Rosalva Ayuso','02','02'),
('05','Ana Sofía Ferrer','02','02'),
('06','Angélica Corral','02','02'),
('07','Ariel Lledó','02','01'),
('08','Mario Prats','01','02'),
('09','Luis Ángel Suárez','01','02'),
('10','María Dolores Diaz','01','01'),
('11','Antonio González','01','01');

INSERT INTO profesorado_clase (id_profesorado_clase, id_profesor, id_grupo)
VALUES ("01","01","01"),
("02","02","01"),
("03","03","04"),
("04","04","05"),
("05","05","07"),
("06","06","08"),
("07","07","02"),
("08","08","09"),
("09","09","06"),
("10","10","03"),
("11","11","10");

INSERT INTO proyecto (id_proyecto, nombre) 
VALUES  ('01','WebDev'),
('02','FrontEnd'),
('03','Backend'),
('04','React'),
('05','FullSatck'),
('06','HLF'),
('07','EDA'),
('08','BBDD'),
('09','ML'),
('10','Deployment');

INSERT INTO tareas (id_tareas, nombre) 
VALUES  ('01','Elaborar plan de estudios'),
('02','Tutorías'),
('03','Evaluación'),
('04','Orientación'),
('05','Impartir Clase');

INSERT INTO reparto_tareas (id_reparto_tareas, id_tareas, id_rol)
VALUES ('01','01','01 '),
('02','02','02'),
('03','03','01 '),
('04','04','01 '),
('05','04','02'),
('06','05','01 ');

INSERT INTO rol (id_rol, nombre) 
VALUES  ('01','LI'),
( '02','TA');

INSERT INTO vertical (id_vertical, nombre) 
VALUES  ('01','data science'),
( '02','full stack');



/****************** QUERIES PARA COMPROBAR ******************/

SELECT
    p.nombre AS Nombre, 
    r.nombre AS Rol, 
    v.nombre AS Vertical,
    promo.mes AS Promoción,
    c.nombre AS Campus,
    m.modalidad AS Modalidad
    
FROM profesores AS p

INNER JOIN 
    rol AS r ON r.id_rol = p.id_rol
INNER JOIN 
    vertical AS v ON v.id_vertical = p.id_vertical
INNER JOIN 
    profesorado_clase AS pc ON pc.id_profesor = p.id_profesor
INNER JOIN 
    grupo AS g ON g.id_grupo = pc.id_grupo
INNER JOIN 
    promocion AS promo ON promo.id_promocion = g.id_promocion
INNER JOIN 
    campus AS c ON c.id_campus = g.id_campus
INNER JOIN 
    modalidad AS m ON m.id_modalidad = g.id_modalidad;


SELECT alumnos.nombre AS Nombre,
    alumnos.email AS Email,
    promocion.mes AS Promoción,
    promocion.fecha AS Fecha_inicio,
    campus.nombre AS Campus,
    MAX(CASE WHEN notas.id_proyecto = '01' THEN notas.calificacion END) AS WebDev,
    MAX(CASE WHEN notas.id_proyecto = '02' THEN notas.calificacion END) AS FrontEnd,
    MAX(CASE WHEN notas.id_proyecto = '03' THEN notas.calificacion END) AS Backend,
    MAX(CASE WHEN notas.id_proyecto = '04' THEN notas.calificacion END) AS React,
    MAX(CASE WHEN notas.id_proyecto = '05' THEN notas.calificacion END) AS FullStack,
    MAX(CASE WHEN notas.id_proyecto = '06' THEN notas.calificacion END) AS HLF,
    MAX(CASE WHEN notas.id_proyecto = '07' THEN notas.calificacion END) AS EDA,
    MAX(CASE WHEN notas.id_proyecto = '08' THEN notas.calificacion END) AS BBDD,
    MAX(CASE WHEN notas.id_proyecto = '09' THEN notas.calificacion END) AS ML,
    MAX(CASE WHEN notas.id_proyecto = '10' THEN notas.calificacion END) AS Deployment
 
FROM alumnos
    
INNER JOIN 
    grupo ON grupo.id_grupo = alumnos.id_grupo
INNER JOIN 
    promocion ON promocion.id_promocion = grupo.id_promocion
INNER JOIN 
    campus ON campus.id_campus = grupo.id_campus
INNER JOIN 
    notas ON alumnos.id_alumnos = notas.id_alumnos
GROUP BY 
    alumnos.nombre, alumnos.email, promocion.mes, promocion.fecha, campus.nombre;
