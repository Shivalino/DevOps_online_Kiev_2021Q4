# Task 4.1 Module 3 Database Administration
> 

## 1. PART 1
> 1. Download MySQL server for your OS on VM.
> 2. Install MySQL server on VM.
I have instaled MySQL on Ubuntu 18  Vbox-instance
~$sudo apt install mysql-server

> Some User management:

![DB4_01](./images/4.1_02.png)

mysql -u root -p
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Passwd12345';
CREATE USER 'primero'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Passwd111';
GRANT CREATE, ALTER on *.* TO 'primero'@'localhost' WITH GRANT OPTION;
CREATE USER 'segundo'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Passwd222';
GRANT DROP, DELETE, SELECT on *.* TO 'segundo'@'localhost' WITH GRANT OPTION;
CREATE USER 'tercero'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Passwd333';
GRANT SELECT on *.* TO 'tercero'@'localhost' WITH GRANT OPTION;
CREATE USER 'duro'@'%' IDENTIFIED WITH mysql_native_password BY 'Passwd444';
GRANT CREATE, ALTER, DROP, INSERT, UPDATE, DELETE, SELECT, REFERENCES, RELOAD on *.* TO 'duro'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;
DROP USER 'primero'@'%';
quit

![DB4_02](./images/4.1_02.png)

> 3. Select a subject area and describe the database schema, (minimum 3 tables)

PetClinic
Tables:
Animals
PetOwners
Doctors
Diagnosises
Treatments

> 4. Create a database on the server through the console.
mysql -u root -p
CREATE DATABASE petclinic;
USE petclinic;

The database is created and filled with a script:
![DB4_03](./Petclinic-MySQL-Script.sql)

![DB4_04](./images/4.1_03.png)

