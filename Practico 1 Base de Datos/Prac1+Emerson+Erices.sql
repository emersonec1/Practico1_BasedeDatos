--TRABAJO REALIZADO POR EL ESTUDIANTE:
-- EMERSON ALEJANDRO ERICES CASTILLO, RUT: 21.592.449-1

--1. (0.3 ptos.) Crear la Base de Datos: Sueldos_suApellido
CREATE DATABASE Sueldos_Erices 
USE Sueldos_Erices -- ACTIVAR BASE DE DATOS
-- 2. (0.5 ptos.) Crear la tabla de Cargos_suApellido, cuyos datos son:
--código del cargo: entero, PK
--nombre del cargo: 50 caracteres, único, no nulo 
--Fecha creación del cargo: tipo fecha, nulo
CREATE TABLE Cargos_Erices 
(
codigo_cargo int primary key,
nombre_cargo varchar(50) unique not null,
Fecha_creacioncargo date null
)
-- 3. (0.7 ptos.) Crear la tabla de Trabajadores_suApellido, cuyos datos son:
--rut del trabajador: 10 caracteres, PK
--nombres del trabajador: 60 caracteres, único, no nulo
--apellidos del trabajador: 60 caracteres, único, no nulo
--Número de hijos: entero, no nulo
--sueldo Base: entero, no nulo
--código del cargo: entero, no nulo
CREATE TABLE Trabajadores_Erices 
(
rut_trabajador varchar(10) primary key,
nombres_trabajador varchar(60) unique not null,
apellidos_trabajador varchar(60) unique not null,
numero_dehijos int not null,
sueldo_base int not null,
codigo_cargo int not null
foreign key (codigo_cargo) references Cargos_Erices(codigo_cargo)
)
--4. (0.5 ptos.) Ingrese 3 registros para la tabla que representa los cargos (2 registros de cada cargo )
insert into Cargos_Erices(codigo_cargo,nombre_cargo,Fecha_creacioncargo) values(1, 'Operador','2025-03-30')
insert into Cargos_Erices(codigo_cargo,nombre_cargo,Fecha_creacioncargo) values(2, 'Jefe','2025-03-30')
insert into Cargos_Erices(codigo_cargo,nombre_cargo,Fecha_creacioncargo) values(3, 'Gerente','2025-03-30')

--5. (0.5 ptos.) Ingrese 6 registros de trabajadores (2 registros de cada cargo)
insert into Trabajadores_Erices(rut_trabajador,nombres_trabajador,apellidos_trabajador,numero_dehijos,sueldo_base,codigo_cargo) values('21592449-1','Emerson Alejandro','Erices Castillo',0,700000,3)
insert into Trabajadores_Erices(rut_trabajador,nombres_trabajador,apellidos_trabajador,numero_dehijos,sueldo_base,codigo_cargo) values('21367584-2','Carlos Vicente','Lara Solar',0,700000,3)
insert into Trabajadores_Erices(rut_trabajador,nombres_trabajador,apellidos_trabajador,numero_dehijos,sueldo_base,codigo_cargo) values('21123456-7','Yorgi Luis','Burgos Castillo',1,500000,2)
insert into Trabajadores_Erices(rut_trabajador,nombres_trabajador,apellidos_trabajador,numero_dehijos,sueldo_base,codigo_cargo) values('21234567-8','Martin Sebastian','Soto Manriquez',2,600000,2)
insert into Trabajadores_Erices(rut_trabajador,nombres_trabajador,apellidos_trabajador,numero_dehijos,sueldo_base,codigo_cargo) values('21233222-1','Duval Benjamin','Reyes Quezada',3,450000,1)
insert into Trabajadores_Erices(rut_trabajador,nombres_trabajador,apellidos_trabajador,numero_dehijos,sueldo_base,codigo_cargo) values('21555111-6','Sebastian Javier','Yanez Riquelme',1,450000,1)

--6. Seleccionar registros

--1) (0.5 ptos.) Seleccionar todos los cargos con todos sus datos
select * from Cargos_Erices

--2) (0.5 ptos.) Seleccionar todos cargos con todos sus datos (¿quiero suponer que aqui se referia a la tabla trabajadores?)
select * from Trabajadores_Erices

--3) (0.5 ptos.) Seleccionar solo el rut y nombre de los trabajadores
select rut_trabajador, nombres_trabajador from Trabajadores_Erices

--4) (0.5 ptos.) Seleccionar todos trabajadores con todos sus datos, pero solo los que el código del cargo es 2
select * from Trabajadores_Erices where codigo_cargo=2

--5) (0.5 ptos.) Seleccionar los datos de los trabajadores, concatenando el rut y nombre del trabajador
select concat(rut_trabajador,' ', nombres_trabajador,' ', apellidos_trabajador) AS 'Rut y Nombre',numero_dehijos,sueldo_base,codigo_cargo 
from Trabajadores_Erices

--6) (0.5 ptos.) Seleccionar o mostrar los trabajadores, cuyo sueldo Base es mayor a 0
select * from Trabajadores_Erices where sueldo_base > 0

--7) (0.5 ptos.) Seleccionar o mostrar los trabajadores, cuyo sueldo este entre 500000 y 700000
select * from Trabajadores_Erices where sueldo_base >= 500000 and sueldo_base <= 700000

--8) (0.5 ptos.) Seleccionar los trabajadores donde número hijos es mayor a 0 y código del cargo es 1.
select * from Trabajadores_Erices where numero_dehijos > 0 and codigo_cargo = 1

--9) (0.5 ptos.) Seleccionar solo el rut, nombre completo concatenado y el sueldo aumentado un 8%
select concat(rut_trabajador,' ',nombres_trabajador,' ',apellidos_trabajador, ' ',sueldo_base*1.08) AS 'Rut - Nombre Completo - Sueldo' from Trabajadores_Erices
