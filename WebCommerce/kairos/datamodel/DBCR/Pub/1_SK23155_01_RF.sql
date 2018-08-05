create table sk_approval_agency_info(
	asset_version    	number(*,0) not null enable,
	id 			varchar2(40),
  workspace_id     	varchar2(40 BYTE) not null enable,
	branch_id        	varchar2(40 BYTE) not null enable,
	is_head          	number(1,0) not null enable,
	version_deleted  	number(1,0) not null enable,
	version_editable 	number(1,0) not null enable,
	pred_version     	number(*,0),
	checkin_date 		timestamp (6),
	agency_name 		varchar2(254),
	agency_logo 		varchar2(254),
		constraints 		sk_approval_agency_info_pk primary key (id , agency_name,asset_version));  