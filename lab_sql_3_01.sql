/*
Activity 1
Drop column picture from staff.
A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.
Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. You can use current date for the rental_date column in the rental table. Hint: Check the columns in the table rental and see what information you would need to add there. You can query those pieces of information. For eg., you would notice that you need customer_id information as well. To get that you can use the following query:
select customer_id from sakila.customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';
Use similar method to get inventory_id, film_id, and staff_id.


*/
-- Drop column picture from staff.
SELECT * FROM sakila.staff;

ALTER TABLE sakila.staff
DROP COLUMN picture;

-- A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.
SELECT * FROM sakila.staff;
SELECT * 
FROM sakila.customer
WHERE first_name ='TAMMY' and last_name = 'SANDERS';

INSERT INTO sakila.staff(staff_id,first_name,last_name,address_id,email,store_id,active,username) 
VALUES
(3,'TAMMY','SANDERS',79,'TAMMY.SANDERS@sakilacustomer.org',2,1,'Tammy');

/*
Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. You can use current date 
for the rental_date column in the rental table. Hint: Check the columns in the table rental and see what information 
you would need to add there. You can query those pieces of information. 
For eg., you would notice that you need customer_id information as well. To get that you can use the following query:
select customer_id from sakila.customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';
Use similar method to get inventory_id, film_id, and staff_id.

*/

select customer_id from sakila.customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';

select film_id from sakila.film
where title ='Academy Dinosaur';

SELECT staff_id FROM sakila.staff
where first_name = 'Mike' and store_id =1;

INSERT INTO sakila.rental(rental_date,inventory_id,customer_id,staff_id) 
VALUES
(950324,1,130,1);

SELECT * FROM sakila.rental
WHERE customer_id = 130;


INSERT INTO sakila.payment(customer_id,staff_id,rental_id,amount,payment_date) 
VALUES
(130,1,16050,5.99,950324);

SELECT * FROM sakila.payment
WHERE rental_id = 16050;