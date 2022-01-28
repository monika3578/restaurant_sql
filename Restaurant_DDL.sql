-- Kroki robienia bazy danych
-- 1. Zmiana nazwy tabeli.
-- 2. Sprawdzenie jaki typ danych powinna mieæ kolumna.
-- 3. Sprawdzenie co jest primary key (która kolumna).
-- 4. Usuniêcie constrauntu (relacja miêdzy tabelami).
-- 5. Po 3 tabelach dodanie relacji miêdzy nimi.

drop table if exists booking;
drop table if exists customer;
drop table if exists ingredients;
drop table if exists menu_item_ingredient;
drop table if exists menu;
drop table if exists menu_item;
drop table if exists oorder_menu_item;
drop table if exists staff_role;
drop table if exists staff;
drop table if exists oorder;
drop table if exists bench;


CREATE TABLE customer (
  customer_id int(5) NOT NULL,
  customer_name varchar(20) NOT NULL,
  customer_surname varchar(20) NOT NULL,
  phone_number varchar(9),
  email_address varchar(20) DEFAULT NULL,
  PRIMARY KEY (customer_id)
);

create table booking (
booking_id int(5) not null,
date_of_booking datetime not null,
amount_of_people int (3) default 1,
customer_id int(5) not null,
bench_number int(3) not null
);

create table bench (
bench_number int (3) not null,
avalaible_chairs int (3) default null,
primary key (bench_number)
);

alter table booking add primary key (booking_id);

-- One to many (1 klient mo¿e mieæ kilka rezerwacji)
alter table booking add foreign key(customer_id) references customer(customer_id);


-- One to many (1 stolik mo¿e mieæ kilka rezerwacji)
alter table booking add foreign key(bench_number) references bench(bench_number);


create table oorder (
oorder_id int (5) not null,
oorder_date_time datetime not null,
bench_number int (3) not null,
primary key (oorder_id)
);




alter table oorder add foreign key(bench_number) references bench(bench_number);

create table staff (
staff_id int(5) not null,
staff_first_name varchar(20) not null,
staff_last_name varchar(20) not null,
oorder_id int (5) not null,
primary key (staff_id)
);



alter table staff add foreign key(oorder_id) references oorder(oorder_id);


create table staff_role (
staff_role_code int(5) not null,
staff_role_description varchar(20) not null,
staff_id int(5) not null,
primary key (staff_role_code)
);


alter table staff_role add foreign key(staff_id) references staff(staff_id);


create table oorder_menu_item (
oorder_menu_item_id int(5) not null,
oorder_menu_item_quantity int(5) not null,
oorder_menu_item_comments varchar(30) default null,
oorder_id int (5) not null,
primary key (oorder_menu_item_id)
);


alter table oorder_menu_item add foreign key(oorder_id) references oorder(oorder_id);


create table menu_item (
menu_item_id int(5) not null,
menu_item_description varchar(30) not null,
menu_item_price int(5) not null,
oorder_menu_item_id int(5) not null,
primary key (menu_item_id)
);


alter table menu_item add foreign key(oorder_menu_item_id) references oorder_menu_item(oorder_menu_item_id);

create table menu (
menu_id int(5) not null,
menu_date datetime default null,
menu_item_id int(5) not null,
primary key (menu_id)
);


alter table menu add foreign key(menu_item_id) references menu_item(menu_item_id);

create table menu_item_ingredient (
menu_item_ingredient_id int(5) not null,
item_quantity int(5) not null,
menu_item_id int(5) not null,
primary key (menu_item_ingredient_id)
);


alter table menu_item_ingredient add foreign key(menu_item_id) references menu_item(menu_item_id);

create table ingredients (
ingredient_id int(5) not null,
ingredient_name varchar(20) not null,
menu_item_ingredient_id int(5) not null,
primary key (ingredient_id)
);



alter table ingredients add foreign key(menu_item_ingredient_id) references menu_item_ingredient(menu_item_ingredient_id);


