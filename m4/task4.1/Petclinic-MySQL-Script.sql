    create table DOCTORS (
        DOCTOR_ID integer not null auto_increment,
        FIO varchar(100),
        ADDRESS varchar(100),
        PHONE varchar(20),
        primary key (DOCTOR_ID)
    );

    create table PETOWNERS (
        PETOWNER_ID integer not null auto_increment,
        FIO varchar(100),
        ADDRESS varchar(100),
        PHONE varchar(20),
        primary key (PETOWNER_ID)
    );
    
    create table DIAGNOSISES (
        DIAGNOSIS_ID integer not null auto_increment,
        DOCTOR_ID integer,
        DIAGNOSIS varchar(200),
        DIAG_DATE date,
        primary key (DIAGNOSIS_ID)
    );
    
 CREATE TABLE ANIMALS (
  ANIMAL_ID integer not null auto_increment,
  DOCTOR_ID integer not null,
  PETOWNER_ID integer not null,
  DIAGNOSIS_ID integer not null,
  PET_NAME varchar(50) not null,
  PET_BIRTHDAY date,
  PET_SEX varchar(50) not null,
  PET_BREED varchar(50) not null,
  primary key (ANIMAL_ID)
);

 CREATE TABLE TREATMENTS (
  TREATMENT_ID integer not null auto_increment,
  ANIMAL_ID integer not null,
  DOCTOR_ID integer not null,
  DIAGNOSIS_ID integer not null,
  TREATMENT varchar(200) not null,
  TREATMENT_DATE date,
  TREATMENT_DURATION integer not null,
  TREATMENT_COST real not null,
  primary key (TREATMENT_ID)
);

    alter table ANIMALS 
        add constraint ANIMALS_DOCTOR_FK 
        foreign key (DOCTOR_ID) 
        references DOCTORS (DOCTOR_ID);
    
    alter table ANIMALS 
        add constraint ANIMALS_PETOWNER_FK 
        foreign key (PETOWNER_ID) 
        references PETOWNERS (PETOWNER_ID);

    alter table ANIMALS 
        add constraint ANIMALS_DIAGNOSIS_FK 
        foreign key (DIAGNOSIS_ID) 
        references DIAGNOSISES (DIAGNOSIS_ID);

    alter table DIAGNOSISES 
        add constraint DIAGNOSIS_DOCTOR_FK 
        foreign key (DOCTOR_ID) 
        references DOCTORS (DOCTOR_ID);

    alter table TREATMENTS 
        add constraint TREATMENT_DOCTOR_FK 
        foreign key (DOCTOR_ID) 
        references DOCTORS (DOCTOR_ID);

    alter table TREATMENTS 
        add constraint TREATMENT_ANIMAL_FK 
        foreign key (ANIMAL_ID) 
        references ANIMALS (ANIMAL_ID);

    alter table TREATMENTS 
        add constraint TREATMENT_DIAGNOSIS_FK 
        foreign key (DIAGNOSIS_ID) 
        references DIAGNOSISES (DIAGNOSIS_ID);

-- begin data population

-- SET MODE -- 
-- http://stackoverflow.com/questions/11448068/mysql-error-code-1175-during-update-in-mysql-workbench
SET SQL_SAFE_UPDATES = 0;


-- doctors  
insert into DOCTORS (DOCTOR_ID, FIO, ADDRESS, PHONE)
values (null, 'Ivan Ivanov', 'Kiev Marshala Koneva St. 5d-154', '+380546549875');
insert into DOCTORS (DOCTOR_ID, FIO, ADDRESS, PHONE)
values (null, 'Petrov Vasiliy', '3Kiev Lomonosova St. 59-13', '+380997412659' );

-- diagnosis
insert into DIAGNOSISES (DIAGNOSIS_ID, DOCTOR_ID, DIAGNOSIS, DIAG_DATE)
values (null, '1', 'Mouse poison', '2021-06-22');
insert into DIAGNOSISES (DIAGNOSIS_ID, DOCTOR_ID, DIAGNOSIS, DIAG_DATE)
values (null, '1', 'Piggi', '2021-06-23');
insert into DIAGNOSISES (DIAGNOSIS_ID, DOCTOR_ID, DIAGNOSIS, DIAG_DATE)
values (null, '1', 'Gelmintoz', '2021-07-21');
insert into DIAGNOSISES (DIAGNOSIS_ID, DOCTOR_ID, DIAGNOSIS, DIAG_DATE)
values (null, '2', 'Ushnoi klesh', '2021-05-21');

-- petowner
insert into PETOWNERS (PETOWNER_ID, FIO, ADDRESS, PHONE) 
values (null, 'Michael Smith', 'Kiev Lugovaya 15', '+380670561825');
insert into PETOWNERS (PETOWNER_ID, FIO, ADDRESS, PHONE) 
values (null, 'Olga Pavlova', 'Odessa Arnautskaya 13', '+380670535825');
insert into PETOWNERS (PETOWNER_ID, FIO, ADDRESS, PHONE) 
values (null, 'Veronika', 'Dnepr Lenina 36', '+380670535825');

-- animal
insert into ANIMALS (ANIMAL_ID, DOCTOR_ID, PETOWNER_ID, DIAGNOSIS_ID, PET_NAME,
  PET_BIRTHDAY, PET_SEX, PET_BREED)
values (null, (select DOCTOR_ID from DOCTORS where FIO = 'Ivan Ivanov'), 
(select PETOWNER_ID from PETOWNERS where FIO = 'Michael Smith'),
'3', 'Bulochka', '2000-02-09', 'm', 'korgi');
insert into ANIMALS (ANIMAL_ID, DOCTOR_ID, PETOWNER_ID, DIAGNOSIS_ID, PET_NAME,
  PET_BIRTHDAY, PET_SEX, PET_BREED)
values (null, (select DOCTOR_ID from DOCTORS where FIO = 'Ivan Ivanov'), 
(select PETOWNER_ID from PETOWNERS where FIO = 'Olga Pavlova'),
'2', 'Vinni', '2010-01-03', 'w', 'taksa');
insert into ANIMALS (ANIMAL_ID, DOCTOR_ID, PETOWNER_ID, DIAGNOSIS_ID, PET_NAME,
  PET_BIRTHDAY, PET_SEX, PET_BREED)
values (null, (select DOCTOR_ID from DOCTORS where FIO = 'Petrov Vasiliy'), 
	(select PETOWNER_ID from PETOWNERS where FIO = 'Veronika'),
    '1', 'Pelmen', '2020-11-15', 'm', 'fish');
    
-- threatment
insert into TREATMENTS (TREATMENT_ID, ANIMAL_ID, DOCTOR_ID, DIAGNOSIS_ID,
  TREATMENT, TREATMENT_DATE, TREATMENT_DURATION, TREATMENT_COST)
values (null, '3', '1', '2', 'Some tablets', '2021-11-14', '14', '550');
insert into TREATMENTS (TREATMENT_ID, ANIMAL_ID, DOCTOR_ID, DIAGNOSIS_ID,
  TREATMENT, TREATMENT_DATE, TREATMENT_DURATION, TREATMENT_COST)
values (null, '2', '1', '3', 'Glistogonnoe Prazicid', '2021-10-11', '1', '250');   
insert into TREATMENTS (TREATMENT_ID, ANIMAL_ID, DOCTOR_ID, DIAGNOSIS_ID,
  TREATMENT, TREATMENT_DATE, TREATMENT_DURATION, TREATMENT_COST)
values (null, '1',	'1', '1', 'Kapelnitsa', '2021-09-11', '3', '950');