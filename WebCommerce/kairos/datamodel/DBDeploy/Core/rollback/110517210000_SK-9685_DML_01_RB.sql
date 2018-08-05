/***
*** Requester Name:  	Priyanshi Pandey
*** Purpose :		 	SK-9685
*** Schema  :		 	atgcore, staging
*** Date of Request : 	May 11, 2017
***/

delete from sk_org_settings where ORG_SETTING_ID='de_Serv_Pt_Nbr_Rep_O';
delete from sk_org_property where ID='de_Serv_Pt_Nbr_Rep_O';

delete from sk_org_settings where ORG_SETTING_ID='at_Serv_Pt_Nbr_Rep_O';
delete from sk_org_property where ID='at_Serv_Pt_Nbr_Rep_O';

delete from SK_PROPERTY_REL_ORG where PROPERTY_ID='Service_Part_Number_Replace_O';

delete from sk_property where PROPERTY_ID='Service_Part_Number_Replace_O';

delete from sk_org_settings where ORG_SETTING_ID='de_Serv_Pt_Nbr_Rep_I';
delete from sk_org_property where ID='de_Serv_Pt_Nbr_Rep_I';

delete from sk_org_settings where ORG_SETTING_ID='at_Serv_Pt_Nbr_Rep_I';
delete from sk_org_property where ID='at_Serv_Pt_Nbr_Rep_I';

delete from SK_PROPERTY_REL_ORG where PROPERTY_ID='Service_Part_Number_Replace_I';

delete from sk_property where PROPERTY_ID='Service_Part_Number_Replace_I';

delete from sk_org_settings where ORG_SETTING_ID='de_Serv_Pt_Nm_Rm_Sc';
delete from sk_org_property where ID='de_Serv_Pt_Nm_Rm_Sc';

delete from sk_org_settings where ORG_SETTING_ID='at_Serv_Pt_Nm_Rm_Sc';
delete from sk_org_property where ID='at_Serv_Pt_Nm_Rm_Sc';

delete from SK_PROPERTY_REL_ORG where PROPERTY_ID='Service_Part_Number_Remove_Spaces';

delete from sk_property where PROPERTY_ID='Service_Part_Number_Remove_Spaces';


commit;
