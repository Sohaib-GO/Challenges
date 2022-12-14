INSERT INTO users (name, email, password)
VALUES ('Malik','example@gmail.com' ,'$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.' ),
('John','john@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Jane','jane@hotmail.com' ,'$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.' );



INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active)
VALUES (1, 'Castle', 'A beautiful castle', 'https://tinyurl.com/y3q2q9x8', 'https://tinyurl.com/y3q2q9x8', 100, 5, 2, 3, 'Canada', '123 Castle Road', 'Toronto', 'Ontario', 'M5A 1B2', true),
(1, 'House', 'A beautiful house', 'https://tinyurl.com/y3q2q9x8', 'https://tinyurl.com/y3q2q9x8', 100, 5, 2, 3, 'Canada', '123 House Road', 'Toronto', 'Ontario', 'M5A 1B2', true),
(2, 'Apartment', 'A beautiful apartment', 'https://tinyurl.com/y3q2q9x8', 'https://tinyurl.com/y3q2q9x8', 100, 5, 2, 3, 'Canada', '123 Apartment Road', 'Toronto', 'Ontario', 'M5A 1B2', true);

INSERT INTO reservations (start_date, end_date, property_id, guest_id)
VALUES ('2019-10-01', '2019-10-10', 1, 2),
('2019-10-01', '2019-10-10', 2, 3),
('2019-10-01', '2019-10-10', 3, 1);

INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
VALUES (1, 1, 1, 5, 'Great place'),
(2, 2, 2, 3, 'Good place'),
(3, 3, 3, 2, 'OK place');

