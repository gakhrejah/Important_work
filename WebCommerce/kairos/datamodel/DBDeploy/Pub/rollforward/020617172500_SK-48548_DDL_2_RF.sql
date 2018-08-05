/***
*** Requester Name:  	Mahipal Singh
*** Purpose :		 	adding new primary column sec_asset_version 
*** Schema  :		 	PUBLISHING
*** Date of Request : 	April 25, 2017
***/

alter table sk_product add(tax_classification_country varchar2(3),
gross_weight numeric(18,3),
packaging_quantity_large numeric(17,3),
gross_weight_on_request numeric(1));
alter table sk_prd_ctlg_dtls add(egh numeric(1));

alter table sk_cat_locale_info modify locale_spec_attr_cat varchar2(254);

alter table sk_cat_locale_info add(last_mod_date TIMESTAMP);

alter table sk_ipckmat_product drop constraint sk_ipckmat_product_pk;
alter table sk_ipckmat_product drop(sec_asset_version);
alter table sk_ipckmat_product add constraint sk_ipckmat_product_pk  primary key(ipc_kmat_id,sequence_num,asset_version);

alter table sk_ipckmat add(ITEM_ACL varchar2(254));
alter table sk_configurator add(ITEM_ACL varchar2(254));