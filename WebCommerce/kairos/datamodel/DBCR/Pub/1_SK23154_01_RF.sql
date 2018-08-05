create table  sk_cat_teaser(
	asset_version 		number(*,0) not null enable,
	category_id		varchar2(40),
	teaser_id 		varchar2(40),
	sequence_num 		number(*,0),
	constraints 		sk_cat_teaser_pk primary key (category_id , sequence_num,asset_version));

create table sk_prod_teaser(
	asset_version   	number(*,0) not null enable,
	teaser_id	 	varchar2(40),
	product_id 		varchar2(40),
  sequence_num 		number(*,0),
	constraints 		sk_prod_teaser_pk primary key (product_id, sequence_num, asset_version));
  

  create table sk_teaser(
	asset_version    	number(*,0) not null enable,
	workspace_id     	varchar2(40 BYTE) not null enable,
	branch_id        	varchar2(40 BYTE) not null enable,
	is_head          	number(1,0) not null enable,
	version_deleted  	number(1,0) not null enable,
	version_editable 	number(1,0) not null enable,
	pred_version     	number(*,0),
	checkin_date 		timestamp (6),
	id 			varchar2(40),
	title			varchar2(254),
	description		clob,
	link_text		varchar2(254),
	link_url		varchar2(254),
  media_id    varchar2(100),
  system     varchar2(100),
	constraint 		sk_teaser_pk primary key (id,asset_version));
  
  create table  sk_teaser_language(
	asset_version 		number(*,0) not null enable,
	teaser_id		varchar2(40),
	teaser_language_info 	varchar2(40),
	language 		varchar2(10),
	constraints 		sk_teaser_language_pk primary key (teaser_id , language, asset_version));
  
  create table sk_teaser_language_info(
	asset_version    	number(*,0) not null enable,
	workspace_id     	varchar2(40 BYTE) not null enable,
	branch_id        	varchar2(40 BYTE) not null enable,
	is_head          	number(1,0) not null enable,
	version_deleted  	number(1,0) not null enable,
	version_editable 	number(1,0) not null enable,
	pred_version     	number(*,0),
	checkin_date 		timestamp (6),
	id 			varchar2(40),
	title			varchar2(254),
	description		clob,
	link_text		varchar2(254),
	link_url		varchar2(254),
	constraint 		sk_teaser_language_info_pk primary key (id,asset_version));

create table sk_teaser_reg_info (
	asset_version    number(*,0) not null enable,
	workspace_id     varchar2(40 BYTE) not null enable,
	branch_id        varchar2(40 BYTE) not null enable,
	is_head          number(1,0) not null enable,
	version_deleted  number(1,0) not null enable,
	version_editable number(1,0) not null enable,
	pred_version     number(*,0),
	checkin_date timestamp (6),
	id varchar2(40 byte) not null enable,
	system varchar(40),
	constraints sk_teaser_reg_info_pk primary key (id,asset_version));

create table sk_teaser_reg_reln(
	asset_version number(*,0) not null enable,
	catalog_id       	varchar2(40 byte) not null enable,
	teaser_id   		varchar2(40 byte) not null enable,
	teaser_reg_info 	varchar2(40 byte),
	constraints "sk_teaser_reg_reln_pk" primary key (catalog_id, teaser_id,asset_version));
