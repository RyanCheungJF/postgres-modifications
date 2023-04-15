-- Reserve transaction for Part B
-- Input parameter: (1) flight_num and (2) passenger_id
-- Local variables: p, nr, ns
begin;

select pid into p
from Flights
where fid = flight_num;

select num_seats into ns
from Planes
where pid = p;

select coalesce(max(seat_number),0) into nr
from Reservations
where fid = flight_num;

if (nr < ns) then
	insert into Reservations values (passenger_id, flight_num, nr+1);
	commit;
else
	rollback;
end if;
