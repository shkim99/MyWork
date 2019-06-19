-- problem6;

select * from solution;

insert into solution (id, fname, lname,address, city, state, zip, birthday)
select id, fname, lname,address, city, state, zip, substr(birthday,1,5) as birthday
from employee ;
