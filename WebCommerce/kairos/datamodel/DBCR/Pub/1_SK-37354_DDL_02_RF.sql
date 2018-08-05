
alter table sk_product add (
	core_attribute_04 varchar2(5),
	core_attribute_05 varchar2(5),
	core_attribute_06 varchar2(5),
	core_attribute_07 varchar2(5),
	core_attribute_08 varchar2(5),
	core_attribute_09 varchar2(5),
	core_attribute_10 varchar2(5),
	core_attribute_11 varchar2(5),
	core_attribute_12 varchar2(5),
	core_attribute_13 varchar2(5),
	core_attribute_14 varchar2(5),
	core_attribute_15 varchar2(5),
	core_attribute_16 varchar2(5),
	core_attribute_z varchar2(5),
	material_type	 varchar2(4),
	mlfb_under      varchar2(40),
	cost_Key varchar2(11),
	substitute_flag varchar2(1),
	matrial_short_desc varchar2(40),
	buy_back_price number,
	repair_price number);


alter table sk_prd_ctlg_dtls add (
	spare_part_price number,
	buy_back_price number,
	repair_price number,
	divers1 varchar2(35),
	divers2 varchar2(35),
	divers3 numeric(1),
  	divers4 numeric(1),
	divers5 varchar2(35),
	price_unit varchar2(10),
	unit_of_measure varchar2(3),
	rp_prod varchar2(2));

alter table sk_prd_language_info add (
	matrial_short_desc varchar2(40));