/***
*** Requester Name:  Pinky Kushwaha
*** Purpose : SK-35469
*** Schema  : Core
*** Date of Request : 03/08/2017
***/

delete from SK_SERVICE_PROPS WHERE SERVICE_NAME='getAllApplicationRoles';
delete from SK_SERVICE_PROPS WHERE SERVICE_NAME='addBusinessRole';
delete from SK_SERVICE_PROPS WHERE SERVICE_NAME='addAppRoleToBusinessRole';
delete from SK_SERVICE_PROPS WHERE SERVICE_NAME='validateUniqueBusinessRoleName';
delete from SK_SERVICE_PROPS WHERE SERVICE_NAME='deleteBusinessRole';

commit;