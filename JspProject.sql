create table member(
id 	 varchar2(20) primary key,
pwd	 varchar2(20),
name	 varchar2(20),
email	 varchar2(50),
addr	 varchar2(50),
type 	 number,
point   number(10)
);

create table product(
num		 number primary key,
name		 varchar2(500) not null,
price		 number not null, 
img		 varchar2(500),
content   	varchar2(500),
e_date        date,
record      number(10)
);

create table product_order(
num		 number primary key,
p_num		 number references product(num) on delete cascade,
o_quantity	 number,
total_price	 number,
m_id		 varchar2(20) references member(id) on delete cascade,
o_date		 date,
o_state		 number,
d_state		 number
);

create table review(
num     number primary key,
m_id    varchar2(20) references member(id) on delete cascade,
rate    number,
content   	varchar2(500),
img     varchar2(500),
r_date  date
);

create table notice(
num     number primary key,
title   varchar2(50),
content clob,
n_date    date,
view_count number
);


create table product_image(
num     number primary key,
p_num    number(20) references product(num) on delete cascade,
img     varchar2(500)
);

create table product_size(
num     number primary key,
p_num    number(20) references product(num) on delete cascade,
psize    varchar2(10),
quantity    number
);




create SEQUENCE seq_shop_product;
create SEQUENCE seq_notice;