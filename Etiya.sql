--SELECT * FROM Products 
--WHERE supplierid BETWEEN 1 and 5;

--select * from Products
--where supplierid IN (1,2,4,5);

--select * from Products
--where productname IN('Chang','Aniseed Syrup');

--Select * from Products
--where supplierid = 3 OR unitprice>10;

--SELECT productname, unitprice from Products;

--select upper(productname) from Products
--where productname LIKE '%C%';

--SELECT productname from Products
--where productname LIKE 'N%' AND productname NOT LIKE '%N%N%';

--select * from Products
--where unitsinstock>50;

--SELECT * from Products
WHERE unitprice = (SELECT MAX(unitprice) FROM Products)
UNION
SELECT * from Products
WHERE unitprice = (SELECT MIN(unitprice) FROM Products);

--select productname from Products
--where productname LIKE '%Spice%';
