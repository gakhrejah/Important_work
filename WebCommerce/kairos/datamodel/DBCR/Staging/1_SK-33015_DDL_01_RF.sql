alter table sk_product add(
zoptions_string varchar2(96),
metal_factor varchar2(10),
depth_key  varchar2(15),
short_record_flag varchar2(1),
xds_flag varchar2(1),
item_unit varchar2(3),
catalogId varchar2(15)
);

alter table sk_product drop(
lp_handling,
PM250_Date,
PM280_Date,
PM300_Date,
PM400_Date,
PM410_Date,
PM490_Date,
PM500_Date,
rohs
);
alter table sk_prd_ctlg_dtls drop(
preferential_zone
);

create table sk_preferential_zone(
		preferential_zone_key 			varchar(4),
		preferential_zone 			varchar(4),
		id 		varchar2(40),
  constraints 	sk_preferential_zone_pk primary key (id,preferential_zone_key));