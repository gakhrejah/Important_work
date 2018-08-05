/***
*** Requester Name:  	Neha Mishra
*** Purpose :		SK-19789
*** Schema  :		atgcore
*** Date of Request : 	AUG 10, 2017
***/

DELETE FROM sk_org_settings ORG_SETTING_ID = '601_auth_can_adm';

DELETE FROM sk_org_property WHERE PROPERTY_ID = 'Authorize_CAN_Admin';

DELETE FROM sk_property_rel_org where PROPERTY_ID='Authorize_CAN_Admin' AND ORGANIZATION_TYPE = 'company';

DELETE FROM SK_PROPERTY WHERE PROPERTY_ID='Authorize_CAN_Admin';

commit;





