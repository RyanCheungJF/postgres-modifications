-- Reserve transaction for Part A
-- Input parameter: (1) flight_num and (2) passenger_id
-- Local variables: p, nr, ns
begin;

select pid, num_reserved_seats into p,  nr
from Flights
where fid = flight_num;

select num_seats into ns
from Planes
where pid = p;

if (nr < ns) then
	update Flights
	set num_reserved_seats = nr + 1
	where fid = flight_num;

	insert into Reservations values (passenger_id, flight_num, nr+1);
	commit;
else
	rollback;
end if;
