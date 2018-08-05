/***
*** Requester Name:  	Priyanka Garg
*** Purpose :		 	SK-9791
*** Schema  :		 	atgcore
*** Date of Request : 	May 10, 2017
***/

INSERT INTO SK_PROPERTY (PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,DEFAULT_VALUE,ENABLE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,PROPERTY_VALUE,LAST_MODIFIED_BY,LAST_MODIFIED_DATE,LAST_VALUE,VERSION,IS_INHERITED,PROPERTY_OPTIONS) values ('Allow_Master_Data_Exchange','Allow Master Data Exchange','Allow Master Data Exchange','Allow Master Data Exchange',null,1,'Boolean','Pricing','ATG',null,null,null,null,'0',null,null);
INSERT INTO SK_PROPERTY_REL_ROLE (PROPERTY_ID, ROLE_ID) values ('Allow_Master_Data_Exchange', 'bs-company-admin');
INSERT INTO SK_PROPERTY_REL_ROLE (PROPERTY_ID, ROLE_ID) values ('Allow_Master_Data_Exchange', 'bs-sales-rep');
INSERT INTO SK_PROPERTY_REL_ROLE (PROPERTY_ID, ROLE_ID) values ('Allow_Master_Data_Exchange', 'bs-normal-user');
INSERT INTO SK_PROPERTY_REL_ROLE (PROPERTY_ID, ROLE_ID) values ('Allow_Master_Data_Exchange', 'bs-regional-admin');
INSERT INTO SK_PROPERTY_REL_ROLE (PROPERTY_ID, ROLE_ID) values ('Allow_Master_Data_Exchange', 'bs-system-admin');
INSERT INTO SK_PROPERTY (PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,DEFAULT_VALUE,ENABLE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,PROPERTY_VALUE,LAST_MODIFIED_BY,LAST_MODIFIED_DATE,LAST_VALUE,VERSION,IS_INHERITED,PROPERTY_OPTIONS) values ('Download_Future_Prices','Download Future Prices','Download Future Prices','Download Future Prices',null,1,'Boolean','Pricing','ATG',null,null,null,null,'0',null,null);
INSERT INTO SK_PROPERTY_REL_ROLE (PROPERTY_ID, ROLE_ID) values ('Download_Future_Prices', 'bs-company-admin');
INSERT INTO SK_PROPERTY_REL_ROLE (PROPERTY_ID, ROLE_ID) values ('Download_Future_Prices', 'bs-sales-rep');
INSERT INTO SK_PROPERTY_REL_ROLE (PROPERTY_ID, ROLE_ID) values ('Download_Future_Prices', 'bs-normal-user');
INSERT INTO SK_PROPERTY_REL_ROLE (PROPERTY_ID, ROLE_ID) values ('Download_Future_Prices', 'bs-regional-admin');
INSERT INTO SK_PROPERTY_REL_ROLE (PROPERTY_ID, ROLE_ID) values ('Download_Future_Prices', 'bs-system-admin');
INSERT INTO SK_ORG_PROPERTY (ID,PROPERTY_ID,PROPERTY_VALUE,LAST_MODIFIED_BY,LAST_MODIFIED_DATE,LAST_VALUE,VERSION,ALLOW_MODIFY_AT_REGION,RELATIVE_TO,USE_SYS_SETTG) values ('de_alw_mstr_dt_xchng','Allow_Master_Data_Exchange',null,null,null,null,null,'0','de','0');
INSERT INTO SK_ORG_PROPERTY (ID,PROPERTY_ID,PROPERTY_VALUE,LAST_MODIFIED_BY,LAST_MODIFIED_DATE,LAST_VALUE,VERSION,ALLOW_MODIFY_AT_REGION,RELATIVE_TO,USE_SYS_SETTG) values ('de_dwnld_ftr_prices','Download_Future_Prices',null,null,null,null,null,'0','de','0');
INSERT INTO SK_ORG_SETTINGS (ID,ORG_SETTING_ID) values ('de','de_alw_mstr_dt_xchng');
INSERT INTO SK_ORG_SETTINGS (ID,ORG_SETTING_ID) values ('de','de_dwnld_ftr_prices');
INSERT INTO SK_ORG_PROPERTY (ID,PROPERTY_ID,PROPERTY_VALUE,LAST_MODIFIED_BY,LAST_MODIFIED_DATE,LAST_VALUE,VERSION,ALLOW_MODIFY_AT_REGION,RELATIVE_TO,USE_SYS_SETTG) values ('at_alw_mstr_dt_xchng','Allow_Master_Data_Exchange',null,null,null,null,null,'0','at','0');
INSERT INTO SK_ORG_PROPERTY (ID,PROPERTY_ID,PROPERTY_VALUE,LAST_MODIFIED_BY,LAST_MODIFIED_DATE,LAST_VALUE,VERSION,ALLOW_MODIFY_AT_REGION,RELATIVE_TO,USE_SYS_SETTG) values ('at_dwnld_ftr_prices','Download_Future_Prices',null,null,null,null,null,'0','at','0');
INSERT INTO SK_ORG_SETTINGS (ID,ORG_SETTING_ID) values ('at','at_alw_mstr_dt_xchng');
INSERT INTO SK_ORG_SETTINGS (ID,ORG_SETTING_ID) values ('at','at_dwnld_ftr_prices');
commit;