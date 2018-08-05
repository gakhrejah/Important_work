alter table sk_tech_spec modify spec_name varchar2(1024);
alter table sk_tech_spec modify spec_value varchar2(1024);
alter table sk_prd_language_info modify display_name varchar2(512) null;
alter table sk_cat_language_info modify display_name null;

create table  sk_product_specs(
	product_id		varchar2(40),
	spec_id 		varchar2(40),
	sequence_num 		number(*,0),
	constraints 		sk_product_specs_pk primary key (product_ID , sequence_num));
	
create table sk_spec(
	id 			varchar2(40),
	specification_type	varchar2(40),
  	def_spec_value varchar2(1024),
	constraints 		sk_spec_pk primary key (id));
	
create table  sk_spec_val(
	id 			varchar2(40),
	language       		varchar2(2 byte),
	spec_value  			varchar2(1024),
	constraints 		sk_spec_val_pk primary key (id, language));
	
create table sk_spec_type(
	id 			varchar2(40),
	type			varchar2(40),
  	non_filterable numeric(1),
  	def_spec_name varchar2(1024),
	constraints 		sk_spec_type_pk primary key (id));

create table  sk_spec_type_val(
	id 			varchar2(40),
	language       		varchar2(2 byte),
	spec_name  			varchar2(1024),
	constraints 		sk_spec_type_val_pk primary key (id, language));