# ejercicios-sql
Repositorio de ejercicios SQL para curso itba:

EJERCICIOS 1
------------

EJERCICIO 1

En una instalación de clearing central para bancos, se está configurando una base de datos para soportar las transferencias de dinero interbancarias utilizando los códigos SWIFT(CBU INTERNACIONANL) de diferentes bancos. Los datos bancarios están organizados en dos tablas: BANKS y SWIFTCODES. La estructura de las tablas, su relación con unaotro, y los datos de muestra de ellos se muestran a continuación.

BANKS
![alt text](https://raw.githubusercontent.com/NadinaJauch/ejercicios-sql/main/banks.jpg)

SWIFTCODES

![alt text](https://raw.githubusercontent.com/NadinaJauch/ejercicios-sql/main/swiftcodes.jpg)


Tenga en cuenta que los datos proporcionados son solo datos de muestra. Tenga en cuenta que la base de datos completa tiene más filas de datos en él, y sus consultas deben devolver los resultados correctos para todos los datos.
Se requiere:

1.Convierta todos los nombres de países en la tabla BANKS a formato en mayúsculas (todo en mayúsculas).
2.Limpiar la columna BNK_BANKNAME eliminando todos los puntos(".") y comas (",") de los valores posible de nombre de banco
3.Actualmente existen valores en la tabla de BANKS con NULL en los SWIFTCODES. Reemplace los valores NULL con los valores dado en la tabla SWIFTCODES


EJERCICIO 2

Ud. esta trabajando como desarrollador de back-end en una aplicación que maneja datos de recursos humanos. La base de datos con la que está trabajando contiene dos tablas:

DEPT:
DEPT_ID INT PRIMARY KEY,
DEPT_NAME VARCHAR(50)

EMP:
EMP_ID INT PRIMARY KEY,
EMP_NAME VARCHAR (50),
EMP_DEPT int REFERENCES DEP(DEP_ID),
EMP_SALARY decimal(10,2)

Su tarea es procesar ciertos cambios salariales acordados, junto con una actualización administrativa.

Primero, actualice el nombre del departamento a ADMINISTRATION en lugar de ADMIN y cree una nueva tabla llamada TEMP que contenga todos los registros de la tabla original EMP

Segundo, aumentar los salarios de los empleados en EMP en un 50%, excepto para aquellos empleados que actualmente tienen los salarios más altos.

Tercero, aumentar el salario de todos los empleados que no están trabajando en el departamento 10 en otros 500$

Cuarto, cambiar el salario de todos los empleados que ganen menos que el promedio salarial a 5200$

------------
