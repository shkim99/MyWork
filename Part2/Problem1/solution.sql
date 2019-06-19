-- Problem 1
SELECT  a.id,
        b.type,
        a.status,
        a.amount,
        (a.amount - avg(b.amount)) as difference
FROM account a, account b
WHERE a.type = b.type
AND a.status = 'Active'
GROUP BY a. id, b.type, a.status, a.amount
