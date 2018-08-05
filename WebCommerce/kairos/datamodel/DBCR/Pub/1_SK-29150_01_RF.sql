create table  prd_service_level(
	asset_version 		number(*,0) not null enable,
	id		varchar2(40),
	sequence_num 		number(*,0) not null enable,
  service_level varchar2(40),
	constraints 		prd_service_level_pk primary key (id , sequence_num,asset_version));