/***
*** Requester Name:  	Neha Mishra
*** Purpose :		SK-19789
*** Schema  :		atgcore
*** Date of Request : 	AUG 10, 2017
***/

Insert into Sk_property (PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,DEFAULT_VALUE,ENABLE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,PROPERTY_VALUE,LAST_MODIFIED_BY,LAST_MODIFIED_DATE,LAST_VALUE,VERSION,IS_INHERITED,PROPERTY_OPTIONS) values ('Authorize_CAN_Admin','Authorize CAN Admin','Authorize_CAN_Admin','Authorize_CAN_Admin','true',1,'Boolean','Product','ATG',null,null,null,null,'0',null,null);

Insert into sk_property_rel_org (PROPERTY_ID,ORGANIZATION_TYPE) values ('Authorize_CAN_Admin','company');

Insert into sk_org_property (ID,PROPERTY_ID,PROPERTY_VALUE,LAST_MODIFIED_BY,LAST_MODIFIED_DATE,LAST_VALUE,VERSION,RELATIVE_TO,ALLOW_MODIFY_AT_REGION,USE_SYS_SETTG) values ('601_auth_can_adm','Authorize_CAN_Admin','1',null,null,null,null,'600001',0,0);

Insert into sk_org_settings (ID,ORG_SETTING_ID) values ('600001','601_auth_can_adm');

commit;