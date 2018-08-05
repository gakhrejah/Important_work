alter table sk_ipckmat add(
	reconfiguration_allowed numeric(1)
);
alter table sk_configurator drop(
	reconfiguration_allowed
);
drop table sk_config_view_port;
drop table sk_config_region;
create table sk_ipckmat_view_port(
	asset_version   	number(*,0) not null enable,
    	ipc_kmat_id	 	varchar2(40),
    	view_port 		varchar2(4),
  	sequence_num 		number(*,0),
    	constraints 		sk_ipckmat_view_port_pk primary key (ipc_kmat_id,sequence_num,view_port,asset_version));

create table sk_ipckmat_region(
	asset_version   	number(*,0) not null enable,
	ipc_kmat_id	 	varchar2(40),
  	regions 		varchar2(40),
  	sequence_num 		number(*,0),
	constraints 		sk_ipckmat_region_pk primary key (ipc_kmat_id, sequence_num,regions,asset_version));



alter table sk_product drop(
	kmat,
	regional_mkg,
	lp_handling);

alter table sk_product add (
	kmat 			varchar2(18),
	sales_orgid 		varchar2(4),
	customs_number		varchar2(17),
	lieferzeit_aa		numeric(1),
	dly_time		integer,
	min_bm			integer,
	package_unit		varchar2(3),
	price_unit 		varchar2(10),
	unit_of_measure 	varchar2(3),
	pm250_date		varchar2(8),
	pm280_date		varchar2(8),
	pm300_date		varchar2(8),
	pm400_date		varchar2(8),
	pm410_date		varchar2(8),
	pm490_date		varchar2(8),
	pm500_date		varchar2(8),
	lp_handling    varchar2(1)
);

alter table sk_prd_ctlg_dtls drop (
price_unit,
unit_of_measure	
);

alter table sk_prd_ctlg_dtls add (
	herkunftsland 		varchar2(3),
	lieferzeitklasse 	varchar2(1),	
	price_group 		varchar2(3),
	vplaeng 		number,
	vpbreit 		number,
	vphoehe 		number,
	vpmeabm 		varchar2(3),
	al 			varchar2(14),
	eccn 			varchar2(15),
	currency 		varchar(5),
	preferential_zone varchar2(4),
	rohs varchar2(10),
	regional_mkg 	varchar2(1),
	lp_handling    varchar2(1)  		
);

alter table sk_prd_locale_info add(
commercial_text clob
);
