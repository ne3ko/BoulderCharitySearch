create table if not exists Charity(id serial, charityName varchar(40) not null, logo varchar(70) not null, summary varchar (2000) not null, financeSummary varchar (2000) not null, primary key (id))
create table if not exists financeSummary(id serial, programExpenses varchar(5), revenue varchar(5), )
create table if not exists catagories(id serial, )
insert into store(charityName, logo, summary financeSummary) values()