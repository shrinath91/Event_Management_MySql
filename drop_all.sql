drop procedure if exists drop_All;
delimiter #
create procedure drop_All()
begin
	drop table if exists booking;
	drop table if exists cancel_booking;
	drop table if exists event;
	drop table if exists user;
	drop table if exists service;
	

end#
delimiter ;

call drop_All();
