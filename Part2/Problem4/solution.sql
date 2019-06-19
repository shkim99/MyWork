
create database problem4;

create external table emp1 (
    id  int,
    fname  string,
    lname  string,
    address string,
    city    string,
    state   string,
    zip     int
)
ROW FORMAT DELIMITED FIELDS terminated BY '\T'
LOCATION '/usr/training/problem4/data/employee1';


create external table emp2 (
    id  int,
    fname  string,
    lname  string,
    address string,
    city    string,
    state   string,
    zip     int
)
ROW FORMAT DELIMITED FIELDS terminated BY '\T'
LOCATION '/usr/training/problem4/data/employee2';

INSERT OVERWRITE DIRECTORY
select id, INITCAP(fname), INITCAP(lname), address, city, zip from emp1
where state = 'CA'
union all
select id, INITCAP(fname), INITCAP(lname), address, city, zip from emp2
where state = 'CA';
