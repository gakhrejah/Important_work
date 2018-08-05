/***
*** Requester Name:  	Priyanka Garg
*** Purpose :		 	SK-9791
*** Schema  :		 	atgcore
*** Date of Request : 	May 10, 2017
***/


delete from SK_ORG_SETTINGS where ORG_SETTING_ID='de_alw_mstr_dt_xchng';
delete from SK_ORG_SETTINGS where ORG_SETTING_ID='de_dwnld_ftr_prices';
delete from SK_ORG_PROPERTY where ID='de_alw_mstr_dt_xchng';
delete from SK_ORG_PROPERTY where ID='de_dwnld_ftr_prices';
delete from SK_PROPERTY_REL_ROLE where PROPERTY_ID='Allow_Master_Data_Exchange';
delete from SK_PROPERTY where PROPERTY_ID='Allow_Master_Data_Exchange';
delete from SK_ORG_SETTINGS where ORG_SETTING_ID='at_alw_mstr_dt_xchng';
delete from SK_ORG_SETTINGS where ORG_SETTING_ID='at_dwnld_ftr_prices';
delete from SK_ORG_PROPERTY where ID='at_alw_mstr_dt_xchng';
delete from SK_ORG_PROPERTY where ID='at_dwnld_ftr_prices';
delete from SK_PROPERTY_REL_ROLE where PROPERTY_ID='Download_Future_Prices';
delete from SK_PROPERTY where PROPERTY_ID='Download_Future_Prices';
commit;