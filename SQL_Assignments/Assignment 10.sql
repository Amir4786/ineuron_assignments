show databases;
use college;
create table WORKER (FIRST_NAME VARCHAR(20), LAST_NAME VARCHAR(20), DEPARTMENT VARCHAR(20), SALARY INT(7));
SELECT * FROM WORKER;
insert into WORKER VALUES('VIPUL', 'GROVER', 'HR', 55000, 'VIPUL GROVER');
insert into WORKER VALUES('RUPALI', 'KASHYUP', 'SALES', 75000);
insert into WORKER VALUES('HARSH', 'MISHRA', 'HR', 30000);
insert into WORKER VALUES('ZIA', 'AHMED', 'HR', 61000, 'ZIA AHMED', '2015-04-07');
insert into WORKER VALUES('ARCHANA', 'SHARMA', 'SALES', 40000);
insert into WORKER VALUES('Amitabh', 'GUPTA', 'IT', 90000,NULL);
insert into WORKER VALUES('ABHI', 'GUPTA', 'EXAM', 90000,NULL);
CREATE TABLE DEPARTMENTS (DEPT_NAME VARCHAR(20),NO_OF_WORKERS INT (5));
INSERT INTO DEPARTMENTS VALUES('IT',100);
INSERT INTO DEPARTMENTS VALUES('HR',10);
INSERT INTO DEPARTMENTS VALUES('FINANCE',50);
INSERT INTO DEPARTMENTS VALUES('SALES',200);
INSERT INTO DEPARTMENTS VALUES('EXAM',300);
INSERT INTO DEPARTMENTS VALUES('XYZ',20);
## Q19:
SELECT * FROM (SELECT SALARY,ROW_NUMBER() OVER (ORDER BY SALARY DESC) AS SAL_ORDER FROM WORKER) T WHERE SAL_ORDER=5;
## Q20.
SELECT W1.FULL_NAME,W2.FULL_NAME,W1.SALARY,W2.SALARY FROM WORKER W1 INNER JOIN WORKER W2 ON W1.FULL_NAME!=W2.FULL_NAME AND W1.SALARY=W2.SALARY GROUP BY W1.SALARY;