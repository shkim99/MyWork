CREATE TABLE solution (
   id string ,
  fname string ,
  lname string ,
  address string,
  city string,
  state string,
  zip string,
  birthday string
  ) ;


insert into solution
select distinct concat('A','',id) as id, fname, lname,address, city, state, zip, birthday from customer;
