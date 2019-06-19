select p.name, p.prod_id,
       count(p.prod_id) as count
  from order_details od, products p
 where od.prod_id = p.prod_id
   and p.brand = 'Dualcore' group by p.prod_id, p.name
 order by count desc  LIMIT 3
