/***
*** Requester Name:  	Pinky Kushwaha
*** Purpose :		 	SK-56392
*** Schema  :		 	atgcore
*** Date of Request : 	Sept 21, 2017
***/

update sk_activity set CLASS_NAME='com.kairos.framework.workflow.migration.ouduser.OUDMigrationAddUserActivity' where name='OUD_MIGR_ADD_USER_ACTIVITY' ;
update sk_activity set CLASS_NAME='com.kairos.framework.workflow.migration.ouduser.OUDMigrationMapUserRoleActivity' where name='OUD_MIGR_ADD_USER_ROLE_ACTIVITY' ;
commit;
