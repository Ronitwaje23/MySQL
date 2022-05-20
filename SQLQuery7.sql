            --UC-1 Create AddressBook Service Database
create database AddressBookService;
use AddressBookService

            --UC-2 Create AddressBook Table

create table AddressBook_Table
(
FirstName varchar(100),
LastName varchar(100),
Address varchar(100),
City varchar(100),
State varchar (100),
Zip bigint,
PhoneNumber bigint,
Email varchar(100)
);
select * from AddressBook_Table;

--UC3-- Insert new contacts into Addressbook
insert into AddressBook_Table(FirstName, LastName, Address, City, State, Zip, PhoneNumber, Email)
values
('Guruprasad', 'Kumbar', 'Kothali', 'Belgaum', 'Karnataka', 123456, 124567890, 'guruprasad@gmail.com'),
('Guru', 'Kumbar', 'chikodi', 'Belgaum', 'Karnataka', 456123, 7894561230, 'guru@gmail.com'),
('ABCD', 'XYZ', 'AAAAA', 'BANGALORE', 'KARNATAKA', 560037, 4567891230, 'ABC@gmail.com'),
('abc', 'xyz', 'aaaaa', 'Bangalore', 'Karnataka', 560103, 0456123895, 'abc@gmail.com');

--UC4-- Edit existing contact person using name
update AddressBook_Table set City = 'Belagavi' where FirstName = 'Guru' and LastName = 'Kumbar';
update AddressBook_Table set State = 'Delhi' where FirstName = 'ABCD' and LastName = 'xyz';

select * from AddressBook_Table;

--UC5-- Delete existing contact person using name
delete from AddressBook_Table where FirstName = 'Guruprasad' and LastName = 'Kumbar';
select * from AddressBook_Table;

--UC6-- Retrieve person belonging to a city or state from AddressBook
select * from AddressBook_Table where City = 'Belgaum' or State = 'Karnataka';

--UC7-- Size of AddressBook by city and state 
select COUNT(*) as StateCount, State from AddressBook_Table group by State;
select COUNT(*) as CityCount, City from AddressBook_Table group by City;

--UC8-- Get Sorted entries alphabeticaly by first name
select * from AddressBook_Table order by FirstName;

--UC9-- Identify each addressboook with name and type 
alter table AddressBook_Table add ContactType varchar(100) not null default 'Friend';
update AddressBook_Table set ContactType='Family' where FirstName='ABCD';

--UC10-- Get number of contact persons count by type
select COUNT(ContactType) as TypeCount, ContactType from AddressBook_Table group by ContactType;

--UC11-- Add person to friend and family
insert into AddressBook_Table(FirstName, LastName, Address, City, State, Zip, PhoneNumber, Email, ContactType)
values
('Ronit', 'Waje', 'MI', 'Mumbai', 'Maharastra', 400001, 1231231235, 'ronit@gmail.com', 'Friend'),
('Rohit', 'Sharma', 'MI', 'Mumbai', 'Maharastra', 400002, 1231231235, 'roohit@gmail.com', 'Family');
select * from AddressBook_Table;