/***
*** Requester Name:  	Prasanna K Sinha
*** Purpose :		 	SK-9688
*** Schema  :		 	atgcore 
*** Date of Request : 	May 19, 2017
***/

insert into sk_property(PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,DEFAULT_VALUE,ENABLE,PROPERTY_TYPE,GROUP_ID,
COMPONENT_ID,VERSION) values('Limit_Change_of_Company_Address','Limit_Change_of_Company_Address','Limit_Change_of_Company_Address',
'Limit_Change_of_Company_Address','true',1,'Boolean','Cust_Info_Dlvry','ATG',0);

insert into sk_property(PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,DEFAULT_VALUE,ENABLE,PROPERTY_TYPE,GROUP_ID,
COMPONENT_ID,VERSION) values('Allow_to_Modify_Delivery_Address','Allow_to_Modify_Delivery_Address','Allow_to_Modify_Delivery_Address',
'Allow_to_Modify_Delivery_Address','true',1,'Boolean','Cust_Info_Dlvry','ATG',0);

insert into sk_property(PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,DEFAULT_VALUE,ENABLE,PROPERTY_TYPE,GROUP_ID,
COMPONENT_ID,VERSION) values('Use_Address_Codes','Use_Address_Codes','Use_Address_Codes',
'Use_Address_Codes','true',1,'Boolean','Cust_Info_Dlvry','ATG',0);

insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Limit_Change_of_Company_Address','region');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Allow_to_Modify_Delivery_Address','region');
insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Use_Address_Codes','region');

insert into sk_org_property (id,property_id,property_value,relative_to) values('de_lmt_chn_comp_add','Limit_Change_of_Company_Address','true','de');
insert into sk_org_property (id,property_id,property_value,relative_to) values('at_lmt_chn_comp_add','Limit_Change_of_Company_Address','true','at');

insert into sk_org_property (id,property_id,property_value,relative_to) values('de_alw_mod_del_add','Allow_to_Modify_Delivery_Address','true','de');
insert into sk_org_property (id,property_id,property_value,relative_to) values('at_alw_mod_del_add','Allow_to_Modify_Delivery_Address','true','at');

insert into sk_org_property (id,property_id,property_value,relative_to) values('de_use_add_codes','Use_Address_Codes','true','de');
insert into sk_org_property (id,property_id,property_value,relative_to) values('at_use_add_codes','Use_Address_Codes','true','at');

insert into sk_org_settings values('de','de_lmt_chn_comp_add');
insert into sk_org_settings values('at','at_lmt_chn_comp_add');
insert into sk_org_settings values('de','de_alw_mod_del_add');
insert into sk_org_settings values('at','at_alw_mod_del_add');
insert into sk_org_settings values('de','de_use_add_codes');
insert into sk_org_settings values('at','at_use_add_codes');

insert into sk_admin_settings values('Limit_Change_of_Company_Address', 'Limit_Change_of_Company_Address');
insert into sk_admin_settings values('Allow_to_Modify_Delivery_Address', 'Allow_to_Modify_Delivery_Address');
insert into sk_admin_settings values('Use_Address_Codes', 'Use_Address_Codes');

insert into SK_PROPERTY_REL_ROLE (PROPERTY_ID,ROLE_ID) values ('Allow_to_Modify_Delivery_Address','bs-company-admin');
insert into SK_PROPERTY_REL_ROLE (PROPERTY_ID,ROLE_ID) values ('Allow_to_Modify_Delivery_Address','bs-regional-admin');
insert into SK_PROPERTY_REL_ROLE (PROPERTY_ID,ROLE_ID) values ('Allow_to_Modify_Delivery_Address','bs-system-admin');
insert into SK_PROPERTY_REL_ROLE (PROPERTY_ID,ROLE_ID) values ('Allow_to_Modify_Delivery_Address','bs-sales-rep');
insert into SK_PROPERTY_REL_ROLE (PROPERTY_ID,ROLE_ID) values ('Allow_to_Modify_Delivery_Address','bs-normal-user');

delete from sk_admin_chld_setting where group_id='crt_inf';

insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('crt_inf',0,'Allow_OCI_cXML');
insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('crt_inf',1,'Allow_Add_Additional_Email');
insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('crt_inf',2,'ERP2Mall_Keep_Price');
insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('crt_inf',3,'ERP2Mall_Stop_Option');
insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('crt_inf',4,'Final_Customer_Name_And_Country');
insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('crt_inf',5,'Set_Final_Customer_Name_And_Country');
insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('crt_inf',6,'Re-use_Customer_Order_Number');
insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('crt_inf',7,'Set_Delivery_Address');
insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('crt_inf',8,'Limit_Change_of_Company_Address');
insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('crt_inf',9,'Allow_to_Modify_Delivery_Address');
insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('crt_inf',10,'Use_Address_Codes');
insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('crt_inf',11,'Allow_countries_dlvry_addr');
insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('crt_inf',12,'Allow_Exp_Delivery');
insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('crt_inf',13,'Allow_Complete_Delivery');
insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('crt_inf',14,'Local_Cutoff_Time');
insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('crt_inf',15,'Allow_RGA');
insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('crt_inf',16,'Order_Acknowledgement_Email');
insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('crt_inf',17,'Send_Order_Status_Email');
insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('crt_inf',18,'Odr_Cnfrm_Sender');
insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('crt_inf',19,'Snd_Dlvry_Mails');
insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('crt_inf',20,'Dspth_Note_Sndr');
insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('crt_inf',21,'Agg_Odr_Cnfm_Email');
insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('crt_inf',22,'Snd_Invoice_Mails');

commit;






