/***
*** Requester Name:  	Mohit Trivedi
*** Purpose :		 	SK-39778
*** Schema  :		 	atgcore, staging
*** Date of Request : 	May 19, 2017
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
