CREATE TABLE transact (
id int primary key auto_increment,
created_at timestamp not null default current_timestamp,
sender_account_id int not null,
recipient_account_id int not null,
amount double NOT null,
comment varchar(150),

foreign key(sender_account_id) references accounts(id),
foreign key(recipient_account_id) references accounts(id)
);


 INSERT INTO transact (sender_account_id, recipient_account_id, amount,comment)
VALUES
(1, 2, 100, 'for books'),
(1, 2, 5, 'debt'),
(2, 1, 81, 'payment for services'),
(1, 2, 63, 'English lessons'),
(2, 1, 75, 'for magazines'),
(3, 2, 20, 'for books'),
(1, 3, 1000, 'for dress');