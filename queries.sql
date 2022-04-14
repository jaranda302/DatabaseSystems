--insert statements for salesInfo and productInfo tables insert new entry to each table 
INSERT INTO salesinfo VALUES (00004,'2022-01-10 10:32:33',1,20.00,00004);
INSERT INTO productinfo VALUES (00004,'shorts','XL',200,15.00);

--update statement for customerInfo table replaces Last Name Smith for Garcia & First Name Jane for Mary
UPDATE customerinfo SET LastName = 'Garcia' where LastName = 'Smith';
UPDATE customerinfo SET FirstName = 'Mary' where FirstName = 'Jane';

--delete statement deletes newly created row from line 3
DELETE FROM productinfo WHERE Description = 'shorts' and Size = 'XL';

--select statement for paymentInfo only shows 3 columns for rows with Last Name = Doe
SELECT FirstName, LastName, ZipCode FROM paymentinfo WHERE LastName = 'Doe';

--select statements that (1) joins customerInfo and productInfo by First Name and Last Name and (2) joins salesInfo and productInfo by Product Number
Select c.FirstName, c.LastName, c.AccountNumber, p.CreditCard FROM customerinfo c
LEFT JOIN paymentinfo p
ON c.FirstName = p.FirstName
and c.LastName = p.LastName
where c.FirstName = 'Jacqueline';

Select s.ProductNumber, s.Price, p.Description FROM salesinfo s 
LEFT JOIN productinfo p
ON s.ProductNumber = p.ProductNumber
where p.Description = 'leggings';

--summary statements that (1) show the count of each product, (2) show the sum of all sales, and (3) show the min/max quantity of products 
SELECT DISTINCT Description, COUNT(*) FROM productinfo;
SELECT SUM(Price) FROM salesinfo;
SELECT MIN(Quantity), MAX(Quantity) FROM productinfo;

--multi table query
SELECT * FROM customerinfo c, paymentinfo p
WHERE (c.FirstName = p.FirstName);