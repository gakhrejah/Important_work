/***
*** Requester Name:  	Neha Mishra
*** Purpose :		SK-62290
*** Schema  :		atgcore
*** Date of Request : 	AUG 1, 2017
***/

Insert into SK_PROPERTY (PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,DEFAULT_VALUE,ENABLE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,PROPERTY_VALUE,LAST_MODIFIED_BY,LAST_MODIFIED_DATE,LAST_VALUE,VERSION,IS_INHERITED,PROPERTY_OPTIONS) values ('Default_Requested_Delivery_Date','Default_Requested_Delivery_Date','Default_Requested_Delivery_Date','Default_Requested_Delivery_Date','0',1,'Integer','Product','ATG',null,null,null,null,'0',0,null);

Insert into sk_property_rel_org (PROPERTY_ID,ORGANIZATION_TYPE) values ('Default_Requested_Delivery_Date','company');

Insert into sk_org_property (ID,PROPERTY_ID,PROPERTY_VALUE,LAST_MODIFIED_BY,LAST_MODIFIED_DATE,LAST_VALUE,VERSION,RELATIVE_TO,ALLOW_MODIFY_AT_REGION,USE_SYS_SETTG) values ('601_def_req_del_dat','Default_Requested_Delivery_Date','1',null,null,null,null,'600001',0,0);

Insert into sk_org_settings (ID,ORG_SETTING_ID) values ('600001','601_def_req_del_dat');

commit;





