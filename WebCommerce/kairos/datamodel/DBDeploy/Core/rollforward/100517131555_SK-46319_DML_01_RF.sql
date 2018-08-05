/***
*** Requester Name:  	Kannathasan M
*** Purpose :		SK-46319
*** Schema  :		atgcore, staging
*** Date of Request : 	May 10, 2017
***/

insert into SK_PROPERTY(PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,DEFAULT_VALUE,ENABLE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,VERSION)
values(
'Apply_Company_Specific_Exchange_Rate',
'Apply_Company_Specific_Exchange_Rate',
'Apply_Company_Specific_Exchange_Rate',
'Apply_Company_Specific_Exchange_Rate',
'false',
1,
'Boolean',
'General',
'ATG',
0
);

insert into sk_org_property(ID,PROPERTY_ID,VERSION,RELATIVE_TO)
values(
'601_apy_comp_excn_rt',
'Apply_Company_Specific_Exchange_Rate',
1,
'600001'
);

insert into sk_org_property(ID,PROPERTY_ID,VERSION,RELATIVE_TO)
values(
'202_apy_comp_excn_rt',
'Apply_Company_Specific_Exchange_Rate',
1,
'200002'
);

insert into sk_org_property(ID,PROPERTY_ID,VERSION,RELATIVE_TO)
values(
'403_apy_comp_excn_rt',
'Is_MC_Company',
1,
'400003'
);

insert into sk_org_property(ID,PROPERTY_ID,VERSION,RELATIVE_TO)
values(
'303_apy_comp_excn_rt',
'Apply_Company_Specific_Exchange_Rate',
1,
'300003'
);

insert into sk_org_property(ID,PROPERTY_ID,VERSION,RELATIVE_TO)
values(
'404_apy_comp_excn_rt',
'Apply_Company_Specific_Exchange_Rate',
1,
'400004'
);

insert into sk_org_property(ID,PROPERTY_ID,VERSION,RELATIVE_TO)
values(
'101_apy_comp_excn_rt',
'Apply_Company_Specific_Exchange_Rate',
1,
'100001'
);

insert into sk_org_property(ID,PROPERTY_ID,VERSION,RELATIVE_TO)
values(
'401_apy_comp_excn_rt',
'Apply_Company_Specific_Exchange_Rate',
1,
'400001'
);

insert into sk_org_property(ID,PROPERTY_ID,VERSION,RELATIVE_TO)
values(
'402_apy_comp_excn_rt',
'Apply_Company_Specific_Exchange_Rate',
1,
'400002'
);

insert into sk_org_property(ID,PROPERTY_ID,VERSION,RELATIVE_TO)
values(
'102_apy_comp_excn_rt',
'Apply_Company_Specific_Exchange_Rate',
1,
'100002'
);

insert into sk_org_property(ID,PROPERTY_ID,VERSION,RELATIVE_TO)
values(
'103_apy_comp_excn_rt',
'Apply_Company_Specific_Exchange_Rate',
1,
'100003'
);

insert into sk_org_property(ID,PROPERTY_ID,VERSION,RELATIVE_TO)
values(
'104_apy_comp_excn_rt',
'Apply_Company_Specific_Exchange_Rate',
1,
'100004'
);

insert into sk_org_property(ID,PROPERTY_ID,VERSION,RELATIVE_TO)
values(
'301_apy_comp_excn_rt',
'Apply_Company_Specific_Exchange_Rate',
1,
'300001'
);

insert into sk_org_property(ID,PROPERTY_ID,VERSION,RELATIVE_TO)
values(
'302_apy_comp_excn_rt',
'Apply_Company_Specific_Exchange_Rate',
1,
'300002'
);

insert into sk_org_property(ID,PROPERTY_ID,VERSION,RELATIVE_TO)
values(
'203_apy_comp_excn_rt',
'Apply_Company_Specific_Exchange_Rate',
1,
'200003'
);

insert into sk_org_property(ID,PROPERTY_ID,VERSION,RELATIVE_TO)
values(
'201_apy_comp_excn_rt',
'Apply_Company_Specific_Exchange_Rate',
1,
'200001'
);

insert into sk_org_property(ID,PROPERTY_ID,VERSION,RELATIVE_TO)
values(
't02_apy_comp_excn_rt',
'Apply_Company_Specific_Exchange_Rate',
1,
't02239'
);

insert into sk_org_settings(ID,ORG_SETTING_ID) values('600001','601_apy_comp_excn_rt');
insert into sk_org_settings(ID,ORG_SETTING_ID) values('200002','202_apy_comp_excn_rt');
insert into sk_org_settings(ID,ORG_SETTING_ID) values('400003','403_apy_comp_excn_rt');
insert into sk_org_settings(ID,ORG_SETTING_ID) values('300003','303_apy_comp_excn_rt');
insert into sk_org_settings(ID,ORG_SETTING_ID) values('400004','404_apy_comp_excn_rt');
insert into sk_org_settings(ID,ORG_SETTING_ID) values('100001','101_apy_comp_excn_rt');
insert into sk_org_settings(ID,ORG_SETTING_ID) values('400001','401_apy_comp_excn_rt');
insert into sk_org_settings(ID,ORG_SETTING_ID) values('400002','402_apy_comp_excn_rt');
insert into sk_org_settings(ID,ORG_SETTING_ID) values('100002','102_apy_comp_excn_rt');
insert into sk_org_settings(ID,ORG_SETTING_ID) values('100003','103_apy_comp_excn_rt');
insert into sk_org_settings(ID,ORG_SETTING_ID) values('100004','104_apy_comp_excn_rt');
insert into sk_org_settings(ID,ORG_SETTING_ID) values('300001','301_apy_comp_excn_rt');
insert into sk_org_settings(ID,ORG_SETTING_ID) values('300002','302_apy_comp_excn_rt');
insert into sk_org_settings(ID,ORG_SETTING_ID) values('200003','203_apy_comp_excn_rt');
insert into sk_org_settings(ID,ORG_SETTING_ID) values('200001','201_apy_comp_excn_rt');
insert into sk_org_settings(ID,ORG_SETTING_ID) values('t02239','t02_apy_comp_excn_rt');

commit;