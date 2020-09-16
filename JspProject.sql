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
record      number(10),
category    VARCHAR2(20)
);

create table product_order(
num		 number primary key,
p_num		 number references product(num) on delete cascade,
o_quantity	 number,
total_price	 number,
m_id		 varchar2(20) references member(id) on delete cascade,
o_date		 date,
o_state		 number,
d_state		 number,
p_size       varchar2(3),
r_state      number,
code_num     number
);

create table review(
num     number primary key,
m_id    varchar2(20) references member(id) on delete cascade,
p_num   number references product(num) on delete cascade,
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

------------------------------------------- product테이블에 review 테이블 rate 조인한 결과 뷰로 생성
create or replace view RatingInProduct as
select p.num, p.name, p.price, p.img, p.content, p.e_date, p.record, p.category, nvl(r.rate, 0) rate
from product p left join (select p_num, avg(rate) as rate from review group by p_num) r on p.num=r.p_num; 
----------------------------------------------------------------------------------------------------


create SEQUENCE seq_review;
create SEQUENCE seq_product_size;
create SEQUENCE seq_product_image;
create SEQUENCE seq_shop_product;
create SEQUENCE seq_notice;
create SEQUENCE seq_product_order;



alter table product_order add code_num number;

-----------------------------orderInfo table 추가 --------------------------------------------------------
create table orderInfo (
num number primary key,
oi_id varchar2(50),
oi_name varchar2(30), 
oi_phone varchar2(50),
oi_email varchar2(30),
oi_addr_full varchar2(500),
oi_addr_zipNo varchar2(15),
oi_addr_roadAddrPart1 varchar2(500),
oi_addr_roadAddrPart2 varchar2(500),
oi_addr_addrDetail varchar2(500),
oi_deliMessage varchar2(300),
oi_howPay varchar2(200),
oi_usePoint number(10),
oi_originTotalPrice number(20),
oi_totalPrice number(20),
oi_orderDate date,	
oi_code_num varchar2(300),
add_name varchar2(30),
add_phone1 varchar2(50),
add_phone2 varchar2(50),
add_email varchar2(200),
add_addr_full varchar2(500),
add_addr_zipNo varchar2(15),
add_addr_roadAddrPart1 varchar2(500),
add_addr_roadAddrPart2 varchar2(500),
add_addr_addrDetail varchar2(500)
);
-------------------------------------------------------------------------------------------


----------------------------orderinfo sequence -----------------
create sequence seq_orderInfo;
-----------------------------------------------------------------

------------------Product_order table의 code_num 속성 number에서 varchar2(200)으로 수정 ----------
alter table product_order modify(code_num varchar2(200));

-------------------------------------------------------------------------------------------