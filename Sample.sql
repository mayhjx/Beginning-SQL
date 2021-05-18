use filmclub;

--select firstname, lastname, zipcode 
--from memberdetails
--where zipcode like '65%';

--select firstname, lastname, street
--from memberdetails
--where street not like '% Road' and street not like '% Street';

--select city 
--from memberdetails
--where city in ('Townsville', 'Windy Village', 'Dover', 'Big City');

--select filmname, yearreleased, rating
--from films
--where yearreleased in (1967, 1977, 1987) and rating in (4, 5);

--select yearreleased
--from films
--order by yearreleased asc;

--select filmname, rating
--from films
--order by yearreleased;

--select filmname, rating, yearreleased
--from films
--order by rating, yearreleased, filmname;

--select filmname, rating, yearreleased 
--from films
--where yearreleased between 1960 and 1969
--order by filmname;

--select lastname, firstname, dateofbirth
--from memberdetails
--order by lastname, dateofbirth, firstname;

--select lastname, firstname, dateofbirth
--from memberdetails
--where dateofjoining between '2005-01-01' and '2005-12-31' 
--order by lastname, dateofbirth, firstname;

--select lastname, firstname, dateofbirth
--from memberdetails
--order by dateofbirth desc;

--select firstname + ' ' + lastname as FullName
--from memberdetails

--select lastname as Surname, firstname as ChristianName
--from memberdetails

--select lastname as Surname, firstname as [Christian Name]
--from memberdetails;

--select dateofbirth as [One***Two] from memberdetails;

--select filmname, yearreleased, rating
--from films inner join category
--on films.categoryid = category.categoryid
--where category.category = 'Historical';

--select filmname, yearreleased, rating
--from films, category
--where films.categoryid = category.categoryid and category.categoryid = 6;

--select 
--memberdetails.firstname, 
--memberdetails.lastname, 
--films.filmname, 
--films.yearreleased, 
--category.category
--from favcategory 
--inner join memberdetails
--on memberdetails.memberid = favcategory.memberid
--inner join category
--on favcategory.categoryid = category.categoryid
--inner join films
--on favcategory.categoryid = films.categoryid
--order by memberdetails.lastname, memberdetails.firstname;

--select favcategory.categoryid, favcategory.memberid
--from favcategory;

--select category.category, favcategory.memberid
--from favcategory inner join category
--on favcategory.categoryid = category.categoryid;

--select category.category, memberdetails.firstname, memberdetails.lastname
--from favcategory inner join category
--on favcategory.categoryid = category.categoryid
--inner join memberdetails
--on favcategory.memberid = memberdetails.memberid
--order by memberdetails.lastname, memberdetails.firstname;

--select memberdetails.firstname, memberdetails.lastname, category.category, filmname, yearreleased
--from favcategory inner join category
--on favcategory.categoryid = category.categoryid
--inner join memberdetails
--on favcategory.memberid = memberdetails.memberid
--inner join films
--on favcategory.categoryid = films.categoryid
--order by memberdetails.lastname, memberdetails.firstname;

--select memberdetails.firstname, memberdetails.lastname, category.category, filmname, yearreleased
--from favcategory inner join category
--on favcategory.categoryid = category.categoryid
--inner join memberdetails
--on favcategory.memberid = memberdetails.memberid
--inner join films
--on favcategory.categoryid = films.categoryid
--where memberdetails.memberid = 11
--order by memberdetails.lastname, memberdetails.firstname;

--select category.category, favcategory.memberid
--from favcategory inner join category
--on favcategory.categoryid = category.categoryid;

--insert into category (categoryid, category)
--values (7, 'Comedy');

--insert into favcategory (categoryid, memberid)
--values (7, 6);

--insert into favcategory (categoryid, memberid)
--values (7, 4);

--insert into favcategory (categoryid, memberid)
--values (7, 12);

--select category.category, memberdetails.firstname, memberdetails.lastname
--from favcategory 
--inner join category
--on favcategory.categoryid = category.categoryid
--inner join memberdetails
--on favcategory.memberid = memberdetails.memberid
--order by memberdetails.lastname, memberdetails.firstname;

--select memberdetails.firstname, memberdetails.lastname, memberdetails.city, memberdetails.state
--from memberdetails inner join location
--on (memberdetails.city <> location.city and memberdetails.state = location.state)
--or (memberdetails.city = location.city and memberdetails.state <> location.state)
--order by memberdetails.lastname;

--select 
--attendance.meetingdate,
--location.city
--from attendance
--inner join location on location.locationid = attendance.locationid;

--select
--memberdetails.memberid,
--memberdetails.firstname,
--memberdetails.lastname,
--attendance.meetingdate,
--location.city
--from memberdetails
--inner join attendance
--on memberdetails.memberid = attendance.memberid
--inner join location 
--on location.locationid = attendance.locationid
--where attendance.memberattended = 'Y'
--order by meetingdate, location.city, lastname, firstname;

--insert into memberdetails
--(memberid, firstname, lastname, email, dateofjoining)
--values
--(15, 'Catherine', 'Hawthorn', 'chawthorn@mailme.org', '2005-08-25');

--select firstname, lastname, dateofbirth
--from memberdetails
--where dateofbirth <= '1970-01-01' or dateofbirth > '1970-01-01' or dateofbirth is null;

--select 
--firstname + lastname as fullname,
--street,
--city,
--state,
--zipcode
--from memberdetails
--where memberid = 13;

--select firstname, lastname as Surname
--from memberdetails
--where lastname like 'J%';

--select firstname, lastname
--from memberdetails
--where dateofjoining <= '2004-12-31'
--order by lastname, firstname;

--select memberdetails.firstname, memberdetails.lastname
--from attendance
--inner join memberdetails 
--on memberdetails.memberid = attendance.memberid
--inner join location
--on attendance.locationid = location.locationid
--where attendance.memberattended = 'Y' and location.state = 'Golden State' and location.city = 'Windy Village';

--create table NamesAges
--(
--	Name varchar(50),
--	Age int Check (Age >= 0)
--);

--insert into NamesAges (Name, Age)
--Values ('Jim', 30);


--insert into NamesAges (Name)
--Values ('Jane');


--insert into NamesAges (Name, Age)
--Values ('Will', -22);

--create table NamesAges
--(
--	Name varchar(50),
--	Age int Not NULL Check (Age >= 0)
----);

--insert into NamesAges (Name)
--values ('Jane');

--drop table NamesAges;

--create table MyTable
--(
--	Column1 int NOT NULL,
--	Column2 varchar(20),
--	Column3 varchar(12) NOT NUll
--);

--alter table MyTable
--alter COLUMN Column2 varchar(20) NOT NULL;

--insert into MyTable(Column1, Column3)
--values (123, 'ABC');

--drop table mytable;

--create table MyUniqueTable
--(
--	Column1 int,
--	Column2 varchar(20) UNIQUE,
--	Column3 varchar(12) unique
--);

--insert into MyUniqueTable (Column1, Column2, Column3)
--values (123, 'ABC', 'DEF');

--insert into MyuniqueTable (Column1, Column2, Column3)
--values (123, 'XYZ', 'DEF');

--select * from Myuniquetable;

--drop table myuniquetable;

--create table AnotherTable
--(
--	Column1 int,
--	Column2 varchar(20),
--	Column3 varchar(12),
--	constraint MyUniqueConstraint unique(column2, column3)
--);

--insert into AnotherTable (column1, column2, column3)
--values (1, 'ABC', 'DEF');

--insert into AnotherTable (column1, column2, column3)
--values (2, 'ABC', 'XYZ');

--insert into AnotherTable (column1, column2, column3)
--values (3, 'DEF', 'DEF');

--insert into AnotherTable (column1, column2, column3)
--values (4, 'ABC', 'DEF');

--select * from AnotherTable;

--drop table AnotherTable;

--create table YetAnotherTable
--(
--	Column1 int, 
--	Column2 varchar(20),
--	Column3 varchar(12)
--);

--alter table YetAnotherTable
--add constraint MyUniqueConstraint unique(column2, column3);

--insert into YetAnotherTable (column1, column2, column3)
--values (1, 'ABC', 'DEF');

--insert into YetAnotherTable (column1, column2, column3)
--values (2, 'ABC', 'XYZ');

--insert into YetAnotherTable (column1, column2, column3)
--values (3, 'DEF', 'DEF');

--insert into YetAnotherTable (column1, column2, column3)
--values (4, 'ABC', 'DEF');

--alter table yetanothertable
--drop constraint myuniqueconstraint;

--drop table yetanothertable;

--create table Employee
--(
--	EmployeeName varchar(50),
--	AvgMonthlyWage decimal(12, 2),
--	HourlyRate decimal(12,2),
--	constraint HourlyLess check (AvgMonthlyWage > HourlyRate)
--);

--drop table Employee;

--create table HolidayBookings
--(
--	Customerid int primary key,
--	BookingId int,
--	Destination varchar(50)
--);

--create table MoreHolidayBookings
--(
--	CustomerId int Not Null,
--	Bookingid int Not Null,
--	Destination varchar(50),
--	Constraint booking_pk Primary key (customerid, bookingid)
--);

--insert into moreholidaybookings (customerid, bookingid, destination)
--values (1, 1, 'Hawaii');

--insert into moreholidaybookings (customerid, bookingid, destination)
--values (1, 2, 'Canada');

--insert into moreholidaybookings (customerid, bookingid, destination)
--values (2, 2, 'England');

--insert into moreholidaybookings (customerid, bookingid, destination)
--values (1, 1, 'New Zealand');

--insert into moreholidaybookings (customerid, destination)
--values (3, 'Mexico');


--drop table moreholidaybookings;
--drop table holidaybookings;


--create table MoreHolidayBookings
--(
--	CustomerId int Not Null,
--	BookingId int Not Null,
--	Destination varchar(50)
--);


--alter table moreholidaybookings
--add constraint more_holiday_pk primary key (customerid, bookingid);

--alter table moreholidaybookings
--drop constraint more_holiday_pk;

--drop table moreholidaybookings;

--select * from location;

--insert into attendance (locationid, meetingdate, memberattended, memberid)
--values (99, '2005-12-01', 'Y', 3);

--select memberid, meetingdate, street, city, state
--from location inner join attendance
--on attendance.locationid = location.locationid;

--select * from attendance;

--delete from attendance
--where locationid = 99;

--alter table location
--alter column locationid int not null;

--alter table location
--add constraint locationid_pk primary key (locationid);

--alter table attendance
--add constraint locationid_fk
--foreign key (locationid)
--references location(locationid);

--insert into attendance (locationid, meetingdate, memberattended, memberid)
--values (99, '2005-12-01', 'Y', 3);

--create index member_name_index
--on MemberDetails (firstname, lastname);

--select firstname, lastname
--from memberdetails;

--drop index memberdetails.member_name_index;

--create unique index member_name_indx
--on memberdetails (lastname desc, firstname);

--select lastname, firstname
--from memberdetails;

--drop index MemberDetails.member_name_indx;

--select * from attendance;

--delete from attendance
--where memberattended = 'N';

--alter table attendance
--drop column memberattended;

--alter table memberdetails
--alter column memberid int not null;

--alter table memberdetails
--add constraint memberdetails_pk primary key (memberid);

--alter table films
--alter column filmid int not null;


--update films
--set filmid = 13
--where filmid = 12 and filmname = 'The Good, the Bad, and the Facially Challenged';

--update films
--set filmid = 14
--where filmid = 2 and filmname = '15th Late Afternoon';

--update films
--set filmid = 15
--where filmid = 2 and filmname = 'Soylent Yellow';

--alter table films
--add constraint films_pk primary key (filmid);

--select * from category;

--alter table category
--alter column categoryid int not null;

--alter table category
--add constraint categoryid_pk primary key (categoryid);

--select * from favcategory;

--alter table favcategory
--alter column categoryid int not null;

--alter table favcategory
--alter column memberid int not null;

--alter table favcategory
--add constraint favcatgory_pk primary key (categoryid, memberid);

--alter table attendance
--alter column locationid int not null;

--alter table attendance
--alter column memberid int not null;

--select * from attendance;

--alter table attendance
--add constraint attendance_pk primary key (memberid, locationid);

--alter table films
--alter column filmname varchar(100) not null;

--alter table memberdetails
--alter column firstname varchar(50) not null;

--alter table memberdetails
--alter column lastname varchar(50) not null;

--create unique index member_name_indx
--on memberdetails (lastname desc, firstname);

--alter table films
--add constraint films_cat_fk
--foreign key (categoryid)
--references category(categoryid);

--alter table favcategory
--add constraint favcategory_category_fk
--foreign key (categoryid)
--references category(categoryid);

--alter table favcategory
--add constraint favcategory_memberdetails_fk
--foreign key (memberid)
--references memberdetails(memberid);

--alter table attendance
--add constraint locationid_fk
--foreign key (locationid)
--references location(locationid);

--alter table attendance
--add constraint attend_membet_fk
--foreign key (memberid)
--references memberdetails(memberid);

--create database BookStore;

--use bookstore;

--create table Publisher
--(
--	PublisherCode int primary key,
--	PublisherName varchar(10),
--	PublisherAddress varchar(100),
--);

--create table Author
--(
--	AuthorId int primary key,
--	AuthorName varchar(10),
--	AuthorAddress varchar(100),
--);

--create table BookSeller
--(
--	BookSellerId int primary key,
--	BookSellerName varchar(10) not null,
--	BookSellerTelNo varchar(20) not null,
--);

--create table Book
--(
--	ISBN varchar(20) primary key,
--	BookTitle varchar(100) not null,
--	YearPublished int not null,
--	PublisherCode int not null,
--	constraint publisher_fk foreign key (publishercode) references publisher(publisherCode)
--);

--create table WrittenBy
--(
--	ISBN varchar(20),
--	AuthorId int,
--	constraint pk primary key (ISBN, AuthorId),
--	constraint book_fk foreign key (ISBN) references Book(ISBN),
--	constraint author_fk foreign key (authorid) references author(authorid)
--);

--create table BookForSale
--(
--	ISBN varchar(20),
--	BookSellerId int,
--	constraint bookseller_book_pk primary key (ISBN, BookSellerId),
--	constraint bookseller_fk foreign key (booksellerid) references Bookseller(booksellerid),
--	constraint bookdetails_fk foreign key (isbn) references book(isbn)
--);

--drop database bookstore;

--select memberid, (memberid + 2) * 3
--from memberdetails
--where memberid < 10;

--select memberid, memberid - 10, abs(memberid - 10)
--from memberdetails;

--select memberid, power(memberid, 2), power(memberid, 3),power(memberid, 7)
--from memberdetails
--order by memberid;

--select memberid, sqrt(memberid)
--from memberdetails
--order by memberid;

--select memberid, memberid + rand(), rand() 
--from memberdetails
--order by memberid;

--alter table films
--add DVDPrice decimal(12,2);

--UPDATE Films
--SET DVDPrice = 12.99
--WHERE FilmId = 2;

--UPDATE Films
--SET DVDPrice = 9.99
--WHERE FilmId = 4;

--UPDATE Films
--SET DVDPrice = 15.99
--WHERE FilmId = 6;

--UPDATE Films
--SET DVDPrice = 12.99
--WHERE FilmId = 7;

--UPDATE Films
--SET DVDPrice = 2.99
--WHERE FilmId = 8;

--UPDATE Films
--SET DVDPrice = 8.95
--WHERE FilmId = 9;

--UPDATE Films
--SET DVDPrice = 12.99
--WHERE FilmId = 11;

--UPDATE Films
--SET DVDPrice = 9.99
--WHERE FilmId = 12;

--UPDATE Films
--SET DVDPrice = 12.99
--WHERE FilmId = 15;

--UPDATE Films
--SET DVDPrice = 8.95
--WHERE FilmId = 13;

--select dvdprice, ceiling(dvdprice)
--from films
--order by dvdprice;

--select dvdprice, floor(dvdprice), ceiling(dvdprice)
--from films
--order by dvdprice;

--select dvdprice, round(dvdprice, 1)
--from films
--order by dvdprice;

--select lastname, substring(lastname, 1, 1), state, substring(state, 1, 2)
--from memberdetails;

--select lastname, upper(lastname), lower(lastname)
--from memberdetails;

--select lastname, reverse(lastname)
--from memberdetails;

--create table MyTable
--(
--	first_column char(80)
--);

--insert into mytable (first_column)
--values ('ABC');

--insert into mytable (first_column)
--values ('ABC       1');

--select first_column, len(first_column) from mytable;

--drop table mytable;

--select lastname, len(lastname)
--from memberdetails;

--select lastname, lower(substring(lastname, 1, 1)) + substring(lastname, 2, len(lastname) - 1)
--from memberdetails;

--select firstname
--from memberdetails
--where firstname = 'Jack';

--select firstname, soundex(firstname)
--from memberdetails;

--select firstname, difference(firstname, 'Katherine'),
--difference(firstname, 'Johnny')
--from memberdetails;

--select firstname
--from memberdetails
--where difference(firstname, 'Katherine') >= 3 or difference(firstname, 'Johnny') >= 3;

--select dateofbirth, day(dateofbirth) as [day], month(dateofbirth) as [month], year(dateofbirth) as [year]
--from memberdetails
--order by year(dateofbirth);

--select zipcode, memberid, zipcode / memberid
--from memberdetails;

--select zipcode , memberid, cast(zipcode as int) / memberid
--from memberdetails;

--select zipcode, memberid, cast(zipcode as date)
--from memberdetails;


--create table Mytable (FirstColumn int, SecondColumn int);

--insert into mytable (firstcolumn, secondcolumn)
--values (3, 2);

--insert into mytable (firstcolumn)
--values (5) , (7);

--select * from mytable;

--select firstcolumn, secondcolumn, 10 + (secondcolumn * 1.175) + firstcolumn - 5
--from mytable;

--drop table mytable;

--select firstname, lastname, city, firstname + ' ' + lastname + ' lives in ' + city
--from memberdetails;

--select city, coalesce(city, 'Not Know')
--from memberdetails;

--select firstname, 
--lastname, city, 
--coalesce(firstname + ' ' + lastname + ' lives in ' + city, 
--		'We have no details for ' + firstname + ' ' + lastname,
--		'No data available') as address
--from memberdetails;

--create table AnotherLocation
--(
--	LocationId int,
--	Street varchar(50),
--	City varchar(50),
--	State varchar(50)
--);

--insert into anotherlocation
--select locationid, street, city, state
--from location
--where state in ('New State', 'Golden State');

--insert into anotherlocation (locationid, state)
--select locationid, state
--from location
--where state = 'Mega State';

--select * from anotherlocation;

--drop table anotherlocation;

--select firstname + ' ' + lastname as name, 
--coalesce(street + ' ' + zipcode, 'No address details available for this member.') as address
--from memberdetails;

--select firstname + ' ' + lastname as name
--from memberdetails
--where difference(firstname, 'Jilly') >= 3 and difference(lastname, 'Johns') >= 3;

--select city, state
--from memberdetails
--WHERE State IN ('Mega State', 'Golden State','New State')
--group by city, state;

--select count(city), count(lastname)
--from MemberDetails;

--select state, count(lastname)
--from memberdetails
--group by state;

--select count(distinct categoryid)
--from favcategory;

--select category, count(favcategory.categoryid) as Popularity
--from favcategory inner join category
--on favcategory.categoryid = category.categoryid
--group by category
--order by popularity desc;

--select category, count(favcategory.categoryid) as Popularity
--from favcategory inner join category
--on favcategory.categoryid = category.categoryid
--group by category
--order by popularity desc;

--select sum(categoryid)
--from category;

--select * from films
--where availableondvd = 'Y'

--select state, max(dateofbirth), min(dateofbirth)
--from memberdetails
--where state is not null
--group by state;

--select city, count(memberid)
--from memberdetails
--group by city
--having count(memberid) >= 3;

--select category, count(favcategory.categoryid) as popularity
--from favcategory inner join category
--on favcategory.categoryid = category.categoryid
--group by category.category
--having count(favcategory.categoryid) >= 3
--order by popularity desc;

--select state 
--from memberdetails
--group by state;

--select distinct state from memberdetails;

--select state, count(lastname)
--from memberdetails
--group by state;

--select count(*)
--from memberdetails;

--select count(street)
--from memberdetails;

--select count(city), count(lastname)
--from memberdetails;

--select state, count(memberid)
--from memberdetails
--group by state;

--select count(distinct categoryid)
--from favcategory;

--select category, count(favcategory.categoryid) as Popularity
--from favcategory inner join category
--on favcategory.categoryid = category.categoryid
--group by category
--order by popularity desc;

--select sum(categoryid)
--from category;

--select sum(dvdprice * 1.1) from films
--where availableondvd = 'Y';

--select sum(dvdprice * 1.1) from films
--where availableondvd = 'Y' and dvdprice < 10;

--select avg(dvdprice)
--from films
--where availableondvd = 'Y';

--select avg(distinct dvdprice)
--from films
--where availableondvd = 'Y';

--select avg(distinct dvdprice * 1.1)
--from films
--where availableondvd = 'Y';

--select category, avg(dvdprice) as price
--from films
--inner join category
--on films.CategoryId = Category.CategoryId
--where AvailableOnDVD = 'Y'
--group by Category;

--select max(lastname), min(lastname)
--from MemberDetails
--where memberid > 3;

--select lastname
--from MemberDetails
--where memberid > 3
--order by lastname;

--select state, max(dateofbirth) as youngest, min(dateofbirth) as oldest
--from MemberDetails
--where state is not null
--group by state;



