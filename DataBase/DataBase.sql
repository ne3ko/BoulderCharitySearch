-- Script to auto populate our database
-- Author: Nikolai Alexander

-- Delete tables to avoid duplicte entries
DROP TABLE if exists charity, financial;


-- Recreate tables
create table if not exists charity(
	charity_id serial, 
	charity_name varchar(100) not null, 
	address varchar(70) not null,
	city varchar(20) not null,
	state varchar(2) not null,
	zipcode varchar(6) not null,
	url varchar(200),
	phone_number varchar(12),
	email varchar(100),
	category_name varchar(30) not null, 
	charity_description varchar(2000) not null, 
	charity_tag varchar(800) not null, 
	logo varchar(1000) not null,
	ruling_year varchar(4) not null,
	primary key (charity_id)
);

create table if not exists financial(
	charity_id serial, 
	assets varchar(20), 
	income varchar(20),
	expenses varchar(20),
	irs_form varchar(200), 
	primary key (charity_id)
);


-- Copy information from charity.csv and financial.csv
COPY charity
FROM 'DataBase/charity.csv'
DELIMITERS ',' CSV;

COPY financial
FROM 'DataBase/financial.csv'
DELIMITERS ',' CSV;