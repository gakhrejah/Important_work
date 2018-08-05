/***
*** Requester Name:  	Priyanshi Pandey
*** Purpose :		 	SK-45939
*** Schema  :		 	atgcore, staging
*** Date of Request : 	May 17, 2017
***/

insert into sk_property(PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,ENABLE,DEFAULT_VALUE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,VERSION)
values(
'Chat_Avlbl_Anonymous_User',
'Chat_Avlbl_Anonymous_User',
'Is Chat Available to Anonymous User',
'Is Chat Available to Anonymous User',
1,
'false',
'Boolean',
'Contacts_Communication',
'ATG',
0);

insert into sk_property(PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,ENABLE,DEFAULT_VALUE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,VERSION)
values(
'Chat_Avlbl_Basic_User',
'Chat_Avlbl_Basic_User',
'Is Chat Available to Basic User',
'Is Chat Available to Basic User',
1,
'false',
'Boolean',
'Contacts_Communication',
'ATG',
0);

insert into sk_property(PROPERTY_ID,PROPERTY_NAME,PROPERTY_DISPLAY_NAME,PROPERTY_DESCRIPTION,ENABLE,DEFAULT_VALUE,PROPERTY_TYPE,GROUP_ID,COMPONENT_ID,VERSION)
values(
'Chat_Avlbl_Commerce_User',
'Chat_Avlbl_Commerce_User',
'Is Chat Available to Commerce User',
'Is Chat Available to Commerce User',
1,
'false',
'Boolean',
'Contacts_Communication',
'ATG',
0);

insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'de_Cht_Avl_Anon_Usr',
'Chat_Avlbl_Anonymous_User',
'false',
1,
'de'
);

insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'de_Cht_Avl_Bsic_Usr',
'Chat_Avlbl_Basic_User',
'false',
1,
'de'
);

insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'de_Cht_Avl_Comm_Usr',
'Chat_Avlbl_Commerce_User',
'false',
1,
'de'
);

insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'at_Cht_Avl_Anon_Usr',
'Chat_Avlbl_Anonymous_User',
'false',
1,
'at'
);

insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'at_Cht_Avl_Bsic_Usr',
'Chat_Avlbl_Basic_User',
'false',
1,
'at'
);

insert into sk_org_property(ID,PROPERTY_ID,PROPERTY_VALUE,VERSION,RELATIVE_TO)
values(
'at_Cht_Avl_Comm_Usr',
'Chat_Avlbl_Commerce_User',
'false',
1,
'at'
);

insert into sk_org_settings(ID,ORG_SETTING_ID) values('at','at_Cht_Avl_Anon_Usr');
insert into sk_org_settings(ID,ORG_SETTING_ID) values('de','de_Cht_Avl_Anon_Usr');

insert into sk_org_settings(ID,ORG_SETTING_ID) values('at','at_Cht_Avl_Bsic_Usr');
insert into sk_org_settings(ID,ORG_SETTING_ID) values('de','de_Cht_Avl_Bsic_Usr');

insert into sk_org_settings(ID,ORG_SETTING_ID) values('at','at_Cht_Avl_Comm_Usr');
insert into sk_org_settings(ID,ORG_SETTING_ID) values('de','de_Cht_Avl_Comm_Usr');

Insert into SK_PROPERTY_REL_ORG (PROPERTY_ID,ORGANIZATION_TYPE) values ('Chat_Avlbl_Anonymous_User','region');

Insert into SK_PROPERTY_REL_ORG (PROPERTY_ID,ORGANIZATION_TYPE) values ('Chat_Avlbl_Basic_User','region');

Insert into SK_PROPERTY_REL_ORG (PROPERTY_ID,ORGANIZATION_TYPE) values ('Chat_Avlbl_Commerce_User','region');


insert into sk_admin_settings values('Chat_Avlbl_Anonymous_User','Chat_Avlbl_Anonymous_User');
insert into sk_admin_settings values('Chat_Avlbl_Basic_User','Chat_Avlbl_Basic_User');
insert into sk_admin_settings values('Chat_Avlbl_Commerce_User','Chat_Avlbl_Commerce_User');

UPDATE SK_ADMIN_CHLD_SETTING SET SEQUENCE_NUM =6 where GROUP_ID='rgn_gnrl_cnt_comm' AND SETTING_ID ='Rgsrtn_Cnfrm_Sndr';
UPDATE SK_ADMIN_CHLD_SETTING SET SEQUENCE_NUM =5 where GROUP_ID='rgn_gnrl_cnt_comm' AND SETTING_ID ='Snd_Rgsrtn_Cnfrm';
UPDATE SK_ADMIN_CHLD_SETTING SET SEQUENCE_NUM =4 where GROUP_ID='rgn_gnrl_cnt_comm' AND SETTING_ID ='Web_Master_Email';
UPDATE SK_ADMIN_CHLD_SETTING SET SEQUENCE_NUM =3 where GROUP_ID='rgn_gnrl_cnt_comm' AND SETTING_ID ='Dis_Reg_Con_Tools';

INSERT INTO SK_ADMIN_CHLD_SETTING VALUES ('rgn_gnrl_cnt_comm',2,'Chat_Avlbl_Commerce_User');
INSERT INTO SK_ADMIN_CHLD_SETTING VALUES ('rgn_gnrl_cnt_comm',1,'Chat_Avlbl_Basic_User');
INSERT INTO SK_ADMIN_CHLD_SETTING VALUES ('rgn_gnrl_cnt_comm',0,'Chat_Avlbl_Anonymous_User');


commit;
