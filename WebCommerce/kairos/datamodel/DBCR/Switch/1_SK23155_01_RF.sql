create table  sk_approval_agency_info(
	id		varchar2(40),
	agency_name 		varchar2(254),
	agency_logo 		varchar2(254),
	constraints 		sk_approval_agency_info_pk primary key (id , agency_name));