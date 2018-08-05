/***
*** Requester Name:  	Priyanshi Pandey
*** Purpose :		 	SK-39825
*** Schema  :		 	atgcore, staging
*** Date of Request : 	May 22, 2017
***/

insert into sk_property(PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,ENABLE,DEFAULT_VALUE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,VERSION)
values(
'Disp_Surchrg_Mssg_Exprss_Delvry',
'Disp_Surchrg_Mssg_Exprss_Delvry',
'Disp_Surchrg_Mssg_Exprss_Delvry',
'Display message about surcharge for express delivery option',
1,
'',
'String',
'Cart_Rules',
'ATG',
0);

insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'de_Srg_Msg_Exp_Del',
'Disp_Surchrg_Mssg_Exprss_Delvry',
'',
1,
'de'
);

insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'at_Srg_Msg_Exp_Del',
'Disp_Surchrg_Mssg_Exprss_Delvry',
'',
1,
'at'
);

insert into sk_org_settings(ID,ORG_SETTING_ID) values('at','at_Srg_Msg_Exp_Del');
insert into sk_org_settings(ID,ORG_SETTING_ID) values('de','de_Srg_Msg_Exp_Del');

Insert into SK_PROPERTY_REL_ORG (PROPERTY_ID,ORGANIZATION_TYPE) values ('Disp_Surchrg_Mssg_Exprss_Delvry','region');

insert into sk_admin_settings values('Disp_Surchrg_Mssg_Exprss_Delvry','Disp_Surchrg_Mssg_Exprss_Delvry');

INSERT INTO SK_ADMIN_CHLD_SETTING VALUES ('crt_rls',13,'Disp_Surchrg_Mssg_Exprss_Delvry');

commit;
