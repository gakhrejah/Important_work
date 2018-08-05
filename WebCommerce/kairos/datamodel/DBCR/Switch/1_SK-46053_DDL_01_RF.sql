create table sk_price(
price_on_request          numeric(1),   
supplier_org_id          varchar2(10), 
price_id         varchar2(40) not null,
constraints 		sk_price_pk primary key (price_id));

create table sk_price_level(
currency                 varchar2(5),  
unit_of_measure          varchar2(3),  
price_level_id  varchar2(40) not null,
constraints 		sk_price_level_pk primary key (price_level_id));

alter table sk_prd_locale_info drop(locale_spec_attr);
