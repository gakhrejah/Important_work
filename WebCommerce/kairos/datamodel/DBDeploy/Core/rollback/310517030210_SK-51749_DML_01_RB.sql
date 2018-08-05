/***
*** Requester Name:  	Mohit Trivedi
*** Purpose :		 	SK-51749
*** Schema  :		 	atgcore, staging
*** Date of Request : 	May 31, 2017
***/

insert into sk_property(PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,ENABLE,DEFAULT_VALUE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,VERSION)
values(
'Repair_Checkbox',
'Repair_Checkbox',
'Repair Report Required for return information',
'Repair Report Required for return information',
1,
'false',
'Boolean',
'Service',
'ATG',
0);


insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'de_Repair_Checkbox',
'Repair_Checkbox',
'false',
1,
'de'
);

insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'at_Repair_Checkbox',
'Repair_Checkbox',
'false',
1,
'at'
);

insert into sk_org_settings(ID,ORG_SETTING_ID) values('de','de_Repair_Checkbox');

insert into sk_org_settings(ID,ORG_SETTING_ID) values('at','at_Repair_Checkbox');

insert into sk_property(PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,ENABLE,DEFAULT_VALUE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,VERSION)
values(
'Info_Abt_The_Err',
'Info_Abt_The_Err',
'Information About The Error for return information',
'Information About The Error for return information',
1,
'false',
'Boolean',
'Service',
'ATG',
0);


insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'de_Info_Abt_The_Err',
'Info_Abt_The_Err',
'false',
1,
'de'
);

insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'at_Info_Abt_The_Err',
'Info_Abt_The_Err',
'false',
1,
'at'
);

insert into sk_org_settings(ID,ORG_SETTING_ID) values('de','de_Info_Abt_The_Err');

insert into sk_org_settings(ID,ORG_SETTING_ID) values('at','at_Info_Abt_The_Err');

insert into sk_property(PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,ENABLE,DEFAULT_VALUE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,VERSION)
values(
'Serial_Number',
'Serial_Number',
'Serial Number for return information',
'Serial Number for return information',
1,
'false',
'Boolean',
'Service',
'ATG',
0);


insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'de_Serial_Number',
'Serial_Number',
'false',
1,
'de'
);

insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'at_Serial_Number',
'Serial_Number',
'false',
1,
'at'
);

insert into sk_org_settings(ID,ORG_SETTING_ID) values('de','de_Serial_Number');

insert into sk_org_settings(ID,ORG_SETTING_ID) values('at','at_Serial_Number');

insert into sk_property(PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,ENABLE,DEFAULT_VALUE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,VERSION)
values(
'Contact_Number',
'Contact_Number',
'Contact Number for return information',
'Contact Number for return information',
1,
'false',
'Boolean',
'Service',
'ATG',
0);


insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'de_Contact_Number',
'Contact_Number',
'false',
1,
'de'
);

insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'at_Contact_Number',
'Contact_Number',
'false',
1,
'at'
);

insert into sk_org_settings(ID,ORG_SETTING_ID) values('de','de_Contact_Number');

insert into sk_org_settings(ID,ORG_SETTING_ID) values('at','at_Contact_Number');

insert into sk_property(PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,ENABLE,DEFAULT_VALUE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,VERSION)
values(
'Inspection_Mark',
'Inspection_Mark',
'Inspection Mark for return information',
'Inspection Mark for return information',
1,
'false',
'Boolean',
'Service',
'ATG',
0);


insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'de_Inspection_Mark',
'Inspection_Mark',
'false',
1,
'de'
);

insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'at_Inspection_Mark',
'Inspection_Mark',
'false',
1,
'at'
);

insert into sk_org_settings(ID,ORG_SETTING_ID) values('de','de_Inspection_Mark');

insert into sk_org_settings(ID,ORG_SETTING_ID) values('at','at_Inspection_Mark');

insert into sk_property(PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,ENABLE,DEFAULT_VALUE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,VERSION)
values(
'Mnufctrer_Of_Plnt',
'Mnufctrer_Of_Plnt',
'Manufacturer Of Machine Or Plant for return information',
'Manufacturer Of Machine Or Plant for return information',
1,
'false',
'Boolean',
'Service',
'ATG',
0);


insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'de_Mnufctrer_Of_Plnt',
'Mnufctrer_Of_Plnt',
'false',
1,
'de'
);

insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'at_Mnufctrer_Of_Plnt',
'Mnufctrer_Of_Plnt',
'false',
1,
'at'
);

insert into sk_org_settings(ID,ORG_SETTING_ID) values('de','de_Mnufctrer_Of_Plnt');

insert into sk_org_settings(ID,ORG_SETTING_ID) values('at','at_Mnufctrer_Of_Plnt');

insert into sk_property(PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,ENABLE,DEFAULT_VALUE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,VERSION)
values(
'Final_Cust_Mchin',
'Final_Cust_Mchin',
'Final Customer Of Machine for return information',
'Final Customer Of Machine for return information',
1,
'false',
'Boolean',
'Service',
'ATG',
0);


insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'de_Final_Cust_Mchin',
'Final_Cust_Mchin',
'false',
1,
'de'
);

insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'at_Final_Cust_Mchin',
'Final_Cust_Mchin',
'false',
1,
'at'
);

insert into sk_org_settings(ID,ORG_SETTING_ID) values('de','de_Final_Cust_Mchin');

insert into sk_org_settings(ID,ORG_SETTING_ID) values('at','at_Final_Cust_Mchin');

commit;


insert into sk_property(PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,ENABLE,DEFAULT_VALUE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,VERSION)
values(
'Sender_Return_Req',
'Sender_Return_Req',
'Sender of Return Request',
'Sender of Return Request',
1,
'',
'String',
'Service',
'ATG',
0);


insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'de_Sender_Return_Req',
'Sender_Return_Req',
'',
1,
'de'
);

insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'at_Sender_Return_Req',
'Sender_Return_Req',
'',
1,
'at'
);

insert into sk_org_settings(ID,ORG_SETTING_ID) values('de','de_Sender_Return_Req');

insert into sk_org_settings(ID,ORG_SETTING_ID) values('at','at_Sender_Return_Req');

insert into sk_property(PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,ENABLE,DEFAULT_VALUE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,VERSION)
values(
'Rcvr_Return_Req',
'Rcvr_Return_Req',
'Receiver of return request',
'Receiver of return request',
1,
'',
'String',
'Service',
'ATG',
0);


insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'de_Rcvr_Return_Req',
'Rcvr_Return_Req',
'',
1,
'de'
);

insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'at_Rcvr_Return_Req',
'Rcvr_Return_Req',
'',
1,
'at'
);

insert into sk_org_settings(ID,ORG_SETTING_ID) values('de','de_Rcvr_Return_Req');

insert into sk_org_settings(ID,ORG_SETTING_ID) values('at','at_Rcvr_Return_Req');







insert into sk_property(PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,ENABLE,DEFAULT_VALUE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,VERSION)
values(
'Activate_Services_And_Spare',
'Activate_Services_And_Spare',
'Activate_Services_And_Spare',
'Activate_Services_And_Spare',
1,
'false',
'Boolean',
'Service',
'ATG',
0);


insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'de_alw_sev_ad_spare',
'Activate_Services_And_Spare',
'false',
1,
'de'
);

insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'at_alw_sev_ad_spare',
'Activate_Services_And_Spare',
'false',
1,
'at'
);

insert into sk_org_settings(ID,ORG_SETTING_ID) values('de','de_alw_sev_ad_spare');

insert into sk_org_settings(ID,ORG_SETTING_ID) values('at','at_alw_sev_ad_spare');

insert into sk_property(PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,ENABLE,DEFAULT_VALUE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,VERSION)
values(
'Service_Option_Avl_In_Region',
'Service_Option_Avl_In_Region',
'Service_Option_Avl_In_Region',
'Service_Option_Avl_In_Region',
1,
'false',
'Boolean',
'Service',
'ATG',
0);


insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'de_srv_opt_avl_rgn',
'Service_Option_Avl_In_Region',
'false',
1,
'de'
);

insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'at_srv_opt_avl_rgn',
'Service_Option_Avl_In_Region',
'false',
1,
'at'
);

insert into sk_org_settings(ID,ORG_SETTING_ID) values('de','de_srv_opt_avl_rgn');

insert into sk_org_settings(ID,ORG_SETTING_ID) values('at','at_srv_opt_avl_rgn');

insert into sk_property(PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,ENABLE,DEFAULT_VALUE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,VERSION)
values(
'S1_Spare_Part',
'S1_Spare_Part',
'S1_Spare_Part',
'S1_Spare_Part',
1,
'false',
'Boolean',
'Service',
'ATG',
0);


insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'de_s1_spr_prt',
'S1_Spare_Part',
'false',
1,
'de'
);

insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'at_s1_spr_prt',
'S1_Spare_Part',
'false',
1,
'at'
);

insert into sk_org_settings(ID,ORG_SETTING_ID) values('de','de_s1_spr_prt');

insert into sk_org_settings(ID,ORG_SETTING_ID) values('at','at_s1_spr_prt');

insert into sk_property(PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,ENABLE,DEFAULT_VALUE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,VERSION)
values(
'S2_CRITICAT_Spare_Part',
'S2_CRITICAT_Spare_Part',
'S2_CRITICAT_Spare_Part',
'S2_CRITICAT_Spare_Part',
1,
'false',
'Boolean',
'Service',
'ATG',
0);


insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'de_s2_crt_spr',
'S2_CRITICAT_Spare_Part',
'false',
1,
'de'
);

insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'at_s2_crt_spr',
'S2_CRITICAT_Spare_Part',
'false',
1,
'at'
);

insert into sk_org_settings(ID,ORG_SETTING_ID) values('de','de_s2_crt_spr');

insert into sk_org_settings(ID,ORG_SETTING_ID) values('at','at_s2_crt_spr');

insert into sk_property(PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,ENABLE,DEFAULT_VALUE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,VERSION)
values(
'S3_Exchange_Article',
'S3_Exchange_Article',
'S3_Exchange_Article',
'S3_Exchange_Article',
1,
'false',
'Boolean',
'Service',
'ATG',
0);


insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'de_s3_exc_art',
'S3_Exchange_Article',
'false',
1,
'de'
);

insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'at_s3_exc_art',
'S3_Exchange_Article',
'false',
1,
'at'
);

insert into sk_org_settings(ID,ORG_SETTING_ID) values('de','de_s3_exc_art');

insert into sk_org_settings(ID,ORG_SETTING_ID) values('at','at_s3_exc_art');

insert into sk_property(PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,ENABLE,DEFAULT_VALUE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,VERSION)
values(
'S4_Exchange_Article_Under_Warranty',
'S4_Exchange_Article_Under_Warranty',
'S4_Exchange_Article_Under_Warranty',
'S4_Exchange_Article_Under_Warranty',
1,
'false',
'Boolean',
'Service',
'ATG',
0);


insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'de_s4_exc_art',
'S4_Exchange_Article_Under_Warranty',
'false',
1,
'de'
);

insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'at_s4_exc_art',
'S4_Exchange_Article_Under_Warranty',
'false',
1,
'at'
);

insert into sk_org_settings(ID,ORG_SETTING_ID) values('de','de_s4_exc_art');

insert into sk_org_settings(ID,ORG_SETTING_ID) values('at','at_s4_exc_art');

insert into sk_property(PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,ENABLE,DEFAULT_VALUE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,VERSION)
values(
'S5_CRITICAL_Exchange_article',
'S5_CRITICAL_Exchange_article',
'S5_CRITICAL_Exchange_article',
'S5_CRITICAL_Exchange_article',
1,
'false',
'Boolean',
'Service',
'ATG',
0);


insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'de_s5_crt_exc',
'S5_CRITICAL_Exchange_article',
'false',
1,
'de'
);

insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'at_s5_crt_exc',
'S5_CRITICAL_Exchange_article',
'false',
1,
'at'
);

insert into sk_org_settings(ID,ORG_SETTING_ID) values('de','de_s5_crt_exc');

insert into sk_org_settings(ID,ORG_SETTING_ID) values('at','at_s5_crt_exc');




insert into sk_property(PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,ENABLE,DEFAULT_VALUE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,VERSION)
values(
'S6_CRITICAL_Exch_Article_under_warrenty',
'S6_CRITICAL_Exch_Article_under_warrenty',
'S6_CRITICAL_Exch_Article_under_warrenty',
'S6_CRITICAL_Exch_Article_under_warrenty',
1,
'false',
'Boolean',
'Service',
'ATG',
0);


insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'de_s6_crt_art',
'S6_CRITICAL_Exch_Article_under_warrenty',
'false',
1,
'de'
);

insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'at_s6_crt_art',
'S6_CRITICAL_Exch_Article_under_warrenty',
'false',
1,
'at'
);

insert into sk_org_settings(ID,ORG_SETTING_ID) values('de','de_s6_crt_art');

insert into sk_org_settings(ID,ORG_SETTING_ID) values('at','at_s6_crt_art');


insert into sk_property(PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,ENABLE,DEFAULT_VALUE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,VERSION)
values(
'S7_Repair_article',
'S7_Repair_article',
'S7_Repair_article',
'S7_Repair_article',
1,
'false',
'Boolean',
'Service',
'ATG',
0);


insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'de_s7_rpr_art',
'S7_Repair_article',
'false',
1,
'de'
);

insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'at_s7_rpr_art',
'S7_Repair_article',
'false',
1,
'at'
);

insert into sk_org_settings(ID,ORG_SETTING_ID) values('de','de_s7_rpr_art');

insert into sk_org_settings(ID,ORG_SETTING_ID) values('at','at_s7_rpr_art');



insert into sk_property(PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,ENABLE,DEFAULT_VALUE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,VERSION)
values(
'S8_Repair_Article_Under_Warranty',
'S8_Repair_Article_Under_Warranty',
'S8_Repair_Article_Under_Warranty',
'S8_Repair_Article_Under_Warranty',
1,
'false',
'Boolean',
'Service',
'ATG',
0);


insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'de_s8_rpr_war',
'S8_Repair_Article_Under_Warranty',
'false',
1,
'de'
);

insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'at_s8_rpr_war',
'S8_Repair_Article_Under_Warranty',
'false',
1,
'at'
);

insert into sk_org_settings(ID,ORG_SETTING_ID) values('de','de_s8_rpr_war');

insert into sk_org_settings(ID,ORG_SETTING_ID) values('at','at_s8_rpr_war');

commit;


delete from SK_GROUP where GROUP_ID ='Service_Spares';
delete from SK_GROUP where GROUP_ID ='Service_Returns';

commit;




delete from SK_ADMIN_CHLD_GROUP where GROUP_ID = 'rgn_srv';

commit;

delete from SK_ADMIN_CHLD_SETTING where GROUP_ID = 'rgn_srv_sprs';
delete from SK_ADMIN_CHLD_SETTING where GROUP_ID = 'rgn_srv_ret';
commit;

delete from SK_ADMIN_TAB where ID = 'rgn_srv_sprs' and GROUP_NAME = 'Region_Service_Spares';
delete from SK_ADMIN_TAB where ID = 'rgn_srv_ret' and GROUP_NAME = 'Region_Service_Returns';

commit;


delete from SK_ADMIN_SETTINGS where ID = 'Activate_Services_And_Spare';
delete from SK_ADMIN_SETTINGS where ID = 'Service_Option_Avl_In_Region';
delete from SK_ADMIN_SETTINGS where ID = 'S1_Spare_Part';
delete from SK_ADMIN_SETTINGS where ID = 'S2_CRITICAT_Spare_Part';
delete from SK_ADMIN_SETTINGS where ID = 'S3_Exchange_Article';
delete from SK_ADMIN_SETTINGS where ID = 'S4_Exchange_Article_Under_Warranty';
delete from SK_ADMIN_SETTINGS where ID = 'S5_CRITICAL_Exchange_article';
delete from SK_ADMIN_SETTINGS where ID = 'S6_CRITICAL_Exch_Article_under_warrenty';
delete from SK_ADMIN_SETTINGS where ID = 'S7_Repair_article';
delete from SK_ADMIN_SETTINGS where ID = 'S8_Repair_Article_Under_Warranty';
delete from SK_ADMIN_SETTINGS where ID = 'Sendr_email_sprs';
delete from SK_ADMIN_SETTINGS where ID = 'Sendr_name_sprs';
delete from SK_ADMIN_SETTINGS where ID = 'Ordr_rcpnts_sprs';
delete from SK_ADMIN_SETTINGS where ID = 'Repair_Checkbox';
delete from SK_ADMIN_SETTINGS where ID = 'Info_Abt_The_Err';
delete from SK_ADMIN_SETTINGS where ID = 'Serial_Number';
delete from SK_ADMIN_SETTINGS where ID = 'Contact_Number';
delete from SK_ADMIN_SETTINGS where ID = 'Inspection_Mark';
delete from SK_ADMIN_SETTINGS where ID = 'Mnufctrer_Of_Plnt';
delete from SK_ADMIN_SETTINGS where ID = 'Final_Cust_Mchin';
delete from SK_ADMIN_SETTINGS where ID = 'Sender_Return_Req';
delete from SK_ADMIN_SETTINGS where ID = 'Rcvr_Return_Req';

commit;