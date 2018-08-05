/***
*** Requester Name:  	Neha Mishra
*** Purpose :		SK-62290
*** Schema  :		atgcore
*** Date of Request : 	AUG 1, 2017
***/

UPDATE SK_PROPERTY SET  PROPERTY_NAME = 'Display_Local_Stock_Status' where PROPERTY_ID ='Display_Local_Stock_Status';

UPDATE SK_PROPERTY SET  PROPERTY_DESCRIPTION = 'Display_Local_Stock_Status' where PROPERTY_ID ='Display_Local_Stock_Status';

UPDATE SK_PROPERTY SET  PROPERTY_DISPLAY_NAME = 'Display_Local_Stock_Status' where PROPERTY_ID ='Display_Local_Stock_Status';

DELETE FROM sk_property_rel_org where PROPERTY_ID='Display_Local_Stock_Status' AND ORGANIZATION_TYPE = 'region';

DELETE FROM sk_org_settings where ORG_SETTING_ID = 'de_ord_pro_typ';

DELETE FROM sk_org_settings where ORG_SETTING_ID = 'at_ord_pro_typ';

DELETE FROM sk_org_property WHERE PROPERTY_ID = 'Order_Process_Type';

DELETE FROM sk_property_rel_org where PROPERTY_ID='Order_Process_Type' AND ORGANIZATION_TYPE = 'region';

DELETE FROM SK_PROPERTY WHERE PROPERTY_ID='Order_Process_Type';

commit;





