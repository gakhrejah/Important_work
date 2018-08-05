
alter table sk_product drop (
	core_attribute_04,
	core_attribute_05,
	core_attribute_06,
	core_attribute_07,
	core_attribute_08,
	core_attribute_09,
	core_attribute_10,
	core_attribute_11,
	core_attribute_12,
	core_attribute_13,
	core_attribute_14,
	core_attribute_15,
	core_attribute_16,
	core_attribute_z,
	material_type,
	mlfb_under,
	cost_Key,
	substitute_flag,
	matrial_short_desc,
	buy_back_price,
	repair_price);


alter table sk_prd_ctlg_dtls drop (
	spare_part_price,
	buy_back_price,
	repair_price,
	divers1,
	divers2,
	divers3,
  	divers4,
	divers5,
	price_unit,
	unit_of_measure,
	rp_prod);

alter table sk_prd_language_info drop (
	matrial_short_desc);