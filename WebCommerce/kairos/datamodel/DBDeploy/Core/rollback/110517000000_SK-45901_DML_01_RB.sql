/***
*** Requester Name:  	Kannathasan M
*** Purpose :		 	SK-45901
*** Schema  :		 	atgcore, staging 
*** Date of Request : 	May 11, 2017
***/

delete from SK_PROPERTY_REL_ROLE where PROPERTY_ID='Manage_all_usr_grps' and ROLE_ID='bs-system-admin';
delete from SK_PROPERTY_REL_ROLE where PROPERTY_ID='Manage_all_usr_grps' and ROLE_ID='bs-regional-admin';
delete from SK_PROPERTY_REL_ROLE where PROPERTY_ID='Manage_all_usr_grps' and ROLE_ID='bs-normal-user';
delete from SK_PROPERTY_REL_ROLE where PROPERTY_ID='Manage_all_usr_grps' and ROLE_ID='bs-sales-rep';
delete from SK_PROPERTY_REL_ROLE where PROPERTY_ID='Manage_all_usr_grps' and ROLE_ID='bs-company-admin';

delete from SK_PROPERTY_REL_ROLE where PROPERTY_ID='Manage_usrs_in_usr_grps' and ROLE_ID='bs-system-admin';
delete from SK_PROPERTY_REL_ROLE where PROPERTY_ID='Manage_usrs_in_usr_grps' and ROLE_ID='bs-regional-admin';
delete from SK_PROPERTY_REL_ROLE where PROPERTY_ID='Manage_usrs_in_usr_grps' and ROLE_ID='bs-normal-user';
delete from SK_PROPERTY_REL_ROLE where PROPERTY_ID='Manage_usrs_in_usr_grps' and ROLE_ID='bs-sales-rep';
delete from SK_PROPERTY_REL_ROLE where PROPERTY_ID='Manage_usrs_in_usr_grps' and ROLE_ID='bs-company-admin';

delete from sk_property where property_id='Manage_all_usr_grps';
delete from sk_property where property_id='Manage_usrs_in_usr_grps';

commit;