alter table sk_ipckmat drop(
reconfiguration_allowed
);
alter table sk_configurator add(
reconfiguration_allowed numeric(1)
);
create table sk_config_view_port(
    	configurator_id	 	varchar2(6),
    	view_port 		varchar2(4),
		sequence_num 		number(*,0),
    	constraints 		sk_config_view_port_pk primary key (configurator_id,sequence_num,view_port));

create table sk_config_region(
	configurator_id	 	varchar2(40),
  	regions 		varchar2(40),
  	sequence_num 		number(*,0),
	constraints 		sk_config_region_pk primary key (configurator_id, sequence_num,regions));

drop table sk_ipckmat_view_port;

drop table sk_ipckmat_region;


alter table sk_product drop (
	kmat,
	sales_orgid,
	customs_number,
	lieferzeit_aa,
	dly_time,
	min_bm,
	package_unit,
	price_unit,
	unit_of_measure,
	pm250_date,
	pm280_date,
	pm300_date,
	pm400_date,
	pm410_date,
	pm490_date,
	pm500_date,
	lp_handling
);

alter table sk_product add(
	kmat 			integer,
	regional_mkg 		numeric(1),
	lp_handling 		numeric(1)
);

alter table sk_prd_ctlg_dtls drop (
	herkunftsland,
	lieferzeitklasse,	
	price_group,
	vmsta,
	vmstd,
	vplaeng,
	vpbreit,
	vphoehe,
	vpmeabm,
	al,
	eccn,
	currency,
	preferential_zone,
	rohs,
	regional_mkg,
	lp_handling 
);

alter table sk_prd_locale_info drop(
	commercial_text
);

alter table sk_prd_ctlg_dtls add (
	price_unit 	varchar2(10),
	unit_of_measure varchar2(3)	
);