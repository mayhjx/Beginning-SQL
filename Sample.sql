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