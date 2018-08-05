alter table sk_product drop(
		simplified_mlfb,
		iseeo_mlfb);

alter table sk_product add(
		spr			varchar(50),
		mfn			varchar(50),
		lieferzeit_aa		integer,
		int_dly_time		varchar2(10), 
		str_dly_time_unit	varchar2(10),
		min_bm			integer);

alter table sk_images drop(
		bildid,
		bildid_relationship,
		modelid,
		travel_diagramid,
		caeconnection_diagramid,
		caecircuit_diagram_iecid,
		caecircuit_diagram_ansiid);

alter table sk_images add(
		type			varchar2(40),
		resolution		varchar2(40),
		description		varchar2(40));

alter table sk_prd_ctlg_dtls drop(
		mfn,
		customs_number,
		pm250_date,
		pm280_date,
		pm300_date,
		pm400_date,
		pm410_date,
		pm490_date,
		pm500_date,
		lieferzeit_aa,
		int_dly_time,
		str_dly_time_unit,
		min_bm,
		package,
		package_unit);

create table sk_milestone_map (
	asset_version			int   not null,
	milestone_key			varchar(40),
	milestone_value			varchar(40),
	id				varchar2(40 byte),
	primary key			(id,milestone_key,asset_version));

create table sk_image_urls(
	asset_version 		number(*,0) not null enable,
	id			varchar2(40),
	url	 		varchar2(40),
	sequence_num 		number(*,0),
	constraint 		sk_image_urls_pk primary key (id , sequence_num , asset_version ));
