insert into customer(
	first_name,
	last_name,
	email,
	loyalty_member,
	dob
) values (
	'Dingo',
	'Spender',
	'dangrangus@gmail.com',
	true,
	'01011970'
);

insert into customer values(
	5,
	'Jeanette',
	'Moran',
	'corvettejeanette@hottrail.com',
	'01201990',
	false
);

select *
from customer;

4	Dingo	Spender	dangrangus@gmail.com	1011970	true
5	Jeanette	Moran	corvettejeanette@hottrail.com	1201990	false

insert into movie(
	movie_title,
	ratings_classification,
	director, 
	runtime,
	producer,
	release_date
) values (
	'Mumbo_Jumbo',
	'R',
	'Hugo Pogo',
	'120',
	'Sheena Sloan',
	'02192022'
);

insert into movie values(
	3,
	'The Lyre of Fiscardo',
	'M',
	'Sophi Kistavo',
	'140',
	'Dimitri Alexopoulos',
	'04212022'
);

select *
from movie;

1	Mumbo_Jumbo	R	Hugo Pogo	120	Sheena Sloan	2192022
3	The Lyre of Fiscardo	M	Sophi Kistavo	140	Dimitri Alexopoulos	4212022

insert into ticket (
	order_id,
)

create table ticket(
	order_id serial primary key, 
	purchase_date TIMESTAMP,
	customer_id INTEGER not null,
	foreign key(customer_id) references customer(customer_id),
	movie_id serial not null,
	foreign key(movie_id) references movie(movie_id),
	cinema integer,
	price numeric(5,2),
	showtime INTEGER,
	seat INTEGER
);
