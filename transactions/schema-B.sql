create table Planes (
	pid integer primary key,
	num_seats integer
);

create table Flights (
	fid integer primary key,
	pid integer references Planes
);

create table Reservations (
	pa_id integer,
	fid integer references Flights,
	seat_number integer,
	primary key (pa_id, fid)
);
