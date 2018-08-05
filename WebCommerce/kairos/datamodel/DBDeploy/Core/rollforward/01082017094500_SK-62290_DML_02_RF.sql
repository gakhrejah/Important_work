/***
*** Requester Name:  	Neha Mishra
*** Purpose :		SK-62290
*** Schema  :		atgcore
*** Date of Request : 	AUG 1, 2017
***/

UPDATE SK_PROPERTY SET  PROPERTY_NAME = 'Local_Stock_Available' where PROPERTY_ID ='Display_Local_Stock_Status';

UPDATE SK_PROPERTY SET  PROPERTY_DESCRIPTION = 'Local_Stock_Available' where PROPERTY_ID ='Display_Local_Stock_Status';

UPDATE SK_PROPERTY SET  PROPERTY_DISPLAY_NAME = 'Local_Stock_Available' where PROPERTY_ID ='Display_Local_Stock_Status';

Insert into sk_property_rel_org (PROPERTY_ID,ORGANIZATION_TYPE) values ('Display_Local_Stock_Status','region');

Insert into SK_PROPERTY (PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,DEFAULT_VALUE,ENABLE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,PROPERTY_VALUE,LAST_MODIFIED_BY,LAST_MODIFIED_DATE,LAST_VALUE,VERSION,IS_INHERITED,PROPERTY_OPTIONS) values ('Order_Process_Type','Order_Process_Type','Order_Process_Type','Order_Process_Type','PTO',1,'String','Product','ATG',null,null,null,null,'0',0,'PTO|PTO3');

Insert into sk_property_rel_org (PROPERTY_ID,ORGANIZATION_TYPE) values ('Order_Process_Type','region');

Insert into sk_org_property (ID,PROPERTY_ID,PROPERTY_VALUE,LAST_MODIFIED_BY,LAST_MODIFIED_DATE,LAST_VALUE,VERSION,RELATIVE_TO,ALLOW_MODIFY_AT_REGION,USE_SYS_SETTG) values ('de_ord_pro_typ','Order_Process_Type','PTO',null,null,null,null,'de',0,0);

Insert into sk_org_settings (ID,ORG_SETTING_ID) values ('de','de_ord_pro_typ');

Insert into sk_org_property (ID,PROPERTY_ID,PROPERTY_VALUE,LAST_MODIFIED_BY,LAST_MODIFIED_DATE,LAST_VALUE,VERSION,RELATIVE_TO,ALLOW_MODIFY_AT_REGION,USE_SYS_SETTG) values ('at_ord_pro_typ','Order_Process_Type','PTO',null,null,null,null,'at',0,0);

Insert into sk_org_settings (ID,ORG_SETTING_ID) values ('at','at_ord_pro_typ');

commit;





