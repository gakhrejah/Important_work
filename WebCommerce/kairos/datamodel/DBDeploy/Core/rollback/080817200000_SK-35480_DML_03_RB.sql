/***
*** Requester Name:  Priyanshi Pandey
*** Purpose : SQL to rollback (i)add serviceconfig for add user, map role to user and (ii)update execution order of activities
*** Schema  : Core/Staging
*** Date of Request : 08/08/2017
***/

update sk_activity set execution_order='2' where name='OUD_ADD_USER_ACTIVITY';
update sk_activity set execution_order='1' where name='ATG_ADD_USER_WITH_ROLES_ACTIVITY';

update sk_activity set execution_order='2' where name='OUD_UPDATE_USER_ACTIVITY';
update sk_activity set execution_order='1' where name='ATG_UPDATE_USER_WITH_ROLES_ACTIVITY';

delete from SK_SERVICE_PROPS where SERVICE_NAME='ADD_USER_IN_OUD';

delete from SK_SERVICE_PROPS where SERVICE_NAME='ADD_USER_ROLE_IN_OUD';

commit;