select concat_ws(' ',fname, lname) As name  from employee E where city = 'Seattle' order by fname, lname;
