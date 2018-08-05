/***
*** Requester Name:  Priyanshi Pandey
*** Purpose : SQL to add (i)workflow entry for update user (a)with roles,(b)with rights (ii)update user activity (a)websso, (b)atg, (c)oud
*** Schema  : Core/Staging
*** Date of Request : 31/07/2017
***/

Insert into SK_WORKFLOW (ID,NAME,DESCRIPTION,ENABLED) values ('6','UPDATE_USER_WITH_RIGHTS','Updates user in ATG with single role and multiple rights assignment.',1);

Insert into SK_ACTIVITY (ID,NAME,CLASS_NAME,EXECUTION_ORDER,ENABLED,WORKFLOW_ID) values ('18','ADD_WEBSSO','com.kairos.framework.integration.workflow.profilesync.WebSSOAddActivity',0,0,'6');
Insert into SK_ACTIVITY (ID,NAME,CLASS_NAME,EXECUTION_ORDER,ENABLED,WORKFLOW_ID) values ('19','ATG_UPDATE_USER_WITH_RIGHTS_ACTIVITY','com.kairos.framework.integration.workflow.profilesync.AtgUpdateUserWithRightsActivity',1,1,'6');



Insert into SK_WORKFLOW (ID,NAME,DESCRIPTION,ENABLED) values ('7','UPDATE_USER_WITH_ROLES','Updates user in ATG and OUD with multiple role assignment. No rights are assigned',1);

Insert into SK_ACTIVITY (ID,NAME,CLASS_NAME,EXECUTION_ORDER,ENABLED,WORKFLOW_ID) values ('20','ADD_WEBSSO','com.kairos.framework.integration.workflow.profilesync.WebSSOAddActivity',0,0,'7');
Insert into SK_ACTIVITY (ID,NAME,CLASS_NAME,EXECUTION_ORDER,ENABLED,WORKFLOW_ID) values ('21','ATG_UPDATE_USER_WITH_ROLES_ACTIVITY','com.kairos.framework.integration.workflow.profilesync.AtgUpdateUserWithRolesActivity',1,1,'7');
Insert into SK_ACTIVITY (ID,NAME,CLASS_NAME,EXECUTION_ORDER,ENABLED,WORKFLOW_ID) values ('22','OUD_UPDATE_USER_ACTIVITY','com.kairos.framework.integration.workflow.profilesync.OUDUpdateUserActivity',2,1,'7');

commit;