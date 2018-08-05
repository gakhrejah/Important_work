/***
*** Requester Name:  	Neha Mishra
*** Purpose :		SK-62300
*** Schema  :		atgcore
*** Date of Request : 	AUG 2, 2017
***/

DELETE FROM sk_property_rel_role where PROPERTY_ID='Assign_Max_System_Roles' AND ROLE_ID = 'bs-system-admin';
DELETE FROM sk_property_rel_role where PROPERTY_ID='Assign_Max_Region_Roles' AND ROLE_ID = 'bs-regional-admin';
DELETE FROM sk_property_rel_role where PROPERTY_ID='Assign_Max_Company_Roles' AND ROLE_ID = 'bs-company-admin';
DELETE FROM sk_property_rel_role where PROPERTY_ID='Assign_Max_User_Roles' AND ROLE_ID = 'bs-sales-rep';
DELETE FROM sk_property_rel_role where PROPERTY_ID='Assign_Max_User_Roles' AND ROLE_ID = 'bs-normal-user';

DELETE FROM sk_property_rel_org where PROPERTY_ID='Assign_Max_System_Roles' AND ORGANIZATION_TYPE = 'user';
DELETE FROM sk_property_rel_org where PROPERTY_ID='Assign_Max_Region_Roles' AND ORGANIZATION_TYPE = 'user';
DELETE FROM sk_property_rel_org where PROPERTY_ID='Assign_Max_Company_Roles' AND ORGANIZATION_TYPE = 'user';
DELETE FROM sk_property_rel_org where PROPERTY_ID='Assign_Max_User_Roles' AND ORGANIZATION_TYPE = 'user';

DELETE FROM SK_PROPERTY WHERE PROPERTY_ID='Assign_Max_System_Roles';
DELETE FROM SK_PROPERTY WHERE PROPERTY_ID='Assign_Max_Region_Roles';
DELETE FROM SK_PROPERTY WHERE PROPERTY_ID='Assign_Max_Company_Roles';
DELETE FROM SK_PROPERTY WHERE PROPERTY_ID='Assign_Max_User_Roles';

DELETE FROM sk_group WHERE GROUP_ID='user_admin';

commit;





