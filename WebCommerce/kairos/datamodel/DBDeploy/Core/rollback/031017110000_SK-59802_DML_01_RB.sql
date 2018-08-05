/***
*** Requester Name:  	Nisha Luiz
*** Purpose :		 	SK-59802 rollback for damex and software download settings
*** Schema  :		 	atgcore, staging
*** Date of Request : 	Oct 3, 2017
***/

update SK_PROPERTY set ENABLE = '1' where PROPERTY_ID = 'Activate_Software_Download';
update SK_PROPERTY set ENABLE = '1' where PROPERTY_ID = 'Manage_User_App';
update SK_PROPERTY set ENABLE = '1' where PROPERTY_ID = 'Manage_all_usr_grps';
update SK_PROPERTY set ENABLE = '1' where PROPERTY_ID = 'Manage_usrs_in_usr_grps';
update SK_PROPERTY set ENABLE = '1' where PROPERTY_ID = 'Allow_Access_Damex_Logbook';
update SK_PROPERTY set ENABLE = '1' where PROPERTY_ID = 'Check_DAMEX_P_Requests';
update SK_PROPERTY set ENABLE = '1' where PROPERTY_ID = 'Check_DAMEX_E_SPS_Requests';
update SK_PROPERTY set ENABLE = '1' where PROPERTY_ID = 'Manage_DAMEX_Submissions';

commit;