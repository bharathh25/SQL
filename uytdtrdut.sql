use task;

create table orders( id int unique not null, order_name varchar(20), order_id varchar(20) primary key, created_at timestamp, created_by varchar(20),
					modified_at timestamp, modified_by varchar(20));
                    
create table payment( id int unique not null, price bigint, payment_id varchar(20) primary key,foreign key(order_id) references orders(order_id), 
					payment_status enum('Online', 'Cash'), created_at timestamp, created_by varchar(20), modified_at timestamp, modified_by varchar(20));
                    
create table restaurant(id int unique not null, restaurant_name varchar(20), restaurant_id varchar(20) primary key,loc varchar(20), 
						foreign key(order_id) references orders(order_id),ratings bigint,foreign key(payment_id) references payment(payment_id), created_at timestamp,created_by varchar(20),
						modified_at timestamp, modified_by varchar(20));
					
create table delivery(id int unique not null , person_name varchar(20), mode_of_payment enum('Online', 'Cash'), foreign key (restaurant_id) references restaurant(restaurant_id),
						foreign key(order_id) references orders(order_id), created_at timestamp, created_by varchar(20),
                        modified_at timestamp, modified_by varchar(20));         
                        
insert into orders ( id, order_name, order_id, created_at, created_by,modified_at , modified_by ) values
			(1,'Masala Dose', 'BLR123',now(),'Bharath', now(),'Bharath'),
 			(2,'Biryani', 'BLR456',now(),'Kamlesh', now(),'Kamlesh'),
			(3,'Idly Vada', 'BLR789',now(),'Arun', now(),'Arun'),
			(4,'Pizza', 'BLR012',now(),'Sachin', now(),'Sachin'),
			(5,'Indian Thali', 'BLR345',now(),'Sunil', now(),'Sunil');
            
insert into payment( id, price , payment_id,order_id,payment_status, created_at, created_by, modified_at, modified_by) values
(1,200.00,'Pay123','BLR123','Online',now(),'Bharath', now(),'Bharath'),
(2,200.00,'Pay456','BLR456','Offline',now(),'Kamlesh', now(),'Kamlesh'),
(3,200.00,'Pay789','BLR789','Online',now(),'Arun', now(),'Arun'),
(4,200.00,'Pay012','BLR012','Online',now(),'Sachin', now(),'Sachin'),
(5,200.00,'Pay345','BLR345','Offline',now(),'Sunil', now(),'Sunil');

                       
insert into restaurant(id, restaurant_name, restaurant_id,loc, order_id,ratings,payment_id, created_at,created_by,
						modified_at , modified_by) values
(1,'CTR','Res123','Malleshwaram','BLR123',4.5,'Pay123','Bharath',now(), now(),'Bharath'),
(2,'Meghana Foods','Res456','Jaynagar','BLR456',4.3,'Pay456','Kamlesh',now(), now(),'Kamlesh'),
(3,'Raghavendra Stoes','Res789','Malleshwaram','BLR789',4.1,'Pay789','Arun',now(), now(),'Arun'),
(4,'Dominos','Res012','Nagarbhavi','BLR012',4.6,'Pay012','Sachin',now(), now(),'Sachinj'),
(5,'Ayodhya Grand','Res345','Rajajinagar','BLR345',4.5,'Pay345','Sunil',now(), now(),'Sunil');

insert into delivery(id, person_name, mode_of_payment,restaurant_id,order_id, created_at , created_by ,
                        modified_at , modified_by) values
(1,'Nisarga','Online','Res123','BLR123',now(),'admin1',now(),'admin1'),
(2,'Ajay','Offline','Res456','BLR456',now(),'admin1',now(),'admin1'),
(1,'Ramesh','Online','Res789','BLR789',now(),'admin1',now(),'admin1'),
(1,'Suresh','Online','Res012','BLR012',now(),'admin1',now(),'admin1'),
(1,'Om','Offline','Res345','BLR345',now(),'admin1',now(),'admin1');



