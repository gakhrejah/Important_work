/***
*** Requester Name:  	Priyanshi Pandey
*** Purpose :		 	SK-50384
*** Schema  :		 	atgcore, staging
*** Date of Request : 	April 26, 2017
***/


insert into sk_property(PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,ENABLE,DEFAULT_VALUE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,VERSION)
values(
'Allow_Carrier_Usage',
'Allow_Carrier_Usage',
'Allow Carrier Usage',
'Allow Carrier Usage',
1,
'false',
'Boolean',
'Cart_Display',
'ATG',
0);

insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'de_Allw_Carr_Usg',
'Allow_Carrier_Usage',
'false',
1,
'de'
);

insert into sk_org_settings(ID,ORG_SETTING_ID) values('de','de_Allw_Carr_Usg');

insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'at_Allw_Carr_Usg',
'Allow_Carrier_Usage',
'false',
1,
'at'
);

insert into sk_org_settings(ID,ORG_SETTING_ID) values('at','at_Allw_Carr_Usg');

Insert into SK_PROPERTY_REL_ORG (PROPERTY_ID,ORGANIZATION_TYPE) values ('Allow_Carrier_Usage','region');

commit;
