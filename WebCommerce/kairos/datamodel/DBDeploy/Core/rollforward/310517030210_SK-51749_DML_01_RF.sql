/***
*** Requester Name:  	Mohit Trivedi
*** Purpose :		 	SK-51749
*** Schema  :		 	atgcore, staging
*** Date of Request : 	May 31, 2017
***/


delete from sk_property where PROPERTY_ID='Sender_Return_Req';
delete from sk_org_property where ID='de_Sender_Return_Req' and PROPERTY_ID='Sender_Return_Req';
delete from sk_org_property where ID='at_Sender_Return_Req' and PROPERTY_ID='Sender_Return_Req';
delete from sk_org_settings where ID='de' and ORG_SETTING_ID='de_Sender_Return_Req';
delete from sk_org_settings where ID='at' and ORG_SETTING_ID='at_Sender_Return_Req';
commit;



delete from sk_property where PROPERTY_ID='Rcvr_Return_Req';
delete from sk_org_property where ID='de_Rcvr_Return_Req' and PROPERTY_ID='Rcvr_Return_Req';
delete from sk_org_property where ID='at_Rcvr_Return_Req' and PROPERTY_ID='Rcvr_Return_Req';
delete from sk_org_settings where ID='de' and ORG_SETTING_ID='de_Rcvr_Return_Req';
delete from sk_org_settings where ID='at' and ORG_SETTING_ID='at_Rcvr_Return_Req';
commit;


delete from sk_property where PROPERTY_ID='Activate_Services_And_Spare';
delete from sk_org_property where ID='de_alw_sev_ad_spare' and PROPERTY_ID='Activate_Services_And_Spare';
delete from sk_org_property where ID='at_alw_sev_ad_spare' and PROPERTY_ID='Activate_Services_And_Spare';
delete from sk_org_settings where ID='de' and ORG_SETTING_ID='de_alw_sev_ad_spare';
delete from sk_org_settings where ID='at' and ORG_SETTING_ID='at_alw_sev_ad_spare';
commit;



delete from sk_property where PROPERTY_ID='Service_Option_Avl_In_Region';
delete from sk_org_property where ID='de_Service_Option_Avl_In_Region' and PROPERTY_ID='Service_Option_Avl_In_Region';
delete from sk_org_property where ID='at_Service_Option_Avl_In_Region' and PROPERTY_ID='Service_Option_Avl_In_Region';
delete from sk_org_settings where ID='de' and ORG_SETTING_ID='de_Service_Option_Avl_In_Region';
delete from sk_org_settings where ID='at' and ORG_SETTING_ID='at_Service_Option_Avl_In_Region';
commit;


delete from sk_property where PROPERTY_ID='S1_Spare_Part';
delete from sk_org_property where ID='de_s1_spr_prt' and PROPERTY_ID='S1_Spare_Part';
delete from sk_org_property where ID='at_s1_spr_prt' and PROPERTY_ID='S1_Spare_Part';
delete from sk_org_settings where ID='de' and ORG_SETTING_ID='de_s1_spr_prt';
delete from sk_org_settings where ID='at' and ORG_SETTING_ID='at_s1_spr_prt';
commit;



delete from sk_property where PROPERTY_ID='S2_CRITICAT_Spare_Part';
delete from sk_org_property where ID='de_s2_crt_spr' and PROPERTY_ID='S2_CRITICAT_Spare_Part';
delete from sk_org_property where ID='at_s2_crt_spr' and PROPERTY_ID='S2_CRITICAT_Spare_Part';
delete from sk_org_settings where ID='de' and ORG_SETTING_ID='de_s2_crt_spr';
delete from sk_org_settings where ID='at' and ORG_SETTING_ID='at_s2_crt_spr';
commit;


delete from sk_property where PROPERTY_ID='S3_Exchange_Article';
delete from sk_org_property where ID='de_s3_exc_art' and PROPERTY_ID='S3_Exchange_Article';
delete from sk_org_property where ID='at_s3_exc_art' and PROPERTY_ID='S3_Exchange_Article';
delete from sk_org_settings where ID='de' and ORG_SETTING_ID='de_s3_exc_art';
delete from sk_org_settings where ID='at' and ORG_SETTING_ID='at_s3_exc_art';
commit;



delete from sk_property where PROPERTY_ID='S4_Exchange_Article_Under_Warranty';
delete from sk_org_property where ID='de_s4_exc_art' and PROPERTY_ID='S4_Exchange_Article_Under_Warranty';
delete from sk_org_property where ID='at_s4_exc_art' and PROPERTY_ID='S4_Exchange_Article_Under_Warranty';
delete from sk_org_settings where ID='de' and ORG_SETTING_ID='de_s4_exc_art';
delete from sk_org_settings where ID='at' and ORG_SETTING_ID='at_s4_exc_art';
commit;


delete from sk_property where PROPERTY_ID='S5_CRITICAL_Exchange_article';
delete from sk_org_property where ID='de_s5_crt_exc' and PROPERTY_ID='S5_CRITICAL_Exchange_article';
delete from sk_org_property where ID='at_s5_crt_exc' and PROPERTY_ID='S5_CRITICAL_Exchange_article';
delete from sk_org_settings where ID='de' and ORG_SETTING_ID='de_s5_crt_exc';
delete from sk_org_settings where ID='at' and ORG_SETTING_ID='at_s5_crt_exc';
commit;

delete from sk_property where PROPERTY_ID='S6_CRITICAL_Exch_Article_under_warrenty';
delete from sk_org_property where ID='de_s6_crt_art' and PROPERTY_ID='S6_CRITICAL_Exch_Article_under_warrenty';
delete from sk_org_property where ID='at_s6_crt_art' and PROPERTY_ID='S6_CRITICAL_Exch_Article_under_warrenty';
delete from sk_org_settings where ID='de' and ORG_SETTING_ID='de_s6_crt_art';
delete from sk_org_settings where ID='at' and ORG_SETTING_ID='at_s6_crt_art';
commit;


delete from sk_property where PROPERTY_ID='S7_Repair_article';
delete from sk_org_property where ID='de_s7_rpr_art' and PROPERTY_ID='S7_Repair_article';
delete from sk_org_property where ID='at_s7_rpr_art' and PROPERTY_ID='S7_Repair_article';
delete from sk_org_settings where ID='de' and ORG_SETTING_ID='de_s7_rpr_art';
delete from sk_org_settings where ID='at' and ORG_SETTING_ID='at_s7_rpr_art';
commit;


delete from sk_property where PROPERTY_ID='S8_Repair_Article_Under_Warranty';
delete from sk_org_property where ID='de_s8_rpr_war' and PROPERTY_ID='S8_Repair_Article_Under_Warranty';
delete from sk_org_property where ID='at_s8_rpr_war' and PROPERTY_ID='S8_Repair_Article_Under_Warranty';
delete from sk_org_settings where ID='de' and ORG_SETTING_ID='de_s8_rpr_war';
delete from sk_org_settings where ID='at' and ORG_SETTING_ID='at_s8_rpr_war';
commit;



delete from sk_property where PROPERTY_ID='Repair_Checkbox';
delete from sk_org_property where ID='de_Repair_Checkbox' and PROPERTY_ID='Repair_Checkbox';
delete from sk_org_property where ID='at_Repair_Checkbox' and PROPERTY_ID='Repair_Checkbox';
delete from sk_org_settings where ID='de' and ORG_SETTING_ID='de_Repair_Checkbox';
delete from sk_org_settings where ID='at' and ORG_SETTING_ID='at_Repair_Checkbox';
commit;



delete from sk_property where PROPERTY_ID='Info_Abt_The_Err';
delete from sk_org_property where ID='de_Info_Abt_The_Err' and PROPERTY_ID='Info_Abt_The_Err';
delete from sk_org_property where ID='at_Info_Abt_The_Err' and PROPERTY_ID='Info_Abt_The_Err';
delete from sk_org_settings where ID='de' and ORG_SETTING_ID='de_Info_Abt_The_Err';
delete from sk_org_settings where ID='at' and ORG_SETTING_ID='at_Info_Abt_The_Err';
commit;


delete from sk_property where PROPERTY_ID='Serial_Number';
delete from sk_org_property where ID='de_Serial_Number' and PROPERTY_ID='Serial_Number';
delete from sk_org_property where ID='at_Serial_Number' and PROPERTY_ID='Serial_Number';
delete from sk_org_settings where ID='de' and ORG_SETTING_ID='de_Serial_Number';
delete from sk_org_settings where ID='at' and ORG_SETTING_ID='at_Serial_Number';
commit;



delete from sk_property where PROPERTY_ID='Contact_Number';
delete from sk_org_property where ID='de_Contact_Number' and PROPERTY_ID='Contact_Number';
delete from sk_org_property where ID='at_Contact_Number' and PROPERTY_ID='Contact_Number';
delete from sk_org_settings where ID='de' and ORG_SETTING_ID='de_Contact_Number';
delete from sk_org_settings where ID='at' and ORG_SETTING_ID='at_Contact_Number';
commit;


delete from sk_property where PROPERTY_ID='Inspection_Mark';
delete from sk_org_property where ID='de_Inspection_Mark' and PROPERTY_ID='Inspection_Mark';
delete from sk_org_property where ID='at_Inspection_Mark' and PROPERTY_ID='Inspection_Mark';
delete from sk_org_settings where ID='de' and ORG_SETTING_ID='de_Inspection_Mark';
delete from sk_org_settings where ID='at' and ORG_SETTING_ID='at_Inspection_Mark';
commit;



delete from sk_property where PROPERTY_ID='Mnufctrer_Of_Plnt';
delete from sk_org_property where ID='de_Mnufctrer_Of_Plnt' and PROPERTY_ID='Mnufctrer_Of_Plnt';
delete from sk_org_property where ID='at_Mnufctrer_Of_Plnt' and PROPERTY_ID='Mnufctrer_Of_Plnt';
delete from sk_org_settings where ID='de' and ORG_SETTING_ID='de_Mnufctrer_Of_Plnt';
delete from sk_org_settings where ID='at' and ORG_SETTING_ID='at_Mnufctrer_Of_Plnt';
commit;


delete from sk_property where PROPERTY_ID='Final_Cust_Mchin';
delete from sk_org_property where ID='de_Final_Cust_Mchin' and PROPERTY_ID='Final_Cust_Mchin';
delete from sk_org_property where ID='at_Final_Cust_Mchin' and PROPERTY_ID='Final_Cust_Mchin';
delete from sk_org_settings where ID='de' and ORG_SETTING_ID='de_Final_Cust_Mchin';
delete from sk_org_settings where ID='at' and ORG_SETTING_ID='at_Final_Cust_Mchin';
commit;


insert into sk_property(PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,ENABLE,DEFAULT_VALUE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,VERSION)
values(
'Repair_Checkbox',
'Repair_Checkbox',
'Repair Report Required for return information',
'Repair Report Required for return information',
1,
'false',
'Boolean',
'Service_Returns',
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
'Service_Returns',
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
'Service_Returns',
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
'Service_Returns',
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
'Service_Returns',
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
'Service_Returns',
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
'Service_Returns',
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
'Service_Returns',
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
'Service_Returns',
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
'Service_Spares',
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
'Service_Spares',
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
'Service_Spares',
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
'Service_Spares',
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
'Service_Spares',
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
'Service_Spares',
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
'Service_Spares',
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
'Service_Spares',
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
'Service_Spares',
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
'Service_Spares',
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





Insert into SK_GROUP (GROUP_ID,GROUP_NAME) values ('Service_Spares','Service_Spares');
Insert into SK_GROUP (GROUP_ID,GROUP_NAME) values ('Service_Returns','Service_Returns');

commit;


Insert into SK_ADMIN_TAB (ID,GROUP_NAME) values ('rgn_srv_sprs','Region_Service_Spares');
Insert into SK_ADMIN_TAB (ID,GROUP_NAME) values ('rgn_srv_ret','Region_Service_Returns');

commit;

Insert into SK_ADMIN_CHLD_GROUP (GROUP_ID,SEQUENCE_NUM,CHILD_GROUP) values ('rgn_srv',0,'rgn_srv_sprs');
Insert into SK_ADMIN_CHLD_GROUP (GROUP_ID,SEQUENCE_NUM,CHILD_GROUP) values ('rgn_srv',1,'rgn_srv_ret');

commit;


Insert into SK_ADMIN_SETTINGS (ID,PROPERTY_NAME) values ('Activate_Services_And_Spare','Activate_Services_And_Spare');
Insert into SK_ADMIN_SETTINGS (ID,PROPERTY_NAME) values ('Service_Option_Avl_In_Region','Service_Option_Avl_In_Region');
Insert into SK_ADMIN_SETTINGS (ID,PROPERTY_NAME) values ('S1_Spare_Part','S1_Spare_Part');
Insert into SK_ADMIN_SETTINGS (ID,PROPERTY_NAME) values ('S2_CRITICAT_Spare_Part','S2_CRITICAT_Spare_Part');
Insert into SK_ADMIN_SETTINGS (ID,PROPERTY_NAME) values ('S3_Exchange_Article','S3_Exchange_Article');
Insert into SK_ADMIN_SETTINGS (ID,PROPERTY_NAME) values ('S4_Exchange_Article_Under_Warranty','S4_Exchange_Article_Under_Warranty');
Insert into SK_ADMIN_SETTINGS (ID,PROPERTY_NAME) values ('S5_CRITICAL_Exchange_article','S5_CRITICAL_Exchange_article');
Insert into SK_ADMIN_SETTINGS (ID,PROPERTY_NAME) values ('S6_CRITICAL_Exch_Article_under_warrenty','S6_CRITICAL_Exch_Article_under_warrenty');
Insert into SK_ADMIN_SETTINGS (ID,PROPERTY_NAME) values ('S7_Repair_article','S7_Repair_article');
Insert into SK_ADMIN_SETTINGS (ID,PROPERTY_NAME) values ('S8_Repair_Article_Under_Warranty','S8_Repair_Article_Under_Warranty');
Insert into SK_ADMIN_SETTINGS (ID,PROPERTY_NAME) values ('Sendr_email_sprs','Sendr_email_sprs');
Insert into SK_ADMIN_SETTINGS (ID,PROPERTY_NAME) values ('Sendr_name_sprs','Sendr_name_sprs');
Insert into SK_ADMIN_SETTINGS (ID,PROPERTY_NAME) values ('Ordr_rcpnts_sprs','Ordr_rcpnts_sprs');

Insert into SK_ADMIN_SETTINGS (ID,PROPERTY_NAME) values ('Repair_Checkbox','Repair_Checkbox');
Insert into SK_ADMIN_SETTINGS (ID,PROPERTY_NAME) values ('Info_Abt_The_Err','Info_Abt_The_Err');
Insert into SK_ADMIN_SETTINGS (ID,PROPERTY_NAME) values ('Serial_Number','Serial_Number');
Insert into SK_ADMIN_SETTINGS (ID,PROPERTY_NAME) values ('Contact_Number','Contact_Number');
Insert into SK_ADMIN_SETTINGS (ID,PROPERTY_NAME) values ('Inspection_Mark','Inspection_Mark');
Insert into SK_ADMIN_SETTINGS (ID,PROPERTY_NAME) values ('Mnufctrer_Of_Plnt','Mnufctrer_Of_Plnt');
Insert into SK_ADMIN_SETTINGS (ID,PROPERTY_NAME) values ('Final_Cust_Mchin','Final_Cust_Mchin');
Insert into SK_ADMIN_SETTINGS (ID,PROPERTY_NAME) values ('Sender_Return_Req','Sender_Return_Req');
Insert into SK_ADMIN_SETTINGS (ID,PROPERTY_NAME) values ('Rcvr_Return_Req','Rcvr_Return_Req');

commit;



Insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('rgn_srv_sprs',0,'Activate_Services_And_Spare');
Insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('rgn_srv_sprs',1,'Service_Option_Avl_In_Region');
Insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('rgn_srv_sprs',2,'S1_Spare_Part');
Insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('rgn_srv_sprs',3,'S2_CRITICAT_Spare_Part');
Insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('rgn_srv_sprs',4,'S3_Exchange_Article');
Insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('rgn_srv_sprs',5,'S4_Exchange_Article_Under_Warranty');
Insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('rgn_srv_sprs',6,'S5_CRITICAL_Exchange_article');
Insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('rgn_srv_sprs',7,'S6_CRITICAL_Exch_Article_under_warrenty');
Insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('rgn_srv_sprs',8,'S7_Repair_article');
Insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('rgn_srv_sprs',9,'S8_Repair_Article_Under_Warranty');
Insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('rgn_srv_sprs',10,'Sendr_email_sprs');
Insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('rgn_srv_sprs',11,'Sendr_name_sprs');
Insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('rgn_srv_sprs',12,'Ordr_rcpnts_sprs');

Insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('rgn_srv_ret',0,'Repair_Checkbox');
Insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('rgn_srv_ret',1,'Info_Abt_The_Err');
Insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('rgn_srv_ret',2,'Serial_Number');
Insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('rgn_srv_ret',3,'Contact_Number');
Insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('rgn_srv_ret',4,'Inspection_Mark');
Insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('rgn_srv_ret',5,'Mnufctrer_Of_Plnt');
Insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('rgn_srv_ret',6,'Final_Cust_Mchin');
Insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('rgn_srv_ret',7,'Sender_Return_Req');
Insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('rgn_srv_ret',8,'Rcvr_Return_Req');

commit;