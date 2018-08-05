/***
*** Requester Name:  Priyanshi Pandey
*** Purpose : SQL to (i)add serviceconfig for add user, map role to user and (ii)update execution order of activities
*** Schema  : Core/Staging
*** Date of Request : 08/08/2017
***/

update sk_activity set execution_order='1' where name='OUD_ADD_USER_ACTIVITY';
update sk_activity set execution_order='2' where name='ATG_ADD_USER_WITH_ROLES_ACTIVITY';

update sk_activity set execution_order='1' where name='OUD_UPDATE_USER_ACTIVITY';
update sk_activity set execution_order='2' where name='ATG_UPDATE_USER_WITH_ROLES_ACTIVITY';

Insert into SK_SERVICE_PROPS (SERVICE_ID,SERVICE_NAME,SERVICE_ENDPOINT_NAME,MEDIA_TYPE_NAME,HTTP_METHOD_NAME,ISSSL,SERVICE_METHOD,MAX_CONNECTION,MAX_PER_ROUTE,DEFAULT_MAX_PER_ROUTE,CONNECTION_TIME_OUT,SOCKET_TIME_OUT,CON_REQUEST_TIMEOUT,ENABLE,SERVICE_URI) values (990,'ADD_USER_IN_OUD','http://del2lkairos10.sapient.com:9090','application/json','POST',0,'REST',100,20,20,100,100,100,1,'/osb/oudprofile/v1/user/');

Insert into SK_SERVICE_PROPS (SERVICE_ID,SERVICE_NAME,SERVICE_ENDPOINT_NAME,MEDIA_TYPE_NAME,HTTP_METHOD_NAME,ISSSL,SERVICE_METHOD,MAX_CONNECTION,MAX_PER_ROUTE,DEFAULT_MAX_PER_ROUTE,CONNECTION_TIME_OUT,SOCKET_TIME_OUT,CON_REQUEST_TIMEOUT,ENABLE,SERVICE_URI) values (991,'ADD_USER_ROLE_IN_OUD','http://del2lkairos10.sapient.com:9090','application/json','POST',0,'REST',100,20,20,100,100,100,1,'/osb/oud/rolemanagement/v1/userMapping/');

commit;