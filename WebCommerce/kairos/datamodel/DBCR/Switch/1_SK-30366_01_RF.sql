create table  sk_service_option_language(
	service_options_id		varchar2(40),
	service_option_language_info 	varchar2(40),
	language 		varchar2(10),
	constraints 		sk_service_option_language_pk primary key (service_options_id , language));
  
  create table sk_service_opt_lang_info(
	id 			varchar2(40),
	title			varchar2(254),
	service_option_desc	clob,
	constraint 		sk_service_opt_lang_info_pk primary key (id));