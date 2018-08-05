/***
*** Requester Name:  Mohit Trivedi
*** Purpose : SK-66556
*** Schema  : Core
*** Date of Request : 03/10/2017
***/

delete from SK_SERVICE_PROPS WHERE SERVICE_NAME='getUsersHavingSpecificRole';
delete from SK_SERVICE_PROPS WHERE SERVICE_NAME='updateUserRoleToDefault';
delete from SK_SERVICE_PROPS WHERE SERVICE_NAME='deleteBuisnessRole';

commit;