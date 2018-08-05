/***
*** Requester Name	:  	Prasanna Sinha
*** Purpose 		:	SK-47170
*** Schema  		:	atgcore
*** Date of Request : 	May 18, 2017
***/
delete from SK_ADMIN_CHLD_SETTING where GROUP_ID='crt_dis' AND SETTING_ID='Extended_Order_Overview';
delete from SK_ADMIN_SETTINGS where ID='Extended_Order_Overview';
commit;

insert into sk_admin_settings values('Extended_Order_Overview','Extended_Order_Overview');
insert into sk_admin_chld_setting values('crt_dis',11,'Extended_Order_Overview');

update sk_property set group_id='Cart_Display' where property_id='Extended_Order_Overview';

insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'de_ext_ord_overview',
'Extended_Order_Overview',
'true',
1,
'de'
);

insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'at_ext_ord_overview',
'Extended_Order_Overview',
'true',
1,
'at'
);

insert into sk_org_settings(ID,ORG_SETTING_ID) values('de','de_ext_ord_overview');
insert into sk_org_settings(ID,ORG_SETTING_ID) values('at','at_ext_ord_overview');

commit;