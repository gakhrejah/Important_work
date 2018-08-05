/***
*** Requester Name:  	Priyanshu Kumar
*** Purpose :		SK-47930
*** Schema  :		atgcore
*** Date of Request : 	May 15, 2017
***/

DELETE FROM SK_ADMIN_CHLD_SETTING where GROUP_ID='rgn_gnrl_cnt_comm' AND SETTING_ID = 'Dis_Reg_Con_Tools';

DELETE FROM SK_ADMIN_SETTINGS where ID='Dis_Reg_Con_Tools';

UPDATE SK_ADMIN_CHLD_SETTING SET SEQUENCE_NUM =0 where GROUP_ID='rgn_gnrl_cnt_comm' AND SETTING_ID ='Web_Master_Email';
UPDATE SK_ADMIN_CHLD_SETTING SET SEQUENCE_NUM =1 where GROUP_ID='rgn_gnrl_cnt_comm' AND SETTING_ID ='Snd_Rgsrtn_Cnfrm';
UPDATE SK_ADMIN_CHLD_SETTING SET SEQUENCE_NUM =2 where GROUP_ID='rgn_gnrl_cnt_comm' AND SETTING_ID ='Rgsrtn_Cnfrm_Sndr';

delete from SK_PROPERTY_REL_ORG where PROPERTY_ID='Dis_Reg_Con_Tools';

delete from sk_property where PROPERTY_ID='Dis_Reg_Con_Tools';
delete from sk_org_property where ID='de_Dis_Reg_con_tools';
delete from sk_org_property where ID='at_Dis_Reg_Con_Tools';
delete from sk_org_settings where ORG_SETTING_ID='de_Dis_Reg_Con_Tools';
delete from sk_org_settings where ORG_SETTING_ID='at_Dis_Reg_Con_Tools';

commit;