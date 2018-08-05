/***
*** Requester Name:  	Prasanna K Sinha
*** Purpose :		 	SK-39735
*** Schema  :		 	atgcore, staging
*** Date of Request : 	May 03, 2017
***/


insert into sk_property(PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,ENABLE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,VERSION,PROPERTY_OPTIONS)
values(
'Allow_Purchase_Of_Product_PLM_490',
'Allow_Purchase_Of_Product_PLM_490',
'Allow_Purchase_Of_Product_PLM_490',
'Allow_Purchase_Of_Product_PLM_490',
1,
'Boolean',
'Cart_Rules',
'ATG',
0,
'');

insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'de_alw_pur_plm_490',
'Allow_Purchase_Of_Product_PLM_490',
'true',
1,
'de'
);

insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'at_alw_pur_plm_490',
'Allow_Purchase_Of_Product_PLM_490',
'true',
1,
'at'
);

insert into sk_org_settings(ID,ORG_SETTING_ID) values('de','de_alw_pur_plm_490');
insert into sk_org_settings(ID,ORG_SETTING_ID) values('at','at_alw_pur_plm_490');

commit;