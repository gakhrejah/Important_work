/***
*** Requester Name:  	Priyanshi Pandey
*** Purpose :		 	SK-50384
*** Schema  :		 	atgcore, staging
*** Date of Request : 	April 26, 2017
***/

delete from sk_org_settings where ORG_SETTING_ID='de_Allw_Carr_Usg';
delete from sk_org_property where ID='de_Allw_Carr_Usg';

delete from sk_org_settings where ORG_SETTING_ID='at_Allw_Carr_Usg';
delete from sk_org_property where ID='at_Allw_Carr_Usg';

delete from SK_PROPERTY_REL_ORG where PROPERTY_ID='Allow_Carrier_Usage';

delete from sk_property where PROPERTY_ID='Allow_Carrier_Usage';

commit;
