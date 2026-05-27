1) SELECT COUNT(*) AS Total_Orders
FROM orders;

2)SELECT SUM(TotalPrice) AS Total_Revenue
FROM orders;

3)SELECT AVG(TotalPrice) AS Average_Order_Value
FROM orders;

4)SELECT *
FROM orders
WHERE OrderStatus = 'Delivered';

5)SELECT *
FROM orders
WHERE TotalPrice > 2000;

6)SELECT Product,
       SUM(Quantity) AS Total_Sold
FROM orders
GROUP BY Product
ORDER BY Total_Sold DESC;

7)SELECT Product,
       SUM(TotalPrice) AS Revenue
FROM orders
GROUP BY Product
ORDER BY Revenue DESC;

8)SELECT OrderStatus,
       COUNT(*) AS Orders_Count
FROM orders
GROUP BY OrderStatus;

9)SELECT PaymentMethod,
       AVG(TotalPrice) AS Avg_Order_Value
FROM orders
GROUP BY PaymentMethod
ORDER BY Avg_Order_Value DESC;

10)SELECT ReferralSource,
       COUNT(*) AS Customers_Count
FROM orders
GROUP BY ReferralSource
ORDER BY Customers_Count DESC;

11)SELECT ReferralSource,
       SUM(TotalPrice) AS Revenue
FROM orders
GROUP BY ReferralSource
ORDER BY Revenue DESC;

12)SELECT CouponCode,
       COUNT(*) AS Usage_Count
FROM orders
GROUP BY CouponCode
ORDER BY Usage_Count DESC;

13)SELECT *
FROM orders
ORDER BY TotalPrice DESC
LIMIT 10;

14)SELECT Product,
       SUM(TotalPrice) AS Revenue
FROM orders
GROUP BY Product
HAVING Revenue > 100000
ORDER BY Revenue DESC;