UPDATE DEPT SET DEPT_NAME='ADMINISTRATION' WHERE DEPT_NAME='ADMIN';

CREATE TABLE TEMP AS SELECT * FROM EMP;

UPDATE EMP SET EMP_SALARY= EMP_SALARY+ EMP_SALARY/2
WHERE EMP_SALARY <=  (SELECT AVG(EMP_SALARY) FROM EMP);

UPDATE EMP SET EMP_SALARY= EMP_SALARY+500
WHERE EMP_DEPT <> '10';

UPDATE EMP SET EMP_SALARY='5200'
WHERE EMP_SALARY <=  (SELECT AVG(EMP_SALARY) FROM EMP);