INSERT INTO roles (name, permission) VALUES ('not logined user', 'watch sale announcements'); 
INSERT INTO roles (name, permission) VALUES ('logined user', 'not logined user + make rent');
INSERT INTO roles (name, permission) VALUES ('landlord', 'logined user + add sale announcements');
INSERT INTO roles (name, permission) VALUES ('moderator', 'delete sale announcements, block users, watch logs');
INSERT INTO roles (name, permission) VALUES ('admin', 'moderator + users CRUD operations');

SELECT * FROM roles;


INSERT INTO account (username, password) VALUES ('machetta', 'qww123wwq');
INSERT INTO account (username, password) VALUES ('imaksus', 'ya_dadya_mitya');
INSERT INTO account (username, password) VALUES ('kefir228', 'cheel_horosh');
INSERT INTO account (username, password) VALUES ('erratic_cyclops', 'from_poland');

SELECT * FROM account; 


INSERT INTO users (role_id, account_id, email, telephone, date_of_birth) VALUES (2, 1, 'machetta228@gmail.com', '+375291234567', '2002-12-03');
INSERT INTO users (role_id, account_id, email, telephone, date_of_birth) VALUES (2, 2, 'imaksus@gmail.com', '+375445678901', '2003-02-16');
INSERT INTO users (role_id, account_id, email, telephone, date_of_birth) VALUES (2, 3, 'badkefir@gmail.com', '+375445673423', '2005-04-06');
INSERT INTO users (role_id, account_id, email, telephone, date_of_birth) VALUES (2, 4, 'erratic_blin@gmail.com', '+4878882345', '2001-07-23');

SELECT * FROM users;


INSERT INTO landlords (user_id, special_key) VALUES (2, 'Rni7h98Bay');
INSERT INTO landlords (user_id, special_key) VALUES (4, '45vdeNWE3s');

SELECT * FROM landlords;


INSERT INTO user_logs (user_id, message) VALUES (1, 'user 1 logined');
INSERT INTO user_logs (user_id, message) VALUES (2, 'user 2 logined');
INSERT INTO user_logs (user_id, message) VALUES (2, 'user 2 became landlord');
INSERT INTO user_logs (user_id, message) VALUES (2, 'user 2 add car to rent');
INSERT INTO user_logs (user_id, message) VALUES (3, 'user 3 logined');
INSERT INTO user_logs (user_id, message) VALUES (4, 'user 4 became landlord');
INSERT INTO user_logs (user_id, message) VALUES (2, 'user 2 add car to rent');

SELECT * FROM user_logs;


INSERT INTO brand (name, model) VALUES ('BMW', '3-series');
INSERT INTO brand (name, model) VALUES ('Audi', 'A6');
INSERT INTO brand (name, model) VALUES ('Mercedes-benz', 'S-class');
INSERT INTO brand (name, model) VALUES ('Nissan', '350Z');
INSERT INTO brand (name, model) VALUES ('BMW', 'X5');
INSERT INTO brand (name, model) VALUES ('Subaru', 'Impreza WRX');

SELECT * FROM brand;


INSERT INTO car_type (type_name) VALUES ('sedan'), ('wagon'), ('hatchback'), ('pick up'), ('SUV'), ('coupe');

SELECT * FROM car_type;


INSERT INTO car (landlord_id, car_type_id, brand_id, fuel_type, seats_count, color, registration_plate, price_per_hour) VALUES (1, 6, 4, 'petrol', 2, 'yellow', '0350 IT-7', 45);
INSERT INTO car (landlord_id, car_type_id, brand_id, fuel_type, seats_count, color, registration_plate, price_per_hour) VALUES (1, 1, 2, 'diesel', 5, 'dark-blue', '1265 BM-7', 35);
INSERT INTO car (landlord_id, car_type_id, brand_id, fuel_type, seats_count, color, registration_plate, price_per_hour) VALUES (2, 2, 1, 'petrol', 5, 'black', '0340 MM-7', 60);
INSERT INTO car (landlord_id, car_type_id, brand_id, fuel_type, seats_count, color, registration_plate, price_per_hour) VALUES (2, 1, 3, 'diesel', 5, 'grey', '8888 CP-5', 40);
INSERT INTO car (landlord_id, car_type_id, brand_id, fuel_type, seats_count, color, registration_plate, price_per_hour) VALUES (2, 1, 6, 'petrol', 5, 'light blue', '2525 AC-2', 55);
INSERT INTO car (landlord_id, car_type_id, brand_id, fuel_type, seats_count, color, registration_plate, price_per_hour) VALUES (2, 5, 5, 'diesel', 7, 'marakish brown', '5555 XX-7', 65);

SELECT * FROM car;


INSERT INTO car_images (car_id, url) VALUES (3, 'BMW 3-series photo'), (2, 'Audi A6 photo'), (4, 'Mercedes-benz S-class photo');
INSERT INTO car_images (car_id, url) VALUES (1, 'Nissan 350Z photo'), (6, 'BMW X5 photo'), (5, 'Subaru Impreza WRX photo');

SELECT * FROM car_images;


INSERT INTO pick_up_point (reception_point, issue_point) VALUES ('Minsk, Kavaleriyskaya street', 'Minsk, Partizanskaya street');
INSERT INTO pick_up_point (reception_point, issue_point) VALUES ('Vitebsk, Zamkovaya street', 'Grodno, Sovetskaya street');
INSERT INTO pick_up_point (reception_point, issue_point) VALUES ('Mogilev, Pervomayskaya street', 'Brest, Kosmonavtov street');
INSERT INTO pick_up_point (reception_point, issue_point) VALUES ('Gomel, Biletskogo street', 'Mogilev, Pervomayskaya street');
INSERT INTO pick_up_point (reception_point, issue_point) VALUES ('Grodno, Sovetskaya street', 'Minsk, Partizanskaya street');
INSERT INTO pick_up_point (reception_point, issue_point) VALUES ('Gomel, Biletskogo street', 'Vitebsk, Zamkovaya street');

SELECT * FROM pick_up_point;


INSERT INTO rental_deal (user_id, car_id, pick_up_id, start_date, end_date, total_price) VALUES (1, 3, 4, '2022-11-11', '2022-12-12', 44.640);
INSERT INTO rental_deal (user_id, car_id, pick_up_id, start_date, end_date, total_price) VALUES (1, 4, 2, '2022-09-01', '2022-09-03', 2880);
INSERT INTO rental_deal (user_id, car_id, pick_up_id, start_date, end_date, total_price) VALUES (3, 2, 1, '2022-12-11', '2022-12-12', 840);
INSERT INTO rental_deal (user_id, car_id, pick_up_id, start_date, end_date, total_price) VALUES (2, 6, 3, '2023-01-23', '2023-01-28', 3000);

SELECT * FROM rental_deal;


INSERT INTO tax (tax_name, tax_percent, price) VALUES ('main tax', 13.6, 567.745);
INSERT INTO tax (tax_name, tax_percent, price) VALUES ('direct tax', 1.16, 35.5);
INSERT INTO tax (tax_name, tax_percent, price) VALUES ('luxury tax', 6.8, 123.4);
INSERT INTO tax (tax_name, tax_percent, price) VALUES ('excise tax', 3.3, 76.45);
INSERT INTO tax (tax_name, tax_percent, price) VALUES ('regressive tax', 1.1, 34);
INSERT INTO tax (tax_name, tax_percent, price) VALUES ('eventual tax', 7.7, 146.7);

SELECT * FROM tax;


INSERT INTO tax_filling (tax_id, rental_deal_id) VALUES (1, 1);
INSERT INTO tax_filling (tax_id, rental_deal_id) VALUES (2, 1);
INSERT INTO tax_filling (tax_id, rental_deal_id) VALUES (4, 1);
INSERT INTO tax_filling (tax_id, rental_deal_id) VALUES (2, 2);
INSERT INTO tax_filling (tax_id, rental_deal_id) VALUES (3, 2);
INSERT INTO tax_filling (tax_id, rental_deal_id) VALUES (1, 3);
INSERT INTO tax_filling (tax_id, rental_deal_id) VALUES (4, 3);
INSERT INTO tax_filling (tax_id, rental_deal_id) VALUES (2, 3);
INSERT INTO tax_filling (tax_id, rental_deal_id) VALUES (3, 4);

SELECT * FROM tax_filling;
