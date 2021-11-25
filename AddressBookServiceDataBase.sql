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