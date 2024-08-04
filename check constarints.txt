create table T4(id int, age int, address varchar(20),constraint abc check (age>18 AND address="pune");
INSERT INTO T4() VALUES (101,17,"pune"),(102,19,"pune"),(103,30,"mumbai");
SELECT * FROM ();

for deleting check
ALTER TABLE T4
DROP CHECK chk;


already existing table
ALTER TABLE T4 add CONSTRAINT abc CHECK ( age>15 AND Address="pune");

