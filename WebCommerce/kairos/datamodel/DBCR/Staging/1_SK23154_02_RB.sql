alter table sk_service_option drop(
        service_option_desc
	service_option_type);

alter table sk_category drop (is_classification);

alter table sk_prd_ctlg_dtls drop (preis_gruppe_region);

alter table sk_product drop(
	spare_part_price,
	spare_part_supplier);
drop table  sk_cat_systems;