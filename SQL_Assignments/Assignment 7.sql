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
## Q13:
ALTER TABLE WORKER ADD COLUMN S_NO INT (5);
SET @SL:=0;
UPDATE WORKER SET S_NO= @SL:=@SL+1;
SELECT * FROM WORKER WHERE S_NO%2!=0;
## Q14.
CREATE TABLE WORKER_BKP AS SELECT * FROM WORKER;
SELECT * FROM WORKER_BKP;