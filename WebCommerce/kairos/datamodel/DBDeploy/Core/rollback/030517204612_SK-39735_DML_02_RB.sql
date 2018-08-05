/***
*** Requester Name:  	Prasanna K Sinha
*** Purpose :		 	SK-39735
*** Schema  :		 	atgcore, staging
*** Date of Request : 	May 03, 2017
***/

delete from sk_org_settings where org_setting_id='de_alw_pur_plm_490' and id='de';
delete from sk_org_settings where org_setting_id='at_alw_pur_plm_490' and id='at';

delete from sk_org_property where id='de_alw_pur_plm_490' and property_id='Allow_Purchase_Of_Product_PLM_490';
delete from sk_org_property where id='at_alw_pur_plm_490' and property_id='Allow_Purchase_Of_Product_PLM_490';

delete from sk_property where property_id='Allow_Purchase_Of_Product_PLM_490';

commit;