/***
*** Requester Name:  	Jaideep Singh
*** Purpose :		SK-52154
*** Schema  :		atgcore
*** Date of Request : 	July 04, 2017
***/


update sk_property set enable='1',group_id='Contacts_Communication' where property_id like 'Call%';

delete from SK_ADMIN_CHLD_SETTING where group_id='rgn_gnrl_cnt_comm';

INSERT INTO SK_ADMIN_SETTINGS (ID, PROPERTY_NAME) VALUES ('Callback_Logged-In-User', 'Callback_Logged-In-User');
INSERT INTO SK_ADMIN_SETTINGS (ID, PROPERTY_NAME) VALUES ('Callback_Anonymous_User', 'Callback_Anonymous_User');

Insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('rgn_gnrl_cnt_comm',0,'Chat_Avlbl_Anonymous_User');
Insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('rgn_gnrl_cnt_comm',1,'Chat_Avlbl_Basic_User');
Insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('rgn_gnrl_cnt_comm',2,'Chat_Avlbl_Commerce_User');
Insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('rgn_gnrl_cnt_comm',3,'Callback_Anonymous_User');
Insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('rgn_gnrl_cnt_comm',4,'Callback_Logged-In-User');
Insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('rgn_gnrl_cnt_comm',5,'Dis_Reg_Con_Tools');
Insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('rgn_gnrl_cnt_comm',6,'Web_Master_Email');
Insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('rgn_gnrl_cnt_comm',7,'Snd_Rgsrtn_Cnfrm');
Insert into SK_ADMIN_CHLD_SETTING (GROUP_ID,SEQUENCE_NUM,SETTING_ID) values ('rgn_gnrl_cnt_comm',8,'Rgsrtn_Cnfrm_Sndr');

Commit;