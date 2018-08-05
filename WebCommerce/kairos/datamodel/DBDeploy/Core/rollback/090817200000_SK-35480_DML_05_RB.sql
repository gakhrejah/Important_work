/***
*** Requester Name:   Priyanshi Pandey
*** Purpose : SQL to rollback (i)activity to map user roles, update execution order of activities AND (ii)add service config to delete user
*** Schema  : Core/Staging
*** Date of Request : 09/08/2017
***/

Delete from SK_ACTIVITY where NAME='OUD_ADD_USER_ROLE_ACTIVITY';

Delete from SK_ACTIVITY where NAME='OUD_UPDATE_USER_ROLE_ACTIVITY';

Delete from SK_SERVICE_PROPS where SERVICE_NAME='DELETE_USER_IN_OUD';

commit;