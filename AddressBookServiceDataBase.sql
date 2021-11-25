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
INSERT INTO addressbookservice_table(FirstName,LastName,Address,City,States,Zip,PhoneNumber,Email) VALUES('Akash','Raja','NGO Colony','Dindigul','Tamil Nadu',624005,8447982367,'akash@gmail.com');
INSERT INTO addressbookservice_table(FirstName,LastName,Address,City,States,Zip,PhoneNumber,Email) VALUES('Azhar','Udeen','MSP Colony','Dingigul','Tamil Nadu',624005,6645513357,'azhar@gmail.com');
INSERT INTO addressbookservice_table(FirstName,LastName,Address,City,States,Zip,PhoneNumber,Email) VALUES('Vivek','Chandru','Poonamalli','Chennai','Tamil Nadu',600025,7646312458,'vivek@gmail.com');
INSERT INTO addressbookservice_table(FirstName,LastName,Address,City,States,Zip,PhoneNumber,Email) VALUES('Gokul','Nath','Jaferkhanpet','Chennai','Tamil Nadu',600025,7334581935,'gokul@gmail.com');
select * from addressbookservice_table;

-----UC4-EditExistingContactPersonUsingName-----
update addressbookservice_table set FirstName='Vicky' where FirstName='Praveen';
select * from addressbookservice_table;

-----UC5-DeletePersonUsingName-----
DELETE from addressbookservice_table where FirstName='Vicky';
select * from addressbookservice_table;

-----UC6-RetrivePersonCityState-----
select * from addressbookservice_table where City='Chennai';
select * from addressbookservice_table where States='Tamil Nadu';

-----UC7-SizeByCityState-----
select count(City) as SizeOfCity from addressbookservice_table;
select count(States) as SizeOfState from addressbookservice_table;

-----UC8-SortAlphabeticallyFirstNameForGivenCity-----
select * from addressbookservice_table where City='Chennai' order by FirstName;

-----UC9-AddType-----
select * from addressbookservice_table;
ALTER TABLE addressbookservice_table ADD Type varchar(30);
update addressbookservice_table set Type='Family' where FirstName='Praveen' or FirstName='Vignesh';
update addressbookservice_table set Type='Friend' where FirstName='Akash' or FirstName='Azhar';
update addressbookservice_table set Type='Profession' where FirstName='Vivek' or FirstName='Gokul';

-----UC10-CountByType-----
select count(FirstName) as CountPerson from addressbookservice_table group by Type; 

-----UC11-AddPersonToFriendAndFamily-----
INSERT INTO addressbookservice_table(FirstName,LastName,Address,City,States,Zip,PhoneNumber,Email,Type) VALUES('Kalki','Raja','Pudhur','Trichy','Tamil Nadu',620035,9637562388,'kalki@gmail.com','Family');
INSERT INTO addressbookservice_table(FirstName,LastName,Address,City,States,Zip,PhoneNumber,Email,Type) VALUES('Kalki','Raja','Pudhur','Trichy','Tamil Nadu',620035,9637562388,'kalki@gmail.com','Friend');
select * from addressbookservice_table;
