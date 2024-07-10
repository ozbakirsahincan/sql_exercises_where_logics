-- Lesson 07
select title,description from film ;
select * from film where length >60 and length < 75;
select * from film where rental_rate =0.99 and (replacement_cost =12.99 or replacement_cost = 28.99);
select last_name from customer where first_name ='Mary';
select length ,rental_rate ,* from film where length < 50 and not (rental_rate =2.99 or rental_rate= 4.99) order by length asc;
-- Lesson 08
select title , length from film
where length not between 90 and 100;

select replacement_cost , rental_rate from film
where (rental_rate between 2 and 4) and (replacement_cost between 10 and 20) order by rental_rate desc;

select length ,* from film where length in (40,50,60,70) order by length asc;
select * from film where replacement_cost in (10.99,12.99,16.99)