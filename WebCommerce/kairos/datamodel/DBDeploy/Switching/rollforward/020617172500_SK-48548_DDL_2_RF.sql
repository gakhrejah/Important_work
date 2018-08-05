/***
*** Requester Name:  	Mahipal Singh
*** Purpose :		 	adding new column and table 
*** Schema  :		 	SWITCH_A,SWITCH_B,SWITCH_STAGE_A,SWITCH_STAGE_B
*** Date of Request : 	May 22, 2017
***/

alter table sk_complex_price drop constraint sk_complex_price_pk;
alter table sk_complex_price drop(asset_version);
alter table sk_complex_price add constraint sk_complex_price_pk  primary key(complex_price_id);

alter table sk_product add(tax_classification_country varchar2(3),
gross_weight numeric(18,3),
packaging_quantity_large numeric(17,3),
gross_weight_on_request numeric(1));
alter table sk_prd_ctlg_dtls add(egh numeric(1));

alter table sk_cat_locale_info modify locale_spec_attr_cat varchar2(254);

alter table sk_cat_locale_info add(last_mod_date TIMESTAMP);

alter table sk_ipckmat add(ITEM_ACL varchar2(254));
alter table sk_configurator add(ITEM_ACL varchar2(254));