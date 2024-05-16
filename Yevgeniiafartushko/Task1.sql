--добавить таблицу транзакции
CREATE TABLE txs (
id int primary key auto_increment,
created_at timestamp not null default current_timestamp,
sender_account_id int not null,
recipient_account_id int not null,
amount double not null,
comment varchar(240),

foreign key(sender_account_id) references accounts(id),
foreign key(recipient_account_id) references accounts(id)
);

-- внесение записей в таблиу транзакции
insert into txs (sender_account_id, recipient_account_id, amount, comment)
values
(1, 4, 1500.00, 'Transfer of personal funds'),
(2, 5, 100.00, 'Payment for the goods'),
(5, 6, 200.00, 'Transfer of personal funds');