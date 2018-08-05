create table  sk_cat_teaser(
	category_id		varchar2(40),
	teaser_id 		varchar2(40),
  	sequence_num 		number(*,0),
	constraints 		sk_cat_teaser_pk primary key (category_id, sequence_num));

create table sk_prod_teaser(
	teaser_id	 	varchar2(40),
	product_id 		varchar2(40),
  	sequence_num 		number(*,0),
	constraints 		sk_prod_teaser_pk primary key (product_id, sequence_num));
  

  create table sk_teaser(
	id 			varchar2(40),
	title			varchar2(254),
	description		clob,
	link_text		varchar2(254),
	link_url		varchar2(254),
  	media_id   		varchar2(254),
  	system     		varchar2(100),
	constraint 		sk_teaser_pk primary key (id));
  
  create table  sk_teaser_language(
	teaser_id		varchar2(40),
	teaser_language_info 	varchar2(40),
	language 		varchar2(10),
	constraints 		sk_teaser_language_pk primary key (teaser_id , language));
  
  create table sk_teaser_language_info(
	id 			varchar2(40),
	title			varchar2(254),
	description		clob,
	link_text		varchar2(254),
	link_url		varchar2(254),
	constraint 		sk_teaser_language_info_pk primary key (id));

create table sk_teaser_reg_info (
	id 			varchar2(40 byte) not null enable,
	system 			varchar(40),
	constraints sk_teaser_reg_info_pk primary key (id));


create table sk_teaser_reg_reln(
	catalog_id       	varchar2(40 byte) not null enable,
	teaser_id   		varchar2(40 byte) not null enable,
	teaser_reg_info 	varchar2(40 byte),
	constraints "sk_teaser_reg_reln_pk" primary key (catalog_id, teaser_id));

