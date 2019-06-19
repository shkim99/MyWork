CREATE TABLE view (
   id string ,
  fname string ,
  lname string ,
  city string,
  state string,
  charge string,
  billdata string
  ) ;

insert into view
select c.id, c.fname, c.lname, c.city, c.state, b.charge,
       to_date(b.tstamp)  as billdata
  from customer c , billing b where b.id = c.id ;
