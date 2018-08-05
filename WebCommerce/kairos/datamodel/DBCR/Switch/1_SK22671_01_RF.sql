alter table sk_prd_language_info modify display_name varchar2(254);
alter table sk_prd_language_info add(long_description clob);
alter table sk_prd_ctlg_dtls add(
	current_milestone_date 		varchar2(8), 
	current_milestone 		varchar2(8));

alter table sk_product add(service_level varchar2(25));
alter table sk_product drop(isreturnable);
alter table sk_category add (is_system_node numeric(1));
drop table sk_spec;
drop table sk_product_specs;
drop table sk_spec_val;
drop table sk_spec_typ;
drop table sk_spec_typ_val;
drop table  sk_tab_type;
drop table  sk_tab_type_name;
drop table  sk_info_unit;
drop table  sk_cat_info_unit;
drop table  sk_info_unit_htm;


