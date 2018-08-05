/***
*** Requester Name:  	Mahipal Singh
*** Purpose :		 	adding new column and table 
*** Schema  :		 	SWITCH_A,SWITCH_B,SWITCH_STAGE_A,SWITCH_STAGE_B
*** Date of Request : 	April 25, 2017
***/

alter table sk_bild_title modify  BILD_ID_TITLE varchar2(1024);

alter table sk_price add last_mod_date timestamp(6);
alter table sk_price_level add (last_mod_date timestamp(6),
price_unit number(5,0));
create table sk_complex_price(
asset_version   	int   not null,
complex_price_id VARCHAR2(40),
last_mod_date 		timestamp(6),
constraint 		sk_complex_price_pk primary key (complex_price_id,asset_version));

alter table sk_product add(
WEIGHT_ON_REQUEST                  NUMBER(1),     
SIOS_FLAG                          VARCHAR2(10)); 

create table sk_rohbasis(
		rohbasis_key 		varchar(40),
		rohbasis_value 		varchar(40),
		product_id 		varchar2(40),
		constraints 		sk_rohbasis_pk primary key (product_id,rohbasis_key));
		
create table sk_rohschrittw(
		rohschrittw_key 		varchar(40),
		rohschrittw_value 		varchar(40),
		product_id 		varchar2(40),
		constraints 		sk_rohschrittw_pk primary key (product_id,rohschrittw_key));
create table sk_rohprozs(
		rohprozs_key 		varchar(40),
		rohprozs_value 		varchar(40),
		product_id 		varchar2(40),
		constraints 		sk_rohprozs_pk primary key (product_id,rohprozs_key));
create table sk_rohgewBezug(
		rohgewBezug_key 		varchar(40),
		rohgewBezug_value 		varchar(40),
		product_id 		varchar2(40),
		constraints 		sk_rohgewBezug_pk primary key (product_id,rohgewBezug_key));