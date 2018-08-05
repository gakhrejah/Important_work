/***
*** Requester Name:  	Mahipal Singh
*** Purpose :		 	adding new column and table 
*** Schema  :		 	SWITCH_A,SWITCH_B,SWITCH_STAGE_A,SWITCH_STAGE_B
*** Date of Request : 	May 22, 2017
***/


alter table sk_product drop(tax_classification_country,
gross_weight,
packaging_quantity_large,
gross_weight_on_request);
alter table sk_prd_ctlg_dtls drop(egh);

alter table sk_cat_locale_info drop(last_mod_date);
alter table sk_ipckmat drop(ITEM_ACL);
alter table sk_configurator drop(ITEM_ACL);