CREATE TABLE TRANSACTION (
  id int primary key auto_increment,
  created_at timestamp not null default current_timestamp,
  sender_account_id int not null,
  reciptient_account_id int not null,
  amount float not null,
  COMMENT varchar(100),
  
  foreign key(sender_account_id) references accounts(id),
  foreign key(reciptient_account_id) references accounts(id)
  )