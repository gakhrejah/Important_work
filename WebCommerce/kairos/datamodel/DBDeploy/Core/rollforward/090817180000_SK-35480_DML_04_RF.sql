/***
*** Requester Name:  Priyanshi Pandey
*** Purpose : SQL to (i)add serviceconfig for update user profile in oud
*** Schema  : Core/Staging
*** Date of Request : 09/08/2017
***/

Insert into SK_SERVICE_PROPS (SERVICE_ID,SERVICE_NAME,SERVICE_ENDPOINT_NAME,MEDIA_TYPE_NAME,HTTP_METHOD_NAME,ISSSL,SERVICE_METHOD,MAX_CONNECTION,MAX_PER_ROUTE,DEFAULT_MAX_PER_ROUTE,CONNECTION_TIME_OUT,SOCKET_TIME_OUT,CON_REQUEST_TIMEOUT,ENABLE,SERVICE_URI) values (992,'UPDATE_USER_IN_OUD','http://del2lkairos10.sapient.com:9090','application/json','PUT',0,'REST',100,20,20,100,100,100,1,'/osb/oudprofile/v1/user/');

commit;