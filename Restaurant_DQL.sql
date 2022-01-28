-- Pobierz imie i nazwisko klienta, gdy ma na imie Jan
select customer_name, customer_surname
from customer
where customer_name='Jan';


-- Pobierz caly wiersz klienta, gdy ma na imie Anna
select * from customer 
where customer_name='Anna';


-- Pobierz imie i nazwisko klienta, gdy ma na imie Kamil i na nazwisko Radko
select customer_name, customer_surname
from customer
where customer_name='Kamil' or customer_surname='Radko';


-- Pobierz imie i nazwisko, gdy ma na imie zaczyna sie na M
select * from customer where customer_name like 'M%';

-- Pobierz caly wiersz klienta gdy jego imie zaczyna siê na J lub K
select * from customer where customer_name like 'J%' or customer_name like 'K%';

-- Pobierz caly wiersz, gdy koszt zamówienia wynosi powy¿ej 100
select * from menu_item
where menu_item_price > '100';

-- Pobierz imie i nazwisko klienta, gdy ma na imie Rozalia posortuj od A do Z
select customer_name, customer_surname from customer 
where customer_name='Rozalia' 
order by customer_surname;

-- Pobierz liczbe wierszy z rezerwacji (wszystkich)
select count(oorder_id)
from oorder;

-- Pobierz najwyzsza wartosc chairs z bench
select max(avalaible_chairs)
from bench;

-- Pobierz najnizsza wartosc chairs z bench
select min(avalaible_chairs)
from bench;

-- Pobierz srednia wartosc chairs z bench
select avg(avalaible_chairs)
from bench;

-- Pobierz wszystkie zamowienie dla stolika 106
select * from oorder
where bench_number='106';

select phonnumber, emailadress
from customer;

select customer_name
from customer 
where customer_name like 'J%';

select count(customer_name)
from customer
where customer_name='Jan';



select * from booking 
where customer_id= (select customer_id
from customer 
where customer_name='Jan');

select * from booking b
join customer c on b.customer_id=c.customer_id and c.customer_name = 'Jan';



select distinct(customer_name) from customer;

select customer_id
from customers
where customer_name='Jan' or customer_name='Tadek';

select * from customer
group by customer_surname
having count(customer_surname) > 1








