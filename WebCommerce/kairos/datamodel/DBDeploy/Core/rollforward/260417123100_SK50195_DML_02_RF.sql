/***
*** Requester Name:  	Swaminath Chengannagari
*** STORY ID :		 	SK-50195
*** DDL/DML  :			DML
*** Schema  :		 	atgcore
*** Date of Request : 	April 26, 2017
***/

Insert into SK_ACTIVITY (ID,NAME,CLASS_NAME,EXECUTION_ORDER,ENABLED,WORKFLOW_ID) values ('12','ADD_WEBSSO','com.kairos.framework.integration.workflow.profilesync.WebSSOAddActivity',0,0,4);
Insert into SK_ACTIVITY (ID,NAME,CLASS_NAME,EXECUTION_ORDER,ENABLED,WORKFLOW_ID) values ('13','DM_UPDATE_USER','com.kairos.framework.integration.workflow.profilesync.AtgUpdateActivity',1,1,4);

COMMIT;