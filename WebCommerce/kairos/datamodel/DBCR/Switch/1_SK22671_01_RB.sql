alter table sk_prd_language_info drop(long_description);
alter table sk_prd_ctlg_dtls drop(
				current_milestone_date, 
				current_milestone);

alter table sk_product drop(service_level);
alter table sk_product add(isreturnable  numeric(1));
alter table sk_category drop (is_system_node);
create table sk_spec_typ(
	id 			varchar2(40),
	type			varchar2(40) not null enable,
	constraints 		sk_spec_type_pk primary key (id));


create table  sk_product_specs(
	product_id		varchar2(40),
	spec_id 		varchar2(40),
	sequence_num 		number(*,0),
	constraints 		sk_product_specs_pk primary key (product_ID , sequence_num));

create table  sk_spec_val(
	id 			varchar2(40),
	language       		varchar2(2 byte),
	value  			varchar2(255 byte) not null enable,
	constraints 		sk_spec_val_pk primary key (id, language));

create table sk_spec_typ(
	id 			varchar2(40),
	type			varchar2(40) not null enable,
	constraints 		sk_spec_type_pk primary key (id));


create table  sk_spec_typ_val(
	id 			varchar2(40),
	language       		varchar2(2 byte),
	value  			varchar2(255 byte) not null enable,
	constraints 		sk_spec_typ_val_pk primary key (id, language));

create table sk_tab_type(
	id 			varchar2(10),
	info_group_id 		number(*,0),
	tab_sort_order 		number(*,0),
	tab_type_url 		varchar2(255),
	tab_type_url_trgt	varchar2(255),
	constraints 		sk_tab_type_pk primary key (id));


create table  sk_tab_type_name(
	id 			varchar2(10),
	language       		varchar2(2 byte),
	name  			varchar2(255 byte) not null enable,
	constraints 		sk_tab_type_name_pk primary key (id, language));


create table sk_info_unit(
	id 			varchar2(40),
	tab_type 		varchar2(10),
	tab_file_format 	varchar2(10),
	technique_id 		number(*,0),
	mmd_size 		number(*,0),
	sort_number 		number(*,0),
	constraints 		sk_info_unit_pk primary key (id));

create table  sk_info_unit_htm(
	info_unit_id 		varchar2(40),
	language       		varchar2(2 byte),
	html			clob,
	constraints 		sk_info_unit_htm_pk primary key (info_unit_id , language));

create table  sk_cat_info_unit(
	cat_id 			varchar2(40),
	info_unit_id 		varchar2(40),
	sequence_num 		number(*,0),
	constraints 		sk_cat_info_unit_pk primary key (cat_id , sequence_num));

