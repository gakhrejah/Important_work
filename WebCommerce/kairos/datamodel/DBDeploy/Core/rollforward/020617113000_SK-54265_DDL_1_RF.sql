/***
*** Requester Name:  	Ankita Jindal
*** Purpose :		 	SK-54265 
*** Schema  :		 	CORE
*** Date of Request : 	May 31, 2017
***/

create table sk_basic_saved_configuration (
uuid varchar2(255) not null,
user_id varchar2(255),
product_id varchar2(200) not null,
overridden_config_id number(4) not null,
file_path varchar2(255) not null,
is_reconfigurable number(1) not null,
status number(5) not null,
used_before date,
total_order_value number,
last_modified_date date,
primary key (uuid)
);

create index uuid_search
on sk_basic_saved_configuration (user_id, product_id); 

create table sk_basket_items (
idx varchar2(255) not null ,
uuid varchar2(255) not null,
basket_item_list varchar(40),
primary key (idx,uuid), 
foreign key (uuid)
references sk_basic_saved_configuration(uuid)
);

create table sk_basket_item_configuration (
id varchar2(255) not null,
basket_item_id number not null,
article_name clob not null,
article_number varchar2(200) not null,
eline_options clob,
cline_options clob,
article_description clob,
item_status number(5) not null,
quantity number not null,
list_price number,
customer_price number,
total_price number,
discount number,
payment_type varchar2(255),
contract_duration varchar2(255),
contract_start_date date,
contract_end_date date,
is_iquote number(1),
primary key (id)
);