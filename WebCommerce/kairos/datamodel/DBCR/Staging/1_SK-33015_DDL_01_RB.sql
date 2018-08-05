alter table sk_product drop(
zoptions_string,
metal_factor,
depth_key,
short_record_flag,
xds_flag,
item_unit,
catalogId
);

alter table sk_product add(
	lp_handling    varchar2(1),
	pm250_date		varchar2(8),
	pm280_date		varchar2(8),
	pm300_date		varchar2(8),
	pm400_date		varchar2(8),
	pm410_date		varchar2(8),
	pm490_date		varchar2(8),
	pm500_date		varchar2(8),
	rohs varchar2(10)
);
alter table sk_prd_ctlg_dtls add(
preferential_zone varchar2(4)
);

drop table sk_preferential_zone;