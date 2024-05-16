Create table txs(id int primary key auto_increment, 
created_at timestamp not null default current_timestamp, 
sender_account_id int not null,   
recipient_account_id int not null,  
amount float not null default 0,     
comment varchar(64) not null,  

     foreign key(sender_account_id) references accounts(id), 
      foreign key(recipient_account_id) references accounts(id)        
        )