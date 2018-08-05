alter table sk_product drop(
		spr,
		mfn,
		lieferzeit_aa,
		int_dly_time,
		str_dly_time_unit,
		min_bm);
  
alter table sk_product add(
		simplified_mlfb			varchar2(25),
		iseeo_mlfb			numeric(1));


alter table sk_images add(
		bildid			varchar2(25),
		bildid_relationship	varchar2(25),
		modelid			varchar2(25),
		travel_diagramid	varchar2(25),
		caeconnection_diagramid varchar2(25),
		caecircuit_diagram_iecid varchar2(25),
		caecircuit_diagram_ansiid varchar2(25));

alter table sk_images drop(
		type,
		resolution,
		description);

alter table sk_prd_ctlg_dtls add(
		mfn			varchar2(25),
		customs_number		varchar2(17),
		pm250_date		varchar2(8),
		pm280_date		varchar2(8),
		pm300_date		varchar2(8),
		pm400_date		varchar2(8),
		pm410_date		varchar2(8),
		pm490_date		varchar2(8),
		pm500_date		varchar2(8),
		lieferzeit_aa		numeric(1),
		int_dly_time		varchar2(10), 
		str_dly_time_unit	varchar2(10),
		min_bm			integer,
		package			varchar2(3),
		package_unit		varchar2(3));

drop table sk_milestone_map;
drop table sk_image_urls;
