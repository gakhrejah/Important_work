/***
*** Requester Name:  	Priyanshu Kumar
*** Purpose :		SK-47930
*** Schema  :		atgcore
*** Date of Request : 	May 12, 2017
***/

insert into sk_property(PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,ENABLE,DEFAULT_VALUE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,VERSION)
values(
'Dis_Reg_Con_Tools',
'Dis_Reg_Con_Tools',
'Dis_Reg_Con_Tools',
'Dis_Reg_Con_Tools',
1,
'false',
'Boolean',
'Contacts_Communication',
'ATG',
0);

insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'de_Dis_reg_con_tools',
'Dis_Reg_Con_Tools',
'false',
1,
'de'
);

insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'at_Dis_reg_con_tools',
'Dis_Reg_Con_Tools',
'false',
1,
'at'
);

insert into sk_org_settings(ID,ORG_SETTING_ID) values('de','de_Dis_reg_con_tools');
insert into sk_org_settings(ID,ORG_SETTING_ID) values('at','at_Dis_reg_con_tools');

Insert into SK_PROPERTY_REL_ORG (PROPERTY_ID,ORGANIZATION_TYPE) values ('Dis_Reg_Con_Tools','region');

insert into sk_admin_settings values('Dis_Reg_Con_Tools','Dis_Reg_Con_Tools');

UPDATE SK_ADMIN_CHLD_SETTING SET SEQUENCE_NUM =3 where GROUP_ID='rgn_gnrl_cnt_comm' AND SETTING_ID ='Rgsrtn_Cnfrm_Sndr';
UPDATE SK_ADMIN_CHLD_SETTING SET SEQUENCE_NUM =2 where GROUP_ID='rgn_gnrl_cnt_comm' AND SETTING_ID ='Snd_Rgsrtn_Cnfrm';
UPDATE SK_ADMIN_CHLD_SETTING SET SEQUENCE_NUM =1 where GROUP_ID='rgn_gnrl_cnt_comm' AND SETTING_ID ='Web_Master_Email';

INSERT INTO SK_ADMIN_CHLD_SETTING VALUES ('rgn_gnrl_cnt_comm',0,'Dis_Reg_Con_Tools');


commit;