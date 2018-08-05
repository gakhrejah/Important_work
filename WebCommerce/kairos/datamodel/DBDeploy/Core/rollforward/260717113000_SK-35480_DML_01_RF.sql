/***
*** Requester Name:  Priyanshi Pandey
*** Purpose : SQL to add (i)workflow entry for add user with roles AND (ii)add user oud activity
*** Schema  : Core/Staging
*** Date of Request : 26/07/2017
***/

Insert into SK_WORKFLOW (ID,NAME,DESCRIPTION,ENABLED) values ('5','SAVE_USER_WITH_ROLES','Allows to save user in ATG,OUD with multiple roles.Does not assign rights',1);

Insert into SK_ACTIVITY (ID,NAME,CLASS_NAME,EXECUTION_ORDER,ENABLED,WORKFLOW_ID) values ('14','ADD_WEBSSO','com.kairos.framework.integration.workflow.profilesync.WebSSOAddActivity',0,1,'5');
Insert into SK_ACTIVITY (ID,NAME,CLASS_NAME,EXECUTION_ORDER,ENABLED,WORKFLOW_ID) values ('15','ATG_ADD_USER_WITH_ROLES_ACTIVITY','com.kairos.framework.integration.workflow.profilesync.AtgAddUserWithRolesActivity',1,1,'5');
Insert into SK_ACTIVITY (ID,NAME,CLASS_NAME,EXECUTION_ORDER,ENABLED,WORKFLOW_ID) values ('16','OUD_ADD_USER_ACTIVITY','com.kairos.framework.integration.workflow.profilesync.OUDAddUserActivity',2,1,'5');

commit;