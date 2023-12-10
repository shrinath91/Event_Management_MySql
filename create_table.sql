drop table if exists booking;
drop table if exists cancel_booking;
drop table if exists event;
drop table if exists user;
drop table if exists service;


create table event
(
  Event_id	 	int auto_increment, 
  event_name 		varchar(12) 		unique,
  event_price 		float(9,2) 		not null,

  constraint pk_eid primary key(event_id)
);

create table user
(
   User_id		int auto_increment, 
   user_name 		varchar(30) 		unique,
   password  		varchar(15) 		not null,
   contact 		bigint 			not null,
   email 		varchar(30) 		unique,

   constraint pk_uid primary key(user_id)
);

create table service 
(
   service_id 		int auto_increment,
   service_name 	varchar(12)             not null,
   service_price 	float(9,2)              not null,

   constraint pk_service_id primary key(service_id)
);

create table booking 
(
   Booking_id		int auto_increment,
   user_id 		int,
   Booking_date	 	date 			not null,
   event_date 		date 			unique,
   event_id 		int,
   service_code1        int,
   service_code2        int,
   service_code3        int,
   Venue		varchar(20),
   Total_amount	    	float(9,2) 		not null,
  
   constraint pk_booking_id primary key(booking_id),
   constraint fk_event_id foreign key(event_id) references event(event_id) on delete set null,
   constraint fk_user_id foreign key(user_id) references user(user_id) on delete set null
  
);
 

create table cancel_booking
(
   cancel_id		int auto_increment,
   Booking_id		int,
   user_id 		int,
   Booking_date	 	date 			not null,
   event_date 		date 			unique,
   event_id 		int,
   service_code1        int,
   service_code2        int,
   service_code3        int,
   Venue		varchar(20),
   Total_amount	    	float(9,2) 		not null,
   cancel_date 		date			not null,
  
   constraint pk_cancel_id primary key(cancel_id),
   constraint fk_cancel_event_id foreign key(event_id) references event(event_id) on delete set null,
   constraint fk_cancel_user_id foreign key(user_id) references user(user_id) on delete set null

);





drop procedure if exists set_idAll;
delimiter #
create procedure set_idAll()
begin
	alter table event auto_increment=1;
	
	alter table user auto_increment=900;
		
	alter table booking auto_increment=1000;
	
	alter table service auto_increment=10;

	alter table cancel_booking auto_increment=1;
end#
delimiter ;
call set_idAll;


