#rata-rata umur customer jika dilihat dari marital status
select avg(age)  from customer c group by "Marital Status"

#rata-rata umur customer jika dilihat dari gender 
select avg(age) from customer c group by gender

#nama store dengan total quantity terbanyak
SELECT s.storename, SUM(t.qty) AS total_quantity
FROM "Transaction" t
JOIN store s ON t.storeid = s.storeid
GROUP BY s.storename
ORDER BY total_quantity DESC
LIMIT 1

#nama produk terlaris dengan total amount terbanyak
SELECT p."Product Name", SUM(t.qty * p.price) AS total_amount
FROM "Transaction" t
JOIN product p ON t.productid = p.productid
GROUP BY p."Product Name"
ORDER BY total_amount DESC
LIMIT 1