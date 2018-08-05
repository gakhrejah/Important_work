/***
*** Requester Name:  	Priyanshi Pandey
*** Purpose :		 	SK-45939
*** Schema  :		 	atgcore, staging
*** Date of Request : 	May 17, 2017
***/

DELETE FROM SK_ADMIN_CHLD_SETTING where GROUP_ID='rgn_gnrl_cnt_comm' AND SETTING_ID = 'Chat_Avlbl_Anonymous_User';
DELETE FROM SK_ADMIN_CHLD_SETTING where GROUP_ID='rgn_gnrl_cnt_comm' AND SETTING_ID = 'Chat_Avlbl_Basic_User';
DELETE FROM SK_ADMIN_CHLD_SETTING where GROUP_ID='rgn_gnrl_cnt_comm' AND SETTING_ID = 'Chat_Avlbl_Commerce_User';

DELETE FROM SK_ADMIN_SETTINGS where ID='Chat_Avlbl_Anonymous_User';
DELETE FROM SK_ADMIN_SETTINGS where ID='Chat_Avlbl_Basic_User';
DELETE FROM SK_ADMIN_SETTINGS where ID='Chat_Avlbl_Commerce_User';

UPDATE SK_ADMIN_CHLD_SETTING SET SEQUENCE_NUM =0 where GROUP_ID='rgn_gnrl_cnt_comm' AND SETTING_ID ='Dis_Reg_Con_Tools';
UPDATE SK_ADMIN_CHLD_SETTING SET SEQUENCE_NUM =1 where GROUP_ID='rgn_gnrl_cnt_comm' AND SETTING_ID ='Web_Master_Email';
UPDATE SK_ADMIN_CHLD_SETTING SET SEQUENCE_NUM =2 where GROUP_ID='rgn_gnrl_cnt_comm' AND SETTING_ID ='Snd_Rgsrtn_Cnfrm';
UPDATE SK_ADMIN_CHLD_SETTING SET SEQUENCE_NUM =3 where GROUP_ID='rgn_gnrl_cnt_comm' AND SETTING_ID ='Rgsrtn_Cnfrm_Sndr';

delete from SK_PROPERTY_REL_ORG where PROPERTY_ID='Chat_Avlbl_Anonymous_User';
delete from SK_PROPERTY_REL_ORG where PROPERTY_ID='Chat_Avlbl_Basic_User';
delete from SK_PROPERTY_REL_ORG where PROPERTY_ID='Chat_Avlbl_Commerce_User';

delete from sk_property where PROPERTY_ID='Chat_Avlbl_Anonymous_User';
delete from sk_org_property where ID='at_Cht_Avl_Anon_Usr';
delete from sk_org_property where ID='de_Cht_Avl_Anon_Usr';
delete from sk_org_settings where ORG_SETTING_ID='at_Cht_Avl_Anon_Usr';
delete from sk_org_settings where ORG_SETTING_ID='de_Cht_Avl_Anon_Usr';

delete from sk_property where PROPERTY_ID='Chat_Avlbl_Basic_User';
delete from sk_org_property where ID='at_Cht_Avl_Bsic_Usr';
delete from sk_org_property where ID='de_Cht_Avl_Bsic_Usr';
delete from sk_org_settings where ORG_SETTING_ID='at_Cht_Avl_Bsic_Usr';
delete from sk_org_settings where ORG_SETTING_ID='de_Cht_Avl_Bsic_Usr';

delete from sk_property where PROPERTY_ID='Chat_Avlbl_Commerce_User';
delete from sk_org_property where ID='at_Cht_Avl_Comm_Usr';
delete from sk_org_property where ID='de_Cht_Avl_Comm_Usr';
delete from sk_org_settings where ORG_SETTING_ID='at_Cht_Avl_Comm_Usr';
delete from sk_org_settings where ORG_SETTING_ID='de_Cht_Avl_Comm_Usr';

commit;