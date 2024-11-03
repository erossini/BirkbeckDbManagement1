-- insert values into table user
INSERT INTO user (name) VALUES
('Anna'), ('Smith'),('Tom'),('Alex'),('Ola'),('Richard'),('Harry'), ('Margaret'),('Fred');

-- insert values into table item
INSERT INTO item VALUES (1,'Anna Karenina',NULL ,21.30);
INSERT INTO item VALUES (2,'Oliver Twist',NULL ,30.30);
INSERT INTO item VALUES (3,'The Odyssey',NULL ,3.00);
INSERT INTO item VALUES (4,'Crime and Punishment',"AudioBook" ,15.00);
INSERT INTO item VALUES (5,'Pride and Prejudice',"AudioBook" ,30.00);
INSERT INTO item VALUES (6,'The Book of Tea',"AudioBook" ,134.00);
INSERT INTO item VALUES (7,'Heban',"Book" ,4.99);
INSERT INTO item VALUES (8,'Collection',"AudioBook" ,999.00);
INSERT INTO item VALUES (9,'The Name of The Rose',"Book" ,166.00);
INSERT INTO item VALUES (10,'A Passage to India',"Book" ,125.00);


-- insert values into table buys
INSERT INTO buys VALUES (1,1,30.00);
INSERT INTO buys VALUES (1,2,10.00);
INSERT INTO buys VALUES (2,5,30.00);
INSERT INTO buys VALUES (3,1,21.30);
INSERT INTO buys VALUES (5,4,8.00);
INSERT INTO buys VALUES (2,8,950.00);
INSERT INTO buys VALUES (2,6,134.00);
INSERT INTO buys VALUES (1,8,999.00);

-- insert values into table rates
INSERT INTO rates VALUES (3,1,5);
INSERT INTO rates VALUES (3,2,1);
INSERT INTO rates VALUES (1,5,4);
INSERT INTO rates VALUES (4,1,5);
INSERT INTO rates VALUES (2,3,3);
INSERT INTO rates VALUES (7,5,2);
INSERT INTO rates VALUES (9,1,2);
