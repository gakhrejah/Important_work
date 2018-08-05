/***
*** Requester Name:  	Prasanna K Sinha
*** Purpose :		 	SK-9688
*** Schema  :		 	atgcore 
*** Date of Request : 	May 19, 2017
***/

delete from sk_org_settings where ORG_SETTING_ID='de_lmt_chn_comp_add';
delete from sk_org_settings where ORG_SETTING_ID='at_lmt_chn_comp_add';

delete from sk_org_settings where ORG_SETTING_ID='de_alw_mod_del_add';
delete from sk_org_settings where ORG_SETTING_ID='at_alw_mod_del_add';

delete from sk_org_settings where ORG_SETTING_ID='de_use_add_codes';
delete from sk_org_settings where ORG_SETTING_ID='at_use_add_codes';

delete from sk_org_property where ID='de_lmt_chn_comp_add';
delete from sk_org_property where ID='at_lmt_chn_comp_add';

delete from sk_org_property where ID='de_alw_mod_del_add';
delete from sk_org_property where ID='at_alw_mod_del_add';

delete from sk_org_property where ID='de_use_add_codes';
delete from sk_org_property where ID='at_use_add_codes';

delete from SK_PROPERTY_REL_ROLE where PROPERTY_ID='Allow_to_Modify_Delivery_Address' and ROLE_ID='bs-system-admin';
delete from SK_PROPERTY_REL_ROLE where PROPERTY_ID='Allow_to_Modify_Delivery_Address' and ROLE_ID='bs-regional-admin';
delete from SK_PROPERTY_REL_ROLE where PROPERTY_ID='Allow_to_Modify_Delivery_Address' and ROLE_ID='bs-normal-user';
delete from SK_PROPERTY_REL_ROLE where PROPERTY_ID='Allow_to_Modify_Delivery_Address' and ROLE_ID='bs-sales-rep';
delete from SK_PROPERTY_REL_ROLE where PROPERTY_ID='Allow_to_Modify_Delivery_Address' and ROLE_ID='bs-company-admin';

delete from sk_property where property_id='Limit_Change_of_Company_Address';
delete from sk_property where property_id='Allow_to_Modify_Delivery_Address';
delete from sk_property where property_id='Use_Address_Codes';

delete from sk_admin_chld_setting where group_id='crt_inf';

insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('crt_inf',0,'Allow_OCI_cXML');
insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('crt_inf',1,'Allow_Add_Additional_Email');
insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('crt_inf',2,'ERP2Mall_Keep_Price');
insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('crt_inf',3,'ERP2Mall_Stop_Option');
insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('crt_inf',4,'Final_Customer_Name_And_Country');
insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('crt_inf',5,'Set_Final_Customer_Name_And_Country');
insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('crt_inf',6,'Re-use_Customer_Order_Number');
insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('crt_inf',7,'Set_Delivery_Address');
insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('crt_inf',8,'Allow_countries_dlvry_addr');
insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('crt_inf',9,'Allow_Exp_Delivery');
insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('crt_inf',10,'Allow_Complete_Delivery');
insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('crt_inf',11,'Local_Cutoff_Time');
insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('crt_inf',12,'Allow_RGA');
insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('crt_inf',13,'Order_Acknowledgement_Email');
insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('crt_inf',14,'Send_Order_Status_Email');
insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('crt_inf',15,'Odr_Cnfrm_Sender');
insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('crt_inf',16,'Snd_Dlvry_Mails');
insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('crt_inf',17,'Dspth_Note_Sndr');
insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('crt_inf',18,'Agg_Odr_Cnfm_Email');
insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('crt_inf',19,'Snd_Invoice_Mails');

delete from SK_ADMIN_SETTINGS where ID='Limit_Change_of_Company_Address';
delete from SK_ADMIN_SETTINGS where ID='Allow_to_Modify_Delivery_Address';
delete from SK_ADMIN_SETTINGS where ID='Use_Address_Codes';

commit;
