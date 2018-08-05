create table  sk_service_option_language(
	asset_version 		number(*,0) not null enable,
	service_options_id		varchar2(40),
	service_option_language_info 	varchar2(40),
	language 		varchar2(10),
	constraints 		sk_service_option_language_pk primary key (service_options_id , language, asset_version));
  
create table sk_service_opt_lang_info(
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
	service_option_desc		clob,
	constraint 		sk_service_opt_lang_info_pk primary key (id,asset_version));