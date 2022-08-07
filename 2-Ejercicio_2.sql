CREATE VIEW direcciones_por_deparamento_VIEW AS
select d.location_id as ID_locacion,
	   l.street_address as calle,
	   l.city as ciudad,
	   l.state_province as estado,
	   c.country_name as pais
FROM departments d
inner join locations l ON l.location_id=d.location_id
inner join countries c ON l.country_id=c.country_id;

SELECT e.first_name as nombre,
	   e.last_name as apellido,
	   e.department_id as ID_departamento,
	   d.depart_name as nombre_departamento
	   FROM employees e INNER JOIN departments d 
	   ON e.department_id=d.department_id order by id_departamento;


select first_name as nombre,
	   hire_date as fecha_contratacion
from employees 
where date(fecha_contratacion) >(SELECT date(hire_date) FROM employees WHERE last_name='Jones');

CREATE VIEW cantidad_empleados_por_departamento_VIEW AS
SELECT  d.department_id as 'id de departamento', 
d.depart_name as 'nombre de departamento',
COUNT(*) as 'cantidad de empleados'
FROM employees e inner join departments  d
ON d.department_id = e.department_id
GROUP BY d.department_id;

CREATE INDEX empleado_idx
ON employees(first_name,last_name,department_id);

SELECT e.employee_id, e.first_name, e.last_name, 
jh.job_id, jh.start_date, jh.end_date
FROM employees e INNER JOIN job_history jh
ON jh.employee_id=e.employee_id
WHERE e.salary>10000;

CREATE TRIGGER insert_departamento
after INSERT ON departments
FOR EACH ROW
BEGIN
	insert INTO locations (street_address,postal_code,city,state_province,country_id)
	VALUES(NEW.street_address,NEW.postal_code,NEW.city,NEW.state_province,NEW.country_id);
END;

