DROP TABLE store CASCADE CONSTRAINTS;
CREATE TABLE store (
	storename 	varchar2(15),
	num_of_aisles	number(2),
	primary key (storename)
);

DROP TABLE aisle CASCADE CONSTRAINTS;
CREATE TABLE aisle (
	astorename	varchar2(15) not null,
	aisle_number	number(2),
	location	varchar2(5),
	primary key (aisle_number)
	foreign key (astorename) references store (storename)
);

DROP TABLE product CASCADE CONSTRAINTS;
CREATE TABLE product (
	pstorename	varchar2(15) not null,
	productname	varchar2(15) not null,
	productid	varchar2(10),
	numberstocked	number(4),
	price		number(6),
	anum		number(2),
	primary key (productid),
	foreign key (anum) references aisle (aisle_number),
	foreign key (pstorename) references store (storename)
);

DROP TABLE food CASCADE CONSTRAINTS;
CREATE TABLE food (
	fname		varchar2(15) not null,
	fprodid		varchar2(10),
	primary key (fprodid),
	foreign key (fprodid) references product (productid)
);

DROP TABLE utility CASCADE CONSTRAINTS;
CREATE TABLE utility (
	uname		varchar2(15) not null,
	uprodid		varchar2(10),
	primary key (uprodid),
	foreign key (uprodid) references product (productid)
);

DROP TABLE decoration CASCADE CONSTRAINTS;
CREATE TABLE decoration (
	dname		varchar2(15) not null,
	dprodid		varchar2(10),
	primary key (dprodid),
	foreign key (dprodid) references product (productid)
);

DROP TABLE other CASCADE CONSTRAINTS;
CREATE TABLE other (
	oname		varchar2(15) not null,
	oprodid		varchar2(10),
	primary key (oprodid),
	foreign key (oprodid) references product (productid)
);