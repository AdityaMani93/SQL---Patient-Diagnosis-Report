create database patients_records;
use patients_records;
create table patients (
date_ date not null,
pid varchar(50) not null,
p_name varchar(50) not null,
age int not null,
weight int not null,
gender varchar(10) not null,
location varchar(50) not null,
phone_no int not null,
diease varchar(50) not null,
doctor_name varchar (60) not null,
doctor_id int not null,
primary key(pid));
select count(*) as total_patients from patients_records.patients;
select pid, p_name, gender, diease, max(age) as max_age from patients_records.patients;
select pid, p_name, now() as currentdate from patients_records.patients;
select doctor_name, ucase(doctor_name) as upper_doctor from patients_records.patients;
select p_name, length(p_name) as length_pname from patients_records.patients;
select p_name, mid(gender,1,1) as gender from patients_records.patients;
select p_name,doctor_name,concat(p_name,' ',doctor_name) as p_d_name from patients_records.patients;
select age, log10(age) as log_age from patients_records.patients;
select *, year(date) as Year from patients_records.patients;
select nullif(p_name,doctor_name) from patients_records.patients;
select age, if(age>40,'yes','no') as above_40 from patients_records.patients;
SELECT doctor_name,COUNT(*) occurences FROM patients_records.patients GROUP BY doctor_name HAVING COUNT(*)>1;