INSERT INTO test.customer (customer_id, customer_name, customer_surname, phone_number, email_address)
VALUES(1, 'Jan', 'Nowak', '667890987', 'jan.nowak@wp.pl');

INSERT INTO test.customer (customer_id, customer_name, customer_surname, phone_number, email_address)
VALUES(2, 'Kamil', 'Wicher', '657898765', 'kamil.wicher@onet.pl');

INSERT INTO test.customer (customer_id, customer_name, customer_surname, phone_number, email_address)
VALUES(3, 'Rozalia', 'Dudek', '543567678', 'roz.dudek@gmail.pl');

INSERT INTO test.customer (customer_id, customer_name, customer_surname, phone_number, email_address)
VALUES(4, 'Mariusz', 'Radko', '980786456', 'mariuszek13@wp.pl');

INSERT INTO test.customer (customer_id, customer_name, customer_surname, phone_number, email_address)
VALUES(5, 'Anna', 'Burza', '678698098', 'burza@onet.pl');

INSERT INTO test.bench (bench_number, avalaible_chairs)
VALUES(106, 10);

INSERT INTO test.bench (bench_number, avalaible_chairs)
VALUES(105, 5);

INSERT INTO test.bench (bench_number, avalaible_chairs)
VALUES(104, 2);

INSERT INTO test.bench (bench_number, avalaible_chairs)
VALUES(103, 8);

INSERT INTO test.bench (bench_number, avalaible_chairs)
VALUES(102, 4);

INSERT INTO test.booking (booking_id, date_of_booking, amount_of_people, customer_id, bench_number)
VALUES(1, '2022-01-10 12:12:12', 5, 1, 106);

INSERT INTO test.booking (booking_id, date_of_booking, amount_of_people, customer_id, bench_number)
VALUES(2, '2022-01-11 13:19:34', 8, 5, 103);

INSERT INTO test.booking (booking_id, date_of_booking, amount_of_people, customer_id, bench_number)
VALUES(3, '2022-01-12 15:35:40', 2, 3, 104);

INSERT INTO test.booking (booking_id, date_of_booking, amount_of_people, customer_id, bench_number)
VALUES(4, '2022-01-12 21:15:00', 4, 4, 102);

INSERT INTO test.booking (booking_id, date_of_booking, amount_of_people, customer_id, bench_number)
VALUES(5, '2022-01-13 18:55:10', 5, 2, 105);




INSERT INTO test.oorder (oorder_id, oorder_date_time, bench_number)
VALUES(1, '2022-01-09 17:13:59',105);

INSERT INTO test.oorder (oorder_id, oorder_date_time, bench_number)
VALUES(2, '2022-01-10 22:39:10', 102);

INSERT INTO test.oorder (oorder_id, oorder_date_time, bench_number)
VALUES(3, '2022-01-10 23:49:00', 106);

INSERT INTO test.oorder (oorder_id, oorder_date_time, bench_number)
VALUES(4, '2022-01-11 10:12:13', 104);

INSERT INTO test.oorder (oorder_id, oorder_date_time, bench_number)
VALUES(5, '2022-01-12 21:23:10', 103);



INSERT INTO test.staff (staff_id, staff_first_name, staff_last_name, oorder_id)
VALUES(1, 'Witek', 'Maj', 4);

INSERT INTO test.staff (staff_id, staff_first_name, staff_last_name, oorder_id)
VALUES(2, 'Michal', 'Kowalski', 5);

INSERT INTO test.staff (staff_id, staff_first_name, staff_last_name, oorder_id)
VALUES(3, 'Paulina', 'Kwiatkowska', 1);

INSERT INTO test.staff (staff_id, staff_first_name, staff_last_name, oorder_id)
VALUES(4, 'Mateusz', 'Roznerski', 3);

INSERT INTO test.staff (staff_id, staff_first_name, staff_last_name, oorder_id)
VALUES(5, 'Anna', 'Marzec', 2);




INSERT INTO test.staff_role (staff_role_code, staff_role_description, staff_id)
VALUES(100, 'kelner', 1);

INSERT INTO test.staff_role (staff_role_code, staff_role_description, staff_id)
VALUES(101, 'kelner', 2);

INSERT INTO test.staff_role (staff_role_code, staff_role_description, staff_id)
VALUES(102, 'kucharz', 3);

INSERT INTO test.staff_role (staff_role_code, staff_role_description, staff_id)
VALUES(103, 'dostawca', 4);

INSERT INTO test.staff_role (staff_role_code, staff_role_description, staff_id)
VALUES(104, 'sprzedawca', 5);




INSERT INTO test.oorder_menu_item (oorder_menu_item_id, oorder_menu_item_quantity, oorder_menu_item_comments, oorder_id)
VALUES(310, 4, 'Tradycyjne pierogi ruskie', 3);

INSERT INTO test.oorder_menu_item (oorder_menu_item_id, oorder_menu_item_quantity, oorder_menu_item_comments, oorder_id)
VALUES(320, 8, 'Barszcz ze smietana', 1);

INSERT INTO test.oorder_menu_item (oorder_menu_item_id, oorder_menu_item_quantity, oorder_menu_item_comments, oorder_id)
VALUES(330, 10, 'Szarlotka z lodami', 5);

INSERT INTO test.oorder_menu_item (oorder_menu_item_id, oorder_menu_item_quantity, oorder_menu_item_comments, oorder_id)
VALUES(340, 4, 'Filet drobiowy, surowka', 2);

INSERT INTO test.oorder_menu_item (oorder_menu_item_id, oorder_menu_item_quantity, oorder_menu_item_comments, oorder_id)
VALUES(350, 2, 'Tradycyjne pierogi ruskie', 4);



INSERT INTO test.menu_item (menu_item_id, menu_item_description, menu_item_price, oorder_menu_item_id)
VALUES(1, 'Barszcz czerwony', 100.99, 310);

INSERT INTO test.menu_item (menu_item_id, menu_item_description, menu_item_price, oorder_menu_item_id)
VALUES(2, 'Filet drobiowy z ziemniakami', 250.75, 330);

INSERT INTO test.menu_item (menu_item_id, menu_item_description, menu_item_price, oorder_menu_item_id)
VALUES(3, 'Pierogi ruskie', 99.80, 340);

INSERT INTO test.menu_item (menu_item_id, menu_item_description, menu_item_price, oorder_menu_item_id)
VALUES(4, 'Pierogi ruskie', 45.90, 350);

INSERT INTO test.menu_item (menu_item_id, menu_item_description, menu_item_price, oorder_menu_item_id)
VALUES(5, 'Szarlotka', 150, 320);


INSERT INTO test.menu (menu_id, menu_date, menu_item_id)
VALUES(1, '2022-01-10 12:14:18', 4);

INSERT INTO test.menu (menu_id, menu_date, menu_item_id)
VALUES(2, '2022-01-10 13:12:14', 2);

INSERT INTO test.menu (menu_id, menu_date, menu_item_id)
VALUES(3, '2022-01-11 12:10:19', 5);

INSERT INTO test.menu (menu_id, menu_date, menu_item_id)
VALUES(4, '2022-01-12 16:12:12', 3);

INSERT INTO test.menu (menu_id, menu_date, menu_item_id)
VALUES(5, '2022-01-12 19:12:15', 1);




INSERT INTO test.menu_item_ingredient (menu_item_ingredient_id, item_quantity, menu_item_id)
VALUES(222, 10, 4);

INSERT INTO test.menu_item_ingredient (menu_item_ingredient_id, item_quantity, menu_item_id)
VALUES(223, 6, 2);

INSERT INTO test.menu_item_ingredient (menu_item_ingredient_id, item_quantity, menu_item_id)
VALUES(224, 3, 1);

INSERT INTO test.menu_item_ingredient (menu_item_ingredient_id, item_quantity, menu_item_id)
VALUES(225, 9, 3);

INSERT INTO test.menu_item_ingredient (menu_item_ingredient_id, item_quantity, menu_item_id)
VALUES(226, 12, 5);




INSERT INTO test.ingredients (ingredient_id, ingredient_name, menu_item_ingredient_id)
VALUES(1, 'burak', 225);

INSERT INTO test.ingredients (ingredient_id, ingredient_name, menu_item_ingredient_id)
VALUES(2, 'kurczak', 223);

INSERT INTO test.ingredients (ingredient_id, ingredient_name, menu_item_ingredient_id)
VALUES(3, 'ser', 222);

INSERT INTO test.ingredients (ingredient_id, ingredient_name, menu_item_ingredient_id)
VALUES(4, 'galaretka', 226);

INSERT INTO test.ingredients (ingredient_id, ingredient_name, menu_item_ingredient_id)
VALUES(5, 'maka', 224);
