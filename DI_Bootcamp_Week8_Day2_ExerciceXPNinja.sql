-- 1) Fetch the last 2 customers in alphabetical order (A-Z) 
	-- – exclude ‘id’ from the results.
SELECT customers.nom, customers.prenom, customers.id
FROM customers
ORDER BY customers.nom ASC
LIMIT 2;


-- 2) Use SQL to delete all purchases made by Scott.
DELETE FROM purchases
WHERE purchases.customer_id = (SELECT customers.id FROM customers WHERE customers.nom = 'Scott')

![ninja req2](https://user-images.githubusercontent.com/47045013/219900782-66e0fdee-3e13-4738-b07b-b9d63ed6f6c4.png)


-- 3) Does Scott still exist in the customers table, 
	-- even though he has been deleted? Try and find him.
SELECT * FROM customers WHERE customers.nom = 'Scott';

/*
	4) Use SQL to find all purchases. Join purchases with the customers table, 
	so that Scott’s order will appear, although instead of the customer’s 
	first and last name, you should only see empty/blank. 
	(Which kind of join should you use?).
*/
SELECT purchases.*, customers.nom, customers.prenom
FROM purchases
RIGHT JOIN customers ON customers.id = purchases.customer_id;

![ninja req4](https://user-images.githubusercontent.com/47045013/219900888-19d406f5-ed66-4db0-9953-d55420bf9808.png)


/*
	5) Use SQL to find all purchases. Join purchases with the customers table, 
	so that Scott’s order will NOT appear. (Which kind of join should you use?)
*/
SELECT purchases.*, customers.nom, customers.prenom
FROM purchases
INNER JOIN customers ON customers.id = purchases.customer_id;

![ninja req5](https://user-images.githubusercontent.com/47045013/219900898-8ce80d75-bc3f-45e5-a3af-f422359aa219.png)
