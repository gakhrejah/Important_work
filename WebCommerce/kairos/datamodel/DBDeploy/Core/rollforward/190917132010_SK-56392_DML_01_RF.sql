/***
*** Requester Name:  	Pinky Kushwaha
*** Purpose :		 	SK-56392
*** Schema  :		 	atgcore
*** Date of Request : 	Sept 19, 2017
***/

insert into SK_WORKFLOW values('9','OUD_MIGR_ATG_USER','MIGRATE ATG USERS To OUD from REST SERVICE API',1);
insert into sk_activity values('25','OUD_MIGR_ADD_USER_ACTIVITY','com.kairos.framework.workflow.migration.ouduser.OUDMigrateAddUserActivity',0,1,'9');
insert into sk_activity values('26','OUD_MIGR_ADD_USER_ROLE_ACTIVITY','com.kairos.framework.workflow.migration.ouduser.OUDMigrateMapUserRoleActivity',1,1,'9');
commit;
