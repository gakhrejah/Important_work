/***
*** Requester Name:  	Priyanshi Pandey
*** Purpose :		 	SK-39825
*** Schema  :		 	atgcore, staging
*** Date of Request : 	May 22, 2017
***/

DELETE FROM SK_ADMIN_CHLD_SETTING where GROUP_ID='crt_rls' AND SETTING_ID = 'Disp_Surchrg_Mssg_Exprss_Delvry';

DELETE FROM SK_ADMIN_SETTINGS where ID='Disp_Surchrg_Mssg_Exprss_Delvry';

delete from SK_PROPERTY_REL_ORG where PROPERTY_ID='Disp_Surchrg_Mssg_Exprss_Delvry';

delete from sk_property where PROPERTY_ID='Disp_Surchrg_Mssg_Exprss_Delvry';
delete from sk_org_property where ID='at_Srg_Msg_Exp_Del';
delete from sk_org_property where ID='de_Srg_Msg_Exp_Del';
delete from sk_org_settings where ORG_SETTING_ID='at_Srg_Msg_Exp_Del';
delete from sk_org_settings where ORG_SETTING_ID='de_Srg_Msg_Exp_Del';

commit;
