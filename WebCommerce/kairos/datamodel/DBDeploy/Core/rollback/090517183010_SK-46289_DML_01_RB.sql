/***
*** Requester Name:  	Priyanka Garg
*** Purpose :		 	SK-46289
*** Schema  :		 	atgcore
*** Date of Request : 	May 09, 2017
***/

delete from SK_PROPERTY_REL_ROLE where PROPERTY_ID='Check_DAMEX_P_Requests';
delete from SK_PROPERTY where PROPERTY_ID='Check_DAMEX_P_Requests';
delete from SK_PROPERTY_REL_ROLE where PROPERTY_ID='Check_DAMEX_E_SPS_Requests';
delete from SK_PROPERTY where PROPERTY_ID='Check_DAMEX_E_SPS_Requests';
delete from SK_PROPERTY_REL_ROLE where PROPERTY_ID='Manage_DAMEX_Submissions';
delete from SK_PROPERTY where PROPERTY_ID='Manage_DAMEX_Submissions';
commit;
