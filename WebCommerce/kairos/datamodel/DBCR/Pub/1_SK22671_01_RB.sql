alter table sk_prd_language_info drop(long_description);
alter table sk_prd_ctlg_dtls drop(
				current_milestone_date, 
				current_milestone);

alter table sk_product drop(service_level);
alter table sk_product add(isreturnable  numeric(1));
alter table sk_category drop (is_system_node);

create table sk_spec_typ(
	asset_version    	number(*,0) not null enable,
	workspace_id     	varchar2(40 BYTE) not null enable,
	branch_id        	varchar2(40 BYTE) not null enable,
	is_head          	number(1,0) not null enable,
	version_deleted  	number(1,0) not null enable,
	version_editable 	number(1,0) not null enable,
	pred_version     	number(*,0),
	checkin_date 		timestamp (6),
	id 			varchar2(40),
	type			varchar2(40) not null enable,
	constraint 		sk_spec_type_pk primary key (id,asset_version));

create table  sk_product_specs(
	asset_version 		number(*,0) not null enable,
	product_id		varchar2(40),
	spec_id 		varchar2(40),
	sequence_num 		number(*,0),
	constraints 		sk_product_specs_pk primary key (product_id , sequence_num,asset_version));

create table  sk_spec_val(
	asset_version 		number(*,0) not null enable,
	id 			varchar2(40),
	language       		varchar2(2 byte),
	value  			varchar2(255 byte) not null enable,
	constraints 		sk_spec_val_pk primary key (id, language,asset_version));

create table sk_spec_typ(
	asset_version    	number(*,0) not null enable,
	workspace_id     	varchar2(40 BYTE) not null enable,
	branch_id        	varchar2(40 BYTE) not null enable,
	is_head          	number(1,0) not null enable,
	version_deleted  	number(1,0) not null enable,
	version_editable 	number(1,0) not null enable,
	pred_version     	number(*,0),
	checkin_date 		timestamp (6),
	id 			varchar2(40),
	type			varchar2(40) not null enable,
	constraint 		sk_spec_type_pk primary key (id,asset_version));

create table  sk_spec_typ_val(
	asset_version 		number(*,0) not null enable,
	id 			varchar2(40),
	language       		varchar2(2 byte),
	value  			varchar2(255 byte) not null enable,
	constraints 		sk_spec_typ_val_pk primary key (id, language,asset_version));

create table sk_tab_type(
	asset_version    	number(*,0) not null enable,
	workspace_id     	varchar2(40 BYTE) not null enable,
	branch_id        	varchar2(40 BYTE) not null enable,
	is_head          	number(1,0) not null enable,
	version_deleted  	number(1,0) not null enable,
	version_editable 	number(1,0) not null enable,
	pred_version     	number(*,0),
	checkin_date 		timestamp (6),
	id 			varchar2(10),
	info_group_id 		number(*,0),
	tab_sort_order 		number(*,0),
	tab_type_url 		varchar2(255),
	tab_type_url_trgt	varchar2(255),
	constraints 		sk_tab_type_pk primary key (id ,asset_version));

create table  sk_tab_type_name(
	asset_version 		number(*,0) not null enable,
	id 			varchar2(10),
	language       		varchar2(2 byte),
	name  			varchar2(255 byte) not null enable,
	constraints 		sk_tab_type_name_pk primary key (id, language,asset_version));

create table sk_info_unit(
	asset_version    	number(*,0) not null enable,
	workspace_id     	varchar2(40 BYTE) not null enable,
	branch_id        	varchar2(40 BYTE) not null enable,
	is_head          	number(1,0) not null enable,
	version_deleted  	number(1,0) not null enable,
	version_editable	number(1,0) not null enable,
	pred_version     	number(*,0),
	checkin_date 		timestamp (6),
	id 			varchar2(40),
	tab_type 		varchar2(10),
	tab_file_format 	varchar2(10),
	technique_id 		number(*,0),
	mmd_size 		number(*,0),
	sort_number 		number(*,0),
	constraints 		sk_info_unit_pk primary key (id,asset_version));

create table  sk_cat_info_unit(
	asset_version 		number(*,0) not null enable,
	cat_id 			varchar2(40),
	info_unit_id 		varchar2(40),
	sequence_num 		number(*,0),
	constraints 		sk_cat_info_unit_pk primary key (cat_id , sequence_num,asset_version));

create table  sk_info_unit_htm(
	asset_version 		number(*,0) not null enable,
	info_unit_id 		varchar2(40),
	language       		varchar2(2 byte),
	html			clob,
	constraints 		sk_info_unit_htm_pk primary key (info_unit_id , language , asset_version));
