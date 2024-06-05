SELECT Orders.order_id, Orders.user_id, Users.name, Orders.product, Orders.price
FROM Orders 
JOIN Users ON Users.user_id = Orders.user_id

SELECT Users.user_id, Users.name, Users.email
FROM Users 
LEFT JOIN Orders ON Orders.user_id = Users.user_id
WHERE Orders.user_id IS NULL

SELECT Users.user_id, Users.name, SUM(Orders.price) as total
FROM Users
JOIN Orders ON Orders.user_id = Users.user_id
GROUP BY Users.user_id, Users.name

SELECT Users.user_id, Users.name, AVG(Orders.price) as avg
FROM Users
JOIN Orders ON Orders.user_id = Users.user_id
GROUP BY Users.user_id, Users.name

SELECT TOP(1) Users.user_id, Users.name, SUM(Orders.price) as total
FROM Users
JOIN Orders ON Orders.user_id = Users.user_id
GROUP BY Users.user_id, Users.name
ORDER BY total DESC