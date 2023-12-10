insert into event(event_name,event_price) values
('Marriage',40000),
('Baby Shower',20000),
('Birthday',30000);

insert into service(service_name, service_price) values
('Decoration',15000),
('Catering',18000),
('Makeup',5000);

insert into user(user_name,password,contact,email) values
('Daulat Rattan','daulat@2',9387846357,'daulatrattan@gmail.com'),
('Suyash Bapat' ,'yash@92'  ,9387846357,'suyash92@gmail.com'),
('Radha T'      ,'radha@92' ,9677846357,'radha92@gmail.com'),
('Anuj Kinge'   ,'anuj@92'  ,8387846357,'anuj87@gmail.com'),
('Ram Vedpathak','ram@72'   ,9387768957,'ram654@gmail.com'),
('Tokas Singh'  ,'tokas@4' ,7887846357,'tokassingh@gmail.com')
;


insert into booking(user_id, Booking_date, event_date, event_id, service_code1, service_code2, service_code3, Venue) values
(905, curdate(),'2024-12-12',1,1,0,1,'Jackson Inn');



insert into cancel_booking(booking_id,user_id,booking_date,event_date, event_id, service_code1, service_code2, service_code3, venue,total_amount, cancel_date) 
values
(100, 901,'2000-12-12','2000-12-19',3,1,1,0,'Hotel Land',30000,'2000-12-13'),
(9012,902,'2018-12-19','2018-12-21',3,1,0,1,'Raga Palace',45000,'2018-12-1');


insert into booking(user_id, Booking_date, event_date, event_id, service_code1, service_code2, service_code3, Venue) values
(905, curdate(),'2024-12-13',1,1,0,1,'Jackson Inn');
