/***
*** Requester Name:  	Nisha Luiz
*** Purpose :		 	SK-59802 Disable software download and user registration related settings rollback
*** Schema  :		 	atgcore, staging
*** Date of Request : 	Oct 5, 2017
***/

update SK_PROPERTY set ENABLE = '1' where PROPERTY_ID = 'download_administrator';
update SK_PROPERTY set ENABLE = '1' where PROPERTY_ID = 'download_recipient';
update SK_PROPERTY set ENABLE = '1' where PROPERTY_ID = 'sus_admin';

update SK_PROPERTY set ENABLE = '1' where PROPERTY_ID = 'Allow_Access_My_Cust';
update SK_PROPERTY set ENABLE = '1' where PROPERTY_ID = 'Dis_Reg_Con_Tools';
update SK_PROPERTY set ENABLE = '1' where PROPERTY_ID = 'Tax_ID';
update SK_PROPERTY set ENABLE = '1' where PROPERTY_ID = 'Allow_Registration_For_Commerce';

commit;