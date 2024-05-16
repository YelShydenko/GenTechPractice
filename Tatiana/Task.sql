CREATE TABLE txs (
	id int primary key auto_increment,
	created_at timestamp not NULL default current_timestamp,
	sender_account_id int not null,
	recipient_account_id int not null,
	amount float not null,
	`comment` varchar(240) not null,

	foreign key(sender_account_id) references accounts(id),
	foreign key(recipient_account_id) references accounts(id)
);
INSERT INTO txs (sender_account_id, recipient_account_id, amount, `comment`)
VALUES
	(3, 4, 1500.00, 'Transfer of personal funds'),
	(3, 4, 100.00, 'Payment for the goods'),
	(4, 3, 200.00, 'Transfer of personal funds');
