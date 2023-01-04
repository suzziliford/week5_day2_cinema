drop table if exists movie;


create table customer(
	customer_id serial primary key not null,
	first_name VARCHAR(50) not null, 
	last_name VARCHAR(50) not null, 
	email VARCHAR	(100),
	dob NUMERIC(8),
	loyalty_member boolean default false
);

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

create table movie (
	movie_id serial primary key not null,
	movie_title VARCHAR(100) not null, 
	ratings_classification VARCHAR (4),
	director VARCHAR(50),
	runtime INTEGER,
	producer VARCHAR(50),
	release_date NUMERIC(8)
	);

select *
from customer;

select *
from movie;