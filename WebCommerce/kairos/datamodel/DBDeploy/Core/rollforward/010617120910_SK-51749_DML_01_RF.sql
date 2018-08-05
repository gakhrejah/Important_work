insert into sk_property(PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,ENABLE,DEFAULT_VALUE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,VERSION)
values(
'Sendr_email_sprs',
'Sendr_email_sprs',
'Sendr_email_sprs',
'Sendr_email_sprs',
1,
'false',
'String',
'Service_Spares',
'ATG',
0);


insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'de_Sendr_email_sprs',
'Sendr_email_sprs',
'false',
1,
'de'
);

insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'at_Sendr_email_sprs',
'Sendr_email_sprs',
'false',
1,
'at'
);

insert into sk_org_settings(ID,ORG_SETTING_ID) values('de','de_Sendr_email_sprs');

insert into sk_org_settings(ID,ORG_SETTING_ID) values('at','at_Sendr_email_sprs');

insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Sendr_email_sprs','region');


insert into sk_property(PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,ENABLE,DEFAULT_VALUE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,VERSION)
values(
'Sendr_name_sprs',
'Sendr_name_sprs',
'Sendr_name_sprs',
'Sendr_name_sprs',
1,
'false',
'String',
'Service_Spares',
'ATG',
0);


insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'de_Sendr_name_sprs',
'Sendr_name_sprs',
'false',
1,
'de'
);

insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'at_Sendr_name_sprs',
'Sendr_name_sprs',
'false',
1,
'at'
);

insert into sk_org_settings(ID,ORG_SETTING_ID) values('de','de_Sendr_name_sprs');

insert into sk_org_settings(ID,ORG_SETTING_ID) values('at','at_Sendr_name_sprs');

insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Sendr_name_sprs','region');

insert into sk_property(PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,ENABLE,DEFAULT_VALUE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,VERSION)
values(
'Ordr_rcpnts_sprs',
'Ordr_rcpnts_sprs',
'Ordr_rcpnts_sprs',
'Ordr_rcpnts_sprs',
1,
'false',
'String',
'Service_Spares',
'ATG',
0);


insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'de_Ordr_rcpnts_sprs',
'Ordr_rcpnts_sprs',
'false',
1,
'de'
);

insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'at_Ordr_rcpnts_sprs',
'Ordr_rcpnts_sprs',
'false',
1,
'at'
);

insert into sk_org_settings(ID,ORG_SETTING_ID) values('de','de_Ordr_rcpnts_sprs');

insert into sk_org_settings(ID,ORG_SETTING_ID) values('at','at_Ordr_rcpnts_sprs');

insert into SK_PROPERTY_REL_ORG(PROPERTY_ID,ORGANIZATION_TYPE) values('Ordr_rcpnts_sprs','region');

commit;
