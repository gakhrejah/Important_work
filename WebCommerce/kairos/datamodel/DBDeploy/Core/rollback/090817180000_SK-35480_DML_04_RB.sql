/***
*** Requester Name:  Priyanshi Pandey
*** Purpose : SQL to rollback (i)add serviceconfig for update user profile in oud
*** Schema  : Core/Staging
*** Date of Request : 09/08/2017
***/

delete from SK_SERVICE_PROPS where SERVICE_NAME='UPDATE_USER_IN_OUD';

commit;