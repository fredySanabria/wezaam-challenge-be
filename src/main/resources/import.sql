INSERT INTO users VALUES (1, 'David', 100, 4);
INSERT INTO users VALUES (2, 'Arnold', 200, 2);
INSERT INTO users VALUES (3, 'Ilona', 150, 3);

INSERT INTO payment_methods (user_id, name) VALUES (1, 'My bank account');
INSERT INTO payment_methods (user_id, name) VALUES (1, 'My mom account');
INSERT INTO payment_methods (user_id, name) VALUES (2, 'Work account');
INSERT INTO payment_methods (user_id, name) VALUES (3, 'My bank account');
INSERT INTO payment_methods (user_id, name) VALUES (3, 'Secret account');