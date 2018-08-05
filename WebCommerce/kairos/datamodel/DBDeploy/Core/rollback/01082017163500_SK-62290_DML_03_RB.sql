/***
*** Requester Name:  	Neha Mishra
*** Purpose :		SK-62290
*** Schema  :		atgcore
*** Date of Request : 	AUG 1, 2017
***/

DELETE FROM sk_org_settings ORG_SETTING_ID = '601_def_req_del_dat';

DELETE FROM sk_org_property WHERE PROPERTY_ID = 'Default_Requested_Delivery_Date';

DELETE FROM sk_property_rel_org where PROPERTY_ID='Default_Requested_Delivery_Date' AND ORGANIZATION_TYPE = 'company';

DELETE FROM SK_PROPERTY WHERE PROPERTY_ID='Default_Requested_Delivery_Date';

commit;





