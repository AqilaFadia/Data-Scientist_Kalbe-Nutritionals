# Average age of customers when viewed from marital status
select avg(age)  from customer c group by "Marital Status"

# Average age of customers when viewed from gender
select avg(age) from customer c group by gender

# The store name with the highest total quantity
SELECT s.storename, SUM(t.qty) AS total_quantity
FROM "Transaction" t
JOIN store s ON t.storeid = s.storeid
GROUP BY s.storename
ORDER BY total_quantity DESC
LIMIT 1

# Best-selling product names with the most total amount
SELECT p."Product Name", SUM(t.qty * p.price) AS total_amount
FROM "Transaction" t
JOIN product p ON t.productid = p.productid
GROUP BY p."Product Name"
ORDER BY total_amount DESC
LIMIT 1