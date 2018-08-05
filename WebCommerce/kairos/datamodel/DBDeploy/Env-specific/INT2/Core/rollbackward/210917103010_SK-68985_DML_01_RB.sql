/***
*** Requester Name:  	Nisha Luiz
*** Purpose :		SK-68985 - Rollback for Updates needed for role related services
*** Schema  :		atgcore
*** Date of Request : 	Sep 21, 2017
***/
delete from SK_SERVICE_PROPS where SERVICE_NAME = 'getAllApplicationRoles';

delete from SK_SERVICE_PROPS where SERVICE_NAME = 'addBusinessRole';

delete from SK_SERVICE_PROPS where SERVICE_NAME = 'addAppRoleToBusinessRole';

delete from SK_SERVICE_PROPS where SERVICE_NAME = 'validateUniqueBusinessRoleName';

delete from SK_SERVICE_PROPS where SERVICE_NAME = 'deleteBusinessRole';

COMMIT;