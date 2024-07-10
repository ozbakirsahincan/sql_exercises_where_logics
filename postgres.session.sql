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

-- Lesson 08 Example

-- film tablosunda bulunan tüm sütunlardaki verileri replacement cost değeri 12.99 dan büyük eşit ve 16.99 küçük olma koşuluyla sıralayınız ( BETWEEN - AND yapısını kullanınız.)
select * from film
where replacement_cost between 12.99 and 16.98 order by replacement_cost desc;
-- .actor tablosunda bulunan first_name ve last_name sütunlardaki verileri first_name 'Penelope' veya 'Nick' veya 'Ed' değerleri olması koşuluyla sıralayınız. ( IN operatörünü kullanınız.)
select first_name,last_name from actor where first_name in ('Penelope','Nick','Ed');

-- film tablosunda bulunan tüm sütunlardaki verileri rental_rate 0.99, 2.99, 4.99 VE replacement_cost 12.99, 15.99, 28.99 olma koşullarıyla sıralayınız. ( IN operatörünü kullanınız.)
select * from film
where rental_rate  in (0.99,2.99,4.99) and replacement_cost in (12.99,15.99,28.99)

-- Lesson 09 

select * from actor
where first_name = 'Penelope';

select * from actor a 
where a.first_name like 'P%';

select * from actor 
where last_name ilike '%g';

select * from actor 
where first_name like 'B__';

select * from actor 
where last_name !~~* '%b%'