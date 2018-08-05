/***
*** Requester Name:  	Priyanshi Pandey
*** Purpose :		 	SK-9685
*** Schema  :		 	atgcore, staging
*** Date of Request : 	May 11, 2017
***/


insert into sk_property(PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,ENABLE,DEFAULT_VALUE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,VERSION)
values(
'Service_Part_Number_Replace_O',
'Service_Part_Number_Replace_O',
'Replace Latin O with 0 in ServicePart Number',
'Replace Latin O with 0 in ServicePart Number',
1,
'false',
'Boolean',
'General',
'ATG',
0);

insert into sk_property(PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,ENABLE,DEFAULT_VALUE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,VERSION)
values(
'Service_Part_Number_Replace_I',
'Service_Part_Number_Replace_I',
'Replace Latin I with 1 in ServicePart Number',
'Replace Latin I with 1 in ServicePart Number',
1,
'false',
'Boolean',
'General',
'ATG',
0);

insert into sk_property(PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,ENABLE,DEFAULT_VALUE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,VERSION)
values(
'Service_Part_Number_Remove_Spaces',
'Service_Part_Number_Remove_Spaces',
'Remove Empty Spaces in ServicePart Number',
'Remove Empty Spaces in ServicePart Number',
1,
'false',
'Boolean',
'General',
'ATG',
0);

insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'de_Serv_Pt_Nbr_Rep_O',
'Service_Part_Number_Replace_O',
'false',
1,
'de'
);

insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'de_Serv_Pt_Nbr_Rep_I',
'Service_Part_Number_Replace_I',
'false',
1,
'de'
);

insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'de_Serv_Pt_Nm_Rm_Sc',
'Service_Part_Number_Remove_Spaces',
'false',
1,
'de'
);

insert into sk_org_settings(ID,ORG_SETTING_ID) values('de','de_Serv_Pt_Nbr_Rep_O');

insert into sk_org_settings(ID,ORG_SETTING_ID) values('de','de_Serv_Pt_Nbr_Rep_I');

insert into sk_org_settings(ID,ORG_SETTING_ID) values('de','de_Serv_Pt_Nm_Rm_Sc');

insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'at_Serv_Pt_Nbr_Rep_O',
'Service_Part_Number_Replace_O',
'false',
1,
'at'
);

insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'at_Serv_Pt_Nbr_Rep_I',
'Service_Part_Number_Replace_I',
'false',
1,
'at'
);

insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'at_Serv_Pt_Nm_Rm_Sc',
'Service_Part_Number_Remove_Spaces',
'false',
1,
'at'
);

insert into sk_org_settings(ID,ORG_SETTING_ID) values('at','at_Serv_Pt_Nbr_Rep_O');

insert into sk_org_settings(ID,ORG_SETTING_ID) values('at','at_Serv_Pt_Nbr_Rep_I');

insert into sk_org_settings(ID,ORG_SETTING_ID) values('at','at_Serv_Pt_Nm_Rm_Sc');


Insert into SK_PROPERTY_REL_ORG (PROPERTY_ID,ORGANIZATION_TYPE) values ('Service_Part_Number_Replace_O','region');

Insert into SK_PROPERTY_REL_ORG (PROPERTY_ID,ORGANIZATION_TYPE) values ('Service_Part_Number_Replace_I','region');

Insert into SK_PROPERTY_REL_ORG (PROPERTY_ID,ORGANIZATION_TYPE) values ('Service_Part_Number_Remove_Spaces','region');

commit;
