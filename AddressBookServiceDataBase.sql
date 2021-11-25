-----UC1-CreateDataBase-----
create database address_book_service;

-----UC2-CreateTable-----
CREATE TABLE addressbookservice_table(
FirstName varchar(35),
LastName varchar(35),
Address varchar(100),
City varchar(35),
States varchar(35),
Zip int,
PhoneNumber bigint,
Email varchar(35)
);

-----UC3-InsertNewContact-----
INSERT INTO addressbookservice_table(FirstName,LastName,Address,City,States,Zip,PhoneNumber,Email) VALUES('Vignesh','Marimuthu','HAPP','Trichy','Tamil Nadu',620025,9647812357,'vicky@gmail.com');
INSERT INTO addressbookservice_table(FirstName,LastName,Address,City,States,Zip,PhoneNumber,Email) VALUES('Praveen','Muthu','NGO Colony','Dindigul','Tamil Nadu',624005,7458961235,'praveen@gmail.com');
select * from addressbookservice_table;