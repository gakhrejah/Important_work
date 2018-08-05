/***
*** Requester Name:  Priyanshi Pandey
*** Purpose : SQL to add (i)activity to map user roles, update execution order of activities AND (ii)add service config to delete user
*** Schema  : Core/Staging
*** Date of Request : 09/08/2017
***/

update sk_activity set execution_order='1' where name='OUD_ADD_USER_ACTIVITY';
update sk_activity set execution_order='3' where name='ATG_ADD_USER_WITH_ROLES_ACTIVITY';

update sk_activity set execution_order='1' where name='OUD_UPDATE_USER_ACTIVITY';
update sk_activity set execution_order='3' where name='ATG_UPDATE_USER_WITH_ROLES_ACTIVITY';


Insert into SK_ACTIVITY (ID,NAME,CLASS_NAME,EXECUTION_ORDER,ENABLED,WORKFLOW_ID) values ('30','OUD_ADD_USER_ROLE_ACTIVITY','com.kairos.framework.integration.workflow.profilesync.OUDMapUserRoleActivity',2,1,'5');

Insert into SK_ACTIVITY (ID,NAME,CLASS_NAME,EXECUTION_ORDER,ENABLED,WORKFLOW_ID) values ('31','OUD_UPDATE_USER_ROLE_ACTIVITY','com.kairos.framework.integration.workflow.profilesync.OUDMapUserRoleActivity',2,1,'7');

Insert into SK_SERVICE_PROPS (SERVICE_ID,SERVICE_NAME,SERVICE_ENDPOINT_NAME,MEDIA_TYPE_NAME,HTTP_METHOD_NAME,ISSSL,SERVICE_METHOD,MAX_CONNECTION,MAX_PER_ROUTE,DEFAULT_MAX_PER_ROUTE,CONNECTION_TIME_OUT,SOCKET_TIME_OUT,CON_REQUEST_TIMEOUT,ENABLE,SERVICE_URI) values (993,'DELETE_USER_IN_OUD','http://del2lkairos10.sapient.com:9090','application/json','DELETE',0,'REST',100,20,20,100,100,100,1,'/osb/oudprofile/v1/user/{userId}');

commit;