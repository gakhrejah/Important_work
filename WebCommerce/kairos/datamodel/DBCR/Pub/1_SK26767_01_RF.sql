alter table sk_tech_spec modify spec_name varchar2(1024);
alter table sk_tech_spec modify spec_value varchar2(1024);
alter table sk_prd_language_info modify display_name varchar2(512) null;
alter table sk_cat_language_info modify display_name null;

create table sk_spec_type(
	asset_version    	number(*,0) not null enable,
	workspace_id     	varchar2(40 BYTE) not null enable,
	branch_id        	varchar2(40 BYTE) not null enable,
	is_head          	number(1,0) not null enable,
	version_deleted  	number(1,0) not null enable,
	version_editable 	number(1,0) not null enable,
	pred_version     	number(*,0),
	checkin_date 		timestamp (6),
	id 			varchar2(40),
	type			varchar2(40),
  non_filterable numeric(1),
  def_spec_name varchar2(1024),
	constraint 		sk_spec_type_pk primary key (id,asset_version));

create table  sk_spec_type_val(
	asset_version 		number(*,0) not null enable,
	id 			varchar2(40),
	language       		varchar2(2 byte),
	spec_name  			varchar2(255 byte),
	constraints 		sk_spec_type_val_pk primary key (id, language,asset_version));



create table sk_spec(
	asset_version    	number(*,0) not null enable,
	workspace_id     	varchar2(40 BYTE) not null enable,
	branch_id        	varchar2(40 BYTE) not null enable,
	is_head          	number(1,0) not null enable,
	version_deleted  	number(1,0) not null enable,
	version_editable 	number(1,0) not null enable,
	pred_version     	number(*,0),
	checkin_date 		timestamp (6),
	id 			varchar2(40),
	specification_type	varchar2(40),
  def_spec_value varchar2(1024),
	constraints 		sk_spec_pk primary key (id ,asset_version));


create table  sk_spec_val(
	asset_version 		number(*,0) not null enable,
	id 			varchar2(40),
	language       		varchar2(2 byte),
	spec_value  			varchar2(255 byte),
	constraints 		sk_spec_val_pk primary key (id, language,asset_version));

create table  sk_product_specs(
	asset_version 		number(*,0) not null enable,
	product_id		varchar2(40),
	spec_id 		varchar2(40),
	sequence_num 		number(*,0),
	constraints 		sk_product_specs_pk primary key (product_id , sequence_num,asset_version));