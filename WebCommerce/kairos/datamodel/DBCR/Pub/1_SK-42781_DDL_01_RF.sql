alter table sk_category add(
is_service numeric(1),
is_cluster numeric(1),
sp_master_id varchar2(20)
);

create table sk_cat_service_options(
	asset_version   	int   not null,
	eligible_services	varchar2(40),
	sequence_num 		number(*,0),
	category_id 			varchar2(40) not null,
	constraint 		sk_cat_service_options_pk primary key (category_id,sequence_num,asset_version)); 