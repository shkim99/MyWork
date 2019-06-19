-- problem5;

select concat_ws('\t',fname, lname, city, state) as report  from customer
where city = 'Palo Alto' and state = 'CA'
union
select concat_ws('\t',fname, lname, city, state) as report from  employee
where city = 'Palo Alto' and state = 'CA';
